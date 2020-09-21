Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDC8272025
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:21:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 03B6886004;
	Mon, 21 Sep 2020 10:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UMxl9zeeBVeg; Mon, 21 Sep 2020 10:21:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7E2ED85F90;
	Mon, 21 Sep 2020 10:21:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BC401BF962
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5901D85F9B
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m18rh1GSvP1W for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:20:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5BA4885F9C
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:20:51 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id w2so11565349wmi.1
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vl6OTebBvkB4fdbT234fIR/40NpEOt314dUuABCDll4=;
 b=WFgjWee5tAmAd1qRQcGAeSltT4caQXzjsAIKam+mcOztmDIR83/XyI3xW+hXWmc6H0
 ztufoQ/FW87bsXe5I6eEUk1UBdzW9NNXvu88hj2PAD0A910DzQRTUL/YH6pf0dpFJ69H
 T/KUelScDdiGNe5f7t1pMOUXoFiKeLOYsh2xyadC2FRSol4vbOSdF8EBNy0uKGDprvOB
 ous2BtfSAcG8bFn2fNBVMbFAweBvfuwxeLBTgE5qs+hlGVovIhwnsxwN2ZK4CQ0OLIYP
 jvNgSM5S1JIMOA9pjBOjLl1rbZlbtun2DfWZxl+DlBzCuSgRZVz2Sc/Q5IQTvdVhZXXL
 49Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vl6OTebBvkB4fdbT234fIR/40NpEOt314dUuABCDll4=;
 b=ijlQD1H8Paqprnmi1UBPMa01QiX5zurYHrlO9eUDcZkhcYljjB63sI5NLgdlhIMFHA
 hxkn/K0bor8/zcYGBc5P+Kk/x8VUIf+4llYER5hoQRsU5wMGgzrg/U4rfDbBarkUpuGI
 ASAoFKK4/7dkrnYh2d/0rGJ70/iMkEudeUvpQgYeHpbqlikxSmISn/wn7B5ed10GIDBy
 hIvkv+d7ieOg1GL3u0pbk0dDheHm6yx/zNvmKHT3yQuLkS/eJL7UdxBrajhHRqv2hk4v
 x8YxQcpkcpbYZaIhmlHJWOG8mgfpVrOLooqAEek2G2dDCL/3TEShJg2jC5ZedOInluan
 feHA==
X-Gm-Message-State: AOAM532H5Ir0XqVUJSXwrdp2irEf+faLVSgMzSx15TOrOxsjtWG6ui7u
 VJZYHRwjvOjK18qCMtxXzbXLxw==
X-Google-Smtp-Source: ABdhPJxEoI9cVv901ZdVCjiPjzQzjnNTltkT1xg7WUelID5zgl2gGP6kyipgnMsU1MRU7KUyfpLjFA==
X-Received: by 2002:a05:600c:220f:: with SMTP id
 z15mr16338168wml.87.1600683649861; 
 Mon, 21 Sep 2020 03:20:49 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.20.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:20:49 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 18/49] staging: media: zoran: move v4l_settings out of
 zoran_fh
Date: Mon, 21 Sep 2020 10:19:53 +0000
Message-Id: <1600683624-5863-19-git-send-email-clabbe@baylibre.com>
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

We need to get rid of zoran_fh, so move the v4l_settings directly in the
zoran structure.
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran.h        |  1 -
 drivers/staging/media/zoran/zoran_driver.c | 38 ++++++++++------------
 2 files changed, 17 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran.h b/drivers/staging/media/zoran/zoran.h
index 97933c550113..a529b49888c6 100644
--- a/drivers/staging/media/zoran/zoran.h
+++ b/drivers/staging/media/zoran/zoran.h
@@ -217,7 +217,6 @@ struct zoran_fh {
 
 	struct zoran_buffer_col buffers;	/* buffers' info */
 
-	struct zoran_v4l_settings v4l_settings;	/* structure with a lot of things to play with */
 	struct zoran_jpg_settings jpg_settings;	/* structure with a lot of things to play with */
 };
 
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index a97faf54e19d..984f1dde99d2 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -432,10 +432,10 @@ static int zoran_v4l_set_format(struct zoran_fh *fh, int width, int height,
 		return -EINVAL;
 	}
 
-	fh->v4l_settings.width = width;
-	fh->v4l_settings.height = height;
-	fh->v4l_settings.format = format;
-	fh->v4l_settings.bytesperline = bpp * fh->v4l_settings.width;
+	zr->v4l_settings.width = width;
+	zr->v4l_settings.height = height;
+	zr->v4l_settings.format = format;
+	zr->v4l_settings.bytesperline = bpp * zr->v4l_settings.width;
 
 	return 0;
 }
