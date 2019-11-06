Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42610F2061
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 22:06:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E8D1384F66;
	Wed,  6 Nov 2019 21:06:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UNhHDoTJAZ2g; Wed,  6 Nov 2019 21:06:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3762F822E0;
	Wed,  6 Nov 2019 21:06:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC2C11BF488
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 21:06:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 46CBD88D2A
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 21:06:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AkwHBE72HAxG for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 21:06:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs43.siol.net [185.57.226.234])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F70888F86
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 21:06:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 9B324524D62;
 Wed,  6 Nov 2019 22:06:04 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id DSO8c53uem2K; Wed,  6 Nov 2019 22:06:04 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 140F75255FC;
 Wed,  6 Nov 2019 22:06:04 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 93D6C524D62;
 Wed,  6 Nov 2019 22:06:01 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org, paul.kocialkowski@bootlin.com, hverkuil-cisco@xs4all.nl
Subject: [PATCH v2 1/3] media: cedrus: Properly signal size in mode register
Date: Wed,  6 Nov 2019 22:05:36 +0100
Message-Id: <20191106210538.3474-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191106210538.3474-1-jernej.skrabec@siol.net>
References: <20191106210538.3474-1-jernej.skrabec@siol.net>
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
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Mode register also holds information if video width is bigger than 2048
and if it is equal to 4096.

Rework cedrus_engine_enable() to properly signal this properties.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c  | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_h265.c  | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c    | 9 +++++++--
 drivers/staging/media/sunxi/cedrus/cedrus_hw.h    | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c | 2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_regs.h  | 2 ++
 6 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index 7487f6ab7576..d2c854ecdf15 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -485,7 +485,7 @@ static void cedrus_h264_setup(struct cedrus_ctx *ctx,
 {
 	struct cedrus_dev *dev = ctx->dev;
 
-	cedrus_engine_enable(dev, CEDRUS_CODEC_H264);
+	cedrus_engine_enable(ctx, CEDRUS_CODEC_H264);
 
 	cedrus_write(dev, VE_H264_SDROT_CTRL, 0);
 	cedrus_write(dev, VE_H264_EXTRA_BUFFER1,
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
index 9bc921866f70..6945dc74e1d7 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
@@ -276,7 +276,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
 	}
 
 	/* Activate H265 engine. */
-	cedrus_engine_enable(dev, CEDRUS_CODEC_H265);
+	cedrus_engine_enable(ctx, CEDRUS_CODEC_H265);
 
 	/* Source offset and length in bits. */
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index 570a9165dd5d..3acfa21bc124 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -30,7 +30,7 @@
 #include "cedrus_hw.h"
 #include "cedrus_regs.h"
 
-int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec)
+int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec codec)
 {
 	u32 reg = 0;
 
@@ -58,7 +58,12 @@ int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec)
 		return -EINVAL;
 	}
 
-	cedrus_write(dev, VE_MODE, reg);
+	if (ctx->src_fmt.width == 4096)
+		reg |= VE_MODE_PIC_WIDTH_IS_4096;
+	if (ctx->src_fmt.width > 2048)
+		reg |= VE_MODE_PIC_WIDTH_MORE_2048;
+
+	cedrus_write(ctx->dev, VE_MODE, reg);
 
 	return 0;
 }
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
index 27d0882397aa..604ff932fbf5 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
@@ -16,7 +16,7 @@
 #ifndef _CEDRUS_HW_H_
 #define _CEDRUS_HW_H_
 
-int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec);
+int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec codec);
 void cedrus_engine_disable(struct cedrus_dev *dev);
 
 void cedrus_dst_format_set(struct cedrus_dev *dev,
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
index 13c34927bad5..8bcd6b8f9e2d 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
@@ -96,7 +96,7 @@ static void cedrus_mpeg2_setup(struct cedrus_ctx *ctx, struct cedrus_run *run)
 	quantization = run->mpeg2.quantization;
 
 	/* Activate MPEG engine. */
-	cedrus_engine_enable(dev, CEDRUS_CODEC_MPEG2);
+	cedrus_engine_enable(ctx, CEDRUS_CODEC_MPEG2);
 
 	/* Set intra quantization matrix. */
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
index 4275a307d282..ace3d49fcd82 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
@@ -35,6 +35,8 @@
 
 #define VE_MODE					0x00
 
+#define VE_MODE_PIC_WIDTH_IS_4096		BIT(22)
+#define VE_MODE_PIC_WIDTH_MORE_2048		BIT(21)
 #define VE_MODE_REC_WR_MODE_2MB			(0x01 << 20)
 #define VE_MODE_REC_WR_MODE_1MB			(0x00 << 20)
 #define VE_MODE_DDR_MODE_BW_128			(0x03 << 16)
-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
