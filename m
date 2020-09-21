Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D5D27355A
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 23:56:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 007F88592F;
	Mon, 21 Sep 2020 21:56:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fa0j4Mh7Ytqr; Mon, 21 Sep 2020 21:56:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D53E858BF;
	Mon, 21 Sep 2020 21:56:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69FC31BF336
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:56:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 664F785888
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 21:56:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8e0CTZMfd1yn for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 21:56:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 94BCE85886
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 21:56:28 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id l9so1053479wme.3
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 14:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=jWDoQRsOrsy1ykH1KPmy1+vKMaQziG+C5VVRexrwgCo=;
 b=sGK1TOheGHfrAsQ3ERBM3fntXI8KjxRS1dFamE/qx9Cf2nMJnjTDTEOutmjZHzCVx8
 aiSrx+nR739BMnCTbNoJxqC8GgyGvHt4KZkEkzq+f8QojUUtfU0H2H7UXwEanK7tR/M/
 +q7Xxy1H5j9evBS7jrajpIhV1iYX6t7pCjFGArV0a81le7LqZjIaddv2Ixj1NcWOHUc0
 ozQg2fJYw+fPsD/N53cP6t4Bbgptks+dlyZjmMy2L+t0rdgU+uAJZYL8ec/JVqDylfUE
 NFEIPU66DpA5fwvdB2vgyvAZF3FWyKJKLIZ25p+fqWWQbwi9G1OPat1SK137ybYwvGWG
 hBig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jWDoQRsOrsy1ykH1KPmy1+vKMaQziG+C5VVRexrwgCo=;
 b=In6A73Vpw0UIxBnDM1YGgIQivSoD+Ltw7RAsdCV3pDoXAbBq6lFNAYf2H+cCIr5uol
 hHimnPBSY9xD/6n475Mj6YZEhHc9E8WCc3fFoLeDTV3oE1oWD8+wr7urX1WQe0xuwL5i
 UtIT4AcG4lPTgxiBqiZFXU4YDFrv6IT5tOtt2fDlZODTC+j7b+Ys4xN1GUNKgmz6rORv
 FaYCut3ac1zgS/kZDZ73bcMJKl3g9kQ5e0gi1C8kihOLRtoGERciDYf9ho/TPDRICJDQ
 C6q012DMhzxWq6r53lIpLW4WEggU205GvLTsaTRANuYrl1wFhscxMJ3SFigoVh9ygsr6
 UxDA==
X-Gm-Message-State: AOAM532TwjkwXOECy8Q1T43sktgL0sGjWGtIeZVPxUXlnIkIVKyRh5E3
 YF6q8PqnuP8GD58/fuIbJPY=
X-Google-Smtp-Source: ABdhPJxcwQlOBHjwWBu+fwCPOpLzt1KKBak4JbdBtQskwnLJci0jZFHKRyBIFeWRYF40GmkYeyqiWQ==
X-Received: by 2002:a1c:bcd6:: with SMTP id m205mr1337357wmf.68.1600725387086; 
 Mon, 21 Sep 2020 14:56:27 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id t124sm1282200wmg.31.2020.09.21.14.56.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Sep 2020 14:56:26 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alex Dewar <alex.dewar90@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Alan Cox <alan@linux.intel.com>, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH RESEND 5/5] staging: media: atomisp: Fix bool-related style
 issues
Date: Mon, 21 Sep 2020 22:53:59 +0100
Message-Id: <20200921215359.45003-6-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200921215359.45003-1-alex.dewar90@gmail.com>
References: <20200921215359.45003-1-alex.dewar90@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Address the following issues:
 * unnecessary comparison to true/false
 * use of 0/1 instead of bool values
 * unnecessary conversion to bool

These were fixed using the following Coccinelle scripts:
 * scripts/coccinelle/misc/bool{init,conv,return}.cocci

Build-tested with allmodconfig.

Signed-off-by: Alex Dewar <alex.dewar90@gmail.com>
---
 .../staging/media/atomisp/pci/atomisp_cmd.c   |  5 ++---
 drivers/staging/media/atomisp/pci/sh_css.c    | 20 +++++++++----------
 .../media/atomisp/pci/sh_css_firmware.c       |  2 +-
 3 files changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 9f25f13c3255..592ea990d4ca 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -654,8 +654,7 @@ bool atomisp_buffers_queued(struct atomisp_sub_device *asd)
 	return asd->video_out_capture.buffers_in_css ||
 	       asd->video_out_vf.buffers_in_css ||
 	       asd->video_out_preview.buffers_in_css ||
