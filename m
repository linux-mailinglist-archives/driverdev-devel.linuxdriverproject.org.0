Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A452720E2
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:27:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8807920796;
	Mon, 21 Sep 2020 10:27:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DP3IqmsHcXBe; Mon, 21 Sep 2020 10:27:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0070C21080;
	Mon, 21 Sep 2020 10:22:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 120EE1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:22:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04FC220796
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:22:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNqA-TSOE79v for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com
 [209.85.128.42])
 by silver.osuosl.org (Postfix) with ESMTPS id 4555320515
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:56 +0000 (UTC)
Received: by mail-wm1-f42.google.com with SMTP id s13so11552399wmh.4
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZohYJvIsJC31BNCOTSqfkt5qk6W1FSkaodmuzZ243PI=;
 b=kCj7U9O7WWWVcT8qH/8APnvqMuyuREj3/FJSQA7VwvBto76w0FJSHWCq33yHBBwkbO
 9ct0HsJg8ETgx1DnD1MW4HHIR9J9XFznWXheQ6f7DhK4XZ5MTfFwEuHs0ewVyqVI9+Qe
 YyT3EXD+WJnh14hz/mUiTnDJnH2Q8FQoGKFU9hKg69Rp/2CSSSOjgeRG63rfgat0Uabx
 aYZkCEugIwAv+cGTx3ER0SqWZLlAtoun+Fdt02izVganUryo0kAsX7kFwjebPcIj+PKM
 lVA7QIKiKHXBHMITWxIcPoYWIa4UJ9OJS/7GM5DdEB319PJPSvePkfikNHVE8ua4mFvC
 dWKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZohYJvIsJC31BNCOTSqfkt5qk6W1FSkaodmuzZ243PI=;
 b=hfasoG7uU4l9kyxrFzoZJ8Q8xw1JOaiKKbw5UI3TO/ZEkjox+HIXnNlwm6kRLJ4wzt
 jnNEVueoFSAPJLrxkUzXo5hAdeMawfTD9sdLIsfkngbtlcfIGPhkt4/mgm4UcAiE7Pqx
 XH6sfjuic133oa9rCmoUTwiI2xdPsCYHVAbFsoqJUHGAUPcWAU85fQ1ICW78hKydJubH
 MMPUUC376oqM7LFHZ7uLahidSqs0QKAleQLWd6bRIBsp3HS7vXX2VwveoMJ26PqEK2AH
 EYbMis/mYwwiPdX1e8VaEoiUM7nDSjPAvx6xIFZSXi69xwc90rWkcRjZ/TuCza5nI74y
 +lfA==
X-Gm-Message-State: AOAM5301NyNsIK0PpPcVQXyST+740CtFBqhDOIFrxnWSsA//A68vJL5Z
 7My36ZbT1AWDO0TFCck4dkabag==
X-Google-Smtp-Source: ABdhPJxr/p/JHO2w8Oeovijrwvhr8sP0j/6P5O7HvqEo/RILy4MbSQEElTRm+6Xea/CcNXeIqoXiZg==
X-Received: by 2002:a1c:4455:: with SMTP id r82mr29268258wma.60.1600683654581; 
 Mon, 21 Sep 2020 03:20:54 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:54 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 23/49] staging: media: zoran: remove overlay
