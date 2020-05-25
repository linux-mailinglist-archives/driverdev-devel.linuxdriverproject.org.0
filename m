Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B29FE1E0751
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:56:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C30385F8F;
	Mon, 25 May 2020 06:56:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G-Wg60sVrkO9; Mon, 25 May 2020 06:56:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E6AE285F43;
	Mon, 25 May 2020 06:56:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0F2FA1BF95D
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C46285DF7
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HFrVUS7FurA5 for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9564C85DF8
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:56:16 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53EC020870;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590389776;
 bh=i6EvBTVasNbHkaFlZ1+otV+Ecj0YhRRRd99hIO9wcQs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Kwx4KNp+1IqdWNospoN/NcI/YJcHwiYRux8Hr79ii/UTfQPFJAELAa0CImZ3oyOT6
 L1dm8EkAN3EzLQYnT80Lt7MwdP+FhDpvTitIfTGBCgCax1xbWLG52tPWt9k35yqE2J
 cR3Hw/qlksf9B7mzwIWxP97mlqmJ59l0NGv8njHc=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jd71y-001d6n-1R; Mon, 25 May 2020 08:56:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 03/11] media: atomisp: avoid a copy of v4l2_mbus_framefmt at
 stack
Date: Mon, 25 May 2020 08:56:02 +0200
Message-Id: <b6121bbac4487fbfc7e7c5a5ede0de8a0e5b49ac.1590389536.git.mchehab+huawei@kernel.org>
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

There's no reason to copy isp_sink_fmt, as the driver
uses it for read-only purposes.

Linux stack is a precious resource. Let's avoid wasting it.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 1e22cb70ac1b..f5fa9fe46659 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -5608,7 +5608,7 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 	unsigned int dvs_env_w = 0, dvs_env_h = 0;
 	unsigned int padding_w = pad_w, padding_h = pad_h;
 	bool res_overflow = false, crop_needs_override = false;
-	struct v4l2_mbus_framefmt isp_sink_fmt;
+	struct v4l2_mbus_framefmt *isp_sink_fmt;
 	struct v4l2_mbus_framefmt isp_source_fmt = {0};
 	struct v4l2_rect isp_sink_crop;
 	u16 source_pad = atomisp_subdev_source_pad(vdev);
@@ -5789,7 +5789,7 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 				ATOMISP_SUBDEV_PAD_SINK)->code =
 				    snr_format_bridge->mbus_code;
 
-	isp_sink_fmt = *atomisp_subdev_get_ffmt(&asd->subdev, NULL,
+	isp_sink_fmt = atomisp_subdev_get_ffmt(&asd->subdev, NULL,
 						V4L2_SUBDEV_FORMAT_ACTIVE,
 						ATOMISP_SUBDEV_PAD_SINK);
 
@@ -5847,9 +5847,9 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 	 * capture pipe and usually has lower resolution than capture pipe.
 	 */
 	if (!asd->continuous_mode->val ||
-	    isp_sink_fmt.width < (f->fmt.pix.width + padding_w + dvs_env_w) ||
-	    isp_sink_fmt.height < (f->fmt.pix.height + padding_h +
-				   dvs_env_h)) {
+	    isp_sink_fmt->width < (f->fmt.pix.width + padding_w + dvs_env_w) ||
+	    isp_sink_fmt->height < (f->fmt.pix.height + padding_h +
+				    dvs_env_h)) {
 		/*
 		 * For jpeg or custom raw format the sensor will return constant
 		 * width and height. Because we already had quried try_mbus_fmt,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
