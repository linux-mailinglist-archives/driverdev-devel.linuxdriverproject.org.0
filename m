Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A9092720AA
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 12:24:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 994FE87119;
	Mon, 21 Sep 2020 10:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SVQC4Ho7azHm; Mon, 21 Sep 2020 10:24:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A4B981FEC;
	Mon, 21 Sep 2020 10:24:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 84ABD1BF3F4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:23:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7A01A214F6
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 10:23:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NoRQexblXh5i for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 10:23:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by silver.osuosl.org (Postfix) with ESMTPS id AC3FA2076E
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 10:21:10 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id s13so11553014wmh.4
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uDkkWNM0rHPx30WBJ9RYyqITIKCjYLog+rU9zqKzxvE=;
 b=hsFrcDBiXN61Z9d04dj5g+ouWOEmK2VyMDvFapjJe1DUDa08wnRo5XTxjQPuQ999wW
 49LL96NcTSaVmoRUZsnyVxCZ85I+f1W0jwvPuNJ/CTPC1tYoPvRVa3U5d5ysmebuj5Kz
 m0Uj8YhGjdHI/c/ihKVYEno9U9fLfDkyxO5sXVSJM6qISfaaCjGb8egyruLYPwYxF2NK
 fblQWKEWwMuEp+AAbL0hxAXCdA8hER/GnDU0rQ3+e8aObv8aGq5DTv+Hzt4HfI0SLgsr
 r2W8OEp9y3qdHVY1TRHJ1UPWNU+hF3/OvfbbWKtM+8QpS6iVepUalojmrcC8CO/RIzW2
 Eebg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uDkkWNM0rHPx30WBJ9RYyqITIKCjYLog+rU9zqKzxvE=;
 b=Dd3IjG/9p10yhM+HDt4DEuvskHLAy2J69QiUlzmTWDbosGKx+ZkHEfgOyHJTi2qZ7s
 NTX1izBIIZ6h4DD8bqrpm7ty7q6moVb7M3lQrY3WMlS9G49ZrATEd6Axci7hA//o7PY+
 Mnl2DVzxTRsLAoZZWG73LaMLv6bnftr9LnJmY+Zsb0DJqXWVHaqNsCA2cfmva+Kf2eX9
 siSkwryOGj42TZGkLvoCi4pUfFWV/IHfUo+QCqHDTreCzoN7C8W2iIlT2efoLN7smFi9
 SjIMUP3sPJo5sbqehk+AsEmLULx1dRlIM8BeiQIIIkR7JfGaj0I5EaBt6+8sy/6sKChS
 YVHw==
X-Gm-Message-State: AOAM53171Cc1m8jRIgL29wMAdkRW+/2WrtqDMyRZThKxujS9OBWOZDpF
 y7OS4/8FrstfW1I7XQqpGVZBPizueM6KHA==
X-Google-Smtp-Source: ABdhPJzWXxqw72kvusYKTW95fuGlXzwUmj6ka2u4TTLGkffH+FdJpwHQKoa69Ob7+uHu9Y8yhALwsg==
X-Received: by 2002:a1c:4381:: with SMTP id
 q123mr28357827wma.108.1600683669228; 
 Mon, 21 Sep 2020 03:21:09 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id l17sm18804629wme.11.2020.09.21.03.21.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 21 Sep 2020 03:21:08 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, laurent.pinchart@skynet.be, mchehab@kernel.org
Subject: [PATCH RFT/RFC 39/49] staging: media: zoran: disable output
Date: Mon, 21 Sep 2020 10:20:14 +0000
Message-Id: <1600683624-5863-40-git-send-email-clabbe@baylibre.com>
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

