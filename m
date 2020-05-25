Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA2A1E075D
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:56:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9222D22234;
	Mon, 25 May 2020 06:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cw-aUAjULCq6; Mon, 25 May 2020 06:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4F2422033D;
	Mon, 25 May 2020 06:56:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 384DE1BF21A
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 349EF8639E
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W1ynVJXVPwsp for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7E93986294
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:56:16 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33CC5206DD;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590389776;
 bh=o5QVCUErQK4RM5+i2so54gkgn9f+ipAGAb3ozoHH4a8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NEO0KPFIQ3re/0SL5APG9J5OrP+vJSJycQBbc7HYZGS4x8RV3Qtu0xl6UeISVjR0f
 pIYKL+RZMBFRY/PgHLgS27BdK1WDVbyzwE1L8ohBtPAJ7k/APbHjeoCESYDWYMAQ++
 5UzCGx0mD0A116wdOziOzs/9fRdZ5OKvUmEHOSC8=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jd71y-001d6s-2V; Mon, 25 May 2020 08:56:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 04/11] media: atomisp: improve debug messages for set format
Date: Mon, 25 May 2020 08:56:03 +0200
Message-Id: <7d4eff09e479a9d3d6ab7b52b6dcf5451ce77b19.1590389536.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590389536.git.mchehab+huawei@kernel.org>
References: <cover.1590389536.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are several error conditions that don't print anything,
making harder to identify bugs at the code there.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/media/atomisp/pci/atomisp_cmd.c   | 31 +++++++++++++------
 1 file changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index f5fa9fe46659..ddf6915276c0 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -5615,11 +5615,6 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 	struct v4l2_subdev_fh fh;
 	int ret;
 
-	dev_dbg(isp->dev,
-		"setting resolution %ux%u on pad %u for asd%d, bytesperline %u\n",
-		f->fmt.pix.width, f->fmt.pix.height, source_pad,
-		asd->index, f->fmt.pix.bytesperline);
-
 	if (source_pad >= ATOMISP_SUBDEV_PADS_NUM)
 		return -EINVAL;
 
@@ -5628,6 +5623,11 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 		return -EBUSY;
 	}
 
+	dev_dbg(isp->dev,
+		"setting resolution %ux%u on pad %u for asd%d, bytesperline %u\n",
+		f->fmt.pix.width, f->fmt.pix.height, source_pad,
+		asd->index, f->fmt.pix.bytesperline);
+
 	v4l2_fh_init(&fh.vfh, vdev);
 
 	format_bridge = atomisp_get_format_bridge(f->fmt.pix.pixelformat);
@@ -5774,15 +5774,19 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 
 	/* get sensor resolution and format */
 	ret = atomisp_try_fmt(vdev, &snr_fmt, &res_overflow);
-	if (ret)
+	if (ret) {
+		dev_warn(isp->dev, "Try format failed with error %d\n", ret);
 		return ret;
+	}
 	f->fmt.pix.width = snr_fmt.fmt.pix.width;
 	f->fmt.pix.height = snr_fmt.fmt.pix.height;
 
 	snr_format_bridge =
 	    atomisp_get_format_bridge(snr_fmt.fmt.pix.pixelformat);
-	if (!snr_format_bridge)
+	if (!snr_format_bridge) {
+		dev_warn(isp->dev, "Can't find bridge format\n");
 		return -EINVAL;
+	}
 
 	atomisp_subdev_get_ffmt(&asd->subdev, NULL,
 				V4L2_SUBDEV_FORMAT_ACTIVE,
@@ -5868,8 +5872,11 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 		ret = atomisp_set_fmt_to_snr(vdev, &s_fmt,
 					     f->fmt.pix.pixelformat, padding_w,
 					     padding_h, dvs_env_w, dvs_env_h);
-		if (ret)
+		if (ret) {
+			dev_warn(isp->dev,
+				 "Set format to sensor failed with %d\n", ret);
 			return -EINVAL;
+		}
 
 		atomisp_csi_lane_config(isp);
 		crop_needs_override = true;
@@ -5986,8 +5993,10 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 set_fmt_to_isp:
 	ret = atomisp_set_fmt_to_isp(vdev, &output_info, &raw_output_info,
 				     &f->fmt.pix, source_pad);
-	if (ret)
+	if (ret) {
+		dev_warn(isp->dev, "Can't set format on ISP. Error %d\n", ret);
 		return -EINVAL;
+	}
 done:
 	pipe->pix.width = f->fmt.pix.width;
 	pipe->pix.height = f->fmt.pix.height;
@@ -6003,7 +6012,11 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 				 output_info.padded_width, 8);
 		pipe->pix.sizeimage =
 		    PAGE_ALIGN(f->fmt.pix.height * pipe->pix.bytesperline);
+
 	}
+	dev_dbg(isp->dev, "%s: image size: %d, %d bytes per line\n",
+		__func__, pipe->pix.sizeimage,pipe-> pix.bytesperline);
+
 	if (f->fmt.pix.field == V4L2_FIELD_ANY)
 		f->fmt.pix.field = V4L2_FIELD_NONE;
 	pipe->pix.field = f->fmt.pix.field;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