Date: Mon, 21 Sep 2020 10:19:58 +0000
Message-Id: <1600683624-5863-24-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
References: <1600683624-5863-1-git-send-email-clabbe@baylibre.com>
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
Cc: devel@driverdev.osuosl.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Supporting overlay is not necessary today, so let's reduce the code size
by removing it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h        |  16 -
 drivers/staging/media/zoran/zoran_card.c   |   6 -
 drivers/staging/media/zoran/zoran_device.c | 143 +--------
 drivers/staging/media/zoran/zoran_driver.c | 337 +--------------------
 4 files changed, 12 insertions(+), 490 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index e9fef23a720c..aa2a8f688a01 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -139,14 +139,6 @@ struct zoran_format {
 #define ZORAN_FORMAT_CAPTURE BIT(2)
 #define ZORAN_FORMAT_PLAYBACK BIT(3)
 
-/* overlay-settings */
-struct zoran_overlay_settings {
-	int is_set;
-	int x, y, width, height;	/* position */
-	int clipcount;		/* position and number of clips */
-	const struct zoran_format *format;	/* overlay format */
-};
-
 /* v4l-capture settings */
 struct zoran_v4l_settings {
 	int width, height, bytesperline;	/* capture size */
@@ -211,9 +203,6 @@ struct zoran_fh {
 
 	enum zoran_map_mode map_mode;		/* Flag which bufferset will map by next mmap() */
 
-	u32 *overlay_mask;			/* overlay mask */
-	enum zoran_lock_activity overlay_active;/* feature currently in use? */
-
 	struct zoran_buffer_col buffers;	/* buffers' info */
 };
 
@@ -294,13 +283,8 @@ struct zoran {
 	int vbuf_depth;
 	int vbuf_bytesperline;
 
-	struct zoran_overlay_settings overlay_settings;
-	u32 *overlay_mask;	/* overlay mask */
-	enum zoran_lock_activity overlay_active;	/* feature currently in use? */
-
 	wait_queue_head_t v4l_capq;
 
-	int v4l_overlay_active;	/* Overlay grab is activated */
 	int v4l_memgrab_active;	/* Memory grab is activated */
 
 	int v4l_grab_frame;	/* Frame number being currently grabbed */
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 34841c12c224..3a7895be3341 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -812,13 +812,7 @@ void zoran_open_init_params(struct zoran *zr)
 {
 	int i;
 
-	/* User must explicitly set a window */
-	zr->overlay_settings.is_set = 0;
-	zr->overlay_mask = NULL;
-	zr->overlay_active = ZORAN_FREE;
-
 	zr->v4l_memgrab_active = 0;
-	zr->v4l_overlay_active = 0;
 	zr->v4l_grab_frame = NO_GRAB_ACTIVE;
 	zr->v4l_grab_seq = 0;
 	zr->v4l_settings.width = 192;
diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index e81316ac6521..e3104b534471 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -300,7 +300,6 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	unsigned int Wa, We, Ha, He;
 	unsigned int X, Y, HorDcm, VerDcm;
 	u32 reg;
-	unsigned int mask_line_size;
 
 	tvn = zr->timing;
 
@@ -395,143 +394,9 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 		reg |= ZR36057_VDCR_Triton;
 	btwrite(reg, ZR36057_VDCR);
 
-	/* (Ronald) don't write this if overlay_mask = NULL */
-	if (zr->overlay_mask) {
-		/* Write overlay clipping mask data, but don't enable overlay clipping */
-		/* RJ: since this makes only sense on the screen, we use
-		 * zr->overlay_settings.width instead of video_width */
-
-		mask_line_size = (BUZ_MAX_WIDTH + 31) / 32;
-		reg = virt_to_bus(zr->overlay_mask);
-		btwrite(reg, ZR36057_MMTR);
-		reg = virt_to_bus(zr->overlay_mask + mask_line_size);
-		btwrite(reg, ZR36057_MMBR);
-		reg =
-		    mask_line_size - (zr->overlay_settings.width +
-				      31) / 32;
-		if (DispMode == 0)
-			reg += mask_line_size;
-		reg <<= ZR36057_OCR_MaskStride;
-		btwrite(reg, ZR36057_OCR);
-	}
-
 	zr36057_adjust_vfe(zr, zr->codec_mode);
 }
 
-/*
- * Switch overlay on or off
- */
-
-void zr36057_overlay(struct zoran *zr, int on)
-{
-	u32 reg;
-
-	if (on) {
-		/* do the necessary settings ... */
-		btand(~ZR36057_VDCR_VidEn, ZR36057_VDCR);	/* switch it off first */
-
-		zr36057_set_vfe(zr,
-				zr->overlay_settings.width,
-				zr->overlay_settings.height,
-				zr->overlay_settings.format);
-
-		/* Start and length of each line MUST be 4-byte aligned.
-		 * This should be already checked before the call to this routine.
-		 * All error messages are internal driver checking only! */
-
-		/* video display top and bottom registers */
-		reg = (long)zr->vbuf_base +
-		    zr->overlay_settings.x *
-		    ((zr->overlay_settings.format->depth + 7) / 8) +
-		    zr->overlay_settings.y *
-		    zr->vbuf_bytesperline;
-		btwrite(reg, ZR36057_VDTR);
-		if (reg & 3)
-			pci_err(zr->pci_dev, "zr36057_overlay() - video_address not aligned\n");
-		if (zr->overlay_settings.height > BUZ_MAX_HEIGHT / 2)
-			reg += zr->vbuf_bytesperline;
-		btwrite(reg, ZR36057_VDBR);
-
-		/* video stride, status, and frame grab register */
-		reg = zr->vbuf_bytesperline -
-		    zr->overlay_settings.width *
-		    ((zr->overlay_settings.format->depth + 7) / 8);
-		if (zr->overlay_settings.height > BUZ_MAX_HEIGHT / 2)
-			reg += zr->vbuf_bytesperline;
-		if (reg & 3)
-			pci_err(zr->pci_dev, "zr36057_overlay() - video_stride not aligned\n");
-		reg = (reg << ZR36057_VSSFGR_DispStride);
-		reg |= ZR36057_VSSFGR_VidOvf;	/* clear overflow status */
-		btwrite(reg, ZR36057_VSSFGR);
-
-		/* Set overlay clipping */
-		if (zr->overlay_settings.clipcount > 0)
-			btor(ZR36057_OCR_OvlEnable, ZR36057_OCR);
-
-		/* ... and switch it on */
-		btor(ZR36057_VDCR_VidEn, ZR36057_VDCR);
-	} else {
-		/* Switch it off */
-		btand(~ZR36057_VDCR_VidEn, ZR36057_VDCR);
-	}
-}
-
-/*
- * The overlay mask has one bit for each pixel on a scan line,
- *  and the maximum window size is BUZ_MAX_WIDTH * BUZ_MAX_HEIGHT pixels.
- */
-
-void write_overlay_mask(struct zoran_fh *fh, struct v4l2_clip *vp, int count)
-{
-	struct zoran *zr = fh->zr;
-	unsigned int mask_line_size = (BUZ_MAX_WIDTH + 31) / 32;
-	u32 *mask;
-	int x, y, width, height;
-	unsigned int i, j, k;
-
-	/* fill mask with one bits */
-	memset(fh->overlay_mask, ~0, mask_line_size * 4 * BUZ_MAX_HEIGHT);
-
-	for (i = 0; i < count; ++i) {
-		/* pick up local copy of clip */
-		x = vp[i].c.left;
-		y = vp[i].c.top;
-		width = vp[i].c.width;
-		height = vp[i].c.height;
-
-		/* trim clips that extend beyond the window */
-		if (x < 0) {
-			width += x;
-			x = 0;
-		}
-		if (y < 0) {
-			height += y;
-			y = 0;
-		}
-		if (x + width > zr->overlay_settings.width)
-			width = zr->overlay_settings.width - x;
-		if (y + height > zr->overlay_settings.height)
-			height = zr->overlay_settings.height - y;
-
-		/* ignore degenerate clips */
-		if (height <= 0)
-			continue;
-		if (width <= 0)
-			continue;
-
-		/* apply clip for each scan line */
-		for (j = 0; j < height; ++j) {
-			/* reset bit for each pixel */
-			/* this can be optimized later if need be */
-			mask = fh->overlay_mask + (y + j) * mask_line_size;
-			for (k = 0; k < width; ++k) {
-				mask[(x + k) / 32] &=
-				    ~((u32)1 << (x + k) % 32);
-			}
-		}
-	}
-}
-
 /* Enable/Disable uncompressed memory grabbing of the 36057 */
 void zr36057_set_memgrab(struct zoran *zr, int mode)
 {
@@ -567,12 +432,8 @@ void zr36057_set_memgrab(struct zoran *zr, int mode)
 		zr->v4l_grab_frame = NO_GRAB_ACTIVE;
 
 		/* re-enable grabbing to screen if it was running */
-		if (zr->v4l_overlay_active) {
-			zr36057_overlay(zr, 1);
-		} else {
-			btand(~ZR36057_VDCR_VidEn, ZR36057_VDCR);
-			btand(~ZR36057_VSSFGR_SnapShot, ZR36057_VSSFGR);
-		}
+		btand(~ZR36057_VDCR_VidEn, ZR36057_VDCR);
+		btand(~ZR36057_VSSFGR_SnapShot, ZR36057_VSSFGR);
 	}
 }
 
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 078575334b5d..8724b0ad855e 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -65,8 +65,7 @@ const struct zoran_format zoran_formats[] = {
 		.fourcc = V4L2_PIX_FMT_RGB555,
 		.colorspace = V4L2_COLORSPACE_SRGB,
 		.depth = 15,
-		.flags = ZORAN_FORMAT_CAPTURE |
-			 ZORAN_FORMAT_OVERLAY,
+		.flags = ZORAN_FORMAT_CAPTURE,
 		.vfespfr = ZR36057_VFESPFR_RGB555 | ZR36057_VFESPFR_ErrDif |
 			   ZR36057_VFESPFR_LittleEndian,
 	}, {
@@ -74,16 +73,14 @@ const struct zoran_format zoran_formats[] = {
 		.fourcc = V4L2_PIX_FMT_RGB555X,
 		.colorspace = V4L2_COLORSPACE_SRGB,
 		.depth = 15,
-		.flags = ZORAN_FORMAT_CAPTURE |
-			 ZORAN_FORMAT_OVERLAY,
+		.flags = ZORAN_FORMAT_CAPTURE,
 		.vfespfr = ZR36057_VFESPFR_RGB555 | ZR36057_VFESPFR_ErrDif,
 	}, {
 		.name = "16-bit RGB LE",
 		.fourcc = V4L2_PIX_FMT_RGB565,
 		.colorspace = V4L2_COLORSPACE_SRGB,
 		.depth = 16,
-		.flags = ZORAN_FORMAT_CAPTURE |
-			 ZORAN_FORMAT_OVERLAY,
+		.flags = ZORAN_FORMAT_CAPTURE,
 		.vfespfr = ZR36057_VFESPFR_RGB565 | ZR36057_VFESPFR_ErrDif |
 			   ZR36057_VFESPFR_LittleEndian,
 	}, {
@@ -91,48 +88,42 @@ const struct zoran_format zoran_formats[] = {
 		.fourcc = V4L2_PIX_FMT_RGB565X,
 		.colorspace = V4L2_COLORSPACE_SRGB,
 		.depth = 16,
-		.flags = ZORAN_FORMAT_CAPTURE |
-			 ZORAN_FORMAT_OVERLAY,
+		.flags = ZORAN_FORMAT_CAPTURE,
 		.vfespfr = ZR36057_VFESPFR_RGB565 | ZR36057_VFESPFR_ErrDif,
 	}, {
 		.name = "24-bit RGB",
 		.fourcc = V4L2_PIX_FMT_BGR24,
 		.colorspace = V4L2_COLORSPACE_SRGB,
 		.depth = 24,
-		.flags = ZORAN_FORMAT_CAPTURE |
-			 ZORAN_FORMAT_OVERLAY,
+		.flags = ZORAN_FORMAT_CAPTURE,
 		.vfespfr = ZR36057_VFESPFR_RGB888 | ZR36057_VFESPFR_Pack24,
 	}, {
 		.name = "32-bit RGB LE",
 		.fourcc = V4L2_PIX_FMT_BGR32,
 		.colorspace = V4L2_COLORSPACE_SRGB,
 		.depth = 32,
-		.flags = ZORAN_FORMAT_CAPTURE |
-			 ZORAN_FORMAT_OVERLAY,
+		.flags = ZORAN_FORMAT_CAPTURE,
 		.vfespfr = ZR36057_VFESPFR_RGB888 | ZR36057_VFESPFR_LittleEndian,
 	}, {
 		.name = "32-bit RGB BE",
 		.fourcc = V4L2_PIX_FMT_RGB32,
 		.colorspace = V4L2_COLORSPACE_SRGB,
 		.depth = 32,
-		.flags = ZORAN_FORMAT_CAPTURE |
-			 ZORAN_FORMAT_OVERLAY,
+		.flags = ZORAN_FORMAT_CAPTURE,
 		.vfespfr = ZR36057_VFESPFR_RGB888,
 	}, {
 		.name = "4:2:2, packed, YUYV",
 		.fourcc = V4L2_PIX_FMT_YUYV,
 		.colorspace = V4L2_COLORSPACE_SMPTE170M,
 		.depth = 16,
-		.flags = ZORAN_FORMAT_CAPTURE |
-			 ZORAN_FORMAT_OVERLAY,
+		.flags = ZORAN_FORMAT_CAPTURE,
 		.vfespfr = ZR36057_VFESPFR_YUV422,
 	}, {
 		.name = "4:2:2, packed, UYVY",
 		.fourcc = V4L2_PIX_FMT_UYVY,
 		.colorspace = V4L2_COLORSPACE_SMPTE170M,
 		.depth = 16,
-		.flags = ZORAN_FORMAT_CAPTURE |
-			 ZORAN_FORMAT_OVERLAY,
+		.flags = ZORAN_FORMAT_CAPTURE,
 		.vfespfr = ZR36057_VFESPFR_YUV422 | ZR36057_VFESPFR_LittleEndian,
 	}, {
 		.name = "Hardware-encoded Motion-JPEG",
@@ -736,15 +727,10 @@ static int jpg_sync(struct zoran_fh *fh, struct zoran_sync *bs)
 static void zoran_open_init_session(struct zoran_fh *fh)
 {
 	int i;
-	struct zoran *zr = fh->zr;
 
 	/* Per default, map the V4L Buffers */
 	map_mode_raw(fh);
 
-	/* take over the card's current settings */
-	zr->overlay_settings.is_set = 0;
-	fh->overlay_active = ZORAN_FREE;
-
 	/* buffers */
 	memset(&fh->buffers, 0, sizeof(fh->buffers));
 	for (i = 0; i < MAX_FRAME; i++) {
@@ -759,15 +745,6 @@ static void zoran_close_end_session(struct zoran_fh *fh)
 {
 	struct zoran *zr = fh->zr;
 
-	/* overlay */
-	if (fh->overlay_active != ZORAN_FREE) {
-		fh->overlay_active = zr->overlay_active = ZORAN_FREE;
-		zr->v4l_overlay_active = 0;
-		if (!zr->v4l_memgrab_active)
-			zr36057_overlay(zr, 0);
-		zr->overlay_mask = NULL;
-	}
-
 	if (fh->map_mode == ZORAN_MAP_MODE_RAW) {
 		/* v4l capture */
 		if (fh->buffers.active != ZORAN_FREE) {
@@ -825,16 +802,6 @@ static int zoran_open(struct file *file)
 	}
 	v4l2_fh_init(&fh->fh, video_devdata(file));
 
-	/*
-	 * used to be BUZ_MAX_WIDTH/HEIGHT, but that gives overflows
-	 * on norm-change!
-	 */
-	fh->overlay_mask = kmalloc(array3_size((768 + 31) / 32, 576, 4), GFP_KERNEL);
-	if (!fh->overlay_mask) {
-		res = -ENOMEM;
-		goto fail_fh;
-	}
-
 	if (zr->user++ == 0)
 		first_open = 1;
 
@@ -856,9 +823,6 @@ static int zoran_open(struct file *file)
 
 	return 0;
 
-fail_fh:
-	v4l2_fh_exit(&fh->fh);
-	kfree(fh);
 fail_unlock:
 	mutex_unlock(&zr->lock);
 
@@ -894,11 +858,6 @@ static int zoran_close(struct file *file)
 		if (zr36067_debug > 1)
 			print_interrupts(zr);
 
-		/* Overlay off */
-		zr->v4l_overlay_active = 0;
-		zr36057_overlay(zr, 0);
-		zr->overlay_mask = NULL;
-
 		/* capture off */
 		wake_up_interruptible(&zr->v4l_capq);
 		zr36057_set_memgrab(zr, 0);
@@ -915,7 +874,6 @@ static int zoran_close(struct file *file)
 
 	v4l2_fh_del(&fh->fh);
 	v4l2_fh_exit(&fh->fh);
-	kfree(fh->overlay_mask);
 	kfree(fh);
 
 	pci_dbg(zr->pci_dev, "%s done\n", __func__);
@@ -945,26 +903,6 @@ static int setup_fbuffer(struct zoran_fh *fh, void *base, const struct zoran_for
 	if (!bytesperline)
 		bytesperline = width * ((fmt->depth + 7) & ~7) / 8;
 
-#if 0
-	if (zr->overlay_active) {
-		/* dzjee... stupid users... don't even bother to turn off
-		 * overlay before changing the memory location...
-		 * normally, we would return errors here. However, one of
-		 * the tools that does this is... xawtv! and since xawtv
-		 * is used by +/- 99% of the users, we'd rather be user-
-		 * friendly and silently do as if nothing went wrong */
-		dprintk(3,
-			KERN_ERR
-			"%s: %s - forced overlay turnoff because framebuffer changed\n",
-			ZR_DEVNAME(zr), __func__);
-		zr36057_overlay(zr, 0);
-	}
-#endif
-
-	if (!(fmt->flags & ZORAN_FORMAT_OVERLAY)) {
-		pci_err(zr->pci_dev, "%s - no valid overlay format given\n", __func__);
-		return -EINVAL;
-	}
 	if (height <= 0 || width <= 0 || bytesperline <= 0) {
 		pci_err(zr->pci_dev, "%s - invalid height/width/bpl value (%d|%d|%d)\n",
 			__func__, width, height, bytesperline);
@@ -980,177 +918,11 @@ static int setup_fbuffer(struct zoran_fh *fh, void *base, const struct zoran_for
 	zr->vbuf_height = height;
 	zr->vbuf_width = width;
 	zr->vbuf_depth = fmt->depth;
-	zr->overlay_settings.format = fmt;
 	zr->vbuf_bytesperline = bytesperline;
 
-	/* The user should set new window parameters */
-	zr->overlay_settings.is_set = 0;
-
 	return 0;
 }
 
-static int setup_window(struct zoran_fh *fh, int x, int y, int width, int height,
-			struct v4l2_clip __user *clips, unsigned int clipcount, void __user *bitmap)
-{
-	struct zoran *zr = fh->zr;
-	struct v4l2_clip *vcp = NULL;
-	int on, end;
-
-	if (!zr->vbuf_base) {
-		pci_err(zr->pci_dev, "%s - frame buffer has to be set first\n", __func__);
-		return -EINVAL;
-	}
-
-	if (!zr->overlay_settings.format) {
-		pci_err(zr->pci_dev, "%s - no overlay format set\n", __func__);
-		return -EINVAL;
-	}
-
-	if (clipcount > 2048) {
-		pci_err(zr->pci_dev, "%s - invalid clipcount\n", __func__);
-		return -EINVAL;
-	}
-
-	/*
-	 * The video front end needs 4-byte alinged line sizes, we correct that
-	 * silently here if necessary
-	 */
-	if (zr->vbuf_depth == 15 || zr->vbuf_depth == 16) {
-		end = (x + width) & ~1;	/* round down */
-		x = (x + 1) & ~1;	/* round up */
-		width = end - x;
-	}
-
-	if (zr->vbuf_depth == 24) {
-		end = (x + width) & ~3;	/* round down */
-		x = (x + 3) & ~3;	/* round up */
-		width = end - x;
-	}
-
-	if (width > BUZ_MAX_WIDTH)
-		width = BUZ_MAX_WIDTH;
-	if (height > BUZ_MAX_HEIGHT)
-		height = BUZ_MAX_HEIGHT;
-
-	/* Check for invalid parameters */
-	if (width < BUZ_MIN_WIDTH || height < BUZ_MIN_HEIGHT ||
-	    width > BUZ_MAX_WIDTH || height > BUZ_MAX_HEIGHT) {
-		pci_err(zr->pci_dev, "%s - width = %d or height = %d invalid\n", __func__, width, height);
-		return -EINVAL;
-	}
-
-	zr->overlay_settings.x = x;
-	zr->overlay_settings.y = y;
-	zr->overlay_settings.width = width;
-	zr->overlay_settings.height = height;
-	zr->overlay_settings.clipcount = clipcount;
-
-	/*
-	 * If an overlay is running, we have to switch it off
-	 * and switch it on again in order to get the new settings in effect.
-	 *
-	 * We also want to avoid that the overlay mask is written
-	 * when an overlay is running.
-	 */
-
-	on = zr->v4l_overlay_active && !zr->v4l_memgrab_active &&
-	    zr->overlay_active != ZORAN_FREE &&
-	    fh->overlay_active != ZORAN_FREE;
-	if (on)
-		zr36057_overlay(zr, 0);
-
-	/*
-	 *   Write the overlay mask if clips are wanted.
-	 *   We prefer a bitmap.
-	 */
-	if (bitmap) {
-		/* fake value - it just means we want clips */
-		zr->overlay_settings.clipcount = 1;
-
-		if (copy_from_user(fh->overlay_mask, bitmap,
-				   (width * height + 7) / 8)) {
-			return -EFAULT;
-		}
-	} else if (clipcount) {
-		/* write our own bitmap from the clips */
-		vcp = vmalloc(array_size(sizeof(struct v4l2_clip),
-					 clipcount + 4));
-		if (!vcp) {
-			return -ENOMEM;
-		}
-		if (copy_from_user
-		    (vcp, clips, sizeof(struct v4l2_clip) * clipcount)) {
-			vfree(vcp);
-			return -EFAULT;
-		}
-		write_overlay_mask(fh, vcp, clipcount);
-		vfree(vcp);
-	}
-
-	zr->overlay_settings.is_set = 1;
-
-	if (on)
-		zr36057_overlay(zr, 1);
-
-	/* Make sure the changes come into effect */
-	return wait_grab_pending(zr);
-}
-
-static int setup_overlay(struct zoran_fh *fh, int on)
-{
-	struct zoran *zr = fh->zr;
-
-	/* If there is nothing to do, return immediately */
-	if ((on && fh->overlay_active != ZORAN_FREE) ||
-	    (!on && fh->overlay_active == ZORAN_FREE))
-		return 0;
-
-	/* check whether we're touching someone else's overlay */
-	if (on && zr->overlay_active != ZORAN_FREE &&
-	    fh->overlay_active == ZORAN_FREE) {
-		pci_err(zr->pci_dev, "%s - overlay is already active for another session\n", __func__);
-		return -EBUSY;
-	}
-	if (!on && zr->overlay_active != ZORAN_FREE &&
-	    fh->overlay_active == ZORAN_FREE) {
-		pci_err(zr->pci_dev, "%s - you cannot cancel someone else's session\n", __func__);
-		return -EPERM;
-	}
-
-	if (on == 0) {
-		zr->overlay_active = fh->overlay_active = ZORAN_FREE;
-		zr->v4l_overlay_active = 0;
-		/*
-		 * When a grab is running, the video simply
-		 * won't be switched on any more
-		 */
-		if (!zr->v4l_memgrab_active)
-			zr36057_overlay(zr, 0);
-		zr->overlay_mask = NULL;
-	} else {
-		if (!zr->vbuf_base || !zr->overlay_settings.is_set) {
-			pci_err(zr->pci_dev, "%s - buffer or window not set\n", __func__);
-			return -EINVAL;
-		}
-		if (!zr->overlay_settings.format) {
-			pci_err(zr->pci_dev, "%s - no overlay format set\n", __func__);
-			return -EINVAL;
-		}
-		zr->overlay_active = fh->overlay_active = ZORAN_LOCKED;
-		zr->v4l_overlay_active = 1;
-		zr->overlay_mask = fh->overlay_mask;
-		if (!zr->v4l_memgrab_active)
-			zr36057_overlay(zr, 1);
-		/*
-		 * When a grab is running, the video will be
-		 * switched on when grab is finished
-		 */
-	}
-
-	/* Make sure the changes come into effect */
-	return wait_grab_pending(zr);
-}
-
 /* get the status of a buffer in the clients buffer queue */
 static int zoran_v4l2_buffer_status(struct zoran_fh *fh,
 				    struct v4l2_buffer *buf, int num)
@@ -1249,8 +1021,6 @@ static int zoran_v4l2_buffer_status(struct zoran_fh *fh,
 
 static int zoran_set_norm(struct zoran *zr, v4l2_std_id norm)
 {
-	int on;
-
 	if (zr->v4l_buffers.active != ZORAN_FREE ||
 	    zr->jpg_buffers.active != ZORAN_FREE) {
 		pr_warn("%s: %s called while in playback/capture mode\n", ZR_DEVNAME(zr), __func__);
@@ -1269,20 +1039,9 @@ static int zoran_set_norm(struct zoran *zr, v4l2_std_id norm)
 	else
 		zr->timing = zr->card.tvn[0];
 
-	/*
-	 * We switch overlay off and on since a change in the
-	 * norm needs different VFE settings
-	 */
-	on = zr->overlay_active && !zr->v4l_memgrab_active;
-	if (on)
-		zr36057_overlay(zr, 0);
-
 	decoder_call(zr, video, s_std, norm);
 	encoder_call(zr, video, s_std_output, norm);
 
-	if (on)
-		zr36057_overlay(zr, 1);
-
 	/* Make sure the changes come into effect */
 	zr->norm = norm;
 
@@ -1324,7 +1083,7 @@ static int zoran_querycap(struct file *file, void *__fh, struct v4l2_capability
 	strscpy(cap->driver, "zoran", sizeof(cap->driver));
 	snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s", pci_name(zr->pci_dev));
 	cap->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE |
-			   V4L2_CAP_VIDEO_OUTPUT | V4L2_CAP_VIDEO_OVERLAY;
+			   V4L2_CAP_VIDEO_OUTPUT;
 	cap->capabilities = cap->device_caps | V4L2_CAP_DEVICE_CAPS;
 	return 0;
 }
@@ -1362,14 +1121,6 @@ static int zoran_enum_fmt_vid_out(struct file *file, void *__fh,
 	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_PLAYBACK);
 }
 
-static int zoran_enum_fmt_vid_overlay(struct file *file, void *__fh,
-				      struct v4l2_fmtdesc *f)
-{
-	struct zoran *zr = video_drvdata(file);
-
-	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_OVERLAY);
-}
-
 static int zoran_g_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format *fmt)
 {
 	struct zoran *zr = video_drvdata(file);
@@ -1412,40 +1163,6 @@ static int zoran_g_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 	return 0;
 }
 
-static int zoran_g_fmt_vid_overlay(struct file *file, void *__fh,
-				   struct v4l2_format *fmt)
-{
-	struct zoran *zr = video_drvdata(file);
-
-	fmt->fmt.win.w.left = zr->overlay_settings.x;
-	fmt->fmt.win.w.top = zr->overlay_settings.y;
-	fmt->fmt.win.w.width = zr->overlay_settings.width;
-	fmt->fmt.win.w.height = zr->overlay_settings.height;
-	if (zr->overlay_settings.width * 2 > BUZ_MAX_HEIGHT)
-		fmt->fmt.win.field = V4L2_FIELD_INTERLACED;
-	else
-		fmt->fmt.win.field = V4L2_FIELD_TOP;
-
-	return 0;
-}
-
-static int zoran_try_fmt_vid_overlay(struct file *file, void *__fh,
-				     struct v4l2_format *fmt)
-{
-	struct zoran *zr = video_drvdata(file);
-
-	if (fmt->fmt.win.w.width > BUZ_MAX_WIDTH)
-		fmt->fmt.win.w.width = BUZ_MAX_WIDTH;
-	if (fmt->fmt.win.w.width < BUZ_MIN_WIDTH)
-		fmt->fmt.win.w.width = BUZ_MIN_WIDTH;
-	if (fmt->fmt.win.w.height > BUZ_MAX_HEIGHT)
-		fmt->fmt.win.w.height = BUZ_MAX_HEIGHT;
-	if (fmt->fmt.win.w.height < BUZ_MIN_HEIGHT)
-		fmt->fmt.win.w.height = BUZ_MIN_HEIGHT;
-
-	return 0;
-}
-
 static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
 				 struct v4l2_format *fmt)
 {
@@ -1533,26 +1250,6 @@ static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
 	return 0;
 }
 
-static int zoran_s_fmt_vid_overlay(struct file *file, void *__fh,
-				   struct v4l2_format *fmt)
-{
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
-	int res;
-
-	pci_dbg(zr->pci_dev, "x=%d, y=%d, w=%d, h=%d, cnt=%d, map=0x%p\n",
-		fmt->fmt.win.w.left, fmt->fmt.win.w.top,
-			fmt->fmt.win.w.width,
-			fmt->fmt.win.w.height,
-			fmt->fmt.win.clipcount,
-			fmt->fmt.win.bitmap);
-	res = setup_window(fh, fmt->fmt.win.w.left, fmt->fmt.win.w.top,
-			   fmt->fmt.win.w.width, fmt->fmt.win.w.height,
-			   (struct v4l2_clip __user *)fmt->fmt.win.clips,
-			   fmt->fmt.win.clipcount, fmt->fmt.win.bitmap);
-	return res;
-}
-
 static int zoran_s_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format *fmt)
 {
 	struct zoran_fh *fh = __fh;
@@ -1687,8 +1384,6 @@ static int zoran_g_fbuf(struct file *file, void *__fh,
 	fb->base = zr->vbuf_base;
 	fb->fmt.width = zr->vbuf_width;
 	fb->fmt.height = zr->vbuf_height;
-	if (zr->overlay_settings.format)
-		fb->fmt.pixelformat = zr->overlay_settings.format->fourcc;
 	fb->fmt.bytesperline = zr->vbuf_bytesperline;
 	fb->fmt.colorspace = V4L2_COLORSPACE_SRGB;
 	fb->fmt.field = V4L2_FIELD_INTERLACED;
@@ -1721,13 +1416,6 @@ static int zoran_s_fbuf(struct file *file, void *__fh,
 	return res;
 }
 
-static int zoran_overlay(struct file *file, void *__fh, unsigned int on)
-{
-	struct zoran_fh *fh = __fh;
-
-	return setup_overlay(fh, on);
-}
-
 static int zoran_streamoff(struct file *file, void *__fh, enum v4l2_buf_type type);
 
 static int zoran_reqbufs(struct file *file, void *__fh, struct v4l2_requestbuffers *req)
@@ -2515,7 +2203,6 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_s_std			    = zoran_s_std,
 	.vidioc_g_jpegcomp		    = zoran_g_jpegcomp,
 	.vidioc_s_jpegcomp		    = zoran_s_jpegcomp,
-	.vidioc_overlay			    = zoran_overlay,
 	.vidioc_reqbufs			    = zoran_reqbufs,
 	.vidioc_querybuf		    = zoran_querybuf,
 	.vidioc_qbuf			    = zoran_qbuf,
@@ -2524,16 +2211,12 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_streamoff		    = zoran_streamoff,
 	.vidioc_enum_fmt_vid_cap	    = zoran_enum_fmt_vid_cap,
 	.vidioc_enum_fmt_vid_out	    = zoran_enum_fmt_vid_out,
-	.vidioc_enum_fmt_vid_overlay	    = zoran_enum_fmt_vid_overlay,
 	.vidioc_g_fmt_vid_cap		    = zoran_g_fmt_vid_cap,
 	.vidioc_g_fmt_vid_out               = zoran_g_fmt_vid_out,
-	.vidioc_g_fmt_vid_overlay           = zoran_g_fmt_vid_overlay,
 	.vidioc_s_fmt_vid_cap		    = zoran_s_fmt_vid_cap,
 	.vidioc_s_fmt_vid_out               = zoran_s_fmt_vid_out,
-	.vidioc_s_fmt_vid_overlay           = zoran_s_fmt_vid_overlay,
 	.vidioc_try_fmt_vid_cap		    = zoran_try_fmt_vid_cap,
 	.vidioc_try_fmt_vid_out		    = zoran_try_fmt_vid_out,
-	.vidioc_try_fmt_vid_overlay	    = zoran_try_fmt_vid_overlay,
 	.vidioc_subscribe_event             = v4l2_ctrl_subscribe_event,
 	.vidioc_unsubscribe_event           = v4l2_event_unsubscribe,
 };
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
