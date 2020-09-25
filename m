Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D111F2790E9
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:40:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A9E78610F;
	Fri, 25 Sep 2020 18:40:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-AjCOouiJ1M; Fri, 25 Sep 2020 18:40:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7B60186D95;
	Fri, 25 Sep 2020 18:40:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F36621BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F021886E65
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BCWnkWe7VeiR for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:40:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com
 [209.85.166.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8B11B86E70
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:40:23 +0000 (UTC)
Received: by mail-il1-f195.google.com with SMTP id a19so3288672ilq.10
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xUDsyw9R3jJxj15EJT3or+kmYeDPoBgPCSAmh4oHLlM=;
 b=BBycQb0D91/nmiwyygHNPlNfHifcum4tKV6GorDkw9Z5pbKXoaNDP9Y0Qzgy0NkNoh
 EbOo1ku2FcsZRu50t55M49heETGvcLCTQnLxL0wEebGPJI1vcumPV7SDgR65M4iTaLDR
 +vaJKm11ty5A0d3ONsLzc5eWFD9zIOdgW7RvkKRG9u9lGfrZeZxfemUuDatimcAvIDM7
 PyFA6oOehqvHaRtfx1Hvth9l36O4ysdlHT5owyMCsQSMaraH2arKyaEMIEqjLOtA6k19
 F36NWnraNDx6HvOr0bGNXnEsW/fq8FQRpqKwUiSOTpiDJC+tH12oGdoouWJBliuVVzkQ
 m3PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xUDsyw9R3jJxj15EJT3or+kmYeDPoBgPCSAmh4oHLlM=;
 b=nmtLnQXJAGOId7G+4NjpPTqNNnDCCzVYl05lD1o/fKTrf+fwNWZ73i57buqO4QAF/2
 OBDXe5Tbuc6z9e3GcYYz59FsgxYd2j4b4s+35VFiDAj6wFTo022CxiN/RyA7gUL3tQXB
 gAOfoiXIIfNdc1iA8PAc63nkp+JpPP9B5jjwEGmDngDMPRi/zhm9RfdZzhY4Qay+ZrTu
 nnwVAGl5Qwl9Hocp14PaMguYb4nlu2NOp8z3sDuy7sMM1AMvPpuJqPFd8b4HF3W1Z7y0
 RYS6CZkqrt1apCZzhQ10v00Ydz28Xbj1pLGCSQkbE/tuvDRiKW0L54W6GVBGMiML6tbb
 Wk3Q==
X-Gm-Message-State: AOAM531dv8ckhlin3p6VE/57Sy0SpfbECHYcv+P6U5P/nV1r79F88OhZ
 4xlMy/QLKhg4rWl5SgUV+czc1ZHBvUIn0g==
X-Google-Smtp-Source: ABdhPJwJaGFBJ+3ed5U7vIW0ALXG4mNqgNrOLtumDezaWWnOQIKnqKHm/rcmsSOrTyCQJrVG+8pBHQ==
X-Received: by 2002:a63:c74e:: with SMTP id v14mr241196pgg.186.1601058778335; 
 Fri, 25 Sep 2020 11:32:58 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.32.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:32:57 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 17/47] staging: media: zoran: move v4l_settings out
 of zoran_fh
Date: Fri, 25 Sep 2020 18:30:27 +0000
Message-Id: <1601058657-14042-18-git-send-email-clabbe@baylibre.com>
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
index 2a00a3a72dad..e60db53c0359 100644
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
@@ -1421,14 +1419,13 @@ static int zoran_g_fmt_vid_cap(struct file *file, void *__fh,
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
@@ -1698,10 +1695,10 @@ static int zoran_s_fmt_vid_cap(struct file *file, void *__fh,
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
@@ -1968,7 +1965,6 @@ static int zoran_streamon(struct file *file, void *__fh, enum v4l2_buf_type type
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