-	       asd->video_out_video_capture.buffers_in_css ?
-	       true : false;
+	       asd->video_out_video_capture.buffers_in_css;
 }
 
 /* ISP2401 */
@@ -6549,7 +6548,7 @@ int atomisp_enable_dz_capt_pipe(struct atomisp_sub_device *asd,
 	if (!enable)
 		return -EINVAL;
 
-	value = *enable > 0 ? true : false;
+	value = *enable > 0;
 
 	atomisp_en_dz_capt_pipe(asd, value);
 
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index 3e9366b20af0..c50b5fba7b86 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -3681,7 +3681,7 @@ static int create_host_video_pipeline(struct ia_css_pipe *pipe)
 		struct ia_css_frame *tmp_out_frame = NULL;
 
 		for (i = 0; i < num_yuv_scaler; i++) {
-			if (is_output_stage[i] == true) {
+			if (is_output_stage[i]) {
 				tmp_out_frame = out_frame;
 			} else {
 				tmp_out_frame = NULL;
@@ -4421,7 +4421,7 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 			case IA_CSS_BUFFER_TYPE_INPUT_FRAME:
 			case IA_CSS_BUFFER_TYPE_OUTPUT_FRAME:
 			case IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME:
-				if ((pipe) && (pipe->stop_requested == true)) {
+				if (pipe && pipe->stop_requested) {
 #if !defined(ISP2401)
 					/* free mipi frames only for old input system
 					 * for 2401 it is done in ia_css_stream_destroy call
@@ -4782,7 +4782,7 @@ sh_css_pipe_start(struct ia_css_stream *stream) {
 
 	pipe_id = pipe->mode;
 
-	if (stream->started == true)
+	if (stream->started)
 	{
 		IA_CSS_WARNING("Cannot start stream that is already started");
 		IA_CSS_LEAVE_ERR(err);
@@ -5919,7 +5919,7 @@ static bool need_capture_pp(
 
 	if (IS_ISP2401) {
 		/* ldc and capture_pp are not supported in the same pipeline */
-		if (need_capt_ldc(pipe) == true)
+		if (need_capt_ldc(pipe))
 			return false;
 	}
 
@@ -6135,8 +6135,8 @@ static int load_primary_binaries(
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
-		need_pp = 0;
-		need_ldc = 0;
+		need_pp = false;
+		need_ldc = false;
 	}
 
 	/* we build up the pipeline starting at the end */
@@ -9496,10 +9496,10 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 					IA_CSS_PIPE_MODE_VIDEO, false);
 		acc_pipe = find_pipe(pipes, num_pipes,
 					IA_CSS_PIPE_MODE_ACC, false);
-		if (acc_pipe && num_pipes == 2 && curr_stream->cont_capt == true)
+		if (acc_pipe && num_pipes == 2 && curr_stream->cont_capt)
 			curr_stream->cont_capt =
 			    false; /* preview + QoS case will not need cont_capt switch */
-		if (curr_stream->cont_capt == true) {
+		if (curr_stream->cont_capt) {
 			capture_pipe = find_pipe(pipes, num_pipes,
 						    IA_CSS_PIPE_MODE_CAPTURE, false);
 			if (!capture_pipe) {
@@ -9521,7 +9521,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 			preview_pipe->pipe_settings.preview.copy_pipe = copy_pipe;
 			copy_pipe->stream = curr_stream;
 		}
-		if (preview_pipe && (curr_stream->cont_capt == true)) {
+		if (preview_pipe && curr_stream->cont_capt) {
 			preview_pipe->pipe_settings.preview.capture_pipe = capture_pipe;
 		}
 		if (video_pipe && !video_pipe->pipe_settings.video.copy_pipe) {
@@ -9532,7 +9532,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 			video_pipe->pipe_settings.video.copy_pipe = copy_pipe;
 			copy_pipe->stream = curr_stream;
 		}
-		if (video_pipe && (curr_stream->cont_capt == true)) {
+		if (video_pipe && curr_stream->cont_capt) {
 			video_pipe->pipe_settings.video.capture_pipe = capture_pipe;
 		}
 		if (preview_pipe && acc_pipe) {
diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index 244c7c7780a3..db25e39bea88 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -207,7 +207,7 @@ sh_css_check_firmware_version(struct device *dev, const char *fw_data)
 	}
 
 	/* For now, let's just accept a wrong version, even if wrong */
-	return 0;
+	return false;
 }
 
 static const char * const fw_type_name[] = {
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
