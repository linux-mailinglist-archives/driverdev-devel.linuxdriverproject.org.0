Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC37119C5E
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 23:30:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67160884FD;
	Tue, 10 Dec 2019 22:30:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UNiUvY3bvrrC; Tue, 10 Dec 2019 22:30:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A9325884DB;
	Tue, 10 Dec 2019 22:30:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 073F71BF3D7
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 22:30:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03F9986BFF
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 22:30:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X10BYE3GsEiD for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 22:30:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8EDEA86B9E
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 22:30:43 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C2B7F20836;
 Tue, 10 Dec 2019 22:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576017043;
 bh=z8PnKVK74ENGpfBY08cvdPkDCNbeMO4HpQLF8Ybtr40=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XPHUYa5M5itUNCq4kTwW5LAUQVvNRaDyntRrTgxt2L4JS53a+uUv1O/9YMWG2xYdz
 cZ6cHHHR0Si2c6W10F06vvZSPsDfUefAVtoA3Gzae47krZOtPe9T+WdG2Y5pOyQ6wW
 f7RCR3cLy4peM4MwD4iH/3gmOkQnjNo/uwTqaPTI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 06/91] staging: rtl8192u: fix multiple memory
 leaks on error path
Date: Tue, 10 Dec 2019 17:29:10 -0500
Message-Id: <20191210223035.14270-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210223035.14270-1-sashal@kernel.org>
References: <20191210223035.14270-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Navid Emamdoost <navid.emamdoost@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Navid Emamdoost <navid.emamdoost@gmail.com>

[ Upstream commit ca312438cf176a16d4b89350cade8789ba8d7133 ]

In rtl8192_tx on error handling path allocated urbs and also skb should
be released.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
Link: https://lore.kernel.org/r/20190920025137.29407-1-navid.emamdoost@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/rtl8192u/r8192U_core.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 5fe95937d8113..6ec3790566504 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -1509,7 +1509,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 		(tx_fwinfo_819x_usb *)(skb->data + USB_HWDESC_HEADER_LEN);
 	struct usb_device *udev = priv->udev;
 	int pend;
-	int status;
+	int status, rt = -1;
 	struct urb *tx_urb = NULL, *tx_urb_zero = NULL;
 	unsigned int idx_pipe;
 
@@ -1653,8 +1653,10 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 		}
 		if (bSend0Byte) {
 			tx_urb_zero = usb_alloc_urb(0, GFP_ATOMIC);
-			if (!tx_urb_zero)
-				return -ENOMEM;
+			if (!tx_urb_zero) {
+				rt = -ENOMEM;
+				goto error;
+			}
 			usb_fill_bulk_urb(tx_urb_zero, udev,
 					  usb_sndbulkpipe(udev, idx_pipe),
 					  &zero, 0, tx_zero_isr, dev);
@@ -1664,7 +1666,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 					 "Error TX URB for zero byte %d, error %d",
 					 atomic_read(&priv->tx_pending[tcb_desc->queue_index]),
 					 status);
-				return -1;
+				goto error;
 			}
 		}
 		netif_trans_update(dev);
@@ -1675,7 +1677,12 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 	RT_TRACE(COMP_ERR, "Error TX URB %d, error %d",
 		 atomic_read(&priv->tx_pending[tcb_desc->queue_index]),
 		 status);
-	return -1;
+
+error:
+	dev_kfree_skb_any(skb);
+	usb_free_urb(tx_urb);
+	usb_free_urb(tx_urb_zero);
+	return rt;
 }
 
 static short rtl8192_usb_initendpoints(struct net_device *dev)
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
