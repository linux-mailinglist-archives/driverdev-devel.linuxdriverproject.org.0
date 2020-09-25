Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC3A2790FF
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:43:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1EA5A2E17A;
	Fri, 25 Sep 2020 18:43:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wFYa+Aqcy06e; Fri, 25 Sep 2020 18:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9B6B92E176;
	Fri, 25 Sep 2020 18:43:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A697F1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9C666806EE
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:43:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXgDosq2MmCJ for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:43:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9BD3686D2C
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:43:15 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id j2so3941909ioj.7
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=p5l6EaviuFGA1zFFnY0XdYdtQpoI5EcNFWrJRwNgpVY=;
 b=zet2hqgATH4NLGylP6g8DiOpWCgBcVtrRlUrLySmCZJugdUgUnlBzVtRfAwLquXKh2
 jRw5tcum14d9IAiAwH7eeprx05iP/qZB7ppp5umjVjAtoTUxuzwJdfjWaI0zX51WV32m
 rFOMmTaUv90ZqiTxiywopf1J1IWIXnAgvS8jZFnxAQxF/rfMMEJ/Cx1j1CA/G2931eIJ
 oZZdeot/nFN8EM7v0zfFyNOlI9x1GLcG6ni6YO5OqDcOY+G+Ctv+yPmD48OWfWsjGM97
 4MBfMtHI7mNdXY2dlzq8s/QwW4veoj07NDgKBnbKxPtuxtxYlNkKlxMlTA510h+OIw2d
 lhnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=p5l6EaviuFGA1zFFnY0XdYdtQpoI5EcNFWrJRwNgpVY=;
 b=rNydm3r9xOjf7n3k+a0j9xYrVvqH/yc3PVYDm64W/lmCV6X2nWJihTxeVCbvI97u4y
 80eaMl16Aq10YUAvhvy7i6gHPt0h/7C9pLeS4ghLC5X18ldbTX4j8jn8qYzOUkWPI2YF
 UraEJfDk/EJHoQOS5wIlA2JmTpWtpRinuV3300jtu+ssZNRrQLcsVq+hMhRYrVPDhxip
 99QF7j20lSQybsXKkQOW3Ypu70g6RXKPzCRxP8oaXxp2V4JupVvhszYtona4HZiZ307U
 VSyRU8GarnHQH9xMoaAxmNQE2YEGZCSuzzVQd4qynxmE2FBN3Gdz7za0XytIwpQVqX7N
 WBPg==
X-Gm-Message-State: AOAM530/3UFRI40z+6DkpqVnIH5DMssP8yqhDDku67aB5ukhY9YKmST6
 Cv1zPkXu4PIuhP1fDEQyNQ8OzsDTuh48Pw==
X-Google-Smtp-Source: ABdhPJzEgrB4BG0H/Uyfeg4c0tqS3TcXP7zO3k6gJ0gznak5aoItK346p4wpbQ2koFwLYguODlA1Eg==
X-Received: by 2002:a63:121f:: with SMTP id h31mr258623pgl.274.1601058913507; 
 Fri, 25 Sep 2020 11:35:13 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.35.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:35:12 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 40/47] staging: media: zoran: remove framebuffer
 support
Date: Fri, 25 Sep 2020 18:30:50 +0000
Message-Id: <1601058657-14042-41-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
References: <1601058657-14042-1-git-send-email-clabbe@baylibre.com>
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
index 0a193283eefc..28a403257bb9 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -900,12 +900,6 @@ static int zr36057_init(struct zoran *zr)
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
index 43f7c0c02876..bcbe2c78ea16 100644
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
@@ -1403,47 +1361,6 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
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
@@ -2235,8 +2152,6 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
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