@@ -489,7 +489,7 @@ static int zoran_v4l_queue_frame(struct zoran_fh *fh, int num)
 			zr->v4l_pend[zr->v4l_pend_head++ & V4L_MASK_FRAME] = num;
 			zr->v4l_buffers.buffer[num].state = BUZ_STATE_PEND;
 			zr->v4l_buffers.buffer[num].bs.length =
-			    fh->v4l_settings.bytesperline *
+			    zr->v4l_settings.bytesperline *
 			    zr->v4l_settings.height;
 			fh->buffers.buffer[num] = zr->v4l_buffers.buffer[num];
 			break;
@@ -751,8 +751,6 @@ static void zoran_open_init_session(struct zoran_fh *fh)
 	fh->overlay_settings.format = zr->overlay_settings.format;
 	fh->overlay_active = ZORAN_FREE;
 
-	/* v4l settings */
-	fh->v4l_settings = zr->v4l_settings;
 	/* jpg settings */
 	fh->jpg_settings = zr->jpg_settings;
 
@@ -1205,7 +1203,7 @@ static int zoran_v4l2_buffer_status(struct zoran_fh *fh,
 			buf->flags |= V4L2_BUF_FLAG_QUEUED;
 		}
 
-		if (fh->v4l_settings.height <= BUZ_MAX_HEIGHT / 2)
+		if (zr->v4l_settings.height <= BUZ_MAX_HEIGHT / 2)
 			buf->field = V4L2_FIELD_TOP;
 		else
 			buf->field = V4L2_FIELD_INTERLACED;
@@ -1418,14 +1416,13 @@ static int zoran_g_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 	if (fh->map_mode != ZORAN_MAP_MODE_RAW)
 		return zoran_g_fmt_vid_out(file, fh, fmt);
 
-	fmt->fmt.pix.width = fh->v4l_settings.width;
-	fmt->fmt.pix.height = fh->v4l_settings.height;
-	fmt->fmt.pix.sizeimage = fh->v4l_settings.bytesperline *
-					fh->v4l_settings.height;
-	fmt->fmt.pix.pixelformat = fh->v4l_settings.format->fourcc;
-	fmt->fmt.pix.colorspace = fh->v4l_settings.format->colorspace;
-	fmt->fmt.pix.bytesperline = fh->v4l_settings.bytesperline;
-	if (BUZ_MAX_HEIGHT < (fh->v4l_settings.height * 2))
+	fmt->fmt.pix.width = zr->v4l_settings.width;
+	fmt->fmt.pix.height = zr->v4l_settings.height;
+	fmt->fmt.pix.sizeimage = zr->v4l_settings.bytesperline * zr->v4l_settings.height;
+	fmt->fmt.pix.pixelformat = zr->v4l_settings.format->fourcc;
+	fmt->fmt.pix.colorspace = zr->v4l_settings.format->colorspace;
+	fmt->fmt.pix.bytesperline = zr->v4l_settings.bytesperline;
+	if (BUZ_MAX_HEIGHT < (zr->v4l_settings.height * 2))
 		fmt->fmt.pix.field = V4L2_FIELD_INTERLACED;
 	else
 		fmt->fmt.pix.field = V4L2_FIELD_TOP;
@@ -1691,10 +1688,10 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh, struct v4l2_format
 		return res;
 
 	/* tell the user the results/missing stuff */
-	fmt->fmt.pix.bytesperline = fh->v4l_settings.bytesperline;
-	fmt->fmt.pix.sizeimage = fh->v4l_settings.height * fh->v4l_settings.bytesperline;
-	fmt->fmt.pix.colorspace = fh->v4l_settings.format->colorspace;
-	if (BUZ_MAX_HEIGHT < (fh->v4l_settings.height * 2))
+	fmt->fmt.pix.bytesperline = zr->v4l_settings.bytesperline;
+	fmt->fmt.pix.sizeimage = zr->v4l_settings.height * zr->v4l_settings.bytesperline;
+	fmt->fmt.pix.colorspace = zr->v4l_settings.format->colorspace;
+	if (BUZ_MAX_HEIGHT < (zr->v4l_settings.height * 2))
 		fmt->fmt.pix.field = V4L2_FIELD_INTERLACED;
 	else
 		fmt->fmt.pix.field = V4L2_FIELD_TOP;
@@ -1961,7 +1958,6 @@ static int zoran_streamon(struct file *file, void *__fh, enum v4l2_buf_type type
 		}
 
 		zr->v4l_buffers.active = fh->buffers.active = ZORAN_LOCKED;
-		zr->v4l_settings = fh->v4l_settings;
 
 		zr->v4l_sync_tail = zr->v4l_pend_tail;
 		if (!zr->v4l_memgrab_active &&
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
