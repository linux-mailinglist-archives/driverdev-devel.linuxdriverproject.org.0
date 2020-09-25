Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BBCF2790EA
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:40:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0EFC62E184;
	Fri, 25 Sep 2020 18:40:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EiyrnELHh16r; Fri, 25 Sep 2020 18:40:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EA0B32E189;
	Fri, 25 Sep 2020 18:40:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 84F751BF330
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A85286E5E
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0gVFLMEHHSUU for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:40:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BBFDB86E55
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:40:30 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id o25so3342198pgm.0
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eGss8+t6OprF5UmZdfe832aJr+yAfFeel7PXaUvFcKo=;
 b=VAyvilvedlnkS93GVV1oKMBEvjod0xjaY2oW9WS1s6rsneDaTdK+6/6d8t3J0TSLmk
 9KvQHn/LPw06+kBHFE4FYeXLS3H2jwe1Io9FKt3HAeTPm2ueIMnoS06DzDI5EszUrEhF
 cx/pjU/pwSXNsMMeanAfkfhpj3Nu+Dz59mDSPVBEXaBuHmt2qvyi4BsYc6n6gh/mhnKJ
 pxdSBDj8A/ZJSo6YlwB6ixKA+jbhkDQFgyQNncnFZRLl1gWOCJ7OBUzb4cBwb5doZCCH
 YsC/c0++45Zm1D2KvM8+ve8H7i6ktbd9QyvMZXpwrVNfMNjfdIH1BXTq1jJyvUrINGuP
 g74w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eGss8+t6OprF5UmZdfe832aJr+yAfFeel7PXaUvFcKo=;
 b=myBy4EE5qFk9PnbfWdVEKw6Aqyu7jO6tBdwaJpSYcl1ulfIX3O2s00Kg+Z5BFK2Ug8
 5nyc1RQn8xF5aG6tK/esZV7JI7eWo6uaWbm1CFkYrwSv9jW+puSoTHUswEQIkE7hEhiL
 43jGYSuHyepmtR4LdR1vxkwMhXUQ8Hc9HyuJscxIDDdv/Ma9YyUBupYtq6wiNRg5nexS
 NxHqXOhhIZnsMzrYRpZEvQTMHlQtSorlOh0yf8aks9YRDhZNo+yUVpAQqZKFHpwTEWt7
 Qc1VZPcYgfJoGw9YviCWihdTPKLXLpGGza866JpeC+m1a1RNDIawodPYDOtTz8IeRBwU
 xlxA==
X-Gm-Message-State: AOAM530fGBaPSl3hkBTMfC4r3KEUBt8Mv5eW5dcrF1hkfzEn3bbQ4Na7
 qcg+kp9+JUDH3oaliXRyEP6Y4esfH8Hh5Q==
X-Google-Smtp-Source: ABdhPJyIeUhoYsAiV5pwMCK+Diqqef8AeIh2gqDMfPUnwkE95WoqoeFZ+v2FX1MubgBx11C/VvlKpA==
X-Received: by 2002:a17:902:9e95:b029:d2:4276:1ddc with SMTP id
 e21-20020a1709029e95b02900d242761ddcmr702834plq.81.1601058895490; 
 Fri, 25 Sep 2020 11:34:55 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.34.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:34:55 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 37/47] staging: media: zoran: disable output
Date: Fri, 25 Sep 2020 18:30:47 +0000
Message-Id: <1601058657-14042-38-git-send-email-clabbe@baylibre.com>
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

Zoran is picky about jpeg data it accepts. At least it seems to not support COM and APPn.
So until a way to filter data will be done, disable output.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c   |  2 ++
 drivers/staging/media/zoran/zoran_driver.c | 20 ++++++++++++--------
 2 files changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index fed368ba6fd1..dbdb1c4b0515 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -963,6 +963,8 @@ static int zr36057_init(struct zoran *zr)
 	*zr->video_dev = zoran_template;
 	zr->video_dev->v4l2_dev = &zr->v4l2_dev;
 	zr->video_dev->lock = &zr->lock;
+	zr->video_dev->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_CAPTURE;
+
 	strscpy(zr->video_dev->name, ZR_DEVNAME(zr), sizeof(zr->video_dev->name));
 	/*
 	 * It's not a mem2mem device, but you can both capture and output from one and the same
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index e962fc6c1f9f..43f7c0c02876 100644
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
@@ -2221,6 +2220,11 @@ static int zoran_mmap(struct file *file, struct vm_area_struct *vma)
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
@@ -2228,9 +2232,9 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
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
@@ -2244,13 +2248,13 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
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
