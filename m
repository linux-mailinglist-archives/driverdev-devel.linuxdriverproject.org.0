Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 165B22720AB
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:24:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C076C871D8;
	Mon, 21 Sep 2020 10:24:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bvbuVeWVae+Y; Mon, 21 Sep 2020 10:24:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4E82B86FC1;
	Mon, 21 Sep 2020 10:24:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 140291BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0821C20535
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:23:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QViUbVnI-s+O for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:23:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 7BF6B20770
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:13 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id k15so12117149wrn.10
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=mJHxmatwliiILb7dsJ+xU9dZGkpFAiokQ09uJSwZTko=;
 b=YY36+18NrSi43hiI1GypE3L3g7YkZYC4dvqcoG7y95SOj1DcWqwIToU6gOxxryf9q8
 aXDMUATQCVAArDmi3knlOtzdjOhVud7zU1UPPGGZlBStGw/sDaSo2uRZUQ1izWMJ+w7S
 lsJnR06Z4Y8Y+aa8LX/PXD0W4IvLdrLpfAaeW3R19RfP536Wke1u2HSxxqjNC0hF5NVt
 t2QKRUmmeD3UAhu1FJ+i77IN9m+MF9l+VGp7G0ThCesVk4TBYgJ+DLCznQ+LJdeYQ0HC
 WVS8QATv415OnmoScSh8oUTMTzFcJI2mDyUkzVqgJ8GxzVAv2R3W8PQNKcsaHLNWk6Y1
 YMqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=mJHxmatwliiILb7dsJ+xU9dZGkpFAiokQ09uJSwZTko=;
 b=buEtKml8Qa5t1ZLQSxP7Qcsv+Q/mOA7/jwe/UfiO8X7qhRlz5zpIOZvy4PhmZUAx20
 P/cYBXumXtLEAP4wYWUMF5hK5BOYxNH98d04fZ91UtCW7/WHfICb7IrXYWNtfcD1yTTF
 RRNTREhV9zCu9BmEJ8uYJq31XZBt/8T5wikJrYzLvBs2fGLLmdkAudQfKH1+40ad7veL
 PubsZP0vDo9N+zm9UVkRpN5owTBQAPDr/7b4qj3J9rn9siQbpngWgWwJ2E03d4JTTlvy
 a52jnX13Pv5FUOZZxVALCq3kQbDuF67HlDCZzHXZgSwiVIW4p0jU+zyx0Mez9FKqZdeE
 4LBw==
X-Gm-Message-State: AOAM530JhYVWgndLtnWcnZbJVrtXHV2VdqKGBOlUCk3RCex1BrvM3xpv
 E1Q8aQ+y9DgxA9pdUnLMljs/vw==
X-Google-Smtp-Source: ABdhPJwtsP6qs8zegG7/DtdHTKeW1KXJsBuEqLj+EEMBeNJc/0krxjR0o43Of5KJoFWEVdN8Jioegw==
X-Received: by 2002:adf:ef45:: with SMTP id c5mr49998455wrp.37.1600683671890; 
 Mon, 21 Sep 2020 03:21:11 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.11
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:11 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 42/49] staging: media: zoran: remove framebuffer
 support
Date: Mon, 21 Sep 2020 10:20:17 +0000
Message-Id: <1600683624-5863-43-git-send-email-clabbe@baylibre.com>
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

The framebuffer support is obsolete, so let's reduce code size.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h        |  4 -
 drivers/staging/media/zoran/zoran_card.c   |  6 --
 drivers/staging/media/zoran/zoran_driver.c | 85 ----------------------
 3 files changed, 95 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 294e52d78e1b..0246635e0eac 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -299,10 +299,6 @@ struct zoran {
 
 	/* Current buffer params */
 	unsigned int buffer_size;
-	void *vbuf_base;
-	int vbuf_height, vbuf_width;
-	int vbuf_depth;
-	int vbuf_bytesperline;
 
 	wait_queue_head_t v4l_capq;
 
diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index ab16a70a7451..530dd326ad94 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -895,12 +895,6 @@ static int zr36057_init(struct zoran *zr)
 	zr->jpg_buffers.allocated = 0;
 	zr->v4l_buffers.allocated = 0;
 
-	zr->vbuf_base = (void *)vidmem;
-	zr->vbuf_width = 0;
-	zr->vbuf_height = 0;
-	zr->vbuf_depth = 0;
-	zr->vbuf_bytesperline = 0;
-
 	/* Avoid nonsense settings from user for default input/norm */
 	if (default_norm < 0 || default_norm > 2)
 		default_norm = 0;
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 1efec2edd72f..0b4bfc184b57 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -881,48 +881,6 @@ static int zoran_close(struct file *file)
 	return 0;
 }
 
