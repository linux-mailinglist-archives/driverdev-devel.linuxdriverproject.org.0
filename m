Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2642A297E64
	for <lists+driverdev-devel@lfdr.de>; Sat, 24 Oct 2020 22:22:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42FB086BB1;
	Sat, 24 Oct 2020 20:22:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GyKf0KkLkhwK; Sat, 24 Oct 2020 20:22:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6CA43860FC;
	Sat, 24 Oct 2020 20:22:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D614C1BF337
 for <devel@linuxdriverproject.org>; Sat, 24 Oct 2020 20:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD5F02045C
 for <devel@linuxdriverproject.org>; Sat, 24 Oct 2020 20:22:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VdN7ACmf34l8 for <devel@linuxdriverproject.org>;
 Sat, 24 Oct 2020 20:22:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com
 [64.147.123.24])
 by silver.osuosl.org (Postfix) with ESMTPS id DA411203AA
 for <devel@driverdev.osuosl.org>; Sat, 24 Oct 2020 20:22:33 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 3DD56B4F;
 Sat, 24 Oct 2020 16:22:32 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sat, 24 Oct 2020 16:22:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dottedmag.net;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=RZ0r5y+RlgVeXNPBut1dC9muMR
 +w/SiJbchRBb1L8DA=; b=MPlow2Z+cOnu1qp1pfXA39nIA+CqUdoVmFh6jbHc1l
 W9MzMQVTOb///fiFrTmlyGNRZBlbwEGWV3/opgyIAZFwyMTuq7+Fdp/gIbgIisL6
 8yBT4ipBkC66gbaef7j3Nj0079pioOHT9EZEEfrvbRO6fb22zI7S7Bfehy0+0Pre
 ul1Ug3ZnU2mYJMS6sozFYYiDMUFcfmJg5U3VLqsBqSUmv/GBsh41H756fdSAa/Wy
 0Xo3+qsa76s8E4dPdP6nlPDB60D8gHEd/wFNtQdER47ykXSGYvtcLrEj6IyOYw7O
 7Uxt8SQLcN4qWq2HVN8bu5a4vlf3iU3azGtOFIHY48gw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=RZ0r5y+RlgVeXNPBu
 t1dC9muMR+w/SiJbchRBb1L8DA=; b=ThM9WwqOC7SoNG2u/GbXSNGLNnWqYPNSn
 SfbWN4v0j2wBPf3gSYfJlbr4oIcu9TzL7OD8fxOtL/lHVb/ThUHBcb21pPuU+9GF
 PZ8deCjWMN1WARkgNB/+rxwwWv+9LbMUAScyGkprQ6c1OLrrUZ7n7Ddnsi7P3fLV
 lZSoBZzPCNTHAdqVl9ESCaLNWWk1r5C+s0w+mR4zeo+CUaV2U6K2Ms46tGGS0kLa
 2d2LSsk3RtmWOM5Mn25uKSGCzxgpbVTNooQtC+2ZUAG9tqnfRuCb4nRL2mQRqBur
 SMsEGQFlsVSTqYxeCOBXCYCzjqpHg9MH001D0LXLwWcP6PFEq0wDw==
X-ME-Sender: <xms:B42UX-TkRtV5FeTFov0bQMaTHsKWgbhHhMs4kngK3aoFOS6vQ_uiXg>
 <xme:B42UXzxp-oKeR1NfM-XJvr87jLshP4HL7VA3eDr3dIQONA5Njb700D0D6lweVrYfS
 2cXBP99D2eRg1rUXA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrkedvgddugeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgggfestdekredtre
 dttdenucfhrhhomhepofhishhhrgcuifhushgrrhhovhcuoeguohhtthgvughmrghgsegu
 ohhtthgvughmrghgrdhnvghtqeenucggtffrrghtthgvrhhnpeehteegvdfhffelkefhud
 ehtdfhgeekgfejgedtiefhfeekffeludduieevueelgfenucfkphepledvrddvhedurdef
 gedrvddvkeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
 hmpeguohhtthgvughmrghgseguohhtthgvughmrghgrdhnvght
