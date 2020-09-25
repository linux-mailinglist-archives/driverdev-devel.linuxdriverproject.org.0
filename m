Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C15792790ED
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:41:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 42E4A2E189;
	Fri, 25 Sep 2020 18:41:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5uQ3PYwbOtPD; Fri, 25 Sep 2020 18:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8EFA02E181;
	Fri, 25 Sep 2020 18:40:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA03D1BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C69C986237
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6Z62daTwnWaJ for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:40:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E65F8610F
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:40:53 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id k8so4048341pfk.2
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:40:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bT/+Sa6D+GAhAQMlD3pZwWZlV4j8Wl3G9tEqamihm64=;
 b=tJ1zeP4o/+j1dNZ6f+ZWQXe+4IXDFZe59+v6ksLWbgmuH1u18pRcM94Wfv5r8sXtPu
 462ipFCTkhwpe67/QMtE+T1wU9XW0ZSMXVQEQPGXFdoWPVvDg+OuEDH6gwsfshT+uRlQ
 D4zkBQ1ZC+iK1MQQnho3QkA5uAE0ooNhGKBnBbpwdiPHBbRt7kPcuh3CvZjZDm4iF590
 cLHzZ9H1XbpMksjoDwCrrASSfdSP6TPMPeTg+yqnD7prrCNi1gesnk8DYhe3nhfUE9+p
 ibkIJ48GIPaQBKa6oZQ3MRZpy3oBcJRjowDb54suSNBnh16Wb+FDXTkBxQvHITLwoPjw
 cZug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bT/+Sa6D+GAhAQMlD3pZwWZlV4j8Wl3G9tEqamihm64=;
 b=BxeI+rlmJBBGs7vLzb2bEXZZcKxk083O+8Mdz0PjQiOq9N4y+Bagi+AjqssrSXEKBw
 Qu+pSfwCLWqBdBawcecuI8BaJ5kEYoL3tGAy+9vE+23MWJjxlclbZKBK0Xm/rrYRSV8W
 K4Xqn7a9PpEfHVXdxh0idbAYq4+UVlku3q2NKzZAAw2zNJrVCiduVEvr3LNBfp4yj6zS
 3LSxQF9WLyha8N18ayc7XQ/nFAjHBEXCbbNSeBeeDAB/rI78BMKTA06GVOClcFkYCzo+
 TTqt04XiTjJnpus/oE1Etr5DomcE56uNDUbDwiyD1s7ZCxOvZfnxAUaxSa9qVh8Staia
 gJWQ==
X-Gm-Message-State: AOAM531CpMyqUwoQr9t3zCZGhVAXhr16o6UL20SRm51nSRtsVtIxE4ZT
 9P5/QGBjVaRil54rdaq4b+HmTQUKyXS1WA==
X-Google-Smtp-Source: ABdhPJxsPtGvqhg/fJRIoMlGbdAtsJBJgmleaqtXgxyMZC8IB1n7q1jhfwdSjvfxBm/lSvkohGf84A==
X-Received: by 2002:a17:902:b10b:b029:d1:e5e7:bdf8 with SMTP id
 q11-20020a170902b10bb02900d1e5e7bdf8mr683397plr.43.1601058795915; 
 Fri, 25 Sep 2020 11:33:15 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.33.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:33:15 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 20/47] staging: media: zoran: Use video_drvdata to
 get struct zoran
Date: Fri, 25 Sep 2020 18:30:30 +0000
Message-Id: <1601058657-14042-21-git-send-email-clabbe@baylibre.com>
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

Using video_drvdata() is proper and shorter than using directly
fh pointers.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 40 ++++++++--------------
 1 file changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 3a59aa66436f..518ba19e1e0a 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1320,8 +1320,7 @@ static int zoran_set_input(struct zoran *zr, int input)
 
 static int zoran_querycap(struct file *file, void *__fh, struct v4l2_capability *cap)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	strscpy(cap->card, ZR_DEVNAME(zr), sizeof(cap->card));
 	strscpy(cap->driver, "zoran", sizeof(cap->driver));
