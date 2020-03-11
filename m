Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 253FA181493
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:19:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A651787FF7;
	Wed, 11 Mar 2020 09:19:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r55V6cf-Oqm7; Wed, 11 Mar 2020 09:19:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A273686388;
	Wed, 11 Mar 2020 09:19:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BFC911BF5DB
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B7A2E873C9
 for <devel@linuxdriverproject.org>; Wed, 11 Mar 2020 09:19:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id duZ0Y8kcxhH3 for <devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:19:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1CFC086388
 for <devel@driverdev.osuosl.org>; Wed, 11 Mar 2020 09:19:47 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B0AF7AB3D;
 Wed, 11 Mar 2020 09:19:45 +0000 (UTC)
From: Takashi Iwai <tiwai@suse.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: core: Use scnprintf() for avoiding potential
 buffer overflow
Date: Wed, 11 Mar 2020 10:19:44 +0100
Message-Id: <20200311091944.23185-1-tiwai@suse.de>
X-Mailer: git-send-email 2.16.4
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Since snprintf() returns the would-be-output size instead of the
actual output size, the succeeding calls may go beyond the given
buffer limit.  Fix it by replacing with scnprintf().

Signed-off-by: Takashi Iwai <tiwai@suse.de>
---
 drivers/staging/most/core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 0c4ae6920d77..f6b38d9d57e6 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -472,7 +472,7 @@ static int print_links(struct device *dev, void *data)
 
 	list_for_each_entry(c, &iface->p->channel_list, list) {
 		if (c->pipe0.comp) {
-			offs += snprintf(buf + offs,
+			offs += scnprintf(buf + offs,
 					 PAGE_SIZE - offs,
 					 "%s:%s:%s\n",
 					 c->pipe0.comp->name,
@@ -480,7 +480,7 @@ static int print_links(struct device *dev, void *data)
 					 dev_name(&c->dev));
 		}
 		if (c->pipe1.comp) {
-			offs += snprintf(buf + offs,
+			offs += scnprintf(buf + offs,
 					 PAGE_SIZE - offs,
 					 "%s:%s:%s\n",
 					 c->pipe1.comp->name,
@@ -519,7 +519,7 @@ static ssize_t components_show(struct device_driver *drv, char *buf)
 	int offs = 0;
 
 	list_for_each_entry(comp, &comp_list, list) {
-		offs += snprintf(buf + offs, PAGE_SIZE - offs, "%s\n",
+		offs += scnprintf(buf + offs, PAGE_SIZE - offs, "%s\n",
 				 comp->name);
 	}
 	return offs;
-- 
2.16.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
