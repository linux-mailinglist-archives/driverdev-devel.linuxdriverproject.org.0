Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6AC27203E
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26D0D868F6;
	Mon, 21 Sep 2020 10:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ihTuUrm71zQ1; Mon, 21 Sep 2020 10:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D986C868FB;
	Mon, 21 Sep 2020 10:21:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0876E1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F152E85FA5
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 68H_eug8bBRP for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E6D3F85F9C
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:07 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id y15so12016730wmi.0
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jZ72PUAOAY/v7UQdoKSs5wvFASOODli3K4iY5mQPSSc=;
 b=JzNiLwHcQymY9+D/8+E4uv3VRe59dhgHJ1I8p9xqMKjrsJVLWChfAftBdMYaX/YAz1
 fkM9a1DXMC7+keldbhrkRFeGSLWb/FiMr2vpJvweYAJJuH5EZbY4nFU1KtcmCP/S7CDW
 hVzfBX9rGmO43vL6nDTmBwTZTQHkQ3DhdgWQQ6KadYIZT/ohDGARClZ2tTmWJdeei9Gf
 tfXsZ1XmRQC6gMZPu2dDt6vUBPc6DwLSSr2G9PHReMknSJmiXBPScSsmdaJWUhUcREjv
 yNEHAFFLVSuYW6OJDbwxxEfcqIlmtwRZEiFE1+jX19/NpTzXCsrFi+7X8k4QCKa6ZC8K
 aiDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jZ72PUAOAY/v7UQdoKSs5wvFASOODli3K4iY5mQPSSc=;
 b=moWB+STdEeB9Ng/E8KAgNo1D9dyv3QBfkXSP5JGIr/kKMzmGCVRXlDU0qW+PUNLAA5
 stQciNBOVhk5MiHeenrxcHtwQQuF5HY/BHHHXMB+M0vpUbx34RWkF0N4VPpNrZiGdL1f
 YDeE6hO5hXxqXg861gVBxOOaFWljZQyMb68ZdiX+9DFP8ccmJwQwzRsE2xccFEPeF9xZ
 btGRSnGbAhYwjvL5Ud8rQbc6A0GxmbZQhCYy2U7qEm3DSZ7t7b2XkXSzrdhcLQECSR5D
 sD3+OAPpLhN8MsKISfJUZEiW5nYELxkgSxov+DFIPX10JH6Pqv5xph0DTPYUptApzYbn
 fjpA==
X-Gm-Message-State: AOAM531IMGHwPaHKhcIk1l4urmIBsUjeDaRBTPFNtAsn7vgG1PYUXdTU
 pFbUvrz458wyhdwmEvqGMtTxAw==
X-Google-Smtp-Source: ABdhPJz/WEM6jR4u7NBZYYpTXL198YeibOBpadp1+XxIqsxq7O0M1Pi8POlysByw9qPiVubnv0OaMw==
X-Received: by 2002:a1c:7d55:: with SMTP id y82mr29496041wmc.100.1600683666523; 
 Mon, 21 Sep 2020 03:21:06 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:05 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 36/49] staging: media: zoran: Add more check for
 compliance
Date: Mon, 21 Sep 2020 10:20:11 +0000
Message-Id: <1600683624-5863-37-git-send-email-clabbe@baylibre.com>
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

The zoran driver miss some sanity checks, and this made v4l compliance
happy.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 6e95fbf5c7ea..a326c0a16e0c 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1092,6 +1092,11 @@ static int zoran_enum_fmt(struct zoran *zr, struct v4l2_fmtdesc *fmt, int flag)
 {
 	unsigned int num, i;
 
+	if (fmt->index >= ARRAY_SIZE(zoran_formats))
+		return -EINVAL;
+	if (fmt->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
+		return -EINVAL;
+
 	for (num = i = 0; i < NUM_FORMATS; i++) {
 		if (zoran_formats[i].flags & flag && num++ == fmt->index) {
 			strscpy(fmt->description, zoran_formats[i].name, sizeof(fmt->description));
@@ -1244,6 +1249,12 @@ static int zoran_try_fmt_vid_cap(struct file *file, void *__fh,
 	if (i == NUM_FORMATS)
 		return -EINVAL;
 
+	fmt->fmt.pix.colorspace = zoran_formats[i].colorspace;
+	if (BUZ_MAX_HEIGHT < (fmt->fmt.pix.height * 2))
+		fmt->fmt.pix.field = V4L2_FIELD_INTERLACED;
+	else
+		fmt->fmt.pix.field = V4L2_FIELD_TOP;
+
 	bpp = DIV_ROUND_UP(zoran_formats[i].depth, 8);
 	v4l_bound_align_image(&fmt->fmt.pix.width, BUZ_MIN_WIDTH, BUZ_MAX_WIDTH, bpp == 2 ? 1 : 2,
 		&fmt->fmt.pix.height, BUZ_MIN_HEIGHT, BUZ_MAX_HEIGHT, 0, 0);
@@ -1271,6 +1282,9 @@ static int zoran_s_fmt_vid_out(struct file *file, void *__fh, struct v4l2_format
 		return res;
 	}
 
+	if (!fmt->fmt.pix.height || !fmt->fmt.pix.width)
+		return -EINVAL;
+
 	settings = zr->jpg_settings;
 
 	/* we actually need to set 'real' parameters now */
@@ -1856,6 +1870,9 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 	    sel->type != V4L2_BUF_TYPE_VIDEO_CAPTURE)
 		return -EINVAL;
 
+	if (!sel->r.width || !sel->r.height)
+		return -EINVAL;
+
 	if (sel->target != V4L2_SEL_TGT_CROP)
 		return -EINVAL;
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
