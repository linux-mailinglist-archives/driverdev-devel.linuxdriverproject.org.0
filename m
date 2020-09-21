Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B18B272026
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1532886818;
	Mon, 21 Sep 2020 10:21:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pCZikoGHUduA; Mon, 21 Sep 2020 10:21:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EBA48683A;
	Mon, 21 Sep 2020 10:21:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 272591BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 23D5B871D1
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rnr9LBL4L9vx for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 317D9871C6
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:54 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id k15so12116046wrn.10
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=65FXJqBuVDUzxD7doK++gxysr5EY6cSmpC745+zOXJs=;
 b=Du24+tm/QhmhZ5IVy7r2qPHUeCurWcwjdhxfvUmy4+7fplJwd3mtGQfOB8MZgTqFl1
 vbavMjLPVGU5vW1vR8Ms6EEpiDMFdTbMx6KzdLWgyGxAGWyJ9l3IJo+b51zvZfdlaWRo
 IgYhmvKycQsZFysfm9I7u+CkXkCTVxIy6D/955vSwybNxK5FpllxCk+uP/W68dKwvAhH
 t/Cv7GX9cr5h5PmH2L6acNNPIQNFtM9K0joVNuxFlS65+lOOCrjn7Ia5FfRHY7nCHeTt
 BT/0zrRLOTDyGVt4Wh2NawrP8Tl3/QtEXp9E9Y1Xrgx0Zm5VP3P4SCeTC7G59H/yNTtC
 3F4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=65FXJqBuVDUzxD7doK++gxysr5EY6cSmpC745+zOXJs=;
 b=AlB0Ty75mZ03xLpFdlbhuo62n81tvDVtS4QgE8fKp/u4Y2nFurBV8UyBvlwxU6CcZs
 m4Q+9ibNVnmg6labqcgw7ugf+srWdCnWpm95D4ZwobHhQwP1/FVU1N3T73ZvxePQZqwv
 VzYiJEx7FxwuMS2nRiKSLePNSmpQ9alQNjfR44wyydB5Yt8YENnZVn1n4J7o/rMQOU6k
 eZVLql/xMRC4wu89qIzYFE6XzHsTWDu0t5p+sNe3gM+YiXdDByVCxU2tylfm1IaTOI5j
 J7wZs2aiqy7zWOcnnalDl95WeBdYM45wu3ho/HWFmi8jkCI1p2il0ECsK1sYBMiBBLaT
 jtAg==
X-Gm-Message-State: AOAM532TVXadHcjnl+H3BHZ1nH1gP4ewGMFeHlzd+PsM4QqesgehiAh5
 U8yzW8E7S/mY59blBRVnCd5pOgEPL/JJeQ==
X-Google-Smtp-Source: ABdhPJwk1tGudOVy78cc5atd6bTRWuBVMmN4LKzZfKPwxptMUejJSagxk3DjbhP5ecTDndV98Boo8A==
X-Received: by 2002:a05:6000:85:: with SMTP id
 m5mr22915576wrx.160.1600683652749; 
 Mon, 21 Sep 2020 03:20:52 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:51 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 21/49] staging: media: zoran: Use video_drvdata to get
 struct zoran
Date: Mon, 21 Sep 2020 10:19:56 +0000
Message-Id: <1600683624-5863-22-git-send-email-clabbe@baylibre.com>
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

Using video_drvdata() is proper and shorter than using directly
fh pointers.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 40 ++++++++--------------
 1 file changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 77cd2c07c394..9d39e98c9af1 100644
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
@@ -1352,8 +1351,7 @@ static int zoran_enum_fmt(struct zoran *zr, struct v4l2_fmtdesc *fmt, int flag)
 static int zoran_enum_fmt_vid_cap(struct file *file, void *__fh,
 				  struct v4l2_fmtdesc *f)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_CAPTURE);
 }
@@ -1361,8 +1359,7 @@ static int zoran_enum_fmt_vid_cap(struct file *file, void *__fh,
 static int zoran_enum_fmt_vid_out(struct file *file, void *__fh,
 				  struct v4l2_fmtdesc *f)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_PLAYBACK);
 }
@@ -1370,8 +1367,7 @@ static int zoran_enum_fmt_vid_out(struct file *file, void *__fh,
 static int zoran_enum_fmt_vid_overlay(struct file *file, void *__fh,
 				      struct v4l2_fmtdesc *f)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	return zoran_enum_fmt(zr, f, ZORAN_FORMAT_OVERLAY);
 }
@@ -1421,8 +1417,7 @@ static int zoran_g_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 static int zoran_g_fmt_vid_overlay(struct file *file, void *__fh,
 				   struct v4l2_format *fmt)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	fmt->fmt.win.w.left = zr->overlay_settings.x;
 	fmt->fmt.win.w.top = zr->overlay_settings.y;
@@ -1439,8 +1434,7 @@ static int zoran_g_fmt_vid_overlay(struct file *file, void *__fh,
 static int zoran_try_fmt_vid_overlay(struct file *file, void *__fh,
 				     struct v4l2_format *fmt)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	if (fmt->fmt.win.w.width > BUZ_MAX_WIDTH)
 		fmt->fmt.win.w.width = BUZ_MAX_WIDTH;
@@ -1641,8 +1635,8 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format
 
 static int zoran_s_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format *fmt)
 {
+	struct zoran *zr = video_drvdata(file);
 	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
 	int i;
 	int res = 0;
 
@@ -1689,8 +1683,7 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 static int zoran_g_fbuf(struct file *file, void *__fh,
 			struct v4l2_framebuffer *fb)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	memset(fb, 0, sizeof(*fb));
 	fb->base = zr->vbuf_base;
@@ -1709,8 +1702,8 @@ static int zoran_g_fbuf(struct file *file, void *__fh,
 static int zoran_s_fbuf(struct file *file, void *__fh,
 			const struct v4l2_framebuffer *fb)
 {
+	struct zoran *zr = video_drvdata(file);
 	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
 	int i, res = 0;
 	__le32 printformat = __cpu_to_le32(fb->fmt.pixelformat);
 
@@ -2042,8 +2035,7 @@ static int zoran_streamoff(struct file *file, void *__fh, enum v4l2_buf_type typ
 
 static int zoran_g_std(struct file *file, void *__fh, v4l2_std_id *std)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	*std = zr->norm;
 	return 0;
@@ -2051,8 +2043,7 @@ static int zoran_g_std(struct file *file, void *__fh, v4l2_std_id *std)
 
 static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 	int res = 0;
 
 	res = zoran_set_norm(zr, std);
@@ -2065,8 +2056,7 @@ static int zoran_s_std(struct file *file, void *__fh, v4l2_std_id std)
 
 static int zoran_enum_input(struct file *file, void *__fh, struct v4l2_input *inp)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	if (inp->index >= zr->card.inputs)
 		return -EINVAL;
@@ -2082,8 +2072,7 @@ static int zoran_enum_input(struct file *file, void *__fh, struct v4l2_input *in
 
 static int zoran_g_input(struct file *file, void *__fh, unsigned int *input)
 {
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
+	struct zoran *zr = video_drvdata(file);
 
 	*input = zr->input;
 
@@ -2092,8 +2081,7 @@ static int zoran_g_input(struct file *file, void *__fh, unsigned int *input)
 
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
