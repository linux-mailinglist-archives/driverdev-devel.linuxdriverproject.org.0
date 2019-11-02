Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 02AA4ECFA3
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Nov 2019 17:00:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F3EFD30629;
	Sat,  2 Nov 2019 16:00:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MHQjU7QGOG2M; Sat,  2 Nov 2019 16:00:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37E79303A6;
	Sat,  2 Nov 2019 16:00:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 639C81BF681
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 16:00:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 47C178AACD
 for <devel@linuxdriverproject.org>; Sat,  2 Nov 2019 16:00:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BKfcIrvfecYw for <devel@linuxdriverproject.org>;
 Sat,  2 Nov 2019 15:59:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp08.smtpout.orange.fr
 [80.12.242.130])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EBDF08A5CC
 for <devel@driverdev.osuosl.org>; Sat,  2 Nov 2019 15:59:57 +0000 (UTC)
Received: from localhost.localdomain ([93.22.36.232]) by mwinf5d68 with ME
 id M3zt2100550WvJt033zux4; Sat, 02 Nov 2019 16:59:55 +0100
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sat, 02 Nov 2019 16:59:55 +0100
X-ME-IP: 93.22.36.232
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: jerome.pouiller@silabs.com,
	gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: wfx: Fix a memory leak in 'wfx_upload_beacon'
Date: Sat,  2 Nov 2019 16:59:45 +0100
Message-Id: <20191102155945.20205-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.20.1
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
Cc: devel@driverdev.osuosl.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The current code is a no-op, because all it can do is 'dev_kfree_skb(NULL)'
Remove the test before 'dev_kfree_skb()'

Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
V2: remove the 'if(...)', 'dev_kfree_skb()' can handle NULL.
---
 drivers/staging/wfx/sta.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wfx/sta.c b/drivers/staging/wfx/sta.c
index 688586e823c0..93f3739b5f3a 100644
--- a/drivers/staging/wfx/sta.c
+++ b/drivers/staging/wfx/sta.c
@@ -906,8 +906,7 @@ static int wfx_upload_beacon(struct wfx_vif *wvif)
 	wfx_fwd_probe_req(wvif, false);
 
 done:
-	if (!skb)
-		dev_kfree_skb(skb);
+	dev_kfree_skb(skb);
 	return ret;
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
