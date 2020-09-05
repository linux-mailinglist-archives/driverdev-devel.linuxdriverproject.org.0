Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 233AF25E79E
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Sep 2020 14:53:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 37FB8207A4;
	Sat,  5 Sep 2020 12:52:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zws5Ah8cHUSr; Sat,  5 Sep 2020 12:52:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 59DF220789;
	Sat,  5 Sep 2020 12:52:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C58881BF869
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 12:52:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B8DB820527
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 12:52:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ebkYNisTQnj for <devel@linuxdriverproject.org>;
 Sat,  5 Sep 2020 12:52:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 9954B20511
 for <devel@driverdev.osuosl.org>; Sat,  5 Sep 2020 12:52:51 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id z4so10083100wrr.4
 for <devel@driverdev.osuosl.org>; Sat, 05 Sep 2020 05:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sW7CwIz7nHoVlUus2JZ0EZjErncmwvF3/D194oFFfUw=;
 b=tUYzWzXgO6/CT6DlVw/q0RFWNpnKyX9TT/oI8FPVercR6R2ZqxsIshHLMaY7/dJHvX
 CPacy12drAWVDyEvVQHQPYsmNTqp9il8dSkJg12I+mKKWY/mKeNa7+CM4KK4R+GQ6DcN
 cFP/Za8Q1Bi45WIi6TlM3deyE52RsrmI+B/owDGB5CrXG2UJMZ0FRxAFdJ2c32hm2RV5
 pFznmptuXr8+ovdi3u/t2WB1UUK7MeZC1aLXG+uB+mSOuRwBzTLbUAID0v4lX0rXYMkG
 jGk9EGpSZqwrb7G/v7OssI+vQAKwOoWAjtzxrMEwIGbwEXRCwYTtj+sdAHYqS2s6ZXzS
 Z7nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sW7CwIz7nHoVlUus2JZ0EZjErncmwvF3/D194oFFfUw=;
 b=H9eVp1N+k4PHx72EBzm5jF9oDgBEWDPC8B1NM5ahtywoee5QYxDT5v541dKxcS+Mxl
 SicVmSoDaafdfPd8SPxe2PflE/Zb+cnEoxxLnIBN7GEKkldhAqyNTfnNfi+/427Pr5dG
 Be63qXonik97Riy3NrW8d/GuZKpA71CuMTY2JpBlr4ax1dDU5WqC+A86sEh1+UzOsZla
 3tlBiyp351TEah6DD6pgKwMH/auQGBiC0APBwChfF1aaHEDht5GUS7i6Tmav6QNRz3HY
 P8/627oETwzcrZTZg/Qjnrrs+Q/vnQQdQmIdOOjOVEPv5mZYyFtvozjTA22NFPeuXhTw
 HjUg==
X-Gm-Message-State: AOAM530w3p5zmAv6OiGrGHciwFBE+/qIBv0b8NKLc6D3cLse/aE0H0w2
 DCGEJkTz1hEZgkG6O3/mMa4=
X-Google-Smtp-Source: ABdhPJzH10pDeDkMwBg/ap9//oksqRaS8UV79Twt5Bol/lpiFmzGzvE5yrOTrs291vzoVDx9qJPotQ==
X-Received: by 2002:adf:e6c8:: with SMTP id y8mr13291759wrm.229.1599310369959; 
 Sat, 05 Sep 2020 05:52:49 -0700 (PDT)
Received: from localhost.localdomain
 (cpc83661-brig20-2-0-cust443.3-3.cable.virginm.net. [82.28.105.188])
 by smtp.gmail.com with ESMTPSA id f14sm18241035wrv.72.2020.09.05.05.52.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Sep 2020 05:52:49 -0700 (PDT)
From: Alex Dewar <alex.dewar90@gmail.com>
To: 
Subject: [PATCH] staging: media: atomisp: Fix bool-related style issues
Date: Sat,  5 Sep 2020 13:51:42 +0100
Message-Id: <20200905125152.96925-1-alex.dewar90@gmail.com>
X-Mailer: git-send-email 2.28.0
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
Cc: devel@driverdev.osuosl.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Alex Dewar <alex.dewar90@gmail.com>, linux-media@vger.kernel.org
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
index a4e4eef55f35..5c32a71ce4de 100644
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
@@ -6557,7 +6556,7 @@ int atomisp_enable_dz_capt_pipe(struct atomisp_sub_device *asd,
 	if (!enable)
 		return -EINVAL;
 
-	value = *enable > 0 ? true : false;
+	value = *enable > 0;
 
 	atomisp_en_dz_capt_pipe(asd, value);
 
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index a68cbb4995f0..6c32afe810aa 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -3733,7 +3733,7 @@ static int create_host_video_pipeline(struct ia_css_pipe *pipe)
 		struct ia_css_frame *tmp_out_frame = NULL;
 
 		for (i = 0; i < num_yuv_scaler; i++) {
-			if (is_output_stage[i] == true) {
+			if (is_output_stage[i]) {
 				tmp_out_frame = out_frame;
 			} else {
 				tmp_out_frame = NULL;
@@ -4496,7 +4496,7 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 			case IA_CSS_BUFFER_TYPE_INPUT_FRAME:
 			case IA_CSS_BUFFER_TYPE_OUTPUT_FRAME:
 			case IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME:
-				if ((pipe) && (pipe->stop_requested == true)) {
+				if (pipe && pipe->stop_requested) {
 #if defined(USE_INPUT_SYSTEM_VERSION_2)
 					/* free mipi frames only for old input system
 					 * for 2401 it is done in ia_css_stream_destroy call
@@ -4857,7 +4857,7 @@ sh_css_pipe_start(struct ia_css_stream *stream) {
 
 	pipe_id = pipe->mode;
 
-	if (stream->started == true)
+	if (stream->started)
 	{
 		IA_CSS_WARNING("Cannot start stream that is already started");
 		IA_CSS_LEAVE_ERR(err);
@@ -6010,7 +6010,7 @@ static bool need_capture_pp(
 
 	if (IS_ISP2401) {
 		/* ldc and capture_pp are not supported in the same pipeline */
-		if (need_capt_ldc(pipe) == true)
+		if (need_capt_ldc(pipe))
 			return false;
 	}
 
@@ -6230,8 +6230,8 @@ static int load_primary_binaries(
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
-		need_pp = 0;
-		need_ldc = 0;
+		need_pp = false;
+		need_ldc = false;
 	}
 
 	/* we build up the pipeline starting at the end */
@@ -9625,10 +9625,10 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
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
@@ -9650,7 +9650,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 			preview_pipe->pipe_settings.preview.copy_pipe = copy_pipe;
 			copy_pipe->stream = curr_stream;
 		}
-		if (preview_pipe && (curr_stream->cont_capt == true)) {
+		if (preview_pipe && curr_stream->cont_capt) {
 			preview_pipe->pipe_settings.preview.capture_pipe = capture_pipe;
 		}
 		if (video_pipe && !video_pipe->pipe_settings.video.copy_pipe) {
@@ -9661,7 +9661,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 			video_pipe->pipe_settings.video.copy_pipe = copy_pipe;
 			copy_pipe->stream = curr_stream;
 		}
-		if (video_pipe && (curr_stream->cont_capt == true)) {
+		if (video_pipe && curr_stream->cont_capt) {
 			video_pipe->pipe_settings.video.capture_pipe = capture_pipe;
 		}
 		if (preview_pipe && acc_pipe) {
diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index d4ab15b6d1ac..bc02aa726b06 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -204,7 +204,7 @@ sh_css_check_firmware_version(struct device *dev, const char *fw_data)
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
