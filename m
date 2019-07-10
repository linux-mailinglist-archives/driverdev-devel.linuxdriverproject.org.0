Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C652564F08
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Jul 2019 01:06:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3385886081;
	Wed, 10 Jul 2019 23:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8-IzsTkIPzL1; Wed, 10 Jul 2019 23:06:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D001286044;
	Wed, 10 Jul 2019 23:06:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 927EF1BF47A
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 23:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8C81086D73
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 23:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7XTb2+YRu-1c for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 23:06:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from fieldses.org (fieldses.org [173.255.197.46])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1580A86631
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 23:06:28 +0000 (UTC)
Received: by fieldses.org (Postfix, from userid 2815)
 id 712D11E19; Wed, 10 Jul 2019 19:00:57 -0400 (EDT)
From: "J. Bruce Fields" <bfields@redhat.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: wlan-ng: use "%*pE" for serial number
Date: Wed, 10 Jul 2019 19:00:56 -0400
Message-Id: <1562799656-13401-1-git-send-email-bfields@redhat.com>
X-Mailer: git-send-email 1.8.3.1
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
Cc: devel@driverdev.osuosl.org, "J. Bruce Fields" <bfields@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: "J. Bruce Fields" <bfields@redhat.com>

Almost every user of "%*pE" in the kernel uses just bare "%*pE".  This
is the only user of "%pEhp".  I can't see why it's needed.

Signed-off-by: J. Bruce Fields <bfields@redhat.com>
---
 drivers/staging/wlan-ng/prism2sta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
index fb5441399131..8f25496188aa 100644
--- a/drivers/staging/wlan-ng/prism2sta.c
+++ b/drivers/staging/wlan-ng/prism2sta.c
@@ -846,7 +846,7 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
 	result = hfa384x_drvr_getconfig(hw, HFA384x_RID_NICSERIALNUMBER,
 					snum, HFA384x_RID_NICSERIALNUMBER_LEN);
 	if (!result) {
-		netdev_info(wlandev->netdev, "Prism2 card SN: %*pEhp\n",
+		netdev_info(wlandev->netdev, "Prism2 card SN: %*pE\n",
 			    HFA384x_RID_NICSERIALNUMBER_LEN, snum);
 	} else {
 		netdev_err(wlandev->netdev, "Failed to retrieve Prism2 Card SN\n");
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