@@ -1353,8 +1352,7 @@ static int zoran_enum_fmt(struct zoran *zr, struct v4l2_fmtdesc *fmt, int flag)
 static int zoran_enum_fmt_vid_cap(struct file *file, void *__fh,
 				  struct v4l2_fmtdesc *f)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_CAPTURE);
 }
@@ -1362,8 +1360,7 @@ static int zoran_enum_fmt_vid_cap(struct file *file, void *__fh,
 static int zoran_enum_fmt_vid_out(struct file *file, void *__fh,
 				  struct v4l2_fmtdesc *f)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_PLAYBACK);
 }
@@ -1371,8 +1368,7 @@ static int zoran_enum_fmt_vid_out(struct file *file, void *__fh,
 static int zoran_enum_fmt_vid_overlay(struct file *file, void *__fh,
 				      struct v4l2_fmtdesc *f)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_OVERLAY);
 }
@@ -1424,8 +1420,7 @@ static int zoran_g_fmt_vid_cap(struct file *file, void *__fh,
 static int zoran_g_fmt_vid_overlay(struct file *file, void *__fh,
 				   struct v4l2_format *fmt)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	fmt->fmt.win.w.left = zr->overlay_settings.x;
 	fmt->fmt.win.w.top = zr->overlay_settings.y;
@@ -1442,8 +1437,7 @@ static int zoran_g_fmt_vid_overlay(struct file *file, void *__fh,
 static int zoran_try_fmt_vid_overlay(struct file *file, void *__fh,
 				     struct v4l2_format *fmt)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	if (fmt->fmt.win.w.width > BUZ_MAX_WIDTH)
 		fmt->fmt.win.w.width = BUZ_MAX_WIDTH;
@@ -1647,8 +1641,8 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh,
 static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 			       struct v4l2_format *fmt)
 {
+	struct zoran *zr = video_drvdata(file);
 	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
 	int i;
 	int res = 0;
 
@@ -1696,8 +1690,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
 static int zoran_g_fbuf(struct file *file, void *__fh,
 			struct v4l2_framebuffer *fb)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	memset(fb, 0, sizeof(*fb));
 	fb->base = zr->vbuf_base;
@@ -1716,8 +1709,8 @@ static int zoran_g_fbuf(struct file *file, void *__fh,
 static int zoran_s_fbuf(struct file *file, void *__fh,
 			const struct v4l2_framebuffer *fb)
 {
+	struct zoran *zr = video_drvdata(file);
 	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
 	int i, res = 0;
 	__le32 printformat = __cpu_to_le32(fb->fmt.pixelformat);
 
@@ -2049,8 +2042,7 @@ static int zoran_streamoff(struct file *file, void *__fh, enum v4l2_buf_type typ
 
 static int zoran_g_std(struct file *file, void *__fh, v4l2_std_id *std)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	*std = zr->norm;
 	return 0;
@@ -2058,8 +2050,7 @@ static int zoran_g_std(struct file *file, void *__fh, v4l2_std_id *std)
 
 static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 	int res = 0;
 
 	res = zoran_set_norm(zr, std);
@@ -2073,8 +2064,7 @@ static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
 static int zoran_enum_input(struct file *file, void *__fh,
 			    struct v4l2_input *inp)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	if (inp->index >= zr->card.inputs)
 		return -EINVAL;
@@ -2090,8 +2080,7 @@ static int zoran_enum_input(struct file *file, void *__fh,
 
 static int zoran_g_input(struct file *file, void *__fh, unsigned int *input)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	*input = zr->input;
 
@@ -2100,8 +2089,7 @@ static int zoran_g_input(struct file *file, void *__fh, unsigned int *input)
 
 static int zoran_s_input(struct file *file, void *__fh, unsigned int input)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 	int res;
 
 	res = zoran_set_input(zr, input);
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
