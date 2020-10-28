Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A86829CFDE
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 13:16:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B2BD48747D;
	Wed, 28 Oct 2020 12:16:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zEpeRfNFEjwH; Wed, 28 Oct 2020 12:16:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20E5E873A7;
	Wed, 28 Oct 2020 12:16:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 461D71BF85D
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 12:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CA21204FF
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 12:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5gAKNrs5NcuA for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 12:16:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from szxga05-in.huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B84320394
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 12:16:25 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by szxga05-in.huawei.com (SkyGuard) with ESMTP id 4CLnc80h2PzLq9W;
 Wed, 28 Oct 2020 20:16:24 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Wed, 28 Oct 2020
 20:16:18 +0800
From: Zhang Qilong <zhangqilong3@huawei.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH -next] staging: rtl8192u: fix wrong judgement in rtl8192_rx_isr
Date: Wed, 28 Oct 2020 20:26:48 +0800
Message-ID: <20201028122648.47959-1-zhangqilong3@huawei.com>
X-Mailer: git-send-email 2.26.0.106.g9fadedd
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The 'EPERM' cannot appear in the previous path, we
should use '-EPERM' to check it. For example:

Call trace:
->rtl8192_rx_isr
    ->usb_submit_urb
       ->usb_hcd_submit_urb
           ->rh_urb_enqueue
	       ->rh_queue_status
	           ->usb_hcd_link_urb_to_ep

Signed-off-by: Zhang Qilong <zhangqilong3@huawei.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 27dc181c4c9b..93676af98629 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -867,7 +867,7 @@ static void rtl8192_rx_isr(struct urb *urb)
 	urb->context = skb;
 	skb_queue_tail(&priv->rx_queue, skb);
 	err = usb_submit_urb(urb, GFP_ATOMIC);
-	if (err && err != EPERM)
+	if (err && err != -EPERM)
 		netdev_err(dev,
 			   "can not submit rxurb, err is %x, URB status is %x\n",
 			   err, urb->status);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