X-ME-Proxy: <xmx:B42UX70O28Eu36_QdheONNEskZ45Ih-dLE5JQNEpBL23dHXRoXzsqg>
 <xmx:B42UX6CAohpt2cqtIk_B8Lgpc6vIC-jCd9W2yr6Rvt4v4xWqYDIhJg>
 <xmx:B42UX3hIhObJI_NQsr2SHb68mG9d4DzF3GAqnpSkyHzd_vcP_3VTpg>
 <xmx:B42UX3JmArhkzHtM9ChAPND76qZmvcCcjJEOfTTzCkn4ECLPQdWPxg>
Received: from newton.malta.dottedmag.net (c34-228.i07-9.onvol.net
 [92.251.34.228])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4C7C7306467E;
 Sat, 24 Oct 2020 16:22:31 -0400 (EDT)
Received: by newton.malta.dottedmag.net (Postfix, from userid 501)
 id C195842704AE; Sat, 24 Oct 2020 22:22:28 +0200 (CEST)
From: Misha Gusarov <dottedmag@dottedmag.net>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH] staging: gdm724x: Clarify naming of packet_type<->tty index
 symbols
Date: Sat, 24 Oct 2020 22:22:21 +0200
Message-Id: <20201024202221.60726-1-dottedmag@dottedmag.net>
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
Cc: Misha Gusarov <dottedmag@dottedmag.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This driver was using "packet_type" for packet types and for
the mapping of TTY indices to packet types.

Fix the confusion by renaming the symbols.

Fixes sparse warning:

drivers/staging/gdm724x/gdm_mux.c:146:24: warning: symbol 'packet_type' shadows an earlier one

Signed-off-by: Misha Gusarov <dottedmag@dottedmag.net>
---
 drivers/staging/gdm724x/gdm_mux.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 0678f344fafb..9b12619671a1 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -16,7 +16,7 @@
 
 #include "gdm_mux.h"
 
-static u16 packet_type[TTY_MAX_COUNT] = {0xF011, 0xF010};
+static u16 packet_type_for_tty_index[TTY_MAX_COUNT] = {0xF011, 0xF010};
 
 #define USB_DEVICE_CDC_DATA(vid, pid) \
 	.match_flags = \
@@ -38,12 +38,12 @@ static const struct usb_device_id id_table[] = {
 
 MODULE_DEVICE_TABLE(usb, id_table);
 
-static int packet_type_to_index(u16 packetType)
+static int packet_type_to_tty_index(u16 packet_type)
 {
 	int i;
 
 	for (i = 0; i < TTY_MAX_COUNT; i++) {
-		if (packet_type[i] == packetType)
+		if (packet_type_for_tty_index[i] == packet_type)
 			return i;
 	}
 
@@ -170,7 +170,7 @@ static int up_to_host(struct mux_rx *r)
 			break;
 		}
 
-		index = packet_type_to_index(packet_type);
+		index = packet_type_to_tty_index(packet_type);
 		if (index < 0) {
 			pr_err("invalid index %d\n", index);
 			break;
@@ -372,7 +372,7 @@ static int gdm_mux_send(void *priv_dev, void *data, int len, int tty_index,
 	mux_header->start_flag = __cpu_to_le32(START_FLAG);
 	mux_header->seq_num = __cpu_to_le32(seq_num++);
 	mux_header->payload_size = __cpu_to_le32((u32)len);
-	mux_header->packet_type = __cpu_to_le16(packet_type[tty_index]);
+	mux_header->packet_type = __cpu_to_le16(packet_type_for_tty_index[tty_index]);
 
 	memcpy(t->buf + MUX_HEADER_SIZE, data, len);
 	memset(t->buf + MUX_HEADER_SIZE + len, 0,
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
