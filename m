Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAD52790FC
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 20:43:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED61786D77;
	Fri, 25 Sep 2020 18:42:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8DmZ5tLh55Kh; Fri, 25 Sep 2020 18:42:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93A9486237;
	Fri, 25 Sep 2020 18:42:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A86541BF9B9
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:42:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96FB92E17A
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 18:42:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Up+xWjcjLpvz for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 18:42:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id C50AE2E176
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 18:42:49 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id x16so2540570pgj.3
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Nrs0liKFPLw0lqeJ+aeXPOZD9rbK+FOf/tQK8Eu/mWA=;
 b=LBVmRY7dVBUx8I/55/4YTbnkCvPQRN+glxQAAZUyF2NLhjNJKeMZrAVZ67WaVf8+Hy
 RS0Ba4aysh6lGef9T5Usr6Wcj7Scq9FFdM9HtFVSJ4KY3FgGChhAcI8MNCskMDBSTSUF
 g5l5WbFMWACfHO6WLVUZd/E5M7kfpjvSJG834WMzSLqRcXQs1Qo2Xpvn7Eg5cgfqBDoT
 lC1siSlFssmBxT0zw4NlelXkIWOXlN+tTOuZD7bl/2eGqUrfMyN9GZ6LQZ15CenHUyUV
 pa6+2IZ1nUEjya+tGxAbeuBgGQXr8qe3rrqu4DpOeFZaMDO2DSCDrFgDwp1hV7tUnIQE
 GNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Nrs0liKFPLw0lqeJ+aeXPOZD9rbK+FOf/tQK8Eu/mWA=;
 b=kYeBIgB+led47ah8pSN8+uH7/VHfmR2OPuqIyFf6OxrakTYveh/SvdGJl68hgcWUFr
 hbyOw8OP/APSvGUn7dxcTc1wKoa0fRoXJuuAuK699lnpcR+7XOghXCO9Uh8i8c2n0/6E
 iNHjh3otWs5ilB69azvcTvUrTL/TBD+/c/qX83fDksJPIu0oMtrSSZacn3yAGdOXvjkz
 AhFcNjweO+kVzRzvT9gtkYjOvD5hgGuRoMQJzThNTlQUA/Vqgttjtp6HrPxupI3xeeHR
 VRtZyCQ6x5Eo/0r/6IuqRcXxKE1ngf+AoZR4oedP2EWZdB4VpLpq5G72+7BIohIVmstj
 /1dg==
X-Gm-Message-State: AOAM532ZV3ogJJwZIVOUYQiErAR8S1eVSvq9yL8+KNpPUaHXQB2Zuhjg
 LaQiWqQAsmFHcwQEDclh3sk41ArAuLmT4Q==
X-Google-Smtp-Source: ABdhPJzXKDznCFSzQ3ygmDq9Wj32Gbep4J6seWnV/lUahadd8vEhgrQLDVHygSgfvDxQs5Rg+ZyJLA==
X-Received: by 2002:a17:902:c14a:b029:d2:4345:72e with SMTP id
 10-20020a170902c14ab02900d24345072emr703743plj.75.1601058942804; 
 Fri, 25 Sep 2020 11:35:42 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id r16sm2554546pjo.19.2020.09.25.11.35.37
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Sep 2020 11:35:42 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: gregkh@linuxfoundation.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH RFT/RFC v2 45/47] staging: media: zoran: remove deprecated
 .vidioc_g_jpegcomp
Date: Fri, 25 Sep 2020 18:30:55 +0000
Message-Id: <1601058657-14042-46-git-send-email-clabbe@baylibre.com>
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

This patchs removed the deprecated .vidioc_g_jpegcomp and replace it
with corresponding v4l2_ctrl_ops code.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/staging/media/zoran/zoran_card.c   | 22 ++++++++++
 drivers/staging/media/zoran/zoran_driver.c | 49 ----------------------
 2 files changed, 22 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_card.c b/drivers/staging/media/zoran/zoran_card.c
index d7b3efa9e39f..fe52be4292fe 100644
--- a/drivers/staging/media/zoran/zoran_card.c
+++ b/drivers/staging/media/zoran/zoran_card.c
@@ -1066,6 +1066,25 @@ static void zoran_subdev_notify(struct v4l2_subdev *sd, unsigned int cmd, void *
 		GPIO(zr, 7, 1);
 }
 