Zoran is picky about jpeg data it accepts. At least it seems to not support COM and APPn.
So until a way to filter data will be done, disable output.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c   |  2 ++
 drivers/staging/media/zoran/zoran_driver.c | 20 ++++++++++++--------
 2 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index 93318ae1803a..864196e7acae 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -954,6 +954,8 @@ static int zr36057_init(struct zoran *zr)
 	*zr->video_dev = zoran_template;
 	zr->video_dev->v4l2_dev = &zr->v4l2_dev;
 	zr->video_dev->lock = &zr->lock;
+	zr->video_dev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE;
+
 	strscpy(zr->video_dev->name, ZR_DEVNAME(zr), sizeof(zr->video_dev->name));
 	/*
 	 * It's not a mem2mem device, but you can both capture and output from one and the same
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 2c1e70cf2f0c..1efec2edd72f 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1082,8 +1082,7 @@ static int zoran_querycap(struct file *file, void *__fh, struct v4l2_capability
 	strscpy(cap->card, ZR_DEVNAME(zr), sizeof(cap->card));
 	strscpy(cap->driver, "zoran", sizeof(cap->driver));
 	snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s", pci_name(zr->pci_dev));
-	cap->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE |
-			   V4L2_CAP_VIDEO_OUTPUT;
+	cap->device_caps = zr->video_dev->device_caps;
 	cap->capabilities = cap->device_caps | V4L2_CAP_DEVICE_CAPS;
 	return 0;
 }
@@ -2204,6 +2203,11 @@ static int zoran_mmap(struct file *file, struct vm_area_struct *vma)
 	return res;
 }
 
+/*
+ * Output is disabled temporarily
+ * Zoran is picky about jpeg data it accepts. At least it seems to unsupport COM and APPn.
+ * So until a way to filter data will be done, disable output.
+ */
 static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_querycap		    = zoran_querycap,
 	.vidioc_s_selection		    = zoran_s_selection,
@@ -2211,9 +2215,9 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_enum_input		    = zoran_enum_input,
 	.vidioc_g_input			    = zoran_g_input,
 	.vidioc_s_input			    = zoran_s_input,
-	.vidioc_enum_output		    = zoran_enum_output,
+/*	.vidioc_enum_output		    = zoran_enum_output,
 	.vidioc_g_output		    = zoran_g_output,
-	.vidioc_s_output		    = zoran_s_output,
+	.vidioc_s_output		    = zoran_s_output,*/
 	.vidioc_g_fbuf			    = zoran_g_fbuf,
 	.vidioc_s_fbuf			    = zoran_s_fbuf,
 	.vidioc_g_std			    = zoran_g_std,
@@ -2227,13 +2231,13 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_streamon		    = zoran_streamon,
 	.vidioc_streamoff		    = zoran_streamoff,
 	.vidioc_enum_fmt_vid_cap	    = zoran_enum_fmt_vid_cap,
-	.vidioc_enum_fmt_vid_out	    = zoran_enum_fmt_vid_out,
+/*	.vidioc_enum_fmt_vid_out	    = zoran_enum_fmt_vid_out,*/
 	.vidioc_g_fmt_vid_cap		    = zoran_g_fmt_vid_cap,
-	.vidioc_g_fmt_vid_out               = zoran_g_fmt_vid_out,
+/*	.vidioc_g_fmt_vid_out               = zoran_g_fmt_vid_out,*/
 	.vidioc_s_fmt_vid_cap		    = zoran_s_fmt_vid_cap,
-	.vidioc_s_fmt_vid_out               = zoran_s_fmt_vid_out,
+/*	.vidioc_s_fmt_vid_out               = zoran_s_fmt_vid_out,*/
 	.vidioc_try_fmt_vid_cap		    = zoran_try_fmt_vid_cap,
-	.vidioc_try_fmt_vid_out		    = zoran_try_fmt_vid_out,
+/*	.vidioc_try_fmt_vid_out		    = zoran_try_fmt_vid_out,*/
 	.vidioc_subscribe_event             = v4l2_ctrl_subscribe_event,
 	.vidioc_unsubscribe_event           = v4l2_event_unsubscribe,
 };
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
