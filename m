Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD001E8ED1
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 09:06:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB64F88677;
	Sat, 30 May 2020 07:06:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QWF29dUoD3fD; Sat, 30 May 2020 07:06:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B58E88618;
	Sat, 30 May 2020 07:05:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 827091BF282
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 07:05:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6C1BE893B8
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 07:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rtXIR+2re02V for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 07:05:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 23557893B9
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 07:05:14 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 293CF22211;
 Sat, 30 May 2020 06:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590821766;
 bh=sV6K2SyPoAqfjrqpX9aUV/ANyEEQR1bkup6GS5ZiSXs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XdBiad2lFJa/l65onnB+WZjBuLpzLdAFTbRlJRqUBO0mgPNJb6cOreGTjAoCrnemK
 +YtKcwskg4Yfx8KxYOOwGwxOvajDMGOgvGGxwQa/8KeIii3DExR8hyo5FkDNK/kDW0
 tAbbebTevjH6w9yCXq3sYz1xAfVMBlshHiMOBou8=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jevPV-001hqS-Q2; Sat, 30 May 2020 08:56:02 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 30/41] media: atomisp: get rid of non-Linux error codes
Date: Sat, 30 May 2020 08:55:47 +0200
Message-Id: <090bee8219a2daf4c06b1891f00c0e87909e918e.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
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
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The atomisp driver has its own error codes under the
ia_css_err.h file. On several places, those got already
replaced by standard error codes, but there are still a
lot more to be fixed.

Let's get rid of all of those, mapping them into
the already-existing set of Linux error codes.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/media/atomisp/pci/atomisp_acc.c   |    4 +-
 .../staging/media/atomisp/pci/atomisp_cmd.c   |    4 +-
 .../media/atomisp/pci/atomisp_compat_css20.c  |  110 +-
 .../base/refcount/interface/ia_css_refcount.h |    2 +-
 .../atomisp/pci/base/refcount/src/refcount.c  |   12 +-
 .../pipe/interface/ia_css_pipe_binarydesc.h   |   16 +-
 .../pci/camera/pipe/src/pipe_binarydesc.c     |   28 +-
 .../pci/camera/util/interface/ia_css_util.h   |   18 +-
 .../media/atomisp/pci/camera/util/src/util.c  |   54 +-
 drivers/staging/media/atomisp/pci/ia_css_3a.h |    2 +-
 .../media/atomisp/pci/ia_css_control.h        |   16 +-
 .../staging/media/atomisp/pci/ia_css_dvs.h    |    4 +-
 .../staging/media/atomisp/pci/ia_css_err.h    |   21 -
 .../media/atomisp/pci/ia_css_event_public.h   |   18 +-
 .../media/atomisp/pci/ia_css_firmware.h       |    6 +-
 .../media/atomisp/pci/ia_css_frame_public.h   |   14 +-
 .../staging/media/atomisp/pci/ia_css_irq.h    |    8 +-
 .../staging/media/atomisp/pci/ia_css_mipi.h   |    6 +-
 .../staging/media/atomisp/pci/ia_css_pipe.h   |    2 +-
 .../media/atomisp/pci/ia_css_pipe_public.h    |   70 +-
 .../staging/media/atomisp/pci/ia_css_stream.h |    2 +-
 .../media/atomisp/pci/ia_css_stream_public.h  |   70 +-
 .../staging/media/atomisp/pci/ia_css_timer.h  |    4 +-
 .../media/atomisp/pci/ia_css_version.h        |    2 +-
 .../isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c |    8 +-
 .../isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h |    2 +-
 .../iterator_1.0/ia_css_iterator.host.c       |    4 +-
 .../iterator_1.0/ia_css_iterator.host.h       |    2 +-
 .../kernels/sdis/sdis_1.0/ia_css_sdis.host.c  |    6 +-
 .../kernels/sdis/sdis_1.0/ia_css_sdis.host.h  |    2 +-
 .../kernels/sdis/sdis_2/ia_css_sdis2.host.c   |    6 +-
 .../kernels/sdis/sdis_2/ia_css_sdis2.host.h   |    2 +-
 .../isp/kernels/vf/vf_1.0/ia_css_vf.host.c    |   24 +-
 .../isp/kernels/vf/vf_1.0/ia_css_vf.host.h    |    4 +-
 .../runtime/binary/interface/ia_css_binary.h  |   14 +-
 .../atomisp/pci/runtime/binary/src/binary.c   |   76 +-
 .../pci/runtime/bufq/interface/ia_css_bufq.h  |   32 +-
 .../media/atomisp/pci/runtime/bufq/src/bufq.c |   58 +-
 .../runtime/debug/interface/ia_css_debug.h    |    4 +-
 .../runtime/frame/interface/ia_css_frame.h    |   10 +-
 .../atomisp/pci/runtime/frame/src/frame.c     |  102 +-
 .../runtime/ifmtr/interface/ia_css_ifmtr.h    |    2 +-
 .../atomisp/pci/runtime/ifmtr/src/ifmtr.c     |   28 +-
 .../isp_param/interface/ia_css_isp_param.h    |    4 +-
 .../pci/runtime/isp_param/src/isp_param.c     |   14 +-
 .../pci/runtime/isys/interface/ia_css_isys.h  |   12 +-
 .../pci/runtime/isys/src/csi_rx_rmgr.c        |   12 +-
 .../media/atomisp/pci/runtime/isys/src/rx.c   |   20 +-
 .../pipeline/interface/ia_css_pipeline.h      |   28 +-
 .../pci/runtime/pipeline/src/pipeline.c       |   80 +-
 .../pci/runtime/rmgr/interface/ia_css_rmgr.h  |    2 +-
 .../runtime/rmgr/interface/ia_css_rmgr_vbuf.h |    2 +-
 .../media/atomisp/pci/runtime/rmgr/src/rmgr.c |   10 +-
 .../atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c  |    8 +-
 .../runtime/spctrl/interface/ia_css_spctrl.h  |    8 +-
 .../atomisp/pci/runtime/spctrl/src/spctrl.c   |   24 +-
 .../atomisp/pci/runtime/timer/src/timer.c     |    6 +-
 drivers/staging/media/atomisp/pci/sh_css.c    | 1515 +++++++++--------
 .../media/atomisp/pci/sh_css_firmware.c       |   54 +-
 .../media/atomisp/pci/sh_css_firmware.h       |    4 +-
 .../staging/media/atomisp/pci/sh_css_hrt.c    |    4 +-
 .../staging/media/atomisp/pci/sh_css_hrt.h    |    2 +-
 .../media/atomisp/pci/sh_css_internal.h       |    2 +-
 .../staging/media/atomisp/pci/sh_css_legacy.h |    6 +-
 .../staging/media/atomisp/pci/sh_css_mipi.c   |   64 +-
 .../staging/media/atomisp/pci/sh_css_mipi.h   |    8 +-
 .../media/atomisp/pci/sh_css_param_dvs.c      |   14 +-
 .../staging/media/atomisp/pci/sh_css_params.c |  302 ++--
 .../staging/media/atomisp/pci/sh_css_params.h |    4 +-
 drivers/staging/media/atomisp/pci/sh_css_sp.c |   84 +-
 .../media/atomisp/pci/sh_css_version.c        |    6 +-
 71 files changed, 1578 insertions(+), 1600 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_acc.c b/drivers/staging/media/atomisp/pci/atomisp_acc.c
index 8633afdc3f39..c256778a689e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_acc.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_acc.c
@@ -559,7 +559,7 @@ int atomisp_acc_set_state(struct atomisp_sub_device *asd,
 	struct atomisp_acc_fw *acc_fw;
 	bool enable = (arg->flags & ATOMISP_STATE_FLAG_ENABLE) != 0;
 	struct ia_css_pipe *pipe;
-	enum ia_css_err r;
+	int r;
 	int i;
 
 	if (!asd->acc.extension_mode)
@@ -581,7 +581,7 @@ int atomisp_acc_set_state(struct atomisp_sub_device *asd,
 			       pipes[acc_flag_to_pipe[i].pipe_id];
 			r = ia_css_pipe_set_qos_ext_state(pipe, acc_fw->handle,
 							  enable);
-			if (r != IA_CSS_SUCCESS)
+			if (r)
 				return -EBADRQC;
 		}
 	}
diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 5754e66eb024..077017671513 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -586,7 +586,7 @@ irqreturn_t atomisp_isr(int irq, void *dev)
 
 	if (irq_infos & IA_CSS_IRQ_INFO_ISYS_EVENTS_READY) {
 		while (ia_css_dequeue_isys_event(&eof_event.event) ==
-		       IA_CSS_SUCCESS) {
+		       0) {
 			/* EOF Event does not have the css_pipe returned */
 			asd = __get_asd_from_port(isp, eof_event.event.port);
 			if (!asd) {
@@ -6632,7 +6632,7 @@ int atomisp_get_invalid_frame_num(struct video_device *vdev,
 	ret = ia_css_pipe_get_info(
 		  asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL]
 		  .pipes[pipe_id], &p_info);
-	if (ret == IA_CSS_SUCCESS) {
+	if (!ret) {
 		*invalid_frame_num = p_info.num_invalid_frames;
 		return 0;
 	} else {
diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 59228d711048..3dc5c4eeb8d3 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -437,7 +437,7 @@ static int __destroy_stream(struct atomisp_sub_device *asd,
 	}
 
 	if (stream_env->stream_state == CSS_STREAM_STARTED
-	    && ia_css_stream_stop(stream_env->stream) != IA_CSS_SUCCESS) {
+	    && ia_css_stream_stop(stream_env->stream) != 0) {
 		dev_err(isp->dev, "stop stream failed.\n");
 		return -EINVAL;
 	}
@@ -459,7 +459,7 @@ static int __destroy_stream(struct atomisp_sub_device *asd,
 
 	stream_env->stream_state = CSS_STREAM_STOPPED;
 
-	if (ia_css_stream_destroy(stream_env->stream) != IA_CSS_SUCCESS) {
+	if (ia_css_stream_destroy(stream_env->stream)) {
 		dev_err(isp->dev, "destroy stream failed.\n");
 		return -EINVAL;
 	}
@@ -503,10 +503,10 @@ static int __create_stream(struct atomisp_sub_device *asd,
 
 	__dump_stream_config(asd, stream_env);
 	if (ia_css_stream_create(&stream_env->stream_config,
-				 pipe_index, multi_pipes, &stream_env->stream) != IA_CSS_SUCCESS)
+				 pipe_index, multi_pipes, &stream_env->stream) != 0)
 		return -EINVAL;
 	if (ia_css_stream_get_info(stream_env->stream,
-				   &stream_env->stream_info) != IA_CSS_SUCCESS) {
+				   &stream_env->stream_info) != 0) {
 		ia_css_stream_destroy(stream_env->stream);
 		stream_env->stream = NULL;
 		return -EINVAL;
@@ -546,7 +546,7 @@ static int __destroy_stream_pipes(struct atomisp_sub_device *asd,
 		    !(force || stream_env->update_pipe[i]))
 			continue;
 		if (ia_css_pipe_destroy(stream_env->pipes[i])
-		    != IA_CSS_SUCCESS) {
+		    != 0) {
 			dev_err(isp->dev,
 				"destroy pipe[%d]failed.cannot recover.\n", i);
 			ret = -EINVAL;
@@ -731,7 +731,7 @@ static int __create_pipe(struct atomisp_sub_device *asd,
 {
 	struct atomisp_device *isp = asd->isp;
 	struct ia_css_pipe_extra_config extra_config;
-	enum ia_css_err ret;
+	int ret;
 
 	if (pipe_id >= IA_CSS_PIPE_ID_NUM)
 		return -EINVAL;
@@ -761,20 +761,20 @@ static int __create_pipe(struct atomisp_sub_device *asd,
 			  &stream_env->pipe_configs[pipe_id],
 			  &stream_env->pipe_extra_configs[pipe_id],
 			  &stream_env->pipes[pipe_id]);
-	if (ret != IA_CSS_SUCCESS)
+	if (ret)
 		dev_err(isp->dev, "create pipe[%d] error.\n", pipe_id);
 	return ret;
 }
 
 static int __create_pipes(struct atomisp_sub_device *asd)
 {
-	enum ia_css_err ret;
+	int ret;
 	int i, j;
 
 	for (i = 0; i < ATOMISP_INPUT_STREAM_NUM; i++) {
 		for (j = 0; j < IA_CSS_PIPE_ID_NUM; j++) {
 			ret = __create_pipe(asd, &asd->stream_env[i], j);
-			if (ret != IA_CSS_SUCCESS)
+			if (ret)
 				break;
 		}
 		if (j < IA_CSS_PIPE_ID_NUM)
@@ -805,20 +805,20 @@ int atomisp_css_update_stream(struct atomisp_sub_device *asd)
 	int ret;
 	struct atomisp_device *isp = asd->isp;
 
-	if (__destroy_streams(asd, true) != IA_CSS_SUCCESS)
+	if (__destroy_streams(asd, true))
 		dev_warn(isp->dev, "destroy stream failed.\n");
 
-	if (__destroy_pipes(asd, true) != IA_CSS_SUCCESS)
+	if (__destroy_pipes(asd, true))
 		dev_warn(isp->dev, "destroy pipe failed.\n");
 
 	ret = __create_pipes(asd);
-	if (ret != IA_CSS_SUCCESS) {
+	if (ret) {
 		dev_err(isp->dev, "create pipe failed %d.\n", ret);
 		return -EIO;
 	}
 
 	ret = __create_streams(asd);
-	if (ret != IA_CSS_SUCCESS) {
+	if (ret) {
 		dev_warn(isp->dev, "create stream failed %d.\n", ret);
 		__destroy_pipes(asd, true);
 		return -EIO;
@@ -831,7 +831,7 @@ int atomisp_css_init(struct atomisp_device *isp)
 {
 	unsigned int mmu_base_addr;
 	int ret;
-	enum ia_css_err err;
+	int err;
 
 	ret = hmm_get_mmu_base_addr(&mmu_base_addr);
 	if (ret)
@@ -840,7 +840,7 @@ int atomisp_css_init(struct atomisp_device *isp)
 	/* Init ISP */
 	err = ia_css_init(isp->dev, &isp->css_env.isp_css_env, NULL,
 			  (uint32_t)mmu_base_addr, IA_CSS_IRQ_TYPE_PULSE);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		dev_err(isp->dev, "css init failed --- bad firmware?\n");
 		return -EINVAL;
 	}
@@ -872,7 +872,7 @@ static inline int __set_css_print_env(struct atomisp_device *isp, int opt)
 
 int atomisp_css_load_firmware(struct atomisp_device *isp)
 {
-	enum ia_css_err err;
+	int err;
 
 	/* set css env */
 	isp->css_env.isp_css_fw.data = (void *)isp->firmware->data;
@@ -901,7 +901,7 @@ int atomisp_css_load_firmware(struct atomisp_device *isp)
 	/* load isp fw into ISP memory */
 	err = ia_css_load_firmware(isp->dev, &isp->css_env.isp_css_env,
 				   &isp->css_env.isp_css_fw);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		dev_err(isp->dev, "css load fw failed.\n");
 		return -EINVAL;
 	}
@@ -959,7 +959,7 @@ int atomisp_css_irq_translate(struct atomisp_device *isp,
 	int err;
 
 	err = ia_css_irq_translate(infos);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		dev_warn(isp->dev,
 			 "%s:failed to translate irq (err = %d,infos = %d)\n",
 			 __func__, err, *infos);
@@ -993,7 +993,7 @@ int atomisp_css_irq_enable(struct atomisp_device *isp,
 	dev_dbg(isp->dev, "%s: css irq info 0x%08x: %s.\n",
 		__func__, info,
 		enable ? "enable" : "disable");
-	if (ia_css_irq_enable(info, enable) != IA_CSS_SUCCESS) {
+	if (ia_css_irq_enable(info, enable)) {
 		dev_warn(isp->dev, "%s:Invalid irq info: 0x%08x when %s.\n",
 			 __func__, info,
 			 enable ? "enabling" : "disabling");
@@ -1029,14 +1029,14 @@ int atomisp_q_video_buffer_to_css(struct atomisp_sub_device *asd,
 {
 	struct atomisp_stream_env *stream_env = &asd->stream_env[stream_id];
 	struct ia_css_buffer css_buf = {0};
-	enum ia_css_err err;
+	int err;
 
 	css_buf.type = css_buf_type;
 	css_buf.data.frame = vm_mem->vaddr;
 
 	err = ia_css_pipe_enqueue_buffer(
 		  stream_env->pipes[css_pipe_id], &css_buf);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return -EINVAL;
 
 	return 0;
@@ -1164,7 +1164,7 @@ int atomisp_css_start(struct atomisp_sub_device *asd,
 	} else {
 		if (!sh_css_hrt_system_is_idle())
 			dev_err(isp->dev, "CSS HW not idle before starting SP\n");
-		if (ia_css_start_sp() != IA_CSS_SUCCESS) {
+		if (ia_css_start_sp()) {
 			dev_err(isp->dev, "start sp error.\n");
 			ret = -EINVAL;
 			goto start_err;
@@ -1176,7 +1176,7 @@ int atomisp_css_start(struct atomisp_sub_device *asd,
 	for (i = 0; i < ATOMISP_INPUT_STREAM_NUM; i++) {
 		if (asd->stream_env[i].stream) {
 			if (ia_css_stream_start(asd->stream_env[i]
-						.stream) != IA_CSS_SUCCESS) {
+						.stream) != 0) {
 				dev_err(isp->dev, "stream[%d] start error.\n", i);
 				ret = -EINVAL;
 				goto start_err;
@@ -1233,7 +1233,7 @@ void atomisp_css_update_isp_params(struct atomisp_sub_device *asd)
 void atomisp_css_update_isp_params_on_pipe(struct atomisp_sub_device *asd,
 	struct ia_css_pipe *pipe)
 {
-	enum ia_css_err ret;
+	int ret;
 
 	if (!pipe) {
 		atomisp_css_update_isp_params(asd);
@@ -1248,7 +1248,7 @@ void atomisp_css_update_isp_params_on_pipe(struct atomisp_sub_device *asd,
 	ret = ia_css_stream_set_isp_config_on_pipe(
 		  asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream,
 		  &asd->params.config, pipe);
-	if (ret != IA_CSS_SUCCESS)
+	if (ret)
 		dev_warn(asd->isp->dev, "%s: ia_css_stream_set_isp_config_on_pipe failed %d\n",
 			 __func__, ret);
 	memset(&asd->params.config, 0, sizeof(asd->params.config));
@@ -1263,7 +1263,7 @@ int atomisp_css_queue_buffer(struct atomisp_sub_device *asd,
 	if (ia_css_pipe_enqueue_buffer(
 		asd->stream_env[stream_id].pipes[pipe_id],
 		&isp_css_buffer->css_buffer)
-	    != IA_CSS_SUCCESS)
+	    != 0)
 		return -EINVAL;
 
 	return 0;
@@ -1276,12 +1276,12 @@ int atomisp_css_dequeue_buffer(struct atomisp_sub_device *asd,
 			       struct atomisp_css_buffer *isp_css_buffer)
 {
 	struct atomisp_device *isp = asd->isp;
-	enum ia_css_err err;
+	int err;
 
 	err = ia_css_pipe_dequeue_buffer(
 		  asd->stream_env[stream_id].pipes[pipe_id],
 		  &isp_css_buffer->css_buffer);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		dev_err(isp->dev,
 			"ia_css_pipe_dequeue_buffer failed: 0x%x\n", err);
 		return -EINVAL;
@@ -1481,7 +1481,7 @@ int atomisp_css_get_grid_info(struct atomisp_sub_device *asd,
 
 	if (ia_css_pipe_get_info(
 		asd->stream_env[stream_index].pipes[pipe_id],
-		&p_info) != IA_CSS_SUCCESS) {
+		&p_info) != 0) {
 		dev_err(isp->dev, "ia_css_pipe_get_info failed\n");
 		return -EINVAL;
 	}
@@ -1635,7 +1635,7 @@ void atomisp_css_get_dis_statistics(struct atomisp_sub_device *asd,
 
 int atomisp_css_dequeue_event(struct atomisp_css_event *current_event)
 {
-	if (ia_css_dequeue_event(&current_event->event) != IA_CSS_SUCCESS)
+	if (ia_css_dequeue_event(&current_event->event))
 		return -EINVAL;
 
 	return 0;
@@ -1959,7 +1959,7 @@ void atomisp_css_input_set_mode(struct atomisp_sub_device *asd,
 			s_config->input_config.format,
 			true,
 			0x13000,
-			&size_mem_words) != IA_CSS_SUCCESS) {
+			&size_mem_words) != 0) {
 			if (intel_mid_identify_cpu() ==
 			    INTEL_MID_CPU_CHIP_TANGIER)
 				size_mem_words = CSS_MIPI_FRAME_BUFFER_SIZE_2;
@@ -2106,7 +2106,7 @@ int atomisp_css_frame_allocate(struct ia_css_frame **frame,
 			       unsigned int raw_bit_depth)
 {
 	if (ia_css_frame_allocate(frame, width, height, format,
-				  padded_width, raw_bit_depth) != IA_CSS_SUCCESS)
+				  padded_width, raw_bit_depth) != 0)
 		return -ENOMEM;
 
 	return 0;
@@ -2115,7 +2115,7 @@ int atomisp_css_frame_allocate(struct ia_css_frame **frame,
 int atomisp_css_frame_allocate_from_info(struct ia_css_frame **frame,
 	const struct ia_css_frame_info *info)
 {
-	if (ia_css_frame_allocate_from_info(frame, info) != IA_CSS_SUCCESS)
+	if (ia_css_frame_allocate_from_info(frame, info))
 		return -ENOMEM;
 
 	return 0;
@@ -2132,7 +2132,7 @@ int atomisp_css_frame_map(struct ia_css_frame **frame,
 			  unsigned int pgnr)
 {
 	if (ia_css_frame_map(frame, info, data, attribute, pgnr)
-	    != IA_CSS_SUCCESS)
+	    != 0)
 		return -ENOMEM;
 
 	return 0;
@@ -2143,7 +2143,7 @@ int atomisp_css_set_black_frame(struct atomisp_sub_device *asd,
 {
 	if (sh_css_set_black_frame(
 		asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream,
-		raw_black_frame) != IA_CSS_SUCCESS)
+		raw_black_frame) != 0)
 		return -ENOMEM;
 
 	return 0;
@@ -2154,7 +2154,7 @@ int atomisp_css_allocate_continuous_frames(bool init_time,
 {
 	if (ia_css_alloc_continuous_frame_remain(
 		asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream)
-	    != IA_CSS_SUCCESS)
+	    != 0)
 		return -EINVAL;
 	return 0;
 }
@@ -2754,7 +2754,7 @@ static int __get_frame_info(struct atomisp_sub_device *asd,
 			    enum ia_css_pipe_id pipe_id)
 {
 	struct atomisp_device *isp = asd->isp;
-	enum ia_css_err ret;
+	int ret;
 	struct ia_css_pipe_info p_info;
 
 	/* FIXME! No need to destroy/recreate all streams */
@@ -2773,7 +2773,7 @@ static int __get_frame_info(struct atomisp_sub_device *asd,
 	ret = ia_css_pipe_get_info(
 		  asd->stream_env[stream_index]
 		  .pipes[pipe_id], &p_info);
-	if (ret == IA_CSS_SUCCESS) {
+	if (!ret) {
 		switch (type) {
 		case ATOMISP_CSS_VF_FRAME:
 			*info = p_info.vf_output_info[0];
@@ -2867,7 +2867,7 @@ int atomisp_get_css_frame_info(struct atomisp_sub_device *asd,
 			       atomisp_source_pad_to_stream_id(asd, source_pad);
 	}
 
-	if (IA_CSS_SUCCESS != ia_css_pipe_get_info(asd->stream_env[stream_index]
+	if (0 != ia_css_pipe_get_info(asd->stream_env[stream_index]
 		.pipes[pipe_index], &info)) {
 		dev_err(isp->dev, "ia_css_pipe_get_info FAILED");
 		return -EINVAL;
@@ -3239,7 +3239,7 @@ int atomisp_css_video_configure_pp_input(
 int atomisp_css_offline_capture_configure(struct atomisp_sub_device *asd,
 	int num_captures, unsigned int skip, int offset)
 {
-	enum ia_css_err ret;
+	int ret;
 
 	dev_dbg(asd->isp->dev, "%s num_capture:%d skip:%d offset:%d\n",
 		__func__, num_captures, skip, offset);
@@ -3247,7 +3247,7 @@ int atomisp_css_offline_capture_configure(struct atomisp_sub_device *asd,
 	ret = ia_css_stream_capture(
 		  asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream,
 		  num_captures, skip, offset);
-	if (ret != IA_CSS_SUCCESS)
+	if (ret)
 		return -EINVAL;
 
 	return 0;
@@ -3255,15 +3255,15 @@ int atomisp_css_offline_capture_configure(struct atomisp_sub_device *asd,
 
 int atomisp_css_exp_id_capture(struct atomisp_sub_device *asd, int exp_id)
 {
-	enum ia_css_err ret;
+	int ret;
 
 	ret = ia_css_stream_capture_frame(
 		  asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream,
 		  exp_id);
-	if (ret == IA_CSS_ERR_QUEUE_IS_FULL) {
+	if (ret == -ENOBUFS) {
 		/* capture cmd queue is full */
 		return -EBUSY;
-	} else if (ret != IA_CSS_SUCCESS) {
+	} else if (ret) {
 		return -EIO;
 	}
 
@@ -3272,14 +3272,14 @@ int atomisp_css_exp_id_capture(struct atomisp_sub_device *asd, int exp_id)
 
 int atomisp_css_exp_id_unlock(struct atomisp_sub_device *asd, int exp_id)
 {
-	enum ia_css_err ret;
+	int ret;
 
 	ret = ia_css_unlock_raw_frame(
 		  asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].stream,
 		  exp_id);
-	if (ret == IA_CSS_ERR_QUEUE_IS_FULL)
+	if (ret == -ENOBUFS)
 		return -EAGAIN;
-	else if (ret != IA_CSS_SUCCESS)
+	else if (ret)
 		return -EIO;
 
 	return 0;
@@ -4236,14 +4236,14 @@ int atomisp_css_create_acc_pipe(struct atomisp_sub_device *asd)
 	if (stream_env->acc_stream) {
 		if (stream_env->acc_stream_state == CSS_STREAM_STARTED) {
 			if (ia_css_stream_stop(stream_env->acc_stream)
-			    != IA_CSS_SUCCESS) {
+			    != 0) {
 				dev_err(isp->dev, "stop acc_stream failed.\n");
 				return -EBUSY;
 			}
 		}
 
 		if (ia_css_stream_destroy(stream_env->acc_stream)
-		    != IA_CSS_SUCCESS) {
+		    != 0) {
 			dev_err(isp->dev, "destroy acc_stream failed.\n");
 			return -EBUSY;
 		}
@@ -4277,7 +4277,7 @@ int atomisp_css_start_acc_pipe(struct atomisp_sub_device *asd)
 		    &stream_env->pipe_configs[IA_CSS_PIPE_ID_ACC];
 
 	if (ia_css_pipe_create(pipe_config,
-			       &stream_env->pipes[IA_CSS_PIPE_ID_ACC]) != IA_CSS_SUCCESS) {
+			       &stream_env->pipes[IA_CSS_PIPE_ID_ACC]) != 0) {
 		dev_err(isp->dev, "%s: ia_css_pipe_create failed\n",
 			__func__);
 		return -EBADE;
@@ -4287,7 +4287,7 @@ int atomisp_css_start_acc_pipe(struct atomisp_sub_device *asd)
 	       sizeof(struct ia_css_stream_config));
 	if (ia_css_stream_create(&stream_env->acc_stream_config, 1,
 				 &stream_env->pipes[IA_CSS_PIPE_ID_ACC],
-				 &stream_env->acc_stream) != IA_CSS_SUCCESS) {
+				 &stream_env->acc_stream) != 0) {
 		dev_err(isp->dev, "%s: create acc_stream error.\n", __func__);
 		return -EINVAL;
 	}
@@ -4298,13 +4298,13 @@ int atomisp_css_start_acc_pipe(struct atomisp_sub_device *asd)
 
 	atomisp_freq_scaling(isp, ATOMISP_DFS_MODE_MAX, false);
 
-	if (ia_css_start_sp() != IA_CSS_SUCCESS) {
+	if (ia_css_start_sp()) {
 		dev_err(isp->dev, "start sp error.\n");
 		return -EIO;
 	}
 
 	if (ia_css_stream_start(stream_env->acc_stream)
-	    != IA_CSS_SUCCESS) {
+	    != 0) {
 		dev_err(isp->dev, "acc_stream start error.\n");
 		return -EIO;
 	}
@@ -4330,7 +4330,7 @@ void atomisp_css_destroy_acc_pipe(struct atomisp_sub_device *asd)
 		    &asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL];
 	if (stream_env->acc_stream) {
 		if (ia_css_stream_destroy(stream_env->acc_stream)
-		    != IA_CSS_SUCCESS)
+		    != 0)
 			dev_warn(asd->isp->dev,
 				 "destroy acc_stream failed.\n");
 		stream_env->acc_stream = NULL;
@@ -4338,7 +4338,7 @@ void atomisp_css_destroy_acc_pipe(struct atomisp_sub_device *asd)
 
 	if (stream_env->pipes[IA_CSS_PIPE_ID_ACC]) {
 		if (ia_css_pipe_destroy(stream_env->pipes[IA_CSS_PIPE_ID_ACC])
-		    != IA_CSS_SUCCESS)
+		    != 0)
 			dev_warn(asd->isp->dev,
 				 "destroy ACC pipe failed.\n");
 		stream_env->pipes[IA_CSS_PIPE_ID_ACC] = NULL;
diff --git a/drivers/staging/media/atomisp/pci/base/refcount/interface/ia_css_refcount.h b/drivers/staging/media/atomisp/pci/base/refcount/interface/ia_css_refcount.h
index 9f6e05b19262..9d2b7f3b6c01 100644
--- a/drivers/staging/media/atomisp/pci/base/refcount/interface/ia_css_refcount.h
+++ b/drivers/staging/media/atomisp/pci/base/refcount/interface/ia_css_refcount.h
@@ -27,7 +27,7 @@ typedef void (*clear_func)(ia_css_ptr ptr);
  * \param[in]	size		Size of the refcount list.
  * \return				ia_css_err
  */
-enum ia_css_err ia_css_refcount_init(uint32_t size);
+int ia_css_refcount_init(uint32_t size);
 
 /*! \brief Function for de-initializing refcount list
  *
diff --git a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
index 997f275ea9ec..608bdcff0e44 100644
--- a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
+++ b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
@@ -66,25 +66,25 @@ static struct ia_css_refcount_entry *refcount_find_entry(ia_css_ptr ptr,
 	return NULL;
 }
 
-enum ia_css_err ia_css_refcount_init(uint32_t size)
+int ia_css_refcount_init(uint32_t size)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	if (size == 0) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_refcount_init(): Size of 0 for Ref count init!\n");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 	if (myrefcount.items) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_refcount_init(): Ref count is already initialized\n");
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	}
 	myrefcount.items =
 	    kvmalloc(sizeof(struct ia_css_refcount_entry) * size, GFP_KERNEL);
 	if (!myrefcount.items)
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
-	if (err == IA_CSS_SUCCESS) {
+		err = -ENOMEM;
+	if (!err) {
 		memset(myrefcount.items, 0,
 		       sizeof(struct ia_css_refcount_entry) * size);
 		myrefcount.size = size;
diff --git a/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_binarydesc.h b/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_binarydesc.h
index 551e8d7c5003..844cc70d887b 100644
--- a/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_binarydesc.h
+++ b/drivers/staging/media/atomisp/pci/camera/pipe/interface/ia_css_pipe_binarydesc.h
@@ -59,10 +59,10 @@ void ia_css_pipe_get_vfpp_binarydesc(
  *		(= The numerator member in the sh_css_bds_factor structure.)
  * @param[out] bds_factor_denominator: The denominator of the bayer downscaling factor.
  *		(= The denominator member in the sh_css_bds_factor structure.)
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum ia_css_err sh_css_bds_factor_get_numerator_denominator(
+int sh_css_bds_factor_get_numerator_denominator(
     unsigned int bds_factor,
     unsigned int *bds_factor_numerator,
     unsigned int *bds_factor_denominator);
@@ -75,10 +75,10 @@ enum ia_css_err sh_css_bds_factor_get_numerator_denominator(
  * @param[in/out] bds_out_info
  * @param[in/out] out_info
  * @param[in/out] vf_info
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_pipe_get_preview_binarydesc(
+int ia_css_pipe_get_preview_binarydesc(
     struct ia_css_pipe *const pipe,
     struct ia_css_binary_descr *preview_descr,
     struct ia_css_frame_info *in_info,
@@ -93,10 +93,10 @@ enum ia_css_err ia_css_pipe_get_preview_binarydesc(
  * @param[in/out] in_info
  * @param[in/out] bds_out_info
  * @param[in/out] vf_info
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_pipe_get_video_binarydesc(
+int ia_css_pipe_get_video_binarydesc(
     struct ia_css_pipe *const pipe,
     struct ia_css_binary_descr *video_descr,
     struct ia_css_frame_info *in_info,
@@ -287,9 +287,9 @@ void ia_css_pipe_get_ldc_binarydesc(
  * @param[in] input_res
  * @param[in] output_res
  * @param[in/out] bds_factor
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  */
-enum ia_css_err binarydesc_calculate_bds_factor(
+int binarydesc_calculate_bds_factor(
     struct ia_css_resolution input_res,
     struct ia_css_resolution output_res,
     unsigned int *bds_factor);
diff --git a/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_binarydesc.c b/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_binarydesc.c
index c6b07d65ce3e..935874c35073 100644
--- a/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_binarydesc.c
+++ b/drivers/staging/media/atomisp/pci/camera/pipe/src/pipe_binarydesc.c
@@ -141,7 +141,7 @@ static struct sh_css_bds_factor bds_factors_list[] = {
 	{8, 1, SH_CSS_BDS_FACTOR_8_00}
 };
 
-enum ia_css_err sh_css_bds_factor_get_numerator_denominator(
+int sh_css_bds_factor_get_numerator_denominator(
     unsigned int bds_factor,
     unsigned int *bds_factor_numerator,
     unsigned int *bds_factor_denominator)
@@ -153,16 +153,16 @@ enum ia_css_err sh_css_bds_factor_get_numerator_denominator(
 		if (bds_factors_list[i].bds_factor == bds_factor) {
 			*bds_factor_numerator = bds_factors_list[i].numerator;
 			*bds_factor_denominator = bds_factors_list[i].denominator;
-			return IA_CSS_SUCCESS;
+			return 0;
 		}
 	}
 
 	/* Throw an error since bds_factor cannot be found
 	in bds_factors_list */
-	return IA_CSS_ERR_INVALID_ARGUMENTS;
+	return -EINVAL;
 }
 
-enum ia_css_err binarydesc_calculate_bds_factor(
+int binarydesc_calculate_bds_factor(
     struct ia_css_resolution input_res,
     struct ia_css_resolution output_res,
     unsigned int *bds_factor)
@@ -195,15 +195,15 @@ enum ia_css_err binarydesc_calculate_bds_factor(
 
 		if (cond) {
 			*bds_factor = bds_factors_list[i].bds_factor;
-			return IA_CSS_SUCCESS;
+			return 0;
 		}
 	}
 
 	/* Throw an error since a suitable bds_factor cannot be found */
-	return IA_CSS_ERR_INVALID_ARGUMENTS;
+	return -EINVAL;
 }
 
-enum ia_css_err ia_css_pipe_get_preview_binarydesc(
+int ia_css_pipe_get_preview_binarydesc(
     struct ia_css_pipe *const pipe,
     struct ia_css_binary_descr *preview_descr,
     struct ia_css_frame_info *in_info,
@@ -211,7 +211,7 @@ enum ia_css_err ia_css_pipe_get_preview_binarydesc(
     struct ia_css_frame_info *out_info,
     struct ia_css_frame_info *vf_info)
 {
-	enum ia_css_err err;
+	int err;
 	struct ia_css_frame_info *out_infos[IA_CSS_BINARY_MAX_OUTPUT_PORTS];
 	int mode = IA_CSS_BINARY_MODE_PREVIEW;
 	unsigned int i;
@@ -264,7 +264,7 @@ enum ia_css_err ia_css_pipe_get_preview_binarydesc(
 			    binarydesc_calculate_bds_factor(in_info->res,
 							    bds_out_info->res,
 							    &preview_descr->required_bds_factor);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				return err;
 		} else {
 			bds_out_info->res.width = in_info->res.width / 2;
@@ -318,11 +318,11 @@ enum ia_css_err ia_css_pipe_get_preview_binarydesc(
 	preview_descr->enable_dpc = pipe->config.enable_dpc;
 
 	preview_descr->isp_pipe_version = pipe->config.isp_pipe_version;
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
-enum ia_css_err ia_css_pipe_get_video_binarydesc(
+int ia_css_pipe_get_video_binarydesc(
     struct ia_css_pipe *const pipe,
     struct ia_css_binary_descr *video_descr,
     struct ia_css_frame_info *in_info,
@@ -334,7 +334,7 @@ enum ia_css_err ia_css_pipe_get_video_binarydesc(
 	int mode = IA_CSS_BINARY_MODE_VIDEO;
 	unsigned int i;
 	struct ia_css_frame_info *out_infos[IA_CSS_BINARY_MAX_OUTPUT_PORTS];
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	bool stream_dz_config = false;
 
 	/* vf_info can be NULL */
@@ -407,7 +407,7 @@ enum ia_css_err ia_css_pipe_get_video_binarydesc(
 				    binarydesc_calculate_bds_factor(
 					in_info->res, bds_out_info->res,
 					&video_descr->required_bds_factor);
-				if (err != IA_CSS_SUCCESS)
+				if (err)
 					return err;
 			} else {
 				bds_out_info->res.width =
diff --git a/drivers/staging/media/atomisp/pci/camera/util/interface/ia_css_util.h b/drivers/staging/media/atomisp/pci/camera/util/interface/ia_css_util.h
index 75333166ed9b..80ad3e064654 100644
--- a/drivers/staging/media/atomisp/pci/camera/util/interface/ia_css_util.h
+++ b/drivers/staging/media/atomisp/pci/camera/util/interface/ia_css_util.h
@@ -28,26 +28,26 @@
  * @return	"ia_css_err" error code
  *
  */
-enum ia_css_err ia_css_convert_errno(
+int ia_css_convert_errno(
     int in_err);
 
 /* @brief check vf frame info.
  *
  * @param[in] info
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_util_check_vf_info(
+int ia_css_util_check_vf_info(
     const struct ia_css_frame_info *const info);
 
 /* @brief check input configuration.
  *
  * @param[in] stream_config
  * @param[in] must_be_raw
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_util_check_input(
+int ia_css_util_check_input(
     const struct ia_css_stream_config *const stream_config,
     bool must_be_raw,
     bool must_be_yuv);
@@ -56,10 +56,10 @@ enum ia_css_err ia_css_util_check_input(
  *
  * @param[in] out_info
  * @param[in] vf_info
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_util_check_vf_out_info(
+int ia_css_util_check_vf_out_info(
     const struct ia_css_frame_info *const out_info,
     const struct ia_css_frame_info *const vf_info);
 
@@ -67,10 +67,10 @@ enum ia_css_err ia_css_util_check_vf_out_info(
  *
  * @param[in] width
  * @param[in] height
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_util_check_res(
+int ia_css_util_check_res(
     unsigned int width,
     unsigned int height);
 
diff --git a/drivers/staging/media/atomisp/pci/camera/util/src/util.c b/drivers/staging/media/atomisp/pci/camera/util/src/util.c
index 217fe9cb54ff..3ca79b23da70 100644
--- a/drivers/staging/media/atomisp/pci/camera/util/src/util.c
+++ b/drivers/staging/media/atomisp/pci/camera/util/src/util.c
@@ -20,30 +20,30 @@
 /* for ia_css_binary_max_vf_width() */
 #include "ia_css_binary.h"
 
-enum ia_css_err ia_css_convert_errno(
+int ia_css_convert_errno(
     int in_err)
 {
-	enum ia_css_err out_err;
+	int out_err;
 
 	switch (in_err) {
 	case 0:
-		out_err = IA_CSS_SUCCESS;
+		out_err = 0;
 		break;
 	case EINVAL:
-		out_err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		out_err = -EINVAL;
 		break;
 	case ENODATA:
-		out_err = IA_CSS_ERR_QUEUE_IS_EMPTY;
+		out_err = -ENODATA;
 		break;
 	case ENOSYS:
 	case ENOTSUP:
-		out_err = IA_CSS_ERR_INTERNAL_ERROR;
+		out_err = -EINVAL;
 		break;
 	case ENOBUFS:
-		out_err = IA_CSS_ERR_QUEUE_IS_FULL;
+		out_err = -ENOBUFS;
 		break;
 	default:
-		out_err = IA_CSS_ERR_INTERNAL_ERROR;
+		out_err = -EINVAL;
 		break;
 	}
 	return out_err;
@@ -113,49 +113,49 @@ unsigned int ia_css_util_input_format_bpp(
 	return rval;
 }
 
-enum ia_css_err ia_css_util_check_vf_info(
+int ia_css_util_check_vf_info(
     const struct ia_css_frame_info *const info)
 {
-	enum ia_css_err err;
+	int err;
 	unsigned int max_vf_width;
 
 	assert(info);
 	err = ia_css_frame_check_info(info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	max_vf_width = ia_css_binary_max_vf_width();
 	if (max_vf_width != 0 && info->res.width > max_vf_width * 2)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
-	return IA_CSS_SUCCESS;
+		return -EINVAL;
+	return 0;
 }
 
-enum ia_css_err ia_css_util_check_vf_out_info(
+int ia_css_util_check_vf_out_info(
     const struct ia_css_frame_info *const out_info,
     const struct ia_css_frame_info *const vf_info)
 {
-	enum ia_css_err err;
+	int err;
 
 	assert(out_info);
 	assert(vf_info);
 
 	err = ia_css_frame_check_info(out_info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	err = ia_css_util_check_vf_info(vf_info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err ia_css_util_check_res(unsigned int width, unsigned int height)
+int ia_css_util_check_res(unsigned int width, unsigned int height)
 {
 	/* height can be odd number for jpeg/embedded data from ISYS2401 */
 	if (((width  == 0)   ||
 	     (height == 0)   ||
 	     IS_ODD(width))) {
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 /* ISP2401 */
@@ -200,7 +200,7 @@ bool ia_css_util_is_input_format_yuv(enum atomisp_input_format format)
 	       format == ATOMISP_INPUT_FORMAT_YUV422_16;
 }
 
-enum ia_css_err ia_css_util_check_input(
+int ia_css_util_check_input(
     const struct ia_css_stream_config *const stream_config,
     bool must_be_raw,
     bool must_be_yuv)
@@ -208,18 +208,18 @@ enum ia_css_err ia_css_util_check_input(
 	assert(stream_config);
 
 	if (!stream_config)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	if (stream_config->input_config.effective_res.width == 0 ||
 	    stream_config->input_config.effective_res.height == 0)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	if (must_be_raw &&
 	    !ia_css_util_is_input_format_raw(stream_config->input_config.format))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	if (must_be_yuv &&
 	    !ia_css_util_is_input_format_yuv(stream_config->input_config.format))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
diff --git a/drivers/staging/media/atomisp/pci/ia_css_3a.h b/drivers/staging/media/atomisp/pci/ia_css_3a.h
index a79941a2e0f2..c51392e00403 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_3a.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_3a.h
@@ -106,7 +106,7 @@ struct ia_css_isp_3a_statistics_map {
  * used.
  * Always use this function, never copy the buffer directly.
  */
-enum ia_css_err
+int
 ia_css_get_3a_statistics(struct ia_css_3a_statistics           *host_stats,
 			 const struct ia_css_isp_3a_statistics *isp_stats);
 
diff --git a/drivers/staging/media/atomisp/pci/ia_css_control.h b/drivers/staging/media/atomisp/pci/ia_css_control.h
index 248040b3ec07..34d6dcbf1045 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_control.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_control.h
@@ -37,15 +37,15 @@
  *                              of the L1 page table. This is a physical
  *                              address or index.
  * @param[in]	irq_type	The type of interrupt to be used (edge or level)
- * @return				Returns IA_CSS_ERR_INTERNAL_ERROR in case of any
- *				errors and IA_CSS_SUCCESS otherwise.
+ * @return				Returns -EINVAL in case of any
+ *				errors and 0 otherwise.
  *
  * This function initializes the API which includes allocating and initializing
  * internal data structures. This also interprets the firmware package. All
  * contents of this firmware package are copied into local data structures, so
  * the fw pointer could be freed after this function completes.
  */
-enum ia_css_err ia_css_init(struct device           *dev,
+int ia_css_init(struct device           *dev,
 			    const struct ia_css_env *env,
 			    const struct ia_css_fw  *fw,
 			    u32                     l1_base,
@@ -77,7 +77,7 @@ ia_css_uninit(void);
  * This function should only be called when the SP is not running, calling it
  * when the SP is running will result in an error value being returned. }
  */
-enum ia_css_err
+int
 ia_css_enable_isys_event_queue(bool enable);
 
 /* @brief Test whether the ISP has started.
@@ -109,23 +109,23 @@ ia_css_sp_has_terminated(void);
 
 /* @brief start SP hardware
  *
- * @return			IA_CSS_SUCCESS or error code upon error.
+ * @return			0 or error code upon error.
  *
  * It will boot the SP hardware and start multi-threading infrastructure.
  * All threads will be started and blocked by semaphore. This function should
  * be called before any ia_css_stream_start().
  */
-enum ia_css_err
+int
 ia_css_start_sp(void);
 
 /* @brief stop SP hardware
  *
- * @return			IA_CSS_SUCCESS or error code upon error.
+ * @return			0 or error code upon error.
  *
  * This function will terminate all threads and shut down SP. It should be
  * called after all ia_css_stream_stop().
  */
-enum ia_css_err
+int
 ia_css_stop_sp(void);
 
 #endif /* __IA_CSS_CONTROL_H */
diff --git a/drivers/staging/media/atomisp/pci/ia_css_dvs.h b/drivers/staging/media/atomisp/pci/ia_css_dvs.h
index e647f73c3bd6..176aa8887278 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_dvs.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_dvs.h
@@ -94,7 +94,7 @@ union ia_css_dvs_statistics_host {
  * advised to map the ISP memory into a host-side pointer and use
  * the ia_css_translate_dvs_statistics() function instead.
  */
-enum ia_css_err
+int
 ia_css_get_dvs_statistics(struct ia_css_dvs_statistics *host_stats,
 			  const struct ia_css_isp_dvs_statistics *isp_stats);
 
@@ -128,7 +128,7 @@ ia_css_translate_dvs_statistics(
  * advised to map the ISP memory into a host-side pointer and use
  * the ia_css_translate_dvs2_statistics() function instead.
  */
-enum ia_css_err
+int
 ia_css_get_dvs2_statistics(struct ia_css_dvs2_statistics *host_stats,
 			   const struct ia_css_isp_dvs_statistics *isp_stats);
 
diff --git a/drivers/staging/media/atomisp/pci/ia_css_err.h b/drivers/staging/media/atomisp/pci/ia_css_err.h
index 375952a7782e..7e077ea06a20 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_err.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_err.h
@@ -20,27 +20,6 @@
  * functions in the CSS-API.
  */
 
-/* Errors, these values are used as the return value for most
- *  functions in this API.
- */
-enum ia_css_err {
-	IA_CSS_SUCCESS,
-	IA_CSS_ERR_INTERNAL_ERROR,
-	IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY,
-	IA_CSS_ERR_INVALID_ARGUMENTS,
-	IA_CSS_ERR_SYSTEM_NOT_IDLE,
-	IA_CSS_ERR_MODE_HAS_NO_VIEWFINDER,
-	IA_CSS_ERR_QUEUE_IS_FULL,
-	IA_CSS_ERR_QUEUE_IS_EMPTY,
-	IA_CSS_ERR_RESOURCE_NOT_AVAILABLE,
-	IA_CSS_ERR_RESOURCE_LIST_TO_SMALL,
-	IA_CSS_ERR_RESOURCE_ITEMS_STILL_ALLOCATED,
-	IA_CSS_ERR_RESOURCE_EXHAUSTED,
-	IA_CSS_ERR_RESOURCE_ALREADY_ALLOCATED,
-	IA_CSS_ERR_VERSION_MISMATCH,
-	IA_CSS_ERR_NOT_SUPPORTED
-};
-
 /* FW warnings. This enum contains a value for each warning that
  * the SP FW could indicate potential performance issue
  */
diff --git a/drivers/staging/media/atomisp/pci/ia_css_event_public.h b/drivers/staging/media/atomisp/pci/ia_css_event_public.h
index 5c0470fa4a74..2a754933040f 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_event_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_event_public.h
@@ -143,9 +143,9 @@ struct ia_css_event {
  *
  * @param[out]	event   Pointer to the event struct which will be filled by
  *                      this function if an event is available.
- * @return		IA_CSS_ERR_QUEUE_IS_EMPTY if no events are
+ * @return		-ENODATA if no events are
  *			available or
- *			IA_CSS_SUCCESS otherwise.
+ *			0 otherwise.
  *
  * This function dequeues an event from the PSYS event queue. The queue is
  * between the Host CPU and the CSS system. This function can be
@@ -153,31 +153,31 @@ struct ia_css_event {
  * was available and can be used in a polling-like situation where the NO_EVENT
  * return value is used to determine whether an event was available or not.
  */
-enum ia_css_err
+int
 ia_css_dequeue_psys_event(struct ia_css_event *event);
 
 /* @brief Dequeue an event from the CSS system.
  *
  * @param[out]	event   Pointer to the event struct which will be filled by
  *                      this function if an event is available.
- * @return		IA_CSS_ERR_QUEUE_IS_EMPTY if no events are
+ * @return		-ENODATA if no events are
  *			available or
- *			IA_CSS_SUCCESS otherwise.
+ *			0 otherwise.
  *
  * deprecated{Use ia_css_dequeue_psys_event instead}.
  * Unless the isys event queue is explicitly enabled, this function will
  * dequeue both isys (EOF) and psys events (all others).
  */
-enum ia_css_err
+int
 ia_css_dequeue_event(struct ia_css_event *event);
 
 /* @brief Dequeue an ISYS event from the CSS system.
  *
  * @param[out]	event   Pointer to the event struct which will be filled by
  *                      this function if an event is available.
- * @return		IA_CSS_ERR_QUEUE_IS_EMPTY if no events are
+ * @return		-ENODATA if no events are
  *			available or
- *			IA_CSS_SUCCESS otherwise.
+ *			0 otherwise.
  *
  * This function dequeues an event from the ISYS event queue. The queue is
  * between host and the CSS system.
@@ -190,7 +190,7 @@ ia_css_dequeue_event(struct ia_css_event *event);
  * incurring additional latency due to locks being held by other CSS API
  * functions.
  */
-enum ia_css_err
+int
 ia_css_dequeue_isys_event(struct ia_css_event *event);
 
 #endif /* __IA_CSS_EVENT_PUBLIC_H */
diff --git a/drivers/staging/media/atomisp/pci/ia_css_firmware.h b/drivers/staging/media/atomisp/pci/ia_css_firmware.h
index 50817162703b..931d7935b19c 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_firmware.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_firmware.h
@@ -36,8 +36,8 @@ struct ia_css_fw {
  *				printing.
  * @param[in]	fw		Firmware package containing the firmware for all
  *				predefined ISP binaries.
- * @return			Returns IA_CSS_ERR_INTERNAL_ERROR in case of any
- *				errors and IA_CSS_SUCCESS otherwise.
+ * @return			Returns -EINVAL in case of any
+ *				errors and 0 otherwise.
  *
  * This function interprets the firmware package. All
  * contents of this firmware package are copied into local data structures, so
@@ -47,7 +47,7 @@ struct ia_css_fw {
  * speeds up ia_css_init (ia_css_init is called each time a stream is created but the
  * firmware only needs to be loaded once).
  */
-enum ia_css_err
+int
 ia_css_load_firmware(struct device *dev, const struct ia_css_env *env,
 		     const struct ia_css_fw  *fw);
 
diff --git a/drivers/staging/media/atomisp/pci/ia_css_frame_public.h b/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
index ac7ed6c2e6fd..da12f9218228 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
@@ -214,7 +214,7 @@ void ia_css_frame_zero(struct ia_css_frame *frame);
  * Allocate a CSS frame structure. The memory for the frame data will be
  * allocated in the CSS address space.
  */
-enum ia_css_err
+int
 ia_css_frame_allocate(struct ia_css_frame **frame,
 		      unsigned int width,
 		      unsigned int height,
@@ -232,7 +232,7 @@ ia_css_frame_allocate(struct ia_css_frame **frame,
  * This is a convenience function, implemented on top of
  * ia_css_frame_allocate().
  */
-enum ia_css_err
+int
 ia_css_frame_allocate_from_info(struct ia_css_frame **frame,
 				const struct ia_css_frame_info *info);
 /* @brief Free a CSS frame structure.
@@ -260,7 +260,7 @@ ia_css_frame_free(struct ia_css_frame *frame);
  * physically contiguous memory.
  * Deprecated.
  */
-enum ia_css_err
+int
 ia_css_frame_allocate_contiguous(struct ia_css_frame **frame,
 				 unsigned int width,
 				 unsigned int height,
@@ -280,7 +280,7 @@ ia_css_frame_allocate_contiguous(struct ia_css_frame **frame,
  * Only for FPGA display driver which needs physically contiguous memory.
  * Deprecated.
  */
-enum ia_css_err
+int
 ia_css_frame_allocate_contiguous_from_info(struct ia_css_frame **frame,
 	const struct ia_css_frame_info *info);
 
@@ -293,7 +293,7 @@ ia_css_frame_allocate_contiguous_from_info(struct ia_css_frame **frame,
  * Allocate an empty CSS frame with no data buffer using the parameters
  * in the frame info.
  */
-enum ia_css_err
+int
 ia_css_frame_create_from_info(struct ia_css_frame **frame,
 			      const struct ia_css_frame_info *info);
 
@@ -310,7 +310,7 @@ ia_css_frame_create_from_info(struct ia_css_frame **frame,
  * free the mapped_data buffer. However if ia_css_frame_free() is called and
  * the frame had a valid data buffer, it would be freed along with the frame.
  */
-enum ia_css_err
+int
 ia_css_frame_set_data(struct ia_css_frame *frame,
 		      const ia_css_ptr   mapped_data,
 		      size_t data_size_bytes);
@@ -331,7 +331,7 @@ ia_css_frame_set_data(struct ia_css_frame *frame,
  * ia_css_frame_allocate() does, but instead of allocating the memory, it will
  * map the pre-allocated memory into the CSS address space.
  */
-enum ia_css_err
+int
 ia_css_frame_map(struct ia_css_frame **frame,
 		 const struct ia_css_frame_info *info,
 		 const void __user *data,
diff --git a/drivers/staging/media/atomisp/pci/ia_css_irq.h b/drivers/staging/media/atomisp/pci/ia_css_irq.h
index 7716373553e0..cef52d28c2b4 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_irq.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_irq.h
@@ -144,14 +144,14 @@ struct ia_css_irq {
  * @return		If an error is encountered during the interrupt info
  *			and no interrupt could be translated successfully, this
  *			will return IA_CSS_INTERNAL_ERROR. Otherwise
- *			IA_CSS_SUCCESS.
+ *			0.
  *
  * This function is expected to be executed after an interrupt has been sent
  * to the IA from the CSS. This function returns information about the interrupt
  * which is needed by the IA code to properly handle the interrupt. This
  * information includes the image pipe, buffer type etc.
  */
-enum ia_css_err
+int
 ia_css_irq_translate(unsigned int *info);
 
 /* @brief Get CSI receiver error info.
@@ -227,9 +227,9 @@ ia_css_rx_port_clear_irq_info(enum mipi_port_id port, unsigned int irq_bits);
  * @return		Returns IA_CSS_INTERNAL_ERROR if this interrupt
  *			type cannot be enabled/disabled which is true for
  *			CSS internal interrupts. Otherwise returns
- *			IA_CSS_SUCCESS.
+ *			0.
  */
-enum ia_css_err
+int
 ia_css_irq_enable(enum ia_css_irq_info type, bool enable);
 
 #endif /* __IA_CSS_IRQ_H */
diff --git a/drivers/staging/media/atomisp/pci/ia_css_mipi.h b/drivers/staging/media/atomisp/pci/ia_css_mipi.h
index c02138ee2511..76e7eeee3ed9 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_mipi.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_mipi.h
@@ -37,7 +37,7 @@
  *
  * Specifies a CSS MIPI frame buffer: size in memory words (32B).
  */
-enum ia_css_err
+int
 ia_css_mipi_frame_specify(const unsigned int	size_mem_words,
 			  const bool contiguous);
 
@@ -54,7 +54,7 @@ ia_css_mipi_frame_specify(const unsigned int	size_mem_words,
  *
  *
  */
-enum ia_css_err
+int
 ia_css_mipi_frame_enable_check_on_size(const enum mipi_port_id port,
 				       const unsigned int	size_mem_words);
 #endif
@@ -71,7 +71,7 @@ ia_css_mipi_frame_enable_check_on_size(const enum mipi_port_id port,
  *
  * Calculate the size of a mipi frame, based on the resolution and format.
  */
-enum ia_css_err
+int
 ia_css_mipi_frame_calculate_size(const unsigned int width,
 				 const unsigned int height,
 				 const enum atomisp_input_format format,
diff --git a/drivers/staging/media/atomisp/pci/ia_css_pipe.h b/drivers/staging/media/atomisp/pci/ia_css_pipe.h
index 792b51e8055a..3915735ea4be 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_pipe.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_pipe.h
@@ -181,7 +181,7 @@ struct ia_css_pipe {
 
 void ia_css_pipe_map_queue(struct ia_css_pipe *pipe, bool map);
 
-enum ia_css_err
+int
 sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 			       struct ia_css_isp_parameters *params,
 			       bool commit, struct ia_css_pipe *pipe);
diff --git a/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h b/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h
index 34d64998202a..0874689bb124 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h
@@ -249,44 +249,44 @@ void ia_css_pipe_config_defaults(struct ia_css_pipe_config *pipe_config);
 /* @brief Create a pipe
  * @param[in]	config The pipe configuration.
  * @param[out]	pipe The pipe.
- * @return	IA_CSS_SUCCESS or the error code.
+ * @return	0 or the error code.
  *
  * This function will create a pipe with the given
  * configuration.
  */
-enum ia_css_err
+int
 ia_css_pipe_create(const struct ia_css_pipe_config *config,
 		   struct ia_css_pipe **pipe);
 
 /* @brief Destroy a pipe
  * @param[in]	pipe The pipe.
- * @return	IA_CSS_SUCCESS or the error code.
+ * @return	0 or the error code.
  *
  * This function will destroy a given pipe.
  */
-enum ia_css_err
+int
 ia_css_pipe_destroy(struct ia_css_pipe *pipe);
 
 /* @brief Provides information about a pipe
  * @param[in]	pipe The pipe.
  * @param[out]	pipe_info The pipe information.
- * @return	IA_CSS_SUCCESS or IA_CSS_ERR_INVALID_ARGUMENTS.
+ * @return	0 or -EINVAL.
  *
  * This function will provide information about a given pipe.
  */
-enum ia_css_err
+int
 ia_css_pipe_get_info(const struct ia_css_pipe *pipe,
 		     struct ia_css_pipe_info *pipe_info);
 
 /* @brief Configure a pipe with filter coefficients.
  * @param[in]	pipe	The pipe.
  * @param[in]	config	The pointer to ISP configuration.
- * @return		IA_CSS_SUCCESS or error code upon error.
+ * @return		0 or error code upon error.
  *
  * This function configures the filter coefficients for an image
  * pipe.
  */
-enum ia_css_err
+int
 ia_css_pipe_set_isp_config(struct ia_css_pipe *pipe,
 			   struct ia_css_isp_config *config);
 
@@ -304,7 +304,7 @@ ia_css_pipe_set_isp_config(struct ia_css_pipe *pipe,
 			at the same moment in time. There is no control over
 			the order of these events. Once an IRQ has been raised
 			all remembered events are reset.
- * @return		IA_CSS_SUCCESS.
+ * @return		0.
  *
  Controls when the Event generator in the CSS raises an IRQ to the Host.
  The main purpose of this function is to reduce the amount of interrupts
@@ -362,7 +362,7 @@ ia_css_pipe_set_isp_config(struct ia_css_pipe *pipe,
  All other events (3A, VF output, pipeline done) will not raise an interrupt
  to the Host. These events are not lost but always stored in the event queue.
  */
-enum ia_css_err
+int
 ia_css_pipe_set_irq_mask(struct ia_css_pipe *pipe,
 			 unsigned int or_mask,
 			 unsigned int and_mask);
@@ -374,7 +374,7 @@ ia_css_pipe_set_irq_mask(struct ia_css_pipe *pipe,
 		of enum ia_css_event_irq_mask_type. Pointer may be NULL.
  * @param[out]	and_mask Current and_mask.The bits in this mask are a binary or
 		of enum ia_css_event_irq_mask_type. Pointer may be NULL.
- * @return	IA_CSS_SUCCESS.
+ * @return	0.
  *
  Reads the current event IRQ mask from the CSS. Reading returns the actual
  values as used by the SP and not any mirrored values stored at the Host.\n
@@ -383,7 +383,7 @@ Precondition:\n
 SP must be running.\n
 
 */
-enum ia_css_err
+int
 ia_css_event_get_irq_mask(const struct ia_css_pipe *pipe,
 			  unsigned int *or_mask,
 			  unsigned int *and_mask);
@@ -396,7 +396,7 @@ ia_css_event_get_irq_mask(const struct ia_css_pipe *pipe,
  *			structure. Only the data pointer within it will
  *			be passed into the internal queues.
  * @return		IA_CSS_INTERNAL_ERROR in case of unexpected errors,
- *			IA_CSS_SUCCESS otherwise.
+ *			0 otherwise.
  *
  * This function adds a buffer (which has a certain buffer type) to the queue
  * for this type. This queue is owned by the image pipe. After this function
@@ -406,7 +406,7 @@ ia_css_event_get_irq_mask(const struct ia_css_pipe *pipe,
  * host code via an interrupt. Buffers will be consumed in the same order they
  * get queued, but may be returned to the host out of order.
  */
-enum ia_css_err
+int
 ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 			   const struct ia_css_buffer *buffer);
 
@@ -418,7 +418,7 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
  *			 The resulting buffer pointer is written into the dta
  *			 field.
  * @return		 IA_CSS_ERR_NO_BUFFER if the queue is empty or
- *			 IA_CSS_SUCCESS otherwise.
+ *			 0 otherwise.
  *
  * This function dequeues a buffer from a buffer queue. The queue is indicated
  * by the buffer type argument. This function can be called after an interrupt
@@ -426,7 +426,7 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
  * be used in a polling-like situation where the NO_BUFFER return value is used
  * to determine whether a buffer was available or not.
  */
-enum ia_css_err
+int
 ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 			   struct ia_css_buffer *buffer);
 
@@ -437,9 +437,9 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
  * @param[in] enable       Enable Flag (1 to enable ; 0 to disable)
  *
  * @return
- * IA_CSS_SUCCESS			: Success
- * IA_CSS_ERR_INVALID_ARGUMENTS		: Invalid Parameters
- * IA_CSS_ERR_RESOURCE_NOT_AVAILABLE	: Inactive QOS Pipe
+ * 0			: Success
+ * -EINVAL		: Invalid Parameters
+ * -EBUSY	: Inactive QOS Pipe
  *					(No active stream with this pipe)
  *
  * This function will request state change (enable or disable) for the Extension
@@ -452,7 +452,7 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
  *	4. State change cannot be guaranteed immediately OR on frame boundary
  *
  */
-enum ia_css_err
+int
 ia_css_pipe_set_qos_ext_state(struct ia_css_pipe *pipe,
 			      u32 fw_handle,
 			      bool  enable);
@@ -464,9 +464,9 @@ ia_css_pipe_set_qos_ext_state(struct ia_css_pipe *pipe,
  * @param[out] *enable     Enable Flag
  *
  * @return
- * IA_CSS_SUCCESS			: Success
- * IA_CSS_ERR_INVALID_ARGUMENTS		: Invalid Parameters
- * IA_CSS_ERR_RESOURCE_NOT_AVAILABLE	: Inactive QOS Pipe
+ * 0			: Success
+ * -EINVAL		: Invalid Parameters
+ * -EBUSY	: Inactive QOS Pipe
  *					(No active stream with this pipe)
  *
  * This function will query the state of the Extension stage (firmware handle)
@@ -478,7 +478,7 @@ ia_css_pipe_set_qos_ext_state(struct ia_css_pipe *pipe,
  *	3. Initial(Default) state of QOS Extensions is Disabled.
  *
  */
-enum ia_css_err
+int
 ia_css_pipe_get_qos_ext_state(struct ia_css_pipe *pipe,
 			      u32 fw_handle,
 			      bool *enable);
@@ -491,16 +491,16 @@ ia_css_pipe_get_qos_ext_state(struct ia_css_pipe *pipe,
  * @param[in] isp_seg	Parameter memory descriptors for ISP segments.
  *
  * @return
- * IA_CSS_SUCCESS			: Success
- * IA_CSS_ERR_INVALID_ARGUMENTS		: Invalid Parameters
- * IA_CSS_ERR_RESOURCE_NOT_AVAILABLE	: Inactive QOS Pipe
+ * 0			: Success
+ * -EINVAL		: Invalid Parameters
+ * -EBUSY	: Inactive QOS Pipe
  *					(No active stream with this pipe)
  *
  * \deprecated{This interface is used to temporarily support a late-developed,
  * specific use-case on a specific IPU2 platform. It will not be supported or
  * maintained on IPU3 or further.}
  */
-enum ia_css_err
+int
 ia_css_pipe_update_qos_ext_mapped_arg(struct ia_css_pipe *pipe,
 				      u32 fw_handle,
 				      struct ia_css_isp_param_css_segments *css_seg,
@@ -521,8 +521,8 @@ ia_css_pipe_get_isp_config(struct ia_css_pipe *pipe,
  * @param[in]  lut         Look up tabel
  *
  * @return
- * IA_CSS_SUCCESS			: Success
- * IA_CSS_ERR_INVALID_ARGUMENTS		: Invalid Parameters
+ * 0			: Success
+ * -EINVAL		: Invalid Parameters
  *
  * Note:
  * 1) Note that both GDC's are programmed with the same table.
@@ -531,7 +531,7 @@ ia_css_pipe_get_isp_config(struct ia_css_pipe *pipe,
  * 3) This function must be called before stream start
  *
  */
-enum ia_css_err
+int
 ia_css_pipe_set_bci_scaler_lut(struct ia_css_pipe *pipe,
 			       const void *lut);
 /* @brief Checking of DVS statistics ability
@@ -550,9 +550,9 @@ bool ia_css_pipe_has_dvs_stats(struct ia_css_pipe_info *pipe_info);
  * @param[in]  format      Format to set
  *
  * @return
- * IA_CSS_SUCCESS		: Success
- * IA_CSS_ERR_INVALID_ARGUMENTS	: Invalid Parameters
- * IA_CSS_ERR_INTERNAL_ERROR	: Pipe misses binary info
+ * 0		: Success
+ * -EINVAL	: Invalid Parameters
+ * -EINVAL	: Pipe misses binary info
  *
  * Note:
  * 1) This is an optional function to override the formats set in the pipe.
@@ -561,7 +561,7 @@ bool ia_css_pipe_has_dvs_stats(struct ia_css_pipe_info *pipe_info);
  * 4) If this function is used, it MUST be called after ia_css_pipe_create.
  * 5) If this function is used, this function MUST be called before ia_css_stream_start.
  */
-enum ia_css_err
+int
 ia_css_pipe_override_frame_format(struct ia_css_pipe *pipe,
 				  int output_pin,
 				  enum ia_css_frame_format format);
diff --git a/drivers/staging/media/atomisp/pci/ia_css_stream.h b/drivers/staging/media/atomisp/pci/ia_css_stream.h
index 5690fe832f41..ebdeb0a6343a 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_stream.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_stream.h
@@ -102,7 +102,7 @@ ia_css_get_isp_dvs2_coefficients(struct ia_css_stream *stream,
 				 short *ver_coefs_even_real,
 				 short *ver_coefs_even_imag);
 
-enum ia_css_err
+int
 ia_css_stream_isp_parameters_init(struct ia_css_stream *stream);
 
 void
diff --git a/drivers/staging/media/atomisp/pci/ia_css_stream_public.h b/drivers/staging/media/atomisp/pci/ia_css_stream_public.h
index fe11c8bf3cdc..96346ad67bb1 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_stream_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_stream_public.h
@@ -171,11 +171,11 @@ void ia_css_stream_config_defaults(struct ia_css_stream_config *stream_config);
 * @param[in]	num_pipes The number of pipes to incorporate in the stream.
 * @param[in]	pipes The pipes.
 * @param[out]	stream The stream.
-* @return	IA_CSS_SUCCESS or the error code.
+* @return	0 or the error code.
 *
 * This function will create a stream with a given configuration and given pipes.
 */
-enum ia_css_err
+int
 ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 		     int num_pipes,
 		     struct ia_css_pipe *pipes[],
@@ -183,37 +183,37 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 
 /* @brief Destroys a stream
  * @param[in]	stream The stream.
- * @return	IA_CSS_SUCCESS or the error code.
+ * @return	0 or the error code.
  *
  * This function will destroy a given stream.
  */
-enum ia_css_err
+int
 ia_css_stream_destroy(struct ia_css_stream *stream);
 
 /* @brief Provides information about a stream
  * @param[in]	stream The stream.
  * @param[out]	stream_info The information about the stream.
- * @return	IA_CSS_SUCCESS or the error code.
+ * @return	0 or the error code.
  *
  * This function will destroy a given stream.
  */
-enum ia_css_err
+int
 ia_css_stream_get_info(const struct ia_css_stream *stream,
 		       struct ia_css_stream_info *stream_info);
 
 /* @brief load (rebuild) a stream that was unloaded.
  * @param[in]	stream The stream
- * @return		IA_CSS_SUCCESS or the error code
+ * @return		0 or the error code
  *
  * Rebuild a stream, including allocating structs, setting configuration and
  * building the required pipes.
  */
-enum ia_css_err
+int
 ia_css_stream_load(struct ia_css_stream *stream);
 
 /* @brief Starts the stream.
  * @param[in]	stream The stream.
- * @return IA_CSS_SUCCESS or the error code.
+ * @return 0 or the error code.
  *
  * The dynamic data in
  * the buffers are not used and need to be queued with a separate call
@@ -221,17 +221,17 @@ ia_css_stream_load(struct ia_css_stream *stream);
  * NOTE: this function will only send start event to corresponding
  * thread and will not start SP any more.
  */
-enum ia_css_err
+int
 ia_css_stream_start(struct ia_css_stream *stream);
 
 /* @brief Stop the stream.
  * @param[in]	stream The stream.
- * @return	IA_CSS_SUCCESS or the error code.
+ * @return	0 or the error code.
  *
  * NOTE: this function will send stop event to pipes belong to this
  * stream but will not terminate threads.
  */
-enum ia_css_err
+int
 ia_css_stream_stop(struct ia_css_stream *stream);
 
 /* @brief Check if a stream has stopped
@@ -245,11 +245,11 @@ ia_css_stream_has_stopped(struct ia_css_stream *stream);
 
 /* @brief	destroy a stream according to the stream seed previosly saved in the seed array.
  * @param[in]	stream The stream.
- * @return	IA_CSS_SUCCESS (no other errors are generated now)
+ * @return	0 (no other errors are generated now)
  *
  * Destroy the stream and all the pipes related to it.
  */
-enum ia_css_err
+int
 ia_css_stream_unload(struct ia_css_stream *stream);
 
 /* @brief Returns stream format
@@ -278,19 +278,19 @@ ia_css_stream_get_two_pixels_per_clock(const struct ia_css_stream *stream);
  *
  * This function will Set the output frame stride (at the last pipe)
  */
-enum ia_css_err
+int
 ia_css_stream_set_output_padded_width(struct ia_css_stream *stream,
 				      unsigned int output_padded_width);
 
 /* @brief Return max number of continuous RAW frames.
  * @param[in]	stream The stream.
  * @param[out]	buffer_depth The maximum number of continuous RAW frames.
- * @return	IA_CSS_SUCCESS or IA_CSS_ERR_INVALID_ARGUMENTS
+ * @return	0 or -EINVAL
  *
  * This function will return the maximum number of continuous RAW frames
  * the system can support.
  */
-enum ia_css_err
+int
 ia_css_stream_get_max_buffer_depth(struct ia_css_stream *stream,
 				   int *buffer_depth);
 
@@ -298,22 +298,22 @@ ia_css_stream_get_max_buffer_depth(struct ia_css_stream *stream,
  *
  * @param[in]	stream The stream.
  * @param[in]	buffer_depth	Number of frames to set.
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  * Set the number of continuous frames to use during continuous modes.
  */
-enum ia_css_err
+int
 ia_css_stream_set_buffer_depth(struct ia_css_stream *stream, int buffer_depth);
 
 /* @brief Get number of continuous RAW frames to use.
  * @param[in]	stream The stream.
  * @param[out]	buffer_depth The number of frames to use
- * @return	IA_CSS_SUCCESS or IA_CSS_ERR_INVALID_ARGUMENTS
+ * @return	0 or -EINVAL
  *
  * Get the currently set number of continuous frames
  * to use during continuous modes.
  */
-enum ia_css_err
+int
 ia_css_stream_get_buffer_depth(struct ia_css_stream *stream, int *buffer_depth);
 
 /* ===== CAPTURE ===== */
@@ -338,13 +338,13 @@ ia_css_stream_get_buffer_depth(struct ia_css_stream *stream, int *buffer_depth);
  *				with this offset. This allows the user to
  *				process RAW frames that were captured in the
  *				past or future.
- * @return			IA_CSS_SUCCESS or error code upon error.
+ * @return			0 or error code upon error.
  *
  *  For example, to capture the current frame plus the 2 previous
  *  frames and 2 subsequent frames, you would call
  *  ia_css_stream_capture(5, 0, -2).
  */
-enum ia_css_err
+int
 ia_css_stream_capture(struct ia_css_stream *stream,
 		      int num_captures,
 		      unsigned int skip,
@@ -355,12 +355,12 @@ ia_css_stream_capture(struct ia_css_stream *stream,
  * @param[in]	stream The stream.
  * @param[in]	exp_id	The exposure id of the raw frame to tag.
  *
- * @return			IA_CSS_SUCCESS or error code upon error.
+ * @return			0 or error code upon error.
  *
  * This function allows the user to tag a raw frame based on the exposure id
  * found in the viewfinder frames' frame info.
  */
-enum ia_css_err
+int
 ia_css_stream_capture_frame(struct ia_css_stream *stream,
 			    unsigned int exp_id);
 
@@ -492,7 +492,7 @@ ia_css_stream_request_flash(struct ia_css_stream *stream);
  * @param[in]	config	The set of filter coefficients.
  * @param[in]   pipe Pipe to be updated when set isp config, NULL means to
  *		   update all pipes in the stream.
- * @return		IA_CSS_SUCCESS or error code upon error.
+ * @return		0 or error code upon error.
  *
  * This function configures the filter coefficients for an image
  * stream. For image pipes that do not execute any ISP filters, this
@@ -501,7 +501,7 @@ ia_css_stream_request_flash(struct ia_css_stream *stream);
  * in fact this is the expected behavior most of the time. Proper
  * resource locking and double buffering is in place to allow for this.
  */
-enum ia_css_err
+int
 ia_css_stream_set_isp_config_on_pipe(struct ia_css_stream *stream,
 				     const struct ia_css_isp_config *config,
 				     struct ia_css_pipe *pipe);
@@ -511,7 +511,7 @@ ia_css_stream_set_isp_config_on_pipe(struct ia_css_stream *stream,
  *				   ia_css_pipe_set_isp_config()}
  * @param[in]	stream	The stream.
  * @param[in]	config	The set of filter coefficients.
- * @return		IA_CSS_SUCCESS or error code upon error.
+ * @return		0 or error code upon error.
  *
  * This function configures the filter coefficients for an image
  * stream. For image pipes that do not execute any ISP filters, this
@@ -521,7 +521,7 @@ ia_css_stream_set_isp_config_on_pipe(struct ia_css_stream *stream,
  * in fact this is the expected behaviour most of the time. Proper
  * resource locking and double buffering is in place to allow for this.
  */
-enum ia_css_err
+int
 ia_css_stream_set_isp_config(
     struct ia_css_stream *stream,
     const struct ia_css_isp_config *config);
@@ -537,37 +537,37 @@ ia_css_stream_get_isp_config(const struct ia_css_stream *stream,
 
 /* @brief allocate continuous raw frames for continuous capture
  * @param[in]	stream The stream.
- * @return IA_CSS_SUCCESS or error code.
+ * @return 0 or error code.
  *
  *  because this allocation takes a long time (around 120ms per frame),
  *  we separate the allocation part and update part to let driver call
  *  this function without locking. This function is the allocation part
  *  and next one is update part
  */
-enum ia_css_err
+int
 ia_css_alloc_continuous_frame_remain(struct ia_css_stream *stream);
 
 /* @brief allocate continuous raw frames for continuous capture
  * @param[in]	stream The stream.
- * @return	IA_CSS_SUCCESS or error code.
+ * @return	0 or error code.
  *
  *  because this allocation takes a long time (around 120ms per frame),
  *  we separate the allocation part and update part to let driver call
  *  this function without locking. This function is the update part
  */
-enum ia_css_err
+int
 ia_css_update_continuous_frames(struct ia_css_stream *stream);
 
 /* @brief ia_css_unlock_raw_frame . unlock a raw frame (HALv3 Support)
  * @param[in]	stream The stream.
  * @param[in]   exp_id exposure id that uniquely identifies the locked Raw Frame Buffer
- * @return      ia_css_err IA_CSS_SUCCESS or error code
+ * @return      ia_css_err 0 or error code
  *
  * As part of HALv3 Feature requirement, SP locks raw buffer until the Application
  * releases its reference to a raw buffer (which are managed by SP), this function allows
  * application to explicitly unlock that buffer in SP.
  */
-enum ia_css_err
+int
 ia_css_unlock_raw_frame(struct ia_css_stream *stream, uint32_t exp_id);
 
 /* @brief ia_css_en_dz_capt_pipe . Enable/Disable digital zoom for capture pipe
diff --git a/drivers/staging/media/atomisp/pci/ia_css_timer.h b/drivers/staging/media/atomisp/pci/ia_css_timer.h
index a37cfa60ad35..5e358c7a992c 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_timer.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_timer.h
@@ -58,10 +58,10 @@ struct ia_css_time_meas {
 /* @brief API to fetch timer count directly
 *
 * @param curr_ts [out] measured count value
-* @return IA_CSS_SUCCESS if success
+* @return 0 if success
 *
 */
-enum ia_css_err
+int
 ia_css_timer_get_current_tick(
     struct ia_css_clock_tick *curr_ts);
 
diff --git a/drivers/staging/media/atomisp/pci/ia_css_version.h b/drivers/staging/media/atomisp/pci/ia_css_version.h
index 1e88901e0b82..af6bdf958d6f 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_version.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_version.h
@@ -34,7 +34,7 @@
  * This function generates and returns the version string. If FW is loaded, it
  * attaches the FW version.
  */
-enum ia_css_err
+int
 ia_css_get_version(char *version, int max_size);
 
 #endif /* __IA_CSS_VERSION_H */
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c
index 4dd0b0373e79..a0e483a2d66a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.c
@@ -271,7 +271,7 @@ convert_allocate_dvs_6axis_config(
 	return me;
 }
 
-enum ia_css_err
+int
 store_dvs_6axis_config(
     const struct ia_css_dvs_6axis_config *dvs_6axis_config,
     const struct ia_css_binary *binary,
@@ -289,8 +289,8 @@ store_dvs_6axis_config(
 
 	if (!me)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+		return -ENOMEM;
 	}
 
 	ia_css_params_store_ia_css_host_data(
@@ -298,5 +298,5 @@ store_dvs_6axis_config(
 	    me);
 	ia_css_host_data_free(me);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h
index 81c2d4ef71e2..660c20110432 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/dvs/dvs_1.0/ia_css_dvs.host.h
@@ -50,7 +50,7 @@ convert_allocate_dvs_6axis_config(
     const struct ia_css_binary *binary,
     const struct ia_css_frame_info *dvs_in_frame_info);
 
-enum ia_css_err
+int
 store_dvs_6axis_config(
     const struct ia_css_dvs_6axis_config *dvs_6axis_config,
     const struct ia_css_binary *binary,
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.c
index 49c1b3e3370d..808815ba8f4d 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.c
@@ -37,7 +37,7 @@ ia_css_iterator_config(
 	ia_css_resolution_to_sp_resolution(&to->dvs_envelope,  from->dvs_envelope);
 }
 
-enum ia_css_err
+int
 ia_css_iterator_configure(
     const struct ia_css_binary *binary,
     const struct ia_css_frame_info *in_info) {
@@ -76,5 +76,5 @@ ia_css_iterator_configure(
 
 	ia_css_configure_iterator(binary, &config);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.h
index c5e8d58e0fe1..85a816276323 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/iterator/iterator_1.0/ia_css_iterator.host.h
@@ -26,7 +26,7 @@ ia_css_iterator_config(
     const struct ia_css_iterator_configuration *from,
     unsigned int size);
 
-enum ia_css_err
+int
 ia_css_iterator_configure(
     const struct ia_css_binary *binary,
     const struct ia_css_frame_info *in_info);
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c
index 2fe081ee005a..1cbcf070ab00 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.c
@@ -235,12 +235,12 @@ void ia_css_sdis_clear_coefficients(
 	dvs_coefs->ver_coefs = NULL;
 }
 
-enum ia_css_err
+int
 ia_css_get_dvs_statistics(
     struct ia_css_dvs_statistics	       *host_stats,
     const struct ia_css_isp_dvs_statistics *isp_stats) {
 	struct ia_css_isp_dvs_statistics_map *map;
-	enum ia_css_err ret = IA_CSS_SUCCESS;
+	int ret = 0;
 
 	IA_CSS_ENTER("host_stats=%p, isp_stats=%p", host_stats, isp_stats);
 
@@ -256,7 +256,7 @@ ia_css_get_dvs_statistics(
 	} else
 	{
 		IA_CSS_ERROR("out of memory");
-		ret = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		ret = -ENOMEM;
 	}
 
 	IA_CSS_LEAVE_ERR(ret);
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.h
index b1b0cb8ea175..d670bfa7f826 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_1.0/ia_css_sdis.host.h
@@ -53,7 +53,7 @@ void ia_css_get_isp_dis_coefficients(
     short *horizontal_coefficients,
     short *vertical_coefficients);
 
-enum ia_css_err
+int
 ia_css_get_dvs_statistics(
     struct ia_css_dvs_statistics	       *host_stats,
     const struct ia_css_isp_dvs_statistics *isp_stats);
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c
index 2d2708bde17e..c855467cd20c 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.c
@@ -175,12 +175,12 @@ void ia_css_sdis2_clear_coefficients(
 	dvs2_coefs->ver_coefs.even_imag = NULL;
 }
 
-enum ia_css_err
+int
 ia_css_get_dvs2_statistics(
     struct ia_css_dvs2_statistics          *host_stats,
     const struct ia_css_isp_dvs_statistics *isp_stats) {
 	struct ia_css_isp_dvs_statistics_map *map;
-	enum ia_css_err ret = IA_CSS_SUCCESS;
+	int ret = 0;
 
 	IA_CSS_ENTER("host_stats=%p, isp_stats=%p", host_stats, isp_stats);
 
@@ -196,7 +196,7 @@ ia_css_get_dvs2_statistics(
 	} else
 	{
 		IA_CSS_ERROR("out of memory");
-		ret = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		ret = -ENOMEM;
 	}
 
 	IA_CSS_LEAVE_ERR(ret);
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.h
index a966a6bcb692..b6d103d862be 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/sdis_2/ia_css_sdis2.host.h
@@ -62,7 +62,7 @@ void ia_css_get_isp_dvs2_coefficients(
 void ia_css_sdis2_clear_coefficients(
     struct ia_css_dvs2_coefficients *dvs2_coefs);
 
-enum ia_css_err
+int
 ia_css_get_dvs2_statistics(
     struct ia_css_dvs2_statistics	       *host_stats,
     const struct ia_css_isp_dvs_statistics *isp_stats);
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
index be274d680caf..8599d865e93a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.c
@@ -49,7 +49,7 @@ ia_css_vf_config(
  * to the requested viewfinder resolution on the upper side. The output cannot
  * be smaller than the requested viewfinder resolution.
  */
-enum ia_css_err
+int
 sh_css_vf_downscale_log2(
     const struct ia_css_frame_info *out_info,
     const struct ia_css_frame_info *vf_info,
@@ -58,12 +58,12 @@ sh_css_vf_downscale_log2(
 	unsigned int out_width;
 
 	if ((!out_info) | (!vf_info))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	out_width = out_info->res.width;
 
 	if (out_width == 0)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	/* downscale until width smaller than the viewfinder width. We don't
 	* test for the height since the vmem buffers only put restrictions on
@@ -79,26 +79,26 @@ sh_css_vf_downscale_log2(
 		ds_log2--;
 	/* TODO: use actual max input resolution of vf_pp binary */
 	if ((out_info->res.width >> ds_log2) >= 2 * ia_css_binary_max_vf_width())
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	*downscale_log2 = ds_log2;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 configure_kernel(
     const struct ia_css_binary_info *info,
     const struct ia_css_frame_info *out_info,
     const struct ia_css_frame_info *vf_info,
     unsigned int *downscale_log2,
     struct ia_css_vf_configuration *config) {
-	enum ia_css_err err;
+	int err;
 	unsigned int vf_log_ds = 0;
 
 	/* First compute value */
 	if (vf_info)
 	{
 		err = sh_css_vf_downscale_log2(out_info, vf_info, &vf_log_ds);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 	vf_log_ds = min(vf_log_ds, info->vf_dec.max_log_downscale);
@@ -106,7 +106,7 @@ configure_kernel(
 
 	/* Then store it in isp config section */
 	config->vf_downscale_bits = vf_log_ds;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void
@@ -117,13 +117,13 @@ configure_dma(
 	config->info = vf_info;
 }
 
-enum ia_css_err
+int
 ia_css_vf_configure(
     const struct ia_css_binary *binary,
     const struct ia_css_frame_info *out_info,
     struct ia_css_frame_info *vf_info,
     unsigned int *downscale_log2) {
-	enum ia_css_err err;
+	int err;
 	struct ia_css_vf_configuration config;
 	const struct ia_css_binary_info *info = &binary->info->sp;
 
@@ -134,5 +134,5 @@ ia_css_vf_configure(
 		vf_info->raw_bit_depth = info->dma.vfdec_bits_per_pixel;
 	ia_css_configure_vf(binary, &config);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.h b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.h
index 9cc594f9a840..5aa4db1ac6bb 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/vf/vf_1.0/ia_css_vf.host.h
@@ -25,7 +25,7 @@
  * to the requested viewfinder resolution on the upper side. The output cannot
  * be smaller than the requested viewfinder resolution.
  */
-enum ia_css_err
+int
 sh_css_vf_downscale_log2(
     const struct ia_css_frame_info *out_info,
     const struct ia_css_frame_info *vf_info,
@@ -37,7 +37,7 @@ ia_css_vf_config(
     const struct ia_css_vf_configuration *from,
     unsigned int size);
 
-enum ia_css_err
+int
 ia_css_vf_configure(
     const struct ia_css_binary *binary,
     const struct ia_css_frame_info *out_info,
diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h b/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h
index 26a3fc4d48e8..6b4ff04a2c37 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h
@@ -152,13 +152,13 @@ struct ia_css_binary {
 	.vf_frame_info		= IA_CSS_BINARY_DEFAULT_FRAME_INFO, \
 }
 
-enum ia_css_err
+int
 ia_css_binary_init_infos(void);
 
-enum ia_css_err
+int
 ia_css_binary_uninit(void);
 
-enum ia_css_err
+int
 ia_css_binary_fill_info(const struct ia_css_binary_xinfo *xinfo,
 			bool online,
 			bool two_ppc,
@@ -172,7 +172,7 @@ ia_css_binary_fill_info(const struct ia_css_binary_xinfo *xinfo,
 			int stream_config_left_padding,
 			bool accelerator);
 
-enum ia_css_err
+int
 ia_css_binary_find(struct ia_css_binary_descr *descr,
 		   struct ia_css_binary *binary);
 
@@ -188,10 +188,10 @@ ia_css_binary_find(struct ia_css_binary_descr *descr,
  *		the shading table directly required from ISP.
  * @param[out] pipe_config: The pipe configuration.
  *		The shading information related to ISP (but, not necessary as API) is stored in the pipe_config.
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum ia_css_err
+int
 ia_css_binary_get_shading_info(const struct ia_css_binary *binary,
 			       enum ia_css_shading_correction_type type,
 			       unsigned int required_bds_factor,
@@ -199,7 +199,7 @@ ia_css_binary_get_shading_info(const struct ia_css_binary *binary,
 			       struct ia_css_shading_info *shading_info,
 			       struct ia_css_pipe_config *pipe_config);
 
-enum ia_css_err
+int
 ia_css_binary_3a_grid_info(const struct ia_css_binary *binary,
 			   struct ia_css_grid_info *info,
 			   struct ia_css_pipe *pipe);
diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
index 85e8b45d5416..c10a09ca1c52 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/src/binary.c
@@ -134,7 +134,7 @@ struct sh_css_binary_sc_requirements {
 };
 
 /* Get the requirements for the shading correction. */
-static enum ia_css_err
+static int
 #ifndef ISP2401
 ia_css_binary_compute_shading_table_bayer_origin(
     const struct ia_css_binary *binary,				/* [in] */
@@ -149,7 +149,7 @@ sh_css_binary_get_sc_requirements(
     struct sh_css_binary_sc_requirements *scr)		/* [out] */
 #endif
 {
-	enum ia_css_err err;
+	int err;
 
 #ifndef ISP2401
 	/* Numerator and denominator of the fixed bayer downscaling factor.
@@ -198,7 +198,7 @@ sh_css_binary_get_sc_requirements(
 	/* Get the numerator and denominator of bayer downscaling factor. */
 	err = sh_css_bds_factor_get_numerator_denominator
 	(required_bds_factor, &bds_num, &bds_den);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 #else
 	/* Flags corresponding to NEED_BDS_FACTOR_2_00/NEED_BDS_FACTOR_1_50/NEED_BDS_FACTOR_1_25 macros
 	 * defined in isp kernels. */
@@ -228,7 +228,7 @@ sh_css_binary_get_sc_requirements(
 
 	/* Get the numerator and denominator of the required bayer downscaling factor. */
 	err = sh_css_bds_factor_get_numerator_denominator(required_bds_factor, &bds_num, &bds_den);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 #endif
@@ -481,7 +481,7 @@ return err;
 }
 
 /* Get the shading information of Shading Correction Type 1. */
-static enum ia_css_err
+static int
 ia_css_binary_get_shading_info_type_1(const struct ia_css_binary
 				      *binary,	/* [in] */
 				      unsigned int required_bds_factor,			/* [in] */
@@ -493,7 +493,7 @@ ia_css_binary_get_shading_info_type_1(const struct ia_css_binary
 				      struct ia_css_pipe_config *pipe_config)			/* [out] */
 #endif
 {
-	enum ia_css_err err;
+	int err;
 #ifndef ISP2401
 	struct sh_css_shading_table_bayer_origin_compute_results res;
 #else
@@ -547,12 +547,12 @@ ia_css_binary_get_shading_info_type_1(const struct ia_css_binary
 	    required_bds_factor,
 	    stream_config,
 	    &res);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 #else
 	*shading_info = DEFAULT_SHADING_INFO_TYPE_1;
 
 	err = sh_css_binary_get_sc_requirements(binary, required_bds_factor, stream_config, &scr);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 #endif
@@ -641,8 +641,8 @@ IA_CSS_LOG("adjust_width_bqs=%d, adjust_height_bqs=%d", adjust_width_bqs, adjust
 
 if (adjust_width_bqs > tbl_width_bqs || adjust_height_bqs > tbl_height_bqs)
 {
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-	return IA_CSS_ERR_INTERNAL_ERROR;
+	IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+	return -EINVAL;
 }
 
 /* Origin of the internal frame on the shading table. */
@@ -700,7 +700,7 @@ IA_CSS_LEAVE_ERR_PRIVATE(err);
 return err;
 }
 
-enum ia_css_err
+int
 ia_css_binary_get_shading_info(const struct ia_css_binary *binary,			/* [in] */
 			       enum ia_css_shading_correction_type type,		/* [in] */
 			       unsigned int required_bds_factor,			/* [in] */
@@ -708,7 +708,7 @@ ia_css_binary_get_shading_info(const struct ia_css_binary *binary,			/* [in] */
 			       struct ia_css_shading_info *shading_info,		/* [out] */
 			       struct ia_css_pipe_config *pipe_config)			/* [out] */
 {
-	enum ia_css_err err;
+	int err;
 
 	assert(binary);
 	assert(shading_info);
@@ -728,7 +728,7 @@ ia_css_binary_get_shading_info(const struct ia_css_binary *binary,			/* [in] */
 	/* Other function calls can be added here when other shading correction types will be added in the future. */
 
 	else
-		err = IA_CSS_ERR_NOT_SUPPORTED;
+		err = -ENOTSUPP;
 
 	IA_CSS_LEAVE_ERR_PRIVATE(err);
 	return err;
@@ -786,12 +786,12 @@ ia_css_binary_dvs_stat_grid_info(
 	return;
 }
 
-enum ia_css_err
+int
 ia_css_binary_3a_grid_info(const struct ia_css_binary *binary,
 			   struct ia_css_grid_info *info,
 			   struct ia_css_pipe *pipe) {
 	struct ia_css_3a_grid_info *s3a_info;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("binary=%p, info=%p, pipe=%p",
 			     binary, info, pipe);
@@ -882,52 +882,52 @@ supports_bds_factor(u32 supported_factors,
 	return ((supported_factors & PACK_BDS_FACTOR(bds_factor)) != 0);
 }
 
-static enum ia_css_err
+static int
 binary_init_info(struct ia_css_binary_xinfo *info, unsigned int i,
 		 bool *binary_found) {
 	const unsigned char *blob = sh_css_blob_info[i].blob;
 	unsigned int size = sh_css_blob_info[i].header.blob.size;
 
 	if ((!info) || (!binary_found))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	*info = sh_css_blob_info[i].header.info.isp;
 	*binary_found = blob;
 	info->blob_index = i;
 	/* we don't have this binary, skip it */
 	if (!size)
-		return IA_CSS_SUCCESS;
+		return 0;
 
 	info->xmem_addr = sh_css_load_blob(blob, size);
 	if (!info->xmem_addr)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
-	return IA_CSS_SUCCESS;
+		return -ENOMEM;
+	return 0;
 }
 
 /* When binaries are put at the beginning, they will only
  * be selected if no other primary matches.
  */
-enum ia_css_err
+int
 ia_css_binary_init_infos(void) {
 	unsigned int i;
 	unsigned int num_of_isp_binaries = sh_css_num_binaries - NUM_OF_SPS - NUM_OF_BLS;
 
 	if (num_of_isp_binaries == 0)
-		return IA_CSS_SUCCESS;
+		return 0;
 
 	all_binaries = kvmalloc(num_of_isp_binaries * sizeof(*all_binaries),
 				GFP_KERNEL);
 	if (!all_binaries)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 
 	for (i = 0; i < num_of_isp_binaries; i++)
 	{
-		enum ia_css_err ret;
+		int ret;
 		struct ia_css_binary_xinfo *binary = &all_binaries[i];
 		bool binary_found;
 
 		ret = binary_init_info(binary, i, &binary_found);
-		if (ret != IA_CSS_SUCCESS)
+		if (ret)
 			return ret;
 		if (!binary_found)
 			continue;
@@ -937,10 +937,10 @@ ia_css_binary_init_infos(void) {
 		binary->blob = &sh_css_blob_info[i];
 		binary->mem_offsets = sh_css_blob_info[i].mem_offsets;
 	}
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err
+int
 ia_css_binary_uninit(void) {
 	unsigned int i;
 	struct ia_css_binary_xinfo *b;
@@ -955,7 +955,7 @@ ia_css_binary_uninit(void) {
 		binary_infos[i] = NULL;
 	}
 	kvfree(all_binaries);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 /* @brief Compute decimation factor for 3A statistics and shading correction.
@@ -1073,7 +1073,7 @@ binary_in_frame_padded_width(int in_frame_width,
 	return rval;
 }
 
-enum ia_css_err
+int
 ia_css_binary_fill_info(const struct ia_css_binary_xinfo *xinfo,
 			bool online,
 			bool two_ppc,
@@ -1104,7 +1104,7 @@ ia_css_binary_fill_info(const struct ia_css_binary_xinfo *xinfo,
 
 	bool need_scaling = false;
 	struct ia_css_resolution binary_dvs_env, internal_res;
-	enum ia_css_err err;
+	int err;
 	unsigned int i;
 	const struct ia_css_frame_info *bin_out_info = NULL;
 
@@ -1118,7 +1118,7 @@ ia_css_binary_fill_info(const struct ia_css_binary_xinfo *xinfo,
 		err = ia_css_isp_param_allocate_isp_parameters(
 		    &binary->mem_params, &binary->css_params,
 		    &info->mem_initializers);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			return err;
 		}
 	}
@@ -1221,7 +1221,7 @@ ia_css_binary_fill_info(const struct ia_css_binary_xinfo *xinfo,
 	{
 		err = ia_css_vf_configure(binary, bin_out_info,
 					  (struct ia_css_frame_info *)vf_info, &vf_log_ds);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			if (!accelerator) {
 				ia_css_isp_param_destroy_isp_parameters(
 				    &binary->mem_params,
@@ -1242,7 +1242,7 @@ ia_css_binary_fill_info(const struct ia_css_binary_xinfo *xinfo,
 
 		binary->vf_frame_info.format = vf_info->format;
 		if (!bin_out_info)
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 		vf_out_vecs = __ISP_VF_OUTPUT_WIDTH_VECS(bin_out_info->padded_width,
 			      vf_log_ds);
 		vf_out_width = _ISP_VF_OUTPUT_WIDTH(vf_out_vecs);
@@ -1372,10 +1372,10 @@ ia_css_binary_fill_info(const struct ia_css_binary_xinfo *xinfo,
 	else
 		binary->left_padding = 0;
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err
+int
 ia_css_binary_find(struct ia_css_binary_descr *descr,
 		   struct ia_css_binary *binary) {
 	int mode;
@@ -1403,7 +1403,7 @@ ia_css_binary_find(struct ia_css_binary_descr *descr,
 #ifdef ISP2401
 	bool enable_luma_only;
 #endif
-	enum ia_css_err err = IA_CSS_ERR_INTERNAL_ERROR;
+	int err = -EINVAL;
 	bool continuous;
 	unsigned int isp_pipe_version;
 	struct ia_css_resolution dvs_env, internal_res;
@@ -1431,7 +1431,7 @@ ia_css_binary_find(struct ia_css_binary_descr *descr,
 			req_bin_out_info = req_out_info[i];
 	}
 	if (!req_bin_out_info)
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 #ifndef ISP2401
 	req_vf_info = descr->vf_info;
 #else
@@ -1780,7 +1780,7 @@ ia_css_binary_find(struct ia_css_binary_descr *descr,
 					      descr->stream_config_left_padding,
 					      false);
 
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			break;
 		binary_init_metrics(&binary->metrics, &binary->info->sp);
 		break;
diff --git a/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq.h b/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq.h
index 78e433fa3466..e8c342eb73c9 100644
--- a/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq.h
+++ b/drivers/staging/media/atomisp/pci/runtime/bufq/interface/ia_css_bufq.h
@@ -77,10 +77,10 @@ void ia_css_bufq_init(void);
  *
  * @param queue_id[in]		Index of the queue in the specified thread
  * @param item[in]		Object to enqueue.
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
 */
-enum ia_css_err ia_css_bufq_enqueue_buffer(
+int ia_css_bufq_enqueue_buffer(
     int thread_index,
     int queue_id,
     uint32_t item);
@@ -91,10 +91,10 @@ enum ia_css_err ia_css_bufq_enqueue_buffer(
  * @param queue_id[in]		Specifies  the index of the queue in the list where
  *				the item has to be read.
  * @paramitem [out]		Object to be dequeued into this item.
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
 */
-enum  ia_css_err ia_css_bufq_dequeue_buffer(
+int ia_css_bufq_dequeue_buffer(
     int queue_id,
     uint32_t *item);
 
@@ -105,10 +105,10 @@ enum  ia_css_err ia_css_bufq_dequeue_buffer(
  * @param[in]	evt_payload_0	The event payload.
  * @param[in]	evt_payload_1	The event payload.
  * @param[in]	evt_payload_2	The event payload.
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
 */
-enum ia_css_err ia_css_bufq_enqueue_psys_event(
+int ia_css_bufq_enqueue_psys_event(
     u8 evt_id,
     u8 evt_payload_0,
     u8 evt_payload_1,
@@ -119,10 +119,10 @@ enum ia_css_err ia_css_bufq_enqueue_psys_event(
  * @brief   Dequeue an item from  SP to host communication event queue.
  *
  * @param item	Object to be dequeued into this item.
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
 */
-enum  ia_css_err ia_css_bufq_dequeue_psys_event(
+int ia_css_bufq_dequeue_psys_event(
     u8 item[BUFQ_EVENT_SIZE]
 
 );
@@ -131,10 +131,10 @@ enum  ia_css_err ia_css_bufq_dequeue_psys_event(
  * @brief  Enqueue an event item into host to SP EOF event queue.
  *
  * @param[in]	evt_id		      The event ID.
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_bufq_enqueue_isys_event(
+int ia_css_bufq_enqueue_isys_event(
     uint8_t evt_id);
 
 /**
@@ -142,29 +142,29 @@ enum ia_css_err ia_css_bufq_enqueue_isys_event(
 
  *
  * @param item	Object to be dequeued into this item.
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
  */
-enum  ia_css_err ia_css_bufq_dequeue_isys_event(
+int ia_css_bufq_dequeue_isys_event(
     u8 item[BUFQ_EVENT_SIZE]);
 
 /**
 * @brief   Enqueue a tagger command item into tagger command queue..
  *
  * @param item	Object to be enqueue.
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
 */
-enum ia_css_err ia_css_bufq_enqueue_tag_cmd(
+int ia_css_bufq_enqueue_tag_cmd(
     uint32_t item);
 
 /**
 * @brief  Uninitializes bufq module.
  *
- * @return	IA_CSS_SUCCESS or error code upon error.
+ * @return	0 or error code upon error.
  *
 */
-enum ia_css_err ia_css_bufq_deinit(void);
+int ia_css_bufq_deinit(void);
 
 /**
 * @brief  Dump queue states
diff --git a/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c b/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c
index 7e01df257150..9245a50bf027 100644
--- a/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c
+++ b/drivers/staging/media/atomisp/pci/runtime/bufq/src/bufq.c
@@ -329,19 +329,19 @@ void ia_css_bufq_init(void)
 	IA_CSS_LEAVE_PRIVATE("");
 }
 
-enum ia_css_err ia_css_bufq_enqueue_buffer(
+int ia_css_bufq_enqueue_buffer(
     int thread_index,
     int queue_id,
     uint32_t item)
 {
-	enum ia_css_err return_err = IA_CSS_SUCCESS;
+	int return_err = 0;
 	ia_css_queue_t *q;
 	int error;
 
 	IA_CSS_ENTER_PRIVATE("queue_id=%d", queue_id);
 	if ((thread_index >= SH_CSS_MAX_SP_THREADS) || (thread_index < 0) ||
 	    (queue_id == SH_CSS_INVALID_QUEUE_ID))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	/* Get the queue for communication */
 	q = bufq_get_qhandle(sh_css_host2sp_buffer_queue,
@@ -352,18 +352,18 @@ enum ia_css_err ia_css_bufq_enqueue_buffer(
 		return_err = ia_css_convert_errno(error);
 	} else {
 		IA_CSS_ERROR("queue is not initialized");
-		return_err = IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return_err = -EBUSY;
 	}
 
 	IA_CSS_LEAVE_ERR_PRIVATE(return_err);
 	return return_err;
 }
 
-enum ia_css_err ia_css_bufq_dequeue_buffer(
+int ia_css_bufq_dequeue_buffer(
     int queue_id,
     uint32_t *item)
 {
-	enum ia_css_err return_err;
+	int return_err;
 	int error = 0;
 	ia_css_queue_t *q;
 
@@ -372,7 +372,7 @@ enum ia_css_err ia_css_bufq_dequeue_buffer(
 	    (queue_id <= SH_CSS_INVALID_QUEUE_ID) ||
 	    (queue_id >= SH_CSS_MAX_NUM_QUEUES)
 	   )
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	q = bufq_get_qhandle(sh_css_sp2host_buffer_queue,
 			     queue_id,
@@ -382,20 +382,20 @@ enum ia_css_err ia_css_bufq_dequeue_buffer(
 		return_err = ia_css_convert_errno(error);
 	} else {
 		IA_CSS_ERROR("queue is not initialized");
-		return_err = IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return_err = -EBUSY;
 	}
 
 	IA_CSS_LEAVE_ERR_PRIVATE(return_err);
 	return return_err;
 }
 
-enum ia_css_err ia_css_bufq_enqueue_psys_event(
+int ia_css_bufq_enqueue_psys_event(
     u8 evt_id,
     u8 evt_payload_0,
     u8 evt_payload_1,
     uint8_t evt_payload_2)
 {
-	enum ia_css_err return_err;
+	int return_err;
 	int error = 0;
 	ia_css_queue_t *q;
 
@@ -403,7 +403,7 @@ enum ia_css_err ia_css_bufq_enqueue_psys_event(
 	q = bufq_get_qhandle(sh_css_host2sp_psys_event_queue, -1, -1);
 	if (!q) {
 		IA_CSS_ERROR("queue is not initialized");
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 
 	error = ia_css_eventq_send(q,
@@ -414,10 +414,9 @@ enum ia_css_err ia_css_bufq_enqueue_psys_event(
 	return return_err;
 }
 
-enum  ia_css_err ia_css_bufq_dequeue_psys_event(
+int ia_css_bufq_dequeue_psys_event(
     u8 item[BUFQ_EVENT_SIZE])
 {
-	enum ia_css_err;
 	int error = 0;
 	ia_css_queue_t *q;
 
@@ -425,23 +424,22 @@ enum  ia_css_err ia_css_bufq_dequeue_psys_event(
 	 * by some test apps. Enablign logging here floods the log
 	 * files which may cause timeouts. */
 	if (!item)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	q = bufq_get_qhandle(sh_css_sp2host_psys_event_queue, -1, -1);
 	if (!q) {
 		IA_CSS_ERROR("queue is not initialized");
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 	error = ia_css_eventq_recv(q, item);
 
 	return ia_css_convert_errno(error);
 }
 
-enum  ia_css_err ia_css_bufq_dequeue_isys_event(
+int ia_css_bufq_dequeue_isys_event(
     u8 item[BUFQ_EVENT_SIZE])
 {
 #if !defined(HAS_NO_INPUT_SYSTEM)
-	enum ia_css_err;
 	int error = 0;
 	ia_css_queue_t *q;
 
@@ -449,25 +447,25 @@ enum  ia_css_err ia_css_bufq_dequeue_isys_event(
 	 * by some test apps. Enablign logging here floods the log
 	 * files which may cause timeouts. */
 	if (!item)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	q = bufq_get_qhandle(sh_css_sp2host_isys_event_queue, -1, -1);
 	if (!q) {
 		IA_CSS_ERROR("queue is not initialized");
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 	error = ia_css_eventq_recv(q, item);
 	return ia_css_convert_errno(error);
 #else
 	(void)item;
-	return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+	return -EBUSY;
 #endif
 }
 
-enum ia_css_err ia_css_bufq_enqueue_isys_event(uint8_t evt_id)
+int ia_css_bufq_enqueue_isys_event(uint8_t evt_id)
 {
 #if !defined(HAS_NO_INPUT_SYSTEM)
-	enum ia_css_err return_err;
+	int return_err;
 	int error = 0;
 	ia_css_queue_t *q;
 
@@ -475,7 +473,7 @@ enum ia_css_err ia_css_bufq_enqueue_isys_event(uint8_t evt_id)
 	q = bufq_get_qhandle(sh_css_host2sp_isys_event_queue, -1, -1);
 	if (!q) {
 		IA_CSS_ERROR("queue is not initialized");
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 
 	error = ia_css_eventq_send(q, evt_id, 0, 0, 0);
@@ -484,15 +482,15 @@ enum ia_css_err ia_css_bufq_enqueue_isys_event(uint8_t evt_id)
 	return return_err;
 #else
 	(void)evt_id;
-	return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+	return -EBUSY;
 #endif
 }
 
-enum ia_css_err ia_css_bufq_enqueue_tag_cmd(
+int ia_css_bufq_enqueue_tag_cmd(
     uint32_t item)
 {
 #if !defined(HAS_NO_INPUT_SYSTEM)
-	enum ia_css_err return_err;
+	int return_err;
 	int error = 0;
 	ia_css_queue_t *q;
 
@@ -500,7 +498,7 @@ enum ia_css_err ia_css_bufq_enqueue_tag_cmd(
 	q = bufq_get_qhandle(sh_css_host2sp_tag_cmd_queue, -1, -1);
 	if (!q) {
 		IA_CSS_ERROR("queue is not initialized");
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 	error = ia_css_queue_enqueue(q, item);
 
@@ -509,13 +507,13 @@ enum ia_css_err ia_css_bufq_enqueue_tag_cmd(
 	return return_err;
 #else
 	(void)item;
-	return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+	return -EBUSY;
 #endif
 }
 
-enum ia_css_err ia_css_bufq_deinit(void)
+int ia_css_bufq_deinit(void)
 {
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void bufq_dump_queue_info(const char *prefix, ia_css_queue_t *qhandle)
diff --git a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
index 1e004aafe8d1..3b374eabe7b5 100644
--- a/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
+++ b/drivers/staging/media/atomisp/pci/runtime/debug/interface/ia_css_debug.h
@@ -91,7 +91,7 @@ enum ia_css_debug_enable_param_dump {
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, \
 		"%s(): leave: " fmt "\n", __func__, ##__VA_ARGS__)
 
-/* Shorthand for returning an enum ia_css_err return value */
+/* Shorthand for returning an int return value */
 #define IA_CSS_LEAVE_ERR(__err) \
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, \
 		"%s() %d: leave: return_err=%d\n", __func__, __LINE__, __err)
@@ -112,7 +112,7 @@ enum ia_css_debug_enable_param_dump {
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE, \
 		"%s(): leave: " fmt "\n", __func__, ##__VA_ARGS__)
 
-/* Shorthand for returning an enum ia_css_err return value */
+/* Shorthand for returning an int return value */
 #define IA_CSS_LEAVE_ERR_PRIVATE(__err) \
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE, \
 		"%s() %d: leave: return_err=%d\n", __func__, __LINE__, __err)
diff --git a/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame.h b/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame.h
index 613fa33ab930..bbbb3388ad11 100644
--- a/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame.h
+++ b/drivers/staging/media/atomisp/pci/runtime/frame/interface/ia_css_frame.h
@@ -80,7 +80,7 @@ bool ia_css_frame_info_is_same_resolution(
  * @param[in]	info       The frame attributes to be initialized
  * @return	The error code.
  */
-enum ia_css_err ia_css_frame_check_info(const struct ia_css_frame_info *info);
+int ia_css_frame_check_info(const struct ia_css_frame_info *info);
 
 /*********************************************************************
 ****	Frame APIs
@@ -92,7 +92,7 @@ enum ia_css_err ia_css_frame_check_info(const struct ia_css_frame_info *info);
  * @param[in]	frame           The frame attributes to be initialized
  * @return	The error code.
  */
-enum ia_css_err ia_css_frame_init_planes(struct ia_css_frame *frame);
+int ia_css_frame_init_planes(struct ia_css_frame *frame);
 
 /* @brief Free an array of frames
  *
@@ -114,7 +114,7 @@ void ia_css_frame_free_multiple(unsigned int num_frames,
  * Allocate a frame using the given size in bytes.
  * The frame structure is partially null initialized.
  */
-enum ia_css_err ia_css_frame_allocate_with_buffer_size(
+int ia_css_frame_allocate_with_buffer_size(
     struct ia_css_frame **frame,
     const unsigned int size_bytes,
     const bool contiguous);
@@ -153,9 +153,9 @@ void ia_css_dma_configure_from_info(
  * @param[in]	in_res		Resolution of input image
  * @param[in]	out_res		Resolution of output image
  * @param[out]	crop_res	Crop resolution of input image
- * @return	Returns IA_CSS_SUCCESS or IA_CSS_ERR_INVALID_ARGUMENTS on error
+ * @return	Returns 0 or -EINVAL on error
  */
-enum ia_css_err
+int
 ia_css_frame_find_crop_resolution(const struct ia_css_resolution *in_res,
 				  const struct ia_css_resolution *out_res,
 				  struct ia_css_resolution *crop_res);
diff --git a/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c b/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
index 1fa8f7f6ab11..5407a5f65a5b 100644
--- a/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
+++ b/drivers/staging/media/atomisp/pci/runtime/frame/src/frame.c
@@ -69,9 +69,9 @@ static void frame_init_rgb_planes(struct ia_css_frame *frame,
 
 static void frame_init_qplane6_planes(struct ia_css_frame *frame);
 
-static enum ia_css_err frame_allocate_buffer_data(struct ia_css_frame *frame);
+static int frame_allocate_buffer_data(struct ia_css_frame *frame);
 
-static enum ia_css_err frame_allocate_with_data(struct ia_css_frame **frame,
+static int frame_allocate_with_data(struct ia_css_frame **frame,
 	unsigned int width,
 	unsigned int height,
 	enum ia_css_frame_format format,
@@ -101,13 +101,13 @@ void ia_css_frame_zero(struct ia_css_frame *frame)
 	hmm_set(frame->data, 0, frame->data_bytes);
 }
 
-enum ia_css_err ia_css_frame_allocate_from_info(struct ia_css_frame **frame,
+int ia_css_frame_allocate_from_info(struct ia_css_frame **frame,
 	const struct ia_css_frame_info *info)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	if (!frame || !info)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 			    "ia_css_frame_allocate_from_info() enter:\n");
 	err =
@@ -119,17 +119,17 @@ enum ia_css_err ia_css_frame_allocate_from_info(struct ia_css_frame **frame,
 	return err;
 }
 
-enum ia_css_err ia_css_frame_allocate(struct ia_css_frame **frame,
+int ia_css_frame_allocate(struct ia_css_frame **frame,
 				      unsigned int width,
 				      unsigned int height,
 				      enum ia_css_frame_format format,
 				      unsigned int padded_width,
 				      unsigned int raw_bit_depth)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	if (!frame || width == 0 || height == 0)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 			    "ia_css_frame_allocate() enter: width=%d, height=%d, format=%d, padded_width=%d, raw_bit_depth=%d\n",
@@ -138,7 +138,7 @@ enum ia_css_err ia_css_frame_allocate(struct ia_css_frame **frame,
 	err = frame_allocate_with_data(frame, width, height, format,
 				       padded_width, raw_bit_depth, false);
 
-	if ((*frame) && err == IA_CSS_SUCCESS)
+	if ((*frame) && err == 0)
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_frame_allocate() leave: frame=%p, data(DDR address)=0x%x\n", *frame,
 				    (*frame)->data);
@@ -150,13 +150,13 @@ enum ia_css_err ia_css_frame_allocate(struct ia_css_frame **frame,
 	return err;
 }
 
-enum ia_css_err ia_css_frame_map(struct ia_css_frame **frame,
+int ia_css_frame_map(struct ia_css_frame **frame,
 				 const struct ia_css_frame_info *info,
 				 const void __user *data,
 				 u16 attribute,
 				 unsigned int pgnr)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_frame *me;
 
 	assert(frame);
@@ -164,10 +164,10 @@ enum ia_css_err ia_css_frame_map(struct ia_css_frame **frame,
 	/* Create the frame structure */
 	err = ia_css_frame_create_from_info(&me, info);
 
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
-	if (err == IA_CSS_SUCCESS) {
+	if (!err) {
 		if (pgnr < ((PAGE_ALIGN(me->data_bytes)) >> PAGE_SHIFT)) {
 			dev_err(atomisp_dev,
 				"user space memory size is less than the expected size..\n");
@@ -184,11 +184,11 @@ enum ia_css_err ia_css_frame_map(struct ia_css_frame **frame,
 				     attribute & ATOMISP_MAP_FLAG_CACHED);
 
 		if (me->data == mmgr_NULL)
-			err = IA_CSS_ERR_INVALID_ARGUMENTS;
+			err = -EINVAL;
 	}
 
 error:
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		kvfree(me);
 		me = NULL;
 	}
@@ -198,10 +198,10 @@ enum ia_css_err ia_css_frame_map(struct ia_css_frame **frame,
 	return err;
 }
 
-enum ia_css_err ia_css_frame_create_from_info(struct ia_css_frame **frame,
+int ia_css_frame_create_from_info(struct ia_css_frame **frame,
 	const struct ia_css_frame_info *info)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_frame *me;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
@@ -209,7 +209,7 @@ enum ia_css_err ia_css_frame_create_from_info(struct ia_css_frame **frame,
 	if (!frame || !info) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_frame_create_from_info() leave: invalid arguments\n");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	me = frame_create(info->res.width,
@@ -222,12 +222,12 @@ enum ia_css_err ia_css_frame_create_from_info(struct ia_css_frame **frame,
 	if (!me) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_frame_create_from_info() leave: frame create failed\n");
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 	}
 
 	err = ia_css_frame_init_planes(me);
 
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		kvfree(me);
 		me = NULL;
 	}
@@ -240,18 +240,18 @@ enum ia_css_err ia_css_frame_create_from_info(struct ia_css_frame **frame,
 	return err;
 }
 
-enum ia_css_err ia_css_frame_set_data(struct ia_css_frame *frame,
+int ia_css_frame_set_data(struct ia_css_frame *frame,
 				      const ia_css_ptr mapped_data,
 				      size_t data_bytes)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 			    "ia_css_frame_set_data() enter:\n");
 	if (!frame) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_frame_set_data() leave: NULL frame\n");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	/* If we are setting a valid data.
@@ -261,7 +261,7 @@ enum ia_css_err ia_css_frame_set_data(struct ia_css_frame *frame,
 	if ((mapped_data != mmgr_NULL) && (frame->data_bytes > data_bytes)) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_frame_set_data() leave: invalid arguments\n");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	frame->data = mapped_data;
@@ -271,14 +271,14 @@ enum ia_css_err ia_css_frame_set_data(struct ia_css_frame *frame,
 	return err;
 }
 
-enum ia_css_err ia_css_frame_allocate_contiguous(struct ia_css_frame **frame,
+int ia_css_frame_allocate_contiguous(struct ia_css_frame **frame,
 	unsigned int width,
 	unsigned int height,
 	enum ia_css_frame_format format,
 	unsigned int padded_width,
 	unsigned int raw_bit_depth)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 			    "ia_css_frame_allocate_contiguous() enter: width=%d, height=%d, format=%d, padded_width=%d, raw_bit_depth=%d\n",
@@ -294,11 +294,11 @@ enum ia_css_err ia_css_frame_allocate_contiguous(struct ia_css_frame **frame,
 	return err;
 }
 
-enum ia_css_err ia_css_frame_allocate_contiguous_from_info(
+int ia_css_frame_allocate_contiguous_from_info(
     struct ia_css_frame **frame,
     const struct ia_css_frame_info *info)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	assert(frame);
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
@@ -330,15 +330,15 @@ void ia_css_frame_free(struct ia_css_frame *frame)
 **	Module public functions
 **************************************************************************/
 
-enum ia_css_err ia_css_frame_check_info(const struct ia_css_frame_info *info)
+int ia_css_frame_check_info(const struct ia_css_frame_info *info)
 {
 	assert(info);
 	if (info->res.width == 0 || info->res.height == 0)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
-	return IA_CSS_SUCCESS;
+		return -EINVAL;
+	return 0;
 }
 
-enum ia_css_err ia_css_frame_init_planes(struct ia_css_frame *frame)
+int ia_css_frame_init_planes(struct ia_css_frame *frame)
 {
 	assert(frame);
 
@@ -443,9 +443,9 @@ enum ia_css_err ia_css_frame_init_planes(struct ia_css_frame *frame)
 		frame->planes.binary.size = 0;
 		break;
 	default:
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 void ia_css_frame_info_set_width(struct ia_css_frame_info *info,
@@ -530,26 +530,26 @@ void ia_css_frame_free_multiple(unsigned int num_frames,
 	}
 }
 
-enum ia_css_err ia_css_frame_allocate_with_buffer_size(
+int ia_css_frame_allocate_with_buffer_size(
     struct ia_css_frame **frame,
     const unsigned int buffer_size_bytes,
     const bool contiguous)
 {
 	/* AM: Body coppied from frame_allocate_with_data(). */
-	enum ia_css_err err;
+	int err;
 	struct ia_css_frame *me = frame_create(0, 0,
 					       IA_CSS_FRAME_FORMAT_NUM,/* Not valid format yet */
 					       0, 0, contiguous, false);
 
 	if (!me)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 
 	/* Get the data size */
 	me->data_bytes = buffer_size_bytes;
 
 	err = frame_allocate_buffer_data(me);
 
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		kvfree(me);
 		me = NULL;
 	}
@@ -795,7 +795,7 @@ static void frame_init_qplane6_planes(struct ia_css_frame *frame)
 	return;
 }
 
-static enum ia_css_err frame_allocate_buffer_data(struct ia_css_frame *frame)
+static int frame_allocate_buffer_data(struct ia_css_frame *frame)
 {
 #ifdef ISP2401
 	IA_CSS_ENTER_LEAVE_PRIVATE("frame->data_bytes=%d\n", frame->data_bytes);
@@ -806,11 +806,11 @@ static enum ia_css_err frame_allocate_buffer_data(struct ia_css_frame *frame)
 				ATOMISP_MAP_FLAG_CONTIGUOUS : 0);
 
 	if (frame->data == mmgr_NULL)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
-	return IA_CSS_SUCCESS;
+		return -ENOMEM;
+	return 0;
 }
 
-static enum ia_css_err frame_allocate_with_data(struct ia_css_frame **frame,
+static int frame_allocate_with_data(struct ia_css_frame **frame,
 	unsigned int width,
 	unsigned int height,
 	enum ia_css_frame_format format,
@@ -818,7 +818,7 @@ static enum ia_css_err frame_allocate_with_data(struct ia_css_frame **frame,
 	unsigned int raw_bit_depth,
 	bool contiguous)
 {
-	enum ia_css_err err;
+	int err;
 	struct ia_css_frame *me = frame_create(width,
 					       height,
 					       format,
@@ -828,14 +828,14 @@ static enum ia_css_err frame_allocate_with_data(struct ia_css_frame **frame,
 					       true);
 
 	if (!me)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 
 	err = ia_css_frame_init_planes(me);
 
-	if (err == IA_CSS_SUCCESS)
+	if (!err)
 		err = frame_allocate_buffer_data(me);
 
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		kvfree(me);
 #ifndef ISP2401
 		return err;
@@ -932,7 +932,7 @@ void ia_css_resolution_to_sp_resolution(
 }
 
 /* ISP2401 */
-enum ia_css_err
+int
 ia_css_frame_find_crop_resolution(const struct ia_css_resolution *in_res,
 				  const struct ia_css_resolution *out_res,
 				  struct ia_css_resolution *crop_res) {
@@ -940,7 +940,7 @@ ia_css_frame_find_crop_resolution(const struct ia_css_resolution *in_res,
 	u32 in_ratio, out_ratio;
 
 	if ((!in_res) || (!out_res) || (!crop_res))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	IA_CSS_ENTER_PRIVATE("in(%ux%u) -> out(%ux%u)", in_res->width,
 			     in_res->height, out_res->width, out_res->height);
@@ -949,11 +949,11 @@ ia_css_frame_find_crop_resolution(const struct ia_css_resolution *in_res,
 	    || (in_res->height == 0)
 	    || (out_res->width == 0)
 	    || (out_res->height == 0))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	if ((out_res->width > in_res->width) ||
 	    (out_res->height > in_res->height))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	/* If aspect ratio (width/height) of out_res is higher than the aspect
 	 * ratio of the in_res, then we crop vertically, otherwise we crop
@@ -998,5 +998,5 @@ ia_css_frame_find_crop_resolution(const struct ia_css_resolution *in_res,
 
 	IA_CSS_LEAVE_PRIVATE("in(%ux%u) -> out(%ux%u)", crop_res->width,
 			     crop_res->height, out_res->width, out_res->height);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
diff --git a/drivers/staging/media/atomisp/pci/runtime/ifmtr/interface/ia_css_ifmtr.h b/drivers/staging/media/atomisp/pci/runtime/ifmtr/interface/ia_css_ifmtr.h
index d4b0b2361176..de7ab8048e0c 100644
--- a/drivers/staging/media/atomisp/pci/runtime/ifmtr/interface/ia_css_ifmtr.h
+++ b/drivers/staging/media/atomisp/pci/runtime/ifmtr/interface/ia_css_ifmtr.h
@@ -27,7 +27,7 @@ unsigned int ia_css_ifmtr_lines_needed_for_bayer_order(
 unsigned int ia_css_ifmtr_columns_needed_for_bayer_order(
     const struct ia_css_stream_config *config);
 
-enum ia_css_err ia_css_ifmtr_configure(struct ia_css_stream_config *config,
+int ia_css_ifmtr_configure(struct ia_css_stream_config *config,
 				       struct ia_css_binary *binary);
 
 #endif /* __IA_CSS_IFMTR_H__ */
diff --git a/drivers/staging/media/atomisp/pci/runtime/ifmtr/src/ifmtr.c b/drivers/staging/media/atomisp/pci/runtime/ifmtr/src/ifmtr.c
index 7a18eae8c638..12dd1fa5fc73 100644
--- a/drivers/staging/media/atomisp/pci/runtime/ifmtr/src/ifmtr.c
+++ b/drivers/staging/media/atomisp/pci/runtime/ifmtr/src/ifmtr.c
@@ -28,12 +28,12 @@
 /************************************************************
  * Static functions declarations
  ************************************************************/
-static enum ia_css_err ifmtr_start_column(
+static int ifmtr_start_column(
     const struct ia_css_stream_config *config,
     unsigned int bin_in,
     unsigned int *start_column);
 
-static enum ia_css_err ifmtr_input_start_line(
+static int ifmtr_input_start_line(
     const struct ia_css_stream_config *config,
     unsigned int bin_in,
     unsigned int *start_line);
@@ -71,7 +71,7 @@ unsigned int ia_css_ifmtr_columns_needed_for_bayer_order(
 	return 0;
 }
 
-enum ia_css_err ia_css_ifmtr_configure(struct ia_css_stream_config *config,
+int ia_css_ifmtr_configure(struct ia_css_stream_config *config,
 				       struct ia_css_binary *binary)
 {
 	unsigned int start_line, start_column = 0,
@@ -97,7 +97,7 @@ enum ia_css_err ia_css_ifmtr_configure(struct ia_css_stream_config *config,
 				 left_padding = 0;
 	input_formatter_cfg_t if_a_config, if_b_config;
 	enum atomisp_input_format input_format;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	u8 if_config_index;
 
 	/* Determine which input formatter config set is targeted. */
@@ -142,10 +142,10 @@ enum ia_css_err ia_css_ifmtr_configure(struct ia_css_stream_config *config,
 	 * columns.
 	 */
 	err = ifmtr_input_start_line(config, cropped_height, &start_line);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	err = ifmtr_start_column(config, cropped_width, &start_column);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 	if (config->left_padding == -1)
@@ -358,7 +358,7 @@ enum ia_css_err ia_css_ifmtr_configure(struct ia_css_stream_config *config,
 		break;
 	}
 	if (width_a == 0)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	if (two_ppc)
 		left_padding /= 2;
@@ -459,7 +459,7 @@ enum ia_css_err ia_css_ifmtr_configure(struct ia_css_stream_config *config,
 		}
 	}
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 bool ifmtr_set_if_blocking_mode_reset = true;
@@ -496,7 +496,7 @@ static void ifmtr_set_if_blocking_mode(
 	return;
 }
 
-static enum ia_css_err ifmtr_start_column(
+static int ifmtr_start_column(
     const struct ia_css_stream_config *config,
     unsigned int bin_in,
     unsigned int *start_column)
@@ -505,7 +505,7 @@ static enum ia_css_err ifmtr_start_column(
 		     for_bayer = ia_css_ifmtr_columns_needed_for_bayer_order(config);
 
 	if (bin_in + 2 * for_bayer > in)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	/* On the hardware, we want to use the middle of the input, so we
 	 * divide the start column by 2. */
@@ -519,10 +519,10 @@ static enum ia_css_err ifmtr_start_column(
 	 */
 	start += for_bayer;
 	*start_column = start;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err ifmtr_input_start_line(
+static int ifmtr_input_start_line(
     const struct ia_css_stream_config *config,
     unsigned int bin_in,
     unsigned int *start_line)
@@ -531,7 +531,7 @@ static enum ia_css_err ifmtr_input_start_line(
 		     for_bayer = ia_css_ifmtr_lines_needed_for_bayer_order(config);
 
 	if (bin_in + 2 * for_bayer > in)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	/* On the hardware, we want to use the middle of the input, so we
 	 * divide the start line by 2. On the simulator, we cannot handle extra
@@ -546,7 +546,7 @@ static enum ia_css_err ifmtr_input_start_line(
 	/* now we add the one line (if needed) to correct for the bayer order */
 	start += for_bayer;
 	*start_line = start;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 #endif
diff --git a/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param.h b/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param.h
index 3c6bba7c7772..37ff4b57f895 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isp_param/interface/ia_css_isp_param.h
@@ -67,7 +67,7 @@ ia_css_init_memory_interface(
     const struct ia_css_isp_param_css_segments *css_params);
 
 /* Allocate memory parameters */
-enum ia_css_err
+int
 ia_css_isp_param_allocate_isp_parameters(
     struct ia_css_isp_param_host_segments *mem_params,
     struct ia_css_isp_param_css_segments *css_params,
@@ -88,7 +88,7 @@ ia_css_isp_param_load_fw_params(
     bool init);
 
 /* Copy host parameter images to ddr */
-enum ia_css_err
+int
 ia_css_isp_param_copy_isp_mem_if_to_ddr(
     struct ia_css_isp_param_css_segments *ddr,
     const struct ia_css_isp_param_host_segments *host,
diff --git a/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c b/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
index 126d1826aa3e..f5aba4780a7f 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isp_param/src/isp_param.c
@@ -101,12 +101,12 @@ ia_css_init_memory_interface(
 	}
 }
 
-enum ia_css_err
+int
 ia_css_isp_param_allocate_isp_parameters(
     struct ia_css_isp_param_host_segments *mem_params,
     struct ia_css_isp_param_css_segments *css_params,
     const struct ia_css_isp_param_isp_segments *mem_initializers) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	unsigned int mem, pclass;
 
 	pclass = IA_CSS_PARAM_CLASS_PARAM;
@@ -126,13 +126,13 @@ ia_css_isp_param_allocate_isp_parameters(
 										   size,
 										   GFP_KERNEL);
 				if (!mem_params->params[pclass][mem].address) {
-					err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+					err = -ENOMEM;
 					goto cleanup;
 				}
 				if (pclass != IA_CSS_PARAM_CLASS_PARAM) {
 					css_params->params[pclass][mem].address = hmm_alloc(size, HMM_BO_PRIVATE, 0, NULL, 0);
 					if (!css_params->params[pclass][mem].address) {
-						err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+						err = -ENOMEM;
 						goto cleanup;
 					}
 				}
@@ -180,7 +180,7 @@ ia_css_isp_param_load_fw_params(
 	}
 }
 
-enum ia_css_err
+int
 ia_css_isp_param_copy_isp_mem_if_to_ddr(
     struct ia_css_isp_param_css_segments *ddr,
     const struct ia_css_isp_param_host_segments *host,
@@ -194,12 +194,12 @@ ia_css_isp_param_copy_isp_mem_if_to_ddr(
 		char	    *host_mem_ptr = host->params[pclass][mem].address;
 
 		if (size != ddr->params[pclass][mem].size)
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 		if (!size)
 			continue;
 		hmm_store(ddr_mem_ptr, host_mem_ptr, size);
 	}
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 void
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys.h b/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys.h
index e2aca35452c0..88a9709015ae 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys.h
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/interface/ia_css_isys.h
@@ -48,10 +48,10 @@ enum mipi_port_id ia_css_isys_port_to_mipi_port(
  * @param[in]	port		CSI port
  * @param[in]	isys_stream_id	Stream handle generated with ia_css_isys_generate_stream_id()
  *				Must be lower than SH_CSS_MAX_ISYS_CHANNEL_NODES
- * @return			IA_CSS_SUCCESS if successful, IA_CSS_ERR_INTERNAL_ERROR if
+ * @return			0 if successful, -EINVAL if
  *				there is already a stream registered with the same handle
  */
-enum ia_css_err ia_css_isys_csi_rx_register_stream(
+int ia_css_isys_csi_rx_register_stream(
     enum mipi_port_id port,
     uint32_t isys_stream_id);
 
@@ -63,14 +63,14 @@ enum ia_css_err ia_css_isys_csi_rx_register_stream(
  * @param[in]	port		CSI port
  * @param[in]	isys_stream_id	Stream handle generated with ia_css_isys_generate_stream_id()
  *				Must be lower than SH_CSS_MAX_ISYS_CHANNEL_NODES
- * @return			IA_CSS_SUCCESS if successful, IA_CSS_ERR_INTERNAL_ERROR if
+ * @return			0 if successful, -EINVAL if
  *				there is no stream registered with that handle
  */
-enum ia_css_err ia_css_isys_csi_rx_unregister_stream(
+int ia_css_isys_csi_rx_unregister_stream(
     enum mipi_port_id port,
     uint32_t isys_stream_id);
 
-enum ia_css_err ia_css_isys_convert_compressed_format(
+int ia_css_isys_convert_compressed_format(
     struct ia_css_csi2_compression *comp,
     struct input_system_cfg_s *cfg);
 unsigned int ia_css_csi2_calculate_input_system_alignment(
@@ -107,7 +107,7 @@ unsigned int ia_css_isys_rx_translate_irq_infos(unsigned int bits);
  * This is normally done by the sensor, but when using the input fifo, this
  * format type must be sumitted correctly by the application.
  */
-enum ia_css_err ia_css_isys_convert_stream_format_to_mipi_format(
+int ia_css_isys_convert_stream_format_to_mipi_format(
     enum atomisp_input_format input_format,
     mipi_predictor_t compression,
     unsigned int *fmt_type);
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.c
index 8f2ce2c057eb..d0bd0ec27ccc 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/csi_rx_rmgr.c
@@ -126,11 +126,11 @@ void ia_css_isys_csi_rx_lut_rmgr_release(
 	}
 }
 
-enum ia_css_err ia_css_isys_csi_rx_register_stream(
+int ia_css_isys_csi_rx_register_stream(
     enum mipi_port_id port,
     uint32_t isys_stream_id)
 {
-	enum ia_css_err retval = IA_CSS_ERR_INTERNAL_ERROR;
+	int retval = -EINVAL;
 
 	if ((port < N_INPUT_SYSTEM_CSI_PORT) &&
 	    (isys_stream_id < SH_CSS_MAX_ISYS_CHANNEL_NODES)) {
@@ -140,17 +140,17 @@ enum ia_css_err ia_css_isys_csi_rx_register_stream(
 		if (bitop_getbit(pipe_io_status->active[port], isys_stream_id) == 0) {
 			bitop_setbit(pipe_io_status->active[port], isys_stream_id);
 			pipe_io_status->running[port] = 0;
-			retval = IA_CSS_SUCCESS;
+			retval = 0;
 		}
 	}
 	return retval;
 }
 
-enum ia_css_err ia_css_isys_csi_rx_unregister_stream(
+int ia_css_isys_csi_rx_unregister_stream(
     enum mipi_port_id port,
     uint32_t isys_stream_id)
 {
-	enum ia_css_err retval = IA_CSS_ERR_INTERNAL_ERROR;
+	int retval = -EINVAL;
 
 	if ((port < N_INPUT_SYSTEM_CSI_PORT) &&
 	    (isys_stream_id < SH_CSS_MAX_ISYS_CHANNEL_NODES)) {
@@ -159,7 +159,7 @@ enum ia_css_err ia_css_isys_csi_rx_unregister_stream(
 		pipe_io_status = ia_css_pipeline_get_pipe_io_status();
 		if (bitop_getbit(pipe_io_status->active[port], isys_stream_id) == 1) {
 			bitop_clearbit(pipe_io_status->active[port], isys_stream_id);
-			retval = IA_CSS_SUCCESS;
+			retval = 0;
 		}
 	}
 	return retval;
diff --git a/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c b/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
index 43665ddff8ea..0c4e3d86c5d6 100644
--- a/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
+++ b/drivers/staging/media/atomisp/pci/runtime/isys/src/rx.c
@@ -216,7 +216,7 @@ void ia_css_isys_rx_clear_irq_info(enum mipi_port_id port,
 }
 #endif /* #if !defined(USE_INPUT_SYSTEM_VERSION_2401) */
 
-enum ia_css_err ia_css_isys_convert_stream_format_to_mipi_format(
+int ia_css_isys_convert_stream_format_to_mipi_format(
     enum atomisp_input_format input_format,
     mipi_predictor_t compression,
     unsigned int *fmt_type)
@@ -254,9 +254,9 @@ enum ia_css_err ia_css_isys_convert_stream_format_to_mipi_format(
 			*fmt_type = 16;
 			break;
 		default:
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 		}
-		return IA_CSS_SUCCESS;
+		return 0;
 	}
 	/*
 	 * This mapping comes from the Arasan CSS function spec
@@ -356,9 +356,9 @@ enum ia_css_err ia_css_isys_convert_stream_format_to_mipi_format(
 	case ATOMISP_INPUT_FORMAT_YUV420_16:
 	case ATOMISP_INPUT_FORMAT_YUV422_16:
 	default:
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	}
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 #if defined(USE_INPUT_SYSTEM_VERSION_2401)
@@ -379,11 +379,11 @@ static mipi_predictor_t sh_css_csi2_compression_type_2_mipi_predictor(
 	return predictor;
 }
 
-enum ia_css_err ia_css_isys_convert_compressed_format(
+int ia_css_isys_convert_compressed_format(
     struct ia_css_csi2_compression *comp,
     struct input_system_cfg_s *cfg)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	assert(comp);
 	assert(cfg);
@@ -414,7 +414,7 @@ enum ia_css_err ia_css_isys_convert_compressed_format(
 				cfg->csi_port_attr.comp_scheme = MIPI_COMPRESSOR_10_8_10;
 				break;
 			default:
-				err = IA_CSS_ERR_INVALID_ARGUMENTS;
+				err = -EINVAL;
 			}
 		} else if (comp->uncompressed_bits_per_pixel ==
 			   UNCOMPRESSED_BITS_PER_PIXEL_12) {
@@ -429,10 +429,10 @@ enum ia_css_err ia_css_isys_convert_compressed_format(
 				cfg->csi_port_attr.comp_scheme = MIPI_COMPRESSOR_12_8_12;
 				break;
 			default:
-				err = IA_CSS_ERR_INVALID_ARGUMENTS;
+				err = -EINVAL;
 			}
 		} else
-			err = IA_CSS_ERR_INVALID_ARGUMENTS;
+			err = -EINVAL;
 		cfg->csi_port_attr.comp_predictor =
 		    sh_css_csi2_compression_type_2_mipi_predictor(comp->type);
 		cfg->csi_port_attr.comp_enable = true;
diff --git a/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h b/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h
index 6a41efee5635..022110fbe285 100644
--- a/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h
+++ b/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h
@@ -94,13 +94,13 @@ void ia_css_pipeline_init(void);
  * @param[out] pipeline  structure to be initialized with defaults
  * @param[in] pipe_id
  * @param[in] pipe_num Number that uniquely identifies a pipeline.
- * @return                     IA_CSS_SUCCESS or error code upon error.
+ * @return                     0 or error code upon error.
  *
  * Initializes the pipeline structure with a set of default values.
  * This API is expected to be used when a pipeline structure is allocated
  * externally and needs sane defaults
  */
-enum ia_css_err ia_css_pipeline_create(
+int ia_css_pipeline_create(
     struct ia_css_pipeline *pipeline,
     enum ia_css_pipe_id pipe_id,
     unsigned int pipe_num,
@@ -127,10 +127,10 @@ void ia_css_pipeline_start(enum ia_css_pipe_id pipe_id,
 /* @brief Request to stop a pipeline
  *
  * @param[in] pipeline
- * @return                     IA_CSS_SUCCESS or error code upon error.
+ * @return                     0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_pipeline_request_stop(struct ia_css_pipeline *pipeline);
+int ia_css_pipeline_request_stop(struct ia_css_pipeline *pipeline);
 
 /* @brief Check whether pipeline has stopped
  *
@@ -153,13 +153,13 @@ void ia_css_pipeline_clean(struct ia_css_pipeline *pipeline);
  * @param     pipeline               Pointer to the pipeline to be added to.
  * @param[in] stage_desc       The description of the stage
  * @param[out] stage            The successor of the stage.
- * @return                     IA_CSS_SUCCESS or error code upon error.
+ * @return                     0 or error code upon error.
  *
  * Add a new stage to a non-NULL pipeline.
  * The stage consists of an ISP binary or firmware and input and output
  * arguments.
 */
-enum ia_css_err ia_css_pipeline_create_and_add_stage(
+int ia_css_pipeline_create_and_add_stage(
     struct ia_css_pipeline *pipeline,
     struct ia_css_pipeline_stage_desc *stage_desc,
     struct ia_css_pipeline_stage **stage);
@@ -177,10 +177,10 @@ void ia_css_pipeline_finalize_stages(struct ia_css_pipeline *pipeline,
 /* @brief gets a stage from the pipeline
  *
  * @param[in] pipeline
- * @return                     IA_CSS_SUCCESS or error code upon error.
+ * @return                     0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_pipeline_get_stage(struct ia_css_pipeline *pipeline,
+int ia_css_pipeline_get_stage(struct ia_css_pipeline *pipeline,
 	int mode,
 	struct ia_css_pipeline_stage **stage);
 
@@ -190,10 +190,10 @@ enum ia_css_err ia_css_pipeline_get_stage(struct ia_css_pipeline *pipeline,
  * @param[in] fw_handle
  * @param[out] stage Pointer to Stage
  *
- * @return   IA_CSS_SUCCESS or error code upon error.
+ * @return   0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_pipeline_get_stage_from_fw(struct ia_css_pipeline
+int ia_css_pipeline_get_stage_from_fw(struct ia_css_pipeline
 	*pipeline,
 	u32 fw_handle,
 	struct ia_css_pipeline_stage **stage);
@@ -204,10 +204,10 @@ enum ia_css_err ia_css_pipeline_get_stage_from_fw(struct ia_css_pipeline
  * @param[in] stage_num
  * @param[out] fw_handle
  *
- * @return   IA_CSS_SUCCESS or error code upon error.
+ * @return   0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_pipeline_get_fw_from_stage(struct ia_css_pipeline
+int ia_css_pipeline_get_fw_from_stage(struct ia_css_pipeline
 	*pipeline,
 	u32 stage_num,
 	uint32_t *fw_handle);
@@ -215,10 +215,10 @@ enum ia_css_err ia_css_pipeline_get_fw_from_stage(struct ia_css_pipeline
 /* @brief gets the output stage from the pipeline
  *
  * @param[in] pipeline
- * @return                     IA_CSS_SUCCESS or error code upon error.
+ * @return                     0 or error code upon error.
  *
  */
-enum ia_css_err ia_css_pipeline_get_output_stage(
+int ia_css_pipeline_get_output_stage(
     struct ia_css_pipeline *pipeline,
     int mode,
     struct ia_css_pipeline_stage **stage);
diff --git a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
index feacd8f12b14..3638c9ebebf9 100644
--- a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
+++ b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
@@ -46,7 +46,7 @@ static void pipeline_init_defaults(
     unsigned int dvs_frame_delay);
 
 static void pipeline_stage_destroy(struct ia_css_pipeline_stage *stage);
-static enum ia_css_err pipeline_stage_create(
+static int pipeline_stage_create(
     struct ia_css_pipeline_stage_desc *stage_desc,
     struct ia_css_pipeline_stage **new_stage);
 static void ia_css_pipeline_set_zoom_stage(struct ia_css_pipeline *pipeline);
@@ -61,7 +61,7 @@ void ia_css_pipeline_init(void)
 	pipeline_init_sp_thread_map();
 }
 
-enum ia_css_err ia_css_pipeline_create(
+int ia_css_pipeline_create(
     struct ia_css_pipeline *pipeline,
     enum ia_css_pipe_id pipe_id,
     unsigned int pipe_num,
@@ -71,14 +71,14 @@ enum ia_css_err ia_css_pipeline_create(
 	IA_CSS_ENTER_PRIVATE("pipeline = %p, pipe_id = %d, pipe_num = %d, dvs_frame_delay = %d",
 			     pipeline, pipe_id, pipe_num, dvs_frame_delay);
 	if (!pipeline) {
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	pipeline_init_defaults(pipeline, pipe_id, pipe_num, dvs_frame_delay);
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
 void ia_css_pipeline_map(unsigned int pipe_num, bool map)
@@ -196,15 +196,15 @@ void ia_css_pipeline_dump_thread_map_info(void)
 	}
 }
 
-enum ia_css_err ia_css_pipeline_request_stop(struct ia_css_pipeline *pipeline)
+int ia_css_pipeline_request_stop(struct ia_css_pipeline *pipeline)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	unsigned int thread_id;
 
 	assert(pipeline);
 
 	if (!pipeline)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 			    "ia_css_pipeline_request_stop() enter: pipeline=%p\n",
@@ -219,7 +219,7 @@ enum ia_css_err ia_css_pipeline_request_stop(struct ia_css_pipeline *pipeline)
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_pipeline_request_stop() leaving\n");
 		/* queues are invalid */
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 	ia_css_bufq_enqueue_psys_event(IA_CSS_PSYS_SW_EVENT_STOP_STREAM,
 				       (uint8_t)thread_id,
@@ -264,19 +264,19 @@ void ia_css_pipeline_clean(struct ia_css_pipeline *pipeline)
  * @param       pipeline      Pointer to the pipeline to be added to.
  * @param[in]   stage_desc    The description of the stage
  * @param[out]	stage         The successor of the stage.
- * @return      IA_CSS_SUCCESS or error code upon error.
+ * @return      0 or error code upon error.
  *
  * Add a new stage to a non-NULL pipeline.
  * The stage consists of an ISP binary or firmware and input and
  * output arguments.
 */
-enum ia_css_err ia_css_pipeline_create_and_add_stage(
+int ia_css_pipeline_create_and_add_stage(
     struct ia_css_pipeline *pipeline,
     struct ia_css_pipeline_stage_desc *stage_desc,
     struct ia_css_pipeline_stage **stage)
 {
 	struct ia_css_pipeline_stage *last, *new_stage = NULL;
-	enum ia_css_err err;
+	int err;
 
 	/* other arguments can be NULL */
 	assert(pipeline);
@@ -290,7 +290,7 @@ enum ia_css_err ia_css_pipeline_create_and_add_stage(
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_pipeline_create_and_add_stage() done: Invalid args\n");
 
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	}
 
 	/* Find the last stage */
@@ -309,12 +309,12 @@ enum ia_css_err ia_css_pipeline_create_and_add_stage(
 			stage_desc->in_frame = last->args.out_frame[0];
 
 		if (!stage_desc->in_frame)
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 	}
 
 	/* Create the new stage */
 	err = pipeline_stage_create(stage_desc, &new_stage);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_pipeline_create_and_add_stage() done: stage_create_failed\n");
 		return err;
@@ -331,7 +331,7 @@ enum ia_css_err ia_css_pipeline_create_and_add_stage(
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 			    "ia_css_pipeline_create_and_add_stage() done:\n");
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 void ia_css_pipeline_finalize_stages(struct ia_css_pipeline *pipeline,
@@ -351,7 +351,7 @@ void ia_css_pipeline_finalize_stages(struct ia_css_pipeline *pipeline,
 	ia_css_pipeline_configure_inout_port(pipeline, continuous);
 }
 
-enum ia_css_err ia_css_pipeline_get_stage(struct ia_css_pipeline *pipeline,
+int ia_css_pipeline_get_stage(struct ia_css_pipeline *pipeline,
 	int mode,
 	struct ia_css_pipeline_stage **stage)
 {
@@ -364,13 +364,13 @@ enum ia_css_err ia_css_pipeline_get_stage(struct ia_css_pipeline *pipeline,
 	for (s = pipeline->stages; s; s = s->next) {
 		if (s->mode == mode) {
 			*stage = s;
-			return IA_CSS_SUCCESS;
+			return 0;
 		}
 	}
-	return IA_CSS_ERR_INTERNAL_ERROR;
+	return -EINVAL;
 }
 
-enum ia_css_err ia_css_pipeline_get_stage_from_fw(struct ia_css_pipeline
+int ia_css_pipeline_get_stage_from_fw(struct ia_css_pipeline
 	*pipeline,
 	u32 fw_handle,
 	struct ia_css_pipeline_stage **stage)
@@ -383,13 +383,13 @@ enum ia_css_err ia_css_pipeline_get_stage_from_fw(struct ia_css_pipeline
 	for (s = pipeline->stages; s; s = s->next) {
 		if ((s->firmware) && (s->firmware->handle == fw_handle)) {
 			*stage = s;
-			return IA_CSS_SUCCESS;
+			return 0;
 		}
 	}
-	return IA_CSS_ERR_INTERNAL_ERROR;
+	return -EINVAL;
 }
 
-enum ia_css_err ia_css_pipeline_get_fw_from_stage(struct ia_css_pipeline
+int ia_css_pipeline_get_fw_from_stage(struct ia_css_pipeline
 	*pipeline,
 	u32 stage_num,
 	uint32_t *fw_handle)
@@ -398,18 +398,18 @@ enum ia_css_err ia_css_pipeline_get_fw_from_stage(struct ia_css_pipeline
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "%s()\n", __func__);
 	if ((!pipeline) || (!fw_handle))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	for (s = pipeline->stages; s; s = s->next) {
 		if ((s->stage_num == stage_num) && (s->firmware)) {
 			*fw_handle = s->firmware->handle;
-			return IA_CSS_SUCCESS;
+			return 0;
 		}
 	}
-	return IA_CSS_ERR_INTERNAL_ERROR;
+	return -EINVAL;
 }
 
-enum ia_css_err ia_css_pipeline_get_output_stage(
+int ia_css_pipeline_get_output_stage(
     struct ia_css_pipeline *pipeline,
     int mode,
     struct ia_css_pipeline_stage **stage)
@@ -429,7 +429,7 @@ enum ia_css_err ia_css_pipeline_get_output_stage(
 			*stage = s;
 	}
 	if (*stage)
-		return IA_CSS_SUCCESS;
+		return 0;
 	/* If no firmware, find binary in pipe */
 	return ia_css_pipeline_get_stage(pipeline, mode, stage);
 }
@@ -567,11 +567,11 @@ static void pipeline_unmap_num_to_sp_thread(unsigned int pipe_num)
 	pipeline_sp_thread_list[thread_id] = PIPELINE_SP_THREAD_EMPTY_TOKEN;
 }
 
-static enum ia_css_err pipeline_stage_create(
+static int pipeline_stage_create(
     struct ia_css_pipeline_stage_desc *stage_desc,
     struct ia_css_pipeline_stage **new_stage)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_pipeline_stage *stage = NULL;
 	struct ia_css_binary *binary;
 	struct ia_css_frame *vf_frame;
@@ -582,7 +582,7 @@ static enum ia_css_err pipeline_stage_create(
 	/* Verify input parameters*/
 	if (!(stage_desc->in_frame) && !(stage_desc->firmware)
 	    && (stage_desc->binary) && !(stage_desc->binary->online)) {
-		err = IA_CSS_ERR_INTERNAL_ERROR;
+		err = -EINVAL;
 		goto ERR;
 	}
 
@@ -595,7 +595,7 @@ static enum ia_css_err pipeline_stage_create(
 
 	stage = kvzalloc(sizeof(*stage), GFP_KERNEL);
 	if (!stage) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 
@@ -627,7 +627,7 @@ static enum ia_css_err pipeline_stage_create(
 		    && (binary->out_frame_info[i].res.width)) {
 			err = ia_css_frame_allocate_from_info(&out_frame[i],
 							      &binary->out_frame_info[i]);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 			stage->out_frame_allocated[i] = true;
 		}
@@ -641,7 +641,7 @@ static enum ia_css_err pipeline_stage_create(
 		   ) {
 			err = ia_css_frame_allocate_from_info(&vf_frame,
 							      &binary->vf_frame_info);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 			stage->vf_frame_allocated = true;
 		}
@@ -690,30 +690,30 @@ static void pipeline_init_defaults(
 static void ia_css_pipeline_set_zoom_stage(struct ia_css_pipeline *pipeline)
 {
 	struct ia_css_pipeline_stage *stage = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	assert(pipeline);
 	if (pipeline->pipe_id == IA_CSS_PIPE_ID_PREVIEW) {
 		/* in preview pipeline, vf_pp stage should do zoom */
 		err = ia_css_pipeline_get_stage(pipeline, IA_CSS_BINARY_MODE_VF_PP, &stage);
-		if (err == IA_CSS_SUCCESS)
+		if (!err)
 			stage->enable_zoom = true;
 	} else if (pipeline->pipe_id == IA_CSS_PIPE_ID_CAPTURE) {
 		/* in capture pipeline, capture_pp stage should do zoom */
 		err = ia_css_pipeline_get_stage(pipeline, IA_CSS_BINARY_MODE_CAPTURE_PP,
 						&stage);
-		if (err == IA_CSS_SUCCESS)
+		if (!err)
 			stage->enable_zoom = true;
 	} else if (pipeline->pipe_id == IA_CSS_PIPE_ID_VIDEO) {
 		/* in video pipeline, video stage should do zoom */
 		err = ia_css_pipeline_get_stage(pipeline, IA_CSS_BINARY_MODE_VIDEO, &stage);
-		if (err == IA_CSS_SUCCESS)
+		if (!err)
 			stage->enable_zoom = true;
 	} else if (pipeline->pipe_id == IA_CSS_PIPE_ID_YUVPP) {
 		/* in yuvpp pipeline, first yuv_scaler stage should do zoom */
 		err = ia_css_pipeline_get_stage(pipeline, IA_CSS_BINARY_MODE_CAPTURE_PP,
 						&stage);
-		if (err == IA_CSS_SUCCESS)
+		if (!err)
 			stage->enable_zoom = true;
 	}
 }
diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
index 47a80ae8dbf3..0ecbb42ea38f 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr.h
@@ -28,7 +28,7 @@
 /**
  * @brief Initialize resource manager (host/common)
  */
-enum ia_css_err ia_css_rmgr_init(void);
+int ia_css_rmgr_init(void);
 
 /**
  * @brief Uninitialize resource manager (host/common)
diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr_vbuf.h b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr_vbuf.h
index 377f7c8f64db..be5d42bb3545 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr_vbuf.h
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/interface/ia_css_rmgr_vbuf.h
@@ -52,7 +52,7 @@ extern struct ia_css_rmgr_vbuf_pool *hmm_buffer_pool;
  *
  * @param pool	The pointer to the pool
  */
-STORAGE_CLASS_RMGR_H enum ia_css_err ia_css_rmgr_init_vbuf(
+STORAGE_CLASS_RMGR_H int ia_css_rmgr_init_vbuf(
     struct ia_css_rmgr_vbuf_pool *pool);
 
 /**
diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr.c
index 23ae19ee65ca..479e16d3cbc5 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr.c
@@ -14,16 +14,16 @@
 
 #include "ia_css_rmgr.h"
 
-enum ia_css_err ia_css_rmgr_init(void)
+int ia_css_rmgr_init(void)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	err = ia_css_rmgr_init_vbuf(vbuf_ref);
-	if (err == IA_CSS_SUCCESS)
+	if (!err)
 		err = ia_css_rmgr_init_vbuf(vbuf_write);
-	if (err == IA_CSS_SUCCESS)
+	if (!err)
 		err = ia_css_rmgr_init_vbuf(hmm_buffer_pool);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		ia_css_rmgr_uninit();
 	return err;
 }
diff --git a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
index 53bcfd380742..c95a1687694e 100644
--- a/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
+++ b/drivers/staging/media/atomisp/pci/runtime/rmgr/src/rmgr_vbuf.c
@@ -137,15 +137,15 @@ void ia_css_rmgr_refcount_release_vbuf(struct ia_css_rmgr_vbuf_handle **handle)
  *
  * @param pool	The pointer to the pool
  */
-enum ia_css_err ia_css_rmgr_init_vbuf(struct ia_css_rmgr_vbuf_pool *pool)
+int ia_css_rmgr_init_vbuf(struct ia_css_rmgr_vbuf_pool *pool)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	size_t bytes_needed;
 
 	rmgr_refcount_init_vbuf();
 	assert(pool);
 	if (!pool)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	/* initialize the recycle pool if used */
 	if (pool->recycle && pool->size) {
 		/* allocate memory for storing the handles */
@@ -156,7 +156,7 @@ enum ia_css_err ia_css_rmgr_init_vbuf(struct ia_css_rmgr_vbuf_pool *pool)
 		if (pool->handles)
 			memset(pool->handles, 0, bytes_needed);
 		else
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 	} else {
 		/* just in case, set the size to 0 */
 		pool->size = 0;
diff --git a/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl.h b/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl.h
index 8a7fe6821b1f..3af0cb167fd9 100644
--- a/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl.h
+++ b/drivers/staging/media/atomisp/pci/runtime/spctrl/interface/ia_css_spctrl.h
@@ -38,7 +38,7 @@ ia_css_ptr get_sp_code_addr(sp_ID_t  sp_id);
 
 /* ! Load firmware on to specfied SP
 */
-enum ia_css_err ia_css_spctrl_load_fw(sp_ID_t sp_id,
+int ia_css_spctrl_load_fw(sp_ID_t sp_id,
 				      ia_css_spctrl_cfg *spctrl_cfg);
 
 /* ISP2401 */
@@ -47,15 +47,15 @@ void sh_css_spctrl_reload_fw(sp_ID_t sp_id);
 
 /*!  Unload/release any memory allocated to hold the firmware
 */
-enum ia_css_err ia_css_spctrl_unload_fw(sp_ID_t sp_id);
+int ia_css_spctrl_unload_fw(sp_ID_t sp_id);
 
 /*! Intilaize dmem_cfg in SP dmem  and  start SP program
 */
-enum ia_css_err ia_css_spctrl_start(sp_ID_t sp_id);
+int ia_css_spctrl_start(sp_ID_t sp_id);
 
 /*! stop spctrl
 */
-enum ia_css_err ia_css_spctrl_stop(sp_ID_t sp_id);
+int ia_css_spctrl_stop(sp_ID_t sp_id);
 
 /*! Query the state of SP
 */
diff --git a/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c b/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c
index d361ccdd70e8..3024ade997b7 100644
--- a/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c
+++ b/drivers/staging/media/atomisp/pci/runtime/spctrl/src/spctrl.c
@@ -36,14 +36,14 @@ static struct spctrl_context_info spctrl_cofig_info[N_SP_ID];
 static bool spctrl_loaded[N_SP_ID] = {0};
 
 /* Load firmware */
-enum ia_css_err ia_css_spctrl_load_fw(sp_ID_t sp_id,
+int ia_css_spctrl_load_fw(sp_ID_t sp_id,
 				      ia_css_spctrl_cfg *spctrl_cfg)
 {
 	ia_css_ptr code_addr = mmgr_NULL;
 	struct ia_css_sp_init_dmem_cfg *init_dmem_cfg;
 
 	if ((sp_id >= N_SP_ID) || (!spctrl_cfg))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	spctrl_cofig_info[sp_id].code_addr = mmgr_NULL;
 
@@ -66,7 +66,7 @@ enum ia_css_err ia_css_spctrl_load_fw(sp_ID_t sp_id,
 	 */
 	code_addr = hmm_alloc(spctrl_cfg->code_size, HMM_BO_PRIVATE, 0, NULL, 0);
 	if (code_addr == mmgr_NULL)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 	hmm_store(code_addr, spctrl_cfg->code, spctrl_cfg->code_size);
 
 	if (sizeof(ia_css_ptr) > sizeof(hrt_data)) {
@@ -74,7 +74,7 @@ enum ia_css_err ia_css_spctrl_load_fw(sp_ID_t sp_id,
 				    "size of ia_css_ptr can not be greater than hrt_data\n");
 		hmm_free(code_addr);
 		code_addr = mmgr_NULL;
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	}
 
 	init_dmem_cfg->ddr_data_addr  = code_addr + spctrl_cfg->ddr_data_offset;
@@ -83,7 +83,7 @@ enum ia_css_err ia_css_spctrl_load_fw(sp_ID_t sp_id,
 				    "DDR address pointer is not properly aligned for DMA transfer\n");
 		hmm_free(code_addr);
 		code_addr = mmgr_NULL;
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	}
 
 	spctrl_cofig_info[sp_id].sp_entry = spctrl_cfg->sp_entry;
@@ -97,7 +97,7 @@ enum ia_css_err ia_css_spctrl_load_fw(sp_ID_t sp_id,
 		      (hrt_data)spctrl_cofig_info[sp_id].code_addr);
 	sp_ctrl_setbit(sp_id, SP_ICACHE_INV_REG, SP_ICACHE_INV_BIT);
 	spctrl_loaded[sp_id] = true;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 /* ISP2401 */
@@ -118,10 +118,10 @@ ia_css_ptr get_sp_code_addr(sp_ID_t  sp_id)
 	return spctrl_cofig_info[sp_id].code_addr;
 }
 
-enum ia_css_err ia_css_spctrl_unload_fw(sp_ID_t sp_id)
+int ia_css_spctrl_unload_fw(sp_ID_t sp_id)
 {
 	if ((sp_id >= N_SP_ID) || ((sp_id < N_SP_ID) && (!spctrl_loaded[sp_id])))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	/*  freeup the resource */
 	if (spctrl_cofig_info[sp_id].code_addr) {
@@ -129,14 +129,14 @@ enum ia_css_err ia_css_spctrl_unload_fw(sp_ID_t sp_id)
 		spctrl_cofig_info[sp_id].code_addr = mmgr_NULL;
 	}
 	spctrl_loaded[sp_id] = false;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 /* Initialize dmem_cfg in SP dmem  and  start SP program*/
-enum ia_css_err ia_css_spctrl_start(sp_ID_t sp_id)
+int ia_css_spctrl_start(sp_ID_t sp_id)
 {
 	if ((sp_id >= N_SP_ID) || ((sp_id < N_SP_ID) && (!spctrl_loaded[sp_id])))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	/* Set descr in the SP to initialize the SP DMEM */
 	/*
@@ -155,7 +155,7 @@ enum ia_css_err ia_css_spctrl_start(sp_ID_t sp_id)
 		      (hrt_data)spctrl_cofig_info[sp_id].sp_entry);
 	sp_ctrl_setbit(sp_id, SP_SC_REG, SP_RUN_BIT);
 	sp_ctrl_setbit(sp_id, SP_SC_REG, SP_START_BIT);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 /* Query the state of SP1 */
diff --git a/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c b/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c
index 57dddd74d668..ab46dc10c7a7 100644
--- a/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c
+++ b/drivers/staging/media/atomisp/pci/runtime/timer/src/timer.c
@@ -18,14 +18,14 @@
 #include "gp_timer.h" /*gp_timer_read()*/
 #include "assert_support.h"
 
-enum ia_css_err
+int
 ia_css_timer_get_current_tick(
     struct ia_css_clock_tick *curr_ts) {
 	assert(curr_ts);
 	if (!curr_ts)
 	{
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 	curr_ts->ticks = (clock_value_t)gp_timer_read(GP_TIMER_SEL);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index 7fa8ac0c9714..6f05b68fa747 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -182,10 +182,10 @@ static bool fw_explicitly_loaded;
  * Local prototypes
  */
 
-static enum ia_css_err
+static int
 allocate_delay_frames(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 sh_css_pipe_start(struct ia_css_stream *stream);
 
 /* ISP 2401 */
@@ -196,7 +196,7 @@ sh_css_pipe_start(struct ia_css_stream *stream);
  * @param[in] stream	Point to the target "ia_css_stream" instance.
  *
  * @return
- * - IA_CSS_SUCCESS, if the "stop" requests have been successfully sent out.
+ * - 0, if the "stop" requests have been successfully sent out.
  * - CSS error code, otherwise.
  *
  *
@@ -206,7 +206,7 @@ sh_css_pipe_start(struct ia_css_stream *stream);
  * return without waiting for all "ia_css_pipe" instatnces
  * being stopped.
  */
-static enum ia_css_err
+static int
 sh_css_pipes_stop(struct ia_css_stream *stream);
 
 /*
@@ -225,15 +225,15 @@ static bool
 sh_css_pipes_have_stopped(struct ia_css_stream *stream);
 
 /* ISP 2401 */
-static enum ia_css_err
+static int
 ia_css_pipe_check_format(struct ia_css_pipe *pipe,
 			 enum ia_css_frame_format format);
 
 /* ISP 2401 */
-static enum ia_css_err
+static int
 check_pipe_resolutions(const struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
 			   struct ia_css_fw_info *firmware);
 
@@ -246,7 +246,7 @@ ia_css_reset_defaults(struct sh_css *css);
 static void
 sh_css_init_host_sp_control_vars(void);
 
-static enum ia_css_err set_num_primary_stages(unsigned int *num,
+static int set_num_primary_stages(unsigned int *num,
 	enum ia_css_pipe_version version);
 
 static bool
@@ -255,7 +255,7 @@ need_capture_pp(const struct ia_css_pipe *pipe);
 static bool
 need_yuv_scaler_stage(const struct ia_css_pipe *pipe);
 
-static enum ia_css_err ia_css_pipe_create_cas_scaler_desc_single_output(
+static int ia_css_pipe_create_cas_scaler_desc_single_output(
     struct ia_css_frame_info *cas_scaler_in_info,
     struct ia_css_frame_info *cas_scaler_out_info,
     struct ia_css_frame_info *cas_scaler_vf_info,
@@ -270,91 +270,91 @@ need_downscaling(const struct ia_css_resolution in_res,
 
 static bool need_capt_ldc(const struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 sh_css_pipe_load_binaries(struct ia_css_pipe *pipe);
 
 static
-enum ia_css_err sh_css_pipe_get_viewfinder_frame_info(
+int sh_css_pipe_get_viewfinder_frame_info(
     struct ia_css_pipe *pipe,
     struct ia_css_frame_info *info,
     unsigned int idx);
 
-static enum ia_css_err
+static int
 sh_css_pipe_get_output_frame_info(struct ia_css_pipe *pipe,
 				  struct ia_css_frame_info *info,
 				  unsigned int idx);
 
-static enum ia_css_err
+static int
 capture_start(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 video_start(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 preview_start(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 yuvpp_start(struct ia_css_pipe *pipe);
 
 static bool copy_on_sp(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 init_vf_frameinfo_defaults(struct ia_css_pipe *pipe,
 			   struct ia_css_frame *vf_frame, unsigned int idx);
 
-static enum ia_css_err
+static int
 init_in_frameinfo_memory_defaults(struct ia_css_pipe *pipe,
 				  struct ia_css_frame *frame, enum ia_css_frame_format format);
 
-static enum ia_css_err
+static int
 init_out_frameinfo_defaults(struct ia_css_pipe *pipe,
 			    struct ia_css_frame *out_frame, unsigned int idx);
 
-static enum ia_css_err
+static int
 sh_css_pipeline_add_acc_stage(struct ia_css_pipeline *pipeline,
 			      const void *acc_fw);
 
-static enum ia_css_err
+static int
 alloc_continuous_frames(
     struct ia_css_pipe *pipe, bool init_time);
 
 static void
 pipe_global_init(void);
 
-static enum ia_css_err
+static int
 pipe_generate_pipe_num(const struct ia_css_pipe *pipe,
 		       unsigned int *pipe_number);
 
 static void
 pipe_release_pipe_num(unsigned int pipe_num);
 
-static enum ia_css_err
+static int
 create_host_pipeline_structure(struct ia_css_stream *stream);
 
-static enum ia_css_err
+static int
 create_host_pipeline(struct ia_css_stream *stream);
 
-static enum ia_css_err
+static int
 create_host_preview_pipeline(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 create_host_video_pipeline(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 create_host_copy_pipeline(struct ia_css_pipe *pipe,
 			  unsigned int max_input_width,
 			  struct ia_css_frame *out_frame);
 
-static enum ia_css_err
+static int
 create_host_isyscopy_capture_pipeline(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 create_host_capture_pipeline(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 create_host_yuvpp_pipeline(struct ia_css_pipe *pipe);
 
-static enum ia_css_err
+static int
 create_host_acc_pipeline(struct ia_css_pipe *pipe);
 
 static unsigned int
@@ -393,7 +393,7 @@ ia_css_get_acc_configs(
     struct ia_css_isp_config *config);
 
 #if CONFIG_ON_FRAME_ENQUEUE()
-static enum ia_css_err set_config_on_frame_enqueue(struct ia_css_frame_info
+static int set_config_on_frame_enqueue(struct ia_css_frame_info
 	*info, struct frame_data_wrapper *frame);
 #endif
 
@@ -404,7 +404,7 @@ static unsigned int get_crop_columns_for_bayer_order(const struct
 	ia_css_stream_config *config);
 static void get_pipe_extra_pixel(struct ia_css_pipe *pipe,
 				 unsigned int *extra_row, unsigned int *extra_column);
-static enum ia_css_err
+static int
 aspect_ratio_crop_init(struct ia_css_stream *curr_stream,
 		       struct ia_css_pipe *pipes[],
 		       bool *do_crop_status);
@@ -412,7 +412,7 @@ aspect_ratio_crop_init(struct ia_css_stream *curr_stream,
 static bool
 aspect_ratio_crop_check(bool enabled, struct ia_css_pipe *curr_pipe);
 
-static enum ia_css_err
+static int
 aspect_ratio_crop(struct ia_css_pipe *curr_pipe,
 		  struct ia_css_resolution *effective_res);
 #endif
@@ -459,7 +459,7 @@ static enum ia_css_frame_format yuv422_copy_formats[] = {
 /* Verify whether the selected output format is can be produced
  * by the copy binary given the stream format.
  * */
-static enum ia_css_err
+static int
 verify_copy_out_frame_format(struct ia_css_pipe *pipe) {
 	enum ia_css_frame_format out_fmt = pipe->output_info[0].format;
 	unsigned int i, found = 0;
@@ -515,8 +515,8 @@ verify_copy_out_frame_format(struct ia_css_pipe *pipe) {
 		break;
 	}
 	if (!found)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
-	return IA_CSS_SUCCESS;
+		return -EINVAL;
+	return 0;
 }
 
 unsigned int
@@ -534,12 +534,12 @@ ia_css_stream_input_format_bits_per_pixel(struct ia_css_stream *stream)
 #define GP_ISEL_TPG_MODE 0x90058
 
 #if !defined(HAS_NO_INPUT_SYSTEM) && defined(USE_INPUT_SYSTEM_VERSION_2)
-static enum ia_css_err
+static int
 sh_css_config_input_network(struct ia_css_stream *stream) {
 	unsigned int fmt_type;
 	struct ia_css_pipe *pipe = stream->last_pipe;
 	struct ia_css_binary *binary = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	assert(stream);
 	assert(pipe);
@@ -554,7 +554,7 @@ sh_css_config_input_network(struct ia_css_stream *stream) {
 	    stream->config.input_config.format,
 	    stream->csi_rx_config.comp,
 	    &fmt_type);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	sh_css_sp_program_input_circuit(fmt_type,
 					stream->config.channel_id,
@@ -565,7 +565,7 @@ sh_css_config_input_network(struct ia_css_stream *stream) {
 	{
 		err = ia_css_ifmtr_configure(&stream->config,
 					     binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 
@@ -592,7 +592,7 @@ sh_css_config_input_network(struct ia_css_stream *stream) {
 	}
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 			    "sh_css_config_input_network() leave:\n");
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 #elif !defined(HAS_NO_INPUT_SYSTEM) && defined(USE_INPUT_SYSTEM_VERSION_2401)
 static unsigned int csi2_protocol_calculate_max_subpixels_per_line(
@@ -880,14 +880,14 @@ static bool sh_css_translate_stream_cfg_to_input_system_input_port_attr(
 
 		break;
 	case IA_CSS_INPUT_MODE_BUFFERED_SENSOR: {
-		enum ia_css_err err;
+		int err;
 		unsigned int fmt_type;
 
 		err = ia_css_isys_convert_stream_format_to_mipi_format(
 			  stream_cfg->isys_config[isys_stream_idx].format,
 			  MIPI_PREDICTOR_NONE,
 			  &fmt_type);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			rc = false;
 
 		isys_stream_descr->csi_port_attr.active_lanes =
@@ -900,7 +900,7 @@ static bool sh_css_translate_stream_cfg_to_input_system_input_port_attr(
 		err |= ia_css_isys_convert_compressed_format(
 			   &stream_cfg->source.port.compression,
 			   isys_stream_descr);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			rc = false;
 
 		/* metadata */
@@ -910,7 +910,7 @@ static bool sh_css_translate_stream_cfg_to_input_system_input_port_attr(
 				  stream_cfg->metadata_config.data_type,
 				  MIPI_PREDICTOR_NONE,
 				  &fmt_type);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				rc = false;
 			isys_stream_descr->metadata.fmt_type = fmt_type;
 			isys_stream_descr->metadata.bits_per_pixel =
@@ -1049,7 +1049,7 @@ static bool sh_css_translate_binary_info_to_input_system_output_port_attr(
 	return true;
 }
 
-static enum ia_css_err
+static int
 sh_css_config_input_network(struct ia_css_stream *stream) {
 	bool					rc;
 	ia_css_isys_descr_t			isys_stream_descr;
@@ -1094,7 +1094,7 @@ sh_css_config_input_network(struct ia_css_stream *stream) {
 
 	assert(pipe);
 	if (!pipe)
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 
 	if (pipe->pipeline.stages)
 		if (pipe->pipeline.stages->binary)
@@ -1112,7 +1112,7 @@ sh_css_config_input_network(struct ia_css_stream *stream) {
 	/* get the SP thread id */
 	rc = ia_css_pipeline_get_sp_thread_id(ia_css_pipe_get_pipe_num(pipe), &sp_thread_id);
 	if (!rc)
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	/* get the target input terminal */
 	sp_pipeline_input_terminal = &sh_css_sp_group.pipe_io[sp_thread_id].input;
 
@@ -1139,7 +1139,7 @@ sh_css_config_input_network(struct ia_css_stream *stream) {
 		}
 
 		if (!rc)
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 
 		isys_stream_id = ia_css_isys_generate_stream_id(sp_thread_id, i);
 
@@ -1149,7 +1149,7 @@ sh_css_config_input_network(struct ia_css_stream *stream) {
 			  &sp_pipeline_input_terminal->context.virtual_input_system_stream[i],
 			  isys_stream_id);
 		if (!rc)
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 
 		/* calculate the configuration of the virtual Input System (2401) */
 		rc = ia_css_isys_stream_calculate_cfg(
@@ -1159,14 +1159,14 @@ sh_css_config_input_network(struct ia_css_stream *stream) {
 		if (!rc) {
 			ia_css_isys_stream_destroy(
 			    &sp_pipeline_input_terminal->context.virtual_input_system_stream[i]);
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 		}
 	}
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 			    "sh_css_config_input_network() leave:\n");
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static inline struct ia_css_pipe *stream_get_last_pipe(
@@ -1224,11 +1224,11 @@ static inline struct ia_css_pipe *stream_get_target_pipe(
 	return target_pipe;
 }
 
-static enum ia_css_err stream_csi_rx_helper(
+static int stream_csi_rx_helper(
     struct ia_css_stream *stream,
-    enum ia_css_err (*func)(enum mipi_port_id, uint32_t))
+    int (*func)(enum mipi_port_id, uint32_t))
 {
-	enum ia_css_err retval = IA_CSS_ERR_INTERNAL_ERROR;
+	int retval = -EINVAL;
 	u32 sp_thread_id, stream_id;
 	bool rc;
 	struct ia_css_pipe *target_pipe = NULL;
@@ -1257,20 +1257,20 @@ static enum ia_css_err stream_csi_rx_helper(
 			retval = func(stream->config.source.port.port, isys_stream_id);
 		}
 		stream_id++;
-	} while ((retval == IA_CSS_SUCCESS) &&
+	} while ((retval == 0) &&
 		 (stream_id < IA_CSS_STREAM_MAX_ISYS_STREAM_PER_CH));
 
 exit:
 	return retval;
 }
 
-static inline enum ia_css_err stream_register_with_csi_rx(
+static inline int stream_register_with_csi_rx(
     struct ia_css_stream *stream)
 {
 	return stream_csi_rx_helper(stream, ia_css_isys_csi_rx_register_stream);
 }
 
-static inline enum ia_css_err stream_unregister_with_csi_rx(
+static inline int stream_unregister_with_csi_rx(
     struct ia_css_stream *stream)
 {
 	return stream_csi_rx_helper(stream, ia_css_isys_csi_rx_unregister_stream);
@@ -1403,7 +1403,7 @@ start_binary(struct ia_css_pipe *pipe,
 }
 
 /* start the copy function on the SP */
-static enum ia_css_err
+static int
 start_copy_on_sp(struct ia_css_pipe *pipe,
 		 struct ia_css_frame *out_frame) {
 	(void)out_frame;
@@ -1411,7 +1411,7 @@ start_copy_on_sp(struct ia_css_pipe *pipe,
 	assert(pipe->stream);
 
 	if ((!pipe) || (!pipe->stream))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 #if !defined(HAS_NO_INPUT_SYSTEM) && !defined(USE_INPUT_SYSTEM_VERSION_2401)
 	if (pipe->stream->reconfigure_css_rx)
@@ -1419,7 +1419,7 @@ start_copy_on_sp(struct ia_css_pipe *pipe,
 #endif
 
 	if (pipe->stream->config.input_config.format != ATOMISP_INPUT_FORMAT_BINARY_8)
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	sh_css_sp_start_binary_copy(ia_css_pipe_get_pipe_num(pipe), out_frame, pipe->stream->config.pixels_per_clock == 2);
 
 #if !defined(HAS_NO_INPUT_SYSTEM) && !defined(USE_INPUT_SYSTEM_VERSION_2401)
@@ -1431,7 +1431,7 @@ start_copy_on_sp(struct ia_css_pipe *pipe,
 	}
 #endif
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 void sh_css_binary_args_reset(struct sh_css_binary_args *args)
@@ -1623,15 +1623,15 @@ ia_css_reset_defaults(struct sh_css *css)
 	*css = default_css;
 }
 
-enum ia_css_err
+int
 ia_css_load_firmware(struct device *dev, const struct ia_css_env *env,
 		     const struct ia_css_fw  *fw) {
-	enum ia_css_err err;
+	int err;
 
 	if (!env)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	if (!fw)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_load_firmware() enter\n");
 
@@ -1644,10 +1644,10 @@ ia_css_load_firmware(struct device *dev, const struct ia_css_env *env,
 
 	ia_css_unload_firmware(); /* in case we are called twice */
 	err = sh_css_load_firmware(dev, fw->data, fw->bytes);
-	if (err == IA_CSS_SUCCESS)
+	if (!err)
 	{
 		err = ia_css_binary_init_infos();
-		if (err == IA_CSS_SUCCESS)
+		if (!err)
 			fw_explicitly_loaded = true;
 	}
 
@@ -1655,12 +1655,12 @@ ia_css_load_firmware(struct device *dev, const struct ia_css_env *env,
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_init(struct device *dev, const struct ia_css_env *env,
 	    const struct ia_css_fw  *fw,
 	    u32                 mmu_l1_base,
 	    enum ia_css_irq_type     irq_type) {
-	enum ia_css_err err;
+	int err;
 	ia_css_spctrl_cfg spctrl_cfg;
 
 	void (*flush_func)(struct ia_css_acc_fw *fw);
@@ -1703,9 +1703,9 @@ ia_css_init(struct device *dev, const struct ia_css_env *env,
 	COMPILATION_ERROR_IF(sizeof(struct ia_css_sp_init_dmem_cfg)		!= SIZE_OF_IA_CSS_SP_INIT_DMEM_CFG_STRUCT);
 
 	if (!fw && !fw_explicitly_loaded)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	if (!env)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	sh_css_printf = env->print_env.debug_print;
 
@@ -1733,7 +1733,7 @@ ia_css_init(struct device *dev, const struct ia_css_env *env,
 	my_css.flush     = flush_func;
 
 	err = ia_css_rmgr_init();
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR(err);
 		return err;
@@ -1770,13 +1770,13 @@ ia_css_init(struct device *dev, const struct ia_css_env *env,
 	gpio_reg_store(GPIO0_ID, _gpio_block_reg_do_0, 0);
 
 	err = ia_css_refcount_init(REFCOUNT_SIZE);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR(err);
 		return err;
 	}
 	err = sh_css_params_init();
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR(err);
 		return err;
@@ -1785,12 +1785,12 @@ ia_css_init(struct device *dev, const struct ia_css_env *env,
 	{
 		ia_css_unload_firmware(); /* in case we already had firmware loaded */
 		err = sh_css_load_firmware(dev, fw->data, fw->bytes);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR(err);
 			return err;
 		}
 		err = ia_css_binary_init_infos();
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR(err);
 			return err;
 		}
@@ -1800,10 +1800,10 @@ ia_css_init(struct device *dev, const struct ia_css_env *env,
 #endif
 	}
 	if (!sh_css_setup_spctrl_config(&sh_css_sp_fw, SP_PROG_NAME, &spctrl_cfg))
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 
 	err = ia_css_spctrl_load_fw(SP0_ID, &spctrl_cfg);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR(err);
 		return err;
@@ -1820,8 +1820,8 @@ ia_css_init(struct device *dev, const struct ia_css_env *env,
 #endif
 	if (!sh_css_hrt_system_is_idle())
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_SYSTEM_NOT_IDLE);
-		return IA_CSS_ERR_SYSTEM_NOT_IDLE;
+		IA_CSS_LEAVE_ERR(-EBUSY);
+		return -EBUSY;
 	}
 	/* can be called here, queuing works, but:
 	   - when sp is started later, it will wipe queued items
@@ -1843,7 +1843,7 @@ ia_css_init(struct device *dev, const struct ia_css_env *env,
 			       ISP_DMA_MAX_BURST_LENGTH);
 
 	if (ia_css_isys_init() != INPUT_SYSTEM_ERR_NO_ERROR)
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 #endif
 
 	sh_css_params_map_and_store_default_gdc_lut();
@@ -1852,12 +1852,12 @@ ia_css_init(struct device *dev, const struct ia_css_env *env,
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_enable_isys_event_queue(bool enable) {
 	if (sh_css_sp_is_running())
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	sh_css_sp_enable_isys_event_queue(enable);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 void sh_css_free(void *ptr)
@@ -1881,13 +1881,13 @@ sh_css_flush(struct ia_css_acc_fw *fw)
  * pipelines are ready to be converted to sp pipelines. Be careful if you are
  * doing it from stream_create since we could run out of sp threads due to
  * allocation on inactive pipelines. */
-static enum ia_css_err
+static int
 map_sp_threads(struct ia_css_stream *stream, bool map) {
 	struct ia_css_pipe *main_pipe = NULL;
 	struct ia_css_pipe *copy_pipe = NULL;
 	struct ia_css_pipe *capture_pipe = NULL;
 	struct ia_css_pipe *acc_pipe = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	enum ia_css_pipe_id pipe_id;
 
 	assert(stream);
@@ -1896,8 +1896,8 @@ map_sp_threads(struct ia_css_stream *stream, bool map) {
 
 	if (!stream)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	main_pipe = stream->last_pipe;
@@ -1954,13 +1954,13 @@ map_sp_threads(struct ia_css_stream *stream, bool map) {
 
 /* creates a host pipeline skeleton for all pipes in a stream. Called during
  * stream_create. */
-static enum ia_css_err
+static int
 create_host_pipeline_structure(struct ia_css_stream *stream) {
 	struct ia_css_pipe *copy_pipe = NULL, *capture_pipe = NULL;
 	struct ia_css_pipe *acc_pipe = NULL;
 	enum ia_css_pipe_id pipe_id;
 	struct ia_css_pipe *main_pipe = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	unsigned int copy_pipe_delay = 0,
 	capture_pipe_delay = 0;
 
@@ -1969,16 +1969,16 @@ create_host_pipeline_structure(struct ia_css_stream *stream) {
 
 	if (!stream)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	main_pipe	= stream->last_pipe;
 	assert(main_pipe);
 	if (!main_pipe)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	pipe_id	= main_pipe->mode;
@@ -2020,10 +2020,10 @@ create_host_pipeline_structure(struct ia_css_stream *stream) {
 		break;
 
 	default:
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	}
 
-	if ((err == IA_CSS_SUCCESS) && copy_pipe)
+	if (!(err) && copy_pipe)
 	{
 		err = ia_css_pipeline_create(&copy_pipe->pipeline,
 					     copy_pipe->mode,
@@ -2031,7 +2031,7 @@ create_host_pipeline_structure(struct ia_css_stream *stream) {
 					     copy_pipe_delay);
 	}
 
-	if ((err == IA_CSS_SUCCESS) && capture_pipe)
+	if (!(err) && capture_pipe)
 	{
 		err = ia_css_pipeline_create(&capture_pipe->pipeline,
 					     capture_pipe->mode,
@@ -2039,7 +2039,7 @@ create_host_pipeline_structure(struct ia_css_stream *stream) {
 					     capture_pipe_delay);
 	}
 
-	if ((err == IA_CSS_SUCCESS) && acc_pipe)
+	if (!(err) && acc_pipe)
 	{
 		err = ia_css_pipeline_create(&acc_pipe->pipeline, acc_pipe->mode,
 					     acc_pipe->pipe_num, main_pipe->dvs_frame_delay);
@@ -2050,7 +2050,7 @@ create_host_pipeline_structure(struct ia_css_stream *stream) {
 	{
 		int i;
 
-		for (i = 1; i < stream->num_pipes && IA_CSS_SUCCESS == err; i++) {
+		for (i = 1; i < stream->num_pipes && 0 == err; i++) {
 			main_pipe = stream->pipes[i];
 			err = ia_css_pipeline_create(&main_pipe->pipeline,
 						     main_pipe->mode,
@@ -2065,20 +2065,20 @@ create_host_pipeline_structure(struct ia_css_stream *stream) {
 
 /* creates a host pipeline for all pipes in a stream. Called during
  * stream_start. */
-static enum ia_css_err
+static int
 create_host_pipeline(struct ia_css_stream *stream) {
 	struct ia_css_pipe *copy_pipe = NULL, *capture_pipe = NULL;
 	struct ia_css_pipe *acc_pipe = NULL;
 	enum ia_css_pipe_id pipe_id;
 	struct ia_css_pipe *main_pipe = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	unsigned int max_input_width = 0;
 
 	IA_CSS_ENTER_PRIVATE("stream = %p", stream);
 	if (!stream)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	main_pipe	= stream->last_pipe;
@@ -2099,7 +2099,7 @@ create_host_pipeline(struct ia_css_stream *stream) {
 		    (pipe_id == IA_CSS_PIPE_ID_PREVIEW &&
 		     stream->config.mode != IA_CSS_INPUT_MODE_MEMORY)) {
 			err = alloc_continuous_frames(main_pipe, true);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 		}
 	}
@@ -2109,7 +2109,7 @@ create_host_pipeline(struct ia_css_stream *stream) {
 	if (pipe_id != IA_CSS_PIPE_ID_ACC)
 	{
 		err = allocate_mipi_frames(main_pipe, &stream->info);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 #elif defined(USE_INPUT_SYSTEM_VERSION_2401)
@@ -2117,7 +2117,7 @@ create_host_pipeline(struct ia_css_stream *stream) {
 	    (main_pipe->config.mode != IA_CSS_PIPE_MODE_COPY))
 	{
 		err = allocate_mipi_frames(main_pipe, &stream->info);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 #endif
@@ -2132,7 +2132,7 @@ create_host_pipeline(struct ia_css_stream *stream) {
 		    main_pipe->pipe_settings.preview.preview_binary.info->sp.input.max_width;
 
 		err = create_host_preview_pipeline(main_pipe);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 
 		break;
@@ -2144,7 +2144,7 @@ create_host_pipeline(struct ia_css_stream *stream) {
 		    main_pipe->pipe_settings.video.video_binary.info->sp.input.max_width;
 
 		err = create_host_video_pipeline(main_pipe);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 
 		break;
@@ -2156,42 +2156,42 @@ create_host_pipeline(struct ia_css_stream *stream) {
 
 	case IA_CSS_PIPE_ID_YUVPP:
 		err = create_host_yuvpp_pipeline(main_pipe);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 
 		break;
 
 	case IA_CSS_PIPE_ID_ACC:
 		err = create_host_acc_pipeline(main_pipe);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 
 		break;
 	default:
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	}
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 
 	if (copy_pipe)
 	{
 		err = create_host_copy_pipeline(copy_pipe, max_input_width,
 						main_pipe->continuous_frames[0]);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 
 	if (capture_pipe)
 	{
 		err = create_host_capture_pipeline(capture_pipe);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 
 	if (acc_pipe)
 	{
 		err = create_host_acc_pipeline(acc_pipe);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 
@@ -2200,7 +2200,7 @@ create_host_pipeline(struct ia_css_stream *stream) {
 	{
 		int i;
 
-		for (i = 1; i < stream->num_pipes && IA_CSS_SUCCESS == err; i++) {
+		for (i = 1; i < stream->num_pipes && 0 == err; i++) {
 			switch (stream->pipes[i]->mode) {
 			case IA_CSS_PIPE_ID_PREVIEW:
 				err = create_host_preview_pipeline(stream->pipes[i]);
@@ -2218,9 +2218,9 @@ create_host_pipeline(struct ia_css_stream *stream) {
 				err = create_host_acc_pipeline(stream->pipes[i]);
 				break;
 			default:
-				err = IA_CSS_ERR_INVALID_ARGUMENTS;
+				err = -EINVAL;
 			}
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 		}
 	}
@@ -2230,14 +2230,14 @@ create_host_pipeline(struct ia_css_stream *stream) {
 	return err;
 }
 
-static enum ia_css_err
+static int
 init_pipe_defaults(enum ia_css_pipe_mode mode,
 		   struct ia_css_pipe *pipe,
 		   bool copy_pipe) {
 	if (!pipe)
 	{
 		IA_CSS_ERROR("NULL pipe parameter");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	/* Initialize pipe to pre-defined defaults */
@@ -2273,10 +2273,10 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
 		pipe->pipe_settings.yuvpp = IA_CSS_DEFAULT_YUVPP_SETTINGS;
 		break;
 	default:
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void
@@ -2290,7 +2290,7 @@ pipe_global_init(void)
 	}
 }
 
-static enum ia_css_err
+static int
 pipe_generate_pipe_num(const struct ia_css_pipe *pipe,
 		       unsigned int *pipe_number) {
 	const u8 INVALID_PIPE_NUM = (uint8_t)~(0);
@@ -2300,7 +2300,7 @@ pipe_generate_pipe_num(const struct ia_css_pipe *pipe,
 	if (!pipe)
 	{
 		IA_CSS_ERROR("NULL pipe parameter");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	/* Assign a new pipe_num .... search for empty place */
@@ -2317,7 +2317,7 @@ pipe_generate_pipe_num(const struct ia_css_pipe *pipe,
 	{
 		/* Max number of pipes already allocated */
 		IA_CSS_ERROR("Max number of pipes already created");
-		return IA_CSS_ERR_RESOURCE_EXHAUSTED;
+		return -ENOSPC;
 	}
 
 	my_css.pipe_counter++;
@@ -2325,7 +2325,7 @@ pipe_generate_pipe_num(const struct ia_css_pipe *pipe,
 	IA_CSS_LOG("pipe_num (%d)", pipe_num);
 
 	*pipe_number = pipe_num;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void
@@ -2337,39 +2337,39 @@ pipe_release_pipe_num(unsigned int pipe_num)
 			    "pipe_release_pipe_num (%d)\n", pipe_num);
 }
 
-static enum ia_css_err
+static int
 create_pipe(enum ia_css_pipe_mode mode,
 	    struct ia_css_pipe **pipe,
 	    bool copy_pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_pipe *me;
 
 	if (!pipe)
 	{
 		IA_CSS_ERROR("NULL pipe parameter");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	me = kmalloc(sizeof(*me), GFP_KERNEL);
 	if (!me)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 
 	err = init_pipe_defaults(mode, me, copy_pipe);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		kfree(me);
 		return err;
 	}
 
 	err = pipe_generate_pipe_num(me, &me->pipe_num);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		kfree(me);
 		return err;
 	}
 
 	*pipe = me;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 struct ia_css_pipe *
@@ -2408,23 +2408,23 @@ static void sh_css_pipe_free_acc_binaries(
 	}
 }
 
-enum ia_css_err
+int
 ia_css_pipe_destroy(struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER("pipe = %p", pipe);
 
 	if (!pipe)
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	if (pipe->stream)
 	{
 		IA_CSS_LOG("ia_css_stream_destroy not called!");
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	switch (pipe->config.mode)
@@ -2544,7 +2544,7 @@ ia_css_uninit(void)
 }
 
 #if defined(HAS_IRQ_MAP_VERSION_2)
-enum ia_css_err ia_css_irq_translate(
+int ia_css_irq_translate(
     unsigned int *irq_infos)
 {
 	virq_id_t	irq;
@@ -2559,7 +2559,7 @@ enum ia_css_err ia_css_irq_translate(
 	while (status == hrt_isp_css_irq_status_more_irqs) {
 		status = virq_get_channel_id(&irq);
 		if (status == hrt_isp_css_irq_status_error)
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 
 #if WITH_PC_MONITORING
 		sh_css_print("PC_MONITORING: %s() irq = %d, sh_binary_running set to 0\n",
@@ -2613,10 +2613,10 @@ enum ia_css_err ia_css_irq_translate(
 			    "ia_css_irq_translate() leave: irq_infos=%u\n",
 			    infos);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err ia_css_irq_enable(
+int ia_css_irq_enable(
     enum ia_css_irq_info info,
     bool enable)
 {
@@ -2644,7 +2644,7 @@ enum ia_css_err ia_css_irq_enable(
 	case IA_CSS_IRQ_INFO_INPUT_SYSTEM_ERROR:
 	case IA_CSS_IRQ_INFO_IF_ERROR:
 		/* Just ignore those unused IRQs without printing errors */
-		return IA_CSS_SUCCESS;
+		return 0;
 #endif
 	case IA_CSS_IRQ_INFO_DMA_ERROR:
 		irq = virq_dma;
@@ -2656,14 +2656,14 @@ enum ia_css_err ia_css_irq_enable(
 		irq = virq_sw_pin_1;
 		break;
 	default:
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	cnd_virq_enable_channel(irq, enable);
 
-	IA_CSS_LEAVE_ERR(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR(0);
+	return 0;
 }
 
 #else
@@ -2685,14 +2685,14 @@ sh_css_get_sw_interrupt_value(unsigned int irq)
 
 /* configure and load the copy binary, the next binary is used to
    determine whether the copy binary needs to do left padding. */
-static enum ia_css_err load_copy_binary(
+static int load_copy_binary(
     struct ia_css_pipe *pipe,
     struct ia_css_binary *copy_binary,
     struct ia_css_binary *next_binary)
 {
 	struct ia_css_frame_info copy_out_info, copy_in_info, copy_vf_info;
 	unsigned int left_padding;
-	enum ia_css_err err;
+	int err;
 	struct ia_css_binary_descr copy_descr;
 
 	/* next_binary can be NULL */
@@ -2715,16 +2715,16 @@ static enum ia_css_err load_copy_binary(
 					&copy_in_info, &copy_out_info,
 					(next_binary) ? NULL : NULL/*TODO: &copy_vf_info*/);
 	err = ia_css_binary_find(&copy_descr, copy_binary);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	copy_binary->left_padding = left_padding;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 alloc_continuous_frames(
     struct ia_css_pipe *pipe, bool init_time) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_frame_info ref_info;
 	enum ia_css_pipe_id pipe_id;
 	bool continuous;
@@ -2736,8 +2736,8 @@ alloc_continuous_frames(
 
 	if ((!pipe) || (!pipe->stream))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	pipe_id = pipe->mode;
@@ -2764,8 +2764,8 @@ alloc_continuous_frames(
 	} else
 	{
 		/* should not happen */
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 #if defined(USE_INPUT_SYSTEM_VERSION_2401)
@@ -2804,8 +2804,8 @@ alloc_continuous_frames(
 	} else
 	{
 		/* should not happen */
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	if (init_time)
@@ -2830,7 +2830,7 @@ alloc_continuous_frames(
 			err = ia_css_frame_allocate_from_info(
 				  &pipe->continuous_frames[i],
 				  &ref_info);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -2839,18 +2839,18 @@ alloc_continuous_frames(
 						       &pipe->stream->info.metadata_info);
 		}
 	}
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
-enum ia_css_err
+int
 ia_css_alloc_continuous_frame_remain(struct ia_css_stream *stream) {
 	if (!stream)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	return alloc_continuous_frames(stream->continuous_pipe, false);
 }
 
-static enum ia_css_err
+static int
 load_preview_binaries(struct ia_css_pipe *pipe) {
 	struct ia_css_frame_info prev_in_info,
 		prev_bds_out_info,
@@ -2858,7 +2858,7 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
 		prev_vf_info;
 	struct ia_css_binary_descr preview_descr;
 	bool online;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	bool continuous, need_vf_pp = false;
 	bool need_isp_copy_binary = false;
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
@@ -2880,13 +2880,13 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
 #endif
 
 	if (mycs->preview_binary.info)
-		return IA_CSS_SUCCESS;
+		return 0;
 
 	err = ia_css_util_check_input(&pipe->stream->config, false, false);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	err = ia_css_frame_check_info(pipe_out_info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 	/* Note: the current selection of vf_pp binary and
@@ -2930,10 +2930,10 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
 	    &prev_bds_out_info,
 	    &prev_out_info,
 	    &prev_vf_info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	err = ia_css_binary_find(&preview_descr, &mycs->preview_binary);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 	if (atomisp_hw_is_isp2401) {
@@ -2974,11 +2974,11 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
 		    &prev_bds_out_info,
 		    &prev_out_info,
 		    &prev_vf_info);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 		err = ia_css_binary_find(&preview_descr,
 					 &mycs->preview_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 
@@ -2992,7 +2992,7 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
 						pipe_out_info);
 		err = ia_css_binary_find(&vf_pp_descr,
 					 &mycs->vf_pp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 
@@ -3019,7 +3019,7 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
 		err = load_copy_binary(pipe,
 				       &mycs->copy_binary,
 				       &mycs->preview_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 
@@ -3029,7 +3029,7 @@ load_preview_binaries(struct ia_css_pipe *pipe) {
 		pipe->shading_table = NULL;
 	}
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void
@@ -3038,21 +3038,21 @@ ia_css_binary_unload(struct ia_css_binary *binary)
 	ia_css_binary_destroy_isp_parameters(binary);
 }
 
-static enum ia_css_err
+static int
 unload_preview_binaries(struct ia_css_pipe *pipe) {
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 
 	if ((!pipe) || (pipe->mode != IA_CSS_PIPE_ID_PREVIEW))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 	ia_css_binary_unload(&pipe->pipe_settings.preview.copy_binary);
 	ia_css_binary_unload(&pipe->pipe_settings.preview.preview_binary);
 	ia_css_binary_unload(&pipe->pipe_settings.preview.vf_pp_binary);
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
 static const struct ia_css_fw_info *last_output_firmware(
@@ -3071,7 +3071,7 @@ static const struct ia_css_fw_info *last_output_firmware(
 	return last_fw;
 }
 
-static enum ia_css_err add_firmwares(
+static int add_firmwares(
     struct ia_css_pipeline *me,
     struct ia_css_binary *binary,
     const struct ia_css_fw_info *fw,
@@ -3083,7 +3083,7 @@ static enum ia_css_err add_firmwares(
     struct ia_css_pipeline_stage **my_stage,
     struct ia_css_pipeline_stage **vf_stage)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_pipeline_stage *extra_stage = NULL;
 	struct ia_css_pipeline_stage_desc stage_desc;
 
@@ -3110,7 +3110,7 @@ static enum ia_css_err add_firmwares(
 		err = ia_css_pipeline_create_and_add_stage(me,
 			&stage_desc,
 			&extra_stage);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 		if (fw->info.isp.sp.enable.output != 0)
 			in_frame = extra_stage->args.out_frame[0];
@@ -3123,7 +3123,7 @@ static enum ia_css_err add_firmwares(
 	return err;
 }
 
-static enum ia_css_err add_vf_pp_stage(
+static int add_vf_pp_stage(
     struct ia_css_pipe *pipe,
     struct ia_css_frame *in_frame,
     struct ia_css_frame *out_frame,
@@ -3132,20 +3132,20 @@ static enum ia_css_err add_vf_pp_stage(
 {
 	struct ia_css_pipeline *me = NULL;
 	const struct ia_css_fw_info *last_fw = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_frame *out_frames[IA_CSS_BINARY_MAX_OUTPUT_PORTS];
 	struct ia_css_pipeline_stage_desc stage_desc;
 
 	/* out_frame can be NULL ??? */
 
 	if (!pipe)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	if (!in_frame)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	if (!vf_pp_binary)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	if (!vf_pp_stage)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	ia_css_pipe_util_create_output_frames(out_frames);
 	me = &pipe->pipeline;
@@ -3167,7 +3167,7 @@ static enum ia_css_err add_vf_pp_stage(
 							   out_frames, in_frame, NULL);
 		}
 		err = ia_css_pipeline_create_and_add_stage(me, &stage_desc, vf_pp_stage);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 		in_frame = (*vf_pp_stage)->args.out_frame[0];
 	}
@@ -3178,7 +3178,7 @@ static enum ia_css_err add_vf_pp_stage(
 	return err;
 }
 
-static enum ia_css_err add_yuv_scaler_stage(
+static int add_yuv_scaler_stage(
     struct ia_css_pipe *pipe,
     struct ia_css_pipeline *me,
     struct ia_css_frame *in_frame,
@@ -3188,7 +3188,7 @@ static enum ia_css_err add_yuv_scaler_stage(
     struct ia_css_pipeline_stage **pre_vf_pp_stage)
 {
 	const struct ia_css_fw_info *last_fw;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_frame *vf_frame = NULL;
 	struct ia_css_frame *out_frames[IA_CSS_BINARY_MAX_OUTPUT_PORTS];
 	struct ia_css_pipeline_stage_desc stage_desc;
@@ -3220,7 +3220,7 @@ static enum ia_css_err add_yuv_scaler_stage(
 	err = ia_css_pipeline_create_and_add_stage(me,
 		&stage_desc,
 		pre_vf_pp_stage);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	in_frame = (*pre_vf_pp_stage)->args.out_frame[0];
 
@@ -3237,7 +3237,7 @@ static enum ia_css_err add_yuv_scaler_stage(
 	return err;
 }
 
-static enum ia_css_err add_capture_pp_stage(
+static int add_capture_pp_stage(
     struct ia_css_pipe *pipe,
     struct ia_css_pipeline *me,
     struct ia_css_frame *in_frame,
@@ -3246,7 +3246,7 @@ static enum ia_css_err add_capture_pp_stage(
     struct ia_css_pipeline_stage **capture_pp_stage)
 {
 	const struct ia_css_fw_info *last_fw = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_frame *vf_frame = NULL;
 	struct ia_css_frame *out_frames[IA_CSS_BINARY_MAX_OUTPUT_PORTS];
 	struct ia_css_pipeline_stage_desc stage_desc;
@@ -3266,7 +3266,7 @@ static enum ia_css_err add_capture_pp_stage(
 	last_fw = last_output_firmware(pipe->output_stage);
 	err = ia_css_frame_allocate_from_info(&vf_frame,
 					      &capture_pp_binary->vf_frame_info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	if (last_fw)	{
 		ia_css_pipe_util_set_output_frames(out_frames, 0, NULL);
@@ -3280,7 +3280,7 @@ static enum ia_css_err add_capture_pp_stage(
 	err = ia_css_pipeline_create_and_add_stage(me,
 		&stage_desc,
 		capture_pp_stage);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	err = add_firmwares(me, capture_pp_binary, pipe->output_stage, last_fw,
 			    IA_CSS_BINARY_MODE_CAPTURE_PP,
@@ -3316,10 +3316,10 @@ static void sh_css_setup_queues(void)
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "sh_css_setup_queues() leave:\n");
 }
 
-static enum ia_css_err
+static int
 init_vf_frameinfo_defaults(struct ia_css_pipe *pipe,
 			   struct ia_css_frame *vf_frame, unsigned int idx) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	unsigned int thread_id;
 	enum sh_css_queue_id queue_id;
 
@@ -3481,11 +3481,11 @@ ia_css_get_crop_offsets(
 }
 #endif
 
-static enum ia_css_err
+static int
 init_in_frameinfo_memory_defaults(struct ia_css_pipe *pipe,
 				  struct ia_css_frame *frame, enum ia_css_frame_format format) {
 	struct ia_css_frame *in_frame;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	unsigned int thread_id;
 	enum sh_css_queue_id queue_id;
 
@@ -3522,10 +3522,10 @@ init_in_frameinfo_memory_defaults(struct ia_css_pipe *pipe,
 	return err;
 }
 
-static enum ia_css_err
+static int
 init_out_frameinfo_defaults(struct ia_css_pipe *pipe,
 			    struct ia_css_frame *out_frame, unsigned int idx) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	unsigned int thread_id;
 	enum sh_css_queue_id queue_id;
 
@@ -3544,7 +3544,7 @@ init_out_frameinfo_defaults(struct ia_css_pipe *pipe,
 }
 
 /* Create stages for video pipe */
-static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
+static int create_host_video_pipeline(struct ia_css_pipe *pipe)
 {
 	struct ia_css_pipeline_stage_desc stage_desc;
 	struct ia_css_binary *copy_binary, *video_binary,
@@ -3558,7 +3558,7 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 	struct ia_css_frame *out_frame;
 	struct ia_css_frame *out_frames[IA_CSS_BINARY_MAX_OUTPUT_PORTS];
 	struct ia_css_frame *vf_frame = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	bool need_copy   = false;
 	bool need_vf_pp  = false;
 	bool need_yuv_pp = false;
@@ -3570,8 +3570,8 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 	if ((!pipe) || (!pipe->stream) || (pipe->mode != IA_CSS_PIPE_ID_VIDEO)) {
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 	ia_css_pipe_util_create_output_frames(out_frames);
 	out_frame = &pipe->out_frame_struct;
@@ -3599,20 +3599,20 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 		in_frame = &pipe->in_frame_struct;
 		err = init_in_frameinfo_memory_defaults(pipe, in_frame,
 							IA_CSS_FRAME_FORMAT_RAW);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 
 	out_frame->data = 0;
 	err = init_out_frameinfo_defaults(pipe, out_frame, 0);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 
 	if (pipe->enable_viewfinder[IA_CSS_PIPE_OUTPUT_STAGE_0]) {
 		vf_frame = &pipe->vf_frame_struct;
 		vf_frame->data = 0;
 		err = init_vf_frameinfo_defaults(pipe, vf_frame, 0);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 
@@ -3636,7 +3636,7 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 		err = ia_css_pipeline_create_and_add_stage(me,
 			&stage_desc,
 			&copy_stage);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 		in_frame = me->stages->args.out_frame[0];
 	} else if (pipe->stream->config.continuous) {
@@ -3665,7 +3665,7 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 	err = ia_css_pipeline_create_and_add_stage(me,
 		&stage_desc,
 		&video_stage);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 
 	/* If we use copy iso video, the input must be yuv iso raw */
@@ -3681,7 +3681,7 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 		in_frame = video_stage->args.out_vf_frame;
 		err = add_vf_pp_stage(pipe, in_frame, vf_frame, vf_pp_binary,
 				      &vf_pp_stage);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 	if (video_stage) {
@@ -3709,7 +3709,7 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 			/* In/Out Frame mapping to support output frame extension.*/
 			out = video_stage->args.out_frame[0];
 			err = ia_css_frame_allocate_from_info(&in, &pipe->output_info[0]);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 			video_stage->args.out_frame[0] = in;
 		}
@@ -3718,7 +3718,7 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 				    last_output_firmware(pipe->output_stage),
 				    IA_CSS_BINARY_MODE_VIDEO,
 				    in, out, NULL, &video_stage, NULL);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 
@@ -3737,7 +3737,7 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 						   &yuv_scaler_binary[i],
 						   &yuv_scaler_stage);
 
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -3756,17 +3756,17 @@ static enum ia_css_err create_host_video_pipeline(struct ia_css_pipe *pipe)
 	return err;
 }
 
-static enum ia_css_err
+static int
 create_host_acc_pipeline(struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	const struct ia_css_fw_info *fw;
 	unsigned int i;
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 	if ((!pipe) || (!pipe->stream))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	pipe->pipeline.num_execs = pipe->config.acc_num_execs;
@@ -3778,7 +3778,7 @@ create_host_acc_pipeline(struct ia_css_pipe *pipe) {
 	for (i = 0; fw; fw = fw->next)
 	{
 		err = sh_css_pipeline_add_acc_stage(&pipe->pipeline, fw);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 
@@ -3787,7 +3787,7 @@ create_host_acc_pipeline(struct ia_css_pipe *pipe) {
 		struct ia_css_fw_info *fw = pipe->config.acc_stages[i];
 
 		err = sh_css_pipeline_add_acc_stage(&pipe->pipeline, fw);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 
@@ -3799,7 +3799,7 @@ create_host_acc_pipeline(struct ia_css_pipe *pipe) {
 }
 
 /* Create stages for preview */
-static enum ia_css_err
+static int
 create_host_preview_pipeline(struct ia_css_pipe *pipe) {
 	struct ia_css_pipeline_stage *copy_stage = NULL;
 	struct ia_css_pipeline_stage *preview_stage = NULL;
@@ -3808,7 +3808,7 @@ create_host_preview_pipeline(struct ia_css_pipe *pipe) {
 	struct ia_css_pipeline *me = NULL;
 	struct ia_css_binary *copy_binary, *preview_binary, *vf_pp_binary = NULL;
 	struct ia_css_frame *in_frame = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_frame *out_frame;
 	struct ia_css_frame *out_frames[IA_CSS_BINARY_MAX_OUTPUT_PORTS];
 	bool need_in_frameinfo_memory = false;
@@ -3822,8 +3822,8 @@ create_host_preview_pipeline(struct ia_css_pipe *pipe) {
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 	if ((!pipe) || (!pipe->stream) || (pipe->mode != IA_CSS_PIPE_ID_PREVIEW))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	ia_css_pipe_util_create_output_frames(out_frames);
@@ -3853,7 +3853,7 @@ create_host_preview_pipeline(struct ia_css_pipe *pipe) {
 	{
 		err = init_in_frameinfo_memory_defaults(pipe, &me->in_frame,
 							IA_CSS_FRAME_FORMAT_RAW);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 
 		in_frame = &me->in_frame;
@@ -3863,7 +3863,7 @@ create_host_preview_pipeline(struct ia_css_pipe *pipe) {
 	}
 
 	err = init_out_frameinfo_defaults(pipe, &me->out_frame[0], 0);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 	out_frame = &me->out_frame[0];
 
@@ -3880,7 +3880,7 @@ create_host_preview_pipeline(struct ia_css_pipe *pipe) {
 		err = ia_css_pipeline_create_and_add_stage(me,
 			&stage_desc,
 			&copy_stage);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 		in_frame = me->stages->args.out_frame[0];
 #ifndef ISP2401
@@ -3916,7 +3916,7 @@ create_host_preview_pipeline(struct ia_css_pipe *pipe) {
 	err = ia_css_pipeline_create_and_add_stage(me,
 		&stage_desc,
 		&preview_stage);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 	/* If we use copy iso preview, the input must be yuv iso raw */
 	preview_stage->args.copy_vf =
@@ -3936,7 +3936,7 @@ create_host_preview_pipeline(struct ia_css_pipe *pipe) {
 			in_frame = preview_stage->args.out_frame[0];
 		err = add_vf_pp_stage(pipe, in_frame, out_frame, vf_pp_binary,
 				      &vf_pp_stage);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	}
 
@@ -3968,11 +3968,11 @@ static void send_raw_frames(struct ia_css_pipe *pipe)
 	return;
 }
 
-static enum ia_css_err
+static int
 preview_start(struct ia_css_pipe *pipe) {
 	struct ia_css_pipeline *me;
 	struct ia_css_binary *copy_binary, *preview_binary, *vf_pp_binary = NULL;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_pipe *copy_pipe, *capture_pipe;
 	struct ia_css_pipe *acc_pipe;
 	enum sh_css_pipe_config_override copy_ovrd;
@@ -3983,8 +3983,8 @@ preview_start(struct ia_css_pipe *pipe) {
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 	if ((!pipe) || (!pipe->stream) || (pipe->mode != IA_CSS_PIPE_ID_PREVIEW))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	me = &pipe->pipeline;
@@ -4005,8 +4005,8 @@ preview_start(struct ia_css_pipe *pipe) {
 #if defined(USE_INPUT_SYSTEM_VERSION_2) || defined(USE_INPUT_SYSTEM_VERSION_2401)
 	/* multi stream video needs mipi buffers */
 	err = send_mipi_frames(pipe);
-	if (err != IA_CSS_SUCCESS) {
-	    	IA_CSS_LEAVE_ERR_PRIVATE(err);
+	if (err) {
+		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
 #endif
@@ -4104,10 +4104,10 @@ preview_start(struct ia_css_pipe *pipe) {
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 			   const struct ia_css_buffer *buffer) {
-	enum ia_css_err return_err = IA_CSS_SUCCESS;
+	int return_err = 0;
 	unsigned int thread_id;
 	enum sh_css_queue_id queue_id;
 	struct ia_css_pipeline *pipeline;
@@ -4123,8 +4123,8 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 
 	if ((!pipe) || (!buffer))
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	buf_type = buffer->type;
@@ -4144,7 +4144,7 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 			}
 		}
 		if (!found_pipe)
-			return IA_CSS_ERR_INVALID_ARGUMENTS;
+			return -EINVAL;
 	}
 	if (buf_type == IA_CSS_BUFFER_TYPE_VF_OUTPUT_FRAME)
 	{
@@ -4159,7 +4159,7 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 			}
 		}
 		if (!found_pipe)
-			return IA_CSS_ERR_INVALID_ARGUMENTS;
+			return -EINVAL;
 	}
 #endif
 	pipe_id = pipe->mode;
@@ -4172,36 +4172,36 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 	    (buf_type >= IA_CSS_NUM_DYNAMIC_BUFFER_TYPE) ||
 	    (pipe_id >= IA_CSS_PIPE_ID_NUM))
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INTERNAL_ERROR);
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	ret_err = ia_css_pipeline_get_sp_thread_id(ia_css_pipe_get_pipe_num(pipe), &thread_id);
 	if (!ret_err)
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	ret_err = ia_css_query_internal_queue_id(buf_type, thread_id, &queue_id);
 	if (!ret_err)
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	if ((queue_id <= SH_CSS_INVALID_QUEUE_ID) || (queue_id >= SH_CSS_MAX_NUM_QUEUES))
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	if (!sh_css_sp_is_running())
 	{
 		IA_CSS_LOG("SP is not running!");
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_RESOURCE_NOT_AVAILABLE);
+		IA_CSS_LEAVE_ERR(-EBUSY);
 		/* SP is not running. The queues are not valid */
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 
 	pipeline = &pipe->pipeline;
@@ -4218,24 +4218,24 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 	if (buf_type == IA_CSS_BUFFER_TYPE_3A_STATISTICS)
 	{
 		if (!buffer->data.stats_3a) {
-			IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-			return IA_CSS_ERR_INVALID_ARGUMENTS;
+			IA_CSS_LEAVE_ERR(-EINVAL);
+			return -EINVAL;
 		}
 		ddr_buffer.kernel_ptr = HOST_ADDRESS(buffer->data.stats_3a);
 		ddr_buffer.payload.s3a = *buffer->data.stats_3a;
 	} else if (buf_type == IA_CSS_BUFFER_TYPE_DIS_STATISTICS)
 	{
 		if (!buffer->data.stats_dvs) {
-			IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-			return IA_CSS_ERR_INVALID_ARGUMENTS;
+			IA_CSS_LEAVE_ERR(-EINVAL);
+			return -EINVAL;
 		}
 		ddr_buffer.kernel_ptr = HOST_ADDRESS(buffer->data.stats_dvs);
 		ddr_buffer.payload.dis = *buffer->data.stats_dvs;
 	} else if (buf_type == IA_CSS_BUFFER_TYPE_METADATA)
 	{
 		if (!buffer->data.metadata) {
-			IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-			return IA_CSS_ERR_INVALID_ARGUMENTS;
+			IA_CSS_LEAVE_ERR(-EINVAL);
+			return -EINVAL;
 		}
 		ddr_buffer.kernel_ptr = HOST_ADDRESS(buffer->data.metadata);
 		ddr_buffer.payload.metadata = *buffer->data.metadata;
@@ -4246,8 +4246,8 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 		   || (buf_type == IA_CSS_BUFFER_TYPE_SEC_VF_OUTPUT_FRAME))
 	{
 		if (!buffer->data.frame) {
-			IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-			return IA_CSS_ERR_INVALID_ARGUMENTS;
+			IA_CSS_LEAVE_ERR(-EINVAL);
+			return -EINVAL;
 		}
 		ddr_buffer.kernel_ptr = HOST_ADDRESS(buffer->data.frame);
 		ddr_buffer.payload.frame.frame_data = buffer->data.frame->data;
@@ -4261,7 +4261,7 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 		return_err = set_config_on_frame_enqueue(
 				 &buffer->data.frame->info,
 				 &ddr_buffer.payload.frame);
-		if (return_err != IA_CSS_SUCCESS) {
+		if (return_err) {
 			IA_CSS_LEAVE_ERR(return_err);
 			return return_err;
 		}
@@ -4281,8 +4281,8 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 
 	if ((!h_vbuf) || (h_vbuf->vptr == 0x0))
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INTERNAL_ERROR);
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	hmm_store(h_vbuf->vptr,
@@ -4295,8 +4295,8 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 		if (!pipeline) {
 			ia_css_rmgr_rel_vbuf(hmm_buffer_pool, &h_vbuf);
 			IA_CSS_LOG("pipeline is empty!");
-			IA_CSS_LEAVE_ERR(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			IA_CSS_LEAVE_ERR(-EINVAL);
+			return -EINVAL;
 		}
 
 		for (stage = pipeline->stages; stage; stage = stage->next) {
@@ -4320,7 +4320,7 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 							queue_id,
 							(uint32_t)h_vbuf->vptr);
 #if defined(SH_CSS_ENABLE_PER_FRAME_PARAMS)
-		if ((return_err == IA_CSS_SUCCESS) &&
+		if (!(return_err) &&
 		    (buf_type == IA_CSS_BUFFER_TYPE_OUTPUT_FRAME)) {
 			IA_CSS_LOG("pfp: enqueued OF %d to q %d thread %d",
 				   ddr_buffer.payload.frame.frame_data,
@@ -4329,14 +4329,14 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 #endif
 	}
 
-	if (return_err == IA_CSS_SUCCESS)
+	if (!return_err)
 	{
 		if (sh_css_hmm_buffer_record_acquire(
 			h_vbuf, buf_type,
 			HOST_ADDRESS(ddr_buffer.kernel_ptr))) {
 			IA_CSS_LOG("send vbuf=%p", h_vbuf);
 		} else {
-			return_err = IA_CSS_ERR_INTERNAL_ERROR;
+			return_err = -EINVAL;
 			IA_CSS_ERROR("hmm_buffer_record[]: no available slots\n");
 		}
 	}
@@ -4345,13 +4345,13 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 	 * Tell the SP which queues are not empty,
 	 * by sending the software event.
 	 */
-	if (return_err == IA_CSS_SUCCESS)
+	if (!return_err)
 	{
 		if (!sh_css_sp_is_running()) {
 			/* SP is not running. The queues are not valid */
 			IA_CSS_LOG("SP is not running!");
-			IA_CSS_LEAVE_ERR(IA_CSS_ERR_RESOURCE_NOT_AVAILABLE);
-			return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+			IA_CSS_LEAVE_ERR(-EBUSY);
+			return -EBUSY;
 		}
 		return_err = ia_css_bufq_enqueue_psys_event(
 				 IA_CSS_PSYS_SW_EVENT_BUFFER_ENQUEUED,
@@ -4372,10 +4372,10 @@ ia_css_pipe_enqueue_buffer(struct ia_css_pipe *pipe,
 /*
  * TODO: Free up the hmm memory space.
 	 */
-enum ia_css_err
+int
 ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 			   struct ia_css_buffer *buffer) {
-	enum ia_css_err return_err;
+	int return_err;
 	enum sh_css_queue_id queue_id;
 	ia_css_ptr ddr_buffer_addr = (ia_css_ptr)0;
 	struct sh_css_hmm_buffer ddr_buffer;
@@ -4389,8 +4389,8 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 
 	if ((!pipe) || (!buffer))
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	pipe_id = pipe->mode;
@@ -4404,35 +4404,35 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 	ret_err = ia_css_pipeline_get_sp_thread_id(ia_css_pipe_get_pipe_num(pipe), &thread_id);
 	if (!ret_err)
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	ret_err = ia_css_query_internal_queue_id(buf_type, thread_id, &queue_id);
 	if (!ret_err)
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	if ((queue_id <= SH_CSS_INVALID_QUEUE_ID) || (queue_id >= SH_CSS_MAX_NUM_QUEUES))
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	if (!sh_css_sp_is_running())
 	{
 		IA_CSS_LOG("SP is not running!");
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_RESOURCE_NOT_AVAILABLE);
+		IA_CSS_LEAVE_ERR(-EBUSY);
 		/* SP is not running. The queues are not valid */
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 
 	return_err = ia_css_bufq_dequeue_buffer(queue_id,
 						(uint32_t *)&ddr_buffer_addr);
 
-	if (return_err == IA_CSS_SUCCESS)
+	if (!return_err)
 	{
 		struct ia_css_frame *frame;
 		struct sh_css_hmm_buffer_record *hmm_buffer_record = NULL;
@@ -4453,8 +4453,8 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 		} else {
 			IA_CSS_ERROR("hmm_buffer_record not found (0x%x) buf_type(%d)",
 				     ddr_buffer_addr, buf_type);
-			IA_CSS_LEAVE_ERR(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			IA_CSS_LEAVE_ERR(-EINVAL);
+			return -EINVAL;
 		}
 
 		hmm_load(ddr_buffer_addr,
@@ -4470,8 +4470,8 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 			IA_CSS_ERROR("expected: (0x%llx)", (u64)kernel_ptr);
 			IA_CSS_ERROR("actual: (0x%llx)", (u64)HOST_ADDRESS(ddr_buffer.kernel_ptr));
 			IA_CSS_ERROR("buf_type: %d\n", buf_type);
-			IA_CSS_LEAVE_ERR(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			IA_CSS_LEAVE_ERR(-EINVAL);
+			return -EINVAL;
 		}
 
 		if (ddr_buffer.kernel_ptr != 0) {
@@ -4496,7 +4496,7 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 					 * for 2401 it is done in ia_css_stream_destroy call
 					 */
 					return_err = free_mipi_frames(pipe);
-					if (return_err != IA_CSS_SUCCESS) {
+					if (return_err) {
 						IA_CSS_LOG("free_mipi_frames() failed");
 						IA_CSS_LEAVE_ERR(return_err);
 						return return_err;
@@ -4564,7 +4564,7 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 				buffer->data.metadata->exp_id = ddr_buffer.payload.metadata.exp_id;
 				break;
 			default:
-				return_err = IA_CSS_ERR_INTERNAL_ERROR;
+				return_err = -EINVAL;
 				break;
 			}
 		}
@@ -4574,13 +4574,13 @@ ia_css_pipe_dequeue_buffer(struct ia_css_pipe *pipe,
 	 * Tell the SP which queues are not full,
 	 * by sending the software event.
 	 */
-	if (return_err == IA_CSS_SUCCESS)
+	if (!return_err)
 	{
 		if (!sh_css_sp_is_running()) {
 			IA_CSS_LOG("SP is not running!");
-			IA_CSS_LEAVE_ERR(IA_CSS_ERR_RESOURCE_NOT_AVAILABLE);
+			IA_CSS_LEAVE_ERR(-EBUSY);
 			/* SP is not running. The queues are not valid */
-			return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+			return -EBUSY;
 		}
 		ia_css_bufq_enqueue_psys_event(
 		    IA_CSS_PSYS_SW_EVENT_BUFFER_DEQUEUED,
@@ -4623,16 +4623,16 @@ static enum ia_css_event_type convert_event_sp_to_host_domain[] = {
 	0,					/* error if sp passes  SH_CSS_SP_EVENT_NR_OF_TYPES as a valid event. */
 };
 
-enum ia_css_err
+int
 ia_css_dequeue_event(struct ia_css_event *event) {
 	return ia_css_dequeue_psys_event(event);
 }
 
-enum ia_css_err
+int
 ia_css_dequeue_psys_event(struct ia_css_event *event) {
 	enum ia_css_pipe_id pipe_id = 0;
 	u8 payload[4] = {0, 0, 0, 0};
-	enum ia_css_err ret_err;
+	int ret_err;
 
 	/*TODO:
 	 * a) use generic decoding function , same as the one used by sp.
@@ -4642,17 +4642,17 @@ ia_css_dequeue_psys_event(struct ia_css_event *event) {
 	 * to avoid flooding the logs when the host application
 	 * uses polling. */
 	if (!event)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	if (!sh_css_sp_is_running())
 	{
 		/* SP is not running. The queues are not valid */
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 
 	/* dequeue the event (if any) from the psys event queue */
 	ret_err = ia_css_bufq_dequeue_psys_event(payload);
-	if (ret_err != IA_CSS_SUCCESS)
+	if (ret_err)
 		return ret_err;
 
 	IA_CSS_LOG("event dequeued from psys event queue");
@@ -4684,7 +4684,7 @@ ia_css_dequeue_psys_event(struct ia_css_event *event) {
 		event->timer_code = payload[2];
 		payload[0] = payload[1] = payload[2] = payload[3] = 0;
 		ret_err = ia_css_bufq_dequeue_psys_event(payload);
-		if (ret_err != IA_CSS_SUCCESS) {
+		if (ret_err) {
 			/* no 2nd event ??? an error */
 			/* Putting IA_CSS_ERROR is resulting in failures in
 			 * Merrifield smoke testing  */
@@ -4738,7 +4738,7 @@ ia_css_dequeue_psys_event(struct ia_css_event *event) {
 		pipe_id = (enum ia_css_pipe_id)payload[2];
 		/* Check to see if pipe still exists */
 		if (!event->pipe)
-			return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+			return -EBUSY;
 
 		if (event->type == IA_CSS_EVENT_TYPE_FRAME_TAGGED) {
 			/* find the capture pipe that goes with this */
@@ -4763,7 +4763,7 @@ ia_css_dequeue_psys_event(struct ia_css_event *event) {
 				      &event->pipe->pipeline,
 				      stage_num,
 				      &event->fw_handle);
-			if (ret_err != IA_CSS_SUCCESS) {
+			if (ret_err) {
 				IA_CSS_ERROR("Invalid stage num received for ACC event. stage_num:%u",
 					     stage_num);
 				return ret_err;
@@ -4776,28 +4776,28 @@ ia_css_dequeue_psys_event(struct ia_css_event *event) {
 	else
 		IA_CSS_LEAVE("event_id=%d", event->type);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err
+int
 ia_css_dequeue_isys_event(struct ia_css_event *event) {
 	u8 payload[4] = {0, 0, 0, 0};
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	/* We skip the IA_CSS_ENTER logging call
 	 * to avoid flooding the logs when the host application
 	 * uses polling. */
 	if (!event)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	if (!sh_css_sp_is_running())
 	{
 		/* SP is not running. The queues are not valid */
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 
 	err = ia_css_bufq_dequeue_isys_event(payload);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 	IA_CSS_LOG("event dequeued from isys event queue");
@@ -4826,9 +4826,9 @@ acc_start(struct ia_css_pipe *pipe)
 		   pipe->stream->config.mode);
 }
 
-static enum ia_css_err
+static int
 sh_css_pipe_start(struct ia_css_stream *stream) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	struct ia_css_pipe *pipe;
 	enum ia_css_pipe_id pipe_id;
@@ -4838,14 +4838,14 @@ sh_css_pipe_start(struct ia_css_stream *stream) {
 
 	if (!stream)
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 	pipe = stream->last_pipe;
 	if (!pipe)
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	pipe_id = pipe->mode;
@@ -4877,14 +4877,14 @@ sh_css_pipe_start(struct ia_css_stream *stream) {
 		acc_start(pipe);
 		break;
 	default:
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	}
 	/* DH regular multi pipe - not continuous mode: start the next pipes too */
 	if (!stream->config.continuous)
 	{
 		int i;
 
-		for (i = 1; i < stream->num_pipes && IA_CSS_SUCCESS == err ; i++) {
+		for (i = 1; i < stream->num_pipes && 0 == err ; i++) {
 			switch (stream->pipes[i]->mode) {
 			case IA_CSS_PIPE_ID_PREVIEW:
 				stream->pipes[i]->stop_requested = false;
@@ -4907,11 +4907,11 @@ sh_css_pipe_start(struct ia_css_stream *stream) {
 				acc_start(stream->pipes[i]);
 				break;
 			default:
-				err = IA_CSS_ERR_INVALID_ARGUMENTS;
+				err = -EINVAL;
 			}
 		}
 	}
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
@@ -4927,7 +4927,7 @@ sh_css_pipe_start(struct ia_css_stream *stream) {
 		sh_css_invalidate_params(stream);
 		err = sh_css_param_update_isp_params(pipe,
 						     stream->isp_params_configs, true, NULL);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -4939,9 +4939,9 @@ sh_css_pipe_start(struct ia_css_stream *stream) {
 
 	if (!sh_css_sp_is_running())
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_RESOURCE_NOT_AVAILABLE);
+		IA_CSS_LEAVE_ERR_PRIVATE(-EBUSY);
 		/* SP is not running. The queues are not valid */
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 	ia_css_bufq_enqueue_psys_event(IA_CSS_PSYS_SW_EVENT_START_STREAM,
 				       (uint8_t)thread_id, 0, 0);
@@ -4972,8 +4972,8 @@ sh_css_pipe_start(struct ia_css_stream *stream) {
 			copy_pipe = pipe->pipe_settings.video.copy_pipe;
 
 		if (!copy_pipe) {
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+			return -EINVAL;
 		}
 		ia_css_pipeline_get_sp_thread_id(ia_css_pipe_get_pipe_num(copy_pipe),
 						 &thread_id);
@@ -4992,8 +4992,8 @@ sh_css_pipe_start(struct ia_css_stream *stream) {
 			capture_pipe = pipe->pipe_settings.video.capture_pipe;
 
 		if (!capture_pipe) {
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+			return -EINVAL;
 		}
 		ia_css_pipeline_get_sp_thread_id(ia_css_pipe_get_pipe_num(capture_pipe),
 						 &thread_id);
@@ -5054,39 +5054,39 @@ sh_css_continuous_is_enabled(uint8_t pipe_num)
 }
 
 /* ISP2400 */
-enum ia_css_err
+int
 ia_css_stream_get_max_buffer_depth(struct ia_css_stream *stream,
 				   int *buffer_depth) {
 	if (!buffer_depth)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_stream_get_max_buffer_depth() enter: void\n");
 	(void)stream;
 	*buffer_depth = NUM_CONTINUOUS_FRAMES;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err
+int
 ia_css_stream_set_buffer_depth(struct ia_css_stream *stream, int buffer_depth) {
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_stream_set_buffer_depth() enter: num_frames=%d\n", buffer_depth);
 	(void)stream;
 	if (buffer_depth > NUM_CONTINUOUS_FRAMES || buffer_depth < 1)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	/* ok, value allowed */
 	stream->config.target_num_cont_raw_buf = buffer_depth;
 	/* TODO: check what to regarding initialization */
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 /* ISP2401 */
-enum ia_css_err
+int
 ia_css_stream_get_buffer_depth(struct ia_css_stream *stream,
 			       int *buffer_depth) {
 	if (!buffer_depth)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_stream_get_buffer_depth() enter: void\n");
 	(void)stream;
 	*buffer_depth = stream->config.target_num_cont_raw_buf;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 /*
@@ -5096,10 +5096,10 @@ ia_css_stream_get_buffer_depth(struct ia_css_stream *stream,
  * Refer to "Local prototypes" for more info.
  */
 /* ISP2401 */
-static enum ia_css_err
+static int
 sh_css_pipes_stop(struct ia_css_stream *stream)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_pipe *main_pipe;
 	enum ia_css_pipe_id main_pipe_id;
 	int i;
@@ -5108,7 +5108,7 @@ sh_css_pipes_stop(struct ia_css_stream *stream)
 	if (!stream)
 	{
 		IA_CSS_LOG("stream does NOT exist!");
-		err = IA_CSS_ERR_INTERNAL_ERROR;
+		err = -EINVAL;
 		goto ERR;
 	}
 
@@ -5117,7 +5117,7 @@ sh_css_pipes_stop(struct ia_css_stream *stream)
 	if (!main_pipe)
 	{
 		IA_CSS_LOG("main_pipe does NOT exist!");
-		err = IA_CSS_ERR_INTERNAL_ERROR;
+		err = -EINVAL;
 		goto ERR;
 	}
 
@@ -5150,7 +5150,7 @@ sh_css_pipes_stop(struct ia_css_stream *stream)
 	 * the CSS driver should capture these error code and
 	 * handle it in the driver exception handling mechanism.
 	 */
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		goto ERR;
 	}
 	}
@@ -5178,7 +5178,7 @@ sh_css_pipes_stop(struct ia_css_stream *stream)
 		assert(copy_pipe);
 		if (!copy_pipe) {
 			IA_CSS_LOG("Copy Pipe does NOT exist!");
-			err = IA_CSS_ERR_INTERNAL_ERROR;
+			err = -EINVAL;
 			goto ERR;
 		}
 
@@ -5292,7 +5292,7 @@ sh_css_get_mipi_sizes_for_check(const unsigned int port, const unsigned int idx)
 }
 #endif
 
-static enum ia_css_err sh_css_pipe_configure_output(
+static int sh_css_pipe_configure_output(
     struct ia_css_pipe *pipe,
     unsigned int width,
     unsigned int height,
@@ -5300,17 +5300,17 @@ static enum ia_css_err sh_css_pipe_configure_output(
     enum ia_css_frame_format format,
     unsigned int idx)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p, width = %d, height = %d, padded width = %d, format = %d, idx = %d",
 			     pipe, width, height, padded_width, format, idx);
 	if (!pipe) {
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	err = ia_css_util_check_res(width, height);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
@@ -5324,16 +5324,16 @@ static enum ia_css_err sh_css_pipe_configure_output(
 		    format,
 		    padded_width);
 	}
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
-static enum ia_css_err
+static int
 sh_css_pipe_get_shading_info(struct ia_css_pipe *pipe,
 			     struct ia_css_shading_info *shading_info,
 			     struct ia_css_pipe_config *pipe_config)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_binary *binary = NULL;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
@@ -5357,17 +5357,17 @@ sh_css_pipe_get_shading_info(struct ia_css_pipe *pipe,
 		/* When the pipe does not have a binary which has the shading
 		 * correction, this function does not need to fill the shading
 		 * information. It is not a error case, and then
-		 * this function should return IA_CSS_SUCCESS.
+		 * this function should return 0.
 		 */
 		memset(shading_info, 0, sizeof(*shading_info));
 	}
 	return err;
 }
 
-static enum ia_css_err
+static int
 sh_css_pipe_get_grid_info(struct ia_css_pipe *pipe,
 			  struct ia_css_grid_info *info) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_binary *binary = NULL;
 
 	assert(pipe);
@@ -5380,7 +5380,7 @@ sh_css_pipe_get_grid_info(struct ia_css_pipe *pipe,
 	if (binary)
 	{
 		err = ia_css_binary_3a_grid_info(binary, info, pipe);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 	} else
 		memset(&info->s3a_grid, 0, sizeof(info->s3a_grid));
@@ -5424,7 +5424,7 @@ ERR :
  * @brief Check if a format is supported by the pipe.
  *
  */
-static enum ia_css_err
+static int
 ia_css_pipe_check_format(struct ia_css_pipe *pipe,
 			 enum ia_css_frame_format format) {
 	const enum ia_css_frame_format *supported_formats;
@@ -5437,8 +5437,8 @@ ia_css_pipe_check_format(struct ia_css_pipe *pipe,
 	if (NULL == pipe || NULL == pipe->pipe_settings.video.video_binary.info)
 	{
 		IA_CSS_ERROR("Pipe or binary info is not set");
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	supported_formats = pipe->pipe_settings.video.video_binary.info->output_formats;
@@ -5454,21 +5454,21 @@ ia_css_pipe_check_format(struct ia_css_pipe *pipe,
 	if (!found)
 	{
 		IA_CSS_ERROR("Requested format is not supported by binary");
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	} else
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-		return IA_CSS_SUCCESS;
+		IA_CSS_LEAVE_ERR_PRIVATE(0);
+		return 0;
 	}
 }
 
-static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
+static int load_video_binaries(struct ia_css_pipe *pipe)
 {
 	struct ia_css_frame_info video_in_info, tnr_info,
 		       *video_vf_info, video_bds_out_info, *pipe_out_info, *pipe_vf_out_info;
 	bool online;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	bool continuous = pipe->stream->config.continuous;
 	unsigned int i;
 	unsigned int num_output_pins;
@@ -5487,7 +5487,7 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 	 * All are always reset at the same time anyway.
 	 */
 	if (mycs->video_binary.info)
-		return IA_CSS_SUCCESS;
+		return 0;
 
 	online = pipe->stream->config.online;
 	pipe_out_info = &pipe->output_info[0];
@@ -5501,19 +5501,19 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 	 * This is checked in the binary_find(), so no need to check it here
 	 */
 	err = ia_css_util_check_input(&pipe->stream->config, false, false);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	/* cannot have online video and input_mode memory */
 	if (online && pipe->stream->config.mode == IA_CSS_INPUT_MODE_MEMORY)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	if (pipe->enable_viewfinder[IA_CSS_PIPE_OUTPUT_STAGE_0]) {
 		err = ia_css_util_check_vf_out_info(pipe_out_info,
 						    pipe_vf_out_info);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	} else {
 		err = ia_css_frame_check_info(pipe_out_info);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 
@@ -5548,19 +5548,19 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 			  pipe_out_info,
 			  NULL,
 			  &cas_scaler_descr);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 		mycs->num_yuv_scaler = cas_scaler_descr.num_stage;
 		mycs->yuv_scaler_binary = kzalloc(cas_scaler_descr.num_stage *
 						  sizeof(struct ia_css_binary), GFP_KERNEL);
 		if (!mycs->yuv_scaler_binary) {
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 			return err;
 		}
 		mycs->is_output_stage = kzalloc(cas_scaler_descr.num_stage
 						* sizeof(bool), GFP_KERNEL);
 		if (!mycs->is_output_stage) {
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 			return err;
 		}
 		for (i = 0; i < cas_scaler_descr.num_stage; i++) {
@@ -5574,7 +5574,7 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 							     &cas_scaler_descr.vf_info[i]);
 			err = ia_css_binary_find(&yuv_scaler_descr,
 						 &mycs->yuv_scaler_binary[i]);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				kfree(mycs->is_output_stage);
 				mycs->is_output_stage = NULL;
 				return err;
@@ -5591,7 +5591,7 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 						       &video_descr, &video_in_info, &video_bds_out_info, &video_bin_out_info,
 						       video_vf_info,
 						       pipe->stream->config.left_padding);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 
 		/* In the case where video_vf_info is not NULL, this allows
@@ -5602,7 +5602,7 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 		err = ia_css_binary_find(&video_descr,
 					 &mycs->video_binary);
 
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			if (video_vf_info) {
 				/* This will do another video binary lookup later for YUV_LINE format*/
 				need_vf_pp = true;
@@ -5644,7 +5644,7 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 			/* restore original vf_info format */
 			ia_css_frame_info_set_format(video_vf_info,
 						     vf_info_format);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				return err;
 		}
 	}
@@ -5679,7 +5679,7 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 		err = load_copy_binary(pipe,
 				       &mycs->copy_binary,
 				       &mycs->video_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 #else
@@ -5706,14 +5706,14 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 
 		err = ia_css_binary_find(&vf_pp_descr,
 					 &mycs->vf_pp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 #endif
 
 	err = allocate_delay_frames(pipe);
 
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 	if (mycs->video_binary.info->sp.enable.block_output) {
@@ -5761,14 +5761,14 @@ static enum ia_css_err load_video_binaries(struct ia_css_pipe *pipe)
 		err = ia_css_frame_allocate_from_info(
 			  &mycs->tnr_frames[i],
 			  &tnr_info);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 	IA_CSS_LEAVE_PRIVATE("");
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 unload_video_binaries(struct ia_css_pipe *pipe) {
 	unsigned int i;
 
@@ -5776,8 +5776,8 @@ unload_video_binaries(struct ia_css_pipe *pipe) {
 
 	if ((!pipe) || (pipe->mode != IA_CSS_PIPE_ID_VIDEO))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 	ia_css_binary_unload(&pipe->pipe_settings.video.copy_binary);
 	ia_css_binary_unload(&pipe->pipe_settings.video.video_binary);
@@ -5791,14 +5791,14 @@ unload_video_binaries(struct ia_css_pipe *pipe) {
 	kfree(pipe->pipe_settings.video.yuv_scaler_binary);
 	pipe->pipe_settings.video.yuv_scaler_binary = NULL;
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
-static enum ia_css_err video_start(struct ia_css_pipe *pipe)
+static int video_start(struct ia_css_pipe *pipe)
 {
 	struct ia_css_binary *copy_binary;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_pipe *copy_pipe, *capture_pipe;
 	enum sh_css_pipe_config_override copy_ovrd;
 	enum ia_css_input_mode video_pipe_input_mode;
@@ -5808,8 +5808,8 @@ static enum ia_css_err video_start(struct ia_css_pipe *pipe)
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 	if ((!pipe) || (pipe->mode != IA_CSS_PIPE_ID_VIDEO)) {
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	video_pipe_input_mode = pipe->stream->config.mode;
@@ -5825,7 +5825,7 @@ static enum ia_css_err video_start(struct ia_css_pipe *pipe)
 
 #if defined(USE_INPUT_SYSTEM_VERSION_2) || defined(USE_INPUT_SYSTEM_VERSION_2401)
 	err = send_mipi_frames(pipe);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 #endif
 
@@ -5899,7 +5899,7 @@ static enum ia_css_err video_start(struct ia_css_pipe *pipe)
 }
 
 static
-enum ia_css_err sh_css_pipe_get_viewfinder_frame_info(
+int sh_css_pipe_get_viewfinder_frame_info(
     struct ia_css_pipe *pipe,
     struct ia_css_frame_info *info,
     unsigned int idx)
@@ -5914,7 +5914,7 @@ enum ia_css_err sh_css_pipe_get_viewfinder_frame_info(
 	if (pipe->mode == IA_CSS_PIPE_ID_CAPTURE &&
 	    (pipe->config.default_capture_config.mode == IA_CSS_CAPTURE_MODE_RAW ||
 	     pipe->config.default_capture_config.mode == IA_CSS_CAPTURE_MODE_BAYER))
-		return IA_CSS_ERR_MODE_HAS_NO_VIEWFINDER;
+		return -EINVAL;
 	/* offline video does not generate viewfinder output */
 	*info = pipe->vf_output_info[idx];
 
@@ -5927,27 +5927,27 @@ enum ia_css_err sh_css_pipe_get_viewfinder_frame_info(
 			    info->padded_width, info->format,
 			    info->raw_bit_depth, info->raw_bayer_order);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 sh_css_pipe_configure_viewfinder(struct ia_css_pipe *pipe, unsigned int width,
 				 unsigned int height, unsigned int min_width,
 				 enum ia_css_frame_format format,
 				 unsigned int idx) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p, width = %d, height = %d, min_width = %d, format = %d, idx = %d\n",
 			     pipe, width, height, min_width, format, idx);
 
 	if (!pipe)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	err = ia_css_util_check_res(width, height);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
@@ -5959,13 +5959,13 @@ sh_css_pipe_configure_viewfinder(struct ia_css_pipe *pipe, unsigned int width,
 		ia_css_frame_info_init(&pipe->vf_output_info[idx], width, height,
 				       format, min_width);
 	}
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
-static enum ia_css_err load_copy_binaries(struct ia_css_pipe *pipe)
+static int load_copy_binaries(struct ia_css_pipe *pipe)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	assert(pipe);
 	IA_CSS_ENTER_PRIVATE("");
@@ -5973,14 +5973,14 @@ static enum ia_css_err load_copy_binaries(struct ia_css_pipe *pipe)
 	assert(pipe->mode == IA_CSS_PIPE_ID_CAPTURE ||
 	       pipe->mode == IA_CSS_PIPE_ID_COPY);
 	if (pipe->pipe_settings.capture.copy_binary.info)
-		return IA_CSS_SUCCESS;
+		return 0;
 
 	err = ia_css_frame_check_info(&pipe->output_info[0]);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 
 	err = verify_copy_out_frame_format(pipe);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 
 	err = load_copy_binary(pipe,
@@ -6038,13 +6038,13 @@ static bool need_capt_ldc(
 	return (pipe->extra_config.enable_dvs_6axis) ? true : false;
 }
 
-static enum ia_css_err set_num_primary_stages(unsigned int *num,
+static int set_num_primary_stages(unsigned int *num,
 	enum ia_css_pipe_version version)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	if (!num)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	switch (version) {
 	case IA_CSS_PIPE_VERSION_2_6_1:
@@ -6055,14 +6055,14 @@ static enum ia_css_err set_num_primary_stages(unsigned int *num,
 		*num = NUM_PRIMARY_STAGES;
 		break;
 	default:
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		break;
 	}
 
 	return err;
 }
 
-static enum ia_css_err load_primary_binaries(
+static int load_primary_binaries(
     struct ia_css_pipe *pipe)
 {
 	bool online = false;
@@ -6080,7 +6080,7 @@ static enum ia_css_err load_primary_binaries(
 		       *vf_pp_in_info, *pipe_out_info,
 		       *pipe_vf_out_info, *capt_pp_in_info,
 		       capt_ldc_out_info;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_capture_settings *mycs;
 	unsigned int i;
 	bool need_extra_yuv_scaler = false;
@@ -6104,24 +6104,24 @@ static enum ia_css_err load_primary_binaries(
 	pipe_vf_out_info = &pipe->vf_output_info[0];
 
 	if (mycs->primary_binary[0].info)
-		return IA_CSS_SUCCESS;
+		return 0;
 
 	err = set_num_primary_stages(&mycs->num_primary_stage,
 				     pipe->config.isp_pipe_version);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
 
 	if (pipe->enable_viewfinder[IA_CSS_PIPE_OUTPUT_STAGE_0]) {
 		err = ia_css_util_check_vf_out_info(pipe_out_info, pipe_vf_out_info);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
 	} else {
 		err = ia_css_frame_check_info(pipe_out_info);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -6166,7 +6166,7 @@ static enum ia_css_err load_primary_binaries(
 			  pipe_out_info,
 			  NULL,
 			  &cas_scaler_descr);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -6174,14 +6174,14 @@ static enum ia_css_err load_primary_binaries(
 		mycs->yuv_scaler_binary = kzalloc(cas_scaler_descr.num_stage *
 						  sizeof(struct ia_css_binary), GFP_KERNEL);
 		if (!mycs->yuv_scaler_binary) {
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
 		mycs->is_output_stage = kzalloc(cas_scaler_descr.num_stage *
 						sizeof(bool), GFP_KERNEL);
 		if (!mycs->is_output_stage) {
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -6196,7 +6196,7 @@ static enum ia_css_err load_primary_binaries(
 							     &cas_scaler_descr.vf_info[i]);
 			err = ia_css_binary_find(&yuv_scaler_descr,
 						 &mycs->yuv_scaler_binary[i]);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -6219,7 +6219,7 @@ static enum ia_css_err load_primary_binaries(
 
 		err = ia_css_binary_find(&capt_ldc_descr,
 					 &mycs->capture_ldc_binary);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -6242,7 +6242,7 @@ static enum ia_css_err load_primary_binaries(
 							&capt_pp_out_info, &vf_info);
 		err = ia_css_binary_find(&capture_pp_descr,
 					    &mycs->capture_pp_binary);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -6256,7 +6256,7 @@ static enum ia_css_err load_primary_binaries(
 
 			err = ia_css_binary_find(&capt_ldc_descr,
 						    &mycs->capture_ldc_binary);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -6275,7 +6275,7 @@ static enum ia_css_err load_primary_binaries(
 		ia_css_pipe_get_primary_binarydesc(pipe, &prim_descr[i], &prim_in_info,
 						    &prim_out_info, local_vf_info, i);
 		err = ia_css_binary_find(&prim_descr[i], &mycs->primary_binary[i]);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -6303,14 +6303,14 @@ static enum ia_css_err load_primary_binaries(
 		ia_css_pipe_get_vfpp_binarydesc(pipe,
 						&vf_pp_descr, vf_pp_in_info, pipe_vf_out_info);
 		err = ia_css_binary_find(&vf_pp_descr, &mycs->vf_pp_binary);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
 	}
 	err = allocate_delay_frames(pipe);
 
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
@@ -6327,21 +6327,21 @@ static enum ia_css_err load_primary_binaries(
 		err = load_copy_binary(pipe,
 					&mycs->copy_binary,
 					&mycs->primary_binary[0]);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
 	}
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 allocate_delay_frames(struct ia_css_pipe *pipe) {
 	unsigned int num_delay_frames = 0, i = 0;
 	unsigned int dvs_frame_delay = 0;
 	struct ia_css_frame_info ref_info;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	enum ia_css_pipe_id mode = IA_CSS_PIPE_ID_VIDEO;
 	struct ia_css_frame **delay_frames = NULL;
 
@@ -6350,7 +6350,7 @@ allocate_delay_frames(struct ia_css_pipe *pipe) {
 	if (!pipe)
 	{
 		IA_CSS_ERROR("Invalid args - pipe %p", pipe);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	mode = pipe->mode;
@@ -6406,7 +6406,7 @@ allocate_delay_frames(struct ia_css_pipe *pipe) {
 	}
 	break;
 	default:
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	ref_info.raw_bit_depth = SH_CSS_REF_BIT_DEPTH;
@@ -6415,14 +6415,14 @@ allocate_delay_frames(struct ia_css_pipe *pipe) {
 	for (i = 0; i < num_delay_frames; i++)
 	{
 		err = ia_css_frame_allocate_from_info(&delay_frames[i],	&ref_info);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 	IA_CSS_LEAVE_PRIVATE("");
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err load_advanced_binaries(
+static int load_advanced_binaries(
     struct ia_css_pipe *pipe) {
 	struct ia_css_frame_info pre_in_info, gdc_in_info,
 			post_in_info, post_out_info,
@@ -6430,7 +6430,7 @@ static enum ia_css_err load_advanced_binaries(
 			*pipe_vf_out_info;
 	bool need_pp;
 	bool need_isp_copy = true;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("");
 
@@ -6438,13 +6438,13 @@ static enum ia_css_err load_advanced_binaries(
 	assert(pipe->mode == IA_CSS_PIPE_ID_CAPTURE ||
 		pipe->mode == IA_CSS_PIPE_ID_COPY);
 	if (pipe->pipe_settings.capture.pre_isp_binary.info)
-		return IA_CSS_SUCCESS;
+		return 0;
 	pipe_out_info = &pipe->output_info[0];
 	pipe_vf_out_info = &pipe->vf_output_info[0];
 
 	vf_info = *pipe_vf_out_info;
 	err = ia_css_util_check_vf_out_info(pipe_out_info, &vf_info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	need_pp = need_capture_pp(pipe);
 
@@ -6460,7 +6460,7 @@ static enum ia_css_err load_advanced_binaries(
 							&capture_pp_descr, &post_out_info, pipe_out_info, &vf_info);
 		err = ia_css_binary_find(&capture_pp_descr,
 					    &pipe->pipe_settings.capture.capture_pp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	} else {
 		post_out_info = *pipe_out_info;
@@ -6474,7 +6474,7 @@ static enum ia_css_err load_advanced_binaries(
 						    &post_gdc_descr, &post_in_info, &post_out_info, &vf_info);
 		err = ia_css_binary_find(&post_gdc_descr,
 					    &pipe->pipe_settings.capture.post_isp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 
@@ -6486,7 +6486,7 @@ static enum ia_css_err load_advanced_binaries(
 						&pipe->pipe_settings.capture.post_isp_binary.in_frame_info);
 		err = ia_css_binary_find(&gdc_descr,
 					    &pipe->pipe_settings.capture.anr_gdc_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 	pipe->pipe_settings.capture.anr_gdc_binary.left_padding =
@@ -6500,7 +6500,7 @@ static enum ia_css_err load_advanced_binaries(
 						    &pipe->pipe_settings.capture.anr_gdc_binary.in_frame_info);
 		err = ia_css_binary_find(&pre_gdc_descr,
 					    &pipe->pipe_settings.capture.pre_isp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 	pipe->pipe_settings.capture.pre_isp_binary.left_padding =
@@ -6522,7 +6522,7 @@ static enum ia_css_err load_advanced_binaries(
 						&vf_pp_descr, vf_pp_in_info, pipe_vf_out_info);
 		err = ia_css_binary_find(&vf_pp_descr,
 					    &pipe->pipe_settings.capture.vf_pp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 
@@ -6539,10 +6539,10 @@ static enum ia_css_err load_advanced_binaries(
 	return err;
 }
 
-static enum ia_css_err load_bayer_isp_binaries(
+static int load_bayer_isp_binaries(
     struct ia_css_pipe *pipe) {
 	struct ia_css_frame_info pre_isp_in_info, *pipe_out_info;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_binary_descr pre_de_descr;
 
 	IA_CSS_ENTER_PRIVATE("");
@@ -6552,10 +6552,10 @@ static enum ia_css_err load_bayer_isp_binaries(
 	pipe_out_info = &pipe->output_info[0];
 
 	if (pipe->pipe_settings.capture.pre_isp_binary.info)
-		return IA_CSS_SUCCESS;
+		return 0;
 
 	err = ia_css_frame_check_info(pipe_out_info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 	ia_css_pipe_get_pre_de_binarydesc(pipe, &pre_de_descr,
@@ -6568,7 +6568,7 @@ static enum ia_css_err load_bayer_isp_binaries(
 	return err;
 }
 
-static enum ia_css_err load_low_light_binaries(
+static int load_low_light_binaries(
     struct ia_css_pipe *pipe) {
 	struct ia_css_frame_info pre_in_info, anr_in_info,
 			post_in_info, post_out_info,
@@ -6576,7 +6576,7 @@ static enum ia_css_err load_low_light_binaries(
 			*vf_pp_in_info;
 	bool need_pp;
 	bool need_isp_copy = true;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("");
 	assert(pipe);
@@ -6584,14 +6584,14 @@ static enum ia_css_err load_low_light_binaries(
 		pipe->mode == IA_CSS_PIPE_ID_COPY);
 
 	if (pipe->pipe_settings.capture.pre_isp_binary.info)
-		return IA_CSS_SUCCESS;
+		return 0;
 	pipe_vf_out_info = &pipe->vf_output_info[0];
 	pipe_out_info = &pipe->output_info[0];
 
 	vf_info = *pipe_vf_out_info;
 	err = ia_css_util_check_vf_out_info(pipe_out_info,
 					    &vf_info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	need_pp = need_capture_pp(pipe);
 
@@ -6607,7 +6607,7 @@ static enum ia_css_err load_low_light_binaries(
 							&capture_pp_descr, &post_out_info, pipe_out_info, &vf_info);
 		err = ia_css_binary_find(&capture_pp_descr,
 					    &pipe->pipe_settings.capture.capture_pp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	} else {
 		post_out_info = *pipe_out_info;
@@ -6621,7 +6621,7 @@ static enum ia_css_err load_low_light_binaries(
 						    &post_anr_descr, &post_in_info, &post_out_info, &vf_info);
 		err = ia_css_binary_find(&post_anr_descr,
 					    &pipe->pipe_settings.capture.post_isp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 
@@ -6633,7 +6633,7 @@ static enum ia_css_err load_low_light_binaries(
 						&pipe->pipe_settings.capture.post_isp_binary.in_frame_info);
 		err = ia_css_binary_find(&anr_descr,
 					    &pipe->pipe_settings.capture.anr_gdc_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 	pipe->pipe_settings.capture.anr_gdc_binary.left_padding =
@@ -6647,7 +6647,7 @@ static enum ia_css_err load_low_light_binaries(
 						    &pipe->pipe_settings.capture.anr_gdc_binary.in_frame_info);
 		err = ia_css_binary_find(&pre_anr_descr,
 					    &pipe->pipe_settings.capture.pre_isp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 	pipe->pipe_settings.capture.pre_isp_binary.left_padding =
@@ -6669,7 +6669,7 @@ static enum ia_css_err load_low_light_binaries(
 						&vf_pp_descr, vf_pp_in_info, pipe_vf_out_info);
 		err = ia_css_binary_find(&vf_pp_descr,
 					    &pipe->pipe_settings.capture.vf_pp_binary);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 
@@ -6706,9 +6706,9 @@ static bool copy_on_sp(struct ia_css_pipe *pipe)
 	return rval;
 }
 
-static enum ia_css_err load_capture_binaries(
+static int load_capture_binaries(
     struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	bool must_be_raw;
 
 	IA_CSS_ENTER_PRIVATE("");
@@ -6717,8 +6717,8 @@ static enum ia_css_err load_capture_binaries(
 		pipe->mode == IA_CSS_PIPE_ID_COPY);
 
 	if (pipe->pipe_settings.capture.primary_binary[0].info) {
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-		return IA_CSS_SUCCESS;
+		IA_CSS_LEAVE_ERR_PRIVATE(0);
+		return 0;
 	}
 
 	/* in primary, advanced,low light or bayer,
@@ -6728,7 +6728,7 @@ static enum ia_css_err load_capture_binaries(
 	    pipe->config.default_capture_config.mode == IA_CSS_CAPTURE_MODE_BAYER ||
 	    pipe->config.default_capture_config.mode == IA_CSS_CAPTURE_MODE_LOW_LIGHT;
 	err = ia_css_util_check_input(&pipe->stream->config, must_be_raw, false);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
@@ -6740,15 +6740,15 @@ static enum ia_css_err load_capture_binaries(
 		    1,
 		    IA_CSS_FRAME_FORMAT_BINARY_8,
 		    0);
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-		return IA_CSS_SUCCESS;
+		IA_CSS_LEAVE_ERR_PRIVATE(0);
+		return 0;
 	}
 
 	switch (pipe->config.default_capture_config.mode) {
 	case IA_CSS_CAPTURE_MODE_RAW:
 		err = load_copy_binaries(pipe);
 #if !defined(HAS_NO_INPUT_SYSTEM) && defined(USE_INPUT_SYSTEM_VERSION_2401)
-		if (err == IA_CSS_SUCCESS)
+		if (!err)
 			pipe->pipe_settings.capture.copy_binary.online = pipe->stream->config.online;
 #endif
 		break;
@@ -6765,7 +6765,7 @@ static enum ia_css_err load_capture_binaries(
 		err = load_low_light_binaries(pipe);
 		break;
 	}
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
@@ -6774,7 +6774,7 @@ static enum ia_css_err load_capture_binaries(
 	return err;
 }
 
-static enum ia_css_err
+static int
 unload_capture_binaries(struct ia_css_pipe *pipe) {
 	unsigned int i;
 
@@ -6782,8 +6782,8 @@ unload_capture_binaries(struct ia_css_pipe *pipe) {
 
 	if ((!pipe) || ((pipe->mode != IA_CSS_PIPE_ID_CAPTURE) && (pipe->mode != IA_CSS_PIPE_ID_COPY)))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 	ia_css_binary_unload(&pipe->pipe_settings.capture.copy_binary);
 	for (i = 0; i < MAX_NUM_PRIMARY_STAGES; i++)
@@ -6803,8 +6803,8 @@ unload_capture_binaries(struct ia_css_pipe *pipe) {
 	kfree(pipe->pipe_settings.capture.yuv_scaler_binary);
 	pipe->pipe_settings.capture.yuv_scaler_binary = NULL;
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
 static bool
@@ -6855,14 +6855,14 @@ need_yuv_scaler_stage(const struct ia_css_pipe *pipe) {
 /* TODO: it is temporarily created from ia_css_pipe_create_cas_scaler_desc */
 /* which has some hard-coded knowledge which prevents reuse of the function. */
 /* Later, merge this with ia_css_pipe_create_cas_scaler_desc */
-static enum ia_css_err ia_css_pipe_create_cas_scaler_desc_single_output(
+static int ia_css_pipe_create_cas_scaler_desc_single_output(
     struct ia_css_frame_info *cas_scaler_in_info,
     struct ia_css_frame_info *cas_scaler_out_info,
     struct ia_css_frame_info *cas_scaler_vf_info,
     struct ia_css_cas_binary_descr *descr) {
 	unsigned int i;
 	unsigned int hor_ds_factor = 0, ver_ds_factor = 0;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_frame_info tmp_in_info;
 
 	unsigned int max_scale_factor_per_stage = MAX_PREFERRED_YUV_DS_PER_STEP;
@@ -6892,30 +6892,30 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc_single_output(
 	descr->in_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info),
 				    GFP_KERNEL);
 	if (!descr->in_info) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 	descr->internal_out_info = kmalloc(descr->num_stage * sizeof(
 						struct ia_css_frame_info), GFP_KERNEL);
 	if (!descr->internal_out_info) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 	descr->out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info),
 				    GFP_KERNEL);
 	if (!descr->out_info) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 	descr->vf_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info),
 				    GFP_KERNEL);
 	if (!descr->vf_info) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 	descr->is_output_stage = kmalloc(descr->num_stage * sizeof(bool), GFP_KERNEL);
 	if (!descr->is_output_stage) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 
@@ -6975,7 +6975,7 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc_single_output(
 }
 
 /* FIXME: merge most of this and single output version */
-static enum ia_css_err ia_css_pipe_create_cas_scaler_desc(
+static int ia_css_pipe_create_cas_scaler_desc(
     struct ia_css_pipe *pipe,
     struct ia_css_cas_binary_descr *descr) {
 	struct ia_css_frame_info in_info = IA_CSS_BINARY_DEFAULT_FRAME_INFO;
@@ -6987,7 +6987,7 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc(
 		    ver_scale_factor[IA_CSS_PIPE_MAX_OUTPUT_STAGE],
 		    scale_factor = 0;
 	unsigned int num_stages = 0;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	unsigned int max_scale_factor_per_stage = MAX_PREFERRED_YUV_DS_PER_STEP;
 
@@ -7036,30 +7036,30 @@ static enum ia_css_err ia_css_pipe_create_cas_scaler_desc(
 	descr->in_info = kmalloc_array(descr->num_stage,
 					sizeof(struct ia_css_frame_info), GFP_KERNEL);
 	if (!descr->in_info) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 	descr->internal_out_info = kmalloc(descr->num_stage * sizeof(
 						struct ia_css_frame_info), GFP_KERNEL);
 	if (!descr->internal_out_info) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 	descr->out_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info),
 				    GFP_KERNEL);
 	if (!descr->out_info) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 	descr->vf_info = kmalloc(descr->num_stage * sizeof(struct ia_css_frame_info),
 				    GFP_KERNEL);
 	if (!descr->vf_info) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 	descr->is_output_stage = kmalloc(descr->num_stage * sizeof(bool), GFP_KERNEL);
 	if (!descr->is_output_stage) {
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 
@@ -7150,9 +7150,9 @@ static void ia_css_pipe_destroy_cas_scaler_desc(struct ia_css_cas_binary_descr
 			    "ia_css_pipe_destroy_cas_scaler_desc() leave\n");
 }
 
-static enum ia_css_err
+static int
 load_yuvpp_binaries(struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	bool need_scaler = false;
 	struct ia_css_frame_info *vf_pp_in_info[IA_CSS_PIPE_MAX_OUTPUT_STAGE];
 	struct ia_css_yuvpp_settings *mycs;
@@ -7171,7 +7171,7 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe) {
 
 	/* Set both must_be_raw and must_be_yuv to false then yuvpp can take rgb inputs */
 	err = ia_css_util_check_input(&pipe->stream->config, false, false);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 
 	mycs = &pipe->pipe_settings.yuvpp;
@@ -7181,7 +7181,7 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe) {
 		if (pipe->vf_output_info[i].res.width != 0) {
 			err = ia_css_util_check_vf_out_info(&pipe->output_info[i],
 							    &pipe->vf_output_info[i]);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 		}
 		vf_pp_in_info[i] = NULL;
@@ -7197,20 +7197,20 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe) {
 
 		err = ia_css_pipe_create_cas_scaler_desc(pipe,
 			&cas_scaler_descr);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 		mycs->num_output = cas_scaler_descr.num_output_stage;
 		mycs->num_yuv_scaler = cas_scaler_descr.num_stage;
 		mycs->yuv_scaler_binary = kzalloc(cas_scaler_descr.num_stage *
 						    sizeof(struct ia_css_binary), GFP_KERNEL);
 		if (!mycs->yuv_scaler_binary) {
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 			goto ERR;
 		}
 		mycs->is_output_stage = kzalloc(cas_scaler_descr.num_stage *
 						sizeof(bool), GFP_KERNEL);
 		if (!mycs->is_output_stage) {
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 			goto ERR;
 		}
 		for (i = 0; i < cas_scaler_descr.num_stage; i++) {
@@ -7222,7 +7222,7 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe) {
 								&cas_scaler_descr.vf_info[i]);
 			err = ia_css_binary_find(&yuv_scaler_descr,
 						    &mycs->yuv_scaler_binary[i]);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 		}
 		ia_css_pipe_destroy_cas_scaler_desc(&cas_scaler_descr);
@@ -7269,7 +7269,7 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe) {
 					&mycs->copy_binary,
 					next_binary);
 
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 
 		/*
@@ -7318,7 +7318,7 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe) {
 					GFP_KERNEL);
 	if (!mycs->vf_pp_binary)
 	{
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		goto ERR;
 	}
 
@@ -7331,13 +7331,13 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe) {
 				ia_css_pipe_get_vfpp_binarydesc(pipe,
 								&vf_pp_descr, vf_pp_in_info[i], &pipe->vf_output_info[i]);
 				err = ia_css_binary_find(&vf_pp_descr, &mycs->vf_pp_binary[i]);
-				if (err != IA_CSS_SUCCESS)
+				if (err)
 					goto ERR;
 			}
 		}
 	}
 
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 
 ERR:
@@ -7350,7 +7350,7 @@ load_yuvpp_binaries(struct ia_css_pipe *pipe) {
 	return err;
 }
 
-static enum ia_css_err
+static int
 unload_yuvpp_binaries(struct ia_css_pipe *pipe) {
 	unsigned int i;
 
@@ -7358,8 +7358,8 @@ unload_yuvpp_binaries(struct ia_css_pipe *pipe) {
 
 	if ((!pipe) || (pipe->mode != IA_CSS_PIPE_ID_YUVPP))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 	ia_css_binary_unload(&pipe->pipe_settings.yuvpp.copy_binary);
 	for (i = 0; i < pipe->pipe_settings.yuvpp.num_yuv_scaler; i++)
@@ -7377,21 +7377,21 @@ unload_yuvpp_binaries(struct ia_css_pipe *pipe) {
 	kfree(pipe->pipe_settings.yuvpp.vf_pp_binary);
 	pipe->pipe_settings.yuvpp.vf_pp_binary = NULL;
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
-static enum ia_css_err yuvpp_start(struct ia_css_pipe *pipe)
+static int yuvpp_start(struct ia_css_pipe *pipe)
 {
 	struct ia_css_binary *copy_binary;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	enum sh_css_pipe_config_override copy_ovrd;
 	enum ia_css_input_mode yuvpp_pipe_input_mode;
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 	if ((!pipe) || (pipe->mode != IA_CSS_PIPE_ID_YUVPP)) {
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	yuvpp_pipe_input_mode = pipe->stream->config.mode;
@@ -7404,7 +7404,7 @@ static enum ia_css_err yuvpp_start(struct ia_css_pipe *pipe)
 
 #if !defined(HAS_NO_INPUT_SYSTEM) && (defined(USE_INPUT_SYSTEM_VERSION_2) || defined(USE_INPUT_SYSTEM_VERSION_2401))
 	err = send_mipi_frames(pipe);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
@@ -7423,22 +7423,22 @@ static enum ia_css_err yuvpp_start(struct ia_css_pipe *pipe)
 	return err;
 }
 
-static enum ia_css_err
+static int
 sh_css_pipe_unload_binaries(struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 
 	if (!pipe)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 	/* PIPE_MODE_COPY has no binaries, but has output frames to outside*/
 	if (pipe->config.mode == IA_CSS_PIPE_MODE_COPY)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-		return IA_CSS_SUCCESS;
+		IA_CSS_LEAVE_ERR_PRIVATE(0);
+		return 0;
 	}
 
 	switch (pipe->mode)
@@ -7462,9 +7462,9 @@ sh_css_pipe_unload_binaries(struct ia_css_pipe *pipe) {
 	return err;
 }
 
-static enum ia_css_err
+static int
 sh_css_pipe_load_binaries(struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	assert(pipe);
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE, "sh_css_pipe_load_binaries() enter:\n");
@@ -7490,24 +7490,24 @@ sh_css_pipe_load_binaries(struct ia_css_pipe *pipe) {
 	case IA_CSS_PIPE_ID_ACC:
 		break;
 	default:
-		err = IA_CSS_ERR_INTERNAL_ERROR;
+		err = -EINVAL;
 		break;
 	}
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
-		if (sh_css_pipe_unload_binaries(pipe) != IA_CSS_SUCCESS) {
+		if (sh_css_pipe_unload_binaries(pipe)) {
 			/* currently css does not support multiple error returns in a single function,
-			    * using IA_CSS_ERR_INTERNAL_ERROR in this case */
-			err = IA_CSS_ERR_INTERNAL_ERROR;
+			    * using -EINVAL in this case */
+			err = -EINVAL;
 		}
 	}
 	return err;
 }
 
-static enum ia_css_err
+static int
 create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 	struct ia_css_pipeline *me;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_pipeline_stage *vf_pp_stage = NULL,
 		*copy_stage = NULL,
 		*yuv_scaler_stage = NULL;
@@ -7534,8 +7534,8 @@ create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 	if ((!pipe) || (!pipe->stream) || (pipe->mode != IA_CSS_PIPE_ID_YUVPP))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 	me = &pipe->pipeline;
 	ia_css_pipeline_clean(me);
@@ -7613,7 +7613,7 @@ create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 							&me->in_frame,
 							in_frame_format);
 
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -7629,7 +7629,7 @@ create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 		assert(i < IA_CSS_PIPE_MAX_OUTPUT_STAGE);
 		if (pipe->output_info[i].res.width != 0) {
 			err = init_out_frameinfo_defaults(pipe, &me->out_frame[i], i);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -7639,7 +7639,7 @@ create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 		/* Construct vf_frame info (only in case we have VF) */
 		if (pipe->vf_output_info[i].res.width != 0) {
 			err = init_vf_frameinfo_defaults(pipe, &me->vf_frame[i], i);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -7676,7 +7676,7 @@ create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 			&stage_desc,
 			&copy_stage);
 
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -7712,7 +7712,7 @@ create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 						    &yuv_scaler_binary[i],
 						    &yuv_scaler_stage);
 
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -7724,7 +7724,7 @@ create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 					err = add_vf_pp_stage(pipe, in_frame, tmp_vf_frame, &vf_pp_binary[j],
 								&vf_pp_stage);
 
-					if (err != IA_CSS_SUCCESS) {
+					if (err) {
 						IA_CSS_LEAVE_ERR_PRIVATE(err);
 						return err;
 					}
@@ -7739,7 +7739,7 @@ create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 			err = add_vf_pp_stage(pipe, in_frame, vf_frame[0], &vf_pp_binary[0],
 						&vf_pp_stage);
 		}
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -7747,17 +7747,17 @@ create_host_yuvpp_pipeline(struct ia_css_pipe *pipe) {
 
 	ia_css_pipeline_finalize_stages(&pipe->pipeline, pipe->stream->config.continuous);
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 create_host_copy_pipeline(struct ia_css_pipe *pipe,
 			    unsigned int max_input_width,
 			    struct ia_css_frame *out_frame) {
 	struct ia_css_pipeline *me;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_pipeline_stage_desc stage_desc;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
@@ -7804,10 +7804,10 @@ create_host_copy_pipeline(struct ia_css_pipe *pipe,
 	return err;
 }
 
-static enum ia_css_err
+static int
 create_host_isyscopy_capture_pipeline(struct ia_css_pipe *pipe) {
 	struct ia_css_pipeline *me = &pipe->pipeline;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_pipeline_stage_desc stage_desc;
 	struct ia_css_frame *out_frame = &me->out_frame[0];
 	struct ia_css_pipeline_stage *out_stage = NULL;
@@ -7821,7 +7821,7 @@ create_host_isyscopy_capture_pipeline(struct ia_css_pipe *pipe) {
 
 	/* Construct out_frame info */
 	err = sh_css_pipe_get_output_frame_info(pipe, &out_frame->info, 0);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	out_frame->contiguous = false;
 	out_frame->flash_state = IA_CSS_FRAME_FLASH_STATE_NONE;
@@ -7837,7 +7837,7 @@ create_host_isyscopy_capture_pipeline(struct ia_css_pipe *pipe) {
 					    IA_CSS_PIPELINE_ISYS_COPY, max_input_width);
 	err = ia_css_pipeline_create_and_add_stage(me,
 		&stage_desc, &out_stage);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 	ia_css_pipeline_finalize_stages(me, pipe->stream->config.continuous);
@@ -7848,10 +7848,10 @@ create_host_isyscopy_capture_pipeline(struct ia_css_pipe *pipe) {
 	return err;
 }
 
-static enum ia_css_err
+static int
 create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 	struct ia_css_pipeline *me;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	enum ia_css_capture_mode mode;
 	struct ia_css_pipeline_stage *current_stage = NULL;
 	struct ia_css_pipeline_stage *yuv_scaler_stage = NULL;
@@ -7917,7 +7917,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 	{
 		err = init_in_frameinfo_memory_defaults(pipe, &me->in_frame,
 							IA_CSS_FRAME_FORMAT_RAW);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -7929,7 +7929,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 	}
 
 	err = init_out_frameinfo_defaults(pipe, &me->out_frame[0], 0);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
@@ -7955,8 +7955,8 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 	num_primary_stage = pipe->pipe_settings.capture.num_primary_stage;
 	if ((num_primary_stage == 0) && (mode == IA_CSS_CAPTURE_MODE_PRIMARY))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 	for (i = 0; i < num_primary_stage; i++)
 	{
@@ -8004,7 +8004,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 		err = ia_css_pipeline_create_and_add_stage(me,
 			&stage_desc,
 			&current_stage);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -8047,7 +8047,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 			err = ia_css_pipeline_create_and_add_stage(me,
 				&stage_desc,
 				&current_stage);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -8066,7 +8066,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 						    out_frames, in_frame, NULL);
 		err = ia_css_pipeline_create_and_add_stage(me,
 			&stage_desc, NULL);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -8075,7 +8075,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 						    out_frames, NULL, NULL);
 		err = ia_css_pipeline_create_and_add_stage(me,
 			&stage_desc, NULL);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -8092,7 +8092,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 
 		err = ia_css_pipeline_create_and_add_stage(me,
 			&stage_desc, &current_stage);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -8104,7 +8104,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 		err = ia_css_pipeline_create_and_add_stage(me,
 			&stage_desc,
 			NULL);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -8146,7 +8146,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 #endif
 					    capture_pp_binary,
 					    &current_stage);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -8167,7 +8167,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 						    NULL,
 						    &yuv_scaler_binary[i],
 						    &yuv_scaler_stage);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -8190,7 +8190,7 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 		in_frame = current_stage->args.out_vf_frame;
 		err = add_vf_pp_stage(pipe, in_frame, vf_frame, vf_pp_binary,
 					&current_stage);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -8200,12 +8200,12 @@ create_host_regular_capture_pipeline(struct ia_css_pipe *pipe) {
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 			    "create_host_regular_capture_pipeline() leave:\n");
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 create_host_capture_pipeline(struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 
@@ -8213,7 +8213,7 @@ create_host_capture_pipeline(struct ia_css_pipe *pipe) {
 		err = create_host_isyscopy_capture_pipeline(pipe);
 	else
 		err = create_host_regular_capture_pipeline(pipe);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
@@ -8224,17 +8224,17 @@ create_host_capture_pipeline(struct ia_css_pipe *pipe) {
 	return err;
 }
 
-static enum ia_css_err capture_start(
+static int capture_start(
     struct ia_css_pipe *pipe) {
 	struct ia_css_pipeline *me;
 
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	enum sh_css_pipe_config_override copy_ovrd;
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p", pipe);
 	if (!pipe) {
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	me = &pipe->pipeline;
@@ -8252,14 +8252,14 @@ static enum ia_css_err capture_start(
 #if defined(USE_INPUT_SYSTEM_VERSION_2)
 	/* old isys: need to send_mipi_frames() in all pipe modes */
 	err = send_mipi_frames(pipe);
-	if (err != IA_CSS_SUCCESS) {
+	if (err) {
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
 #elif defined(USE_INPUT_SYSTEM_VERSION_2401)
 	if (pipe->config.mode != IA_CSS_PIPE_MODE_COPY) {
 		err = send_mipi_frames(pipe);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -8293,7 +8293,7 @@ static enum ia_css_err capture_start(
 	return err;
 }
 
-static enum ia_css_err
+static int
 sh_css_pipe_get_output_frame_info(struct ia_css_pipe *pipe,
 				    struct ia_css_frame_info *info,
 				    unsigned int idx) {
@@ -8322,7 +8322,7 @@ sh_css_pipe_get_output_frame_info(struct ia_css_pipe *pipe,
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 			    "sh_css_pipe_get_output_frame_info() leave:\n");
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 #if !defined(HAS_NO_INPUT_SYSTEM)
@@ -8409,13 +8409,13 @@ remove_firmware(struct ia_css_fw_info **l, struct ia_css_fw_info *firmware) {
 	return; /* removing single and multiple firmware is handled in acc_unload_extension() */
 }
 
-static enum ia_css_err upload_isp_code(struct ia_css_fw_info *firmware)
+static int upload_isp_code(struct ia_css_fw_info *firmware)
 {
 	ia_css_ptr binary;
 
 	if (!firmware) {
 		IA_CSS_ERROR("NULL input parameter");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 	binary = firmware->info.isp.xmem_addr;
 
@@ -8435,27 +8435,27 @@ static enum ia_css_err upload_isp_code(struct ia_css_fw_info *firmware)
 	}
 
 	if (!binary)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
-	return IA_CSS_SUCCESS;
+		return -ENOMEM;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 acc_load_extension(struct ia_css_fw_info *firmware) {
-	enum ia_css_err err;
+	int err;
 	struct ia_css_fw_info *hd = firmware;
 
 	while (hd)
 	{
 		err = upload_isp_code(hd);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 		hd = hd->next;
 	}
 
 	if (!firmware)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	firmware->loaded = true;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void
@@ -8481,17 +8481,17 @@ acc_unload_extension(struct ia_css_fw_info *firmware) {
 }
 
 /* Load firmware for extension */
-static enum ia_css_err
+static int
 ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
 			    struct ia_css_fw_info *firmware) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("fw = %p pipe = %p", firmware, pipe);
 
 	if ((!firmware) || (!pipe))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	if (firmware->info.isp.type == IA_CSS_ACC_OUTPUT)
@@ -8545,12 +8545,12 @@ ia_css_pipeline_uses_params(struct ia_css_pipeline *me) {
 	return false;
 }
 
-static enum ia_css_err
+static int
 sh_css_pipeline_add_acc_stage(struct ia_css_pipeline *pipeline,
 				const void *acc_fw) {
 	struct ia_css_fw_info *fw = (struct ia_css_fw_info *)acc_fw;
 	/* In QoS case, load_extension already called, so skipping */
-	enum ia_css_err	err = IA_CSS_SUCCESS;
+	int	err = 0;
 
 	if (fw->loaded == false)
 		err = acc_load_extension(fw);
@@ -8559,7 +8559,7 @@ sh_css_pipeline_add_acc_stage(struct ia_css_pipeline *pipeline,
 			    "sh_css_pipeline_add_acc_stage() enter: pipeline=%p, acc_fw=%p\n",
 			    pipeline, acc_fw);
 
-	if (err == IA_CSS_SUCCESS)
+	if (!err)
 	{
 		struct ia_css_pipeline_stage_desc stage_desc;
 
@@ -8578,25 +8578,25 @@ sh_css_pipeline_add_acc_stage(struct ia_css_pipeline *pipeline,
     * @brief Tag a specific frame in continuous capture.
     * Refer to "sh_css_internal.h" for details.
     */
-enum ia_css_err ia_css_stream_capture_frame(struct ia_css_stream *stream,
+int ia_css_stream_capture_frame(struct ia_css_stream *stream,
 	unsigned int exp_id) {
 	struct sh_css_tag_descr tag_descr;
 	u32 encoded_tag_descr;
-	enum ia_css_err err;
+	int err;
 
 	assert(stream);
 	IA_CSS_ENTER("exp_id=%d", exp_id);
 
 	/* Only continuous streams have a tagger */
 	if (exp_id == 0 || !stream->config.continuous) {
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 
 	if (!sh_css_sp_is_running()) {
 		/* SP is not running. The queues are not valid */
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_RESOURCE_NOT_AVAILABLE);
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		IA_CSS_LEAVE_ERR(-EBUSY);
+		return -EBUSY;
 	}
 
 	/* Create the tag descriptor from the parameters */
@@ -8617,17 +8617,17 @@ enum ia_css_err ia_css_stream_capture_frame(struct ia_css_stream *stream,
     * @brief Configure the continuous capture.
     * Refer to "sh_css_internal.h" for details.
     */
-enum ia_css_err ia_css_stream_capture(
+int ia_css_stream_capture(
     struct ia_css_stream *stream,
     int num_captures,
     unsigned int skip,
     int offset) {
 	struct sh_css_tag_descr tag_descr;
 	unsigned int encoded_tag_descr;
-	enum ia_css_err return_err;
+	int return_err;
 
 	if (!stream)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 			    "ia_css_stream_capture() enter: num_captures=%d, skip=%d, offset=%d\n",
@@ -8637,8 +8637,8 @@ enum ia_css_err ia_css_stream_capture(
 	if (num_captures < SH_CSS_MINIMUM_TAG_ID) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_stream_capture() leave: return_err=%d\n",
-				    IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+				    -EINVAL);
+		return -EINVAL;
 	}
 
 	/* Create the tag descriptor from the parameters */
@@ -8651,7 +8651,7 @@ enum ia_css_err ia_css_stream_capture(
 		/* SP is not running. The queues are not valid */
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 				    "ia_css_stream_capture() leaving:queues unavailable\n");
-		return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		return -EBUSY;
 	}
 
 	/* Enqueue the encoded tag to the host2sp queue.
@@ -8806,14 +8806,14 @@ void ia_css_stream_config_defaults(struct ia_css_stream_config *stream_config)
 	stream_config->source.port.rxcount = 0x04040404;
 }
 
-static enum ia_css_err
+static int
 ia_css_acc_pipe_create(struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	if (!pipe)
 	{
 		IA_CSS_ERROR("NULL input parameter");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	/* There is not meaning for num_execs = 0 semantically. Run atleast once. */
@@ -8828,21 +8828,21 @@ ia_css_acc_pipe_create(struct ia_css_pipe *pipe) {
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_pipe_create(const struct ia_css_pipe_config *config,
 		    struct ia_css_pipe **pipe) {
 #ifndef ISP2401
 	if (!config)
 #else
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("config = %p, pipe = %p", config, pipe);
 
 	if (!config)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
 #endif
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 #ifndef ISP2401
 	if (!pipe)
 #else
@@ -8850,9 +8850,9 @@ ia_css_pipe_create(const struct ia_css_pipe_config *config,
 
 if (!pipe)
 {
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
+	IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
 #endif
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 #ifndef ISP2401
 	return ia_css_pipe_create_extra(config, NULL, pipe);
 #else
@@ -8860,7 +8860,7 @@ if (!pipe)
 
 err = ia_css_pipe_create_extra(config, NULL, pipe);
 
-if (err == IA_CSS_SUCCESS)
+if (err == 0)
 {
 	IA_CSS_LOG("pipe created successfully = %p", *pipe);
 }
@@ -8871,11 +8871,11 @@ return err;
 #endif
 }
 
-enum ia_css_err
+int
 ia_css_pipe_create_extra(const struct ia_css_pipe_config *config,
 			    const struct ia_css_pipe_extra_config *extra_config,
 			    struct ia_css_pipe **pipe) {
-	enum ia_css_err err = IA_CSS_ERR_INTERNAL_ERROR;
+	int err = -EINVAL;
 	struct ia_css_pipe *internal_pipe = NULL;
 	unsigned int i;
 
@@ -8884,21 +8884,21 @@ ia_css_pipe_create_extra(const struct ia_css_pipe_config *config,
 	/* do not allow to create more than the maximum limit */
 	if (my_css.pipe_counter >= IA_CSS_PIPELINE_NUM_MAX)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_RESOURCE_EXHAUSTED);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-ENOSPC);
+		return -EINVAL;
 	}
 
 	if ((!pipe) || (!config))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	ia_css_debug_dump_pipe_config(config);
 	ia_css_debug_dump_pipe_extra_config(extra_config);
 
 	err = create_pipe(config->mode, &internal_pipe, false);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
@@ -8921,8 +8921,8 @@ ia_css_pipe_create_extra(const struct ia_css_pipe_config *config,
 		    internal_pipe->config.num_acc_stages ==
 		    0) { /* if no acc binary and no standalone stage */
 			*pipe = NULL;
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-			return IA_CSS_SUCCESS;
+			IA_CSS_LEAVE_ERR_PRIVATE(0);
+			return 0;
 		}
 		return ia_css_acc_pipe_create(internal_pipe);
 	}
@@ -8997,7 +8997,7 @@ ia_css_pipe_create_extra(const struct ia_css_pipe_config *config,
 				    internal_pipe->config.output_info[i].padded_width,
 				    internal_pipe->config.output_info[i].format,
 				    i);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				kvfree(internal_pipe);
 				internal_pipe = NULL;
@@ -9016,7 +9016,7 @@ ia_css_pipe_create_extra(const struct ia_css_pipe_config *config,
 				    internal_pipe->config.vf_output_info[i].padded_width,
 				    internal_pipe->config.vf_output_info[i].format,
 				    i);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				kvfree(internal_pipe);
 				internal_pipe = NULL;
@@ -9028,7 +9028,7 @@ ia_css_pipe_create_extra(const struct ia_css_pipe_config *config,
 	{
 		err = ia_css_pipe_load_extension(internal_pipe,
 						    internal_pipe->config.acc_extension);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			kvfree(internal_pipe);
 			return err;
@@ -9039,11 +9039,11 @@ ia_css_pipe_create_extra(const struct ia_css_pipe_config *config,
 
 	/* all went well, return the pipe */
 	*pipe = internal_pipe;
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
-enum ia_css_err
+int
 ia_css_pipe_get_info(const struct ia_css_pipe *pipe,
 			struct ia_css_pipe_info *pipe_info) {
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
@@ -9053,18 +9053,18 @@ ia_css_pipe_get_info(const struct ia_css_pipe *pipe,
 	{
 		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
 				    "ia_css_pipe_get_info: pipe_info cannot be NULL\n");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 	if (!pipe || !pipe->stream)
 	{
 		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
 				    "ia_css_pipe_get_info: ia_css_stream_create needs to be called before ia_css_[stream/pipe]_get_info\n");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 	/* we succeeded return the info */
 	*pipe_info = pipe->info;
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_pipe_get_info() leave\n");
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 bool ia_css_pipe_has_dvs_stats(struct ia_css_pipe_info *pipe_info)
@@ -9081,38 +9081,38 @@ bool ia_css_pipe_has_dvs_stats(struct ia_css_pipe_info *pipe_info)
 	return false;
 }
 
-enum ia_css_err
+int
 ia_css_pipe_override_frame_format(struct ia_css_pipe *pipe,
 				    int pin_index,
 				    enum ia_css_frame_format new_format) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("pipe = %p, pin_index = %d, new_formats = %d", pipe, pin_index, new_format);
 
 	if (!pipe)
 	{
 		IA_CSS_ERROR("pipe is not set");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
 	if (0 != pin_index && 1 != pin_index)
 	{
 		IA_CSS_ERROR("pin index is not valid");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
 	if (new_format != IA_CSS_FRAME_FORMAT_NV12_TILEY)
 	{
 		IA_CSS_ERROR("new format is not valid");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	} else
 	{
 		err = ia_css_pipe_check_format(pipe, new_format);
-		if (err == IA_CSS_SUCCESS) {
+		if (!err) {
 			if (pin_index == 0) {
 				pipe->output_info[0].format = new_format;
 			} else {
@@ -9126,7 +9126,7 @@ ia_css_pipe_override_frame_format(struct ia_css_pipe *pipe,
 
 #if defined(USE_INPUT_SYSTEM_VERSION_2)
 /* Configuration of INPUT_SYSTEM_VERSION_2401 is done on SP */
-static enum ia_css_err
+static int
 ia_css_stream_configure_rx(struct ia_css_stream *stream) {
 	struct ia_css_input_port *config;
 
@@ -9143,10 +9143,10 @@ ia_css_stream_configure_rx(struct ia_css_stream *stream) {
 	else if (config->num_lanes == 4)
 		stream->csi_rx_config.mode = MONO_4L_1L_0L;
 	else if (config->num_lanes != 0)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	if (config->port > MIPI_PORT2_ID)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	stream->csi_rx_config.port =
 	ia_css_isys_port_to_mipi_port(config->port);
 	stream->csi_rx_config.timeout    = config->timeout;
@@ -9159,11 +9159,11 @@ ia_css_stream_configure_rx(struct ia_css_stream *stream) {
 	{
 		/* not implemented yet, requires extension of the rx_cfg_t
 		    * struct */
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 	stream->csi_rx_config.is_two_ppc = (stream->config.pixels_per_clock == 2);
 	stream->reconfigure_css_rx = true;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 #endif
 
@@ -9186,18 +9186,18 @@ find_pipe(struct ia_css_pipe *pipes[],
 	return NULL;
 }
 
-static enum ia_css_err
+static int
 ia_css_acc_stream_create(struct ia_css_stream *stream) {
 	int i;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	assert(stream);
 	IA_CSS_ENTER_PRIVATE("stream = %p", stream);
 
 	if (!stream)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 
 	for (i = 0;  i < stream->num_pipes; i++)
@@ -9206,8 +9206,8 @@ ia_css_acc_stream_create(struct ia_css_stream *stream) {
 
 		assert(pipe);
 		if (!pipe) {
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-			return IA_CSS_ERR_INVALID_ARGUMENTS;
+			IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+			return -EINVAL;
 		}
 
 		pipe->stream = stream;
@@ -9215,7 +9215,7 @@ ia_css_acc_stream_create(struct ia_css_stream *stream) {
 
 	/* Map SP threads before doing anything. */
 	err = map_sp_threads(stream, true);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
@@ -9230,7 +9230,7 @@ ia_css_acc_stream_create(struct ia_css_stream *stream) {
 	}
 
 	err = create_host_pipeline_structure(stream);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
@@ -9238,42 +9238,43 @@ ia_css_acc_stream_create(struct ia_css_stream *stream) {
 
 	stream->started = false;
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 metadata_info_init(const struct ia_css_metadata_config *mdc,
 		    struct ia_css_metadata_info *md) {
 	/* Either both width and height should be set or neither */
 	if ((mdc->resolution.height > 0) ^ (mdc->resolution.width > 0))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	md->resolution = mdc->resolution;
 	/* We round up the stride to a multiple of the width
 	    * of the port going to DDR, this is a HW requirements (DMA). */
 	md->stride = CEIL_MUL(mdc->resolution.width, HIVE_ISP_DDR_WORD_BYTES);
 	md->size = mdc->resolution.height * md->stride;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 /* ISP2401 */
-static enum ia_css_err check_pipe_resolutions(const struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+static int check_pipe_resolutions(const struct ia_css_pipe *pipe)
+{
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("");
 
 	if (!pipe || !pipe->stream) {
 		IA_CSS_ERROR("null arguments");
-		err = IA_CSS_ERR_INTERNAL_ERROR;
+		err = -EINVAL;
 		goto EXIT;
 	}
 
 	if (ia_css_util_check_res(pipe->config.input_effective_res.width,
-				    pipe->config.input_effective_res.height) != IA_CSS_SUCCESS) {
+				    pipe->config.input_effective_res.height) != 0) {
 		IA_CSS_ERROR("effective resolution not supported");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		goto EXIT;
 	}
 	if (!ia_css_util_resolution_is_zero(
@@ -9281,18 +9282,18 @@ static enum ia_css_err check_pipe_resolutions(const struct ia_css_pipe *pipe) {
 		if (!ia_css_util_res_leq(pipe->config.input_effective_res,
 					    pipe->stream->config.input_config.input_res)) {
 			IA_CSS_ERROR("effective resolution is larger than input resolution");
-			err = IA_CSS_ERR_INVALID_ARGUMENTS;
+			err = -EINVAL;
 			goto EXIT;
 		}
 	}
 	if (!ia_css_util_resolution_is_even(pipe->config.output_info[0].res)) {
 		IA_CSS_ERROR("output resolution must be even");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		goto EXIT;
 	}
 	if (!ia_css_util_resolution_is_even(pipe->config.vf_output_info[0].res)) {
 		IA_CSS_ERROR("VF resolution must be even");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		goto EXIT;
 	}
 EXIT:
@@ -9300,7 +9301,7 @@ static enum ia_css_err check_pipe_resolutions(const struct ia_css_pipe *pipe) {
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 			int num_pipes,
 			struct ia_css_pipe *pipes[],
@@ -9310,7 +9311,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	bool spcopyonly;
 	bool sensor_binning_changed;
 	int i, j;
-	enum ia_css_err err = IA_CSS_ERR_INTERNAL_ERROR;
+	int err = -EINVAL;
 	struct ia_css_metadata_info md_info;
 	struct ia_css_resolution effective_res;
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
@@ -9325,7 +9326,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	    !stream ||
 	    !pipes)
 	{
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
 	}
@@ -9335,7 +9336,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	if (stream_config->input_config.format == ATOMISP_INPUT_FORMAT_BINARY_8 &&
 	    stream_config->metadata_config.resolution.height > 0)
 	{
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
 	}
@@ -9345,7 +9346,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	if (stream_config->online && stream_config->pack_raw_pixels)
 	{
 		IA_CSS_LOG("online and pack raw is invalid on input system 2401");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
 	}
@@ -9363,7 +9364,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 			unsigned int port = (unsigned int)stream_config->source.port.port;
 
 			if (port >= N_MIPI_PORT_ID) {
-				err = IA_CSS_ERR_INVALID_ARGUMENTS;
+				err = -EINVAL;
 				IA_CSS_LEAVE_ERR(err);
 				return err;
 			}
@@ -9376,7 +9377,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 				ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 						    "ia_css_stream_create() exit: error, need to set mipi frame size.\n");
 				assert(stream_config->mipi_buffer_config.size_mem_words != 0);
-				err = IA_CSS_ERR_INTERNAL_ERROR;
+				err = -EINVAL;
 				IA_CSS_LEAVE_ERR(err);
 				return err;
 			}
@@ -9391,7 +9392,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 				ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,
 						    "ia_css_stream_create() exit: error, need to set number of mipi frames.\n");
 				assert(stream_config->mipi_buffer_config.nof_mipi_buffers != 0);
-				err = IA_CSS_ERR_INTERNAL_ERROR;
+				err = -EINVAL;
 				IA_CSS_LEAVE_ERR(err);
 				return err;
 			}
@@ -9400,7 +9401,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 
 	/* Currently we only supported metadata up to a certain size. */
 	err = metadata_info_init(&stream_config->metadata_config, &md_info);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR(err);
 		return err;
@@ -9410,7 +9411,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	curr_stream = kzalloc(sizeof(struct ia_css_stream), GFP_KERNEL);
 	if (!curr_stream)
 	{
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
 	}
@@ -9425,7 +9426,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 		curr_stream->num_pipes = 0;
 		kfree(curr_stream);
 		curr_stream = NULL;
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
 	}
@@ -9506,7 +9507,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	err = aspect_ratio_crop_init(curr_stream,
 					pipes,
 					&aspect_ratio_crop_enabled);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR(err);
 		return err;
@@ -9532,7 +9533,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 				struct ia_css_resolution crop_res;
 
 				err = aspect_ratio_crop(curr_pipe, &crop_res);
-				if (err == IA_CSS_SUCCESS) {
+				if (!err) {
 					effective_res = crop_res;
 				} else {
 					/* in case of error fallback to default
@@ -9553,7 +9554,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 			if (pipes[i]->config.mode != IA_CSS_PIPE_MODE_ACC &&
 			    pipes[i]->config.mode != IA_CSS_PIPE_MODE_COPY) {
 				err = check_pipe_resolutions(pipes[i]);
-				if (err != IA_CSS_SUCCESS) {
+				if (err) {
 					goto ERR;
 				}
 			}
@@ -9561,7 +9562,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	}
 
 	err = ia_css_stream_isp_parameters_init(curr_stream);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 	IA_CSS_LOG("isp_params_configs: %p", curr_stream->isp_params_configs);
 
@@ -9620,19 +9621,19 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 			capture_pipe = find_pipe(pipes, num_pipes,
 						    IA_CSS_PIPE_MODE_CAPTURE, false);
 			if (!capture_pipe) {
-				err = IA_CSS_ERR_INTERNAL_ERROR;
+				err = -EINVAL;
 				goto ERR;
 			}
 		}
 		/* We do not support preview and video pipe at the same time */
 		if (preview_pipe && video_pipe) {
-			err = IA_CSS_ERR_INVALID_ARGUMENTS;
+			err = -EINVAL;
 			goto ERR;
 		}
 
 		if (preview_pipe && !preview_pipe->pipe_settings.preview.copy_pipe) {
 			err = create_pipe(IA_CSS_PIPE_MODE_CAPTURE, &copy_pipe, true);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 			ia_css_pipe_config_defaults(&copy_pipe->config);
 			preview_pipe->pipe_settings.preview.copy_pipe = copy_pipe;
@@ -9643,7 +9644,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 		}
 		if (video_pipe && !video_pipe->pipe_settings.video.copy_pipe) {
 			err = create_pipe(IA_CSS_PIPE_MODE_CAPTURE, &copy_pipe, true);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 			ia_css_pipe_config_defaults(&copy_pipe->config);
 			video_pipe->pipe_settings.video.copy_pipe = copy_pipe;
@@ -9669,7 +9670,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 			err = ia_css_util_check_res(
 				effective_res.width,
 				effective_res.height);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 		}
 		/* sensor binning per pipe */
@@ -9685,7 +9686,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 		curr_pipe = pipes[i];
 
 		err = sh_css_pipe_load_binaries(curr_pipe);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto ERR;
 
 		/* handle each pipe */
@@ -9693,7 +9694,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 		for (j = 0; j < IA_CSS_PIPE_MAX_OUTPUT_STAGE; j++) {
 			err = sh_css_pipe_get_output_frame_info(curr_pipe,
 								&pipe_info->output_info[j], j);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 		}
 
@@ -9708,16 +9709,16 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 				err = sh_css_pipe_get_shading_info(curr_pipe,
 								    &pipe_info->shading_info, &curr_pipe->config);
 
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 			err = sh_css_pipe_get_grid_info(curr_pipe,
 							&pipe_info->grid_info);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				goto ERR;
 			for (j = 0; j < IA_CSS_PIPE_MAX_OUTPUT_STAGE; j++) {
 				sh_css_pipe_get_viewfinder_frame_info(curr_pipe,
 									&pipe_info->vf_output_info[j], j);
-				if (err != IA_CSS_SUCCESS)
+				if (err)
 					goto ERR;
 			}
 		}
@@ -9729,7 +9730,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 
 	/* Map SP threads before doing anything. */
 	err = map_sp_threads(curr_stream, true);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LOG("map_sp_threads: return_err=%d", err);
 		goto ERR;
@@ -9743,7 +9744,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 
 	/* Create host side pipeline objects without stages */
 	err = create_host_pipeline_structure(curr_stream);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LOG("create_host_pipeline_structure: return_err=%d", err);
 		goto ERR;
@@ -9753,7 +9754,7 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	*stream = curr_stream;
 
 ERR:
-	if (err == IA_CSS_SUCCESS) {
+	if (!err) {
 		/* working mode: enter into the seed list */
 		if (my_css_save.mode == sh_css_mode_working) {
 			for (i = 0; i < MAX_ACTIVE_STREAMS; i++) {
@@ -9781,15 +9782,15 @@ ia_css_stream_create(const struct ia_css_stream_config *stream_config,
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_stream_destroy(struct ia_css_stream *stream) {
 	int i;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("stream = %p", stream);
 	if (!stream)
 	{
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
@@ -9812,7 +9813,7 @@ ia_css_stream_destroy(struct ia_css_stream *stream) {
 				/* get the SP thread id */
 				if (ia_css_pipeline_get_sp_thread_id(
 					ia_css_pipe_get_pipe_num(entry), &sp_thread_id) != true)
-					return IA_CSS_ERR_INTERNAL_ERROR;
+					return -EINVAL;
 				/* get the target input terminal */
 				sp_pipeline_input_terminal =
 				&sh_css_sp_group.pipe_io[sp_thread_id].input;
@@ -9853,7 +9854,7 @@ ia_css_stream_destroy(struct ia_css_stream *stream) {
 		}
 
 		err = map_sp_threads(stream, false);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -9905,7 +9906,7 @@ ia_css_stream_destroy(struct ia_css_stream *stream) {
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_stream_get_info(const struct ia_css_stream *stream,
 			struct ia_css_stream_info *stream_info) {
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_stream_get_info: enter/exit\n");
@@ -9913,7 +9914,7 @@ ia_css_stream_get_info(const struct ia_css_stream *stream,
 	assert(stream_info);
 
 	*stream_info = stream->info;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 /*
@@ -9922,11 +9923,11 @@ ia_css_stream_get_info(const struct ia_css_stream *stream,
     * The data is taken from the css_save struct updated upon stream creation.
     * The stream handle is used to identify the correct entry in the css_save struct
     */
-enum ia_css_err
+int
 ia_css_stream_load(struct ia_css_stream *stream) {
 	if (!atomisp_hw_is_isp2401) {
 		int i;
-		enum ia_css_err err;
+		int err;
 
 		assert(stream);
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,	"ia_css_stream_load() enter,\n");
@@ -9937,7 +9938,7 @@ ia_css_stream_load(struct ia_css_stream *stream) {
 
 				for (j = 0; j < my_css_save.stream_seeds[i].num_pipes; j++) {
 					if ((err = ia_css_pipe_create(&my_css_save.stream_seeds[i].pipe_config[j],
-								    &my_css_save.stream_seeds[i].pipes[j])) != IA_CSS_SUCCESS) {
+								    &my_css_save.stream_seeds[i].pipes[j])) != 0) {
 						if (j) {
 							int k;
 
@@ -9951,7 +9952,7 @@ ia_css_stream_load(struct ia_css_stream *stream) {
 							my_css_save.stream_seeds[i].num_pipes,
 							my_css_save.stream_seeds[i].pipes,
 							&my_css_save.stream_seeds[i].stream);
-				if (err != IA_CSS_SUCCESS) {
+				if (err) {
 					ia_css_stream_destroy(stream);
 					for (j = 0; j < my_css_save.stream_seeds[i].num_pipes; j++)
 						ia_css_pipe_destroy(my_css_save.stream_seeds[i].pipes[j]);
@@ -9961,23 +9962,23 @@ ia_css_stream_load(struct ia_css_stream *stream) {
 			}
 		}
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,	"ia_css_stream_load() exit,\n");
-		return IA_CSS_SUCCESS;
+		return 0;
 	} else {
 		/* TODO remove function - DEPRECATED */
 		(void)stream;
-		return IA_CSS_ERR_NOT_SUPPORTED;
+		return -ENOTSUPP;
 	}
 }
 
-enum ia_css_err
+int
 ia_css_stream_start(struct ia_css_stream *stream) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER("stream = %p", stream);
 	if ((!stream) || (!stream->last_pipe))
 	{
-		IA_CSS_LEAVE_ERR(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR(-EINVAL);
+		return -EINVAL;
 	}
 	IA_CSS_LOG("starting %d", stream->last_pipe->mode);
 
@@ -9985,7 +9986,7 @@ ia_css_stream_start(struct ia_css_stream *stream) {
 
 	/* Create host side pipeline. */
 	err = create_host_pipeline(stream);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 	{
 		IA_CSS_LEAVE_ERR(err);
 		return err;
@@ -10017,7 +10018,7 @@ ia_css_stream_start(struct ia_css_stream *stream) {
 	if (stream->config.mode != IA_CSS_INPUT_MODE_MEMORY)
 	{
 		err = sh_css_config_input_network(stream);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			return err;
 	}
 #endif /* !HAS_NO_INPUT_SYSTEM */
@@ -10027,9 +10028,9 @@ ia_css_stream_start(struct ia_css_stream *stream) {
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_stream_stop(struct ia_css_stream *stream) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_stream_stop() enter/exit\n");
 	assert(stream);
@@ -10056,7 +10057,7 @@ ia_css_stream_stop(struct ia_css_stream *stream) {
 		err = sh_css_pipes_stop(stream);
 	}
 
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 	/* Ideally, unmapping should happen after pipeline_stop, but current
@@ -10086,7 +10087,7 @@ ia_css_stream_has_stopped(struct ia_css_stream *stream) {
     * Destroy the stream and all the pipes related to it.
     * The stream handle is used to identify the correct entry in the css_save struct
     */
-enum ia_css_err
+int
 ia_css_stream_unload(struct ia_css_stream *stream) {
 	int i;
 
@@ -10111,10 +10112,10 @@ ia_css_stream_unload(struct ia_css_stream *stream) {
 			break;
 		}
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE,	"ia_css_stream_unload() exit,\n");
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err
+int
 ia_css_temp_pipe_to_pipe_id(const struct ia_css_pipe *pipe,
 			    enum ia_css_pipe_id *pipe_id) {
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_temp_pipe_to_pipe_id() enter/exit\n");
@@ -10123,7 +10124,7 @@ ia_css_temp_pipe_to_pipe_id(const struct ia_css_pipe *pipe,
 	else
 		*pipe_id = IA_CSS_PIPE_ID_COPY;
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 enum atomisp_input_format
@@ -10195,7 +10196,7 @@ ia_css_stream_get_3a_binary(const struct ia_css_stream *stream) {
 	return s3a_binary;
 }
 
-enum ia_css_err
+int
 ia_css_stream_set_output_padded_width(struct ia_css_stream *stream,
 					unsigned int output_padded_width) {
 	struct ia_css_pipe *pipe;
@@ -10210,7 +10211,7 @@ ia_css_stream_set_output_padded_width(struct ia_css_stream *stream,
 	pipe->config.output_info[IA_CSS_PIPE_OUTPUT_STAGE_0].padded_width = output_padded_width;
 	pipe->output_info[IA_CSS_PIPE_OUTPUT_STAGE_0].padded_width = output_padded_width;
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static struct ia_css_binary *
@@ -10358,10 +10359,10 @@ ia_css_pipe_get_isp_pipe_version(const struct ia_css_pipe *pipe) {
 
 #define SP_START_TIMEOUT_US 30000000
 
-enum ia_css_err
+int
 ia_css_start_sp(void) {
 	unsigned long timeout;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER("");
 	sh_css_sp_start_isp();
@@ -10376,7 +10377,7 @@ ia_css_start_sp(void) {
 	if (timeout == 0)
 	{
 		IA_CSS_ERROR("timeout during SP initialization");
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	}
 
 	/* Workaround, in order to run two streams in parallel. See TASK 4271*/
@@ -10401,16 +10402,16 @@ ia_css_start_sp(void) {
     */
 #define SP_SHUTDOWN_TIMEOUT_US 200000
 
-enum ia_css_err
+int
 ia_css_stop_sp(void) {
 	unsigned long timeout;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER("void");
 
 	if (!sh_css_sp_is_running())
 	{
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE("SP already stopped : return_err=%d", err);
 
 		/* Return an error - stop SP should not have been called by driver */
@@ -10466,7 +10467,7 @@ ia_css_stop_sp(void) {
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_update_continuous_frames(struct ia_css_stream *stream) {
 	struct ia_css_pipe *pipe;
 	unsigned int i;
@@ -10480,7 +10481,7 @@ ia_css_update_continuous_frames(struct ia_css_stream *stream) {
 		ia_css_debug_dtrace(
 		    IA_CSS_DEBUG_TRACE,
 		    "sh_css_update_continuous_frames() leave: invalid stream, return_void\n");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	pipe = stream->continuous_pipe;
@@ -10497,7 +10498,7 @@ ia_css_update_continuous_frames(struct ia_css_stream *stream) {
 	    IA_CSS_DEBUG_TRACE,
 	    "sh_css_update_continuous_frames() leave: return_void\n");
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 void ia_css_pipe_map_queue(struct ia_css_pipe *pipe, bool map)
@@ -10617,7 +10618,7 @@ void ia_css_pipe_map_queue(struct ia_css_pipe *pipe, bool map)
 }
 
 #if CONFIG_ON_FRAME_ENQUEUE()
-static enum ia_css_err set_config_on_frame_enqueue(struct ia_css_frame_info
+static int set_config_on_frame_enqueue(struct ia_css_frame_info
 	*info, struct frame_data_wrapper *frame) {
 	frame->config_on_frame_enqueue.padded_width = 0;
 
@@ -10629,7 +10630,7 @@ static enum ia_css_err set_config_on_frame_enqueue(struct ia_css_frame_info
 		if (info->padded_width > info->res.width) {
 			frame->config_on_frame_enqueue.padded_width = info->padded_width;
 		} else if ((info->padded_width < info->res.width) && (info->padded_width > 0)) {
-			return IA_CSS_ERR_INVALID_ARGUMENTS;
+			return -EINVAL;
 		}
 		/* nothing to do if width == padded width or padded width is zeroed (the same) */
 		break;
@@ -10637,13 +10638,13 @@ static enum ia_css_err set_config_on_frame_enqueue(struct ia_css_frame_info
 		break;
 	}
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 #endif
 
-enum ia_css_err
+int
 ia_css_unlock_raw_frame(struct ia_css_stream *stream, uint32_t exp_id) {
-	enum ia_css_err ret;
+	int ret;
 
 	IA_CSS_ENTER("");
 
@@ -10652,14 +10653,14 @@ ia_css_unlock_raw_frame(struct ia_css_stream *stream, uint32_t exp_id) {
 	if (!stream || !stream->config.continuous)
 	{
 		IA_CSS_ERROR("invalid stream pointer");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	if (exp_id > IA_CSS_ISYS_MAX_EXPOSURE_ID ||
 	    exp_id < IA_CSS_ISYS_MIN_EXPOSURE_ID)
 	{
 		IA_CSS_ERROR("invalid exposure ID: %d\n", exp_id);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	/* Send the event. Since we verified that the exp_id is valid,
@@ -10674,12 +10675,12 @@ ia_css_unlock_raw_frame(struct ia_css_stream *stream, uint32_t exp_id) {
 /* @brief	Set the state (Enable or Disable) of the Extension stage in the
     *		given pipe.
     */
-enum ia_css_err
+int
 ia_css_pipe_set_qos_ext_state(struct ia_css_pipe *pipe, uint32_t fw_handle,
 				bool enable) {
 	unsigned int thread_id;
 	struct ia_css_pipeline_stage *stage;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER("");
 
@@ -10687,28 +10688,28 @@ ia_css_pipe_set_qos_ext_state(struct ia_css_pipe *pipe, uint32_t fw_handle,
 	if (!pipe || !pipe->stream)
 	{
 		IA_CSS_ERROR("Invalid Pipe.");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	} else if (!(pipe->config.acc_extension))
 	{
 		IA_CSS_ERROR("Invalid Pipe(No Extension Firmware)");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	} else if (!sh_css_sp_is_running())
 	{
 		IA_CSS_ERROR("Leaving: queue unavailable.");
-		err = IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		err = -EBUSY;
 	} else
 	{
 		/* Query the threadid and stage_num for the Extension firmware*/
 		ia_css_pipeline_get_sp_thread_id(ia_css_pipe_get_pipe_num(pipe), &thread_id);
 		err = ia_css_pipeline_get_stage_from_fw(&pipe->pipeline, fw_handle, &stage);
-		if (err == IA_CSS_SUCCESS) {
+		if (!err) {
 			/* Set the Extension State;. TODO: Add check for stage firmware.type (QOS)*/
 			err = ia_css_bufq_enqueue_psys_event(
 			    (uint8_t)IA_CSS_PSYS_SW_EVENT_STAGE_ENABLE_DISABLE,
 			    (uint8_t)thread_id,
 			    (uint8_t)stage->stage_num,
 			    enable ? 1 : 0);
-			if (err == IA_CSS_SUCCESS) {
+			if (!err) {
 				if (enable)
 					SH_CSS_QOS_STAGE_ENABLE(&sh_css_sp_group.pipe[thread_id], stage->stage_num);
 				else
@@ -10723,12 +10724,12 @@ ia_css_pipe_set_qos_ext_state(struct ia_css_pipe *pipe, uint32_t fw_handle,
 /*	@brief	Get the state (Enable or Disable) of the Extension stage in the
     *	given pipe.
     */
-enum ia_css_err
+int
 ia_css_pipe_get_qos_ext_state(struct ia_css_pipe *pipe, uint32_t fw_handle,
 				bool *enable) {
 	struct ia_css_pipeline_stage *stage;
 	unsigned int thread_id;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER("");
 
@@ -10736,22 +10737,22 @@ ia_css_pipe_get_qos_ext_state(struct ia_css_pipe *pipe, uint32_t fw_handle,
 	if (!pipe || !pipe->stream)
 	{
 		IA_CSS_ERROR("Invalid Pipe.");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	} else if (!(pipe->config.acc_extension))
 	{
 		IA_CSS_ERROR("Invalid Pipe (No Extension Firmware).");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	} else if (!sh_css_sp_is_running())
 	{
 		IA_CSS_ERROR("Leaving: queue unavailable.");
-		err = IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		err = -EBUSY;
 	} else
 	{
 		/* Query the threadid and stage_num corresponding to the Extension firmware*/
 		ia_css_pipeline_get_sp_thread_id(ia_css_pipe_get_pipe_num(pipe), &thread_id);
 		err = ia_css_pipeline_get_stage_from_fw(&pipe->pipeline, fw_handle, &stage);
 
-		if (err == IA_CSS_SUCCESS) {
+		if (!err) {
 			/* Get the Extension State */
 			*enable = (SH_CSS_QOS_STAGE_IS_ENABLED(&sh_css_sp_group.pipe[thread_id],
 								stage->stage_num)) ? true : false;
@@ -10762,7 +10763,7 @@ ia_css_pipe_get_qos_ext_state(struct ia_css_pipe *pipe, uint32_t fw_handle,
 }
 
 /* ISP2401 */
-enum ia_css_err
+int
 ia_css_pipe_update_qos_ext_mapped_arg(struct ia_css_pipe *pipe,
 					u32 fw_handle,
 					struct ia_css_isp_param_css_segments *css_seg,
@@ -10774,7 +10775,7 @@ ia_css_pipe_update_qos_ext_mapped_arg(struct ia_css_pipe *pipe,
 	const struct ia_css_fw_info *fw;
 	unsigned int thread_id;
 	struct ia_css_pipeline_stage *stage;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	int stage_num = 0;
 	enum ia_css_isp_memories mem;
 	bool enabled;
@@ -10787,28 +10788,28 @@ ia_css_pipe_update_qos_ext_mapped_arg(struct ia_css_pipe *pipe,
 	if (!pipe || !pipe->stream)
 	{
 		IA_CSS_ERROR("Invalid Pipe.");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	} else if (!(pipe->config.acc_extension))
 	{
 		IA_CSS_ERROR("Invalid Pipe (No Extension Firmware).");
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	} else if (!sh_css_sp_is_running())
 	{
 		IA_CSS_ERROR("Leaving: queue unavailable.");
-		err = IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+		err = -EBUSY;
 	} else
 	{
 		/* Query the thread_id and stage_num corresponding to the Extension firmware */
 		ia_css_pipeline_get_sp_thread_id(ia_css_pipe_get_pipe_num(pipe), &thread_id);
 		err = ia_css_pipeline_get_stage_from_fw(&pipe->pipeline, fw_handle, &stage);
-		if (err == IA_CSS_SUCCESS) {
+		if (!err) {
 			/* Get the Extension State */
 			enabled = (SH_CSS_QOS_STAGE_IS_ENABLED(&sh_css_sp_group.pipe[thread_id],
 								stage->stage_num)) ? true : false;
 			/* Update mapped arg only when extension stage is not enabled */
 			if (enabled) {
 				IA_CSS_ERROR("Leaving: cannot update when stage is enabled.");
-				err = IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+				err = -EBUSY;
 			} else {
 				stage_num = stage->stage_num;
 
@@ -10845,11 +10846,11 @@ ia_css_pipe_update_qos_ext_mapped_arg(struct ia_css_pipe *pipe,
 }
 
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
-static enum ia_css_err
+static int
 aspect_ratio_crop_init(struct ia_css_stream *curr_stream,
 			struct ia_css_pipe *pipes[],
 			bool *do_crop_status) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	int i;
 	struct ia_css_pipe *curr_pipe;
 	u32 pipe_mask = 0;
@@ -10859,7 +10860,7 @@ aspect_ratio_crop_init(struct ia_css_stream *curr_stream,
 	    (!pipes) ||
 	    (!do_crop_status))
 	{
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
 	}
@@ -10875,7 +10876,7 @@ aspect_ratio_crop_init(struct ia_css_stream *curr_stream,
 	    (pipe_mask & (1 << IA_CSS_PIPE_MODE_VIDEO))) &&
 	    (pipe_mask & (1 << IA_CSS_PIPE_MODE_CAPTURE)) &&
 	    curr_stream->config.continuous);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static bool
@@ -10892,10 +10893,10 @@ aspect_ratio_crop_check(bool enabled, struct ia_css_pipe *curr_pipe) {
 	return status;
 }
 
-static enum ia_css_err
+static int
 aspect_ratio_crop(struct ia_css_pipe *curr_pipe,
 		    struct ia_css_resolution *effective_res) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_resolution crop_res;
 	struct ia_css_resolution *in_res = NULL;
 	struct ia_css_resolution *out_res = NULL;
@@ -10906,7 +10907,7 @@ aspect_ratio_crop(struct ia_css_pipe *curr_pipe,
 	if ((!curr_pipe) ||
 	    (!effective_res))
 	{
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
 	}
@@ -10915,7 +10916,7 @@ aspect_ratio_crop(struct ia_css_pipe *curr_pipe,
 	    (curr_pipe->config.mode != IA_CSS_PIPE_MODE_VIDEO) &&
 	    (curr_pipe->config.mode != IA_CSS_PIPE_MODE_CAPTURE))
 	{
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR(err);
 		return err;
 	}
@@ -10962,7 +10963,7 @@ aspect_ratio_crop(struct ia_css_pipe *curr_pipe,
 	}
 
 	err = ia_css_frame_find_crop_resolution(in_res, out_res, &crop_res);
-	if (err == IA_CSS_SUCCESS)
+	if (!err)
 	{
 		*effective_res = crop_res;
 	} else
diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index ddeb953a93cf..5009f47abf01 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -75,13 +75,13 @@ char *sh_css_get_fw_version(void)
  */
 
 /* Setup sp/sp1 binary */
-static enum ia_css_err
+static int
 setup_binary(struct ia_css_fw_info *fw, const char *fw_data,
 	     struct ia_css_fw_info *sh_css_fw, unsigned int binary_id) {
 	const char *blob_data;
 
 	if ((!fw) || (!fw_data))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	blob_data = fw_data + fw->blob.offset;
 
@@ -89,16 +89,16 @@ setup_binary(struct ia_css_fw_info *fw, const char *fw_data,
 
 	sh_css_fw->blob.code = vmalloc(fw->blob.size);
 	if (!sh_css_fw->blob.code)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 
 	memcpy((void *)sh_css_fw->blob.code, blob_data, fw->blob.size);
 	sh_css_fw->blob.data = (char *)sh_css_fw->blob.code + fw->blob.data_source;
 	fw_minibuffer[binary_id].buffer = sh_css_fw->blob.code;
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err
+int
 sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 		      struct ia_css_blob_descr *bd,
 		      unsigned int index) {
@@ -106,7 +106,7 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 	const unsigned char *blob;
 
 	if ((!fw) || (!bd))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	/* Special case: only one binary in fw */
 	if (!bi) bi = (const struct ia_css_fw_info *)fw;
@@ -118,11 +118,11 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 	if (bi->blob.size != bi->blob.text_size + bi->blob.icache_size + bi->blob.data_size + bi->blob.padding_size)
 	{
 		/* sanity check, note the padding bytes added for section to DDR alignment */
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	if ((bi->blob.offset % (1UL << (ISP_PMEM_WIDTH_LOG2 - 3))) != 0)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	bd->blob = blob;
 	bd->header = *bi;
@@ -133,7 +133,7 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 
 		namebuffer = kstrdup(name, GFP_KERNEL);
 		if (!namebuffer)
-			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			return -ENOMEM;
 		bd->name = fw_minibuffer[index].name = namebuffer;
 	} else
 	{
@@ -150,7 +150,7 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 					 statestruct_size,
 					 GFP_KERNEL);
 		if (!parambuf)
-			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			return -ENOMEM;
 
 		bd->mem_offsets.array[IA_CSS_PARAM_CLASS_PARAM].ptr = NULL;
 		bd->mem_offsets.array[IA_CSS_PARAM_CLASS_CONFIG].ptr = NULL;
@@ -178,7 +178,7 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 		bd->mem_offsets.array[IA_CSS_PARAM_CLASS_STATE].ptr = parambuf +
 		paramstruct_size + configstruct_size;
 	}
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 bool
@@ -206,7 +206,7 @@ sh_css_check_firmware_version(struct device *dev, const char *fw_data)
 	return 0;
 }
 
-enum ia_css_err
+int
 sh_css_load_firmware(struct device *dev, const char *fw_data,
 		     unsigned int fw_size) {
 	unsigned int i;
@@ -228,17 +228,17 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 	if (ret) {
 		IA_CSS_ERROR("CSS code version (%s) and firmware version (%s) mismatch!",
 			     file_header->version, release_version);
-		return IA_CSS_ERR_VERSION_MISMATCH;
+		return -EINVAL;
 	} else {
 		IA_CSS_LOG("successfully load firmware version %s", release_version);
 	}
 
 	/* some sanity checks */
 	if (!fw_data || fw_size < sizeof(struct sh_css_fw_bi_file_h))
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 
 	if (file_header->h_size != sizeof(struct sh_css_fw_bi_file_h))
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 
 	sh_css_num_binaries = file_header->binary_nr;
 	/* Only allocate memory for ISP blob info */
@@ -248,7 +248,7 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 		    (sh_css_num_binaries - NUM_OF_SPS) *
 		    sizeof(*sh_css_blob_info), GFP_KERNEL);
 		if (!sh_css_blob_info)
-			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			return -ENOMEM;
 	} else {
 		sh_css_blob_info = NULL;
 	}
@@ -256,7 +256,7 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 	fw_minibuffer = kcalloc(sh_css_num_binaries, sizeof(struct fw_param),
 				GFP_KERNEL);
 	if (!fw_minibuffer)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 
 	for (i = 0; i < sh_css_num_binaries; i++)
 	{
@@ -266,36 +266,36 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 		   cause issues for drivers
 		*/
 		static struct ia_css_blob_descr bd;
-		enum ia_css_err err;
+		int err;
 
 		err = sh_css_load_blob_info(fw_data, bi, &bd, i);
 
-		if (err != IA_CSS_SUCCESS)
-			return IA_CSS_ERR_INTERNAL_ERROR;
+		if (err)
+			return -EINVAL;
 
 		if (bi->blob.offset + bi->blob.size > fw_size)
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 
 		if (bi->type == ia_css_sp_firmware) {
 			if (i != SP_FIRMWARE)
-				return IA_CSS_ERR_INTERNAL_ERROR;
+				return -EINVAL;
 			err = setup_binary(bi, fw_data, &sh_css_sp_fw, i);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				return err;
 		} else {
 			/* All subsequent binaries (including bootloaders) (i>NUM_OF_SPS) are ISP firmware */
 			if (i < NUM_OF_SPS)
-				return IA_CSS_ERR_INTERNAL_ERROR;
+				return -EINVAL;
 
 			if (bi->type != ia_css_isp_firmware)
-				return IA_CSS_ERR_INTERNAL_ERROR;
+				return -EINVAL;
 			if (!sh_css_blob_info) /* cannot happen but KW does not see this */
-				return IA_CSS_ERR_INTERNAL_ERROR;
+				return -EINVAL;
 			sh_css_blob_info[i - NUM_OF_SPS] = bd;
 		}
 	}
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 void sh_css_unload_firmware(void)
diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.h b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
index 75648e4b975e..68f389dcf3fc 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
@@ -40,7 +40,7 @@ char
 bool
 sh_css_check_firmware_version(struct device *dev, const char *fw_data);
 
-enum ia_css_err
+int
 sh_css_load_firmware(struct device *dev, const char *fw_data,
 		     unsigned int fw_size);
 
@@ -48,7 +48,7 @@ void sh_css_unload_firmware(void);
 
 ia_css_ptr sh_css_load_blob(const unsigned char *blob, unsigned int size);
 
-enum ia_css_err
+int
 sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi,
 		      struct ia_css_blob_descr *bd, unsigned int i);
 
diff --git a/drivers/staging/media/atomisp/pci/sh_css_hrt.c b/drivers/staging/media/atomisp/pci/sh_css_hrt.c
index 94b2de5b5ef4..c4935568d550 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_hrt.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_hrt.c
@@ -61,7 +61,7 @@ bool sh_css_hrt_system_is_idle(void)
 	return !not_idle;
 }
 
-enum ia_css_err sh_css_hrt_sp_wait(void)
+int sh_css_hrt_sp_wait(void)
 {
 #if defined(HAS_IRQ_MAP_VERSION_2)
 	irq_sw_channel_id_t	irq_id = IRQ_SW_CHANNEL0_ID;
@@ -81,5 +81,5 @@ enum ia_css_err sh_css_hrt_sp_wait(void)
 		hrt_sleep();
 	}
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
diff --git a/drivers/staging/media/atomisp/pci/sh_css_hrt.h b/drivers/staging/media/atomisp/pci/sh_css_hrt.h
index fd23ed1848ec..c36908f911dd 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_hrt.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_hrt.h
@@ -27,7 +27,7 @@ void sh_css_hrt_sp_start_copy_frame(void);
 
 void sh_css_hrt_sp_start_isp(void);
 
-enum ia_css_err sh_css_hrt_sp_wait(void);
+int sh_css_hrt_sp_wait(void);
 
 bool sh_css_hrt_system_is_idle(void);
 
diff --git a/drivers/staging/media/atomisp/pci/sh_css_internal.h b/drivers/staging/media/atomisp/pci/sh_css_internal.h
index 272c758dde5d..feb65ca53c6a 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_internal.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_internal.h
@@ -962,7 +962,7 @@ sh_css_vprint(const char *fmt, va_list args)
 */
 ia_css_ptr sh_css_params_ddr_address_map(void);
 
-enum ia_css_err
+int
 sh_css_params_init(void);
 
 void
diff --git a/drivers/staging/media/atomisp/pci/sh_css_legacy.h b/drivers/staging/media/atomisp/pci/sh_css_legacy.h
index 99ac690ba7aa..00d9a6c59871 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_legacy.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_legacy.h
@@ -45,7 +45,7 @@ struct ia_css_pipe_extra_config {
 	bool disable_vf_pp;
 };
 
-enum ia_css_err
+int
 ia_css_pipe_create_extra(const struct ia_css_pipe_config *config,
 			 const struct ia_css_pipe_extra_config *extra_config,
 			 struct ia_css_pipe **pipe);
@@ -54,12 +54,12 @@ void
 ia_css_pipe_extra_config_defaults(struct ia_css_pipe_extra_config
 				  *extra_config);
 
-enum ia_css_err
+int
 ia_css_temp_pipe_to_pipe_id(const struct ia_css_pipe *pipe,
 			    enum ia_css_pipe_id *pipe_id);
 
 /* DEPRECATED. FPN is not supported. */
-enum ia_css_err
+int
 sh_css_set_black_frame(struct ia_css_stream *stream,
 		       const struct ia_css_frame *raw_black_frame);
 
diff --git a/drivers/staging/media/atomisp/pci/sh_css_mipi.c b/drivers/staging/media/atomisp/pci/sh_css_mipi.c
index 35cbef5f9f71..b0c9880e9fc5 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_mipi.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_mipi.c
@@ -34,10 +34,10 @@ static u32
 ref_count_mipi_allocation[N_CSI_PORTS]; /* Initialized in mipi_init */
 #endif
 
-enum ia_css_err
+int
 ia_css_mipi_frame_specify(const unsigned int size_mem_words,
 			  const bool contiguous) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	my_css.size_mem_words = size_mem_words;
 	(void)contiguous;
@@ -97,14 +97,14 @@ static bool ia_css_mipi_is_source_port_valid(struct ia_css_pipe *pipe,
  *  etc.).
  * Result is given in DDR mem words, 32B or 256 bits
  */
-enum ia_css_err
+int
 ia_css_mipi_frame_calculate_size(const unsigned int width,
 				 const unsigned int height,
 				 const enum atomisp_input_format format,
 				 const bool hasSOLandEOL,
 				 const unsigned int embedded_data_size_words,
 				 unsigned int *size_mem_words) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	unsigned int bits_per_pixel = 0;
 	unsigned int even_line_bytes = 0;
@@ -182,7 +182,7 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
 	case ATOMISP_INPUT_FORMAT_YUV422_16:		/* Not supported */
 	case ATOMISP_INPUT_FORMAT_RAW_16:		/* TODO: not specified in MIPI SPEC, check */
 	default:
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	odd_line_bytes = (width_padded * bits_per_pixel + 7) >> 3; /* ceil ( bits per line / 8) */
@@ -246,12 +246,12 @@ ia_css_mipi_frame_calculate_size(const unsigned int width,
 }
 
 #if !defined(HAS_NO_INPUT_SYSTEM) && defined(USE_INPUT_SYSTEM_VERSION_2)
-enum ia_css_err
+int
 ia_css_mipi_frame_enable_check_on_size(const enum mipi_port_id port,
 				       const unsigned int	size_mem_words) {
 	u32 idx;
 
-	enum ia_css_err err = IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+	int err = -EBUSY;
 
 	OP___assert(port < N_CSI_PORTS);
 	OP___assert(size_mem_words != 0);
@@ -264,7 +264,7 @@ ia_css_mipi_frame_enable_check_on_size(const enum mipi_port_id port,
 	if (idx < IA_CSS_MIPI_SIZE_CHECK_MAX_NOF_ENTRIES_PER_PORT)
 	{
 		my_css.mipi_sizes_for_check[port][idx] = size_mem_words;
-		err = IA_CSS_SUCCESS;
+		err = 0;
 	}
 
 	return err;
@@ -282,12 +282,12 @@ mipi_init(void)
 #endif
 }
 
-enum ia_css_err
+int
 calculate_mipi_buff_size(
     struct ia_css_stream_config *stream_cfg,
     unsigned int *size_mem_words) {
 #if !defined(USE_INPUT_SYSTEM_VERSION_2401)
-	enum ia_css_err err = IA_CSS_ERR_INTERNAL_ERROR;
+	int err = -EINVAL;
 	(void)stream_cfg;
 	(void)size_mem_words;
 #else
@@ -310,7 +310,7 @@ calculate_mipi_buff_size(
 
 	unsigned int mem_words_per_buff_line = 0;
 	unsigned int mem_words_per_buff = 0;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	/**
 	 * zhengjie.lu@intel.com
@@ -354,7 +354,7 @@ calculate_mipi_buff_size(
 	bits_per_pixel =
 	(format == ATOMISP_INPUT_FORMAT_RAW_10 && pack_raw_pixels) ? bits_per_pixel : 16;
 	if (bits_per_pixel == 0)
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 
 	odd_line_bytes = (width_padded * bits_per_pixel + 7) >> 3; /* ceil ( bits per line / 8) */
 
@@ -405,11 +405,11 @@ static bool buffers_needed(struct ia_css_pipe *pipe)
 	return true;
 }
 
-enum ia_css_err
+int
 allocate_mipi_frames(struct ia_css_pipe *pipe,
 		     struct ia_css_stream_info *info) {
 #if defined(USE_INPUT_SYSTEM_VERSION_2) || defined(USE_INPUT_SYSTEM_VERSION_2401)
-	enum ia_css_err err = IA_CSS_ERR_INTERNAL_ERROR;
+	int err = -EINVAL;
 	unsigned int port;
 	struct ia_css_frame_info mipi_intermediate_info;
 
@@ -423,7 +423,7 @@ allocate_mipi_frames(struct ia_css_pipe *pipe,
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 				    "allocate_mipi_frames(%p) exit: pipe or stream is null.\n",
 				    pipe);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
@@ -432,7 +432,7 @@ allocate_mipi_frames(struct ia_css_pipe *pipe,
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 				    "allocate_mipi_frames(%p) exit: no buffers needed for 2401 pipe mode.\n",
 				    pipe);
-		return IA_CSS_SUCCESS;
+		return 0;
 	}
 
 #endif
@@ -441,7 +441,7 @@ allocate_mipi_frames(struct ia_css_pipe *pipe,
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 				    "allocate_mipi_frames(%p) exit: no buffers needed for pipe mode.\n",
 				    pipe);
-		return IA_CSS_SUCCESS; /* AM TODO: Check  */
+		return 0; /* AM TODO: Check  */
 	}
 
 	if (!atomisp_hw_is_isp2401)
@@ -455,7 +455,7 @@ allocate_mipi_frames(struct ia_css_pipe *pipe,
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 				    "allocate_mipi_frames(%p) exit: error: port is not correct (port=%d).\n",
 				    pipe, port);
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	}
 
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
@@ -470,7 +470,7 @@ allocate_mipi_frames(struct ia_css_pipe *pipe,
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 				    "allocate_mipi_frames(%p) exit: already allocated for this port (port=%d).\n",
 				    pipe, port);
-		return IA_CSS_SUCCESS;
+		return 0;
 	}
 #else
 	/* 2401 system allows multiple streams to use same physical port. This is not
@@ -484,7 +484,7 @@ allocate_mipi_frames(struct ia_css_pipe *pipe,
 		ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 				    "allocate_mipi_frames(%p) leave: nothing to do, already allocated for this port (port=%d).\n",
 				    pipe, port);
-		return IA_CSS_SUCCESS;
+		return 0;
 	}
 #endif
 
@@ -522,7 +522,7 @@ allocate_mipi_frames(struct ia_css_pipe *pipe,
 					  &my_css.mipi_frames[port][i],
 					  my_css.mipi_frame_size[port] * HIVE_ISP_DDR_WORD_BYTES,
 					  false);
-				if (err != IA_CSS_SUCCESS) {
+				if (err) {
 					for (j = 0; j < i; j++) {
 						if (my_css.mipi_frames[port][j]) {
 							ia_css_frame_free(my_css.mipi_frames[port][j]);
@@ -562,14 +562,14 @@ allocate_mipi_frames(struct ia_css_pipe *pipe,
 #else
 	(void)pipe;
 	(void)info;
-	return IA_CSS_SUCCESS;
+	return 0;
 #endif
 }
 
-enum ia_css_err
+int
 free_mipi_frames(struct ia_css_pipe *pipe) {
 #if defined(USE_INPUT_SYSTEM_VERSION_2) || defined(USE_INPUT_SYSTEM_VERSION_2401)
-	enum ia_css_err err = IA_CSS_ERR_INTERNAL_ERROR;
+	int err = -EINVAL;
 	unsigned int port;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
@@ -583,7 +583,7 @@ free_mipi_frames(struct ia_css_pipe *pipe) {
 			ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
 					    "free_mipi_frames(%p) exit: error: pipe or stream is null.\n",
 					    pipe);
-			return IA_CSS_ERR_INVALID_ARGUMENTS;
+			return -EINVAL;
 		}
 
 		if (!buffers_needed(pipe)) {
@@ -677,13 +677,13 @@ free_mipi_frames(struct ia_css_pipe *pipe) {
 #else
 	(void)pipe;
 #endif
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err
+int
 send_mipi_frames(struct ia_css_pipe *pipe) {
 #if defined(USE_INPUT_SYSTEM_VERSION_2) || defined(USE_INPUT_SYSTEM_VERSION_2401)
-	enum ia_css_err err = IA_CSS_ERR_INTERNAL_ERROR;
+	int err = -EINVAL;
 	unsigned int i;
 #ifndef ISP2401
 	unsigned int port;
@@ -698,14 +698,14 @@ send_mipi_frames(struct ia_css_pipe *pipe) {
 	if (!pipe || !pipe->stream)
 	{
 		IA_CSS_ERROR("pipe or stream is null");
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	/* multi stream video needs mipi buffers */
 	/* nothing to be done in other cases. */
 	if (!buffers_needed(pipe)) {
 		IA_CSS_LOG("nothing to be done for this mode");
-		return IA_CSS_SUCCESS;
+		return 0;
 		/* TODO: AM: maybe this should be returning an error. */
 	}
 
@@ -749,9 +749,9 @@ send_mipi_frames(struct ia_css_pipe *pipe) {
 	    (uint8_t)port,
 	    (uint8_t)my_css.num_mipi_frames[port],
 	    0 /* not used */);
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
 #else
 	(void)pipe;
 #endif
-	return IA_CSS_SUCCESS;
+	return 0;
 }
diff --git a/drivers/staging/media/atomisp/pci/sh_css_mipi.h b/drivers/staging/media/atomisp/pci/sh_css_mipi.h
index ab38589d6457..57af22bb531c 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_mipi.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_mipi.h
@@ -22,13 +22,13 @@
 void
 mipi_init(void);
 
-enum ia_css_err
+int
 allocate_mipi_frames(struct ia_css_pipe *pipe, struct ia_css_stream_info *info);
 
-enum ia_css_err
+int
 free_mipi_frames(struct ia_css_pipe *pipe);
 
-enum ia_css_err
+int
 send_mipi_frames(struct ia_css_pipe *pipe);
 
 /**
@@ -41,7 +41,7 @@ send_mipi_frames(struct ia_css_pipe *pipe);
  *
  * @return
  */
-enum ia_css_err
+int
 calculate_mipi_buff_size(
     struct ia_css_stream_config *stream_cfg,
     unsigned int *size_mem_words);
diff --git a/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c b/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c
index e8ef69309d92..9c2125c5bc2d 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_param_dvs.c
@@ -27,14 +27,14 @@ alloc_dvs_6axis_table(const struct ia_css_resolution *frame_res,
 	unsigned int height_y = 0;
 	unsigned int width_uv = 0;
 	unsigned int height_uv = 0;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_dvs_6axis_config  *dvs_config = NULL;
 
 	dvs_config = kvmalloc(sizeof(struct ia_css_dvs_6axis_config),
 			      GFP_KERNEL);
 	if (!dvs_config)	{
 		IA_CSS_ERROR("out of memory");
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 	} else {
 		/*Initialize new struct with latest config settings*/
 		if (dvs_config_src) {
@@ -61,7 +61,7 @@ alloc_dvs_6axis_table(const struct ia_css_resolution *frame_res,
 						 GFP_KERNEL);
 		if (!dvs_config->xcoords_y) {
 			IA_CSS_ERROR("out of memory");
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 			goto exit;
 		}
 
@@ -69,7 +69,7 @@ alloc_dvs_6axis_table(const struct ia_css_resolution *frame_res,
 						 GFP_KERNEL);
 		if (!dvs_config->ycoords_y) {
 			IA_CSS_ERROR("out of memory");
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 			goto exit;
 		}
 
@@ -80,7 +80,7 @@ alloc_dvs_6axis_table(const struct ia_css_resolution *frame_res,
 						  GFP_KERNEL);
 		if (!dvs_config->xcoords_uv) {
 			IA_CSS_ERROR("out of memory");
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 			goto exit;
 		}
 
@@ -88,10 +88,10 @@ alloc_dvs_6axis_table(const struct ia_css_resolution *frame_res,
 						  GFP_KERNEL);
 		if (!dvs_config->ycoords_uv) {
 			IA_CSS_ERROR("out of memory");
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 		}
 exit:
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			free_dvs_6axis_table(
 			    &dvs_config); /* we might have allocated some memory, release this */
 			dvs_config = NULL;
diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
index ea5ce1221f5c..98a2b77da62b 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
@@ -1227,20 +1227,20 @@ struct ia_css_isp_skc_dvs_statistics {
 	ia_css_ptr p_data;
 };
 
-static enum ia_css_err
+static int
 ref_sh_css_ddr_address_map(
     struct sh_css_ddr_address_map *map,
     struct sh_css_ddr_address_map *out);
 
-static enum ia_css_err
+static int
 write_ia_css_isp_parameter_set_info_to_ddr(
     struct ia_css_isp_parameter_set_info *me,
     ia_css_ptr *out);
 
-static enum ia_css_err
+static int
 free_ia_css_isp_parameter_set_info(ia_css_ptr ptr);
 
-static enum ia_css_err
+static int
 sh_css_params_write_to_ddr_internal(
     struct ia_css_pipe *pipe,
     unsigned int pipe_id,
@@ -1249,7 +1249,7 @@ sh_css_params_write_to_ddr_internal(
     struct sh_css_ddr_address_map *ddr_map,
     struct sh_css_ddr_address_map_size *ddr_map_size);
 
-static enum ia_css_err
+static int
 sh_css_create_isp_params(struct ia_css_stream *stream,
 			 struct ia_css_isp_parameters **isp_params_out);
 
@@ -1259,27 +1259,27 @@ sh_css_init_isp_params_from_global(struct ia_css_stream *stream,
 				   bool use_default_config,
 				   struct ia_css_pipe *pipe_in);
 
-static enum ia_css_err
+static int
 sh_css_init_isp_params_from_config(struct ia_css_pipe *pipe,
 				   struct ia_css_isp_parameters *params,
 				   const struct ia_css_isp_config *config,
 				   struct ia_css_pipe *pipe_in);
 
-static enum ia_css_err
+static int
 sh_css_set_global_isp_config_on_pipe(
     struct ia_css_pipe *curr_pipe,
     const struct ia_css_isp_config *config,
     struct ia_css_pipe *pipe);
 
 #if defined(SH_CSS_ENABLE_PER_FRAME_PARAMS)
-static enum ia_css_err
+static int
 sh_css_set_per_frame_isp_config_on_pipe(
     struct ia_css_stream *stream,
     const struct ia_css_isp_config *config,
     struct ia_css_pipe *pipe);
 #endif
 
-static enum ia_css_err
+static int
 sh_css_update_uds_and_crop_info_based_on_zoom_region(
     const struct ia_css_binary_info *info,
     const struct ia_css_frame_info *in_frame_info,
@@ -1349,7 +1349,7 @@ convert_allocate_fpntbl(struct ia_css_isp_parameters *params)
 	return me;
 }
 
-static enum ia_css_err
+static int
 store_fpntbl(struct ia_css_isp_parameters *params, ia_css_ptr ptr) {
 	struct ia_css_host_data *isp_data;
 
@@ -1359,13 +1359,13 @@ store_fpntbl(struct ia_css_isp_parameters *params, ia_css_ptr ptr) {
 	isp_data = convert_allocate_fpntbl(params);
 	if (!isp_data)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+		return -ENOMEM;
 	}
 	ia_css_params_store_ia_css_host_data(ptr, isp_data);
 
 	ia_css_host_data_free(isp_data);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void
@@ -1429,10 +1429,10 @@ ia_css_process_kernel(struct ia_css_stream *stream,
 	}
 }
 
-static enum ia_css_err
+static int
 sh_css_select_dp_10bpp_config(const struct ia_css_pipe *pipe,
 			      bool *is_dp_10bpp) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	/* Currently we check if 10bpp DPC configuration is required based
 	 * on the use case,i.e. if BDS and DPC is both enabled. The more cleaner
 	 * design choice would be to expose the type of DPC (either 10bpp or 13bpp)
@@ -1442,8 +1442,8 @@ sh_css_select_dp_10bpp_config(const struct ia_css_pipe *pipe,
 	 */
 	if ((!pipe) || (!is_dp_10bpp))
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
-		err = IA_CSS_ERR_INTERNAL_ERROR;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		err = -EINVAL;
 	} else
 	{
 		*is_dp_10bpp = false;
@@ -1455,7 +1455,7 @@ sh_css_select_dp_10bpp_config(const struct ia_css_pipe *pipe,
 
 			if ((pipe->config.bayer_ds_out_res.width != 0) &&
 			    (pipe->config.bayer_ds_out_res.height != 0)) {
-				if (IA_CSS_SUCCESS == binarydesc_calculate_bds_factor(
+				if (0 == binarydesc_calculate_bds_factor(
 					pipe->config.input_effective_res,
 					pipe->config.bayer_ds_out_res,
 					&required_bds_factor)) {
@@ -1471,7 +1471,7 @@ sh_css_select_dp_10bpp_config(const struct ia_css_pipe *pipe,
 	return err;
 }
 
-enum ia_css_err
+int
 sh_css_set_black_frame(struct ia_css_stream *stream,
 		       const struct ia_css_frame *raw_black_frame) {
 	struct ia_css_isp_parameters *params;
@@ -1505,8 +1505,8 @@ sh_css_set_black_frame(struct ia_css_stream *stream,
 						   sizeof(short), GFP_KERNEL);
 		if (!params->fpn_config.data) {
 			IA_CSS_ERROR("out of memory");
-			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+			return -ENOMEM;
 		}
 		params->fpn_config.width = width;
 		params->fpn_config.height = height;
@@ -1544,9 +1544,9 @@ sh_css_set_black_frame(struct ia_css_stream *stream,
 	/* overwrite isp parameter */
 	ia_css_process_kernel(stream, params, ia_css_kernel_process_param[IA_CSS_FPN_ID]);
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 bool
@@ -1675,7 +1675,7 @@ ia_css_params_alloc_convert_sctbl(
 	return sctbl;
 }
 
-enum ia_css_err ia_css_params_store_sctbl(
+int ia_css_params_store_sctbl(
     const struct ia_css_pipeline_stage *stage,
     ia_css_ptr sc_tbl,
     const struct ia_css_shading_table  *sc_config)
@@ -1686,13 +1686,13 @@ enum ia_css_err ia_css_params_store_sctbl(
 
 	if (!sc_config) {
 		IA_CSS_LEAVE_PRIVATE("void");
-		return IA_CSS_SUCCESS;
+		return 0;
 	}
 
 	isp_sc_tbl = ia_css_params_alloc_convert_sctbl(stage, sc_config);
 	if (!isp_sc_tbl) {
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+		return -ENOMEM;
 	}
 	/* store the shading table to ddr */
 	ia_css_params_store_ia_css_host_data(sc_tbl, isp_sc_tbl);
@@ -1700,7 +1700,7 @@ enum ia_css_err ia_css_params_store_sctbl(
 
 	IA_CSS_LEAVE_PRIVATE("void");
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void
@@ -1716,13 +1716,13 @@ sh_css_enable_pipeline(const struct ia_css_binary *binary)
 	IA_CSS_LEAVE_PRIVATE("void");
 }
 
-static enum ia_css_err
+static int
 ia_css_process_zoom_and_motion(
     struct ia_css_isp_parameters *params,
     const struct ia_css_pipeline_stage *first_stage) {
 	/* first_stage can be  NULL */
 	const struct ia_css_pipeline_stage *stage;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_resolution pipe_in_res;
 
 	pipe_in_res.width = 0;
@@ -1798,7 +1798,7 @@ ia_css_process_zoom_and_motion(
 				  &params->uds[stage->stage_num].crop_pos,
 				  pipe_in_res,
 				  stage->enable_zoom);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				return err;
 		}
 	}
@@ -1965,7 +1965,7 @@ struct ia_css_morph_table *ia_css_morph_table_allocate(
 	return me;
 }
 
-static enum ia_css_err sh_css_params_default_morph_table(
+static int sh_css_params_default_morph_table(
     struct ia_css_morph_table **table,
     const struct ia_css_binary *binary)
 {
@@ -1986,7 +1986,7 @@ static enum ia_css_err sh_css_params_default_morph_table(
 
 	tab = ia_css_morph_table_allocate(width, height);
 	if (!tab)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 
 	for (i = 0; i < IA_CSS_MORPH_TABLE_NUM_PLANES; i++) {
 		short val_y = start_y[i];
@@ -2015,9 +2015,9 @@ static enum ia_css_err sh_css_params_default_morph_table(
 	}
 	*table = tab;
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void
@@ -2118,11 +2118,11 @@ ia_css_isp_3a_statistics_map_allocate(
 	return NULL;
 }
 
-enum ia_css_err
+int
 ia_css_get_3a_statistics(struct ia_css_3a_statistics           *host_stats,
 			 const struct ia_css_isp_3a_statistics *isp_stats) {
 	struct ia_css_isp_3a_statistics_map *map;
-	enum ia_css_err ret = IA_CSS_SUCCESS;
+	int ret = 0;
 
 	IA_CSS_ENTER("host_stats=%p, isp_stats=%p", host_stats, isp_stats);
 
@@ -2138,7 +2138,7 @@ ia_css_get_3a_statistics(struct ia_css_3a_statistics           *host_stats,
 	} else
 	{
 		IA_CSS_ERROR("out of memory");
-		ret = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		ret = -ENOMEM;
 	}
 
 	IA_CSS_LEAVE_ERR(ret);
@@ -2430,22 +2430,22 @@ sh_css_pipe_isp_config_get(struct ia_css_pipe *pipe)
 	return pipe->config.p_isp_config;
 }
 
-enum ia_css_err
+int
 ia_css_stream_set_isp_config(
     struct ia_css_stream *stream,
     const struct ia_css_isp_config *config) {
 	return ia_css_stream_set_isp_config_on_pipe(stream, config, NULL);
 }
 
-enum ia_css_err
+int
 ia_css_stream_set_isp_config_on_pipe(
     struct ia_css_stream *stream,
     const struct ia_css_isp_config *config,
     struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	if ((!stream) || (!config))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	IA_CSS_ENTER("stream=%p, config=%p, pipe=%p", stream, config, pipe);
 
@@ -2460,16 +2460,16 @@ ia_css_stream_set_isp_config_on_pipe(
 	return err;
 }
 
-enum ia_css_err
+int
 ia_css_pipe_set_isp_config(struct ia_css_pipe *pipe,
 			   struct ia_css_isp_config *config) {
 	struct ia_css_pipe *pipe_in = pipe;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER("pipe=%p", pipe);
 
 	if ((!pipe) || (!pipe->stream))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "config=%p\n", config);
 
@@ -2483,14 +2483,14 @@ ia_css_pipe_set_isp_config(struct ia_css_pipe *pipe,
 	return err;
 }
 
-static enum ia_css_err
+static int
 sh_css_set_global_isp_config_on_pipe(
     struct ia_css_pipe *curr_pipe,
     const struct ia_css_isp_config *config,
     struct ia_css_pipe *pipe) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
-	enum ia_css_err err1 = IA_CSS_SUCCESS;
-	enum ia_css_err err2 = IA_CSS_SUCCESS;
+	int err = 0;
+	int err1 = 0;
+	int err2 = 0;
 
 	IA_CSS_ENTER_PRIVATE("stream=%p, config=%p, pipe=%p", curr_pipe, config, pipe);
 
@@ -2505,24 +2505,24 @@ sh_css_set_global_isp_config_on_pipe(
 	 * but instead continue with updating the ISP params to enable testing of features
 	 * which are currently in TR phase. */
 
-	err = (err1 != IA_CSS_SUCCESS) ? err1 : ((err2 != IA_CSS_SUCCESS) ? err2 : err);
+	err = (err1 != 0) ? err1 : ((err2 != 0) ? err2 : err);
 
 	IA_CSS_LEAVE_ERR_PRIVATE(err);
 	return err;
 }
 
 #if defined(SH_CSS_ENABLE_PER_FRAME_PARAMS)
-static enum ia_css_err
+static int
 sh_css_set_per_frame_isp_config_on_pipe(
     struct ia_css_stream *stream,
     const struct ia_css_isp_config *config,
     struct ia_css_pipe *pipe) {
 	unsigned int i;
 	bool per_frame_config_created = false;
-	enum ia_css_err err = IA_CSS_SUCCESS;
-	enum ia_css_err err1 = IA_CSS_SUCCESS;
-	enum ia_css_err err2 = IA_CSS_SUCCESS;
-	enum ia_css_err err3 = IA_CSS_SUCCESS;
+	int err = 0;
+	int err1 = 0;
+	int err2 = 0;
+	int err3 = 0;
 
 	struct sh_css_ddr_address_map *ddr_ptrs;
 	struct sh_css_ddr_address_map_size *ddr_ptrs_size;
@@ -2532,7 +2532,7 @@ sh_css_set_per_frame_isp_config_on_pipe(
 
 	if (!pipe)
 	{
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		goto exit;
 	}
 
@@ -2543,7 +2543,7 @@ sh_css_set_per_frame_isp_config_on_pipe(
 	{
 		err = sh_css_create_isp_params(stream,
 					       &stream->per_frame_isp_params_configs);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			goto exit;
 		per_frame_config_created = true;
 	}
@@ -2553,7 +2553,7 @@ sh_css_set_per_frame_isp_config_on_pipe(
 	/* update new ISP params object with the new config */
 	if (!sh_css_init_isp_params_from_global(stream, params, false, pipe))
 	{
-		err1 = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err1 = -EINVAL;
 	}
 
 	err2 = sh_css_init_isp_params_from_config(stream->pipes[0], params, config, pipe);
@@ -2577,21 +2577,21 @@ sh_css_set_per_frame_isp_config_on_pipe(
 	 * The CSS API must pass this error information to the caller, ie. the host.
 	 * We do not return this error immediately, but instead continue with updating the ISP params
 	 *  to enable testing of features which are currently in TR phase. */
-	err = (err1 != IA_CSS_SUCCESS) ? err1 :
-	      (err2 != IA_CSS_SUCCESS) ? err2 :
-	      (err3 != IA_CSS_SUCCESS) ? err3 : err;
+	err = (err1 != 0) ? err1 :
+	      (err2 != 0) ? err2 :
+	      (err3 != 0) ? err3 : err;
 exit:
 	IA_CSS_LEAVE_ERR_PRIVATE(err);
 	return err;
 }
 #endif
 
-static enum ia_css_err
+static int
 sh_css_init_isp_params_from_config(struct ia_css_pipe *pipe,
 				   struct ia_css_isp_parameters *params,
 				   const struct ia_css_isp_config *config,
 				   struct ia_css_pipe *pipe_in) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	bool is_dp_10bpp = true;
 
 	assert(pipe);
@@ -2634,7 +2634,7 @@ sh_css_init_isp_params_from_config(struct ia_css_pipe *pipe,
 		ia_css_set_param_exceptions(pipe, params);
 	}
 
-	if (IA_CSS_SUCCESS ==
+	if (0 ==
 	    sh_css_select_dp_10bpp_config(pipe, &is_dp_10bpp))
 	{
 		/* return an error when both DPC and BDS is enabled by the
@@ -2642,11 +2642,11 @@ sh_css_init_isp_params_from_config(struct ia_css_pipe *pipe,
 		/* we do not exit from this point immediately to allow internal
 		 * firmware feature testing. */
 		if (is_dp_10bpp) {
-			err = IA_CSS_ERR_INVALID_ARGUMENTS;
+			err = -EINVAL;
 		}
 	} else
 	{
-		err = IA_CSS_ERR_INTERNAL_ERROR;
+		err = -EINVAL;
 		goto exit;
 	}
 
@@ -2712,12 +2712,12 @@ static bool realloc_isp_css_mm_buf(
     size_t *curr_size,
     size_t needed_size,
     bool force,
-    enum ia_css_err *err,
+    int *err,
     uint16_t mmgr_attribute)
 {
 	s32 id;
 
-	*err = IA_CSS_SUCCESS;
+	*err = 0;
 	/* Possible optimization: add a function sh_css_isp_css_mm_realloc()
 	 * and implement on top of hmm. */
 
@@ -2741,7 +2741,7 @@ static bool realloc_isp_css_mm_buf(
 							    mmgr_attribute));
 
 	if (!*curr_buf) {
-		*err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		*err = -ENOMEM;
 		*curr_size = 0;
 	} else {
 		*curr_size = needed_size;
@@ -2755,7 +2755,7 @@ static bool reallocate_buffer(
     size_t *curr_size,
     size_t needed_size,
     bool force,
-    enum ia_css_err *err)
+    int *err)
 {
 	bool ret;
 
@@ -2897,9 +2897,9 @@ ia_css_metadata_free_multiple(unsigned int num_bufs,
 static unsigned int g_param_buffer_dequeue_count;
 static unsigned int g_param_buffer_enqueue_count;
 
-enum ia_css_err
+int
 ia_css_stream_isp_parameters_init(struct ia_css_stream *stream) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	unsigned int i;
 	struct sh_css_ddr_address_map *ddr_ptrs;
 	struct sh_css_ddr_address_map_size *ddr_ptrs_size;
@@ -2910,8 +2910,8 @@ ia_css_stream_isp_parameters_init(struct ia_css_stream *stream) {
 
 	if (!stream)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		IA_CSS_LEAVE_ERR_PRIVATE(-EINVAL);
+		return -EINVAL;
 	}
 	/* TMP: tracking of paramsets */
 	g_param_buffer_dequeue_count = 0;
@@ -2920,7 +2920,7 @@ ia_css_stream_isp_parameters_init(struct ia_css_stream *stream) {
 	stream->per_frame_isp_params_configs = NULL;
 	err = sh_css_create_isp_params(stream,
 				       &stream->isp_params_configs);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		goto ERR;
 
 	params = stream->isp_params_configs;
@@ -2928,7 +2928,7 @@ ia_css_stream_isp_parameters_init(struct ia_css_stream *stream) {
 	{
 		/* we do not return the error immediately to enable internal
 		 * firmware feature testing */
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 	}
 
 	ddr_ptrs = &params->ddr_ptrs;
@@ -2968,14 +2968,14 @@ ia_css_set_sdis2_config(
 	ia_css_set_sdis2_vertproj_config(params, dvs2_coefs);
 }
 
-static enum ia_css_err
+static int
 sh_css_create_isp_params(struct ia_css_stream *stream,
 			 struct ia_css_isp_parameters **isp_params_out) {
 	bool succ = true;
 	unsigned int i;
 	struct sh_css_ddr_address_map *ddr_ptrs;
 	struct sh_css_ddr_address_map_size *ddr_ptrs_size;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	size_t params_size;
 	struct ia_css_isp_parameters *params =
 	kvmalloc(sizeof(struct ia_css_isp_parameters), GFP_KERNEL);
@@ -2983,7 +2983,7 @@ sh_css_create_isp_params(struct ia_css_stream *stream,
 	if (!params)
 	{
 		*isp_params_out = NULL;
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 		IA_CSS_ERROR("%s:%d error: cannot allocate memory", __FILE__, __LINE__);
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
@@ -3073,7 +3073,7 @@ sh_css_init_isp_params_from_global(struct ia_css_stream *stream,
 		} else {
 			for (i = 0; i < stream->num_pipes; i++) {
 				if (sh_css_select_dp_10bpp_config(stream->pipes[i],
-								&is_dp_10bpp) == IA_CSS_SUCCESS) {
+								&is_dp_10bpp) == 0) {
 					/* set the return value as false if both DPC and
 					* BDS is enabled by the user. But we do not return
 					* the value immediately to enable internal firmware
@@ -3180,7 +3180,7 @@ sh_css_init_isp_params_from_global(struct ia_css_stream *stream,
 		ia_css_set_formats_config(params, &stream_params->formats_config);
 
 		for (i = 0; i < stream->num_pipes; i++) {
-			if (IA_CSS_SUCCESS ==
+			if (0 ==
 			    sh_css_select_dp_10bpp_config(stream->pipes[i], &is_dp_10bpp)) {
 				/* set the return value as false if both DPC and
 				 * BDS is enabled by the user. But we do not return
@@ -3252,7 +3252,7 @@ sh_css_init_isp_params_from_global(struct ia_css_stream *stream,
 	return retval;
 }
 
-enum ia_css_err
+int
 sh_css_params_init(void) {
 	int i, p;
 
@@ -3279,8 +3279,8 @@ sh_css_params_init(void) {
 			if ((xmem_sp_stage_ptrs[p][i] == mmgr_NULL) ||
 			    (xmem_isp_stage_ptrs[p][i] == mmgr_NULL)) {
 				sh_css_params_uninit();
-				IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-				return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+				IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+				return -ENOMEM;
 			}
 		}
 	}
@@ -3304,11 +3304,11 @@ sh_css_params_init(void) {
 	    (xmem_sp_group_ptrs == mmgr_NULL))
 	{
 		ia_css_uninit();
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+		return -ENOMEM;
 	}
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
 static void host_lut_store(const void *lut)
@@ -3331,16 +3331,16 @@ inline void sh_css_params_free_gdc_lut(ia_css_ptr addr)
 		hmm_free(addr);
 }
 
-enum ia_css_err ia_css_pipe_set_bci_scaler_lut(struct ia_css_pipe *pipe,
+int ia_css_pipe_set_bci_scaler_lut(struct ia_css_pipe *pipe,
 	const void *lut)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	bool stream_started = false;
 
 	IA_CSS_ENTER("pipe=%p lut=%p", pipe, lut);
 
 	if (!lut || !pipe) {
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE("err=%d", err);
 		return err;
 	}
@@ -3353,7 +3353,7 @@ enum ia_css_err ia_css_pipe_set_bci_scaler_lut(struct ia_css_pipe *pipe,
 		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
 				    "unable to set scaler lut since stream has started\n");
 		stream_started = true;
-		err = IA_CSS_ERR_NOT_SUPPORTED;
+		err = -ENOTSUPP;
 	}
 
 	/* Free any existing tables. */
@@ -3369,7 +3369,7 @@ enum ia_css_err ia_css_pipe_set_bci_scaler_lut(struct ia_css_pipe *pipe,
 		if (pipe->scaler_pp_lut == mmgr_NULL) {
 			ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
 					    "unable to allocate scaler_pp_lut\n");
-			err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+			err = -ENOMEM;
 		} else {
 			gdc_lut_convert_to_isp_format((const int(*)[HRT_GDC_N])lut,
 						      interleaved_lut_temp);
@@ -3394,9 +3394,9 @@ ia_css_ptr sh_css_pipe_get_pp_gdc_lut(const struct ia_css_pipe *pipe)
 		return sh_css_params_get_default_gdc_lut();
 }
 
-enum ia_css_err sh_css_params_map_and_store_default_gdc_lut(void)
+int sh_css_params_map_and_store_default_gdc_lut(void)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	IA_CSS_ENTER_PRIVATE("void");
 
@@ -3412,7 +3412,7 @@ enum ia_css_err sh_css_params_map_and_store_default_gdc_lut(void)
 		default_gdc_lut = sh_css_params_alloc_gdc_lut();
 
 	if (default_gdc_lut == mmgr_NULL)
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		return -ENOMEM;
 
 	gdc_lut_convert_to_isp_format((const int(*)[HRT_GDC_N])zoom_table,
 				      interleaved_lut_temp);
@@ -3609,7 +3609,7 @@ convert_allocate_morph_plane(
 	me = ia_css_host_data_allocate((size_t)isp_data_size);
 
 	if (!me) {
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
+		IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
 		return NULL;
 	}
 
@@ -3628,7 +3628,7 @@ convert_allocate_morph_plane(
 	return me;
 }
 
-static enum ia_css_err
+static int
 store_morph_plane(
     unsigned short *data,
     unsigned int width,
@@ -3642,13 +3642,13 @@ store_morph_plane(
 	isp_data = convert_allocate_morph_plane(data, width, height, aligned_width);
 	if (!isp_data)
 	{
-		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-		return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+		return -ENOMEM;
 	}
 	ia_css_params_store_ia_css_host_data(dest, isp_data);
 
 	ia_css_host_data_free(isp_data);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void sh_css_update_isp_params_to_ddr(
@@ -3703,7 +3703,7 @@ void ia_css_dequeue_param_buffers(/*unsigned int pipe_num*/ void)
 		cpy = (ia_css_ptr)0;
 		/* clean-up old copy */
 		while (ia_css_bufq_dequeue_buffer(param_queue_ids[i],
-						  (uint32_t *)&cpy) == IA_CSS_SUCCESS) {
+						  (uint32_t *)&cpy) == 0) {
 			/* TMP: keep track of dequeued param set count
 			 */
 			g_param_buffer_dequeue_count++;
@@ -3757,12 +3757,12 @@ process_kernel_parameters(unsigned int pipe_id,
 	}
 }
 
-enum ia_css_err
+int
 sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 			       struct ia_css_isp_parameters *params,
 			       bool commit,
 			       struct ia_css_pipe *pipe_in) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	ia_css_ptr cpy;
 	int i;
 	unsigned int raw_bit_depth = 10;
@@ -3813,7 +3813,7 @@ sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 #endif
 		if (!sh_css_sp_is_running()) {
 			/* SP is not running. The queues are not valid */
-			err = IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+			err = -EBUSY;
 			break;
 		}
 		cur_map = &params->pipe_ddr_ptrs[pipeline->pipe_id];
@@ -3829,7 +3829,7 @@ sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 			/* the processing is a.o. resolution dependent */
 			err = ia_css_process_zoom_and_motion(params,
 							     pipeline->stages);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				return err;
 		}
 		/* check if to actually update the parameters for this pipe */
@@ -3860,14 +3860,14 @@ sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 				  cur_map,
 				  cur_map_size);
 
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				break;
 			for (mem = 0; mem < IA_CSS_NUM_MEMORIES; mem++) {
 				params->isp_mem_params_changed
 				[pipeline->pipe_id][stage->stage_num][mem] = false;
 			}
 		} /* for */
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			break;
 		/* update isp_params to pipe specific copies */
 		if (params->isp_params_changed) {
@@ -3876,7 +3876,7 @@ sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 					  cur_map_size->isp_param,
 					  true,
 					  &err);
-			if (err != IA_CSS_SUCCESS)
+			if (err)
 				break;
 			sh_css_update_isp_params_to_ddr(params, cur_map->isp_param);
 		}
@@ -3885,7 +3885,7 @@ sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 		err = ref_sh_css_ddr_address_map(
 			  cur_map,
 			  &isp_params_info.mem_map);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			break;
 
 		/* Update Parameters ID */
@@ -3897,14 +3897,14 @@ sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 
 		/* now write the copy to ddr */
 		err = write_ia_css_isp_parameter_set_info_to_ddr(&isp_params_info, &cpy);
-		if (err != IA_CSS_SUCCESS)
+		if (err)
 			break;
 
 		/* enqueue the set to sp */
 		IA_CSS_LOG("queue param set %x to %d", cpy, thread_id);
 
 		err = ia_css_bufq_enqueue_buffer(thread_id, queue_id, (uint32_t)cpy);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			free_ia_css_isp_parameter_set_info(cpy);
 #if defined(SH_CSS_ENABLE_PER_FRAME_PARAMS)
 			IA_CSS_LOG("pfp: FAILED to add config id %d for OF %d to q %d on thread %d",
@@ -3925,8 +3925,8 @@ sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 			 */
 			if (!sh_css_sp_is_running()) {
 				/* SP is not running. The queues are not valid */
-				IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_RESOURCE_NOT_AVAILABLE);
-				return IA_CSS_ERR_RESOURCE_NOT_AVAILABLE;
+				IA_CSS_LEAVE_ERR_PRIVATE(-EBUSY);
+				return -EBUSY;
 			}
 			ia_css_bufq_enqueue_psys_event(
 			    IA_CSS_PSYS_SW_EVENT_BUFFER_ENQUEUED,
@@ -3963,7 +3963,7 @@ sh_css_param_update_isp_params(struct ia_css_pipe *curr_pipe,
 	return err;
 }
 
-static enum ia_css_err
+static int
 sh_css_params_write_to_ddr_internal(
     struct ia_css_pipe *pipe,
     unsigned int pipe_id,
@@ -3971,7 +3971,7 @@ sh_css_params_write_to_ddr_internal(
     const struct ia_css_pipeline_stage *stage,
     struct sh_css_ddr_address_map *ddr_map,
     struct sh_css_ddr_address_map_size *ddr_map_size) {
-	enum ia_css_err err;
+	int err;
 	const struct ia_css_binary *binary;
 
 	unsigned int stage_num;
@@ -3999,14 +3999,14 @@ sh_css_params_write_to_ddr_internal(
 						   (size_t)(FPNTBL_BYTES(binary)),
 						   params->config_changed[IA_CSS_FPN_ID],
 						   &err);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
 		if (params->config_changed[IA_CSS_FPN_ID] || buff_realloced) {
 			if (params->fpn_config.enabled) {
 				err = store_fpntbl(params, ddr_map->fpn_tbl);
-				if (err != IA_CSS_SUCCESS) {
+				if (err) {
 					IA_CSS_LEAVE_ERR_PRIVATE(err);
 					return err;
 				}
@@ -4031,7 +4031,7 @@ sh_css_params_write_to_ddr_internal(
 						   bytes,
 						   params->sc_table_changed,
 						   &err);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -4042,7 +4042,7 @@ sh_css_params_write_to_ddr_internal(
 				if (params->sc_table) {
 					/* store the shading table to ddr */
 					err = ia_css_params_store_sctbl(stage, ddr_map->sc_tbl, params->sc_table);
-					if (err != IA_CSS_SUCCESS) {
+					if (err) {
 						IA_CSS_LEAVE_ERR_PRIVATE(err);
 						return err;
 					}
@@ -4060,13 +4060,13 @@ sh_css_params_write_to_ddr_internal(
 										binary->sctbl_width_per_color,
 										binary->sctbl_height);
 					if (!params->sc_config) {
-						IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-						return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+						IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+						return -ENOMEM;
 					}
 
 					/* store the shading table to ddr */
 					err = ia_css_params_store_sctbl(stage, ddr_map->sc_tbl, params->sc_config);
-					if (err != IA_CSS_SUCCESS) {
+					if (err) {
 						IA_CSS_LEAVE_ERR_PRIVATE(err);
 						return err;
 					}
@@ -4091,13 +4091,13 @@ sh_css_params_write_to_ddr_internal(
 				    &params->sc_config,
 				    binary, pipe->required_bds_factor);
 				if (!params->sc_config) {
-					IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-					return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+					IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+					return -ENOMEM;
 				}
 
 				/* store the shading table to ddr */
 				err = ia_css_params_store_sctbl(stage, ddr_map->sc_tbl, params->sc_config);
-				if (err != IA_CSS_SUCCESS) {
+				if (err) {
 					IA_CSS_LEAVE_ERR_PRIVATE(err);
 					return err;
 				}
@@ -4177,7 +4177,7 @@ sh_css_params_write_to_ddr_internal(
 				  ddr_map_size->macc_tbl,
 				  true,
 				  &err);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -4198,7 +4198,7 @@ sh_css_params_write_to_ddr_internal(
 				     (size_t)((DVS_6AXIS_BYTES(binary) / 2) * 3),
 				     params->pipe_dvs_6axis_config_changed[pipe_id],
 				     &err);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -4231,8 +4231,8 @@ sh_css_params_write_to_ddr_internal(
 				params->pipe_dvs_6axis_config[pipe_id] =
 				    generate_dvs_6axis_table(&binary->out_frame_info[0].res, &dvs_offset);
 				if (!params->pipe_dvs_6axis_config[pipe_id]) {
-					IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY);
-					return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+					IA_CSS_LEAVE_ERR_PRIVATE(-ENOMEM);
+					return -ENOMEM;
 				}
 				params->pipe_dvs_6axis_config_changed[pipe_id] = true;
 
@@ -4298,7 +4298,7 @@ sh_css_params_write_to_ddr_internal(
 					    (MORPH_PLANE_BYTES(binary)),
 					    params->morph_table_changed,
 					    &err);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -4309,7 +4309,7 @@ sh_css_params_write_to_ddr_internal(
 					    (MORPH_PLANE_BYTES(binary)),
 					    params->morph_table_changed,
 					    &err);
-			if (err != IA_CSS_SUCCESS) {
+			if (err) {
 				IA_CSS_LEAVE_ERR_PRIVATE(err);
 				return err;
 			}
@@ -4326,7 +4326,7 @@ sh_css_params_write_to_ddr_internal(
 			if (!table) {
 				err = sh_css_params_default_morph_table(&id_table,
 									binary);
-				if (err != IA_CSS_SUCCESS) {
+				if (err) {
 					IA_CSS_LEAVE_ERR_PRIVATE(err);
 					return err;
 				}
@@ -4364,7 +4364,7 @@ sh_css_params_write_to_ddr_internal(
 						size,
 						params->isp_mem_params_changed[pipe_id][stage_num][mem],
 						&err);
-		if (err != IA_CSS_SUCCESS) {
+		if (err) {
 			IA_CSS_LEAVE_ERR_PRIVATE(err);
 			return err;
 		}
@@ -4375,8 +4375,8 @@ sh_css_params_write_to_ddr_internal(
 		}
 	}
 
-	IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_SUCCESS);
-	return IA_CSS_SUCCESS;
+	IA_CSS_LEAVE_ERR_PRIVATE(0);
+	return 0;
 }
 
 const struct ia_css_fpn_table *ia_css_get_fpn_table(struct ia_css_stream
@@ -4498,11 +4498,11 @@ ia_css_ptr sh_css_store_isp_stage_to_ddr(
 	return xmem_isp_stage_ptrs[pipe][stage];
 }
 
-static enum ia_css_err ref_sh_css_ddr_address_map(
+static int ref_sh_css_ddr_address_map(
     struct sh_css_ddr_address_map *map,
     struct sh_css_ddr_address_map *out)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	unsigned int i;
 
 	/* we will use a union to copy things; overlaying an array
@@ -4538,11 +4538,11 @@ static enum ia_css_err ref_sh_css_ddr_address_map(
 	return err;
 }
 
-static enum ia_css_err write_ia_css_isp_parameter_set_info_to_ddr(
+static int write_ia_css_isp_parameter_set_info_to_ddr(
     struct ia_css_isp_parameter_set_info *me,
     ia_css_ptr *out)
 {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	bool succ;
 
 	IA_CSS_ENTER_PRIVATE("void");
@@ -4557,16 +4557,16 @@ static enum ia_css_err write_ia_css_isp_parameter_set_info_to_ddr(
 		hmm_store(*out,
 			   me, sizeof(struct ia_css_isp_parameter_set_info));
 	else
-		err = IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
+		err = -ENOMEM;
 
 	IA_CSS_LEAVE_ERR_PRIVATE(err);
 	return err;
 }
 
-static enum ia_css_err
+static int
 free_ia_css_isp_parameter_set_info(
     ia_css_ptr ptr) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	struct ia_css_isp_parameter_set_info isp_params_info;
 	unsigned int i;
 	ia_css_ptr *addrs = (ia_css_ptr *)&isp_params_info.mem_map;
@@ -4578,7 +4578,7 @@ free_ia_css_isp_parameter_set_info(
 	{
 		IA_CSS_ERROR("%s: IA_CSS_REFCOUNT_PARAM_SET_POOL(0x%x) invalid arg", __func__,
 			     ptr);
-		err = IA_CSS_ERR_INVALID_ARGUMENTS;
+		err = -EINVAL;
 		IA_CSS_LEAVE_ERR_PRIVATE(err);
 		return err;
 	}
@@ -4595,7 +4595,7 @@ free_ia_css_isp_parameter_set_info(
 		if (!ia_css_refcount_is_valid(addrs[i])) {
 			IA_CSS_ERROR("%s: IA_CSS_REFCOUNT_PARAM_BUFFER(0x%x) invalid arg", __func__,
 				     ptr);
-			err = IA_CSS_ERR_INVALID_ARGUMENTS;
+			err = -EINVAL;
 			continue;
 		}
 
@@ -4783,7 +4783,7 @@ sh_css_update_uds_and_crop_info(
 	IA_CSS_LEAVE_PRIVATE("void");
 }
 
-static enum ia_css_err
+static int
 sh_css_update_uds_and_crop_info_based_on_zoom_region(
     const struct ia_css_binary_info *info,
     const struct ia_css_frame_info *in_frame_info,
@@ -4796,7 +4796,7 @@ sh_css_update_uds_and_crop_info_based_on_zoom_region(
     struct ia_css_resolution pipe_in_res,
     bool enable_zoom) {
 	unsigned int x0 = 0, y0 = 0, x1 = 0, y1 = 0;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	/* Note:
 	* Filter_Envelope = 0 for NND/LUT
 	* Filter_Envelope = 1 for BCI
@@ -4823,7 +4823,7 @@ sh_css_update_uds_and_crop_info_based_on_zoom_region(
 	y1 = zoom->zoom_region.resolution.height + y0;
 
 	if ((x0 > x1) || (y0 > y1) || (x1 > pipe_in_res.width) || (y1 > pipe_in_res.height))
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	if (!enable_zoom)
 	{
@@ -4835,7 +4835,7 @@ sh_css_update_uds_and_crop_info_based_on_zoom_region(
 	{
 		/* Zoom region is only supported by the UDS module on ISP
 		 * 2 and higher. It is not supported in video mode on ISP 1 */
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	} else
 	{
 		if (enable_zoom) {
@@ -5260,7 +5260,7 @@ ia_css_en_dz_capt_pipe(struct ia_css_stream *stream, bool enable)
 	struct ia_css_pipeline *pipeline;
 	struct ia_css_pipeline_stage *stage;
 	enum ia_css_pipe_id pipe_id;
-	enum ia_css_err err;
+	int err;
 	int i;
 
 	if (!stream)
@@ -5274,7 +5274,7 @@ ia_css_en_dz_capt_pipe(struct ia_css_stream *stream, bool enable)
 		if (pipe_id == IA_CSS_PIPE_ID_CAPTURE) {
 			err = ia_css_pipeline_get_stage(pipeline, IA_CSS_BINARY_MODE_CAPTURE_PP,
 							&stage);
-			if (err == IA_CSS_SUCCESS)
+			if (!err)
 				stage->enable_zoom = enable;
 			break;
 		}
diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.h b/drivers/staging/media/atomisp/pci/sh_css_params.h
index 221d2a47b513..e723e6f206d0 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_params.h
+++ b/drivers/staging/media/atomisp/pci/sh_css_params.h
@@ -153,7 +153,7 @@ ia_css_params_store_ia_css_host_data(
     ia_css_ptr ddr_addr,
     struct ia_css_host_data *data);
 
-enum ia_css_err
+int
 ia_css_params_store_sctbl(
     const struct ia_css_pipeline_stage *stage,
     ia_css_ptr ddr_addr,
@@ -173,7 +173,7 @@ sh_css_params_alloc_gdc_lut(void);
 void
 sh_css_params_free_gdc_lut(ia_css_ptr addr);
 
-enum ia_css_err
+int
 sh_css_params_map_and_store_default_gdc_lut(void);
 
 void
diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
index 4f58562fb389..dae0960cf8d5 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
@@ -76,7 +76,7 @@ static struct sh_css_sp_per_frame_data per_frame_data;
 /* TODO: add code that sets this bool to false */
 static bool sp_running;
 
-static enum ia_css_err
+static int
 set_output_frame_buffer(const struct ia_css_frame *frame,
 			unsigned int idx);
 
@@ -536,10 +536,10 @@ sh_css_copy_frame_to_spframe(struct ia_css_frame_sp *sp_frame_out,
 	}
 }
 
-static enum ia_css_err
+static int
 set_input_frame_buffer(const struct ia_css_frame *frame) {
 	if (!frame)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	switch (frame->info.format)
 	{
@@ -559,18 +559,18 @@ set_input_frame_buffer(const struct ia_css_frame *frame) {
 	case IA_CSS_FRAME_FORMAT_CSI_MIPI_YUV420_10:
 		break;
 	default:
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 	sh_css_copy_frame_to_spframe(&sh_css_sp_stage.frames.in, frame);
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 set_output_frame_buffer(const struct ia_css_frame *frame,
 			unsigned int idx) {
 	if (!frame)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	switch (frame->info.format)
 	{
@@ -602,16 +602,16 @@ set_output_frame_buffer(const struct ia_css_frame *frame,
 	case IA_CSS_FRAME_FORMAT_BINARY_8:
 		break;
 	default:
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 	sh_css_copy_frame_to_spframe(&sh_css_sp_stage.frames.out[idx], frame);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 set_view_finder_buffer(const struct ia_css_frame *frame) {
 	if (!frame)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 
 	switch (frame->info.format)
 	{
@@ -631,11 +631,11 @@ set_view_finder_buffer(const struct ia_css_frame *frame) {
 	case IA_CSS_FRAME_FORMAT_YUV_LINE:
 		break;
 	default:
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	}
 
 	sh_css_copy_frame_to_spframe(&sh_css_sp_stage.frames.out_vf, frame);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 #if !defined(HAS_NO_INPUT_FORMATTER)
@@ -737,26 +737,26 @@ sh_css_sp_set_disable_continuous_viewfinder(bool flag)
 	sh_css_sp_group.config.disable_cont_vf = flag;
 }
 
-static enum ia_css_err
+static int
 sh_css_sp_write_frame_pointers(const struct sh_css_binary_args *args) {
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	int i;
 
 	assert(args);
 
 	if (args->in_frame)
 		err = set_input_frame_buffer(args->in_frame);
-	if (err == IA_CSS_SUCCESS && args->out_vf_frame)
+	if (!err && args->out_vf_frame)
 		err = set_view_finder_buffer(args->out_vf_frame);
 	for (i = 0; i < IA_CSS_BINARY_MAX_OUTPUT_PORTS; i++)
 	{
-		if (err == IA_CSS_SUCCESS && args->out_frame[i])
+		if (!err && args->out_frame[i])
 			err = set_output_frame_buffer(args->out_frame[i], i);
 	}
 
 	/* we don't pass this error back to the upper layer, so we add a assert here
 	   because we actually hit the error here but it still works by accident... */
-	if (err != IA_CSS_SUCCESS) assert(false);
+	if (err) assert(false);
 	return err;
 }
 
@@ -791,23 +791,23 @@ sh_css_stage_write_binary_info(struct ia_css_binary_info *info)
 	sh_css_isp_stage.binary_info = *info;
 }
 
-static enum ia_css_err
+static int
 copy_isp_mem_if_to_ddr(struct ia_css_binary *binary) {
-	enum ia_css_err err;
+	int err;
 
 	err = ia_css_isp_param_copy_isp_mem_if_to_ddr(
 	    &binary->css_params,
 	    &binary->mem_params,
 	    IA_CSS_PARAM_CLASS_CONFIG);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 	err = ia_css_isp_param_copy_isp_mem_if_to_ddr(
 	    &binary->css_params,
 	    &binary->mem_params,
 	    IA_CSS_PARAM_CLASS_STATE);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static bool
@@ -817,7 +817,7 @@ is_sp_stage(struct ia_css_pipeline_stage *stage)
 	return stage->sp_func != IA_CSS_PIPELINE_NO_FUNC;
 }
 
-static enum ia_css_err
+static int
 configure_isp_from_args(
     const struct sh_css_sp_pipeline *pipeline,
     const struct ia_css_binary      *binary,
@@ -853,7 +853,7 @@ configure_isp_from_args(
 	ia_css_ref_configure(binary, args->delay_frames, pipeline->dvs_frame_delay);
 	ia_css_tnr_configure(binary, args->tnr_frames);
 	ia_css_bayer_io_config(binary, args);
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 static void
@@ -892,7 +892,7 @@ initialize_stage_frames(struct ia_css_frames_sp *frames)
 #endif
 }
 
-static enum ia_css_err
+static int
 sh_css_sp_init_stage(struct ia_css_binary *binary,
 		     const char *binary_name,
 		     const struct ia_css_blob_info *blob_info,
@@ -905,7 +905,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 		     bool two_ppc) {
 	const struct ia_css_binary_xinfo *xinfo;
 	const struct ia_css_binary_info  *info;
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 	int i;
 	struct ia_css_pipe *pipe = NULL;
 	unsigned int thread_id;
@@ -937,7 +937,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 	if (!info)
 	{
 		sh_css_sp_group.pipe[thread_id].sp_stage_addr[stage] = mmgr_NULL;
-		return IA_CSS_SUCCESS;
+		return 0;
 	}
 
 #if defined(USE_INPUT_SYSTEM_VERSION_2401)
@@ -1023,14 +1023,14 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 	ia_css_query_internal_queue_id(IA_CSS_BUFFER_TYPE_METADATA, thread_id, &queue_id);
 	sh_css_copy_buffer_attr_to_spbuffer(&sh_css_sp_stage.frames.metadata_buf, queue_id, mmgr_EXCEPTION, IA_CSS_BUFFER_TYPE_METADATA);
 #endif
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
 	if (stage == 0) {
 		pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
 		if (!pipe)
-			return IA_CSS_ERR_INTERNAL_ERROR;
+			return -EINVAL;
 
 		if (args->in_frame)
 			ia_css_get_crop_offsets(pipe, &args->in_frame->info);
@@ -1043,7 +1043,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 
 	err = configure_isp_from_args(&sh_css_sp_group.pipe[thread_id],
 				      binary, args, two_ppc, sh_css_sp_stage.deinterleaved);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
 	initialize_isp_states(binary);
@@ -1065,13 +1065,13 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 		<<= binary->vf_downscale_log2;
 	}
 	err = copy_isp_mem_if_to_ddr(binary);
-	if (err != IA_CSS_SUCCESS)
+	if (err)
 		return err;
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-static enum ia_css_err
+static int
 sp_init_stage(struct ia_css_pipeline_stage *stage,
 	      unsigned int pipe_num,
 	      bool xnr,
@@ -1103,7 +1103,7 @@ sp_init_stage(struct ia_css_pipeline_stage *stage,
 	*/
 	struct ia_css_isp_param_css_segments *mem_if = &isp_mem_if;
 
-	enum ia_css_err err = IA_CSS_SUCCESS;
+	int err = 0;
 
 	assert(stage);
 
@@ -1148,7 +1148,7 @@ sp_init_stage(struct ia_css_pipeline_stage *stage,
 		   These will be passed to sh_css_sp_init_stage
 		   and dereferenced there, so passing a NULL
 		   pointer is no good. return an error */
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	}
 
 	err = sh_css_sp_init_stage(binary,
@@ -1601,7 +1601,7 @@ sh_css_event_init_irq_mask(void)
 	}
 }
 
-enum ia_css_err
+int
 ia_css_pipe_set_irq_mask(struct ia_css_pipe *pipe,
 			 unsigned int or_mask,
 			 unsigned int and_mask) {
@@ -1629,7 +1629,7 @@ ia_css_pipe_set_irq_mask(struct ia_css_pipe *pipe,
 
 	pipe_num = ia_css_pipe_get_pipe_num(pipe);
 	if (pipe_num >= IA_CSS_PIPE_ID_NUM)
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	offset = (unsigned int)offsetof(struct host_sp_communication,
 					host2sp_event_irq_mask[pipe_num]);
 	assert(offset % HRT_BUS_BYTES == 0);
@@ -1637,10 +1637,10 @@ ia_css_pipe_set_irq_mask(struct ia_css_pipe *pipe,
 		      (unsigned int)sp_address_of(host_sp_com) + offset,
 		      &event_irq_mask, sizeof(event_irq_mask));
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
-enum ia_css_err
+int
 ia_css_event_get_irq_mask(const struct ia_css_pipe *pipe,
 			  unsigned int *or_mask,
 			  unsigned int *and_mask) {
@@ -1658,7 +1658,7 @@ ia_css_event_get_irq_mask(const struct ia_css_pipe *pipe,
 
 	pipe_num = ia_css_pipe_get_pipe_num(pipe);
 	if (pipe_num >= IA_CSS_PIPE_ID_NUM)
-		return IA_CSS_ERR_INTERNAL_ERROR;
+		return -EINVAL;
 	offset = (unsigned int)offsetof(struct host_sp_communication,
 					host2sp_event_irq_mask[pipe_num]);
 	assert(offset % HRT_BUS_BYTES == 0);
@@ -1672,7 +1672,7 @@ ia_css_event_get_irq_mask(const struct ia_css_pipe *pipe,
 	if (and_mask)
 		*and_mask = event_irq_mask.and_mask;
 
-	return IA_CSS_SUCCESS;
+	return 0;
 }
 
 void
diff --git a/drivers/staging/media/atomisp/pci/sh_css_version.c b/drivers/staging/media/atomisp/pci/sh_css_version.c
index eb986e15c7fa..28fc4493cde2 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_version.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_version.c
@@ -18,7 +18,7 @@
 #include "ia_css_err.h"
 #include "sh_css_firmware.h"
 
-enum ia_css_err
+int
 ia_css_get_version(char *version, int max_size) {
 	char *css_version;
 
@@ -28,10 +28,10 @@ ia_css_get_version(char *version, int max_size) {
 		css_version = ISP2401_CSS_VERSION_STRING;
 
 	if (max_size <= (int)strlen(css_version) + (int)strlen(sh_css_get_fw_version()) + 5)
-		return IA_CSS_ERR_INVALID_ARGUMENTS;
+		return -EINVAL;
 	strcpy(version, css_version);
 	strcat(version, "FW:");
 	strcat(version, sh_css_get_fw_version());
 	strcat(version, "; ");
-	return IA_CSS_SUCCESS;
+	return 0;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
