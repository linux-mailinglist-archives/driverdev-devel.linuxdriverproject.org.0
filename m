Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1BC229773
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 13:31:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id ED09688118;
	Wed, 22 Jul 2020 11:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZD0bCEtgpjZv; Wed, 22 Jul 2020 11:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60978880F8;
	Wed, 22 Jul 2020 11:30:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6A621BF38E
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 11:30:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB34D2046A
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 11:30:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f7-4MmzMod2Q for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 11:30:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id DB0C120461
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 11:30:56 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id k71so1239165pje.0
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 04:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=REutpgTEY8zqFjKsJaL/pIrbvSAniP7JYrpnR8Uq2Hg=;
 b=kPwE57tThRH2Xl2UQew/QQhJ0HEFx8Jfswz2xfdVqwfJEnOAVAQt/gxOFQAaucsGkP
 iwTxQyDTZN9pqWHyQWba20tdpkLJC2eECm1uryNRmShampx1pE6Vqnabd5MtVoMw6sjt
 R+ycwIZOfR1O7qUEEU+VW5xTpGSYvO1YVON5j49sDyzYwH17KCT6JRCUGuZvoh9PiFfA
 DRZE8xEzFRyPWozCxhyMyoRKlnMCyCM8Y5O4ruvALKA/qPYA4j14X5sJUIKVOhfQHLge
 BVw42vbho9lHN+PHthr4gTN2OkWYS5xn1ArFGBP5FXQOm6N1+ddhU1wxKIa+NP6Zwsiq
 +xXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=REutpgTEY8zqFjKsJaL/pIrbvSAniP7JYrpnR8Uq2Hg=;
 b=nH64g4KvxMoEEttFtQXro70aXqhHmWjNCEvZyhhkARiMBEZUTsjesfvcy/dclNTKKk
 G73d7AmKX/MztvAVIn05jZI9PkRNXdOqSDFm4MH1u5q1CbP/l4RXW7TB/wuVN+I7QmoO
 dSECOAd3pnlpMxygwAn9cStB+8EskPNAogkPGTB5JLwtjScQwVr4SfFH5DYOgHL3rFNu
 mkAk14tECbX5uuvWSt7tVYZFOCBvIL2rUzwQkgOnTWF1F06q77dUcp+4W/iWJYbCgeoY
 rCatPBURm7aup7kbPA3jnkGfxPACUlo2++O90ifQoJ9nVs19UDF2MsV65loC5olLNSbD
 P8bA==
X-Gm-Message-State: AOAM530D1X+Xj0ymRdEd6HDtBzMXz4Yphz8yvERTGiMtjDUzJAaf0Xry
 bW1M+VyH41gbhCBxDseflZE=
X-Google-Smtp-Source: ABdhPJyeGR7pcKdtW0vy20t9YcWddsffnZ+VrlDb2rR78ZIMmGBE0qd26bogPd3aN3sGzeQ3acYUJQ==
X-Received: by 2002:a17:902:10e:: with SMTP id
 14mr24718428plb.297.1595417456363; 
 Wed, 22 Jul 2020 04:30:56 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([122.175.73.180])
 by smtp.gmail.com with ESMTPSA id gv16sm6507715pjb.5.2020.07.22.04.30.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 04:30:55 -0700 (PDT)
Date: Wed, 22 Jul 2020 17:00:52 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH v2 2/2] media: atomisp: Fix coding style issue - correct
 multiline comments
Message-ID: <c73ee9bced34777cea5b1a3a97f57c723b0a97b1.1595416585.git.rahul.blr97@gmail.com>
References: <cover.1595416585.git.rahul.blr97@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1595416585.git.rahul.blr97@gmail.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This fixes some coding style issues of multiline comments to
correct a few checkpatch.pl warnings.

Signed-off-by: Rahul Gottipati <rahul.blr97@gmail.com>
---
Changes in v2:
	Distributed changes across 2 patches instead of the previous 1.
 drivers/staging/media/atomisp/pci/atomisp_ioctl.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 9cdcbe774229..5bf3a86f98f8 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -1281,7 +1281,8 @@ static int atomisp_qbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
 	 * But the capture number cannot be determined by HAL.
 	 * So HAL only sets the capture number to be 1 and queue multiple
 	 * buffers. Atomisp driver needs to check this case and re-trigger
-	 * CSS to do capture when new buffer is queued. */
+	 * CSS to do capture when new buffer is queued.
+	 */
 	if (asd->continuous_mode->val &&
 	    atomisp_subdev_source_pad(vdev)
 	    == ATOMISP_SUBDEV_PAD_SOURCE_CAPTURE &&
@@ -1806,7 +1807,7 @@ static int atomisp_streamon(struct file *file, void *fh,
 		/*
 		 * set freq to max when streaming count > 1 which indicate
 		 * dual camera would run
-		*/
+		 */
 		if (atomisp_streaming_count(isp) > 1) {
 			if (atomisp_freq_scaling(isp,
 						 ATOMISP_DFS_MODE_MAX, false) < 0)
@@ -2438,7 +2439,8 @@ static int atomisp_g_ext_ctrls(struct file *file, void *fh,
 	int i, ret = 0;
 
 	/* input_lock is not need for the Camera related IOCTLs
-	 * The input_lock downgrade the FPS of 3A*/
+	 * The input_lock downgrade the FPS of 3A
+	 */
 	ret = atomisp_camera_g_ext_ctrls(file, fh, c);
 	if (ret != -EINVAL)
 		return ret;
@@ -2521,7 +2523,8 @@ static int atomisp_camera_s_ext_ctrls(struct file *file, void *fh,
 				    v4l2_s_ctrl(NULL, isp->flash->ctrl_handler,
 						&ctrl);
 				/* When flash mode is changed we need to reset
-				 * flash state */
+				 * flash state
+				 */
 				if (ctrl.id == V4L2_CID_FLASH_MODE) {
 					asd->params.flash_state =
 					    ATOMISP_FLASH_IDLE;
@@ -2560,7 +2563,8 @@ static int atomisp_s_ext_ctrls(struct file *file, void *fh,
 	int i, ret = 0;
 
 	/* input_lock is not need for the Camera related IOCTLs
-	 * The input_lock downgrade the FPS of 3A*/
+	 * The input_lock downgrade the FPS of 3A
+	 */
 	ret = atomisp_camera_s_ext_ctrls(file, fh, c);
 	if (ret != -EINVAL)
 		return ret;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
