Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F81F229AD3
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 16:58:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5DA998869A;
	Wed, 22 Jul 2020 14:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LbCfO0Ag-f9U; Wed, 22 Jul 2020 14:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E6BD188585;
	Wed, 22 Jul 2020 14:58:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7BA2C1BF36E
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:58:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 772B8204DC
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 14:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EufxpLtJYKzF for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 14:58:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 7B911204D0
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 14:58:24 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id a14so1428724pfi.2
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 07:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=rgu9zeGviejGy94qeYWhRJ1bbRjnbZasOXc4G8oQ1bI=;
 b=tyQPpi/zMyDRImS8JXG4zlQJED6yn6PwaRxs8995TCC6A+iil5qrCnXX4Fj+t3+yD9
 tVSXtpTQWkDz2Zs6efB0LcsXvVty8E+TsZIfHIRqMs2tzGiWYNYyIc07GYRqlpZouc/a
 +ZtxF4VaWQ8anTj2KdsKEB6IPj+GiOo6GDCoVEWCSCZIKNoZw0h9X+f4zL6QoqH4dXuS
 B44wX/XCODUThAUuAaYBLADtPsPLpdVxrLJQcZfwIi8GbK6acU/3gj58sCJgTcWhQG7X
 IxXbM5BjZ3iMHTZS6++VWR+9XPIEIWhXz2ooyarBX3xzF8qJG4tERlHYZ0tkt+N1DOhm
 q5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rgu9zeGviejGy94qeYWhRJ1bbRjnbZasOXc4G8oQ1bI=;
 b=SPXmWqxLSWRe1vdZA5ul6nEMy9cn4prTpqqP+e7wNKSVNGSY7/o05fgj27lEroqXux
 o2LV7PJs9zB5m26dya5xqD8168675VCEi18UeXYrHP7VJEShn0R+fu3J1xTxgWchXTKL
 c+Yu3h2TExqGQAwzPGsvf7l7AN38L6RtnGVL8JrZghQzOLirLU2OwMV5t6kON4Ux+k+6
 Km/HrMcdbmV2ExL0T2gVZnGFU6bsyZuz/Sgl/lXaOCxtV/LTuEG7EZBvDSm7DDNq5c/T
 xFrleNphi2R9cwvWElP/MrzB8JwxUD528ljD7SS+aWlgB3b2cvQl6lQf9ijB31WK29dP
 t8xA==
X-Gm-Message-State: AOAM530NfsNfuMTAs3os0Skb9eSeKtgktj9/pdL7gpaFIc27hMZtcEHY
 YgmYR7AS2sj86YFK3u9Lqdo=
X-Google-Smtp-Source: ABdhPJzjePhzyy8eV1LUj5gRxYGGMT6XU0BUo1Div4o1tRdGISWYu2QSSURGA9LTku1A89w5S74AFQ==
X-Received: by 2002:a63:be4e:: with SMTP id g14mr215565pgo.193.1595429903995; 
 Wed, 22 Jul 2020 07:58:23 -0700 (PDT)
Received: from rahulg-ThinkPad-T450 ([122.175.125.202])
 by smtp.gmail.com with ESMTPSA id j5sm216214pgi.42.2020.07.22.07.58.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jul 2020 07:58:23 -0700 (PDT)
Date: Wed, 22 Jul 2020 20:28:19 +0530
From: Rahul Gottipati <rahul.blr97@gmail.com>
To: mchehab@kernel.org
Subject: [PATCH v3 2/2] media: atomisp: Fix coding style issue - correct
 multiline comments
Message-ID: <f7973bfc099576423553660313cb5a3f7f28529f.1595429109.git.rahul.blr97@gmail.com>
References: <cover.1595429109.git.rahul.blr97@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1595429109.git.rahul.blr97@gmail.com>
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

Changes in v3:
	Made changes to keep first line blank in multiline comments.
Changes in v2:
	Distributed changes across 2 patches instead of the previous 1.

 .../staging/media/atomisp/pci/atomisp_ioctl.c | 26 ++++++++++++-------
 1 file changed, 17 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 4fc4bdd85ce0..3d609753e0af 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -1275,13 +1275,15 @@ static int atomisp_qbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
 		}
 	}
 
-	/* Workaround: Due to the design of HALv3,
+	/*
+	 * Workaround: Due to the design of HALv3,
 	 * sometimes in ZSL or SDV mode HAL needs to
 	 * capture multiple images within one streaming cycle.
 	 * But the capture number cannot be determined by HAL.
 	 * So HAL only sets the capture number to be 1 and queue multiple
 	 * buffers. Atomisp driver needs to check this case and re-trigger
-	 * CSS to do capture when new buffer is queued. */
+	 * CSS to do capture when new buffer is queued.
+	 */
 	if (asd->continuous_mode->val &&
 	    atomisp_subdev_source_pad(vdev)
 	    == ATOMISP_SUBDEV_PAD_SOURCE_CAPTURE &&
@@ -1806,7 +1808,7 @@ static int atomisp_streamon(struct file *file, void *fh,
 		/*
 		 * set freq to max when streaming count > 1 which indicate
 		 * dual camera would run
-		*/
+		 */
 		if (atomisp_streaming_count(isp) > 1) {
 			if (atomisp_freq_scaling(isp,
 						 ATOMISP_DFS_MODE_MAX, false) < 0)
@@ -2437,8 +2439,10 @@ static int atomisp_g_ext_ctrls(struct file *file, void *fh,
 	struct v4l2_control ctrl;
 	int i, ret = 0;
 
-	/* input_lock is not need for the Camera related IOCTLs
-	 * The input_lock downgrade the FPS of 3A*/
+	/*
+	 * input_lock is not need for the Camera related IOCTLs
+	 * The input_lock downgrade the FPS of 3A
+	 */
 	ret = atomisp_camera_g_ext_ctrls(file, fh, c);
 	if (ret != -EINVAL)
 		return ret;
@@ -2520,8 +2524,10 @@ static int atomisp_camera_s_ext_ctrls(struct file *file, void *fh,
 				ret =
 				    v4l2_s_ctrl(NULL, isp->flash->ctrl_handler,
 						&ctrl);
-				/* When flash mode is changed we need to reset
-				 * flash state */
+				/*
+				 * When flash mode is changed we need to reset
+				 * flash state
+				 */
 				if (ctrl.id == V4L2_CID_FLASH_MODE) {
 					asd->params.flash_state =
 					    ATOMISP_FLASH_IDLE;
@@ -2559,8 +2565,10 @@ static int atomisp_s_ext_ctrls(struct file *file, void *fh,
 	struct v4l2_control ctrl;
 	int i, ret = 0;
 
-	/* input_lock is not need for the Camera related IOCTLs
-	 * The input_lock downgrade the FPS of 3A*/
+	/*
+	 * input_lock is not need for the Camera related IOCTLs
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
