Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C22A6DA88
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 06:03:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0ACA488173;
	Fri, 19 Jul 2019 04:03:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7zkKWsXJ8R0O; Fri, 19 Jul 2019 04:03:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 70F1588137;
	Fri, 19 Jul 2019 04:03:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B4C1E1BF96A
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 04:02:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B18D420509
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 04:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EjlaLhqsmXlU for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 04:02:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id E70CC203E0
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 04:02:58 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 234E521850;
 Fri, 19 Jul 2019 04:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508978;
 bh=X4vd8OK4yXQ0AbEdR++MYAR4NsXHtv+u2lPVXgjJSTE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Gfn9YEiGHhWx+//lC6mrIWYeSc0w6cW7nPkYfAs6N/lh9dLIGlmh6WycYgzRdPJXf
 0bBSZfobDME0TPKcYvKeUDZJcn0AfTvYBzxUslM3QSX6aMT8/POQTbIujbWI/blCxJ
 6KUIvXEKULz6F9M3iKeUZwzGRaf0NHMEa3o+nJq4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 006/141] staging: vt6656: use meaningful error
 code during buffer allocation
Date: Fri, 19 Jul 2019 00:00:31 -0400
Message-Id: <20190719040246.15945-6-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040246.15945-1-sashal@kernel.org>
References: <20190719040246.15945-1-sashal@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Deslandes <quentin.deslandes@itdev.co.uk>, devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

[ Upstream commit d8c2869300ab5f7a19bf6f5a04fe473c5c9887e3 ]

Check on called function's returned value for error and return 0 on
success or a negative errno value on error instead of a boolean value.

Signed-off-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/vt6656/main_usb.c | 42 ++++++++++++++++++++-----------
 1 file changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index ccafcc2c87ac..70433f756d8e 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -402,16 +402,19 @@ static void vnt_free_int_bufs(struct vnt_private *priv)
 	kfree(priv->int_buf.data_buf);
 }
 
-static bool vnt_alloc_bufs(struct vnt_private *priv)
+static int vnt_alloc_bufs(struct vnt_private *priv)
 {
+	int ret = 0;
 	struct vnt_usb_send_context *tx_context;
 	struct vnt_rcb *rcb;
 	int ii;
 
 	for (ii = 0; ii < priv->num_tx_context; ii++) {
 		tx_context = kmalloc(sizeof(*tx_context), GFP_KERNEL);
-		if (!tx_context)
+		if (!tx_context) {
+			ret = -ENOMEM;
 			goto free_tx;
+		}
 
 		priv->tx_context[ii] = tx_context;
 		tx_context->priv = priv;
@@ -419,16 +422,20 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 
 		/* allocate URBs */
 		tx_context->urb = usb_alloc_urb(0, GFP_KERNEL);
-		if (!tx_context->urb)
+		if (!tx_context->urb) {
+			ret = -ENOMEM;
 			goto free_tx;
+		}
 
 		tx_context->in_use = false;
 	}
 
 	for (ii = 0; ii < priv->num_rcb; ii++) {
 		priv->rcb[ii] = kzalloc(sizeof(*priv->rcb[ii]), GFP_KERNEL);
-		if (!priv->rcb[ii])
+		if (!priv->rcb[ii]) {
+			ret = -ENOMEM;
 			goto free_rx_tx;
+		}
 
 		rcb = priv->rcb[ii];
 
@@ -436,39 +443,46 @@ static bool vnt_alloc_bufs(struct vnt_private *priv)
 
 		/* allocate URBs */
 		rcb->urb = usb_alloc_urb(0, GFP_KERNEL);
-		if (!rcb->urb)
+		if (!rcb->urb) {
+			ret = -ENOMEM;
 			goto free_rx_tx;
+		}
 
 		rcb->skb = dev_alloc_skb(priv->rx_buf_sz);
-		if (!rcb->skb)
+		if (!rcb->skb) {
+			ret = -ENOMEM;
 			goto free_rx_tx;
+		}
 
 		rcb->in_use = false;
 
 		/* submit rx urb */
-		if (vnt_submit_rx_urb(priv, rcb))
+		ret = vnt_submit_rx_urb(priv, rcb);
+		if (ret)
 			goto free_rx_tx;
 	}
 
 	priv->interrupt_urb = usb_alloc_urb(0, GFP_KERNEL);
-	if (!priv->interrupt_urb)
+	if (!priv->interrupt_urb) {
+		ret = -ENOMEM;
 		goto free_rx_tx;
+	}
 
 	priv->int_buf.data_buf = kmalloc(MAX_INTERRUPT_SIZE, GFP_KERNEL);
 	if (!priv->int_buf.data_buf) {
-		usb_free_urb(priv->interrupt_urb);
-		goto free_rx_tx;
+		ret = -ENOMEM;
+		goto free_rx_tx_urb;
 	}
 
-	return true;
+	return 0;
 
+free_rx_tx_urb:
+	usb_free_urb(priv->interrupt_urb);
 free_rx_tx:
 	vnt_free_rx_bufs(priv);
-
 free_tx:
 	vnt_free_tx_bufs(priv);
-
-	return false;
+	return ret;
 }
 
 static void vnt_tx_80211(struct ieee80211_hw *hw,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
