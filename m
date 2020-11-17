Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7192B57B1
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 04:09:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D2FD84917;
	Tue, 17 Nov 2020 03:09:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Of9j6t-82YP7; Tue, 17 Nov 2020 03:09:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0563184A92;
	Tue, 17 Nov 2020 03:09:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1188B1BF3AD
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 03:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 02DE3203BF
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 03:09:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cx0tD7DuOJ4I for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 03:09:14 +0000 (UTC)
X-Greylist: delayed 00:09:06 by SQLgrey-1.7.6
Received: from cmccmta1.chinamobile.com (cmccmta1.chinamobile.com
 [221.176.66.79])
 by silver.osuosl.org (Postfix) with ESMTP id 3C425203A5
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 03:09:13 +0000 (UTC)
Received: from spf.mail.chinamobile.com (unknown[172.16.121.1]) by
 rmmx-syy-dmz-app01-12001 (RichMail) with SMTP id 2ee15fb33c9b471-8fc56;
 Tue, 17 Nov 2020 10:59:40 +0800 (CST)
X-RM-TRANSID: 2ee15fb33c9b471-8fc56
X-RM-TagInfo: emlType=0                                       
X-RM-SPAM-FLAG: 00000000
Received: from localhost.localdomain (unknown[10.42.68.12])
 by rmsmtp-syy-appsvr01-12001 (RichMail) with SMTP id 2ee15fb33c99892-3cb17;
 Tue, 17 Nov 2020 10:59:38 +0800 (CST)
X-RM-TRANSID: 2ee15fb33c99892-3cb17
From: Ding Xiang <dingxiang@cmss.chinamobile.com>
To: TheSven73@gmail.com
Subject: [PATCH] staging: fieldbus: use kobj_to_dev() to get device
Date: Tue, 17 Nov 2020 10:59:33 +0800
Message-Id: <20201117025933.668938-1-dingxiang@cmss.chinamobile.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use kobj_to_dev() instead of container_of()

Signed-off-by: Ding Xiang <dingxiang@cmss.chinamobile.com>
---
 drivers/staging/fieldbus/dev_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fieldbus/dev_core.c b/drivers/staging/fieldbus/dev_core.c
index 1ba0234cc60d..5aab734606ea 100644
--- a/drivers/staging/fieldbus/dev_core.c
+++ b/drivers/staging/fieldbus/dev_core.c
@@ -134,7 +134,7 @@ static struct attribute *fieldbus_attrs[] = {
 static umode_t fieldbus_is_visible(struct kobject *kobj, struct attribute *attr,
 				   int n)
 {
-	struct device *dev = container_of(kobj, struct device, kobj);
+	struct device *dev = kobj_to_dev(kobj);
 	struct fieldbus_dev *fb = dev_get_drvdata(dev);
 	umode_t mode = attr->mode;
 
-- 
2.28.0



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