-static int setup_fbuffer(struct zoran_fh *fh, void *base, const struct zoran_format *fmt,
-			 int width, int height, int bytesperline)
-{
-	struct zoran *zr = fh->zr;
-
-	/* (Ronald) v4l/v4l2 guidelines */
-	if (!capable(CAP_SYS_ADMIN) && !capable(CAP_SYS_RAWIO))
-		return -EPERM;
-
-	/*
-	 * Don't allow frame buffer overlay if PCI or AGP is buggy, or on
-	   ALi Magik (that needs very low latency while the card needs a
-	   higher value always)
-	 */
-
-	if (pci_pci_problems & (PCIPCI_FAIL | PCIAGP_FAIL | PCIPCI_ALIMAGIK))
-		return -ENXIO;
-
-	/* we need a bytesperline value, even if not given */
-	if (!bytesperline)
-		bytesperline = width * ((fmt->depth + 7) & ~7) / 8;
-
-	if (height <= 0 || width <= 0 || bytesperline <= 0) {
-		pci_err(zr->pci_dev, "%s - invalid height/width/bpl value (%d|%d|%d)\n",
-			__func__, width, height, bytesperline);
-		return -EINVAL;
-	}
-	if (bytesperline & 3) {
-		pci_err(zr->pci_dev, "%s - bytesperline (%d) must be 4-byte aligned\n",
-			__func__, bytesperline);
-		return -EINVAL;
-	}
-
-	zr->vbuf_base = (void *)((unsigned long)base & ~3);
-	zr->vbuf_height = height;
-	zr->vbuf_width = width;
-	zr->vbuf_depth = fmt->depth;
-	zr->vbuf_bytesperline = bytesperline;
-
-	return 0;
-}
-
 /* get the status of a buffer in the clients buffer queue */
 static int zoran_v4l2_buffer_status(struct zoran_fh *fh,
 				    struct v4l2_buffer *buf, int num)
@@ -1388,47 +1346,6 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 	return res;
 }
 
-static int zoran_g_fbuf(struct file *file, void *__fh,
-			struct v4l2_framebuffer *fb)
-{
-	struct zoran *zr = video_drvdata(file);
-
-	memset(fb, 0, sizeof(*fb));
-	fb->base = zr->vbuf_base;
-	fb->fmt.width = zr->vbuf_width;
-	fb->fmt.height = zr->vbuf_height;
-	fb->fmt.bytesperline = zr->vbuf_bytesperline;
-	fb->fmt.colorspace = V4L2_COLORSPACE_SRGB;
-	fb->fmt.field = V4L2_FIELD_INTERLACED;
-	fb->capability = V4L2_FBUF_CAP_LIST_CLIPPING;
-
-	return 0;
-}
-
-static int zoran_s_fbuf(struct file *file, void *__fh,
-			const struct v4l2_framebuffer *fb)
-{
-	struct zoran *zr = video_drvdata(file);
-	struct zoran_fh *fh = __fh;
-	int i, res = 0;
-	__le32 printformat = __cpu_to_le32(fb->fmt.pixelformat);
-
-	for (i = 0; i < NUM_FORMATS; i++)
-		if (zoran_formats[i].fourcc == fb->fmt.pixelformat)
-			break;
-	if (i == NUM_FORMATS) {
-		pci_err(zr->pci_dev, "VIDIOC_S_FBUF - format=0x%x (%4.4s) not allowed\n",
-			fb->fmt.pixelformat,
-			(char *)&printformat);
-		return -EINVAL;
-	}
-
-	res = setup_fbuffer(fh, fb->base, &zoran_formats[i], fb->fmt.width,
-			    fb->fmt.height, fb->fmt.bytesperline);
-
-	return res;
-}
-
 static int zoran_streamoff(struct file *file, void *__fh, enum v4l2_buf_type type);
 
 static int zoran_reqbufs(struct file *file, void *__fh, struct v4l2_requestbuffers *req)
@@ -2218,8 +2135,6 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 /*	.vidioc_enum_output		    = zoran_enum_output,
 	.vidioc_g_output		    = zoran_g_output,
 	.vidioc_s_output		    = zoran_s_output,*/
-	.vidioc_g_fbuf			    = zoran_g_fbuf,
-	.vidioc_s_fbuf			    = zoran_s_fbuf,
 	.vidioc_g_std			    = zoran_g_std,
 	.vidioc_s_std			    = zoran_s_std,
 	.vidioc_g_jpegcomp		    = zoran_g_jpegcomp,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