+static int zoran_video_set_ctrl(struct v4l2_ctrl *ctrl)
+{
+	struct zoran *zr = container_of(ctrl->handler, struct zoran, hdl);
+
+	switch (ctrl->id) {
+	case V4L2_CID_JPEG_COMPRESSION_QUALITY:
+		zr->jpg_settings.jpg_comp.quality = ctrl->val;
+		return zoran_check_jpg_settings(zr, &zr->jpg_settings, 0);
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static const struct v4l2_ctrl_ops zoran_video_ctrl_ops = {
+	.s_ctrl = zoran_video_set_ctrl,
+};
+
 /*
  *   Scan for a Buz card (actually for the PCI controller ZR36057),
  *   request the irq and map the io memory
@@ -1106,6 +1125,9 @@ static int zoran_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	if (v4l2_ctrl_handler_init(&zr->hdl, 10))
 		goto zr_unreg;
 	zr->v4l2_dev.ctrl_handler = &zr->hdl;
+	v4l2_ctrl_new_std(&zr->hdl, &zoran_video_ctrl_ops,
+			  V4L2_CID_JPEG_COMPRESSION_QUALITY, 0,
+			  100, 1, 50);
 	spin_lock_init(&zr->spinlock);
 	mutex_init(&zr->lock);
 	if (pci_enable_device(pdev))
diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index ab9eec50abad..a6fb41d03186 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -1849,53 +1849,6 @@ static int zoran_s_selection(struct file *file, void *__fh, struct v4l2_selectio
 	return res;
 }
 
-static int zoran_g_jpegcomp(struct file *file, void *__fh,
-			    struct v4l2_jpegcompression *params)
-{
-	struct zoran *zr = video_drvdata(file);
-
-	memset(params, 0, sizeof(*params));
-
-	params->quality = zr->jpg_settings.jpg_comp.quality;
-	params->APPn = zr->jpg_settings.jpg_comp.APPn;
-	memcpy(params->APP_data, zr->jpg_settings.jpg_comp.APP_data,
-	       zr->jpg_settings.jpg_comp.APP_len);
-	params->APP_len = zr->jpg_settings.jpg_comp.APP_len;
-	memcpy(params->COM_data, zr->jpg_settings.jpg_comp.COM_data,
-	       zr->jpg_settings.jpg_comp.COM_len);
-	params->COM_len = zr->jpg_settings.jpg_comp.COM_len;
-	params->jpeg_markers = zr->jpg_settings.jpg_comp.jpeg_markers;
-
-	return 0;
-}
-
-static int zoran_s_jpegcomp(struct file *file, void *__fh,
-			    const struct v4l2_jpegcompression *params)
-{
-	struct zoran_fh *fh = __fh;
-	struct zoran *zr = fh->zr;
-	int res = 0;
-	struct zoran_jpg_settings settings;
-
-	settings = zr->jpg_settings;
-
-	settings.jpg_comp = *params;
-
-	if (fh->buffers.active != ZORAN_FREE) {
-		pci_warn(zr->pci_dev, "VIDIOC_S_JPEGCOMP called while in playback/capture mode\n");
-		res = -EBUSY;
-		return res;
-	}
-
-	res = zoran_check_jpg_settings(zr, &settings, 0);
-	if (res)
-		return res;
-	if (!fh->buffers.allocated)
-		zr->buffer_size = zoran_v4l2_calc_bufsize(&zr->jpg_settings);
-	zr->jpg_settings.jpg_comp = settings.jpg_comp;
-	return res;
-}
-
 static __poll_t zoran_poll(struct file *file, poll_table  *wait)
 {
 	struct zoran_fh *fh = file->private_data;
@@ -2176,8 +2129,6 @@ static const struct v4l2_ioctl_ops zoran_ioctl_ops = {
 	.vidioc_s_output		    = zoran_s_output,*/
 	.vidioc_g_std			    = zoran_g_std,
 	.vidioc_s_std			    = zoran_s_std,
-	.vidioc_g_jpegcomp		    = zoran_g_jpegcomp,
-	.vidioc_s_jpegcomp		    = zoran_s_jpegcomp,
 	.vidioc_reqbufs			    = zoran_reqbufs,
 	.vidioc_querybuf		    = zoran_querybuf,
 	.vidioc_qbuf			    = zoran_qbuf,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
