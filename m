Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C361272042
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47EA885F9C;
	Mon, 21 Sep 2020 10:21:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7_RTIf1Ex9z8; Mon, 21 Sep 2020 10:21:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5920985FDB;
	Mon, 21 Sep 2020 10:21:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 398951BF962
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 35FE8868B2
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ioKjXduDETJ5 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4C9B2868BB
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:16 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id l9so12025259wme.3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GuupeKfcO/+rf9Qb6r8f2KQJXgchvtoxnNFe6M9/a1Y=;
 b=tuGiHopegBqrIUp8HpoCeuXo5y5bglOeDyrrrfZ4Tzuh9U6lqCJj5fXQgy9gzZfIPm
 Jw4YULN3OQk6sfQjCoMYyu5tVlL2tYnotZQgDONkBlgCqkIb4AhNP3X0AOl7eUv0Z2jl
 o2z1CC2zmeBOl2meNu+J+6u5Us1CMuzlG9sdM50i75y3fZUHRNnbclBHy+Jg0CeDlEcD
 5iBiCB8zjIBZ1ORIsNPQ+CrFmBBcfzagv/J1U1g85HIeFeuV9iXHtqKiqoSoTqAj1Rjb
 idMoqYHxE1jLGDP9DOthGbMEi8+gvkkB/cx/HsgkwS181mW4GGcxEE1mBbCR2jW3U0+h
 EBbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GuupeKfcO/+rf9Qb6r8f2KQJXgchvtoxnNFe6M9/a1Y=;
 b=mFV7zFU7eFs/pOpdsvGuH17aNX+j5WWcbOO6JxYe1JdAtFRTu0s2kALKpGGCTVNlpJ
 XbkX8GEq/lwSDThs9X8Bo9BAI4uBTjDIJKLdjZiZw+GcLTAHJ2jecheuQ2xGSJlu9NM+
 7Wd9YYk4VltL6Hsps3nGdQvUjSk2JruThg+Aeb1fa4dcfgpiZ8gU7bT+KftoQCkWdb5s
 fAQqlPPYLfohhhqvVJZ+5OsATKYV240bB0n5jTX/4oSCLbl7CV48G6RnzCXveC2WUDTj
 DjlH+s6HSV/Xz3R0F7gVkCGHDK1C18MNOllbRL+P9P/XxWl28ZcUboYuCkxLcjdTvYNX
 9qww==
X-Gm-Message-State: AOAM532HHkxwVa5xZl+pYfzzSRbLpR0v47IMaR4mLCYn9MaOPBsgl7E1
 k3+1hgel9fhzdw9CKHLdcHFi+w==
X-Google-Smtp-Source: ABdhPJxwp9O9hoZ+3in9xQ4Y1T0r6FX0PptcT7wQM++3JiwL83ORl7DTznIAAiqeYXT/IUV9yd/l7A==
X-Received: by 2002:a1c:bdc4:: with SMTP id
 n187mr29267185wmf.109.1600683674831; 
 Mon, 21 Sep 2020 03:21:14 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.13
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:14 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 45/49] staging: media: zoran: fix use of buffer_size
 and sizeimage
Date: Mon, 21 Sep 2020 10:20:20 +0000
Message-Id: <1600683624-5863-46-git-send-email-clabbe@baylibre.com>
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

buffer_size was not set when it should be.
Furthermore, use it instead of recalculate it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c   | 2 ++
 drivers/staging/media/zoran/zoran_driver.c | 9 ++++++---
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 3bfeb1e00563..e4688891d307 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -852,6 +852,8 @@ void zoran_open_init_params(struct zoran *zr)
 	if (i)
 		pci_err(zr->pci_dev, "%s internal error\n", __func__);
 
+	zr->buffer_size = zr->v4l_settings.bytesperline * zr->v4l_settings.height;
+
 	clear_interrupt_counters(zr);
 }
 
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 46bf8b32d57a..47f397ff190f 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -407,6 +407,8 @@ static int zoran_v4l_set_format(struct zoran *zr, int width, int height,
 
 	bpp = (format->depth + 7) / 8;
 
+	zr->buffer_size = height * width * bpp;
+
 	/* Check against available buffer size */
 	if (height * width * bpp > zr->buffer_size) {
 		pci_err(zr->pci_dev, "%s - video buffer size (%d kB) is too small\n",
@@ -1090,7 +1092,7 @@ static int zoran_g_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format
 	fmt->fmt.pix.width = zr->jpg_settings.img_width / zr->jpg_settings.HorDcm;
 	fmt->fmt.pix.height = zr->jpg_settings.img_height * 2 /
 		(zr->jpg_settings.VerDcm * zr->jpg_settings.TmpDcm);
-	fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&zr->jpg_settings);
+	fmt->fmt.pix.sizeimage = zr->buffer_size;
 	fmt->fmt.pix.pixelformat = V4L2_PIX_FMT_MJPEG;
 	if (zr->jpg_settings.TmpDcm == 1)
 		fmt->fmt.pix.field = (zr->jpg_settings.odd_even ?
@@ -1114,7 +1116,7 @@ static int zoran_g_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 
 	fmt->fmt.pix.width = zr->v4l_settings.width;
 	fmt->fmt.pix.height = zr->v4l_settings.height;
-	fmt->fmt.pix.sizeimage = zr->v4l_settings.bytesperline * zr->v4l_settings.height;
+	fmt->fmt.pix.sizeimage = zr->buffer_size;
 	fmt->fmt.pix.pixelformat = zr->v4l_settings.format->fourcc;
 	fmt->fmt.pix.colorspace = zr->v4l_settings.format->colorspace;
 	fmt->fmt.pix.bytesperline = zr->v4l_settings.bytesperline;
@@ -1183,6 +1185,7 @@ static int zoran_try_fmt_vid_out(struct file *file, void *__fh,
 				V4L2_FIELD_TOP : V4L2_FIELD_BOTTOM);
 
 	fmt->fmt.pix.sizeimage = zoran_v4l2_calc_bufsize(&settings);
+	zr->buffer_size = fmt->fmt.pix.sizeimage;
 	fmt->fmt.pix.bytesperline = 0;
 	fmt->fmt.pix.colorspace = V4L2_COLORSPACE_SMPTE170M;
 	return res;
@@ -1337,7 +1340,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 
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
