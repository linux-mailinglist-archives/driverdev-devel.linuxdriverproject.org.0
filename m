Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 826CFE58FD
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 09:29:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3319686A24;
	Sat, 26 Oct 2019 07:29:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ns1uMW67vHxc; Sat, 26 Oct 2019 07:29:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6B9B86937;
	Sat, 26 Oct 2019 07:29:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 242881BF94B
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 07:28:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1E0CC8650D
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 07:28:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7CXeXu+1VUGN for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 07:28:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs48.siol.net [185.57.226.239])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A70438630A
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 07:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 32D19523640;
 Sat, 26 Oct 2019 09:28:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id b3kdWy_p_ya4; Sat, 26 Oct 2019 09:28:52 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C23E852363D;
 Sat, 26 Oct 2019 09:28:52 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 623C5523640;
 Sat, 26 Oct 2019 09:28:50 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH v3 1/2] media: cedrus: Fix decoding for some H264 videos
Date: Sat, 26 Oct 2019 09:27:51 +0200
Message-Id: <20191026072752.1072711-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191026072752.1072711-1-jernej.skrabec@siol.net>
References: <20191026072752.1072711-1-jernej.skrabec@siol.net>
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It seems that for some H264 videos at least one bitstream parsing
trigger must be called in order to be decoded correctly. There is no
explanation why this helps, but it was observed that two sample videos
with this fix are now decoded correctly and there is no regression with
others.

Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 30 +++++++++++++++++--
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  3 ++
 2 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index cd85668f9c80..db336449c4f2 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -6,6 +6,7 @@
  * Copyright (c) 2018 Bootlin
  */
 
+#include <linux/delay.h>
 #include <linux/types.h>
 
 #include <media/videobuf2-dma-contig.h>
@@ -289,6 +290,28 @@ static void cedrus_write_pred_weight_table(struct cedrus_ctx *ctx,
 	}
 }
 
+/*
+ * It turns out that using VE_H264_VLD_OFFSET to skip bits is not reliable. In
+ * rare cases frame is not decoded correctly. However, setting offset to 0 and
+ * skipping appropriate amount of bits with flush bits trigger always works.
+ */
+static void cedrus_skip_bits(struct cedrus_dev *dev, int num)
+{
+	int count = 0;
+
+	while (count < num) {
+		int tmp = min(num - count, 32);
+
+		cedrus_write(dev, VE_H264_TRIGGER_TYPE,
+			     VE_H264_TRIGGER_TYPE_FLUSH_BITS |
+			     VE_H264_TRIGGER_TYPE_N_BITS(tmp));
+		while (cedrus_read(dev, VE_H264_STATUS) & VE_H264_STATUS_VLD_BUSY)
+			udelay(1);
+
+		count += tmp;
+	}
+}
+
 static void cedrus_set_params(struct cedrus_ctx *ctx,
 			      struct cedrus_run *run)
 {
@@ -299,14 +322,13 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 	struct vb2_buffer *src_buf = &run->src->vb2_buf;
 	struct cedrus_dev *dev = ctx->dev;
 	dma_addr_t src_buf_addr;
-	u32 offset = slice->header_bit_size;
-	u32 len = (slice->size * 8) - offset;
+	u32 len = slice->size * 8;
 	unsigned int pic_width_in_mbs;
 	bool mbaff_pic;
 	u32 reg;
 
 	cedrus_write(dev, VE_H264_VLD_LEN, len);
-	cedrus_write(dev, VE_H264_VLD_OFFSET, offset);
+	cedrus_write(dev, VE_H264_VLD_OFFSET, 0);
 
 	src_buf_addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
 	cedrus_write(dev, VE_H264_VLD_END,
@@ -325,6 +347,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 	cedrus_write(dev, VE_H264_TRIGGER_TYPE,
 		     VE_H264_TRIGGER_TYPE_INIT_SWDEC);
 
+	cedrus_skip_bits(dev, slice->header_bit_size);
+
 	if (((pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED) &&
 	     (slice->slice_type == V4L2_H264_SLICE_TYPE_P ||
 	      slice->slice_type == V4L2_H264_SLICE_TYPE_SP)) ||
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
index 6fc28d21a6c7..4275a307d282 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
@@ -541,13 +541,16 @@
 					 VE_H264_CTRL_SLICE_DECODE_INT)
 
 #define VE_H264_TRIGGER_TYPE		0x224
+#define VE_H264_TRIGGER_TYPE_N_BITS(x)		(((x) & 0x3f) << 8)
 #define VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE	(8 << 0)
 #define VE_H264_TRIGGER_TYPE_INIT_SWDEC		(7 << 0)
+#define VE_H264_TRIGGER_TYPE_FLUSH_BITS		(3 << 0)
 
 #define VE_H264_STATUS			0x228
 #define VE_H264_STATUS_VLD_DATA_REQ_INT		VE_H264_CTRL_VLD_DATA_REQ_INT
 #define VE_H264_STATUS_DECODE_ERR_INT		VE_H264_CTRL_DECODE_ERR_INT
 #define VE_H264_STATUS_SLICE_DECODE_INT		VE_H264_CTRL_SLICE_DECODE_INT
+#define VE_H264_STATUS_VLD_BUSY			BIT(8)
 
 #define VE_H264_STATUS_INT_MASK			VE_H264_CTRL_INT_MASK
 
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
