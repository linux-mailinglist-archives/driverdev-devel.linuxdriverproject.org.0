Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D0A6A1B3
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Jul 2019 07:06:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB68B85FC9;
	Tue, 16 Jul 2019 05:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 67PIwr7yYL6m; Tue, 16 Jul 2019 05:06:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B66885F82;
	Tue, 16 Jul 2019 05:06:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F2431BF34C
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 05:06:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7BF0E20481
 for <devel@linuxdriverproject.org>; Tue, 16 Jul 2019 05:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvwR94MkqR7e for <devel@linuxdriverproject.org>;
 Tue, 16 Jul 2019 05:06:22 +0000 (UTC)
X-Greylist: delayed 00:08:25 by SQLgrey-1.7.6
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
 [64.147.123.25])
 by silver.osuosl.org (Postfix) with ESMTPS id 51F0220017
 for <devel@driverdev.osuosl.org>; Tue, 16 Jul 2019 05:06:22 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.42])
 by mailout.west.internal (Postfix) with ESMTP id 71BE0581;
 Tue, 16 Jul 2019 00:57:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute2.internal (MEProxy); Tue, 16 Jul 2019 00:57:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=content-type:date:from:message-id
 :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
 :x-me-sender:x-sasl-enc; s=fm3; bh=SuEgE+L8xMm3Mly0DfRGwh3ZCrBzT
 Wh6utlTQgfTteo=; b=dyO6nWGgGOQD37tisW9PUE+f4G/QSvkiU+Pg+WFSdXglK
 fekt0cdZ7E88u0z8AO8TqwD85+MSNnfk4fJhwe8Hlf9Ix+0f26Pe5wpReAwE3Gs2
 ohg9D5f5d2KKTIdJZrLQM12fHGLkDdmYEzaYt/s2MYw8x9bHLu0VomAEkUDr3LZG
 XrYXYONf2S7CBG1hiNgrWdQPtHs5HnuqhAmtSrYbNecokW9mg53yCE+ph+HQtuMv
 4YyX/h8b5E4oJNRcui5JSCC4yPnulRKYlhM5aaA8VvdctIK15oxCBNHSLi5IVK4K
 02cORbbdAhhgu3iGwJ+nd0Y4Vz07uEX0Rq1JEhnRg==
X-ME-Sender: <xms:U1ktXSoua7xhjOJaXO1-FzH9beo_tsN9ye09MtCF_zVMuXh-8gyXxg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrheelgdekjecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkgggtugesthdtredttddtvdenucfhrhhomhepuegvnhhjrghmihhn
 ucfuhhgvrhhmrghnuceosggvnhhjrghmihhnsegsvghnshhhvghrmhgrnhdrihhoqeenuc
 fkphepuddvledrudeiuddrvddvledrleeinecurfgrrhgrmhepmhgrihhlfhhrohhmpegs
 vghnjhgrmhhinhessggvnhhshhgvrhhmrghnrdhiohenucevlhhushhtvghrufhiiigvpe
 dt
X-ME-Proxy: <xmx:U1ktXXnBt5R05clrAqJuD-ck_DiTR9rhsov0LfoaAqHL2bEGub1zkA>
 <xmx:U1ktXcRoi2XpNP7uurWUbaK6eQkgAhQxyeQxn3fwLzBBd-wDn6-yzA>
 <xmx:U1ktXZDr4S1oTfbvCe2VIZKEIT_o25PMVp7XTs36IRxleGsKkpnm4w>
 <xmx:VFktXS6CElwKM3ER2q2EeXWfnqGunD8-kLS9t3GDFsZ3thLawkAjPQ>
Received: from valkyrie-mobile.localdomain (resnet-netreg-351.dynamic.rpi.edu
 [129.161.229.96])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6C183380087;
 Tue, 16 Jul 2019 00:57:55 -0400 (EDT)
Date: Tue, 16 Jul 2019 00:57:55 -0400
From: Benjamin Sherman <benjamin@bensherman.io>
To: Forest Bond <forest@alittletooquiet.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vt6656: change alignment to match parenthesis
Message-ID: <20190716045754.fivh5n44bybe2uce@valkyrie-mobile.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change indentation to match parentheses.  This complies with the Linux
kernel coding style and improves readability.

Signed-off-by: Benjamin Sherman <benjamin@bensherman.io>
---
 drivers/staging/vt6656/rxtx.c    | 10 +++++-----
 drivers/staging/vt6656/usbpipe.c |  2 +-
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 9def0748ffee..4e9cfacf75f2 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -287,12 +287,12 @@ static u16 vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
 		buf->duration_a = vnt_get_duration_le(priv,
 						tx_context->pkt_type, need_ack);
 		buf->duration_b = vnt_get_duration_le(priv,
-							PK_TYPE_11B, need_ack);
+						      PK_TYPE_11B, need_ack);
 	}
 
 	buf->time_stamp_off_a = vnt_time_stamp_off(priv, rate);
 	buf->time_stamp_off_b = vnt_time_stamp_off(priv,
-					priv->top_cck_basic_rate);
+						   priv->top_cck_basic_rate);
 
 	tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);
 
@@ -325,7 +325,7 @@ static u16 vnt_rxtx_datahead_g_fb(struct vnt_usb_send_context *tx_context,
 
 	buf->time_stamp_off_a = vnt_time_stamp_off(priv, rate);
 	buf->time_stamp_off_b = vnt_time_stamp_off(priv,
-						priv->top_cck_basic_rate);
+						   priv->top_cck_basic_rate);
 
 	tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);
 
@@ -655,7 +655,7 @@ static u16 vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 	u8 need_ack = tx_context->need_ack;
 
 	buf->rrv_time = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-			frame_len, current_rate, need_ack);
+					      frame_len, current_rate, need_ack);
 
 	if (need_mic)
 		head = &tx_head->tx_ab.tx.mic.head;
@@ -1036,7 +1036,7 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 
 		/* Get Duration and TimeStampOff */
 		short_head->duration = vnt_get_duration_le(priv,
-						PK_TYPE_11B, false);
+							   PK_TYPE_11B, false);
 		short_head->time_stamp_off =
 			vnt_time_stamp_off(priv, current_rate);
 	}
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index ff351a7a0876..d3304df6bd53 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -216,7 +216,7 @@ static void vnt_submit_rx_urb_complete(struct urb *urb)
 		}
 
 		urb->transfer_buffer = skb_put(rcb->skb,
-						skb_tailroom(rcb->skb));
+					       skb_tailroom(rcb->skb));
 	}
 
 	if (usb_submit_urb(urb, GFP_ATOMIC)) {
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
