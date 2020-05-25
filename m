Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E421E075F
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 May 2020 08:57:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5976E86054;
	Mon, 25 May 2020 06:57:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UF1V755X4LxH; Mon, 25 May 2020 06:56:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 47FDD8641E;
	Mon, 25 May 2020 06:56:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89F3A1BF21A
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A4AE8641E
 for <devel@linuxdriverproject.org>; Mon, 25 May 2020 06:56:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VrcYiVNJN4jH for <devel@linuxdriverproject.org>;
 Mon, 25 May 2020 06:56:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4E69285DF7
 for <devel@driverdev.osuosl.org>; Mon, 25 May 2020 06:56:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7A7AA208B6;
 Mon, 25 May 2020 06:56:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590389777;
 bh=L3uVvYmwi0hTO7ikEue9H51PRxSJOvLYnjEzbRfA2d0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qxCtyQs924sSNo6ZbhMb7N9XBXVYkIPyQwG4szhua2Iuk53FhBgoHCkT8z9IDUmHb
 ZLAL+FHdGIpx5Bg1j6qpVnu+efOOi6ipwWC4k4XQMozK7MDQqlqYL/iZJ4yJZyYSmE
 IBpEkA2VBqGqOPs2h1Nh1HR88mSIb0RCUC8DzlQk=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jd71y-001d7J-Al; Mon, 25 May 2020 08:56:14 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 09/11] media: atomisp: partially get rid of one abstraction
 layer
Date: Mon, 25 May 2020 08:56:08 +0200
Message-Id: <9c0522e86c0d858d7268621e9ad398df9c1f9e06.1590389536.git.mchehab+huawei@kernel.org>
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

The very same macros are defined as CSS_foo and IA_CSS_foo.

Remove this abstraction, as it just make things confusing,
for no good reason.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/media/atomisp/pci/atomisp_acc.c   |  12 +-
 .../staging/media/atomisp/pci/atomisp_cmd.c   | 468 +++++++++---------
 .../staging/media/atomisp/pci/atomisp_cmd.h   |  12 +-
 .../media/atomisp/pci/atomisp_common.h        |   2 +-
 .../media/atomisp/pci/atomisp_compat.h        | 234 +++------
 .../media/atomisp/pci/atomisp_compat_css20.c  | 300 +++++------
 .../media/atomisp/pci/atomisp_compat_css20.h  | 137 +----
 .../staging/media/atomisp/pci/atomisp_fops.c  | 114 ++---
 .../staging/media/atomisp/pci/atomisp_fops.h  |   4 +-
 .../staging/media/atomisp/pci/atomisp_ioctl.c |  94 ++--
 .../staging/media/atomisp/pci/atomisp_ioctl.h |   2 +-
 .../media/atomisp/pci/atomisp_subdev.c        |  32 +-
 .../media/atomisp/pci/atomisp_subdev.h        |  22 +-
 .../media/atomisp/pci/atomisp_tables.h        |  18 +-
 14 files changed, 633 insertions(+), 818 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_acc.c b/drivers/staging/media/atomisp/pci/atomisp_acc.c
index 8d575eb0a73f..21337c23bfa8 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_acc.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_acc.c
@@ -34,13 +34,13 @@
 
 static const struct {
 	unsigned int flag;
-	enum atomisp_css_pipe_id pipe_id;
+	enum ia_css_pipe_id pipe_id;
 } acc_flag_to_pipe[] = {
-	{ ATOMISP_ACC_FW_LOAD_FL_PREVIEW, CSS_PIPE_ID_PREVIEW },
-	{ ATOMISP_ACC_FW_LOAD_FL_COPY, CSS_PIPE_ID_COPY },
-	{ ATOMISP_ACC_FW_LOAD_FL_VIDEO, CSS_PIPE_ID_VIDEO },
-	{ ATOMISP_ACC_FW_LOAD_FL_CAPTURE, CSS_PIPE_ID_CAPTURE },
-	{ ATOMISP_ACC_FW_LOAD_FL_ACC, CSS_PIPE_ID_ACC }
+	{ ATOMISP_ACC_FW_LOAD_FL_PREVIEW, IA_CSS_PIPE_ID_PREVIEW },
+	{ ATOMISP_ACC_FW_LOAD_FL_COPY, IA_CSS_PIPE_ID_COPY },
+	{ ATOMISP_ACC_FW_LOAD_FL_VIDEO, IA_CSS_PIPE_ID_VIDEO },
+	{ ATOMISP_ACC_FW_LOAD_FL_CAPTURE, IA_CSS_PIPE_ID_CAPTURE },
+	{ ATOMISP_ACC_FW_LOAD_FL_ACC, IA_CSS_PIPE_ID_ACC }
 };
 
 /*
diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 365e3e90b781..900f1ccc25fe 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -445,29 +445,29 @@ static void print_csi_rx_errors(enum mipi_port_id port,
 	atomisp_css_rx_get_irq_info(port, &infos);
 
 	dev_err(isp->dev, "CSI Receiver port %d errors:\n", port);
-	if (infos & CSS_RX_IRQ_INFO_BUFFER_OVERRUN)
+	if (infos & IA_CSS_RX_IRQ_INFO_BUFFER_OVERRUN)
 		dev_err(isp->dev, "  buffer overrun");
-	if (infos & CSS_RX_IRQ_INFO_ERR_SOT)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_SOT)
 		dev_err(isp->dev, "  start-of-transmission error");
-	if (infos & CSS_RX_IRQ_INFO_ERR_SOT_SYNC)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_SOT_SYNC)
 		dev_err(isp->dev, "  start-of-transmission sync error");
-	if (infos & CSS_RX_IRQ_INFO_ERR_CONTROL)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_CONTROL)
 		dev_err(isp->dev, "  control error");
-	if (infos & CSS_RX_IRQ_INFO_ERR_ECC_DOUBLE)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_ECC_DOUBLE)
 		dev_err(isp->dev, "  2 or more ECC errors");
-	if (infos & CSS_RX_IRQ_INFO_ERR_CRC)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_CRC)
 		dev_err(isp->dev, "  CRC mismatch");
-	if (infos & CSS_RX_IRQ_INFO_ERR_UNKNOWN_ID)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_UNKNOWN_ID)
 		dev_err(isp->dev, "  unknown error");
-	if (infos & CSS_RX_IRQ_INFO_ERR_FRAME_SYNC)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_FRAME_SYNC)
 		dev_err(isp->dev, "  frame sync error");
-	if (infos & CSS_RX_IRQ_INFO_ERR_FRAME_DATA)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_FRAME_DATA)
 		dev_err(isp->dev, "  frame data error");
-	if (infos & CSS_RX_IRQ_INFO_ERR_DATA_TIMEOUT)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_DATA_TIMEOUT)
 		dev_err(isp->dev, "  data timeout");
-	if (infos & CSS_RX_IRQ_INFO_ERR_UNKNOWN_ESC)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_UNKNOWN_ESC)
 		dev_err(isp->dev, "  unknown escape command entry");
-	if (infos & CSS_RX_IRQ_INFO_ERR_LINE_SYNC)
+	if (infos & IA_CSS_RX_IRQ_INFO_ERR_LINE_SYNC)
 		dev_err(isp->dev, "  line sync error");
 }
 
@@ -540,7 +540,7 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 		 * Current SOF only support one stream, so the SOF only valid
 		 * either solely one stream is running
 		 */
-		if (irq_infos & CSS_IRQ_INFO_CSS_RECEIVER_SOF) {
+		if (irq_infos & IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF) {
 			atomic_inc(&asd->sof_count);
 			atomisp_sof_event(asd);
 
@@ -557,20 +557,20 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 				atomic_set(&asd->sequence_temp,
 					   atomic_read(&asd->sof_count));
 		}
-		if (irq_infos & CSS_IRQ_INFO_EVENTS_READY)
+		if (irq_infos & IA_CSS_IRQ_INFO_EVENTS_READY)
 			atomic_set(&asd->sequence,
 				   atomic_read(&asd->sequence_temp));
 	}
 
