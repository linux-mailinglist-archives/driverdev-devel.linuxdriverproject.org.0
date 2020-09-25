Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C0A2790FA
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:42:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 785F82E191;
	Fri, 25 Sep 2020 18:42:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rLXrVwsh85zG; Fri, 25 Sep 2020 18:42:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74FF92E17B;
	Fri, 25 Sep 2020 18:42:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 801A51BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:42:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CB7D87644
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:42:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NepErz5KhO2K for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:42:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 093C286FC8
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:42:39 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id g29so3347308pgl.2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ilmDn91LW3u8nqKT07CUOhcD4W51+rQiqE8eqpt0HcI=;
 b=HjCPwpVruGyqX0YXyuViN6wgxL+Kvf6UMMShAej/amwLNfHXdX302rXjgjUvuUzD0j
 0JAViXwLIz1DGDdUILPJXnICXDy88zQpXcz+skicRK1apWu9AXHv7MJQDvUNQ+Tcon3a
 Kldb5l7tb83VTzCalIDCYQ/yq24zhxkoPZSLd4HtsVYz4zKTj+d9R5nnPLEIzeCyOSM9
 eBeFeNdXP78FXqD/tRVrH7rHChva1lfPl9gwWap7TnOXsz2OEN0hLBTa7lCJs31CVt/K
 a4QQAUEDBVgC9f4+gRxHjnRNRjAr7R9WIySNhXi+ycI71Aob3kw/p/Dt+WpA98n/kJnq
 ht5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ilmDn91LW3u8nqKT07CUOhcD4W51+rQiqE8eqpt0HcI=;
 b=LXD7ihlpIIuGP7dOW7g91oqxFwNuLtP9RAG+gGeqU9stJvbrrZeNjwCtDbjlcVb6AC
 4nURAUEkbqI2g36BkoHgynJvRRv9Rx8mF2tSk9CUH3DO5Ul/mXfM8TAreO/SXiZqG5ig
 mQAw1tgBroro7iRde4IWpxligjCFzTwNsHnGSZQejuqXzl3P43lmoxsiTJlG4nv8Kglo
 bbjyc57YAdjHnCkmOOKy5lvxW9+gf3aqZK8rnN+4Fc0gFxwwONAiZkK9jkNXaq7DU6C5
 CeMvMnD3Pd7n3r084E6pu6fqekjIgdouFkiCu2lvhuFUzq0bObKuwVA+n/GYtVF9Aj+V
 XfJQ==
X-Gm-Message-State: AOAM532yvh2qfo/hF/u1wOPOG3yDdC5mOw3XrSZ+pEKG8LACMaAUD1VE
 yfkTe4N83VAUvRJ0yIS/vz09e37fHLld3g==
X-Google-Smtp-Source: ABdhPJyUY4cOZlGnr0YOqOt3S3c5y52NsRI62sbyy3cf3OMhDLyMLTjAUaFrGsXPscSADi+qTnarvw==
X-Received: by 2002:a63:2547:: with SMTP id l68mr219087pgl.241.1601058931025; 
 Fri, 25 Sep 2020 11:35:31 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.35.25
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:35:30 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 43/47] staging: media: zoran: fix use of
 buffer_size and sizeimage
Date: Fri, 25 Sep 2020 18:30:53 +0000
Message-Id: <1601058657-14042-44-git-send-email-clabbe@baylibre.com>
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

buffer_size was not set when it should be.
Furthermore, use it instead of recalculate it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c   | 2 ++
 drivers/staging/media/zoran/zoran_driver.c | 9 ++++++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 89fbc114c368..d7b3efa9e39f 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -857,6 +857,8 @@ void zoran_open_init_params(struct zoran *zr)
 	if (i)
 		pci_err(zr->pci_dev, "%s internal error\n", __func__);
 
+	zr->buffer_size = zr->v4l_settings.bytesperline * zr->v4l_settings.height;
+
 	clear_interrupt_counters(zr);
 }
 
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 5dacbeac790b..021073ba08e6 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -407,6 +407,8 @@ static int zoran_v4l_set_format(struct zoran *zr, int width, int height,
 
 	bpp = (format->depth + 7) / 8;
 
+	zr->buffer_size = height * width * bpp;
+
 	/* Check against available buffer size */
 	if (height * width * bpp > zr->buffer_size) {
 		pci_err(zr->pci_dev, "%s - video buffer size (%d kB) is too small\n",
@@ -1100,7 +1102,7 @@ static int zoran_g_fmt_vid_out(struct file *file, void *__fh,
 	fmt->fmt.pix.width = zr->jpg_settings.img_width / zr->jpg_settings.HorDcm;
 	fmt->fmt.pix.height = zr->jpg_settings.img_height * 2 /
 		(zr->jpg_settings.VerDcm * zr->jpg_settings.TmpDcm);
-	fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&zr->jpg_settings);
+	fmt->fmt.pix.sizeimage = zr->buffer_size;
 	fmt->fmt.pix.pixelformat = V4L2_PIX_FMT_MJPEG;
 	if (zr->jpg_settings.TmpDcm == 1)
 		fmt->fmt.pix.field = (zr->jpg_settings.odd_even ?
@@ -1125,7 +1127,7 @@ static int zoran_g_fmt_vid_cap(struct file *file, void *__fh,
 
 	fmt->fmt.pix.width = zr->v4l_settings.width;
 	fmt->fmt.pix.height = zr->v4l_settings.height;
-	fmt->fmt.pix.sizeimage = zr->v4l_settings.bytesperline * zr->v4l_settings.height;
+	fmt->fmt.pix.sizeimage = zr->buffer_size;
 	fmt->fmt.pix.pixelformat = zr->v4l_settings.format->fourcc;
 	fmt->fmt.pix.colorspace = zr->v4l_settings.format->colorspace;
 	fmt->fmt.pix.bytesperline = zr->v4l_settings.bytesperline;
@@ -1194,6 +1196,7 @@ static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
 				V4L2_FIELD_TOP : V4L2_FIELD_BOTTOM);
 
 	fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&settings);
+	zr->buffer_size = fmt->fmt.pix.sizeimage;
 	fmt->fmt.pix.bytesperline = 0;
 	fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 	return res;
@@ -1352,7 +1355,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 
 	/* tell the user the results/missing stuff */
 	fmt->fmt.pix.bytesperline = zr->v4l_settings.bytesperline;
-	fmt->fmt.pix.sizeimage = zr->v4l_settings.height * zr->v4l_settings.bytesperline;
+	fmt->fmt.pix.sizeimage = zr->buffer_size;
 	fmt->fmt.pix.colorspace = zr->v4l_settings.format->colorspace;
 	if (BUZ_MAX_HEIGHT < (zr->v4l_settings.height * 2))
 		fmt->fmt.pix.field = V4L2_FIELD_INTERLACED;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