-	if (irq_infos & CSS_IRQ_INFO_CSS_RECEIVER_SOF) {
+	if (irq_infos & IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF) {
 		dev_dbg_ratelimited(isp->dev,
-				    "irq:0x%x (CSS_IRQ_INFO_CSS_RECEIVER_SOF)\n",
+				    "irq:0x%x (IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF)\n",
 				    irq_infos);
-		irq_infos &= ~CSS_IRQ_INFO_CSS_RECEIVER_SOF;
+		irq_infos &= ~IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF;
 	}
 
-	if ((irq_infos & CSS_IRQ_INFO_INPUT_SYSTEM_ERROR) ||
-	    (irq_infos & CSS_IRQ_INFO_IF_ERROR)) {
+	if ((irq_infos & IA_CSS_IRQ_INFO_INPUT_SYSTEM_ERROR) ||
+	    (irq_infos & IA_CSS_IRQ_INFO_IF_ERROR)) {
 		/* handle mipi receiver error */
 		u32 rx_infos;
 		enum mipi_port_id port;
@@ -680,10 +680,10 @@ void dump_sp_dmem(struct atomisp_device *isp, unsigned int addr,
 }
 
 static struct videobuf_buffer *atomisp_css_frame_to_vbuf(
-    struct atomisp_video_pipe *pipe, struct atomisp_css_frame *frame)
+    struct atomisp_video_pipe *pipe, struct ia_css_frame *frame)
 {
 	struct videobuf_vmalloc_memory *vm_mem;
-	struct atomisp_css_frame *handle;
+	struct ia_css_frame *handle;
 	int i;
 
 	for (i = 0; pipe->capq.bufs[i]; i++) {
@@ -765,12 +765,12 @@ static void atomisp_recover_params_queue(struct atomisp_video_pipe *pipe)
 static struct atomisp_video_pipe *__atomisp_get_pipe(
     struct atomisp_sub_device *asd,
     enum atomisp_input_stream_id stream_id,
-    enum atomisp_css_pipe_id css_pipe_id,
-    enum atomisp_css_buffer_type buf_type)
+    enum ia_css_pipe_id css_pipe_id,
+    enum ia_css_buffer_type buf_type)
 {
 	struct atomisp_device *isp = asd->isp;
 
-	if (css_pipe_id == CSS_PIPE_ID_COPY &&
+	if (css_pipe_id == IA_CSS_PIPE_ID_COPY &&
 	    isp->inputs[asd->input_curr].camera_caps->
 	    sensor[asd->sensor_curr].stream_num > 1) {
 		switch (stream_id) {
@@ -801,7 +801,7 @@ static struct atomisp_video_pipe *__atomisp_get_pipe(
 		 * buffering.
 		 */
 		return &asd->video_out_video_capture;
-	} else if (css_pipe_id == CSS_PIPE_ID_YUVPP) {
+	} else if (css_pipe_id == IA_CSS_PIPE_ID_YUVPP) {
 		/*
 		 * to SOC camera, yuvpp pipe is run for capture/video/SDV/ZSL.
 		 */
@@ -809,11 +809,11 @@ static struct atomisp_video_pipe *__atomisp_get_pipe(
 			if (asd->run_mode->val == ATOMISP_RUN_MODE_VIDEO) {
 				/* SDV case */
 				switch (buf_type) {
-				case CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME:
+				case IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME:
 					return &asd->video_out_video_capture;
-				case CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME:
+				case IA_CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME:
 					return &asd->video_out_preview;
-				case CSS_BUFFER_TYPE_OUTPUT_FRAME:
+				case IA_CSS_BUFFER_TYPE_OUTPUT_FRAME:
 					return &asd->video_out_capture;
 				default:
 					return &asd->video_out_vf;
@@ -821,15 +821,15 @@ static struct atomisp_video_pipe *__atomisp_get_pipe(
 			} else if (asd->run_mode->val == ATOMISP_RUN_MODE_PREVIEW) {
 				/* ZSL case */
 				switch (buf_type) {
-				case CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME:
+				case IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME:
 					return &asd->video_out_preview;
-				case CSS_BUFFER_TYPE_OUTPUT_FRAME:
+				case IA_CSS_BUFFER_TYPE_OUTPUT_FRAME:
 					return &asd->video_out_capture;
 				default:
 					return &asd->video_out_vf;
 				}
 			}
-		} else if (buf_type == CSS_BUFFER_TYPE_OUTPUT_FRAME) {
+		} else if (buf_type == IA_CSS_BUFFER_TYPE_OUTPUT_FRAME) {
 			switch (asd->run_mode->val) {
 			case ATOMISP_RUN_MODE_VIDEO:
 				return &asd->video_out_video_capture;
@@ -838,7 +838,7 @@ static struct atomisp_video_pipe *__atomisp_get_pipe(
 			default:
 				return &asd->video_out_capture;
 			}
-		} else if (buf_type == CSS_BUFFER_TYPE_VF_OUTPUT_FRAME) {
+		} else if (buf_type == IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME) {
 			if (asd->run_mode->val == ATOMISP_RUN_MODE_VIDEO)
 				return &asd->video_out_preview;
 			else
@@ -846,20 +846,20 @@ static struct atomisp_video_pipe *__atomisp_get_pipe(
 		}
 	} else if (asd->run_mode->val == ATOMISP_RUN_MODE_VIDEO) {
 		/* For online video or SDV video pipe. */
-		if (css_pipe_id == CSS_PIPE_ID_VIDEO ||
-		    css_pipe_id == CSS_PIPE_ID_COPY) {
-			if (buf_type == CSS_BUFFER_TYPE_OUTPUT_FRAME)
+		if (css_pipe_id == IA_CSS_PIPE_ID_VIDEO ||
+		    css_pipe_id == IA_CSS_PIPE_ID_COPY) {
+			if (buf_type == IA_CSS_BUFFER_TYPE_OUTPUT_FRAME)
 				return &asd->video_out_video_capture;
 			return &asd->video_out_preview;
 		}
 	} else if (asd->run_mode->val == ATOMISP_RUN_MODE_PREVIEW) {
 		/* For online preview or ZSL preview pipe. */
-		if (css_pipe_id == CSS_PIPE_ID_PREVIEW ||
-		    css_pipe_id == CSS_PIPE_ID_COPY)
+		if (css_pipe_id == IA_CSS_PIPE_ID_PREVIEW ||
+		    css_pipe_id == IA_CSS_PIPE_ID_COPY)
 			return &asd->video_out_preview;
 	}
 	/* For capture pipe. */
-	if (buf_type == CSS_BUFFER_TYPE_VF_OUTPUT_FRAME)
+	if (buf_type == IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME)
 		return &asd->video_out_vf;
 	return &asd->video_out_capture;
 }
@@ -877,8 +877,8 @@ atomisp_get_metadata_type(struct atomisp_sub_device *asd,
 }
 
 void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
-		      enum atomisp_css_buffer_type buf_type,
-		      enum atomisp_css_pipe_id css_pipe_id,
+		      enum ia_css_buffer_type buf_type,
+		      enum ia_css_pipe_id css_pipe_id,
 		      bool q_buffers, enum atomisp_input_stream_id stream_id)
 {
 	struct videobuf_buffer *vb = NULL;
@@ -887,7 +887,7 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 	bool requeue = false;
 	int err;
 	unsigned long irqflags;
-	struct atomisp_css_frame *frame = NULL;
+	struct ia_css_frame *frame = NULL;
 	struct atomisp_s3a_buf *s3a_buf = NULL, *_s3a_buf_tmp;
 	struct atomisp_dis_buf *dis_buf = NULL, *_dis_buf_tmp;
 	struct atomisp_metadata_buf *md_buf = NULL, *_md_buf_tmp;
@@ -897,14 +897,14 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 	bool reset_wdt_timer = false;
 
 	if (
-	    buf_type != CSS_BUFFER_TYPE_METADATA &&
-	    buf_type != CSS_BUFFER_TYPE_3A_STATISTICS &&
-	    buf_type != CSS_BUFFER_TYPE_DIS_STATISTICS &&
-	    buf_type != CSS_BUFFER_TYPE_OUTPUT_FRAME &&
-	    buf_type != CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME &&
-	    buf_type != CSS_BUFFER_TYPE_RAW_OUTPUT_FRAME &&
-	    buf_type != CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME &&
-	    buf_type != CSS_BUFFER_TYPE_VF_OUTPUT_FRAME) {
+	    buf_type != IA_CSS_BUFFER_TYPE_METADATA &&
+	    buf_type != IA_CSS_BUFFER_TYPE_3A_STATISTICS &&
+	    buf_type != IA_CSS_BUFFER_TYPE_DIS_STATISTICS &&
+	    buf_type != IA_CSS_BUFFER_TYPE_OUTPUT_FRAME &&
+	    buf_type != IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME &&
+	    buf_type != IA_CSS_BUFFER_TYPE_RAW_OUTPUT_FRAME &&
+	    buf_type != IA_CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME &&
+	    buf_type != IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME) {
 		dev_err(isp->dev, "%s, unsupported buffer type: %d\n",
 			__func__, buf_type);
 		return;
@@ -928,7 +928,7 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 	}
 
 	switch (buf_type) {
-	case CSS_BUFFER_TYPE_3A_STATISTICS:
+	case IA_CSS_BUFFER_TYPE_3A_STATISTICS:
 		list_for_each_entry_safe(s3a_buf, _s3a_buf_tmp,
 					 &asd->s3a_stats_in_css, list) {
 			if (s3a_buf->s3a_data ==
@@ -945,7 +945,7 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 		dev_dbg(isp->dev, "%s: s3a stat with exp_id %d is ready\n",
 			__func__, s3a_buf->s3a_data->exp_id);
 		break;
-	case CSS_BUFFER_TYPE_METADATA:
+	case IA_CSS_BUFFER_TYPE_METADATA:
 		if (error)
 			break;
 
@@ -965,7 +965,7 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 		dev_dbg(isp->dev, "%s: metadata with exp_id %d is ready\n",
 			__func__, md_buf->metadata->exp_id);
 		break;
-	case CSS_BUFFER_TYPE_DIS_STATISTICS:
+	case IA_CSS_BUFFER_TYPE_DIS_STATISTICS:
 		list_for_each_entry_safe(dis_buf, _dis_buf_tmp,
 					 &asd->dis_stats_in_css, list) {
 			if (dis_buf->dis_data ==
@@ -984,8 +984,8 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 		dev_dbg(isp->dev, "%s: dis stat with exp_id %d is ready\n",
 			__func__, dis_buf->dis_data->exp_id);
 		break;
-	case CSS_BUFFER_TYPE_VF_OUTPUT_FRAME:
-	case CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME:
+	case IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME:
+	case IA_CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME:
 		if (atomisp_hw_is_isp2401)
 			reset_wdt_timer = true;
 
@@ -1002,7 +1002,7 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 		 * YUVPP doesn't set postview exp_id correctlly in SDV mode.
 		 * This is a WORKAROUND to set exp_id. see HSDES-1503911606.
 		 */
-		if (IS_BYT && buf_type == CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME &&
+		if (IS_BYT && buf_type == IA_CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME &&
 		    asd->continuous_mode->val && ATOMISP_USE_YUVPP(asd))
 			frame->exp_id = (asd->postview_exp_id++) %
 					(ATOMISP_MAX_EXP_ID + 1);
@@ -1011,11 +1011,11 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 			__func__, frame->exp_id);
 		if (asd->params.flash_state == ATOMISP_FLASH_ONGOING) {
 			if (frame->flash_state
-			    == CSS_FRAME_FLASH_STATE_PARTIAL)
+			    == IA_CSS_FRAME_FLASH_STATE_PARTIAL)
 				dev_dbg(isp->dev, "%s thumb partially flashed\n",
 					__func__);
 			else if (frame->flash_state
-				 == CSS_FRAME_FLASH_STATE_FULL)
+				 == IA_CSS_FRAME_FLASH_STATE_FULL)
 				dev_dbg(isp->dev, "%s thumb completely flashed\n",
 					__func__);
 			else
@@ -1044,8 +1044,8 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 			asd->re_trigger_capture = true;
 		}
 		break;
-	case CSS_BUFFER_TYPE_OUTPUT_FRAME:
-	case CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME:
+	case IA_CSS_BUFFER_TYPE_OUTPUT_FRAME:
+	case IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME:
 		if (atomisp_hw_is_isp2401)
 			reset_wdt_timer = true;
 
@@ -1063,7 +1063,7 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 		 * YUVPP doesn't set preview exp_id correctlly in ZSL mode.
 		 * This is a WORKAROUND to set exp_id. see HSDES-1503911606.
 		 */
-		if (IS_BYT && buf_type == CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME &&
+		if (IS_BYT && buf_type == IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME &&
 		    asd->continuous_mode->val && ATOMISP_USE_YUVPP(asd))
 			frame->exp_id = (asd->preview_exp_id++) %
 					(ATOMISP_MAX_EXP_ID + 1);
@@ -1091,13 +1091,13 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 		ctrl.id = V4L2_CID_FLASH_MODE;
 		if (asd->params.flash_state == ATOMISP_FLASH_ONGOING) {
 			if (frame->flash_state
-			    == CSS_FRAME_FLASH_STATE_PARTIAL) {
+			    == IA_CSS_FRAME_FLASH_STATE_PARTIAL) {
 				asd->frame_status[vb->i] =
 				    ATOMISP_FRAME_STATUS_FLASH_PARTIAL;
 				dev_dbg(isp->dev, "%s partially flashed\n",
 					__func__);
 			} else if (frame->flash_state
-				   == CSS_FRAME_FLASH_STATE_FULL) {
+				   == IA_CSS_FRAME_FLASH_STATE_FULL) {
 				asd->frame_status[vb->i] =
 				    ATOMISP_FRAME_STATUS_FLASH_EXPOSED;
 				asd->params.num_flash_frames--;
@@ -1137,11 +1137,11 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 		asd->params.last_frame_status = asd->frame_status[vb->i];
 
 		if (asd->continuous_mode->val) {
-			if (css_pipe_id == CSS_PIPE_ID_PREVIEW ||
-			    css_pipe_id == CSS_PIPE_ID_VIDEO) {
+			if (css_pipe_id == IA_CSS_PIPE_ID_PREVIEW ||
+			    css_pipe_id == IA_CSS_PIPE_ID_VIDEO) {
 				asd->latest_preview_exp_id = frame->exp_id;
 			} else if (css_pipe_id ==
-				   CSS_PIPE_ID_CAPTURE) {
+				   IA_CSS_PIPE_ID_CAPTURE) {
 				if (asd->run_mode->val ==
 				    ATOMISP_RUN_MODE_VIDEO)
 					dev_dbg(isp->dev, "SDV capture raw buffer id: %u\n",
@@ -1157,8 +1157,8 @@ void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
 		 * in preview/video pipe, each buffer will
 		 * be locked automatically, so record it here.
 		 */
-		if (((css_pipe_id == CSS_PIPE_ID_PREVIEW) ||
-		     (css_pipe_id == CSS_PIPE_ID_VIDEO)) &&
+		if (((css_pipe_id == IA_CSS_PIPE_ID_PREVIEW) ||
+		     (css_pipe_id == IA_CSS_PIPE_ID_VIDEO)) &&
 		    asd->enable_raw_buffer_lock->val &&
 		    asd->continuous_mode->val) {
 			atomisp_set_raw_buffer_bitmap(asd, frame->exp_id);
@@ -1276,14 +1276,14 @@ void atomisp_delayed_init_work(struct work_struct *work)
 
 static void __atomisp_css_recover(struct atomisp_device *isp, bool isp_timeout)
 {
-	enum atomisp_css_pipe_id css_pipe_id;
+	enum ia_css_pipe_id css_pipe_id;
 	bool stream_restart[MAX_STREAM_NUM] = {0};
 	bool depth_mode = false;
 	int i, ret, depth_cnt = 0;
 
 	if (!isp->sw_contex.file_input)
 		atomisp_css_irq_enable(isp,
-				       CSS_IRQ_INFO_CSS_RECEIVER_SOF, false);
+				       IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF, false);
 
 	BUG_ON(isp->num_of_streams > MAX_STREAM_NUM);
 
@@ -1301,7 +1301,7 @@ static void __atomisp_css_recover(struct atomisp_device *isp, bool isp_timeout)
 		* By calling acc_done() for all loaded fw_handles,
 		* HAL will be unblocked.
 		*/
-		acc_pipe = asd->stream_env[i].pipes[CSS_PIPE_ID_ACC];
+		acc_pipe = asd->stream_env[i].pipes[IA_CSS_PIPE_ID_ACC];
 		if (acc_pipe) {
 			acc_pipeline = ia_css_pipe_get_pipeline(acc_pipe);
 			if (acc_pipeline) {
@@ -1382,7 +1382,7 @@ static void __atomisp_css_recover(struct atomisp_device *isp, bool isp_timeout)
 
 		if (isp->inputs[asd->input_curr].type != FILE_INPUT)
 			atomisp_css_input_set_mode(asd,
-						   CSS_INPUT_MODE_SENSOR);
+						   IA_CSS_INPUT_MODE_BUFFERED_SENSOR);
 
 		css_pipe_id = atomisp_get_css_pipe_id(asd);
 		if (atomisp_css_start(asd, css_pipe_id, true))
@@ -1395,7 +1395,7 @@ static void __atomisp_css_recover(struct atomisp_device *isp, bool isp_timeout)
 	}
 
 	if (!isp->sw_contex.file_input) {
-		atomisp_css_irq_enable(isp, CSS_IRQ_INFO_CSS_RECEIVER_SOF,
+		atomisp_css_irq_enable(isp, IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF,
 				       atomisp_css_valid_sof(isp));
 
 		if (atomisp_freq_scaling(isp, ATOMISP_DFS_MODE_AUTO, true) < 0)
@@ -1536,15 +1536,15 @@ void atomisp_wdt_work(struct work_struct *work)
 			dev_err(isp->dev,
 				"%s, s3a buffers in css preview pipe:%d\n",
 				__func__,
-				asd->s3a_bufs_in_css[CSS_PIPE_ID_PREVIEW]);
+				asd->s3a_bufs_in_css[IA_CSS_PIPE_ID_PREVIEW]);
 			dev_err(isp->dev,
 				"%s, s3a buffers in css capture pipe:%d\n",
 				__func__,
-				asd->s3a_bufs_in_css[CSS_PIPE_ID_CAPTURE]);
+				asd->s3a_bufs_in_css[IA_CSS_PIPE_ID_CAPTURE]);
 			dev_err(isp->dev,
 				"%s, s3a buffers in css video pipe:%d\n",
 				__func__,
-				asd->s3a_bufs_in_css[CSS_PIPE_ID_VIDEO]);
+				asd->s3a_bufs_in_css[IA_CSS_PIPE_ID_VIDEO]);
 			dev_err(isp->dev,
 				"%s, dis buffers in css: %d\n",
 				__func__, asd->dis_bufs_in_css);
@@ -1553,19 +1553,19 @@ void atomisp_wdt_work(struct work_struct *work)
 				__func__,
 				asd->metadata_bufs_in_css
 				[ATOMISP_INPUT_STREAM_GENERAL]
-				[CSS_PIPE_ID_PREVIEW]);
+				[IA_CSS_PIPE_ID_PREVIEW]);
 			dev_err(isp->dev,
 				"%s, metadata buffers in css capture pipe:%d\n",
 				__func__,
 				asd->metadata_bufs_in_css
 				[ATOMISP_INPUT_STREAM_GENERAL]
-				[CSS_PIPE_ID_CAPTURE]);
+				[IA_CSS_PIPE_ID_CAPTURE]);
 			dev_err(isp->dev,
 				"%s, metadata buffers in css video pipe:%d\n",
 				__func__,
 				asd->metadata_bufs_in_css
 				[ATOMISP_INPUT_STREAM_GENERAL]
-				[CSS_PIPE_ID_VIDEO]);
+				[IA_CSS_PIPE_ID_VIDEO]);
 			if (asd->enable_raw_buffer_lock->val) {
 				unsigned int j;
 
@@ -1907,7 +1907,7 @@ irqreturn_t atomisp_isr_thread(int irq, void *isp_ptr)
  */
 
 int atomisp_get_frame_pgnr(struct atomisp_device *isp,
-			   const struct atomisp_css_frame *frame, u32 *p_pgnr)
+			   const struct ia_css_frame *frame, u32 *p_pgnr)
 {
 	if (!frame) {
 		dev_err(isp->dev, "%s: NULL frame pointer ERROR.\n", __func__);
@@ -1921,39 +1921,39 @@ int atomisp_get_frame_pgnr(struct atomisp_device *isp,
 /*
  * Get internal fmt according to V4L2 fmt
  */
-static enum atomisp_css_frame_format
+static enum ia_css_frame_format
 v4l2_fmt_to_sh_fmt(u32 fmt) {
 	switch (fmt)
 	{
 	case V4L2_PIX_FMT_YUV420:
-				return CSS_FRAME_FORMAT_YUV420;
+				return IA_CSS_FRAME_FORMAT_YUV420;
 	case V4L2_PIX_FMT_YVU420:
-		return CSS_FRAME_FORMAT_YV12;
+		return IA_CSS_FRAME_FORMAT_YV12;
 	case V4L2_PIX_FMT_YUV422P:
-		return CSS_FRAME_FORMAT_YUV422;
+		return IA_CSS_FRAME_FORMAT_YUV422;
 	case V4L2_PIX_FMT_YUV444:
-		return CSS_FRAME_FORMAT_YUV444;
+		return IA_CSS_FRAME_FORMAT_YUV444;
 	case V4L2_PIX_FMT_NV12:
-		return CSS_FRAME_FORMAT_NV12;
+		return IA_CSS_FRAME_FORMAT_NV12;
 	case V4L2_PIX_FMT_NV21:
-		return CSS_FRAME_FORMAT_NV21;
+		return IA_CSS_FRAME_FORMAT_NV21;
 	case V4L2_PIX_FMT_NV16:
-		return CSS_FRAME_FORMAT_NV16;
+		return IA_CSS_FRAME_FORMAT_NV16;
 	case V4L2_PIX_FMT_NV61:
-		return CSS_FRAME_FORMAT_NV61;
+		return IA_CSS_FRAME_FORMAT_NV61;
 	case V4L2_PIX_FMT_UYVY:
-		return CSS_FRAME_FORMAT_UYVY;
+		return IA_CSS_FRAME_FORMAT_UYVY;
 	case V4L2_PIX_FMT_YUYV:
-		return CSS_FRAME_FORMAT_YUYV;
+		return IA_CSS_FRAME_FORMAT_YUYV;
 	case V4L2_PIX_FMT_RGB24:
-		return CSS_FRAME_FORMAT_PLANAR_RGB888;
+		return IA_CSS_FRAME_FORMAT_PLANAR_RGB888;
 	case V4L2_PIX_FMT_RGB32:
-		return CSS_FRAME_FORMAT_RGBA888;
+		return IA_CSS_FRAME_FORMAT_RGBA888;
 	case V4L2_PIX_FMT_RGB565:
-		return CSS_FRAME_FORMAT_RGB565;
+		return IA_CSS_FRAME_FORMAT_RGB565;
 	case V4L2_PIX_FMT_JPEG:
 	case V4L2_PIX_FMT_CUSTOM_M10MO_RAW:
-		return CSS_FRAME_FORMAT_BINARY_8;
+		return IA_CSS_FRAME_FORMAT_BINARY_8;
 	case V4L2_PIX_FMT_SBGGR16:
 	case V4L2_PIX_FMT_SBGGR10:
 	case V4L2_PIX_FMT_SGBRG10:
@@ -1967,7 +1967,7 @@ v4l2_fmt_to_sh_fmt(u32 fmt) {
 	case V4L2_PIX_FMT_SGBRG8:
 	case V4L2_PIX_FMT_SGRBG8:
 	case V4L2_PIX_FMT_SRGGB8:
-		return CSS_FRAME_FORMAT_RAW;
+		return IA_CSS_FRAME_FORMAT_RAW;
 	default:
 		return -EINVAL;
 	}
@@ -1978,28 +1978,28 @@ v4l2_fmt_to_sh_fmt(u32 fmt) {
  */
 static int raw_output_format_match_input(u32 input, u32 output)
 {
-	if ((input == CSS_FORMAT_RAW_12) &&
+	if ((input == ATOMISP_INPUT_FORMAT_RAW_12) &&
 	    ((output == V4L2_PIX_FMT_SRGGB12) ||
 	     (output == V4L2_PIX_FMT_SGRBG12) ||
 	     (output == V4L2_PIX_FMT_SBGGR12) ||
 	     (output == V4L2_PIX_FMT_SGBRG12)))
 		return 0;
 
-	if ((input == CSS_FORMAT_RAW_10) &&
+	if ((input == ATOMISP_INPUT_FORMAT_RAW_10) &&
 	    ((output == V4L2_PIX_FMT_SRGGB10) ||
 	     (output == V4L2_PIX_FMT_SGRBG10) ||
 	     (output == V4L2_PIX_FMT_SBGGR10) ||
 	     (output == V4L2_PIX_FMT_SGBRG10)))
 		return 0;
 
-	if ((input == CSS_FORMAT_RAW_8) &&
+	if ((input == ATOMISP_INPUT_FORMAT_RAW_8) &&
 	    ((output == V4L2_PIX_FMT_SRGGB8) ||
 	     (output == V4L2_PIX_FMT_SGRBG8) ||
 	     (output == V4L2_PIX_FMT_SBGGR8) ||
 	     (output == V4L2_PIX_FMT_SGBRG8)))
 		return 0;
 
-	if ((input == CSS_FORMAT_RAW_16) && (output == V4L2_PIX_FMT_SBGGR16))
+	if ((input == ATOMISP_INPUT_FORMAT_RAW_16) && (output == V4L2_PIX_FMT_SBGGR16))
 		return 0;
 
 	return -EINVAL;
@@ -2061,13 +2061,13 @@ bool atomisp_is_mbuscode_raw(uint32_t code)
 static void atomisp_update_capture_mode(struct atomisp_sub_device *asd)
 {
 	if (asd->params.gdc_cac_en)
-		atomisp_css_capture_set_mode(asd, CSS_CAPTURE_MODE_ADVANCED);
+		atomisp_css_capture_set_mode(asd, IA_CSS_CAPTURE_MODE_ADVANCED);
 	else if (asd->params.low_light)
-		atomisp_css_capture_set_mode(asd, CSS_CAPTURE_MODE_LOW_LIGHT);
-	else if (asd->video_out_capture.sh_fmt == CSS_FRAME_FORMAT_RAW)
-		atomisp_css_capture_set_mode(asd, CSS_CAPTURE_MODE_RAW);
+		atomisp_css_capture_set_mode(asd, IA_CSS_CAPTURE_MODE_LOW_LIGHT);
+	else if (asd->video_out_capture.sh_fmt == IA_CSS_FRAME_FORMAT_RAW)
+		atomisp_css_capture_set_mode(asd, IA_CSS_CAPTURE_MODE_RAW);
 	else
-		atomisp_css_capture_set_mode(asd, CSS_CAPTURE_MODE_PRIMARY);
+		atomisp_css_capture_set_mode(asd, IA_CSS_CAPTURE_MODE_PRIMARY);
 }
 
 /* ISP2401 */
@@ -2162,7 +2162,7 @@ int atomisp_nr(struct atomisp_sub_device *asd, int flag,
 	} else {
 		/* Set nr config to isp parameters */
 		memcpy(&asd->params.css_param.nr_config, arg,
-		       sizeof(struct atomisp_css_nr_config));
+		       sizeof(struct ia_css_nr_config));
 		atomisp_css_set_nr_config(asd, &asd->params.css_param.nr_config);
 		asd->params.css_update_params_needed = true;
 	}
@@ -2183,7 +2183,7 @@ int atomisp_tnr(struct atomisp_sub_device *asd, int flag,
 	} else {
 		/* Set tnr config to isp parameters */
 		memcpy(&asd->params.css_param.tnr_config, config,
-		       sizeof(struct atomisp_css_tnr_config));
+		       sizeof(struct ia_css_tnr_config));
 		atomisp_css_set_tnr_config(asd, &asd->params.css_param.tnr_config);
 		asd->params.css_update_params_needed = true;
 	}
@@ -2204,7 +2204,7 @@ int atomisp_black_level(struct atomisp_sub_device *asd, int flag,
 	} else {
 		/* Set ob config to isp parameters */
 		memcpy(&asd->params.css_param.ob_config, config,
-		       sizeof(struct atomisp_css_ob_config));
+		       sizeof(struct ia_css_ob_config));
 		atomisp_css_set_ob_config(asd, &asd->params.css_param.ob_config);
 		asd->params.css_update_params_needed = true;
 	}
@@ -2325,7 +2325,7 @@ void atomisp_free_internal_buffers(struct atomisp_sub_device *asd)
 }
 
 static void atomisp_update_grid_info(struct atomisp_sub_device *asd,
-				     enum atomisp_css_pipe_id pipe_id,
+				     enum ia_css_pipe_id pipe_id,
 				     int source_pad)
 {
 	struct atomisp_device *isp = asd->isp;
@@ -2377,7 +2377,7 @@ static void atomisp_curr_user_grid_info(struct atomisp_sub_device *asd,
 					struct atomisp_grid_info *info)
 {
 	memcpy(info, &asd->params.curr_grid_info.s3a_grid,
-	       sizeof(struct atomisp_css_3a_grid_info));
+	       sizeof(struct ia_css_3a_grid_info));
 }
 
 int atomisp_compare_grid(struct atomisp_sub_device *asd,
@@ -2401,14 +2401,14 @@ int atomisp_gdc_cac_table(struct atomisp_sub_device *asd, int flag,
 
 	if (flag == 0) {
 		/* Get gdc table from current setup */
-		struct atomisp_css_morph_table tab = {0};
+		struct ia_css_morph_table tab = {0};
 
 		atomisp_css_get_morph_table(asd, &tab);
 
 		config->width = tab.width;
 		config->height = tab.height;
 
-		for (i = 0; i < CSS_MORPH_TABLE_NUM_PLANES; i++) {
+		for (i = 0; i < IA_CSS_MORPH_TABLE_NUM_PLANES; i++) {
 			ret = copy_to_user(config->coordinates_x[i],
 					   tab.coordinates_x[i], tab.height *
 					   tab.width * sizeof(*tab.coordinates_x[i]));
@@ -2427,7 +2427,7 @@ int atomisp_gdc_cac_table(struct atomisp_sub_device *asd, int flag,
 			}
 		}
 	} else {
-		struct atomisp_css_morph_table *tab =
+		struct ia_css_morph_table *tab =
 			    asd->params.css_param.morph_table;
 
 		/* free first if we have one */
@@ -2445,7 +2445,7 @@ int atomisp_gdc_cac_table(struct atomisp_sub_device *asd, int flag,
 			return -EINVAL;
 		}
 
-		for (i = 0; i < CSS_MORPH_TABLE_NUM_PLANES; i++) {
+		for (i = 0; i < IA_CSS_MORPH_TABLE_NUM_PLANES; i++) {
 			ret = copy_from_user(tab->coordinates_x[i],
 					     config->coordinates_x[i],
 					     config->height * config->width *
@@ -2480,7 +2480,7 @@ int atomisp_gdc_cac_table(struct atomisp_sub_device *asd, int flag,
 int atomisp_macc_table(struct atomisp_sub_device *asd, int flag,
 		       struct atomisp_macc_config *config)
 {
-	struct atomisp_css_macc_table *macc_table;
+	struct ia_css_macc_table *macc_table;
 
 	switch (config->color_effect) {
 	case V4L2_COLORFX_NONE:
@@ -2508,10 +2508,10 @@ int atomisp_macc_table(struct atomisp_sub_device *asd, int flag,
 	if (flag == 0) {
 		/* Get macc table from current setup */
 		memcpy(&config->table, macc_table,
-		       sizeof(struct atomisp_css_macc_table));
+		       sizeof(struct ia_css_macc_table));
 	} else {
 		memcpy(macc_table, &config->table,
-		       sizeof(struct atomisp_css_macc_table));
+		       sizeof(struct ia_css_macc_table));
 		if (config->color_effect == asd->params.color_effect)
 			atomisp_css_set_macc_table(asd, macc_table);
 	}
@@ -2573,7 +2573,7 @@ int atomisp_get_dvs2_bq_resolutions(struct atomisp_sub_device *asd,
 	}
 
 	pipe_cfg = &asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL]
-		   .pipe_configs[CSS_PIPE_ID_VIDEO];
+		   .pipe_configs[IA_CSS_PIPE_ID_VIDEO];
 	stream_cfg = &asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL]
 		     .stream_config;
 	input_config = &stream_cfg->input_config;
@@ -2957,7 +2957,7 @@ int atomisp_get_metadata_by_type(struct atomisp_sub_device *asd, int flag,
  */
 int atomisp_calculate_real_zoom_region(struct atomisp_sub_device *asd,
 				       struct ia_css_dz_config   *dz_config,
-				       enum atomisp_css_pipe_id css_pipe_id)
+				       enum ia_css_pipe_id css_pipe_id)
 
 {
 	struct atomisp_stream_env *stream_env =
@@ -3230,7 +3230,7 @@ void atomisp_apply_css_parameters(
 		atomisp_css_set_morph_table(asd, css_param->morph_table);
 
 	if (css_param->update_flag.dvs2_coefs) {
-		struct atomisp_css_dvs_grid_info *dvs_grid_info =
+		struct ia_css_dvs_grid_info *dvs_grid_info =
 		    atomisp_css_get_dvs_grid_info(
 			&asd->params.curr_grid_info);
 
@@ -3277,7 +3277,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 
 	if (arg->wb_config && (from_user || !cur_config->wb_config)) {
 		if (copy_from_compatible(&css_param->wb_config, arg->wb_config,
-					 sizeof(struct atomisp_css_wb_config),
+					 sizeof(struct ia_css_wb_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.wb_config =
@@ -3286,7 +3286,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 
 	if (arg->ob_config && (from_user || !cur_config->ob_config)) {
 		if (copy_from_compatible(&css_param->ob_config, arg->ob_config,
-					 sizeof(struct atomisp_css_ob_config),
+					 sizeof(struct ia_css_ob_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.ob_config =
@@ -3295,7 +3295,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 
 	if (arg->dp_config && (from_user || !cur_config->dp_config)) {
 		if (copy_from_compatible(&css_param->dp_config, arg->dp_config,
-					 sizeof(struct atomisp_css_dp_config),
+					 sizeof(struct ia_css_dp_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.dp_config =
@@ -3306,7 +3306,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 		if (arg->dz_config && (from_user || !cur_config->dz_config)) {
 			if (copy_from_compatible(&css_param->dz_config,
 						 arg->dz_config,
-						 sizeof(struct atomisp_css_dz_config),
+						 sizeof(struct ia_css_dz_config),
 						 from_user))
 				return -EFAULT;
 			if (!atomisp_check_zoom_region(asd,
@@ -3322,7 +3322,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 
 	if (arg->nr_config && (from_user || !cur_config->nr_config)) {
 		if (copy_from_compatible(&css_param->nr_config, arg->nr_config,
-					 sizeof(struct atomisp_css_nr_config),
+					 sizeof(struct ia_css_nr_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.nr_config =
@@ -3331,7 +3331,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 
 	if (arg->ee_config && (from_user || !cur_config->ee_config)) {
 		if (copy_from_compatible(&css_param->ee_config, arg->ee_config,
-					 sizeof(struct atomisp_css_ee_config),
+					 sizeof(struct ia_css_ee_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.ee_config =
@@ -3341,7 +3341,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->tnr_config && (from_user || !cur_config->tnr_config)) {
 		if (copy_from_compatible(&css_param->tnr_config,
 					 arg->tnr_config,
-					 sizeof(struct atomisp_css_tnr_config),
+					 sizeof(struct ia_css_tnr_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.tnr_config =
@@ -3352,7 +3352,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->a3a_config && (from_user || !cur_config->a3a_config)) {
 		if (copy_from_compatible(&css_param->s3a_config,
 					 arg->a3a_config,
-					 sizeof(struct atomisp_css_3a_config),
+					 sizeof(struct ia_css_3a_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.a3a_config =
@@ -3362,7 +3362,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->ctc_config && (from_user || !cur_config->ctc_config)) {
 		if (copy_from_compatible(&css_param->ctc_config,
 					 arg->ctc_config,
-					 sizeof(struct atomisp_css_ctc_config),
+					 sizeof(struct ia_css_ctc_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.ctc_config =
@@ -3373,7 +3373,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->cnr_config && (from_user || !cur_config->cnr_config)) {
 		if (copy_from_compatible(&css_param->cnr_config,
 					 arg->cnr_config,
-					 sizeof(struct atomisp_css_cnr_config),
+					 sizeof(struct ia_css_cnr_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.cnr_config =
@@ -3384,7 +3384,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->ecd_config && (from_user || !cur_config->ecd_config)) {
 		if (copy_from_compatible(&css_param->ecd_config,
 					 arg->ecd_config,
-					 sizeof(struct atomisp_css_ecd_config),
+					 sizeof(struct ia_css_ecd_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.ecd_config =
@@ -3395,7 +3395,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->ynr_config && (from_user || !cur_config->ynr_config)) {
 		if (copy_from_compatible(&css_param->ynr_config,
 					 arg->ynr_config,
-					 sizeof(struct atomisp_css_ynr_config),
+					 sizeof(struct ia_css_ynr_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.ynr_config =
@@ -3406,7 +3406,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->fc_config && (from_user || !cur_config->fc_config)) {
 		if (copy_from_compatible(&css_param->fc_config,
 					 arg->fc_config,
-					 sizeof(struct atomisp_css_fc_config),
+					 sizeof(struct ia_css_fc_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.fc_config =
@@ -3416,7 +3416,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->macc_config && (from_user || !cur_config->macc_config)) {
 		if (copy_from_compatible(&css_param->macc_config,
 					 arg->macc_config,
-					 sizeof(struct atomisp_css_macc_config),
+					 sizeof(struct ia_css_macc_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.macc_config =
@@ -3426,7 +3426,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 
 	if (arg->aa_config && (from_user || !cur_config->aa_config)) {
 		if (copy_from_compatible(&css_param->aa_config, arg->aa_config,
-					 sizeof(struct atomisp_css_aa_config),
+					 sizeof(struct ia_css_aa_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.aa_config =
@@ -3436,7 +3436,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->anr_config && (from_user || !cur_config->anr_config)) {
 		if (copy_from_compatible(&css_param->anr_config,
 					 arg->anr_config,
-					 sizeof(struct atomisp_css_anr_config),
+					 sizeof(struct ia_css_anr_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.anr_config =
@@ -3447,7 +3447,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->xnr_config && (from_user || !cur_config->xnr_config)) {
 		if (copy_from_compatible(&css_param->xnr_config,
 					 arg->xnr_config,
-					 sizeof(struct atomisp_css_xnr_config),
+					 sizeof(struct ia_css_xnr_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.xnr_config =
@@ -3459,7 +3459,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	    (from_user || !cur_config->yuv2rgb_cc_config)) {
 		if (copy_from_compatible(&css_param->yuv2rgb_cc_config,
 					 arg->yuv2rgb_cc_config,
-					 sizeof(struct atomisp_css_cc_config),
+					 sizeof(struct ia_css_cc_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.yuv2rgb_cc_config =
@@ -3471,7 +3471,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	    (from_user || !cur_config->rgb2yuv_cc_config)) {
 		if (copy_from_compatible(&css_param->rgb2yuv_cc_config,
 					 arg->rgb2yuv_cc_config,
-					 sizeof(struct atomisp_css_cc_config),
+					 sizeof(struct ia_css_cc_config),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.rgb2yuv_cc_config =
@@ -3482,7 +3482,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->macc_table && (from_user || !cur_config->macc_table)) {
 		if (copy_from_compatible(&css_param->macc_table,
 					 arg->macc_table,
-					 sizeof(struct atomisp_css_macc_table),
+					 sizeof(struct ia_css_macc_table),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.macc_table =
@@ -3493,7 +3493,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->xnr_table && (from_user || !cur_config->xnr_table)) {
 		if (copy_from_compatible(&css_param->xnr_table,
 					 arg->xnr_table,
-					 sizeof(struct atomisp_css_xnr_table),
+					 sizeof(struct ia_css_xnr_table),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.xnr_table =
@@ -3503,7 +3503,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->r_gamma_table && (from_user || !cur_config->r_gamma_table)) {
 		if (copy_from_compatible(&css_param->r_gamma_table,
 					 arg->r_gamma_table,
-					 sizeof(struct atomisp_css_rgb_gamma_table),
+					 sizeof(struct ia_css_rgb_gamma_table),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.r_gamma_table =
@@ -3514,7 +3514,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->g_gamma_table && (from_user || !cur_config->g_gamma_table)) {
 		if (copy_from_compatible(&css_param->g_gamma_table,
 					 arg->g_gamma_table,
-					 sizeof(struct atomisp_css_rgb_gamma_table),
+					 sizeof(struct ia_css_rgb_gamma_table),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.g_gamma_table =
@@ -3525,7 +3525,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 	if (arg->b_gamma_table && (from_user || !cur_config->b_gamma_table)) {
 		if (copy_from_compatible(&css_param->b_gamma_table,
 					 arg->b_gamma_table,
-					 sizeof(struct atomisp_css_rgb_gamma_table),
+					 sizeof(struct ia_css_rgb_gamma_table),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.b_gamma_table =
@@ -3535,7 +3535,7 @@ int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 
 	if (arg->anr_thres && (from_user || !cur_config->anr_thres)) {
 		if (copy_from_compatible(&css_param->anr_thres, arg->anr_thres,
-					 sizeof(struct atomisp_css_anr_thres),
+					 sizeof(struct ia_css_anr_thres),
 					 from_user))
 			return -EFAULT;
 		css_param->update_flag.anr_thres =
@@ -3565,8 +3565,8 @@ int atomisp_cp_lsc_table(struct atomisp_sub_device *asd,
 {
 	unsigned int i;
 	unsigned int len_table;
-	struct atomisp_css_shading_table *shading_table;
-	struct atomisp_css_shading_table *old_table;
+	struct ia_css_shading_table *shading_table;
+	struct ia_css_shading_table *old_table;
 	struct atomisp_shading_table *st, dest_st;
 
 	if (!source_st)
@@ -3683,7 +3683,7 @@ int atomisp_css_cp_dvs2_coefs(struct atomisp_sub_device *asd,
 			      struct atomisp_css_params *css_param,
 			      bool from_user)
 {
-	struct atomisp_css_dvs_grid_info *cur =
+	struct ia_css_dvs_grid_info *cur =
 	    atomisp_css_get_dvs_grid_info(&asd->params.curr_grid_info);
 	int dvs_hor_coef_bytes, dvs_ver_coef_bytes;
 	struct ia_css_dvs2_coefficients dvs2_coefs;
@@ -3811,11 +3811,11 @@ int atomisp_cp_dvs_6axis_config(struct atomisp_sub_device *asd,
 				struct atomisp_css_params *css_param,
 				bool from_user)
 {
-	struct atomisp_css_dvs_6axis_config *dvs_6axis_config;
-	struct atomisp_css_dvs_6axis_config *old_6axis_config;
+	struct ia_css_dvs_6axis_config *dvs_6axis_config;
+	struct ia_css_dvs_6axis_config *old_6axis_config;
 	struct ia_css_stream *stream =
 		    asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream;
-	struct atomisp_css_dvs_grid_info *dvs_grid_info =
+	struct ia_css_dvs_grid_info *dvs_grid_info =
 	    atomisp_css_get_dvs_grid_info(&asd->params.curr_grid_info);
 	int ret = -EFAULT;
 
@@ -3838,7 +3838,7 @@ int atomisp_cp_dvs_6axis_config(struct atomisp_sub_device *asd,
 	dvs_6axis_config = old_6axis_config;
 
 	if (atomisp_hw_is_isp2401) {
-		struct atomisp_css_dvs_6axis_config t_6axis_config;
+		struct ia_css_dvs_6axis_config t_6axis_config;
 
 		if (copy_from_compatible(&t_6axis_config, source_6axis_config,
 					sizeof(struct atomisp_dvs_6axis_config),
@@ -3961,8 +3961,8 @@ int atomisp_cp_morph_table(struct atomisp_sub_device *asd,
 {
 	int ret = -EFAULT;
 	unsigned int i;
-	struct atomisp_css_morph_table *morph_table;
-	struct atomisp_css_morph_table *old_morph_table;
+	struct ia_css_morph_table *morph_table;
+	struct ia_css_morph_table *old_morph_table;
 
 	if (!source_morph_table)
 		return 0;
@@ -3973,7 +3973,7 @@ int atomisp_cp_morph_table(struct atomisp_sub_device *asd,
 	old_morph_table = css_param->morph_table;
 
 	if (atomisp_hw_is_isp2401) {
-		struct atomisp_css_morph_table mtbl;
+		struct ia_css_morph_table mtbl;
 
 		if (copy_from_compatible(&mtbl, source_morph_table,
 				sizeof(struct atomisp_morph_table),
@@ -3988,7 +3988,7 @@ int atomisp_cp_morph_table(struct atomisp_sub_device *asd,
 		if (!morph_table)
 			return -ENOMEM;
 
-		for (i = 0; i < CSS_MORPH_TABLE_NUM_PLANES; i++) {
+		for (i = 0; i < IA_CSS_MORPH_TABLE_NUM_PLANES; i++) {
 			if (copy_from_compatible(morph_table->coordinates_x[i],
 						(__force void *)source_morph_table->coordinates_x[i],
 						mtbl.height * mtbl.width *
@@ -4010,7 +4010,7 @@ int atomisp_cp_morph_table(struct atomisp_sub_device *asd,
 		if (!morph_table)
 			return -ENOMEM;
 
-		for (i = 0; i < CSS_MORPH_TABLE_NUM_PLANES; i++) {
+		for (i = 0; i < IA_CSS_MORPH_TABLE_NUM_PLANES; i++) {
 			if (copy_from_compatible(morph_table->coordinates_x[i],
 						(__force void *)source_morph_table->coordinates_x[i],
 						source_morph_table->height * source_morph_table->width *
@@ -4277,7 +4277,7 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 
 	/* Read parameter for 3A binary info */
 	if (flag == 0) {
-		struct atomisp_css_dvs_grid_info *dvs_grid_info =
+		struct ia_css_dvs_grid_info *dvs_grid_info =
 		    atomisp_css_get_dvs_grid_info(
 			&asd->params.curr_grid_info);
 
@@ -4301,7 +4301,7 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		if (dvs_grid_info)
 			memcpy(&config->dvs_grid,
 			       dvs_grid_info,
-			       sizeof(struct atomisp_css_dvs_grid_info));
+			       sizeof(struct ia_css_dvs_grid_info));
 
 		if (asd->run_mode->val != ATOMISP_RUN_MODE_VIDEO) {
 			config->dvs_envelop.width = 0;
@@ -4336,23 +4336,23 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 	}
 
 	memcpy(&asd->params.css_param.wb_config, &config->wb_config,
-	       sizeof(struct atomisp_css_wb_config));
+	       sizeof(struct ia_css_wb_config));
 	memcpy(&asd->params.css_param.ob_config, &config->ob_config,
-	       sizeof(struct atomisp_css_ob_config));
+	       sizeof(struct ia_css_ob_config));
 	memcpy(&asd->params.css_param.dp_config, &config->dp_config,
-	       sizeof(struct atomisp_css_dp_config));
+	       sizeof(struct ia_css_dp_config));
 	memcpy(&asd->params.css_param.de_config, &config->de_config,
-	       sizeof(struct atomisp_css_de_config));
+	       sizeof(struct ia_css_de_config));
 	memcpy(&asd->params.css_param.dz_config, &config->dz_config,
-	       sizeof(struct atomisp_css_dz_config));
+	       sizeof(struct ia_css_dz_config));
 	memcpy(&asd->params.css_param.ce_config, &config->ce_config,
-	       sizeof(struct atomisp_css_ce_config));
+	       sizeof(struct ia_css_ce_config));
 	memcpy(&asd->params.css_param.nr_config, &config->nr_config,
-	       sizeof(struct atomisp_css_nr_config));
+	       sizeof(struct ia_css_nr_config));
 	memcpy(&asd->params.css_param.ee_config, &config->ee_config,
-	       sizeof(struct atomisp_css_ee_config));
+	       sizeof(struct ia_css_ee_config));
 	memcpy(&asd->params.css_param.tnr_config, &config->tnr_config,
-	       sizeof(struct atomisp_css_tnr_config));
+	       sizeof(struct ia_css_tnr_config));
 
 	if (asd->params.color_effect == V4L2_COLORFX_NEGATIVE) {
 		asd->params.css_param.cc_config.matrix[3] = -config->cc_config.matrix[3];
@@ -4366,7 +4366,7 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 	if (asd->params.color_effect != V4L2_COLORFX_SEPIA &&
 	    asd->params.color_effect != V4L2_COLORFX_BW) {
 		memcpy(&asd->params.css_param.cc_config, &config->cc_config,
-		       sizeof(struct atomisp_css_cc_config));
+		       sizeof(struct ia_css_cc_config));
 		atomisp_css_set_cc_config(asd, &asd->params.css_param.cc_config);
 	}
 
@@ -4390,9 +4390,9 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 int atomisp_color_effect(struct atomisp_sub_device *asd, int flag,
 			 __s32 *effect)
 {
-	struct atomisp_css_cc_config *cc_config = NULL;
-	struct atomisp_css_macc_table *macc_table = NULL;
-	struct atomisp_css_ctc_table *ctc_table = NULL;
+	struct ia_css_cc_config *cc_config = NULL;
+	struct ia_css_macc_table *macc_table = NULL;
+	struct ia_css_ctc_table *ctc_table = NULL;
 	int ret = 0;
 	struct v4l2_control control;
 	struct atomisp_device *isp = asd->isp;
@@ -4549,34 +4549,34 @@ int atomisp_fixed_pattern(struct atomisp_sub_device *asd, int flag,
 
 static unsigned int
 atomisp_bytesperline_to_padded_width(unsigned int bytesperline,
-				     enum atomisp_css_frame_format format)
+				     enum ia_css_frame_format format)
 {
 	switch (format) {
-	case CSS_FRAME_FORMAT_UYVY:
-	case CSS_FRAME_FORMAT_YUYV:
-	case CSS_FRAME_FORMAT_RAW:
-	case CSS_FRAME_FORMAT_RGB565:
+	case IA_CSS_FRAME_FORMAT_UYVY:
+	case IA_CSS_FRAME_FORMAT_YUYV:
+	case IA_CSS_FRAME_FORMAT_RAW:
+	case IA_CSS_FRAME_FORMAT_RGB565:
 		return bytesperline / 2;
-	case CSS_FRAME_FORMAT_RGBA888:
+	case IA_CSS_FRAME_FORMAT_RGBA888:
 		return bytesperline / 4;
 	/* The following cases could be removed, but we leave them
 	   in to document the formats that are included. */
-	case CSS_FRAME_FORMAT_NV11:
-	case CSS_FRAME_FORMAT_NV12:
-	case CSS_FRAME_FORMAT_NV16:
-	case CSS_FRAME_FORMAT_NV21:
-	case CSS_FRAME_FORMAT_NV61:
-	case CSS_FRAME_FORMAT_YV12:
-	case CSS_FRAME_FORMAT_YV16:
-	case CSS_FRAME_FORMAT_YUV420:
-	case CSS_FRAME_FORMAT_YUV420_16:
-	case CSS_FRAME_FORMAT_YUV422:
-	case CSS_FRAME_FORMAT_YUV422_16:
-	case CSS_FRAME_FORMAT_YUV444:
-	case CSS_FRAME_FORMAT_YUV_LINE:
-	case CSS_FRAME_FORMAT_PLANAR_RGB888:
-	case CSS_FRAME_FORMAT_QPLANE6:
-	case CSS_FRAME_FORMAT_BINARY_8:
+	case IA_CSS_FRAME_FORMAT_NV11:
+	case IA_CSS_FRAME_FORMAT_NV12:
+	case IA_CSS_FRAME_FORMAT_NV16:
+	case IA_CSS_FRAME_FORMAT_NV21:
+	case IA_CSS_FRAME_FORMAT_NV61:
+	case IA_CSS_FRAME_FORMAT_YV12:
+	case IA_CSS_FRAME_FORMAT_YV16:
+	case IA_CSS_FRAME_FORMAT_YUV420:
+	case IA_CSS_FRAME_FORMAT_YUV420_16:
+	case IA_CSS_FRAME_FORMAT_YUV422:
+	case IA_CSS_FRAME_FORMAT_YUV422_16:
+	case IA_CSS_FRAME_FORMAT_YUV444:
+	case IA_CSS_FRAME_FORMAT_YUV_LINE:
+	case IA_CSS_FRAME_FORMAT_PLANAR_RGB888:
+	case IA_CSS_FRAME_FORMAT_QPLANE6:
+	case IA_CSS_FRAME_FORMAT_BINARY_8:
 	default:
 		return bytesperline;
 	}
@@ -4584,11 +4584,11 @@ atomisp_bytesperline_to_padded_width(unsigned int bytesperline,
 
 static int
 atomisp_v4l2_framebuffer_to_css_frame(const struct v4l2_framebuffer *arg,
-				      struct atomisp_css_frame **result)
+				      struct ia_css_frame **result)
 {
-	struct atomisp_css_frame *res = NULL;
+	struct ia_css_frame *res = NULL;
 	unsigned int padded_width;
-	enum atomisp_css_frame_format sh_format;
+	enum ia_css_frame_format sh_format;
 	char *tmp_buf = NULL;
 	int ret = 0;
 
@@ -4596,7 +4596,7 @@ atomisp_v4l2_framebuffer_to_css_frame(const struct v4l2_framebuffer *arg,
 	padded_width = atomisp_bytesperline_to_padded_width(
 			   arg->fmt.bytesperline, sh_format);
 
-	/* Note: the padded width on an atomisp_css_frame is in elements, not in
+	/* Note: the padded width on an ia_css_frame is in elements, not in
 	   bytes. The RAW frame we use here should always be a 16bit RAW
 	   frame. This is why we bytesperline/2 is equal to the padded with */
 	if (atomisp_css_frame_allocate(&res, arg->fmt.width, arg->fmt.height,
@@ -4637,7 +4637,7 @@ atomisp_v4l2_framebuffer_to_css_frame(const struct v4l2_framebuffer *arg,
 int atomisp_fixed_pattern_table(struct atomisp_sub_device *asd,
 				struct v4l2_framebuffer *arg)
 {
-	struct atomisp_css_frame *raw_black_frame = NULL;
+	struct ia_css_frame *raw_black_frame = NULL;
 	int ret;
 
 	if (!arg)
@@ -5067,7 +5067,7 @@ static int __enable_continuous_mode(struct atomisp_sub_device *asd,
 		!asd->continuous_viewfinder->val);
 
 	if (!atomisp_hw_is_isp2401)
-		atomisp_css_capture_set_mode(asd, CSS_CAPTURE_MODE_PRIMARY);
+		atomisp_css_capture_set_mode(asd, IA_CSS_CAPTURE_MODE_PRIMARY);
 	else
 		atomisp_update_capture_mode(asd);
 
@@ -5091,7 +5091,7 @@ static int __enable_continuous_mode(struct atomisp_sub_device *asd,
 	}
 
 	if (isp->inputs[asd->input_curr].type != FILE_INPUT)
-		atomisp_css_input_set_mode(asd, CSS_INPUT_MODE_SENSOR);
+		atomisp_css_input_set_mode(asd, IA_CSS_INPUT_MODE_BUFFERED_SENSOR);
 
 	return atomisp_update_run_mode(asd);
 }
@@ -5105,13 +5105,13 @@ static int configure_pp_input_nop(struct atomisp_sub_device *asd,
 static int configure_output_nop(struct atomisp_sub_device *asd,
 				unsigned int width, unsigned int height,
 				unsigned int min_width,
-				enum atomisp_css_frame_format sh_fmt)
+				enum ia_css_frame_format sh_fmt)
 {
 	return 0;
 }
 
 static int get_frame_info_nop(struct atomisp_sub_device *asd,
-			      struct atomisp_css_frame_info *finfo)
+			      struct ia_css_frame_info *finfo)
 {
 	return 0;
 }
@@ -5170,8 +5170,8 @@ static int css_input_resolution_changed(struct atomisp_sub_device *asd,
 }
 
 static int atomisp_set_fmt_to_isp(struct video_device *vdev,
-				  struct atomisp_css_frame_info *output_info,
-				  struct atomisp_css_frame_info *raw_output_info,
+				  struct ia_css_frame_info *output_info,
+				  struct ia_css_frame_info *raw_output_info,
 				  struct v4l2_pix_format *pix,
 				  unsigned int source_pad)
 {
@@ -5180,15 +5180,15 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 	struct atomisp_sub_device *asd = atomisp_to_video_pipe(vdev)->asd;
 	const struct atomisp_format_bridge *format;
 	struct v4l2_rect *isp_sink_crop;
-	enum atomisp_css_pipe_id pipe_id;
+	enum ia_css_pipe_id pipe_id;
 	struct v4l2_subdev_fh fh;
 	int (*configure_output)(struct atomisp_sub_device *asd,
 				unsigned int width, unsigned int height,
 				unsigned int min_width,
-				enum atomisp_css_frame_format sh_fmt) =
+				enum ia_css_frame_format sh_fmt) =
 				    configure_output_nop;
 	int (*get_frame_info)(struct atomisp_sub_device *asd,
-			      struct atomisp_css_frame_info *finfo) =
+			      struct ia_css_frame_info *finfo) =
 				  get_frame_info_nop;
 	int (*configure_pp_input)(struct atomisp_sub_device *asd,
 				  unsigned int width, unsigned int height) =
@@ -5227,7 +5227,7 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 							 ATOMISP_SUBDEV_PAD_SINK)->code);
 		if (!fc)
 			return -EINVAL;
-		if (format->sh_fmt == CSS_FRAME_FORMAT_RAW &&
+		if (format->sh_fmt == IA_CSS_FRAME_FORMAT_RAW &&
 		    raw_output_format_match_input(fc->css_stream_fmt,
 						  pix->pixelformat))
 			return -EINVAL;
@@ -5261,7 +5261,7 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 		atomisp_subdev_set_ffmt(&asd->subdev, fh.pad,
 					V4L2_SUBDEV_FORMAT_ACTIVE,
 					ATOMISP_SUBDEV_PAD_SOURCE_VF, &vf_ffmt);
-		asd->video_out_vf.sh_fmt = CSS_FRAME_FORMAT_NV12;
+		asd->video_out_vf.sh_fmt = IA_CSS_FRAME_FORMAT_NV12;
 
 		if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_SCALER) {
 			atomisp_css_video_configure_viewfinder(asd,
@@ -5291,25 +5291,25 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 			return -EINVAL;
 	}
 
-	atomisp_css_input_set_mode(asd, CSS_INPUT_MODE_SENSOR);
+	atomisp_css_input_set_mode(asd, IA_CSS_INPUT_MODE_BUFFERED_SENSOR);
 	atomisp_css_disable_vf_pp(asd,
 				  asd->vfpp->val != ATOMISP_VFPP_ENABLE);
 
 	/* ISP2401 new input system need to use copy pipe */
 	if (asd->copy_mode) {
-		pipe_id = CSS_PIPE_ID_COPY;
+		pipe_id = IA_CSS_PIPE_ID_COPY;
 		atomisp_css_capture_enable_online(asd, stream_index, false);
 	} else if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_SCALER) {
 		/* video same in continuouscapture and online modes */
 		configure_output = atomisp_css_video_configure_output;
 		get_frame_info = atomisp_css_video_get_output_frame_info;
-		pipe_id = CSS_PIPE_ID_VIDEO;
+		pipe_id = IA_CSS_PIPE_ID_VIDEO;
 	} else if (asd->run_mode->val == ATOMISP_RUN_MODE_VIDEO) {
 		if (!asd->continuous_mode->val) {
 			configure_output = atomisp_css_video_configure_output;
 			get_frame_info =
 			    atomisp_css_video_get_output_frame_info;
-			pipe_id = CSS_PIPE_ID_VIDEO;
+			pipe_id = IA_CSS_PIPE_ID_VIDEO;
 		} else {
 			if (source_pad == ATOMISP_SUBDEV_PAD_SOURCE_PREVIEW ||
 			    source_pad == ATOMISP_SUBDEV_PAD_SOURCE_VIDEO) {
@@ -5319,7 +5319,7 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 				    atomisp_css_video_get_output_frame_info;
 				configure_pp_input =
 				    atomisp_css_video_configure_pp_input;
-				pipe_id = CSS_PIPE_ID_VIDEO;
+				pipe_id = IA_CSS_PIPE_ID_VIDEO;
 			} else {
 				configure_output =
 				    atomisp_css_capture_configure_output;
@@ -5327,7 +5327,7 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 				    atomisp_css_capture_get_output_frame_info;
 				configure_pp_input =
 				    atomisp_css_capture_configure_pp_input;
-				pipe_id = CSS_PIPE_ID_CAPTURE;
+				pipe_id = IA_CSS_PIPE_ID_CAPTURE;
 
 				atomisp_update_capture_mode(asd);
 				atomisp_css_capture_enable_online(asd, stream_index, false);
@@ -5337,7 +5337,7 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 		configure_output = atomisp_css_preview_configure_output;
 		get_frame_info = atomisp_css_preview_get_output_frame_info;
 		configure_pp_input = atomisp_css_preview_configure_pp_input;
-		pipe_id = CSS_PIPE_ID_PREVIEW;
+		pipe_id = IA_CSS_PIPE_ID_PREVIEW;
 	} else {
 		/* CSS doesn't support low light mode on SOC cameras, so disable
 		 * it. FIXME: if this is done elsewhere, it gives corrupted
@@ -5346,8 +5346,8 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 		if (isp->inputs[asd->input_curr].type == SOC_CAMERA)
 			asd->params.low_light = false;
 
-		if (format->sh_fmt == CSS_FRAME_FORMAT_RAW) {
-			atomisp_css_capture_set_mode(asd, CSS_CAPTURE_MODE_RAW);
+		if (format->sh_fmt == IA_CSS_FRAME_FORMAT_RAW) {
+			atomisp_css_capture_set_mode(asd, IA_CSS_CAPTURE_MODE_RAW);
 			atomisp_css_enable_dz(asd, false);
 		} else {
 			atomisp_update_capture_mode(asd);
@@ -5362,7 +5362,7 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 		configure_output = atomisp_css_capture_configure_output;
 		get_frame_info = atomisp_css_capture_get_output_frame_info;
 		configure_pp_input = atomisp_css_capture_configure_pp_input;
-		pipe_id = CSS_PIPE_ID_CAPTURE;
+		pipe_id = IA_CSS_PIPE_ID_CAPTURE;
 
 		if (!asd->params.online_process &&
 		    !asd->continuous_mode->val) {
@@ -5383,7 +5383,7 @@ static int atomisp_set_fmt_to_isp(struct video_device *vdev,
 	 * to SOC camera, use yuvpp pipe.
 	 */
 	if (ATOMISP_USE_YUVPP(asd))
-		pipe_id = CSS_PIPE_ID_YUVPP;
+		pipe_id = IA_CSS_PIPE_ID_YUVPP;
 
 	if (asd->copy_mode)
 		ret = atomisp_css_copy_configure_output(asd, stream_index,
@@ -5599,7 +5599,7 @@ int atomisp_set_fmt(struct video_device *vdev, struct v4l2_format *f)
 	struct atomisp_sub_device *asd = pipe->asd;
 	const struct atomisp_format_bridge *format_bridge;
 	const struct atomisp_format_bridge *snr_format_bridge;
-	struct atomisp_css_frame_info output_info, raw_output_info;
+	struct ia_css_frame_info output_info, raw_output_info;
 	struct v4l2_format snr_fmt = *f;
 	struct v4l2_format backup_fmt = *f, s_fmt = *f;
 	unsigned int dvs_env_w = 0, dvs_env_h = 0;
@@ -6064,7 +6064,7 @@ int atomisp_set_fmt_file(struct video_device *vdev, struct v4l2_format *f)
 	}
 
 	pipe->pix = f->fmt.pix;
-	atomisp_css_input_set_mode(asd, CSS_INPUT_MODE_FIFO);
+	atomisp_css_input_set_mode(asd, IA_CSS_INPUT_MODE_FIFO);
 	atomisp_css_input_configure_port(asd,
 					 __get_mipi_port(isp, ATOMISP_CAMERA_PORT_PRIMARY), 2, 0xffff4,
 					 0, 0, 0, 0);
@@ -6081,8 +6081,8 @@ int atomisp_set_fmt_file(struct video_device *vdev, struct v4l2_format *f)
 int atomisp_set_shading_table(struct atomisp_sub_device *asd,
 			      struct atomisp_shading_table *user_shading_table)
 {
-	struct atomisp_css_shading_table *shading_table;
-	struct atomisp_css_shading_table *free_table;
+	struct ia_css_shading_table *shading_table;
+	struct ia_css_shading_table *free_table;
 	unsigned int len_table;
 	int i;
 	int ret = 0;
@@ -6583,31 +6583,31 @@ static int atomisp_get_pipe_id(struct atomisp_video_pipe *pipe)
 	struct atomisp_sub_device *asd = pipe->asd;
 
 	if (ATOMISP_USE_YUVPP(asd))
-		return CSS_PIPE_ID_YUVPP;
+		return IA_CSS_PIPE_ID_YUVPP;
 	else if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_SCALER)
-		return CSS_PIPE_ID_VIDEO;
+		return IA_CSS_PIPE_ID_VIDEO;
 	else if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_LOWLAT)
-		return CSS_PIPE_ID_CAPTURE;
+		return IA_CSS_PIPE_ID_CAPTURE;
 	else if (pipe == &asd->video_out_video_capture)
-		return CSS_PIPE_ID_VIDEO;
+		return IA_CSS_PIPE_ID_VIDEO;
 	else if (pipe == &asd->video_out_vf)
-		return CSS_PIPE_ID_CAPTURE;
+		return IA_CSS_PIPE_ID_CAPTURE;
 	else if (pipe == &asd->video_out_preview) {
 		if (asd->run_mode->val == ATOMISP_RUN_MODE_VIDEO)
-			return CSS_PIPE_ID_VIDEO;
+			return IA_CSS_PIPE_ID_VIDEO;
 		else
-			return CSS_PIPE_ID_PREVIEW;
+			return IA_CSS_PIPE_ID_PREVIEW;
 	} else if (pipe == &asd->video_out_capture) {
 		if (asd->copy_mode)
 			return IA_CSS_PIPE_ID_COPY;
 		else
-			return CSS_PIPE_ID_CAPTURE;
+			return IA_CSS_PIPE_ID_CAPTURE;
 	}
 
 	/* fail through */
 	dev_warn(asd->isp->dev, "%s failed to find proper pipe\n",
 		 __func__);
-	return CSS_PIPE_ID_CAPTURE;
+	return IA_CSS_PIPE_ID_CAPTURE;
 }
 
 int atomisp_get_invalid_frame_num(struct video_device *vdev,
@@ -6615,7 +6615,7 @@ int atomisp_get_invalid_frame_num(struct video_device *vdev,
 {
 	struct atomisp_video_pipe *pipe = atomisp_to_video_pipe(vdev);
 	struct atomisp_sub_device *asd = pipe->asd;
-	enum atomisp_css_pipe_id pipe_id;
+	enum ia_css_pipe_id pipe_id;
 	struct ia_css_pipe_info p_info;
 	int ret;
 
diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.h b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
index b5af9da3b0fb..6f9d287d8092 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.h
@@ -32,7 +32,7 @@
 #include "ia_css.h"
 
 struct atomisp_device;
-struct atomisp_css_frame;
+struct ia_css_frame;
 
 #define MSI_ENABLE_BIT		16
 #define INTR_DISABLE_BIT	10
@@ -88,7 +88,7 @@ const struct atomisp_format_bridge *get_atomisp_format_bridge_from_mbus(
     u32 mbus_code);
 bool atomisp_is_mbuscode_raw(uint32_t code);
 int atomisp_get_frame_pgnr(struct atomisp_device *isp,
-			   const struct atomisp_css_frame *frame, u32 *p_pgnr);
+			   const struct ia_css_frame *frame, u32 *p_pgnr);
 void atomisp_delayed_init_work(struct work_struct *work);
 
 /*
@@ -301,8 +301,8 @@ int atomisp_set_array_res(struct atomisp_sub_device *asd,
  * Function to calculate real zoom region for every pipe
  */
 int atomisp_calculate_real_zoom_region(struct atomisp_sub_device *asd,
-				       struct atomisp_css_dz_config   *dz_config,
-				       enum atomisp_css_pipe_id css_pipe_id);
+				       struct ia_css_dz_config   *dz_config,
+				       enum ia_css_pipe_id css_pipe_id);
 
 int atomisp_cp_general_isp_parameters(struct atomisp_sub_device *asd,
 				      struct atomisp_parameters *arg,
@@ -372,8 +372,8 @@ int atomisp_freq_scaling(struct atomisp_device *vdev,
 			 bool force);
 
 void atomisp_buf_done(struct atomisp_sub_device *asd, int error,
-		      enum atomisp_css_buffer_type buf_type,
-		      enum atomisp_css_pipe_id css_pipe_id,
+		      enum ia_css_buffer_type buf_type,
+		      enum ia_css_pipe_id css_pipe_id,
 		      bool q_buffers, enum atomisp_input_stream_id stream_id);
 
 void atomisp_css_flush(struct atomisp_device *isp);
diff --git a/drivers/staging/media/atomisp/pci/atomisp_common.h b/drivers/staging/media/atomisp/pci/atomisp_common.h
index 65c9caf72b7b..c3937a667a62 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_common.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_common.h
@@ -51,7 +51,7 @@ struct atomisp_format_bridge {
 	unsigned int pixelformat;
 	unsigned int depth;
 	u32 mbus_code;
-	enum atomisp_css_frame_format sh_fmt;
+	enum ia_css_frame_format sh_fmt;
 	unsigned char description[32];	/* the same as struct v4l2_fmtdesc */
 	bool planar;
 };
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat.h b/drivers/staging/media/atomisp/pci/atomisp_compat.h
index 205c530e8090..8847e104bb65 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat.h
@@ -23,100 +23,6 @@
 #include "../../include/linux/atomisp.h"
 #include <media/videobuf-vmalloc.h>
 
-#define CSS_RX_IRQ_INFO_BUFFER_OVERRUN \
-	CSS_ID(CSS_RX_IRQ_INFO_BUFFER_OVERRUN)
-#define CSS_RX_IRQ_INFO_ENTER_SLEEP_MODE \
-	CSS_ID(CSS_RX_IRQ_INFO_ENTER_SLEEP_MODE)
-#define CSS_RX_IRQ_INFO_EXIT_SLEEP_MODE \
-	CSS_ID(CSS_RX_IRQ_INFO_EXIT_SLEEP_MODE)
-#define CSS_RX_IRQ_INFO_ECC_CORRECTED \
-	CSS_ID(CSS_RX_IRQ_INFO_ECC_CORRECTED)
-#define CSS_RX_IRQ_INFO_ERR_SOT \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_SOT)
-#define CSS_RX_IRQ_INFO_ERR_SOT_SYNC \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_SOT_SYNC)
-#define CSS_RX_IRQ_INFO_ERR_CONTROL \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_CONTROL)
-#define CSS_RX_IRQ_INFO_ERR_ECC_DOUBLE \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_ECC_DOUBLE)
-#define CSS_RX_IRQ_INFO_ERR_CRC \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_CRC)
-#define CSS_RX_IRQ_INFO_ERR_UNKNOWN_ID \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_UNKNOWN_ID)
-#define CSS_RX_IRQ_INFO_ERR_FRAME_SYNC \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_FRAME_SYNC)
-#define CSS_RX_IRQ_INFO_ERR_FRAME_DATA \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_FRAME_DATA)
-#define CSS_RX_IRQ_INFO_ERR_DATA_TIMEOUT \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_DATA_TIMEOUT)
-#define CSS_RX_IRQ_INFO_ERR_UNKNOWN_ESC \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_UNKNOWN_ESC)
-#define CSS_RX_IRQ_INFO_ERR_LINE_SYNC \
-	CSS_ID(CSS_RX_IRQ_INFO_ERR_LINE_SYNC)
-#define CSS_RX_IRQ_INFO_INIT_TIMEOUT \
-	CSS_ID(CSS_RX_IRQ_INFO_INIT_TIMEOUT)
-
-#define CSS_IRQ_INFO_CSS_RECEIVER_SOF	CSS_ID(CSS_IRQ_INFO_CSS_RECEIVER_SOF)
-#define CSS_IRQ_INFO_CSS_RECEIVER_EOF	CSS_ID(CSS_IRQ_INFO_CSS_RECEIVER_EOF)
-#define CSS_IRQ_INFO_CSS_RECEIVER_FIFO_OVERFLOW \
-	CSS_ID(CSS_IRQ_INFO_CSS_RECEIVER_FIFO_OVERFLOW)
-#define CSS_EVENT_OUTPUT_FRAME_DONE	CSS_EVENT(OUTPUT_FRAME_DONE)
-#define CSS_EVENT_SEC_OUTPUT_FRAME_DONE	CSS_EVENT(SECOND_OUTPUT_FRAME_DONE)
-#define CSS_EVENT_VF_OUTPUT_FRAME_DONE	CSS_EVENT(VF_OUTPUT_FRAME_DONE)
-#define CSS_EVENT_SEC_VF_OUTPUT_FRAME_DONE	CSS_EVENT(SECOND_VF_OUTPUT_FRAME_DONE)
-#define CSS_EVENT_3A_STATISTICS_DONE	CSS_EVENT(3A_STATISTICS_DONE)
-#define CSS_EVENT_DIS_STATISTICS_DONE	CSS_EVENT(DIS_STATISTICS_DONE)
-#define CSS_EVENT_PIPELINE_DONE		CSS_EVENT(PIPELINE_DONE)
-#define CSS_EVENT_METADATA_DONE		CSS_EVENT(METADATA_DONE)
-#define CSS_EVENT_ACC_STAGE_COMPLETE	CSS_EVENT(ACC_STAGE_COMPLETE)
-#define CSS_EVENT_TIMER			CSS_EVENT(TIMER)
-
-#define CSS_BUFFER_TYPE_METADATA	CSS_ID(CSS_BUFFER_TYPE_METADATA)
-#define CSS_BUFFER_TYPE_3A_STATISTICS	CSS_ID(CSS_BUFFER_TYPE_3A_STATISTICS)
-#define CSS_BUFFER_TYPE_DIS_STATISTICS	CSS_ID(CSS_BUFFER_TYPE_DIS_STATISTICS)
-#define CSS_BUFFER_TYPE_INPUT_FRAME	CSS_ID(CSS_BUFFER_TYPE_INPUT_FRAME)
-#define CSS_BUFFER_TYPE_OUTPUT_FRAME	CSS_ID(CSS_BUFFER_TYPE_OUTPUT_FRAME)
-#define CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME	CSS_ID(CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME)
-#define CSS_BUFFER_TYPE_VF_OUTPUT_FRAME	CSS_ID(CSS_BUFFER_TYPE_VF_OUTPUT_FRAME)
-#define CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME	CSS_ID(CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME)
-#define CSS_BUFFER_TYPE_RAW_OUTPUT_FRAME \
-	CSS_ID(CSS_BUFFER_TYPE_RAW_OUTPUT_FRAME)
-
-#define CSS_FORMAT_RAW_8	CSS_FORMAT(RAW_8)
-#define CSS_FORMAT_RAW_10	CSS_FORMAT(RAW_10)
-#define CSS_FORMAT_RAW_12	CSS_FORMAT(RAW_12)
-#define CSS_FORMAT_RAW_16	CSS_FORMAT(RAW_16)
-
-#define CSS_CAPTURE_MODE_RAW		CSS_ID(CSS_CAPTURE_MODE_RAW)
-#define CSS_CAPTURE_MODE_BAYER		CSS_ID(CSS_CAPTURE_MODE_BAYER)
-#define CSS_CAPTURE_MODE_PRIMARY	CSS_ID(CSS_CAPTURE_MODE_PRIMARY)
-#define CSS_CAPTURE_MODE_ADVANCED	CSS_ID(CSS_CAPTURE_MODE_ADVANCED)
-#define CSS_CAPTURE_MODE_LOW_LIGHT	CSS_ID(CSS_CAPTURE_MODE_LOW_LIGHT)
-
-#define CSS_MORPH_TABLE_NUM_PLANES	CSS_ID(CSS_MORPH_TABLE_NUM_PLANES)
-
-#define CSS_FRAME_FORMAT_NV11		CSS_ID(CSS_FRAME_FORMAT_NV11)
-#define CSS_FRAME_FORMAT_NV12		CSS_ID(CSS_FRAME_FORMAT_NV12)
-#define CSS_FRAME_FORMAT_NV16		CSS_ID(CSS_FRAME_FORMAT_NV16)
-#define CSS_FRAME_FORMAT_NV21		CSS_ID(CSS_FRAME_FORMAT_NV21)
-#define CSS_FRAME_FORMAT_NV61		CSS_ID(CSS_FRAME_FORMAT_NV61)
-#define CSS_FRAME_FORMAT_YV12		CSS_ID(CSS_FRAME_FORMAT_YV12)
-#define CSS_FRAME_FORMAT_YV16		CSS_ID(CSS_FRAME_FORMAT_YV16)
-#define CSS_FRAME_FORMAT_YUV420		CSS_ID(CSS_FRAME_FORMAT_YUV420)
-#define CSS_FRAME_FORMAT_YUV420_16	CSS_ID(CSS_FRAME_FORMAT_YUV420_16)
-#define CSS_FRAME_FORMAT_YUV422		CSS_ID(CSS_FRAME_FORMAT_YUV422)
-#define CSS_FRAME_FORMAT_YUV422_16	CSS_ID(CSS_FRAME_FORMAT_YUV422_16)
-#define CSS_FRAME_FORMAT_UYVY		CSS_ID(CSS_FRAME_FORMAT_UYVY)
-#define CSS_FRAME_FORMAT_YUYV		CSS_ID(CSS_FRAME_FORMAT_YUYV)
-#define CSS_FRAME_FORMAT_YUV444		CSS_ID(CSS_FRAME_FORMAT_YUV444)
-#define CSS_FRAME_FORMAT_YUV_LINE	CSS_ID(CSS_FRAME_FORMAT_YUV_LINE)
-#define CSS_FRAME_FORMAT_RAW		CSS_ID(CSS_FRAME_FORMAT_RAW)
-#define CSS_FRAME_FORMAT_RGB565		CSS_ID(CSS_FRAME_FORMAT_RGB565)
-#define CSS_FRAME_FORMAT_PLANAR_RGB888	CSS_ID(CSS_FRAME_FORMAT_PLANAR_RGB888)
-#define CSS_FRAME_FORMAT_RGBA888	CSS_ID(CSS_FRAME_FORMAT_RGBA888)
-#define CSS_FRAME_FORMAT_QPLANE6	CSS_ID(CSS_FRAME_FORMAT_QPLANE6)
-#define CSS_FRAME_FORMAT_BINARY_8	CSS_ID(CSS_FRAME_FORMAT_BINARY_8)
-
 struct atomisp_device;
 struct atomisp_sub_device;
 struct video_device;
@@ -155,35 +61,35 @@ void atomisp_css_rx_clear_irq_info(enum mipi_port_id port,
 				   unsigned int infos);
 
 int atomisp_css_irq_enable(struct atomisp_device *isp,
-			   enum atomisp_css_irq_info info, bool enable);
+			   enum ia_css_irq_info info, bool enable);
 
 int atomisp_q_video_buffer_to_css(struct atomisp_sub_device *asd,
 				  struct videobuf_vmalloc_memory *vm_mem,
 				  enum atomisp_input_stream_id stream_id,
-				  enum atomisp_css_buffer_type css_buf_type,
-				  enum atomisp_css_pipe_id css_pipe_id);
+				  enum ia_css_buffer_type css_buf_type,
+				  enum ia_css_pipe_id css_pipe_id);
 
 int atomisp_q_s3a_buffer_to_css(struct atomisp_sub_device *asd,
 				struct atomisp_s3a_buf *s3a_buf,
 				enum atomisp_input_stream_id stream_id,
-				enum atomisp_css_pipe_id css_pipe_id);
+				enum ia_css_pipe_id css_pipe_id);
 
 int atomisp_q_metadata_buffer_to_css(struct atomisp_sub_device *asd,
 				     struct atomisp_metadata_buf *metadata_buf,
 				     enum atomisp_input_stream_id stream_id,
-				     enum atomisp_css_pipe_id css_pipe_id);
+				     enum ia_css_pipe_id css_pipe_id);
 
 int atomisp_q_dis_buffer_to_css(struct atomisp_sub_device *asd,
 				struct atomisp_dis_buf *dis_buf,
 				enum atomisp_input_stream_id stream_id,
-				enum atomisp_css_pipe_id css_pipe_id);
+				enum ia_css_pipe_id css_pipe_id);
 
 void atomisp_css_mmu_invalidate_cache(void);
 
 void atomisp_css_mmu_invalidate_tlb(void);
 
 int atomisp_css_start(struct atomisp_sub_device *asd,
-		      enum atomisp_css_pipe_id pipe_id, bool in_reset);
+		      enum ia_css_pipe_id pipe_id, bool in_reset);
 
 void atomisp_css_update_isp_params(struct atomisp_sub_device *asd);
 void atomisp_css_update_isp_params_on_pipe(struct atomisp_sub_device *asd,
@@ -191,14 +97,14 @@ void atomisp_css_update_isp_params_on_pipe(struct atomisp_sub_device *asd,
 
 int atomisp_css_queue_buffer(struct atomisp_sub_device *asd,
 			     enum atomisp_input_stream_id stream_id,
-			     enum atomisp_css_pipe_id pipe_id,
-			     enum atomisp_css_buffer_type buf_type,
+			     enum ia_css_pipe_id pipe_id,
+			     enum ia_css_buffer_type buf_type,
 			     struct atomisp_css_buffer *isp_css_buffer);
 
 int atomisp_css_dequeue_buffer(struct atomisp_sub_device *asd,
 			       enum atomisp_input_stream_id stream_id,
-			       enum atomisp_css_pipe_id pipe_id,
-			       enum atomisp_css_buffer_type buf_type,
+			       enum ia_css_pipe_id pipe_id,
+			       enum ia_css_buffer_type buf_type,
 			       struct atomisp_css_buffer *isp_css_buffer);
 
 int atomisp_css_allocate_stat_buffers(struct atomisp_sub_device *asd,
@@ -217,7 +123,7 @@ void atomisp_css_free_metadata_buffer(struct atomisp_metadata_buf
 				      *metadata_buf);
 
 int atomisp_css_get_grid_info(struct atomisp_sub_device *asd,
-			      enum atomisp_css_pipe_id pipe_id,
+			      enum ia_css_pipe_id pipe_id,
 			      int source_pad);
 
 int atomisp_alloc_3a_output_buf(struct atomisp_sub_device *asd);
@@ -287,7 +193,7 @@ void atomisp_css_input_set_binning_factor(struct atomisp_sub_device *asd,
 
 void atomisp_css_input_set_bayer_order(struct atomisp_sub_device *asd,
 				       enum atomisp_input_stream_id stream_id,
-				       enum atomisp_css_bayer_order bayer_order);
+				       enum ia_css_bayer_order bayer_order);
 
 void atomisp_css_input_set_format(struct atomisp_sub_device *asd,
 				  enum atomisp_input_stream_id stream_id,
@@ -312,10 +218,10 @@ void atomisp_css_enable_raw_binning(struct atomisp_sub_device *asd,
 void atomisp_css_enable_dz(struct atomisp_sub_device *asd, bool enable);
 
 void atomisp_css_capture_set_mode(struct atomisp_sub_device *asd,
-				  enum atomisp_css_capture_mode mode);
+				  enum ia_css_capture_mode mode);
 
 void atomisp_css_input_set_mode(struct atomisp_sub_device *asd,
-				enum atomisp_css_input_mode mode);
+				enum ia_css_input_mode mode);
 
 void atomisp_css_capture_enable_online(struct atomisp_sub_device *asd,
 				       unsigned short stream_index, bool enable);
@@ -341,24 +247,24 @@ int atomisp_css_input_configure_port(struct atomisp_sub_device *asd,
 				     unsigned int metadata_width,
 				     unsigned int metadata_height);
 
-int atomisp_css_frame_allocate(struct atomisp_css_frame **frame,
+int atomisp_css_frame_allocate(struct ia_css_frame **frame,
 			       unsigned int width, unsigned int height,
-			       enum atomisp_css_frame_format format,
+			       enum ia_css_frame_format format,
 			       unsigned int padded_width,
 			       unsigned int raw_bit_depth);
 
-int atomisp_css_frame_allocate_from_info(struct atomisp_css_frame **frame,
-	const struct atomisp_css_frame_info *info);
+int atomisp_css_frame_allocate_from_info(struct ia_css_frame **frame,
+	const struct ia_css_frame_info *info);
 
-void atomisp_css_frame_free(struct atomisp_css_frame *frame);
+void atomisp_css_frame_free(struct ia_css_frame *frame);
 
-int atomisp_css_frame_map(struct atomisp_css_frame **frame,
-			  const struct atomisp_css_frame_info *info,
+int atomisp_css_frame_map(struct ia_css_frame **frame,
+			  const struct ia_css_frame_info *info,
 			  const void __user *data, uint16_t attribute,
 			  void *context);
 
 int atomisp_css_set_black_frame(struct atomisp_sub_device *asd,
-				const struct atomisp_css_frame *raw_black_frame);
+				const struct ia_css_frame *raw_black_frame);
 
 int atomisp_css_allocate_continuous_frames(bool init_time,
 	struct atomisp_sub_device *asd);
@@ -369,7 +275,7 @@ void atomisp_create_pipes_stream(struct atomisp_sub_device *asd);
 void atomisp_destroy_pipes_stream_force(struct atomisp_sub_device *asd);
 
 int atomisp_css_stop(struct atomisp_sub_device *asd,
-		     enum atomisp_css_pipe_id pipe_id, bool in_reset);
+		     enum ia_css_pipe_id pipe_id, bool in_reset);
 
 int atomisp_css_continuous_set_num_raw_frames(
     struct atomisp_sub_device *asd,
@@ -382,89 +288,89 @@ int atomisp_css_copy_configure_output(struct atomisp_sub_device *asd,
 				      unsigned int stream_index,
 				      unsigned int width, unsigned int height,
 				      unsigned int padded_width,
-				      enum atomisp_css_frame_format format);
+				      enum ia_css_frame_format format);
 
 int atomisp_css_yuvpp_configure_output(struct atomisp_sub_device *asd,
 				       unsigned int stream_index,
 				       unsigned int width, unsigned int height,
 				       unsigned int padded_width,
-				       enum atomisp_css_frame_format format);
+				       enum ia_css_frame_format format);
 
 int atomisp_css_yuvpp_configure_viewfinder(
     struct atomisp_sub_device *asd,
     unsigned int stream_index,
     unsigned int width, unsigned int height,
     unsigned int min_width,
-    enum atomisp_css_frame_format format);
+    enum ia_css_frame_format format);
 
 int atomisp_css_yuvpp_get_output_frame_info(
     struct atomisp_sub_device *asd,
     unsigned int stream_index,
-    struct atomisp_css_frame_info *info);
+    struct ia_css_frame_info *info);
 
 int atomisp_css_yuvpp_get_viewfinder_frame_info(
     struct atomisp_sub_device *asd,
     unsigned int stream_index,
-    struct atomisp_css_frame_info *info);
+    struct ia_css_frame_info *info);
 
 int atomisp_css_preview_configure_output(struct atomisp_sub_device *asd,
 	unsigned int width, unsigned int height,
 	unsigned int min_width,
-	enum atomisp_css_frame_format format);
+	enum ia_css_frame_format format);
 
 int atomisp_css_capture_configure_output(struct atomisp_sub_device *asd,
 	unsigned int width, unsigned int height,
 	unsigned int min_width,
-	enum atomisp_css_frame_format format);
+	enum ia_css_frame_format format);
 
 int atomisp_css_video_configure_output(struct atomisp_sub_device *asd,
 				       unsigned int width, unsigned int height,
 				       unsigned int min_width,
-				       enum atomisp_css_frame_format format);
+				       enum ia_css_frame_format format);
 
 int atomisp_get_css_frame_info(struct atomisp_sub_device *asd,
 			       u16 source_pad,
-			       struct atomisp_css_frame_info *frame_info);
+			       struct ia_css_frame_info *frame_info);
 
 int atomisp_css_video_configure_viewfinder(struct atomisp_sub_device *asd,
 	unsigned int width, unsigned int height,
 	unsigned int min_width,
-	enum atomisp_css_frame_format format);
+	enum ia_css_frame_format format);
 
 int atomisp_css_capture_configure_viewfinder(
     struct atomisp_sub_device *asd,
     unsigned int width, unsigned int height,
     unsigned int min_width,
-    enum atomisp_css_frame_format format);
+    enum ia_css_frame_format format);
 
 int atomisp_css_video_get_viewfinder_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info);
+    struct ia_css_frame_info *info);
 
 int atomisp_css_capture_get_viewfinder_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info);
+    struct ia_css_frame_info *info);
 
 int atomisp_css_copy_get_output_frame_info(
     struct atomisp_sub_device *asd,
     unsigned int stream_index,
-    struct atomisp_css_frame_info *info);
+    struct ia_css_frame_info *info);
 
 int atomisp_css_capture_get_output_raw_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info);
+    struct ia_css_frame_info *info);
 
 int atomisp_css_preview_get_output_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info);
+    struct ia_css_frame_info *info);
 
 int atomisp_css_capture_get_output_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info);
+    struct ia_css_frame_info *info);
 
 int atomisp_css_video_get_output_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info);
+    struct ia_css_frame_info *info);
 
 int atomisp_css_preview_configure_pp_input(
     struct atomisp_sub_device *asd,
@@ -495,51 +401,51 @@ bool atomisp_css_isp_has_started(void);
 void atomisp_css_request_flash(struct atomisp_sub_device *asd);
 
 void atomisp_css_set_wb_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_wb_config *wb_config);
+			       struct ia_css_wb_config *wb_config);
 
 void atomisp_css_set_ob_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_ob_config *ob_config);
+			       struct ia_css_ob_config *ob_config);
 
 void atomisp_css_set_dp_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_dp_config *dp_config);
+			       struct ia_css_dp_config *dp_config);
 
 void atomisp_css_set_de_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_de_config *de_config);
+			       struct ia_css_de_config *de_config);
 
 void atomisp_css_set_dz_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_dz_config *dz_config);
+			       struct ia_css_dz_config *dz_config);
 
 void atomisp_css_set_default_de_config(struct atomisp_sub_device *asd);
 
 void atomisp_css_set_ce_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_ce_config *ce_config);
+			       struct ia_css_ce_config *ce_config);
 
 void atomisp_css_set_nr_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_nr_config *nr_config);
+			       struct ia_css_nr_config *nr_config);
 
 void atomisp_css_set_ee_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_ee_config *ee_config);
+			       struct ia_css_ee_config *ee_config);
 
 void atomisp_css_set_tnr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_tnr_config *tnr_config);
+				struct ia_css_tnr_config *tnr_config);
 
 void atomisp_css_set_cc_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_cc_config *cc_config);
+			       struct ia_css_cc_config *cc_config);
 
 void atomisp_css_set_macc_table(struct atomisp_sub_device *asd,
-				struct atomisp_css_macc_table *macc_table);
+				struct ia_css_macc_table *macc_table);
 
 void atomisp_css_set_gamma_table(struct atomisp_sub_device *asd,
-				 struct atomisp_css_gamma_table *gamma_table);
+				 struct ia_css_gamma_table *gamma_table);
 
 void atomisp_css_set_ctc_table(struct atomisp_sub_device *asd,
-			       struct atomisp_css_ctc_table *ctc_table);
+			       struct ia_css_ctc_table *ctc_table);
 
 void atomisp_css_set_gc_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_gc_config *gc_config);
+			       struct ia_css_gc_config *gc_config);
 
 void atomisp_css_set_3a_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_3a_config *s3a_config);
+			       struct ia_css_3a_config *s3a_config);
 
 void atomisp_css_video_set_dis_vector(struct atomisp_sub_device *asd,
 				      struct atomisp_dis_vector *vector);
@@ -590,29 +496,29 @@ int atomisp_css_get_formats_config(struct atomisp_sub_device *asd,
 				   struct atomisp_formats_config *formats_config);
 
 void atomisp_css_set_formats_config(struct atomisp_sub_device *asd,
-				    struct atomisp_css_formats_config *formats_config);
+				    struct ia_css_formats_config *formats_config);
 
 int atomisp_css_get_zoom_factor(struct atomisp_sub_device *asd,
 				unsigned int *zoom);
 
-struct atomisp_css_shading_table *atomisp_css_shading_table_alloc(
+struct ia_css_shading_table *atomisp_css_shading_table_alloc(
     unsigned int width, unsigned int height);
 
 void atomisp_css_set_shading_table(struct atomisp_sub_device *asd,
-				   struct atomisp_css_shading_table *table);
+				   struct ia_css_shading_table *table);
 
-void atomisp_css_shading_table_free(struct atomisp_css_shading_table *table);
+void atomisp_css_shading_table_free(struct ia_css_shading_table *table);
 
-struct atomisp_css_morph_table *atomisp_css_morph_table_allocate(
+struct ia_css_morph_table *atomisp_css_morph_table_allocate(
     unsigned int width, unsigned int height);
 
 void atomisp_css_set_morph_table(struct atomisp_sub_device *asd,
-				 struct atomisp_css_morph_table *table);
+				 struct ia_css_morph_table *table);
 
 void atomisp_css_get_morph_table(struct atomisp_sub_device *asd,
-				 struct atomisp_css_morph_table *table);
+				 struct ia_css_morph_table *table);
 
-void atomisp_css_morph_table_free(struct atomisp_css_morph_table *table);
+void atomisp_css_morph_table_free(struct ia_css_morph_table *table);
 
 void atomisp_css_set_cont_prev_start_time(struct atomisp_device *isp,
 	unsigned int overlap);
@@ -631,20 +537,20 @@ int atomisp_css_stop_acc_pipe(struct atomisp_sub_device *asd);
 void atomisp_css_destroy_acc_pipe(struct atomisp_sub_device *asd);
 
 int atomisp_css_load_acc_extension(struct atomisp_sub_device *asd,
-				   struct atomisp_css_fw_info *fw,
-				   enum atomisp_css_pipe_id pipe_id,
+				   struct ia_css_fw_info *fw,
+				   enum ia_css_pipe_id pipe_id,
 				   unsigned int type);
 
 void atomisp_css_unload_acc_extension(struct atomisp_sub_device *asd,
-				      struct atomisp_css_fw_info *fw,
-				      enum atomisp_css_pipe_id pipe_id);
+				      struct ia_css_fw_info *fw,
+				      enum ia_css_pipe_id pipe_id);
 
 int atomisp_css_wait_acc_finish(struct atomisp_sub_device *asd);
 
 void atomisp_css_acc_done(struct atomisp_sub_device *asd);
 
 int atomisp_css_load_acc_binary(struct atomisp_sub_device *asd,
-				struct atomisp_css_fw_info *fw,
+				struct ia_css_fw_info *fw,
 				unsigned int index);
 
 void atomisp_css_unload_acc_binary(struct atomisp_sub_device *asd);
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 95825ded113a..06aba734194a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -216,7 +216,7 @@ static int hmm_get_mmu_base_addr(unsigned int *mmu_base_addr)
 }
 
 static void atomisp_isp_parameters_clean_up(
-    struct atomisp_css_isp_config *config)
+    struct ia_css_isp_config *config)
 {
 	/*
 	 * Set NULL to configs pointer to avoid they are set into isp again when
@@ -645,7 +645,7 @@ static void __apply_additional_pipe_config(
 		/* enable capture pp/dz manually or digital zoom would
 		 * fail*/
 		if (stream_env->pipe_configs[pipe_id].
-		    default_capture_config.mode == CSS_CAPTURE_MODE_RAW)
+		    default_capture_config.mode == IA_CSS_CAPTURE_MODE_RAW)
 			stream_env->pipe_configs[pipe_id].enable_dz = false;
 
 		if (atomisp_hw_is_isp2401) {
@@ -699,7 +699,7 @@ static bool is_pipe_valid_to_current_run_mode(struct atomisp_sub_device *asd,
 	if (!asd)
 		return false;
 
-	if (pipe_id == CSS_PIPE_ID_ACC || pipe_id == CSS_PIPE_ID_YUVPP)
+	if (pipe_id == IA_CSS_PIPE_ID_ACC || pipe_id == IA_CSS_PIPE_ID_YUVPP)
 		return true;
 
 	if (asd->vfpp) {
@@ -773,11 +773,11 @@ static int __create_pipe(struct atomisp_sub_device *asd,
 	if (pipe_id >= IA_CSS_PIPE_ID_NUM)
 		return -EINVAL;
 
-	if (pipe_id != CSS_PIPE_ID_ACC &&
+	if (pipe_id != IA_CSS_PIPE_ID_ACC &&
 	    !stream_env->pipe_configs[pipe_id].output_info[0].res.width)
 		return 0;
 
-	if (pipe_id == CSS_PIPE_ID_ACC &&
+	if (pipe_id == IA_CSS_PIPE_ID_ACC &&
 	    !stream_env->pipe_configs[pipe_id].acc_extension)
 		return 0;
 
@@ -1038,7 +1038,7 @@ void atomisp_css_rx_clear_irq_info(enum mipi_port_id port,
 }
 
 int atomisp_css_irq_enable(struct atomisp_device *isp,
-			   enum atomisp_css_irq_info info, bool enable)
+			   enum ia_css_irq_info info, bool enable)
 {
 	dev_dbg(isp->dev, "%s: css irq info 0x%08x: %s.\n",
 		__func__, info,
@@ -1072,8 +1072,8 @@ void atomisp_css_init_struct(struct atomisp_sub_device *asd)
 int atomisp_q_video_buffer_to_css(struct atomisp_sub_device *asd,
 				  struct videobuf_vmalloc_memory *vm_mem,
 				  enum atomisp_input_stream_id stream_id,
-				  enum atomisp_css_buffer_type css_buf_type,
-				  enum atomisp_css_pipe_id css_pipe_id)
+				  enum ia_css_buffer_type css_buf_type,
+				  enum ia_css_pipe_id css_pipe_id)
 {
 	struct atomisp_stream_env *stream_env = &asd->stream_env[stream_id];
 	struct ia_css_buffer css_buf = {0};
@@ -1093,7 +1093,7 @@ int atomisp_q_video_buffer_to_css(struct atomisp_sub_device *asd,
 int atomisp_q_metadata_buffer_to_css(struct atomisp_sub_device *asd,
 				     struct atomisp_metadata_buf *metadata_buf,
 				     enum atomisp_input_stream_id stream_id,
-				     enum atomisp_css_pipe_id css_pipe_id)
+				     enum ia_css_pipe_id css_pipe_id)
 {
 	struct atomisp_stream_env *stream_env = &asd->stream_env[stream_id];
 	struct ia_css_buffer buffer = {0};
@@ -1113,7 +1113,7 @@ int atomisp_q_metadata_buffer_to_css(struct atomisp_sub_device *asd,
 int atomisp_q_s3a_buffer_to_css(struct atomisp_sub_device *asd,
 				struct atomisp_s3a_buf *s3a_buf,
 				enum atomisp_input_stream_id stream_id,
-				enum atomisp_css_pipe_id css_pipe_id)
+				enum ia_css_pipe_id css_pipe_id)
 {
 	struct atomisp_stream_env *stream_env = &asd->stream_env[stream_id];
 	struct ia_css_buffer buffer = {0};
@@ -1134,7 +1134,7 @@ int atomisp_q_s3a_buffer_to_css(struct atomisp_sub_device *asd,
 int atomisp_q_dis_buffer_to_css(struct atomisp_sub_device *asd,
 				struct atomisp_dis_buf *dis_buf,
 				enum atomisp_input_stream_id stream_id,
-				enum atomisp_css_pipe_id css_pipe_id)
+				enum ia_css_pipe_id css_pipe_id)
 {
 	struct atomisp_stream_env *stream_env = &asd->stream_env[stream_id];
 	struct ia_css_buffer buffer = {0};
@@ -1163,7 +1163,7 @@ void atomisp_css_mmu_invalidate_tlb(void)
 }
 
 int atomisp_css_start(struct atomisp_sub_device *asd,
-		      enum atomisp_css_pipe_id pipe_id, bool in_reset)
+		      enum ia_css_pipe_id pipe_id, bool in_reset)
 {
 	struct atomisp_device *isp = asd->isp;
 	bool sp_is_started = false;
@@ -1314,8 +1314,8 @@ void atomisp_css_update_isp_params_on_pipe(struct atomisp_sub_device *asd,
 
 int atomisp_css_queue_buffer(struct atomisp_sub_device *asd,
 			     enum atomisp_input_stream_id stream_id,
-			     enum atomisp_css_pipe_id pipe_id,
-			     enum atomisp_css_buffer_type buf_type,
+			     enum ia_css_pipe_id pipe_id,
+			     enum ia_css_buffer_type buf_type,
 			     struct atomisp_css_buffer *isp_css_buffer)
 {
 	if (ia_css_pipe_enqueue_buffer(
@@ -1329,8 +1329,8 @@ int atomisp_css_queue_buffer(struct atomisp_sub_device *asd,
 
 int atomisp_css_dequeue_buffer(struct atomisp_sub_device *asd,
 			       enum atomisp_input_stream_id stream_id,
-			       enum atomisp_css_pipe_id pipe_id,
-			       enum atomisp_css_buffer_type buf_type,
+			       enum ia_css_pipe_id pipe_id,
+			       enum ia_css_buffer_type buf_type,
 			       struct atomisp_css_buffer *isp_css_buffer)
 {
 	struct atomisp_device *isp = asd->isp;
@@ -1355,7 +1355,7 @@ int atomisp_css_allocate_stat_buffers(struct atomisp_sub_device   *asd,
 				      struct atomisp_metadata_buf *md_buf)
 {
 	struct atomisp_device *isp = asd->isp;
-	struct atomisp_css_dvs_grid_info *dvs_grid_info =
+	struct ia_css_dvs_grid_info *dvs_grid_info =
 	    atomisp_css_get_dvs_grid_info(&asd->params.curr_grid_info);
 
 	if (s3a_buf && asd->params.curr_grid_info.s3a_grid.enable) {
@@ -1442,7 +1442,7 @@ void atomisp_css_free_stat_buffers(struct atomisp_sub_device *asd)
 	struct atomisp_s3a_buf *s3a_buf, *_s3a_buf;
 	struct atomisp_dis_buf *dis_buf, *_dis_buf;
 	struct atomisp_metadata_buf *md_buf, *_md_buf;
-	struct atomisp_css_dvs_grid_info *dvs_grid_info =
+	struct ia_css_dvs_grid_info *dvs_grid_info =
 	    atomisp_css_get_dvs_grid_info(&asd->params.curr_grid_info);
 	unsigned int i;
 
@@ -1524,7 +1524,7 @@ void atomisp_css_free_stat_buffers(struct atomisp_sub_device *asd)
 }
 
 int atomisp_css_get_grid_info(struct atomisp_sub_device *asd,
-			      enum atomisp_css_pipe_id pipe_id,
+			      enum ia_css_pipe_id pipe_id,
 			      int source_pad)
 {
 	struct ia_css_pipe_info p_info;
@@ -1553,7 +1553,7 @@ int atomisp_css_get_grid_info(struct atomisp_sub_device *asd,
 	 * Currently would have one css pipe that need it
 	 */
 	if (asd->params.curr_grid_info.s3a_grid.enable) {
-		if (asd->params.s3a_enabled_pipe != CSS_PIPE_ID_NUM)
+		if (asd->params.s3a_enabled_pipe != IA_CSS_PIPE_ID_NUM)
 			dev_dbg(isp->dev, "css pipe %d enabled s3a grid replaced by: %d.\n",
 				asd->params.s3a_enabled_pipe, pipe_id);
 		asd->params.s3a_enabled_pipe = pipe_id;
@@ -1603,7 +1603,7 @@ int atomisp_alloc_3a_output_buf(struct atomisp_sub_device *asd)
 
 int atomisp_alloc_dis_coef_buf(struct atomisp_sub_device *asd)
 {
-	struct atomisp_css_dvs_grid_info *dvs_grid =
+	struct ia_css_dvs_grid_info *dvs_grid =
 	    atomisp_css_get_dvs_grid_info(&asd->params.curr_grid_info);
 
 	if (!dvs_grid)
@@ -1753,7 +1753,7 @@ void atomisp_css_input_set_binning_factor(struct atomisp_sub_device *asd,
 
 void atomisp_css_input_set_bayer_order(struct atomisp_sub_device *asd,
 				       enum atomisp_input_stream_id stream_id,
-				       enum atomisp_css_bayer_order bayer_order)
+				       enum ia_css_bayer_order bayer_order)
 {
 	struct ia_css_stream_config *s_config =
 		    &asd->stream_env[stream_id].stream_config;
@@ -1959,7 +1959,7 @@ void atomisp_css_enable_dz(struct atomisp_sub_device *asd, bool enable)
 }
 
 void atomisp_css_capture_set_mode(struct atomisp_sub_device *asd,
-				  enum atomisp_css_capture_mode mode)
+				  enum ia_css_capture_mode mode)
 {
 	struct atomisp_stream_env *stream_env =
 		    &asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL];
@@ -1974,7 +1974,7 @@ void atomisp_css_capture_set_mode(struct atomisp_sub_device *asd,
 }
 
 void atomisp_css_input_set_mode(struct atomisp_sub_device *asd,
-				enum atomisp_css_input_mode mode)
+				enum ia_css_input_mode mode)
 {
 	int i;
 	struct atomisp_device *isp = asd->isp;
@@ -2157,9 +2157,9 @@ int atomisp_css_input_configure_port(
 	return 0;
 }
 
-int atomisp_css_frame_allocate(struct atomisp_css_frame **frame,
+int atomisp_css_frame_allocate(struct ia_css_frame **frame,
 			       unsigned int width, unsigned int height,
-			       enum atomisp_css_frame_format format,
+			       enum ia_css_frame_format format,
 			       unsigned int padded_width,
 			       unsigned int raw_bit_depth)
 {
@@ -2170,8 +2170,8 @@ int atomisp_css_frame_allocate(struct atomisp_css_frame **frame,
 	return 0;
 }
 
-int atomisp_css_frame_allocate_from_info(struct atomisp_css_frame **frame,
-	const struct atomisp_css_frame_info *info)
+int atomisp_css_frame_allocate_from_info(struct ia_css_frame **frame,
+	const struct ia_css_frame_info *info)
 {
 	if (ia_css_frame_allocate_from_info(frame, info) != IA_CSS_SUCCESS)
 		return -ENOMEM;
@@ -2179,13 +2179,13 @@ int atomisp_css_frame_allocate_from_info(struct atomisp_css_frame **frame,
 	return 0;
 }
 
-void atomisp_css_frame_free(struct atomisp_css_frame *frame)
+void atomisp_css_frame_free(struct ia_css_frame *frame)
 {
 	ia_css_frame_free(frame);
 }
 
-int atomisp_css_frame_map(struct atomisp_css_frame **frame,
-			  const struct atomisp_css_frame_info *info,
+int atomisp_css_frame_map(struct ia_css_frame **frame,
+			  const struct ia_css_frame_info *info,
 			  const void __user *data, uint16_t attribute,
 			  void *context)
 {
@@ -2197,7 +2197,7 @@ int atomisp_css_frame_map(struct atomisp_css_frame **frame,
 }
 
 int atomisp_css_set_black_frame(struct atomisp_sub_device *asd,
-				const struct atomisp_css_frame *raw_black_frame)
+				const struct ia_css_frame *raw_black_frame)
 {
 	if (sh_css_set_black_frame(
 		asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream,
@@ -2224,7 +2224,7 @@ void atomisp_css_update_continuous_frames(struct atomisp_sub_device *asd)
 }
 
 int atomisp_css_stop(struct atomisp_sub_device *asd,
-		     enum atomisp_css_pipe_id pipe_id, bool in_reset)
+		     enum ia_css_pipe_id pipe_id, bool in_reset)
 {
 	struct atomisp_device *isp = asd->isp;
 	struct atomisp_s3a_buf *s3a_buf;
@@ -2749,7 +2749,7 @@ static void __configure_video_pp_input(struct atomisp_sub_device *asd,
 static void __configure_vf_output(struct atomisp_sub_device *asd,
 				  unsigned int width, unsigned int height,
 				  unsigned int min_width,
-				  enum atomisp_css_frame_format format,
+				  enum ia_css_frame_format format,
 				  enum ia_css_pipe_id pipe_id)
 {
 	struct atomisp_device *isp = asd->isp;
@@ -2772,7 +2772,7 @@ static void __configure_vf_output(struct atomisp_sub_device *asd,
 static void __configure_video_vf_output(struct atomisp_sub_device *asd,
 					unsigned int width, unsigned int height,
 					unsigned int min_width,
-					enum atomisp_css_frame_format format,
+					enum ia_css_frame_format format,
 					enum ia_css_pipe_id pipe_id)
 {
 	struct atomisp_device *isp = asd->isp;
@@ -2807,7 +2807,7 @@ static void __configure_video_vf_output(struct atomisp_sub_device *asd,
 
 static int __get_frame_info(struct atomisp_sub_device *asd,
 			    unsigned int stream_index,
-			    struct atomisp_css_frame_info *info,
+			    struct ia_css_frame_info *info,
 			    enum frame_info_type type,
 			    enum ia_css_pipe_id pipe_id)
 {
@@ -2910,7 +2910,7 @@ static unsigned int atomisp_get_pipe_index(struct atomisp_sub_device *asd,
 
 int atomisp_get_css_frame_info(struct atomisp_sub_device *asd,
 			       u16 source_pad,
-			       struct atomisp_css_frame_info *frame_info)
+			       struct ia_css_frame_info *frame_info)
 {
 	struct ia_css_pipe_info info;
 	int pipe_index = atomisp_get_pipe_index(asd, source_pad);
@@ -2978,11 +2978,11 @@ int atomisp_css_copy_configure_output(struct atomisp_sub_device *asd,
 				      unsigned int stream_index,
 				      unsigned int width, unsigned int height,
 				      unsigned int padded_width,
-				      enum atomisp_css_frame_format format)
+				      enum ia_css_frame_format format)
 {
 	asd->stream_env[stream_index].pipe_configs[IA_CSS_PIPE_ID_COPY].
 	default_capture_config.mode =
-	    CSS_CAPTURE_MODE_RAW;
+	    IA_CSS_CAPTURE_MODE_RAW;
 
 	__configure_output(asd, stream_index, width, height, padded_width,
 			   format, IA_CSS_PIPE_ID_COPY);
@@ -2993,11 +2993,11 @@ int atomisp_css_yuvpp_configure_output(struct atomisp_sub_device *asd,
 				       unsigned int stream_index,
 				       unsigned int width, unsigned int height,
 				       unsigned int padded_width,
-				       enum atomisp_css_frame_format format)
+				       enum ia_css_frame_format format)
 {
 	asd->stream_env[stream_index].pipe_configs[IA_CSS_PIPE_ID_YUVPP].
 	default_capture_config.mode =
-	    CSS_CAPTURE_MODE_RAW;
+	    IA_CSS_CAPTURE_MODE_RAW;
 
 	__configure_output(asd, stream_index, width, height, padded_width,
 			   format, IA_CSS_PIPE_ID_YUVPP);
@@ -3009,7 +3009,7 @@ int atomisp_css_yuvpp_configure_viewfinder(
     unsigned int stream_index,
     unsigned int width, unsigned int height,
     unsigned int min_width,
-    enum atomisp_css_frame_format format)
+    enum ia_css_frame_format format)
 {
 	struct atomisp_stream_env *stream_env =
 		    &asd->stream_env[stream_index];
@@ -3030,7 +3030,7 @@ int atomisp_css_yuvpp_configure_viewfinder(
 int atomisp_css_yuvpp_get_output_frame_info(
     struct atomisp_sub_device *asd,
     unsigned int stream_index,
-    struct atomisp_css_frame_info *info)
+    struct ia_css_frame_info *info)
 {
 	return __get_frame_info(asd, stream_index, info,
 				ATOMISP_CSS_OUTPUT_FRAME, IA_CSS_PIPE_ID_YUVPP);
@@ -3039,7 +3039,7 @@ int atomisp_css_yuvpp_get_output_frame_info(
 int atomisp_css_yuvpp_get_viewfinder_frame_info(
     struct atomisp_sub_device *asd,
     unsigned int stream_index,
-    struct atomisp_css_frame_info *info)
+    struct ia_css_frame_info *info)
 {
 	return __get_frame_info(asd, stream_index, info,
 				ATOMISP_CSS_VF_FRAME, IA_CSS_PIPE_ID_YUVPP);
@@ -3048,7 +3048,7 @@ int atomisp_css_yuvpp_get_viewfinder_frame_info(
 int atomisp_css_preview_configure_output(struct atomisp_sub_device *asd,
 	unsigned int width, unsigned int height,
 	unsigned int min_width,
-	enum atomisp_css_frame_format format)
+	enum ia_css_frame_format format)
 {
 	/*
 	 * to SOC camera, use yuvpp pipe.
@@ -3066,7 +3066,7 @@ int atomisp_css_preview_configure_output(struct atomisp_sub_device *asd,
 int atomisp_css_capture_configure_output(struct atomisp_sub_device *asd,
 	unsigned int width, unsigned int height,
 	unsigned int min_width,
-	enum atomisp_css_frame_format format)
+	enum ia_css_frame_format format)
 {
 	enum ia_css_pipe_id pipe_id;
 
@@ -3086,7 +3086,7 @@ int atomisp_css_capture_configure_output(struct atomisp_sub_device *asd,
 int atomisp_css_video_configure_output(struct atomisp_sub_device *asd,
 				       unsigned int width, unsigned int height,
 				       unsigned int min_width,
-				       enum atomisp_css_frame_format format)
+				       enum ia_css_frame_format format)
 {
 	/*
 	 * to SOC camera, use yuvpp pipe.
@@ -3105,7 +3105,7 @@ int atomisp_css_video_configure_viewfinder(
     struct atomisp_sub_device *asd,
     unsigned int width, unsigned int height,
     unsigned int min_width,
-    enum atomisp_css_frame_format format)
+    enum ia_css_frame_format format)
 {
 	/*
 	 * to SOC camera, video will use yuvpp pipe.
@@ -3123,7 +3123,7 @@ int atomisp_css_capture_configure_viewfinder(
     struct atomisp_sub_device *asd,
     unsigned int width, unsigned int height,
     unsigned int min_width,
-    enum atomisp_css_frame_format format)
+    enum ia_css_frame_format format)
 {
 	enum ia_css_pipe_id pipe_id;
 
@@ -3142,7 +3142,7 @@ int atomisp_css_capture_configure_viewfinder(
 
 int atomisp_css_video_get_viewfinder_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info)
+    struct ia_css_frame_info *info)
 {
 	enum ia_css_pipe_id pipe_id;
 	enum frame_info_type frame_type = ATOMISP_CSS_VF_FRAME;
@@ -3161,7 +3161,7 @@ int atomisp_css_video_get_viewfinder_frame_info(
 
 int atomisp_css_capture_get_viewfinder_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info)
+    struct ia_css_frame_info *info)
 {
 	enum ia_css_pipe_id pipe_id;
 
@@ -3176,7 +3176,7 @@ int atomisp_css_capture_get_viewfinder_frame_info(
 
 int atomisp_css_capture_get_output_raw_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info)
+    struct ia_css_frame_info *info)
 {
 	if (ATOMISP_USE_YUVPP(asd))
 		return 0;
@@ -3188,7 +3188,7 @@ int atomisp_css_capture_get_output_raw_frame_info(
 int atomisp_css_copy_get_output_frame_info(
     struct atomisp_sub_device *asd,
     unsigned int stream_index,
-    struct atomisp_css_frame_info *info)
+    struct ia_css_frame_info *info)
 {
 	return __get_frame_info(asd, stream_index, info,
 				ATOMISP_CSS_OUTPUT_FRAME, IA_CSS_PIPE_ID_COPY);
@@ -3196,7 +3196,7 @@ int atomisp_css_copy_get_output_frame_info(
 
 int atomisp_css_preview_get_output_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info)
+    struct ia_css_frame_info *info)
 {
 	enum ia_css_pipe_id pipe_id;
 	enum frame_info_type frame_type = ATOMISP_CSS_OUTPUT_FRAME;
@@ -3215,7 +3215,7 @@ int atomisp_css_preview_get_output_frame_info(
 
 int atomisp_css_capture_get_output_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info)
+    struct ia_css_frame_info *info)
 {
 	enum ia_css_pipe_id pipe_id;
 
@@ -3230,7 +3230,7 @@ int atomisp_css_capture_get_output_frame_info(
 
 int atomisp_css_video_get_output_frame_info(
     struct atomisp_sub_device *asd,
-    struct atomisp_css_frame_info *info)
+    struct ia_css_frame_info *info)
 {
 	enum ia_css_pipe_id pipe_id;
 	enum frame_info_type frame_type = ATOMISP_CSS_OUTPUT_FRAME;
@@ -3377,31 +3377,31 @@ void atomisp_css_request_flash(struct atomisp_sub_device *asd)
 }
 
 void atomisp_css_set_wb_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_wb_config *wb_config)
+			       struct ia_css_wb_config *wb_config)
 {
 	asd->params.config.wb_config = wb_config;
 }
 
 void atomisp_css_set_ob_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_ob_config *ob_config)
+			       struct ia_css_ob_config *ob_config)
 {
 	asd->params.config.ob_config = ob_config;
 }
 
 void atomisp_css_set_dp_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_dp_config *dp_config)
+			       struct ia_css_dp_config *dp_config)
 {
 	asd->params.config.dp_config = dp_config;
 }
 
 void atomisp_css_set_de_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_de_config *de_config)
+			       struct ia_css_de_config *de_config)
 {
 	asd->params.config.de_config = de_config;
 }
 
 void atomisp_css_set_dz_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_dz_config *dz_config)
+			       struct ia_css_dz_config *dz_config)
 {
 	asd->params.config.dz_config = dz_config;
 }
@@ -3412,145 +3412,145 @@ void atomisp_css_set_default_de_config(struct atomisp_sub_device *asd)
 }
 
 void atomisp_css_set_ce_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_ce_config *ce_config)
+			       struct ia_css_ce_config *ce_config)
 {
 	asd->params.config.ce_config = ce_config;
 }
 
 void atomisp_css_set_nr_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_nr_config *nr_config)
+			       struct ia_css_nr_config *nr_config)
 {
 	asd->params.config.nr_config = nr_config;
 }
 
 void atomisp_css_set_ee_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_ee_config *ee_config)
+			       struct ia_css_ee_config *ee_config)
 {
 	asd->params.config.ee_config = ee_config;
 }
 
 void atomisp_css_set_tnr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_tnr_config *tnr_config)
+				struct ia_css_tnr_config *tnr_config)
 {
 	asd->params.config.tnr_config = tnr_config;
 }
 
 void atomisp_css_set_cc_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_cc_config *cc_config)
+			       struct ia_css_cc_config *cc_config)
 {
 	asd->params.config.cc_config = cc_config;
 }
 
 void atomisp_css_set_macc_table(struct atomisp_sub_device *asd,
-				struct atomisp_css_macc_table *macc_table)
+				struct ia_css_macc_table *macc_table)
 {
 	asd->params.config.macc_table = macc_table;
 }
 
 void atomisp_css_set_macc_config(struct atomisp_sub_device *asd,
-				 struct atomisp_css_macc_config *macc_config)
+				 struct ia_css_macc_config *macc_config)
 {
 	asd->params.config.macc_config = macc_config;
 }
 
 void atomisp_css_set_ecd_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_ecd_config *ecd_config)
+				struct ia_css_ecd_config *ecd_config)
 {
 	asd->params.config.ecd_config = ecd_config;
 }
 
 void atomisp_css_set_ynr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_ynr_config *ynr_config)
+				struct ia_css_ynr_config *ynr_config)
 {
 	asd->params.config.ynr_config = ynr_config;
 }
 
 void atomisp_css_set_fc_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_fc_config *fc_config)
+			       struct ia_css_fc_config *fc_config)
 {
 	asd->params.config.fc_config = fc_config;
 }
 
 void atomisp_css_set_ctc_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_ctc_config *ctc_config)
+				struct ia_css_ctc_config *ctc_config)
 {
 	asd->params.config.ctc_config = ctc_config;
 }
 
 void atomisp_css_set_cnr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_cnr_config *cnr_config)
+				struct ia_css_cnr_config *cnr_config)
 {
 	asd->params.config.cnr_config = cnr_config;
 }
 
 void atomisp_css_set_aa_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_aa_config *aa_config)
+			       struct ia_css_aa_config *aa_config)
 {
 	asd->params.config.aa_config = aa_config;
 }
 
 void atomisp_css_set_baa_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_baa_config *baa_config)
+				struct ia_css_aa_config *baa_config)
 {
 	asd->params.config.baa_config = baa_config;
 }
 
 void atomisp_css_set_anr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_anr_config *anr_config)
+				struct ia_css_anr_config *anr_config)
 {
 	asd->params.config.anr_config = anr_config;
 }
 
 void atomisp_css_set_xnr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_xnr_config *xnr_config)
+				struct ia_css_xnr_config *xnr_config)
 {
 	asd->params.config.xnr_config = xnr_config;
 }
 
 void atomisp_css_set_yuv2rgb_cc_config(struct atomisp_sub_device *asd,
-				       struct atomisp_css_cc_config *yuv2rgb_cc_config)
+				       struct ia_css_cc_config *yuv2rgb_cc_config)
 {
 	asd->params.config.yuv2rgb_cc_config = yuv2rgb_cc_config;
 }
 
 void atomisp_css_set_rgb2yuv_cc_config(struct atomisp_sub_device *asd,
-				       struct atomisp_css_cc_config *rgb2yuv_cc_config)
+				       struct ia_css_cc_config *rgb2yuv_cc_config)
 {
 	asd->params.config.rgb2yuv_cc_config = rgb2yuv_cc_config;
 }
 
 void atomisp_css_set_xnr_table(struct atomisp_sub_device *asd,
-			       struct atomisp_css_xnr_table *xnr_table)
+			       struct ia_css_xnr_table *xnr_table)
 {
 	asd->params.config.xnr_table = xnr_table;
 }
 
 void atomisp_css_set_r_gamma_table(struct atomisp_sub_device *asd,
-				   struct atomisp_css_rgb_gamma_table *r_gamma_table)
+				   struct ia_css_rgb_gamma_table *r_gamma_table)
 {
 	asd->params.config.r_gamma_table = r_gamma_table;
 }
 
 void atomisp_css_set_g_gamma_table(struct atomisp_sub_device *asd,
-				   struct atomisp_css_rgb_gamma_table *g_gamma_table)
+				   struct ia_css_rgb_gamma_table *g_gamma_table)
 {
 	asd->params.config.g_gamma_table = g_gamma_table;
 }
 
 void atomisp_css_set_b_gamma_table(struct atomisp_sub_device *asd,
-				   struct atomisp_css_rgb_gamma_table *b_gamma_table)
+				   struct ia_css_rgb_gamma_table *b_gamma_table)
 {
 	asd->params.config.b_gamma_table = b_gamma_table;
 }
 
 void atomisp_css_set_gamma_table(struct atomisp_sub_device *asd,
-				 struct atomisp_css_gamma_table *gamma_table)
+				 struct ia_css_gamma_table *gamma_table)
 {
 	asd->params.config.gamma_table = gamma_table;
 }
 
 void atomisp_css_set_ctc_table(struct atomisp_sub_device *asd,
-			       struct atomisp_css_ctc_table *ctc_table)
+			       struct ia_css_ctc_table *ctc_table)
 {
 	int i;
 	u16 *vamem_ptr = ctc_table->data.vamem_1;
@@ -3577,25 +3577,25 @@ void atomisp_css_set_ctc_table(struct atomisp_sub_device *asd,
 }
 
 void atomisp_css_set_anr_thres(struct atomisp_sub_device *asd,
-			       struct atomisp_css_anr_thres *anr_thres)
+			       struct ia_css_anr_thres *anr_thres)
 {
 	asd->params.config.anr_thres = anr_thres;
 }
 
 void atomisp_css_set_dvs_6axis(struct atomisp_sub_device *asd,
-			       struct atomisp_css_dvs_6axis *dvs_6axis)
+			       struct ia_css_dvs_6axis_config *dvs_6axis)
 {
 	asd->params.config.dvs_6axis_config = dvs_6axis;
 }
 
 void atomisp_css_set_gc_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_gc_config *gc_config)
+			       struct ia_css_gc_config *gc_config)
 {
 	asd->params.config.gc_config = gc_config;
 }
 
 void atomisp_css_set_3a_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_3a_config *s3a_config)
+			       struct ia_css_3a_config *s3a_config)
 {
 	asd->params.config.s3a_config = s3a_config;
 }
@@ -3615,7 +3615,7 @@ void atomisp_css_video_set_dis_vector(struct atomisp_sub_device *asd,
 static int atomisp_compare_dvs_grid(struct atomisp_sub_device *asd,
 				    struct atomisp_dvs_grid_info *atomgrid)
 {
-	struct atomisp_css_dvs_grid_info *cur =
+	struct ia_css_dvs_grid_info *cur =
 	    atomisp_css_get_dvs_grid_info(&asd->params.curr_grid_info);
 
 	if (!cur) {
@@ -3727,7 +3727,7 @@ void atomisp_css_set_zoom_factor(struct atomisp_sub_device *asd,
 }
 
 void atomisp_css_set_formats_config(struct atomisp_sub_device *asd,
-				    struct atomisp_css_formats_config *formats_config)
+				    struct ia_css_formats_config *formats_config)
 {
 	asd->params.config.formats_config = formats_config;
 }
@@ -3735,7 +3735,7 @@ void atomisp_css_set_formats_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_wb_config(struct atomisp_sub_device *asd,
 			      struct atomisp_wb_config *config)
 {
-	struct atomisp_css_wb_config wb_config;
+	struct ia_css_wb_config wb_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3744,7 +3744,7 @@ int atomisp_css_get_wb_config(struct atomisp_sub_device *asd,
 			__func__);
 		return -EINVAL;
 	}
-	memset(&wb_config, 0, sizeof(struct atomisp_css_wb_config));
+	memset(&wb_config, 0, sizeof(struct ia_css_wb_config));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 	isp_config.wb_config = &wb_config;
 	ia_css_stream_get_isp_config(
@@ -3758,7 +3758,7 @@ int atomisp_css_get_wb_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_ob_config(struct atomisp_sub_device *asd,
 			      struct atomisp_ob_config *config)
 {
-	struct atomisp_css_ob_config ob_config;
+	struct ia_css_ob_config ob_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3767,7 +3767,7 @@ int atomisp_css_get_ob_config(struct atomisp_sub_device *asd,
 			__func__);
 		return -EINVAL;
 	}
-	memset(&ob_config, 0, sizeof(struct atomisp_css_ob_config));
+	memset(&ob_config, 0, sizeof(struct ia_css_ob_config));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 	isp_config.ob_config = &ob_config;
 	ia_css_stream_get_isp_config(
@@ -3781,7 +3781,7 @@ int atomisp_css_get_ob_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_dp_config(struct atomisp_sub_device *asd,
 			      struct atomisp_dp_config *config)
 {
-	struct atomisp_css_dp_config dp_config;
+	struct ia_css_dp_config dp_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3790,7 +3790,7 @@ int atomisp_css_get_dp_config(struct atomisp_sub_device *asd,
 			__func__);
 		return -EINVAL;
 	}
-	memset(&dp_config, 0, sizeof(struct atomisp_css_dp_config));
+	memset(&dp_config, 0, sizeof(struct ia_css_dp_config));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 	isp_config.dp_config = &dp_config;
 	ia_css_stream_get_isp_config(
@@ -3804,7 +3804,7 @@ int atomisp_css_get_dp_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_de_config(struct atomisp_sub_device *asd,
 			      struct atomisp_de_config *config)
 {
-	struct atomisp_css_de_config de_config;
+	struct ia_css_de_config de_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3813,7 +3813,7 @@ int atomisp_css_get_de_config(struct atomisp_sub_device *asd,
 			__func__);
 		return -EINVAL;
 	}
-	memset(&de_config, 0, sizeof(struct atomisp_css_de_config));
+	memset(&de_config, 0, sizeof(struct ia_css_de_config));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 	isp_config.de_config = &de_config;
 	ia_css_stream_get_isp_config(
@@ -3827,7 +3827,7 @@ int atomisp_css_get_de_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_nr_config(struct atomisp_sub_device *asd,
 			      struct atomisp_nr_config *config)
 {
-	struct atomisp_css_nr_config nr_config;
+	struct ia_css_nr_config nr_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3836,7 +3836,7 @@ int atomisp_css_get_nr_config(struct atomisp_sub_device *asd,
 			__func__);
 		return -EINVAL;
 	}
-	memset(&nr_config, 0, sizeof(struct atomisp_css_nr_config));
+	memset(&nr_config, 0, sizeof(struct ia_css_nr_config));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 
 	isp_config.nr_config = &nr_config;
@@ -3851,7 +3851,7 @@ int atomisp_css_get_nr_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_ee_config(struct atomisp_sub_device *asd,
 			      struct atomisp_ee_config *config)
 {
-	struct atomisp_css_ee_config ee_config;
+	struct ia_css_ee_config ee_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3860,7 +3860,7 @@ int atomisp_css_get_ee_config(struct atomisp_sub_device *asd,
 			__func__);
 		return -EINVAL;
 	}
-	memset(&ee_config, 0, sizeof(struct atomisp_css_ee_config));
+	memset(&ee_config, 0, sizeof(struct ia_css_ee_config));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 	isp_config.ee_config = &ee_config;
 	ia_css_stream_get_isp_config(
@@ -3874,7 +3874,7 @@ int atomisp_css_get_ee_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_tnr_config(struct atomisp_sub_device *asd,
 			       struct atomisp_tnr_config *config)
 {
-	struct atomisp_css_tnr_config tnr_config;
+	struct ia_css_tnr_config tnr_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3883,7 +3883,7 @@ int atomisp_css_get_tnr_config(struct atomisp_sub_device *asd,
 			__func__);
 		return -EINVAL;
 	}
-	memset(&tnr_config, 0, sizeof(struct atomisp_css_tnr_config));
+	memset(&tnr_config, 0, sizeof(struct ia_css_tnr_config));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 	isp_config.tnr_config = &tnr_config;
 	ia_css_stream_get_isp_config(
@@ -3897,7 +3897,7 @@ int atomisp_css_get_tnr_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_ctc_table(struct atomisp_sub_device *asd,
 			      struct atomisp_ctc_table *config)
 {
-	struct atomisp_css_ctc_table *tab;
+	struct ia_css_ctc_table *tab;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3907,7 +3907,7 @@ int atomisp_css_get_ctc_table(struct atomisp_sub_device *asd,
 		return -EINVAL;
 	}
 
-	tab = vzalloc(sizeof(struct atomisp_css_ctc_table));
+	tab = vzalloc(sizeof(struct ia_css_ctc_table));
 	if (!tab)
 		return -ENOMEM;
 
@@ -3925,7 +3925,7 @@ int atomisp_css_get_ctc_table(struct atomisp_sub_device *asd,
 int atomisp_css_get_gamma_table(struct atomisp_sub_device *asd,
 				struct atomisp_gamma_table *config)
 {
-	struct atomisp_css_gamma_table *tab;
+	struct ia_css_gamma_table *tab;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3935,7 +3935,7 @@ int atomisp_css_get_gamma_table(struct atomisp_sub_device *asd,
 		return -EINVAL;
 	}
 
-	tab = vzalloc(sizeof(struct atomisp_css_gamma_table));
+	tab = vzalloc(sizeof(struct ia_css_gamma_table));
 	if (!tab)
 		return -ENOMEM;
 
@@ -3953,7 +3953,7 @@ int atomisp_css_get_gamma_table(struct atomisp_sub_device *asd,
 int atomisp_css_get_gc_config(struct atomisp_sub_device *asd,
 			      struct atomisp_gc_config *config)
 {
-	struct atomisp_css_gc_config gc_config;
+	struct ia_css_gc_config gc_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3962,7 +3962,7 @@ int atomisp_css_get_gc_config(struct atomisp_sub_device *asd,
 			__func__);
 		return -EINVAL;
 	}
-	memset(&gc_config, 0, sizeof(struct atomisp_css_gc_config));
+	memset(&gc_config, 0, sizeof(struct ia_css_gc_config));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 	isp_config.gc_config = &gc_config;
 	ia_css_stream_get_isp_config(
@@ -3977,7 +3977,7 @@ int atomisp_css_get_gc_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_3a_config(struct atomisp_sub_device *asd,
 			      struct atomisp_3a_config *config)
 {
-	struct atomisp_css_3a_config s3a_config;
+	struct ia_css_3a_config s3a_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -3986,7 +3986,7 @@ int atomisp_css_get_3a_config(struct atomisp_sub_device *asd,
 			__func__);
 		return -EINVAL;
 	}
-	memset(&s3a_config, 0, sizeof(struct atomisp_css_3a_config));
+	memset(&s3a_config, 0, sizeof(struct ia_css_3a_config));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 	isp_config.s3a_config = &s3a_config;
 	ia_css_stream_get_isp_config(
@@ -4001,7 +4001,7 @@ int atomisp_css_get_3a_config(struct atomisp_sub_device *asd,
 int atomisp_css_get_formats_config(struct atomisp_sub_device *asd,
 				   struct atomisp_formats_config *config)
 {
-	struct atomisp_css_formats_config formats_config;
+	struct ia_css_formats_config formats_config;
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
 
@@ -4139,37 +4139,37 @@ int atomisp_css_get_dis_stat(struct atomisp_sub_device *asd,
 	return 0;
 }
 
-struct atomisp_css_shading_table *atomisp_css_shading_table_alloc(
+struct ia_css_shading_table *atomisp_css_shading_table_alloc(
     unsigned int width, unsigned int height)
 {
 	return ia_css_shading_table_alloc(width, height);
 }
 
 void atomisp_css_set_shading_table(struct atomisp_sub_device *asd,
-				   struct atomisp_css_shading_table *table)
+				   struct ia_css_shading_table *table)
 {
 	asd->params.config.shading_table = table;
 }
 
-void atomisp_css_shading_table_free(struct atomisp_css_shading_table *table)
+void atomisp_css_shading_table_free(struct ia_css_shading_table *table)
 {
 	ia_css_shading_table_free(table);
 }
 
-struct atomisp_css_morph_table *atomisp_css_morph_table_allocate(
+struct ia_css_morph_table *atomisp_css_morph_table_allocate(
     unsigned int width, unsigned int height)
 {
 	return ia_css_morph_table_allocate(width, height);
 }
 
 void atomisp_css_set_morph_table(struct atomisp_sub_device *asd,
-				 struct atomisp_css_morph_table *table)
+				 struct ia_css_morph_table *table)
 {
 	asd->params.config.morph_table = table;
 }
 
 void atomisp_css_get_morph_table(struct atomisp_sub_device *asd,
-				 struct atomisp_css_morph_table *table)
+				 struct ia_css_morph_table *table)
 {
 	struct ia_css_isp_config isp_config;
 	struct atomisp_device *isp = asd->isp;
@@ -4179,7 +4179,7 @@ void atomisp_css_get_morph_table(struct atomisp_sub_device *asd,
 			"%s called after streamoff, skipping.\n", __func__);
 		return;
 	}
-	memset(table, 0, sizeof(struct atomisp_css_morph_table));
+	memset(table, 0, sizeof(struct ia_css_morph_table));
 	memset(&isp_config, 0, sizeof(struct ia_css_isp_config));
 	isp_config.morph_table = table;
 	ia_css_stream_get_isp_config(
@@ -4187,7 +4187,7 @@ void atomisp_css_get_morph_table(struct atomisp_sub_device *asd,
 	    &isp_config);
 }
 
-void atomisp_css_morph_table_free(struct atomisp_css_morph_table *table)
+void atomisp_css_morph_table_free(struct ia_css_morph_table *table)
 {
 	ia_css_morph_table_free(table);
 }
@@ -4244,11 +4244,11 @@ int atomisp_css_set_acc_parameters(struct atomisp_acc_fw *acc_fw)
 
 /* Load acc binary extension */
 int atomisp_css_load_acc_extension(struct atomisp_sub_device *asd,
-				   struct atomisp_css_fw_info *fw,
-				   enum atomisp_css_pipe_id pipe_id,
+				   struct ia_css_fw_info *fw,
+				   enum ia_css_pipe_id pipe_id,
 				   unsigned int type)
 {
-	struct atomisp_css_fw_info **hd;
+	struct ia_css_fw_info **hd;
 
 	fw->next = NULL;
 	hd = &(asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL]
@@ -4264,10 +4264,10 @@ int atomisp_css_load_acc_extension(struct atomisp_sub_device *asd,
 
 /* Unload acc binary extension */
 void atomisp_css_unload_acc_extension(struct atomisp_sub_device *asd,
-				      struct atomisp_css_fw_info *fw,
-				      enum atomisp_css_pipe_id pipe_id)
+				      struct ia_css_fw_info *fw,
+				      enum ia_css_pipe_id pipe_id)
 {
-	struct atomisp_css_fw_info **hd;
+	struct ia_css_fw_info **hd;
 
 	hd = &(asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL]
 	       .pipe_configs[pipe_id].acc_extension);
@@ -4308,7 +4308,7 @@ int atomisp_css_create_acc_pipe(struct atomisp_sub_device *asd)
 		stream_env->acc_stream = NULL;
 	}
 
-	pipe_config = &stream_env->pipe_configs[CSS_PIPE_ID_ACC];
+	pipe_config = &stream_env->pipe_configs[IA_CSS_PIPE_ID_ACC];
 	ia_css_pipe_config_defaults(pipe_config);
 	asd->acc.acc_stages = kzalloc(MAX_ACC_STAGES *
 				      sizeof(void *), GFP_KERNEL);
@@ -4420,7 +4420,7 @@ void atomisp_css_destroy_acc_pipe(struct atomisp_sub_device *asd)
 }
 
 int atomisp_css_load_acc_binary(struct atomisp_sub_device *asd,
-				struct atomisp_css_fw_info *fw,
+				struct ia_css_fw_info *fw,
 				unsigned int index)
 {
 	struct ia_css_pipe_config *pipe_config =
@@ -4510,7 +4510,7 @@ int atomisp_css_isr_thread(struct atomisp_device *isp,
 		asd = __get_atomisp_subdev(current_event.event.pipe,
 					   isp, &stream_id);
 		if (!asd) {
-			if (current_event.event.type == CSS_EVENT_TIMER)
+			if (current_event.event.type == IA_CSS_EVENT_TYPE_TIMER)
 				dev_dbg(isp->dev,
 					"event: Timer event.");
 			else
@@ -4522,63 +4522,63 @@ int atomisp_css_isr_thread(struct atomisp_device *isp,
 
 		atomisp_css_temp_pipe_to_pipe_id(asd, &current_event);
 		switch (current_event.event.type) {
-		case CSS_EVENT_OUTPUT_FRAME_DONE:
+		case IA_CSS_EVENT_TYPE_OUTPUT_FRAME_DONE:
 			frame_done_found[asd->index] = true;
-			atomisp_buf_done(asd, 0, CSS_BUFFER_TYPE_OUTPUT_FRAME,
+			atomisp_buf_done(asd, 0, IA_CSS_BUFFER_TYPE_OUTPUT_FRAME,
 					 current_event.pipe, true, stream_id);
 
 			if (!atomisp_hw_is_isp2401)
 				reset_wdt_timer[asd->index] = true; /* ISP running */
 
 			break;
-		case CSS_EVENT_SEC_OUTPUT_FRAME_DONE:
+		case IA_CSS_EVENT_TYPE_SECOND_OUTPUT_FRAME_DONE:
 			frame_done_found[asd->index] = true;
-			atomisp_buf_done(asd, 0, CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME,
+			atomisp_buf_done(asd, 0, IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME,
 					 current_event.pipe, true, stream_id);
 
 			if (!atomisp_hw_is_isp2401)
 				reset_wdt_timer[asd->index] = true; /* ISP running */
 
 			break;
-		case CSS_EVENT_3A_STATISTICS_DONE:
+		case IA_CSS_EVENT_TYPE_3A_STATISTICS_DONE:
 			atomisp_buf_done(asd, 0,
-					 CSS_BUFFER_TYPE_3A_STATISTICS,
+					 IA_CSS_BUFFER_TYPE_3A_STATISTICS,
 					 current_event.pipe,
 					 false, stream_id);
 			break;
-		case CSS_EVENT_METADATA_DONE:
+		case IA_CSS_EVENT_TYPE_METADATA_DONE:
 			atomisp_buf_done(asd, 0,
-					 CSS_BUFFER_TYPE_METADATA,
+					 IA_CSS_BUFFER_TYPE_METADATA,
 					 current_event.pipe,
 					 false, stream_id);
 			break;
-		case CSS_EVENT_VF_OUTPUT_FRAME_DONE:
+		case IA_CSS_EVENT_TYPE_VF_OUTPUT_FRAME_DONE:
 			atomisp_buf_done(asd, 0,
-					 CSS_BUFFER_TYPE_VF_OUTPUT_FRAME,
+					 IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME,
 					 current_event.pipe, true, stream_id);
 
 			if (!atomisp_hw_is_isp2401)
 				reset_wdt_timer[asd->index] = true; /* ISP running */
 
 			break;
-		case CSS_EVENT_SEC_VF_OUTPUT_FRAME_DONE:
+		case IA_CSS_EVENT_TYPE_SECOND_VF_OUTPUT_FRAME_DONE:
 			atomisp_buf_done(asd, 0,
-					 CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME,
+					 IA_CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME,
 					 current_event.pipe, true, stream_id);
 			if (!atomisp_hw_is_isp2401)
 				reset_wdt_timer[asd->index] = true; /* ISP running */
 
 			break;
-		case CSS_EVENT_DIS_STATISTICS_DONE:
+		case IA_CSS_EVENT_TYPE_DIS_STATISTICS_DONE:
 			atomisp_buf_done(asd, 0,
-					 CSS_BUFFER_TYPE_DIS_STATISTICS,
+					 IA_CSS_BUFFER_TYPE_DIS_STATISTICS,
 					 current_event.pipe,
 					 false, stream_id);
 			break;
-		case CSS_EVENT_PIPELINE_DONE:
+		case IA_CSS_EVENT_TYPE_PIPELINE_DONE:
 			css_pipe_done[asd->index] = true;
 			break;
-		case CSS_EVENT_ACC_STAGE_COMPLETE:
+		case IA_CSS_EVENT_TYPE_ACC_STAGE_COMPLETE:
 			atomisp_acc_done(asd, current_event.event.fw_handle);
 			break;
 		default:
@@ -4664,7 +4664,7 @@ void atomisp_css_set_isp_config_id(struct atomisp_sub_device *asd,
 }
 
 void atomisp_css_set_isp_config_applied_frame(struct atomisp_sub_device *asd,
-	struct atomisp_css_frame *output_frame)
+	struct ia_css_frame *output_frame)
 {
 	asd->params.config.output_frame = output_frame;
 }
@@ -4692,8 +4692,8 @@ void atomisp_en_dz_capt_pipe(struct atomisp_sub_device *asd, bool enable)
 	    enable);
 }
 
-struct atomisp_css_dvs_grid_info *atomisp_css_get_dvs_grid_info(
-    struct atomisp_css_grid_info *grid_info)
+struct ia_css_dvs_grid_info *atomisp_css_get_dvs_grid_info(
+    struct ia_css_grid_info *grid_info)
 {
 	if (!grid_info)
 		return NULL;
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.h b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.h
index 7abd1ff35652..ba8e6aed12de 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.h
@@ -30,97 +30,6 @@
 #define ATOMISP_CSS2_NUM_OFFLINE_INIT_CONTINUOUS_FRAMES_LOCK_EN     4
 #define ATOMISP_CSS2_NUM_DVS_FRAME_DELAY     2
 
-#define atomisp_css_pipe_id ia_css_pipe_id
-#define atomisp_css_pipeline	ia_css_pipe
-#define atomisp_css_buffer_type ia_css_buffer_type
-#define atomisp_css_dis_data ia_css_isp_dvs_statistics
-#define atomisp_css_irq_info  ia_css_irq_info
-#define atomisp_css_isp_config ia_css_isp_config
-#define atomisp_css_bayer_order ia_css_bayer_order
-#define atomisp_css_capture_mode ia_css_capture_mode
-#define atomisp_css_input_mode ia_css_input_mode
-#define atomisp_css_frame ia_css_frame
-#define atomisp_css_frame_format ia_css_frame_format
-#define atomisp_css_frame_info ia_css_frame_info
-#define atomisp_css_dp_config	ia_css_dp_config
-#define atomisp_css_wb_config	ia_css_wb_config
-#define atomisp_css_cc_config	ia_css_cc_config
-#define atomisp_css_nr_config	ia_css_nr_config
-#define atomisp_css_ee_config	ia_css_ee_config
-#define atomisp_css_ob_config	ia_css_ob_config
-#define atomisp_css_de_config	ia_css_de_config
-#define atomisp_css_dz_config	ia_css_dz_config
-#define atomisp_css_ce_config	ia_css_ce_config
-#define atomisp_css_gc_config	ia_css_gc_config
-#define atomisp_css_tnr_config	ia_css_tnr_config
-#define atomisp_css_cnr_config	ia_css_cnr_config
-#define atomisp_css_ctc_config	ia_css_ctc_config
-#define atomisp_css_3a_config	ia_css_3a_config
-#define atomisp_css_ecd_config	ia_css_ecd_config
-#define atomisp_css_ynr_config	ia_css_ynr_config
-#define atomisp_css_fc_config	ia_css_fc_config
-#define atomisp_css_aa_config	ia_css_aa_config
-#define atomisp_css_baa_config	ia_css_aa_config
-#define atomisp_css_anr_config	ia_css_anr_config
-#define atomisp_css_xnr_config	ia_css_xnr_config
-#define atomisp_css_macc_config	ia_css_macc_config
-#define atomisp_css_gamma_table	ia_css_gamma_table
-#define atomisp_css_ctc_table	ia_css_ctc_table
-#define atomisp_css_macc_table	ia_css_macc_table
-#define atomisp_css_xnr_table	ia_css_xnr_table
-#define atomisp_css_rgb_gamma_table	ia_css_rgb_gamma_table
-#define atomisp_css_anr_thres	ia_css_anr_thres
-#define atomisp_css_dvs_6axis	ia_css_dvs_6axis_config
-#define atomisp_css_grid_info	ia_css_grid_info
-#define atomisp_css_3a_grid_info	ia_css_3a_grid_info
-#define atomisp_css_dvs_grid_info	ia_css_dvs_grid_info
-#define atomisp_css_shading_table	ia_css_shading_table
-#define atomisp_css_morph_table	ia_css_morph_table
-#define atomisp_css_dvs_6axis_config	ia_css_dvs_6axis_config
-#define atomisp_css_fw_info	ia_css_fw_info
-#define atomisp_css_formats_config	ia_css_formats_config
-
-#define CSS_PIPE_ID_PREVIEW	IA_CSS_PIPE_ID_PREVIEW
-#define CSS_PIPE_ID_COPY	IA_CSS_PIPE_ID_COPY
-#define CSS_PIPE_ID_VIDEO	IA_CSS_PIPE_ID_VIDEO
-#define CSS_PIPE_ID_CAPTURE	IA_CSS_PIPE_ID_CAPTURE
-#define CSS_PIPE_ID_ACC		IA_CSS_PIPE_ID_ACC
-#define CSS_PIPE_ID_YUVPP	IA_CSS_PIPE_ID_YUVPP
-#define CSS_PIPE_ID_NUM		IA_CSS_PIPE_ID_NUM
-
-#define CSS_INPUT_MODE_SENSOR	IA_CSS_INPUT_MODE_BUFFERED_SENSOR
-#define CSS_INPUT_MODE_FIFO	IA_CSS_INPUT_MODE_FIFO
-#define CSS_INPUT_MODE_TPG	IA_CSS_INPUT_MODE_TPG
-#define CSS_INPUT_MODE_PRBS	IA_CSS_INPUT_MODE_PRBS
-#define CSS_INPUT_MODE_MEMORY	IA_CSS_INPUT_MODE_MEMORY
-
-#define CSS_IRQ_INFO_CSS_RECEIVER_ERROR	IA_CSS_IRQ_INFO_CSS_RECEIVER_ERROR
-#define CSS_IRQ_INFO_EVENTS_READY	IA_CSS_IRQ_INFO_EVENTS_READY
-#define CSS_IRQ_INFO_INPUT_SYSTEM_ERROR \
-	IA_CSS_IRQ_INFO_INPUT_SYSTEM_ERROR
-#define CSS_IRQ_INFO_IF_ERROR	IA_CSS_IRQ_INFO_IF_ERROR
-
-#define CSS_BUFFER_TYPE_NUM	IA_CSS_BUFFER_TYPE_NUM
-
-#define CSS_FRAME_FLASH_STATE_NONE	IA_CSS_FRAME_FLASH_STATE_NONE
-#define CSS_FRAME_FLASH_STATE_PARTIAL	IA_CSS_FRAME_FLASH_STATE_PARTIAL
-#define CSS_FRAME_FLASH_STATE_FULL	IA_CSS_FRAME_FLASH_STATE_FULL
-
-#define CSS_BAYER_ORDER_GRBG	IA_CSS_BAYER_ORDER_GRBG
-#define CSS_BAYER_ORDER_RGGB	IA_CSS_BAYER_ORDER_RGGB
-#define CSS_BAYER_ORDER_BGGR	IA_CSS_BAYER_ORDER_BGGR
-#define CSS_BAYER_ORDER_GBRG	IA_CSS_BAYER_ORDER_GBRG
-
-/*
- * Hide IA_ naming difference in otherwise common CSS macros.
- */
-#define CSS_ID(val)	(IA_ ## val)
-#define CSS_EVENT(val)	(IA_CSS_EVENT_TYPE_ ## val)
-#define CSS_FORMAT(val)	(ATOMISP_INPUT_FORMAT_ ## val)
-
-#define CSS_EVENT_PORT_EOF	CSS_EVENT(PORT_EOF)
-#define CSS_EVENT_FRAME_TAGGED	CSS_EVENT(FRAME_TAGGED)
-
 #define CSS_MIPI_FRAME_BUFFER_SIZE_1	0x60000
 #define CSS_MIPI_FRAME_BUFFER_SIZE_2	0x80000
 
@@ -181,7 +90,7 @@ struct atomisp_s3a_buf {
 };
 
 struct atomisp_dis_buf {
-	struct atomisp_css_dis_data *dis_data;
+	struct ia_css_isp_dvs_statistics *dis_data;
 	struct ia_css_isp_dvs_statistics_map *dvs_map;
 	struct list_head list;
 };
@@ -191,60 +100,60 @@ struct atomisp_css_buffer {
 };
 
 struct atomisp_css_event {
-	enum atomisp_css_pipe_id pipe;
+	enum ia_css_pipe_id pipe;
 	struct ia_css_event event;
 };
 
 void atomisp_css_set_macc_config(struct atomisp_sub_device *asd,
-				 struct atomisp_css_macc_config *macc_config);
+				 struct ia_css_macc_config *macc_config);
 
 void atomisp_css_set_ecd_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_ecd_config *ecd_config);
+				struct ia_css_ecd_config *ecd_config);
 
 void atomisp_css_set_ynr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_ynr_config *ynr_config);
+				struct ia_css_ynr_config *ynr_config);
 
 void atomisp_css_set_fc_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_fc_config *fc_config);
+			       struct ia_css_fc_config *fc_config);
 
 void atomisp_css_set_aa_config(struct atomisp_sub_device *asd,
-			       struct atomisp_css_aa_config *aa_config);
+			       struct ia_css_aa_config *aa_config);
 
 void atomisp_css_set_baa_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_baa_config *baa_config);
+				struct ia_css_aa_config *baa_config);
 
 void atomisp_css_set_anr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_anr_config *anr_config);
+				struct ia_css_anr_config *anr_config);
 
 void atomisp_css_set_xnr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_xnr_config *xnr_config);
+				struct ia_css_xnr_config *xnr_config);
 
 void atomisp_css_set_cnr_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_cnr_config *cnr_config);
+				struct ia_css_cnr_config *cnr_config);
 
 void atomisp_css_set_ctc_config(struct atomisp_sub_device *asd,
-				struct atomisp_css_ctc_config *ctc_config);
+				struct ia_css_ctc_config *ctc_config);
 
 void atomisp_css_set_yuv2rgb_cc_config(struct atomisp_sub_device *asd,
-				       struct atomisp_css_cc_config *yuv2rgb_cc_config);
+				       struct ia_css_cc_config *yuv2rgb_cc_config);
 
 void atomisp_css_set_rgb2yuv_cc_config(struct atomisp_sub_device *asd,
-				       struct atomisp_css_cc_config *rgb2yuv_cc_config);
+				       struct ia_css_cc_config *rgb2yuv_cc_config);
 
 void atomisp_css_set_xnr_table(struct atomisp_sub_device *asd,
-			       struct atomisp_css_xnr_table *xnr_table);
+			       struct ia_css_xnr_table *xnr_table);
 
 void atomisp_css_set_r_gamma_table(struct atomisp_sub_device *asd,
-				   struct atomisp_css_rgb_gamma_table *r_gamma_table);
+				   struct ia_css_rgb_gamma_table *r_gamma_table);
 
 void atomisp_css_set_g_gamma_table(struct atomisp_sub_device *asd,
-				   struct atomisp_css_rgb_gamma_table *g_gamma_table);
+				   struct ia_css_rgb_gamma_table *g_gamma_table);
 
 void atomisp_css_set_b_gamma_table(struct atomisp_sub_device *asd,
-				   struct atomisp_css_rgb_gamma_table *b_gamma_table);
+				   struct ia_css_rgb_gamma_table *b_gamma_table);
 
 void atomisp_css_set_anr_thres(struct atomisp_sub_device *asd,
-			       struct atomisp_css_anr_thres *anr_thres);
+			       struct ia_css_anr_thres *anr_thres);
 
 int atomisp_css_check_firmware_version(struct atomisp_device *isp);
 
@@ -253,7 +162,7 @@ int atomisp_css_load_firmware(struct atomisp_device *isp);
 void atomisp_css_unload_firmware(struct atomisp_device *isp);
 
 void atomisp_css_set_dvs_6axis(struct atomisp_sub_device *asd,
-			       struct atomisp_css_dvs_6axis *dvs_6axis);
+			       struct ia_css_dvs_6axis_config *dvs_6axis);
 
 unsigned int atomisp_css_debug_get_dtrace_level(void);
 
@@ -267,11 +176,11 @@ void atomisp_css_set_isp_config_id(struct atomisp_sub_device *asd,
 				   uint32_t isp_config_id);
 
 void atomisp_css_set_isp_config_applied_frame(struct atomisp_sub_device *asd,
-	struct atomisp_css_frame *output_frame);
+	struct ia_css_frame *output_frame);
 
 int atomisp_get_css_dbgfunc(void);
 
 int atomisp_set_css_dbgfunc(struct atomisp_device *isp, int opt);
-struct atomisp_css_dvs_grid_info *atomisp_css_get_dvs_grid_info(
-    struct atomisp_css_grid_info *grid_info);
+struct ia_css_dvs_grid_info *atomisp_css_get_dvs_grid_info(
+    struct ia_css_grid_info *grid_info);
 #endif
diff --git a/drivers/staging/media/atomisp/pci/atomisp_fops.c b/drivers/staging/media/atomisp/pci/atomisp_fops.c
index 667d6f7d1d5e..0ed1142e69fc 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_fops.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_fops.c
@@ -88,7 +88,7 @@ static int atomisp_buf_prepare(struct videobuf_queue *vq,
 
 static int atomisp_q_one_metadata_buffer(struct atomisp_sub_device *asd,
 	enum atomisp_input_stream_id stream_id,
-	enum atomisp_css_pipe_id css_pipe_id)
+	enum ia_css_pipe_id css_pipe_id)
 {
 	struct atomisp_metadata_buf *metadata_buf;
 	enum atomisp_metadata_type md_type =
@@ -128,7 +128,7 @@ static int atomisp_q_one_metadata_buffer(struct atomisp_sub_device *asd,
 
 static int atomisp_q_one_s3a_buffer(struct atomisp_sub_device *asd,
 				    enum atomisp_input_stream_id stream_id,
-				    enum atomisp_css_pipe_id css_pipe_id)
+				    enum ia_css_pipe_id css_pipe_id)
 {
 	struct atomisp_s3a_buf *s3a_buf;
 	struct list_head *s3a_list;
@@ -170,7 +170,7 @@ static int atomisp_q_one_s3a_buffer(struct atomisp_sub_device *asd,
 
 static int atomisp_q_one_dis_buffer(struct atomisp_sub_device *asd,
 				    enum atomisp_input_stream_id stream_id,
-				    enum atomisp_css_pipe_id css_pipe_id)
+				    enum ia_css_pipe_id css_pipe_id)
 {
 	struct atomisp_dis_buf *dis_buf;
 	unsigned long irqflags;
@@ -213,12 +213,12 @@ static int atomisp_q_one_dis_buffer(struct atomisp_sub_device *asd,
 int atomisp_q_video_buffers_to_css(struct atomisp_sub_device *asd,
 				   struct atomisp_video_pipe *pipe,
 				   enum atomisp_input_stream_id stream_id,
-				   enum atomisp_css_buffer_type css_buf_type,
-				   enum atomisp_css_pipe_id css_pipe_id)
+				   enum ia_css_buffer_type css_buf_type,
+				   enum ia_css_pipe_id css_pipe_id)
 {
 	struct videobuf_vmalloc_memory *vm_mem;
 	struct atomisp_css_params_with_list *param;
-	struct atomisp_css_dvs_grid_info *dvs_grid =
+	struct ia_css_dvs_grid_info *dvs_grid =
 	    atomisp_css_get_dvs_grid_info(&asd->params.curr_grid_info);
 	unsigned long irqflags;
 	int err = 0;
@@ -262,7 +262,7 @@ int atomisp_q_video_buffers_to_css(struct atomisp_sub_device *asd,
 				vm_mem->vaddr);
 			atomisp_css_update_isp_params_on_pipe(asd,
 							      asd->stream_env[stream_id].pipes[css_pipe_id]);
-			asd->params.dvs_6axis = (struct atomisp_css_dvs_6axis *)
+			asd->params.dvs_6axis = (struct ia_css_dvs_6axis_config *)
 						param->params.dvs_6axis;
 
 			/*
@@ -302,19 +302,19 @@ int atomisp_q_video_buffers_to_css(struct atomisp_sub_device *asd,
 		/* enqueue 3A/DIS/metadata buffers */
 		if (asd->params.curr_grid_info.s3a_grid.enable &&
 		    css_pipe_id == asd->params.s3a_enabled_pipe &&
-		    css_buf_type == CSS_BUFFER_TYPE_OUTPUT_FRAME)
+		    css_buf_type == IA_CSS_BUFFER_TYPE_OUTPUT_FRAME)
 			atomisp_q_one_s3a_buffer(asd, stream_id,
 						 css_pipe_id);
 
 		if (asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream_info.
 		    metadata_info.size &&
-		    css_buf_type == CSS_BUFFER_TYPE_OUTPUT_FRAME)
+		    css_buf_type == IA_CSS_BUFFER_TYPE_OUTPUT_FRAME)
 			atomisp_q_one_metadata_buffer(asd, stream_id,
 						      css_pipe_id);
 
 		if (dvs_grid && dvs_grid->enable &&
-		    css_pipe_id == CSS_PIPE_ID_VIDEO &&
-		    css_buf_type == CSS_BUFFER_TYPE_OUTPUT_FRAME)
+		    css_pipe_id == IA_CSS_PIPE_ID_VIDEO &&
+		    css_buf_type == IA_CSS_BUFFER_TYPE_OUTPUT_FRAME)
 			atomisp_q_one_dis_buffer(asd, stream_id,
 						 css_pipe_id);
 	}
@@ -323,7 +323,7 @@ int atomisp_q_video_buffers_to_css(struct atomisp_sub_device *asd,
 }
 
 static int atomisp_get_css_buf_type(struct atomisp_sub_device *asd,
-				    enum atomisp_css_pipe_id pipe_id,
+				    enum ia_css_pipe_id pipe_id,
 				    uint16_t source_pad)
 {
 	if (ATOMISP_USE_YUVPP(asd)) {
@@ -331,24 +331,24 @@ static int atomisp_get_css_buf_type(struct atomisp_sub_device *asd,
 		if (asd->continuous_mode->val &&
 		    asd->run_mode->val == ATOMISP_RUN_MODE_PREVIEW) {
 			if (source_pad == ATOMISP_SUBDEV_PAD_SOURCE_CAPTURE)
-				return CSS_BUFFER_TYPE_OUTPUT_FRAME;
+				return IA_CSS_BUFFER_TYPE_OUTPUT_FRAME;
 			else if (source_pad == ATOMISP_SUBDEV_PAD_SOURCE_PREVIEW)
-				return CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME;
+				return IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME;
 			else
-				return CSS_BUFFER_TYPE_VF_OUTPUT_FRAME;
+				return IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME;
 		}
 
 		/*when run SDV case*/
 		if (asd->continuous_mode->val &&
 		    asd->run_mode->val == ATOMISP_RUN_MODE_VIDEO) {
 			if (source_pad == ATOMISP_SUBDEV_PAD_SOURCE_CAPTURE)
-				return CSS_BUFFER_TYPE_OUTPUT_FRAME;
+				return IA_CSS_BUFFER_TYPE_OUTPUT_FRAME;
 			else if (source_pad == ATOMISP_SUBDEV_PAD_SOURCE_PREVIEW)
-				return CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME;
+				return IA_CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME;
 			else if (source_pad == ATOMISP_SUBDEV_PAD_SOURCE_VIDEO)
-				return CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME;
+				return IA_CSS_BUFFER_TYPE_SEC_OUTPUT_FRAME;
 			else
-				return CSS_BUFFER_TYPE_VF_OUTPUT_FRAME;
+				return IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME;
 		}
 
 		/*other case: default setting*/
@@ -356,27 +356,27 @@ static int atomisp_get_css_buf_type(struct atomisp_sub_device *asd,
 		    source_pad == ATOMISP_SUBDEV_PAD_SOURCE_VIDEO ||
 		    (source_pad == ATOMISP_SUBDEV_PAD_SOURCE_PREVIEW &&
 		     asd->run_mode->val != ATOMISP_RUN_MODE_VIDEO))
-			return CSS_BUFFER_TYPE_OUTPUT_FRAME;
+			return IA_CSS_BUFFER_TYPE_OUTPUT_FRAME;
 		else
-			return CSS_BUFFER_TYPE_VF_OUTPUT_FRAME;
+			return IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME;
 	}
 
-	if (pipe_id == CSS_PIPE_ID_COPY ||
+	if (pipe_id == IA_CSS_PIPE_ID_COPY ||
 	    source_pad == ATOMISP_SUBDEV_PAD_SOURCE_CAPTURE ||
 	    source_pad == ATOMISP_SUBDEV_PAD_SOURCE_VIDEO ||
 	    (source_pad == ATOMISP_SUBDEV_PAD_SOURCE_PREVIEW &&
 	     asd->run_mode->val != ATOMISP_RUN_MODE_VIDEO))
-		return CSS_BUFFER_TYPE_OUTPUT_FRAME;
+		return IA_CSS_BUFFER_TYPE_OUTPUT_FRAME;
 	else
-		return CSS_BUFFER_TYPE_VF_OUTPUT_FRAME;
+		return IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME;
 }
 
 static int atomisp_qbuffers_to_css_for_all_pipes(struct atomisp_sub_device *asd)
 {
-	enum atomisp_css_buffer_type buf_type;
-	enum atomisp_css_pipe_id css_capture_pipe_id = CSS_PIPE_ID_COPY;
-	enum atomisp_css_pipe_id css_preview_pipe_id = CSS_PIPE_ID_COPY;
-	enum atomisp_css_pipe_id css_video_pipe_id = CSS_PIPE_ID_COPY;
+	enum ia_css_buffer_type buf_type;
+	enum ia_css_pipe_id css_capture_pipe_id = IA_CSS_PIPE_ID_COPY;
+	enum ia_css_pipe_id css_preview_pipe_id = IA_CSS_PIPE_ID_COPY;
+	enum ia_css_pipe_id css_video_pipe_id = IA_CSS_PIPE_ID_COPY;
 	enum atomisp_input_stream_id input_stream_id;
 	struct atomisp_video_pipe *capture_pipe;
 	struct atomisp_video_pipe *preview_pipe;
@@ -413,10 +413,10 @@ static int atomisp_qbuffers_to_css_for_all_pipes(struct atomisp_sub_device *asd)
 /* queue all available buffers to css */
 int atomisp_qbuffers_to_css(struct atomisp_sub_device *asd)
 {
-	enum atomisp_css_buffer_type buf_type;
-	enum atomisp_css_pipe_id css_capture_pipe_id = CSS_PIPE_ID_NUM;
-	enum atomisp_css_pipe_id css_preview_pipe_id = CSS_PIPE_ID_NUM;
-	enum atomisp_css_pipe_id css_video_pipe_id = CSS_PIPE_ID_NUM;
+	enum ia_css_buffer_type buf_type;
+	enum ia_css_pipe_id css_capture_pipe_id = IA_CSS_PIPE_ID_NUM;
+	enum ia_css_pipe_id css_preview_pipe_id = IA_CSS_PIPE_ID_NUM;
+	enum ia_css_pipe_id css_video_pipe_id = IA_CSS_PIPE_ID_NUM;
 	enum atomisp_input_stream_id input_stream_id;
 	struct atomisp_video_pipe *capture_pipe = NULL;
 	struct atomisp_video_pipe *vf_pipe = NULL;
@@ -432,43 +432,43 @@ int atomisp_qbuffers_to_css(struct atomisp_sub_device *asd)
 
 	if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_SCALER) {
 		video_pipe = &asd->video_out_video_capture;
-		css_video_pipe_id = CSS_PIPE_ID_VIDEO;
+		css_video_pipe_id = IA_CSS_PIPE_ID_VIDEO;
 	} else if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_LOWLAT) {
 		preview_pipe = &asd->video_out_capture;
-		css_preview_pipe_id = CSS_PIPE_ID_CAPTURE;
+		css_preview_pipe_id = IA_CSS_PIPE_ID_CAPTURE;
 	} else if (asd->run_mode->val == ATOMISP_RUN_MODE_VIDEO) {
 		if (asd->continuous_mode->val) {
 			capture_pipe = &asd->video_out_capture;
 			vf_pipe = &asd->video_out_vf;
-			css_capture_pipe_id = CSS_PIPE_ID_CAPTURE;
+			css_capture_pipe_id = IA_CSS_PIPE_ID_CAPTURE;
 		}
 		video_pipe = &asd->video_out_video_capture;
 		preview_pipe = &asd->video_out_preview;
-		css_video_pipe_id = CSS_PIPE_ID_VIDEO;
-		css_preview_pipe_id = CSS_PIPE_ID_VIDEO;
+		css_video_pipe_id = IA_CSS_PIPE_ID_VIDEO;
+		css_preview_pipe_id = IA_CSS_PIPE_ID_VIDEO;
 	} else if (asd->continuous_mode->val) {
 		capture_pipe = &asd->video_out_capture;
 		vf_pipe = &asd->video_out_vf;
 		preview_pipe = &asd->video_out_preview;
 
-		css_preview_pipe_id = CSS_PIPE_ID_PREVIEW;
-		css_capture_pipe_id = CSS_PIPE_ID_CAPTURE;
+		css_preview_pipe_id = IA_CSS_PIPE_ID_PREVIEW;
+		css_capture_pipe_id = IA_CSS_PIPE_ID_CAPTURE;
 	} else if (asd->run_mode->val == ATOMISP_RUN_MODE_PREVIEW) {
 		preview_pipe = &asd->video_out_preview;
-		css_preview_pipe_id = CSS_PIPE_ID_PREVIEW;
+		css_preview_pipe_id = IA_CSS_PIPE_ID_PREVIEW;
 	} else {
 		/* ATOMISP_RUN_MODE_STILL_CAPTURE */
 		capture_pipe = &asd->video_out_capture;
 		if (!raw_mode)
 			vf_pipe = &asd->video_out_vf;
-		css_capture_pipe_id = CSS_PIPE_ID_CAPTURE;
+		css_capture_pipe_id = IA_CSS_PIPE_ID_CAPTURE;
 	}
 
 #ifdef ISP2401_NEW_INPUT_SYSTEM
 	if (asd->copy_mode) {
-		css_capture_pipe_id = CSS_PIPE_ID_COPY;
-		css_preview_pipe_id = CSS_PIPE_ID_COPY;
-		css_video_pipe_id = CSS_PIPE_ID_COPY;
+		css_capture_pipe_id = IA_CSS_PIPE_ID_COPY;
+		css_preview_pipe_id = IA_CSS_PIPE_ID_COPY;
+		css_video_pipe_id = IA_CSS_PIPE_ID_COPY;
 	}
 #endif
 
@@ -476,9 +476,9 @@ int atomisp_qbuffers_to_css(struct atomisp_sub_device *asd)
 		capture_pipe = &asd->video_out_capture;
 		video_pipe   = &asd->video_out_video_capture;
 		preview_pipe = &asd->video_out_preview;
-		css_capture_pipe_id = CSS_PIPE_ID_COPY;
-		css_video_pipe_id   = CSS_PIPE_ID_YUVPP;
-		css_preview_pipe_id = CSS_PIPE_ID_YUVPP;
+		css_capture_pipe_id = IA_CSS_PIPE_ID_COPY;
+		css_video_pipe_id   = IA_CSS_PIPE_ID_YUVPP;
+		css_preview_pipe_id = IA_CSS_PIPE_ID_YUVPP;
 	}
 
 	if (capture_pipe) {
@@ -491,7 +491,7 @@ int atomisp_qbuffers_to_css(struct atomisp_sub_device *asd)
 		 * use yuvpp pipe for SOC camera.
 		 */
 		if (ATOMISP_USE_YUVPP(asd))
-			css_capture_pipe_id = CSS_PIPE_ID_YUVPP;
+			css_capture_pipe_id = IA_CSS_PIPE_ID_YUVPP;
 
 		atomisp_q_video_buffers_to_css(asd, capture_pipe,
 					       input_stream_id,
@@ -511,7 +511,7 @@ int atomisp_qbuffers_to_css(struct atomisp_sub_device *asd)
 		 * use yuvpp pipe for SOC camera.
 		 */
 		if (ATOMISP_USE_YUVPP(asd))
-			css_capture_pipe_id = CSS_PIPE_ID_YUVPP;
+			css_capture_pipe_id = IA_CSS_PIPE_ID_YUVPP;
 		atomisp_q_video_buffers_to_css(asd, vf_pipe,
 					       input_stream_id,
 					       buf_type, css_capture_pipe_id);
@@ -521,10 +521,10 @@ int atomisp_qbuffers_to_css(struct atomisp_sub_device *asd)
 		buf_type = atomisp_get_css_buf_type(
 			       asd, css_preview_pipe_id,
 			       atomisp_subdev_source_pad(&preview_pipe->vdev));
-		if (ATOMISP_SOC_CAMERA(asd) && css_preview_pipe_id == CSS_PIPE_ID_YUVPP)
+		if (ATOMISP_SOC_CAMERA(asd) && css_preview_pipe_id == IA_CSS_PIPE_ID_YUVPP)
 			input_stream_id = ATOMISP_INPUT_STREAM_GENERAL;
 		/* else for ext isp use case */
-		else if (css_preview_pipe_id == CSS_PIPE_ID_YUVPP)
+		else if (css_preview_pipe_id == IA_CSS_PIPE_ID_YUVPP)
 			input_stream_id = ATOMISP_INPUT_STREAM_VIDEO;
 		else if (asd->stream_env[ATOMISP_INPUT_STREAM_PREVIEW].stream)
 			input_stream_id = ATOMISP_INPUT_STREAM_PREVIEW;
@@ -535,7 +535,7 @@ int atomisp_qbuffers_to_css(struct atomisp_sub_device *asd)
 		 * use yuvpp pipe for SOC camera.
 		 */
 		if (ATOMISP_USE_YUVPP(asd))
-			css_preview_pipe_id = CSS_PIPE_ID_YUVPP;
+			css_preview_pipe_id = IA_CSS_PIPE_ID_YUVPP;
 
 		atomisp_q_video_buffers_to_css(asd, preview_pipe,
 					       input_stream_id,
@@ -555,7 +555,7 @@ int atomisp_qbuffers_to_css(struct atomisp_sub_device *asd)
 		 * use yuvpp pipe for SOC camera.
 		 */
 		if (ATOMISP_USE_YUVPP(asd))
-			css_video_pipe_id = CSS_PIPE_ID_YUVPP;
+			css_video_pipe_id = IA_CSS_PIPE_ID_YUVPP;
 
 		atomisp_q_video_buffers_to_css(asd, video_pipe,
 					       input_stream_id,
@@ -717,7 +717,7 @@ static void atomisp_subdev_init_struct(struct atomisp_sub_device *asd)
 	asd->params.online_process = 1;
 	asd->params.yuv_ds_en = 0;
 	/* s3a grid not enabled for any pipe */
-	asd->params.s3a_enabled_pipe = CSS_PIPE_ID_NUM;
+	asd->params.s3a_enabled_pipe = IA_CSS_PIPE_ID_NUM;
 
 	asd->params.offline_parm.num_captures = 1;
 	asd->params.offline_parm.skip_frames = 0;
@@ -1054,7 +1054,7 @@ static int do_isp_mm_remap(struct atomisp_device *isp,
 }
 
 static int frame_mmap(struct atomisp_device *isp,
-		      const struct atomisp_css_frame *frame, struct vm_area_struct *vma)
+		      const struct ia_css_frame *frame, struct vm_area_struct *vma)
 {
 	ia_css_ptr isp_virt;
 	u32 host_virt;
@@ -1127,7 +1127,7 @@ int atomisp_videobuf_mmap_mapper(struct videobuf_queue *q,
  * There is also padding on the right (padded_width - width).
  */
 static int remove_pad_from_frame(struct atomisp_device *isp,
-				 struct atomisp_css_frame *in_frame, __u32 width, __u32 height)
+				 struct ia_css_frame *in_frame, __u32 width, __u32 height)
 {
 	unsigned int i;
 	unsigned short *buffer;
@@ -1164,7 +1164,7 @@ static int atomisp_mmap(struct file *file, struct vm_area_struct *vma)
 	struct atomisp_device *isp = video_get_drvdata(vdev);
 	struct atomisp_video_pipe *pipe = atomisp_to_video_pipe(vdev);
 	struct atomisp_sub_device *asd = pipe->asd;
-	struct atomisp_css_frame *raw_virt_addr;
+	struct ia_css_frame *raw_virt_addr;
 	u32 start = vma->vm_start;
 	u32 end = vma->vm_end;
 	u32 size = end - start;
diff --git a/drivers/staging/media/atomisp/pci/atomisp_fops.h b/drivers/staging/media/atomisp/pci/atomisp_fops.h
index e05e8f3a4442..9ba05551f8de 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_fops.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_fops.h
@@ -24,8 +24,8 @@
 int atomisp_q_video_buffers_to_css(struct atomisp_sub_device *asd,
 				   struct atomisp_video_pipe *pipe,
 				   enum atomisp_input_stream_id stream_id,
-				   enum atomisp_css_buffer_type css_buf_type,
-				   enum atomisp_css_pipe_id css_pipe_id);
+				   enum ia_css_buffer_type css_buf_type,
+				   enum ia_css_pipe_id css_pipe_id);
 
 unsigned int atomisp_dev_users(struct atomisp_device *isp);
 unsigned int atomisp_sub_dev_users(struct atomisp_sub_device *asd);
diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
index 6d7d07f55014..39400a8677aa 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.c
@@ -341,163 +341,163 @@ const struct atomisp_format_bridge atomisp_output_fmts[] = {
 		.pixelformat = V4L2_PIX_FMT_YUV420,
 		.depth = 12,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_YUV420,
-		.sh_fmt = CSS_FRAME_FORMAT_YUV420,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_YUV420,
 		.description = "YUV420, planar",
 		.planar = true
 	}, {
 		.pixelformat = V4L2_PIX_FMT_YVU420,
 		.depth = 12,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_YVU420,
-		.sh_fmt = CSS_FRAME_FORMAT_YV12,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_YV12,
 		.description = "YVU420, planar",
 		.planar = true
 	}, {
 		.pixelformat = V4L2_PIX_FMT_YUV422P,
 		.depth = 16,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_YUV422P,
-		.sh_fmt = CSS_FRAME_FORMAT_YUV422,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_YUV422,
 		.description = "YUV422, planar",
 		.planar = true
 	}, {
 		.pixelformat = V4L2_PIX_FMT_YUV444,
 		.depth = 24,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_YUV444,
-		.sh_fmt = CSS_FRAME_FORMAT_YUV444,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_YUV444,
 		.description = "YUV444"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_NV12,
 		.depth = 12,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_NV12,
-		.sh_fmt = CSS_FRAME_FORMAT_NV12,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_NV12,
 		.description = "NV12, Y-plane, CbCr interleaved",
 		.planar = true
 	}, {
 		.pixelformat = V4L2_PIX_FMT_NV21,
 		.depth = 12,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_NV21,
-		.sh_fmt = CSS_FRAME_FORMAT_NV21,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_NV21,
 		.description = "NV21, Y-plane, CbCr interleaved",
 		.planar = true
 	}, {
 		.pixelformat = V4L2_PIX_FMT_NV16,
 		.depth = 16,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_NV16,
-		.sh_fmt = CSS_FRAME_FORMAT_NV16,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_NV16,
 		.description = "NV16, Y-plane, CbCr interleaved",
 		.planar = true
 	}, {
 		.pixelformat = V4L2_PIX_FMT_YUYV,
 		.depth = 16,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_YUYV,
-		.sh_fmt = CSS_FRAME_FORMAT_YUYV,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_YUYV,
 		.description = "YUYV, interleaved"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_UYVY,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_UYVY8_1X16,
-		.sh_fmt = CSS_FRAME_FORMAT_UYVY,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_UYVY,
 		.description = "UYVY, interleaved"
 	}, { /* This one is for parallel sensors! DO NOT USE! */
 		.pixelformat = V4L2_PIX_FMT_UYVY,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_UYVY8_2X8,
-		.sh_fmt = CSS_FRAME_FORMAT_UYVY,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_UYVY,
 		.description = "UYVY, interleaved"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SBGGR16,
 		.depth = 16,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_SBGGR16,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 16"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SBGGR8,
 		.depth = 8,
 		.mbus_code = MEDIA_BUS_FMT_SBGGR8_1X8,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 8"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SGBRG8,
 		.depth = 8,
 		.mbus_code = MEDIA_BUS_FMT_SGBRG8_1X8,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 8"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SGRBG8,
 		.depth = 8,
 		.mbus_code = MEDIA_BUS_FMT_SGRBG8_1X8,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 8"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SRGGB8,
 		.depth = 8,
 		.mbus_code = MEDIA_BUS_FMT_SRGGB8_1X8,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 8"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SBGGR10,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_SBGGR10_1X10,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 10"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SGBRG10,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_SGBRG10_1X10,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 10"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SGRBG10,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_SGRBG10_1X10,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 10"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SRGGB10,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_SRGGB10_1X10,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 10"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SBGGR12,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_SBGGR12_1X12,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 12"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SGBRG12,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_SGBRG12_1X12,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 12"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SGRBG12,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_SGRBG12_1X12,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 12"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_SRGGB12,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_SRGGB12_1X12,
-		.sh_fmt = CSS_FRAME_FORMAT_RAW,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RAW,
 		.description = "Bayer 12"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_RGB32,
 		.depth = 32,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_RGB32,
-		.sh_fmt = CSS_FRAME_FORMAT_RGBA888,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RGBA888,
 		.description = "32 RGB 8-8-8-8"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_RGB565,
 		.depth = 16,
 		.mbus_code = MEDIA_BUS_FMT_BGR565_2X8_LE,
-		.sh_fmt = CSS_FRAME_FORMAT_RGB565,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_RGB565,
 		.description = "16 RGB 5-6-5"
 	}, {
 		.pixelformat = V4L2_PIX_FMT_JPEG,
 		.depth = 8,
 		.mbus_code = MEDIA_BUS_FMT_JPEG_1X8,
-		.sh_fmt = CSS_FRAME_FORMAT_BINARY_8,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_BINARY_8,
 		.description = "JPEG"
 	},
 #if 0
@@ -506,7 +506,7 @@ const struct atomisp_format_bridge atomisp_output_fmts[] = {
 		.pixelformat = V4L2_PIX_FMT_CUSTOM_M10MO_RAW,
 		.depth = 8,
 		.mbus_code = V4L2_MBUS_FMT_CUSTOM_M10MO_RAW,
-		.sh_fmt = CSS_FRAME_FORMAT_BINARY_8,
+		.sh_fmt = IA_CSS_FRAME_FORMAT_BINARY_8,
 		.description = "Custom RAW for M10MO"
 	},
 #endif
@@ -789,7 +789,7 @@ static int atomisp_enum_fmt_cap(struct file *file, void *fh,
 		 * Is the atomisp-supported format is valid for the
 		 * sensor (configuration)? If not, skip it.
 		 */
-		if (format->sh_fmt == CSS_FRAME_FORMAT_RAW
+		if (format->sh_fmt == IA_CSS_FRAME_FORMAT_RAW
 		    && format->mbus_code != code.code)
 			continue;
 
@@ -920,7 +920,7 @@ int atomisp_alloc_css_stat_bufs(struct atomisp_sub_device *asd,
 	struct atomisp_dis_buf *dis_buf = NULL, *_dis_buf;
 	struct atomisp_metadata_buf *md_buf = NULL, *_md_buf;
 	int count;
-	struct atomisp_css_dvs_grid_info *dvs_grid_info =
+	struct ia_css_dvs_grid_info *dvs_grid_info =
 	    atomisp_css_get_dvs_grid_info(&asd->params.curr_grid_info);
 	unsigned int i;
 
@@ -1024,8 +1024,8 @@ int __atomisp_reqbufs(struct file *file, void *fh,
 	struct video_device *vdev = video_devdata(file);
 	struct atomisp_video_pipe *pipe = atomisp_to_video_pipe(vdev);
 	struct atomisp_sub_device *asd = pipe->asd;
-	struct atomisp_css_frame_info frame_info;
-	struct atomisp_css_frame *frame;
+	struct ia_css_frame_info frame_info;
+	struct ia_css_frame *frame;
 	struct videobuf_vmalloc_memory *vm_mem;
 	u16 source_pad = atomisp_subdev_source_pad(vdev);
 	u16 stream_id = atomisp_source_pad_to_stream_id(asd, source_pad);
@@ -1152,8 +1152,8 @@ static int atomisp_qbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
 	struct atomisp_sub_device *asd = pipe->asd;
 	struct videobuf_buffer *vb;
 	struct videobuf_vmalloc_memory *vm_mem;
-	struct atomisp_css_frame_info frame_info;
-	struct atomisp_css_frame *handle = NULL;
+	struct ia_css_frame_info frame_info;
+	struct ia_css_frame *handle = NULL;
 	u32 length;
 	u32 pgnr;
 	int ret = 0;
@@ -1401,7 +1401,7 @@ static int __get_frame_exp_id(struct atomisp_video_pipe *pipe,
 			      struct v4l2_buffer *buf)
 {
 	struct videobuf_vmalloc_memory *vm_mem;
-	struct atomisp_css_frame *handle;
+	struct ia_css_frame *handle;
 	int i;
 
 	for (i = 0; pipe->capq.bufs[i]; i++) {
@@ -1470,16 +1470,16 @@ static int atomisp_dqbuf(struct file *file, void *fh, struct v4l2_buffer *buf)
 	return 0;
 }
 
-enum atomisp_css_pipe_id atomisp_get_css_pipe_id(struct atomisp_sub_device *asd)
+enum ia_css_pipe_id atomisp_get_css_pipe_id(struct atomisp_sub_device *asd)
 {
 	if (ATOMISP_USE_YUVPP(asd))
-		return CSS_PIPE_ID_YUVPP;
+		return IA_CSS_PIPE_ID_YUVPP;
 
 	if (asd->continuous_mode->val) {
 		if (asd->run_mode->val == ATOMISP_RUN_MODE_VIDEO)
-			return CSS_PIPE_ID_VIDEO;
+			return IA_CSS_PIPE_ID_VIDEO;
 		else
-			return CSS_PIPE_ID_PREVIEW;
+			return IA_CSS_PIPE_ID_PREVIEW;
 	}
 
 	/*
@@ -1487,7 +1487,7 @@ enum atomisp_css_pipe_id atomisp_get_css_pipe_id(struct atomisp_sub_device *asd)
 	 * scaling but it has one frame delay due to CSS internal buffering.
 	 */
 	if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_SCALER)
-		return CSS_PIPE_ID_VIDEO;
+		return IA_CSS_PIPE_ID_VIDEO;
 
 	/*
 	 * Disable vf_pp and run CSS in still capture mode. In this mode
@@ -1495,17 +1495,17 @@ enum atomisp_css_pipe_id atomisp_get_css_pipe_id(struct atomisp_sub_device *asd)
 	 * is not available.
 	 */
 	if (asd->vfpp->val == ATOMISP_VFPP_DISABLE_LOWLAT)
-		return CSS_PIPE_ID_CAPTURE;
+		return IA_CSS_PIPE_ID_CAPTURE;
 
 	switch (asd->run_mode->val) {
 	case ATOMISP_RUN_MODE_PREVIEW:
-		return CSS_PIPE_ID_PREVIEW;
+		return IA_CSS_PIPE_ID_PREVIEW;
 	case ATOMISP_RUN_MODE_VIDEO:
-		return CSS_PIPE_ID_VIDEO;
+		return IA_CSS_PIPE_ID_VIDEO;
 	case ATOMISP_RUN_MODE_STILL_CAPTURE:
 	/* fall through */
 	default:
-		return CSS_PIPE_ID_CAPTURE;
+		return IA_CSS_PIPE_ID_CAPTURE;
 	}
 }
 
@@ -1670,7 +1670,7 @@ static int atomisp_streamon(struct file *file, void *fh,
 	struct atomisp_video_pipe *pipe = atomisp_to_video_pipe(vdev);
 	struct atomisp_sub_device *asd = pipe->asd;
 	struct atomisp_device *isp = video_get_drvdata(vdev);
-	enum atomisp_css_pipe_id css_pipe_id;
+	enum ia_css_pipe_id css_pipe_id;
 	unsigned int sensor_start_stream;
 	unsigned int wdt_duration = ATOMISP_ISP_TIMEOUT_DURATION;
 	int ret = 0;
@@ -1836,7 +1836,7 @@ static int atomisp_streamon(struct file *file, void *fh,
 	}
 
 	if (!isp->sw_contex.file_input) {
-		atomisp_css_irq_enable(isp, CSS_IRQ_INFO_CSS_RECEIVER_SOF,
+		atomisp_css_irq_enable(isp, IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF,
 				       atomisp_css_valid_sof(isp));
 		atomisp_csi2_configure(asd);
 		/*
@@ -1934,7 +1934,7 @@ int __atomisp_streamoff(struct file *file, void *fh, enum v4l2_buf_type type)
 	struct atomisp_video_pipe *preview_pipe = NULL;
 	struct atomisp_video_pipe *video_pipe = NULL;
 	struct videobuf_buffer *vb, *_vb;
-	enum atomisp_css_pipe_id css_pipe_id;
+	enum ia_css_pipe_id css_pipe_id;
 	int ret;
 	unsigned long flags;
 	bool first_streamoff = false;
@@ -2040,7 +2040,7 @@ int __atomisp_streamoff(struct file *file, void *fh, enum v4l2_buf_type type)
 	atomisp_clear_css_buffer_counters(asd);
 
 	if (!isp->sw_contex.file_input)
-		atomisp_css_irq_enable(isp, CSS_IRQ_INFO_CSS_RECEIVER_SOF,
+		atomisp_css_irq_enable(isp, IA_CSS_IRQ_INFO_CSS_RECEIVER_SOF,
 				       false);
 
 	if (asd->delayed_init == ATOMISP_DELAYED_INIT_QUEUED) {
diff --git a/drivers/staging/media/atomisp/pci/atomisp_ioctl.h b/drivers/staging/media/atomisp/pci/atomisp_ioctl.h
index 5f3f2ec2539b..cc09f568c60f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_ioctl.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_ioctl.h
@@ -43,7 +43,7 @@ int __atomisp_reqbufs(struct file *file, void *fh,
 int atomisp_reqbufs(struct file *file, void *fh,
 		    struct v4l2_requestbuffers *req);
 
-enum atomisp_css_pipe_id atomisp_get_css_pipe_id(struct atomisp_sub_device
+enum ia_css_pipe_id atomisp_get_css_pipe_id(struct atomisp_sub_device
 	*asd);
 
 void atomisp_videobuf_free_buf(struct videobuf_buffer *vb);
diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
index 46590129cbe3..d3206ddf3b65 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
@@ -30,26 +30,26 @@
 #include "atomisp_internal.h"
 
 const struct atomisp_in_fmt_conv atomisp_in_fmt_conv[] = {
-	{ MEDIA_BUS_FMT_SBGGR8_1X8, 8, 8, ATOMISP_INPUT_FORMAT_RAW_8, CSS_BAYER_ORDER_BGGR, CSS_FORMAT_RAW_8 },
-	{ MEDIA_BUS_FMT_SGBRG8_1X8, 8, 8, ATOMISP_INPUT_FORMAT_RAW_8, CSS_BAYER_ORDER_GBRG, CSS_FORMAT_RAW_8 },
-	{ MEDIA_BUS_FMT_SGRBG8_1X8, 8, 8, ATOMISP_INPUT_FORMAT_RAW_8, CSS_BAYER_ORDER_GRBG, CSS_FORMAT_RAW_8 },
-	{ MEDIA_BUS_FMT_SRGGB8_1X8, 8, 8, ATOMISP_INPUT_FORMAT_RAW_8, CSS_BAYER_ORDER_RGGB, CSS_FORMAT_RAW_8 },
-	{ MEDIA_BUS_FMT_SBGGR10_1X10, 10, 10, ATOMISP_INPUT_FORMAT_RAW_10, CSS_BAYER_ORDER_BGGR, CSS_FORMAT_RAW_10 },
-	{ MEDIA_BUS_FMT_SGBRG10_1X10, 10, 10, ATOMISP_INPUT_FORMAT_RAW_10, CSS_BAYER_ORDER_GBRG, CSS_FORMAT_RAW_10 },
-	{ MEDIA_BUS_FMT_SGRBG10_1X10, 10, 10, ATOMISP_INPUT_FORMAT_RAW_10, CSS_BAYER_ORDER_GRBG, CSS_FORMAT_RAW_10 },
-	{ MEDIA_BUS_FMT_SRGGB10_1X10, 10, 10, ATOMISP_INPUT_FORMAT_RAW_10, CSS_BAYER_ORDER_RGGB, CSS_FORMAT_RAW_10 },
-	{ MEDIA_BUS_FMT_SBGGR12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, CSS_BAYER_ORDER_BGGR, CSS_FORMAT_RAW_12 },
-	{ MEDIA_BUS_FMT_SGBRG12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, CSS_BAYER_ORDER_GBRG, CSS_FORMAT_RAW_12 },
-	{ MEDIA_BUS_FMT_SGRBG12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, CSS_BAYER_ORDER_GRBG, CSS_FORMAT_RAW_12 },
-	{ MEDIA_BUS_FMT_SRGGB12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, CSS_BAYER_ORDER_RGGB, CSS_FORMAT_RAW_12 },
+	{ MEDIA_BUS_FMT_SBGGR8_1X8, 8, 8, ATOMISP_INPUT_FORMAT_RAW_8, IA_CSS_BAYER_ORDER_BGGR, ATOMISP_INPUT_FORMAT_RAW_8 },
+	{ MEDIA_BUS_FMT_SGBRG8_1X8, 8, 8, ATOMISP_INPUT_FORMAT_RAW_8, IA_CSS_BAYER_ORDER_GBRG, ATOMISP_INPUT_FORMAT_RAW_8 },
+	{ MEDIA_BUS_FMT_SGRBG8_1X8, 8, 8, ATOMISP_INPUT_FORMAT_RAW_8, IA_CSS_BAYER_ORDER_GRBG, ATOMISP_INPUT_FORMAT_RAW_8 },
+	{ MEDIA_BUS_FMT_SRGGB8_1X8, 8, 8, ATOMISP_INPUT_FORMAT_RAW_8, IA_CSS_BAYER_ORDER_RGGB, ATOMISP_INPUT_FORMAT_RAW_8 },
+	{ MEDIA_BUS_FMT_SBGGR10_1X10, 10, 10, ATOMISP_INPUT_FORMAT_RAW_10, IA_CSS_BAYER_ORDER_BGGR, ATOMISP_INPUT_FORMAT_RAW_10 },
+	{ MEDIA_BUS_FMT_SGBRG10_1X10, 10, 10, ATOMISP_INPUT_FORMAT_RAW_10, IA_CSS_BAYER_ORDER_GBRG, ATOMISP_INPUT_FORMAT_RAW_10 },
+	{ MEDIA_BUS_FMT_SGRBG10_1X10, 10, 10, ATOMISP_INPUT_FORMAT_RAW_10, IA_CSS_BAYER_ORDER_GRBG, ATOMISP_INPUT_FORMAT_RAW_10 },
+	{ MEDIA_BUS_FMT_SRGGB10_1X10, 10, 10, ATOMISP_INPUT_FORMAT_RAW_10, IA_CSS_BAYER_ORDER_RGGB, ATOMISP_INPUT_FORMAT_RAW_10 },
+	{ MEDIA_BUS_FMT_SBGGR12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, IA_CSS_BAYER_ORDER_BGGR, ATOMISP_INPUT_FORMAT_RAW_12 },
+	{ MEDIA_BUS_FMT_SGBRG12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, IA_CSS_BAYER_ORDER_GBRG, ATOMISP_INPUT_FORMAT_RAW_12 },
+	{ MEDIA_BUS_FMT_SGRBG12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, IA_CSS_BAYER_ORDER_GRBG, ATOMISP_INPUT_FORMAT_RAW_12 },
+	{ MEDIA_BUS_FMT_SRGGB12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, IA_CSS_BAYER_ORDER_RGGB, ATOMISP_INPUT_FORMAT_RAW_12 },
 	{ MEDIA_BUS_FMT_UYVY8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
 	{ MEDIA_BUS_FMT_YUYV8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
-	{ MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
-	{ V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
-	{ V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
+	{ MEDIA_BUS_FMT_JPEG_1X8, 8, 8, IA_CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
+	{ V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, IA_CSS_FRAME_FORMAT_NV12, 0, IA_CSS_FRAME_FORMAT_NV12 },
+	{ V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, IA_CSS_FRAME_FORMAT_NV21, 0, IA_CSS_FRAME_FORMAT_NV21 },
 	{ V4L2_MBUS_FMT_CUSTOM_YUV420, 12, 12, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY, 0, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY },
 #if 0
-	{ V4L2_MBUS_FMT_CUSTOM_M10MO_RAW, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
+	{ V4L2_MBUS_FMT_CUSTOM_M10MO_RAW, 8, 8, IA_CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
 #endif
 	/* no valid V4L2 MBUS code for metadata format, so leave it 0. */
 	{ 0, 0, 0, ATOMISP_INPUT_FORMAT_EMBEDDED, 0, ATOMISP_INPUT_FORMAT_EMBEDDED },
diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.h b/drivers/staging/media/atomisp/pci/atomisp_subdev.h
index b0d561224beb..fdaed4cfb842 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_subdev.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.h
@@ -59,7 +59,7 @@ struct atomisp_in_fmt_conv {
 	u8 bpp; /* bits per pixel */
 	u8 depth; /* uncompressed */
 	enum atomisp_input_format atomisp_in_fmt;
-	enum atomisp_css_bayer_order bayer_order;
+	enum ia_css_bayer_order bayer_order;
 	enum atomisp_input_format css_stream_fmt;
 };
 
@@ -215,8 +215,8 @@ struct atomisp_subdev_params {
 	unsigned int histogram_elenum;
 
 	/* Current grid info */
-	struct atomisp_css_grid_info curr_grid_info;
-	enum atomisp_css_pipe_id s3a_enabled_pipe;
+	struct ia_css_grid_info curr_grid_info;
+	enum ia_css_pipe_id s3a_enabled_pipe;
 
 	int s3a_output_bytes;
 
@@ -225,7 +225,7 @@ struct atomisp_subdev_params {
 	struct ia_css_dz_config   dz_config;  /** Digital Zoom */
 	struct ia_css_capture_config   capture_config;
 
-	struct atomisp_css_isp_config config;
+	struct ia_css_isp_config config;
 
 	/* current configurations */
 	struct atomisp_css_params css_param;
@@ -240,7 +240,7 @@ struct atomisp_subdev_params {
 	u32 metadata_width_size;
 
 	struct ia_css_dvs2_statistics *dvs_stat;
-	struct atomisp_css_dvs_6axis *dvs_6axis;
+	struct ia_css_dvs_6axis_config *dvs_6axis;
 	u32 exp_id;
 	int  dvs_hor_coef_bytes;
 	int  dvs_ver_coef_bytes;
@@ -265,7 +265,7 @@ struct atomisp_css_params_with_list {
 };
 
 struct atomisp_acc_fw {
-	struct atomisp_css_fw_info *fw;
+	struct ia_css_fw_info *fw;
 	unsigned int handle;
 	unsigned int flags;
 	unsigned int type;
@@ -323,7 +323,7 @@ struct atomisp_sub_device {
 	struct {
 		struct list_head fw;
 		struct list_head memory_maps;
-		struct atomisp_css_pipeline *pipeline;
+		struct ia_css_pipe *pipeline;
 		bool extension_mode;
 		struct ida ida;
 		struct completion acc_done;
@@ -335,11 +335,11 @@ struct atomisp_sub_device {
 	struct atomisp_stream_env stream_env[ATOMISP_INPUT_STREAM_NUM];
 
 	struct v4l2_pix_format dvs_envelop;
-	unsigned int s3a_bufs_in_css[CSS_PIPE_ID_NUM];
+	unsigned int s3a_bufs_in_css[IA_CSS_PIPE_ID_NUM];
 	unsigned int dis_bufs_in_css;
 
 	unsigned int metadata_bufs_in_css
-	[ATOMISP_INPUT_STREAM_NUM][CSS_PIPE_ID_NUM];
+	[ATOMISP_INPUT_STREAM_NUM][IA_CSS_PIPE_ID_NUM];
 	/* The list of free and available metadata buffers for CSS */
 	struct list_head metadata[ATOMISP_METADATA_TYPE_NUM];
 	/* The list of metadata buffers which have been en-queued to CSS */
@@ -358,8 +358,8 @@ struct atomisp_sub_device {
 	struct list_head dis_stats_in_css;
 	spinlock_t dis_stats_lock;
 
-	struct atomisp_css_frame *vf_frame; /* TODO: needed? */
-	struct atomisp_css_frame *raw_output_frame;
+	struct ia_css_frame *vf_frame; /* TODO: needed? */
+	struct ia_css_frame *raw_output_frame;
 	enum atomisp_frame_status frame_status[VIDEO_MAX_FRAME];
 
 	/* This field specifies which camera (v4l2 input) is selected. */
diff --git a/drivers/staging/media/atomisp/pci/atomisp_tables.h b/drivers/staging/media/atomisp/pci/atomisp_tables.h
index 22eac8a25dba..f615d2f444db 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_tables.h
+++ b/drivers/staging/media/atomisp/pci/atomisp_tables.h
@@ -22,25 +22,25 @@
 #include "sh_css_params.h"
 
 /*Sepia image effect table*/
-static struct atomisp_css_cc_config sepia_cc_config = {
+static struct ia_css_cc_config sepia_cc_config = {
 	.fraction_bits  = 8,
 	.matrix	 = {141, 18, 68, -40, -5, -19, 35, 4, 16},
 };
 
 /*Negative image effect table*/
-static struct atomisp_css_cc_config nega_cc_config = {
+static struct ia_css_cc_config nega_cc_config = {
 	.fraction_bits  = 8,
 	.matrix	 = {255, 29, 120, 0, 374, 342, 0, 672, -301},
 };
 
 /*Mono image effect table*/
-static struct atomisp_css_cc_config mono_cc_config = {
+static struct ia_css_cc_config mono_cc_config = {
 	.fraction_bits  = 8,
 	.matrix	 = {255, 29, 120, 0, 0, 0, 0, 0, 0},
 };
 
 /*Skin whiten image effect table*/
-static struct atomisp_css_macc_table skin_low_macc_table = {
+static struct ia_css_macc_table skin_low_macc_table = {
 	.data = {
 		8192, 0, 0, 8192,
 		8192, 0, 0, 8192,
@@ -61,7 +61,7 @@ static struct atomisp_css_macc_table skin_low_macc_table = {
 	}
 };
 
-static struct atomisp_css_macc_table skin_medium_macc_table = {
+static struct ia_css_macc_table skin_medium_macc_table = {
 	.data = {
 		8192, 0, 0, 8192,
 		8192, 0, 0, 8192,
@@ -82,7 +82,7 @@ static struct atomisp_css_macc_table skin_medium_macc_table = {
 	}
 };
 
-static struct atomisp_css_macc_table skin_high_macc_table = {
+static struct ia_css_macc_table skin_high_macc_table = {
 	.data = {
 		8192, 0, 0, 8192,
 		8192, 0, 0, 8192,
@@ -104,7 +104,7 @@ static struct atomisp_css_macc_table skin_high_macc_table = {
 };
 
 /*Blue enhencement image effect table*/
-static struct atomisp_css_macc_table blue_macc_table = {
+static struct ia_css_macc_table blue_macc_table = {
 	.data = {
 		9728, -3072, 0, 8192,
 		8192, 0, 0, 8192,
@@ -126,7 +126,7 @@ static struct atomisp_css_macc_table blue_macc_table = {
 };
 
 /*Green enhencement image effect table*/
-static struct atomisp_css_macc_table green_macc_table = {
+static struct ia_css_macc_table green_macc_table = {
 	.data = {
 		8192, 0, 0, 8192,
 		8192, 0, 0, 8192,
@@ -147,7 +147,7 @@ static struct atomisp_css_macc_table green_macc_table = {
 	}
 };
 
-static struct atomisp_css_ctc_table vivid_ctc_table = {
+static struct ia_css_ctc_table vivid_ctc_table = {
 	.data.vamem_2 = {
 		0,  384,  837,  957, 1011, 1062, 1083, 1080,
 		1078, 1077, 1053, 1039, 1012,  992,  969,  951,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
