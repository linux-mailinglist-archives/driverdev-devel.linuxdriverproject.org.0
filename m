Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 344CD552D2
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 17:05:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2E56A20551;
	Tue, 25 Jun 2019 15:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9cz7l3wAab4T; Tue, 25 Jun 2019 15:05:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2F46420532;
	Tue, 25 Jun 2019 15:05:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF6801BF3C5
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 15:05:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EB14F20011
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 15:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j8YnmuKf05eb for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 15:05:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 3E9FE1FF98
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 15:05:01 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id v19so3318340wmj.5
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 08:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FpH+UM6aXLaq6l6BvTOtpCJcQETrARYlRqLy5mqFk0w=;
 b=jdva9Z4q7eWLnc5r0xbr4kr7LNATl4gyMF7/X5ZbWEvnwUtUZOLj0dusuJ6WuJYAfL
 H5kEc9mZagu2yV2ANVsIWchR4IgzaYcwXaAyXzT9i+wgPmScCXKO09T/S4a4+otYkVn4
 2Wy+Udl1Mmp4dd27W+oikX3oKQDklCDhUVIGicZHf6OPCAtX461OYWnTZl76+dyTeB/2
 rU/UbXBG2yRIGtQWGz0yyOtRVChXEsxuA+N+TCFxlFhyWem3xRUBa3/YC66Jgwvjc3XW
 6ZOHcnV69x8eSIt6HlIPXPUjIJyAKHr7fHwNBd8gDuq42WaJgaBIxnkRRPOztcSRkpVH
 5Atg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FpH+UM6aXLaq6l6BvTOtpCJcQETrARYlRqLy5mqFk0w=;
 b=akp3ZvqMEh/v3twva0lhZogmOz2faAmPGwIJ5ARENjAjcM+RE1dSGGCngh3P3d7V4R
 bHOzwNqna6s5b6HFuQNC5DGHNX44VxOLnb1jwBgiK3Pn/tyxs1bPwWWsN1N+P6zHg17b
 2q4a5wFrlLi6mb1Cl5nxJlziGggYvtaM+9p6VivKpGWOtSRT/+YjI3PC1QsNK7bXKD5c
 9IqTjCzHvFtTumnP+DSw7t25aFa9oaY5dy5g+y7yhFzdWgJ8nxnOPqmW6B5WkSMmouWk
 6kTJjpfJTo8fNSsYd5r5847979kmC+c9NlCu5f0TmLTQoMNqxNNQ1UKgWq89Bwiibm8o
 6NiA==
X-Gm-Message-State: APjAAAUwM6rt9et220N63UY1wPocrgxG/mmDg5c9Uw3J9PZrz9o6erf4
 L81L/T04sVxGB/nthjVtaoI=
X-Google-Smtp-Source: APXvYqwI09M/ZkTF+OmLqhKtNPqYEK3k8Yn7vu8rdsEmceLD/G+qlGSucQyphSYCjbXXiVYgq4dHxA==
X-Received: by 2002:a1c:ef0c:: with SMTP id n12mr19114755wmh.132.1561475099649; 
 Tue, 25 Jun 2019 08:04:59 -0700 (PDT)
Received: from cat.mip.uni-hannover.de (ip43.172.mip.uni-hannover.de.
 [130.75.172.43])
 by smtp.gmail.com with ESMTPSA id j18sm17640371wre.23.2019.06.25.08.04.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 25 Jun 2019 08:04:59 -0700 (PDT)
From: Felix Winkler <fxmw.tnt@gmail.com>
To: sakari.ailus@linux.intel.com,
	mchehab@kernel.org
Subject: [PATCH] media: ipu3-imgu: Fixed some coding style issues in ipu3-css.c
Date: Tue, 25 Jun 2019 17:03:46 +0200
Message-Id: <1561475026-21806-1-git-send-email-fxmw.tnt@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, linux-kernel@i4.cs.fau.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Niklas Witzel <nik.witzel@horsepower-hannover.de>, linux-media@vger.kernel.org,
 Felix Winkler <fxmw.tnt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Improved readability by fixing some issues related to maximum line length.

Signed-off-by: Felix Winkler <fxmw.tnt@gmail.com>
Signed-off-by: Niklas Witzel <nik.witzel@horsepower-hannover.de>
---
 drivers/staging/media/ipu3/ipu3-css.c | 274 +++++++++++++++-------------------
 1 file changed, 121 insertions(+), 153 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-css.c b/drivers/staging/media/ipu3/ipu3-css.c
index 23cf5b2..a34105f 100644
--- a/drivers/staging/media/ipu3/ipu3-css.c
+++ b/drivers/staging/media/ipu3/ipu3-css.c
@@ -663,17 +663,16 @@ static void imgu_css_hw_cleanup(struct imgu_css *css)
 static void imgu_css_pipeline_cleanup(struct imgu_css *css, unsigned int pipe)
 {
 	struct imgu_device *imgu = dev_get_drvdata(css->dev);
+	struct imgu_css_pipe *css_pipe = &css->pipes[pipe];
 	unsigned int i;
 
-	imgu_css_pool_cleanup(imgu,
-			      &css->pipes[pipe].pool.parameter_set_info);
-	imgu_css_pool_cleanup(imgu, &css->pipes[pipe].pool.acc);
-	imgu_css_pool_cleanup(imgu, &css->pipes[pipe].pool.gdc);
-	imgu_css_pool_cleanup(imgu, &css->pipes[pipe].pool.obgrid);
+	imgu_css_pool_cleanup(imgu, &css_pipe->pool.parameter_set_info);
+	imgu_css_pool_cleanup(imgu, &css_pipe->pool.acc);
+	imgu_css_pool_cleanup(imgu, &css_pipe->pool.gdc);
+	imgu_css_pool_cleanup(imgu, &css_pipe->pool.obgrid);
 
 	for (i = 0; i < IMGU_ABI_NUM_MEMORIES; i++)
-		imgu_css_pool_cleanup(imgu,
-				      &css->pipes[pipe].pool.binary_params_p[i]);
+		imgu_css_pool_cleanup(imgu, &css_pipe->pool.binary_params_p[i]);
 }
 
 /*
@@ -699,6 +698,12 @@ static int imgu_css_pipeline_init(struct imgu_css *css, unsigned int pipe)
 	unsigned int i, j;
 
 	struct imgu_css_pipe *css_pipe = &css->pipes[pipe];
+	struct imgu_css_queue *css_queue_in =
+			&css_pipe->queue[IPU3_CSS_QUEUE_IN];
+	struct imgu_css_queue *css_queue_out =
+			&css_pipe->queue[IPU3_CSS_QUEUE_OUT];
+	struct imgu_css_queue *css_queue_vf =
+			&css_pipe->queue[IPU3_CSS_QUEUE_VF];
 	const struct imgu_fw_info *bi =
 			&css->fwp->binary_header[css_pipe->bindex];
 	const unsigned int stripes = bi->info.isp.sp.iterator.num_stripes;
@@ -711,6 +716,9 @@ static int imgu_css_pipeline_init(struct imgu_css *css, unsigned int pipe)
 	struct imgu_abi_isp_stage *isp_stage;
 	struct imgu_abi_sp_stage *sp_stage;
 	struct imgu_abi_sp_group *sp_group;
+	struct imgu_abi_frames_sp *frames_sp;
+	struct imgu_abi_frame_sp *frame_sp;
+	struct imgu_abi_frame_sp_info *frame_sp_info;
 
 	const unsigned int bds_width_pad =
 				ALIGN(css_pipe->rect[IPU3_CSS_RECT_BDS].width,
@@ -732,61 +740,44 @@ static int imgu_css_pipeline_init(struct imgu_css *css, unsigned int pipe)
 	if (!cfg_iter)
 		goto bad_firmware;
 
-	cfg_iter->input_info.res.width =
-				css_pipe->queue[IPU3_CSS_QUEUE_IN].fmt.mpix.width;
-	cfg_iter->input_info.res.height =
-				css_pipe->queue[IPU3_CSS_QUEUE_IN].fmt.mpix.height;
-	cfg_iter->input_info.padded_width =
-				css_pipe->queue[IPU3_CSS_QUEUE_IN].width_pad;
-	cfg_iter->input_info.format =
-			css_pipe->queue[IPU3_CSS_QUEUE_IN].css_fmt->frame_format;
-	cfg_iter->input_info.raw_bit_depth =
-			css_pipe->queue[IPU3_CSS_QUEUE_IN].css_fmt->bit_depth;
-	cfg_iter->input_info.raw_bayer_order =
-			css_pipe->queue[IPU3_CSS_QUEUE_IN].css_fmt->bayer_order;
-	cfg_iter->input_info.raw_type = IMGU_ABI_RAW_TYPE_BAYER;
-
-	cfg_iter->internal_info.res.width = css_pipe->rect[IPU3_CSS_RECT_BDS].width;
-	cfg_iter->internal_info.res.height =
-					css_pipe->rect[IPU3_CSS_RECT_BDS].height;
-	cfg_iter->internal_info.padded_width = bds_width_pad;
-	cfg_iter->internal_info.format =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->frame_format;
-	cfg_iter->internal_info.raw_bit_depth =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->bit_depth;
-	cfg_iter->internal_info.raw_bayer_order =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->bayer_order;
-	cfg_iter->internal_info.raw_type = IMGU_ABI_RAW_TYPE_BAYER;
-
-	cfg_iter->output_info.res.width =
-				css_pipe->queue[IPU3_CSS_QUEUE_OUT].fmt.mpix.width;
-	cfg_iter->output_info.res.height =
-				css_pipe->queue[IPU3_CSS_QUEUE_OUT].fmt.mpix.height;
-	cfg_iter->output_info.padded_width =
-				css_pipe->queue[IPU3_CSS_QUEUE_OUT].width_pad;
-	cfg_iter->output_info.format =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->frame_format;
-	cfg_iter->output_info.raw_bit_depth =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->bit_depth;
-	cfg_iter->output_info.raw_bayer_order =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->bayer_order;
-	cfg_iter->output_info.raw_type = IMGU_ABI_RAW_TYPE_BAYER;
-
-	cfg_iter->vf_info.res.width =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].fmt.mpix.width;
-	cfg_iter->vf_info.res.height =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].fmt.mpix.height;
-	cfg_iter->vf_info.padded_width =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].width_pad;
-	cfg_iter->vf_info.format =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].css_fmt->frame_format;
-	cfg_iter->vf_info.raw_bit_depth =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].css_fmt->bit_depth;
-	cfg_iter->vf_info.raw_bayer_order =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].css_fmt->bayer_order;
-	cfg_iter->vf_info.raw_type = IMGU_ABI_RAW_TYPE_BAYER;
-
-	cfg_iter->dvs_envelope.width = css_pipe->rect[IPU3_CSS_RECT_ENVELOPE].width;
+	frame_sp_info = &cfg_iter->input_info;
+	frame_sp_info->res.width	= css_queue_in->fmt.mpix.width;
+	frame_sp_info->res.height	= css_queue_in->fmt.mpix.height;
+	frame_sp_info->padded_width	= css_queue_in->width_pad;
+	frame_sp_info->format		= css_queue_in->css_fmt->frame_format;
+	frame_sp_info->raw_bit_depth	= css_queue_in->css_fmt->bit_depth;
+	frame_sp_info->raw_bayer_order	= css_queue_in->css_fmt->bayer_order;
+	frame_sp_info->raw_type		= IMGU_ABI_RAW_TYPE_BAYER;
+
+	frame_sp_info = &cfg_iter->internal_info;
+	frame_sp_info->res.width = css_pipe->rect[IPU3_CSS_RECT_BDS].width;
+	frame_sp_info->res.height = css_pipe->rect[IPU3_CSS_RECT_BDS].height;
+	frame_sp_info->padded_width	= bds_width_pad;
+	frame_sp_info->format		= css_queue_out->css_fmt->frame_format;
+	frame_sp_info->raw_bit_depth	= css_queue_out->css_fmt->bit_depth;
+	frame_sp_info->raw_bayer_order	= css_queue_out->css_fmt->bayer_order;
+	frame_sp_info->raw_type		= IMGU_ABI_RAW_TYPE_BAYER;
+
+	frame_sp_info = &cfg_iter->output_info;
+	frame_sp_info->res.width	= css_queue_out->fmt.mpix.width;
+	frame_sp_info->res.height	= css_queue_out->fmt.mpix.height;
+	frame_sp_info->padded_width	= css_queue_out->width_pad;
+	frame_sp_info->format		= css_queue_out->css_fmt->frame_format;
+	frame_sp_info->raw_bit_depth	= css_queue_out->css_fmt->bit_depth;
+	frame_sp_info->raw_bayer_order	= css_queue_out->css_fmt->bayer_order;
+	frame_sp_info->raw_type		= IMGU_ABI_RAW_TYPE_BAYER;
+
+	frame_sp_info = &cfg_iter->vf_info;
+	frame_sp_info->res.width	= css_queue_vf->fmt.mpix.width;
+	frame_sp_info->res.height	= css_queue_vf->fmt.mpix.height;
+	frame_sp_info->padded_width	= css_queue_vf->width_pad;
+	frame_sp_info->format		= css_queue_vf->css_fmt->frame_format;
+	frame_sp_info->raw_bit_depth	= css_queue_vf->css_fmt->bit_depth;
+	frame_sp_info->raw_bayer_order	= css_queue_vf->css_fmt->bayer_order;
+	frame_sp_info->raw_type		= IMGU_ABI_RAW_TYPE_BAYER;
+
+	cfg_iter->dvs_envelope.width =
+				css_pipe->rect[IPU3_CSS_RECT_ENVELOPE].width;
 	cfg_iter->dvs_envelope.height =
 				css_pipe->rect[IPU3_CSS_RECT_ENVELOPE].height;
 
@@ -917,12 +908,13 @@ static int imgu_css_pipeline_init(struct imgu_css *css, unsigned int pipe)
 	sp_stage = css_pipe->xmem_sp_stage_ptrs[pipe][stage].vaddr;
 	memset(sp_stage, 0, sizeof(*sp_stage));
 
-	sp_stage->frames.in.buf_attr = buffer_sp_init;
+	frames_sp = &sp_stage->frames;
+	frames_sp->in.buf_attr = buffer_sp_init;
 	for (i = 0; i < IMGU_ABI_BINARY_MAX_OUTPUT_PORTS; i++)
-		sp_stage->frames.out[i].buf_attr = buffer_sp_init;
-	sp_stage->frames.out_vf.buf_attr = buffer_sp_init;
-	sp_stage->frames.s3a_buf = buffer_sp_init;
-	sp_stage->frames.dvs_buf = buffer_sp_init;
+		frames_sp->out[i].buf_attr = buffer_sp_init;
+	frames_sp->out_vf.buf_attr = buffer_sp_init;
+	frames_sp->s3a_buf = buffer_sp_init;
+	frames_sp->dvs_buf = buffer_sp_init;
 
 	sp_stage->stage_type = IMGU_ABI_STAGE_TYPE_ISP;
 	sp_stage->num = stage;
@@ -932,94 +924,70 @@ static int imgu_css_pipeline_init(struct imgu_css *css, unsigned int pipe)
 
 	sp_stage->enable.vf_output = css_pipe->vf_output_en;
 
-	sp_stage->frames.effective_in_res.width =
+	frames_sp->effective_in_res.width =
 				css_pipe->rect[IPU3_CSS_RECT_EFFECTIVE].width;
-	sp_stage->frames.effective_in_res.height =
+	frames_sp->effective_in_res.height =
 				css_pipe->rect[IPU3_CSS_RECT_EFFECTIVE].height;
-	sp_stage->frames.in.info.res.width =
-				css_pipe->queue[IPU3_CSS_QUEUE_IN].fmt.mpix.width;
-	sp_stage->frames.in.info.res.height =
-				css_pipe->queue[IPU3_CSS_QUEUE_IN].fmt.mpix.height;
-	sp_stage->frames.in.info.padded_width =
-					css_pipe->queue[IPU3_CSS_QUEUE_IN].width_pad;
-	sp_stage->frames.in.info.format =
-			css_pipe->queue[IPU3_CSS_QUEUE_IN].css_fmt->frame_format;
-	sp_stage->frames.in.info.raw_bit_depth =
-			css_pipe->queue[IPU3_CSS_QUEUE_IN].css_fmt->bit_depth;
-	sp_stage->frames.in.info.raw_bayer_order =
-			css_pipe->queue[IPU3_CSS_QUEUE_IN].css_fmt->bayer_order;
-	sp_stage->frames.in.info.raw_type = IMGU_ABI_RAW_TYPE_BAYER;
-	sp_stage->frames.in.buf_attr.buf_src.queue_id = IMGU_ABI_QUEUE_C_ID;
-	sp_stage->frames.in.buf_attr.buf_type =
-					IMGU_ABI_BUFFER_TYPE_INPUT_FRAME;
-
-	sp_stage->frames.out[0].info.res.width =
-				css_pipe->queue[IPU3_CSS_QUEUE_OUT].fmt.mpix.width;
-	sp_stage->frames.out[0].info.res.height =
-				css_pipe->queue[IPU3_CSS_QUEUE_OUT].fmt.mpix.height;
-	sp_stage->frames.out[0].info.padded_width =
-				css_pipe->queue[IPU3_CSS_QUEUE_OUT].width_pad;
-	sp_stage->frames.out[0].info.format =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->frame_format;
-	sp_stage->frames.out[0].info.raw_bit_depth =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->bit_depth;
-	sp_stage->frames.out[0].info.raw_bayer_order =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->bayer_order;
-	sp_stage->frames.out[0].info.raw_type = IMGU_ABI_RAW_TYPE_BAYER;
-	sp_stage->frames.out[0].planes.nv.uv.offset =
-				css_pipe->queue[IPU3_CSS_QUEUE_OUT].width_pad *
-				css_pipe->queue[IPU3_CSS_QUEUE_OUT].fmt.mpix.height;
-	sp_stage->frames.out[0].buf_attr.buf_src.queue_id = IMGU_ABI_QUEUE_D_ID;
-	sp_stage->frames.out[0].buf_attr.buf_type =
-					IMGU_ABI_BUFFER_TYPE_OUTPUT_FRAME;
-
-	sp_stage->frames.out[1].buf_attr.buf_src.queue_id =
-							IMGU_ABI_QUEUE_EVENT_ID;
-
-	sp_stage->frames.internal_frame_info.res.width =
-					css_pipe->rect[IPU3_CSS_RECT_BDS].width;
-	sp_stage->frames.internal_frame_info.res.height =
-					css_pipe->rect[IPU3_CSS_RECT_BDS].height;
-	sp_stage->frames.internal_frame_info.padded_width = bds_width_pad;
-
-	sp_stage->frames.internal_frame_info.format =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->frame_format;
-	sp_stage->frames.internal_frame_info.raw_bit_depth =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->bit_depth;
-	sp_stage->frames.internal_frame_info.raw_bayer_order =
-			css_pipe->queue[IPU3_CSS_QUEUE_OUT].css_fmt->bayer_order;
-	sp_stage->frames.internal_frame_info.raw_type = IMGU_ABI_RAW_TYPE_BAYER;
-
-	sp_stage->frames.out_vf.info.res.width =
-				css_pipe->queue[IPU3_CSS_QUEUE_VF].fmt.mpix.width;
-	sp_stage->frames.out_vf.info.res.height =
-				css_pipe->queue[IPU3_CSS_QUEUE_VF].fmt.mpix.height;
-	sp_stage->frames.out_vf.info.padded_width =
-					css_pipe->queue[IPU3_CSS_QUEUE_VF].width_pad;
-	sp_stage->frames.out_vf.info.format =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].css_fmt->frame_format;
-	sp_stage->frames.out_vf.info.raw_bit_depth =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].css_fmt->bit_depth;
-	sp_stage->frames.out_vf.info.raw_bayer_order =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].css_fmt->bayer_order;
-	sp_stage->frames.out_vf.info.raw_type = IMGU_ABI_RAW_TYPE_BAYER;
-	sp_stage->frames.out_vf.planes.yuv.u.offset =
-				css_pipe->queue[IPU3_CSS_QUEUE_VF].width_pad *
-				css_pipe->queue[IPU3_CSS_QUEUE_VF].fmt.mpix.height;
-	sp_stage->frames.out_vf.planes.yuv.v.offset =
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].width_pad *
-			css_pipe->queue[IPU3_CSS_QUEUE_VF].fmt.mpix.height * 5 / 4;
-	sp_stage->frames.out_vf.buf_attr.buf_src.queue_id = IMGU_ABI_QUEUE_E_ID;
-	sp_stage->frames.out_vf.buf_attr.buf_type =
-					IMGU_ABI_BUFFER_TYPE_VF_OUTPUT_FRAME;
-
-	sp_stage->frames.s3a_buf.buf_src.queue_id = IMGU_ABI_QUEUE_F_ID;
-	sp_stage->frames.s3a_buf.buf_type = IMGU_ABI_BUFFER_TYPE_3A_STATISTICS;
-
-	sp_stage->frames.dvs_buf.buf_src.queue_id = IMGU_ABI_QUEUE_G_ID;
-	sp_stage->frames.dvs_buf.buf_type = IMGU_ABI_BUFFER_TYPE_DIS_STATISTICS;
-
-	sp_stage->dvs_envelope.width = css_pipe->rect[IPU3_CSS_RECT_ENVELOPE].width;
+
+	frame_sp = &frames_sp->in;
+	frame_sp->info.res.width	= css_queue_in->fmt.mpix.width;
+	frame_sp->info.res.height	= css_queue_in->fmt.mpix.height;
+	frame_sp->info.padded_width	= css_queue_in->width_pad;
+	frame_sp->info.format		= css_queue_in->css_fmt->frame_format;
+	frame_sp->info.raw_bit_depth	= css_queue_in->css_fmt->bit_depth;
+	frame_sp->info.raw_bayer_order	= css_queue_in->css_fmt->bayer_order;
+	frame_sp->info.raw_type		= IMGU_ABI_RAW_TYPE_BAYER;
+	frame_sp->buf_attr.buf_src.queue_id = IMGU_ABI_QUEUE_C_ID;
+	frame_sp->buf_attr.buf_type	= IMGU_ABI_BUFFER_TYPE_INPUT_FRAME;
+
+	frame_sp = &frames_sp->out[0];
+	frame_sp->info.res.width	= css_queue_out->fmt.mpix.width;
+	frame_sp->info.res.height	= css_queue_out->fmt.mpix.height;
+	frame_sp->info.padded_width	= css_queue_out->width_pad;
+	frame_sp->info.format		= css_queue_out->css_fmt->frame_format;
+	frame_sp->info.raw_bit_depth	= css_queue_out->css_fmt->bit_depth;
+	frame_sp->info.raw_bayer_order	= css_queue_out->css_fmt->bayer_order;
+	frame_sp->info.raw_type		= IMGU_ABI_RAW_TYPE_BAYER;
+	frame_sp->planes.nv.uv.offset	= css_queue_out->width_pad *
+					  css_queue_out->fmt.mpix.height;
+	frame_sp->buf_attr.buf_src.queue_id = IMGU_ABI_QUEUE_D_ID;
+	frame_sp->buf_attr.buf_type	= IMGU_ABI_BUFFER_TYPE_OUTPUT_FRAME;
+
+	frame_sp = &frames_sp->out[1];
+	frame_sp->buf_attr.buf_src.queue_id = IMGU_ABI_QUEUE_EVENT_ID;
+
+	frame_sp_info = &frames_sp->internal_frame_info;
+	frame_sp_info->res.width = css_pipe->rect[IPU3_CSS_RECT_BDS].width;
+	frame_sp_info->res.height = css_pipe->rect[IPU3_CSS_RECT_BDS].height;
+	frame_sp_info->padded_width	= bds_width_pad;
+	frame_sp_info->format		= css_queue_out->css_fmt->frame_format;
+	frame_sp_info->raw_bit_depth	= css_queue_out->css_fmt->bit_depth;
+	frame_sp_info->raw_bayer_order	= css_queue_out->css_fmt->bayer_order;
+	frame_sp_info->raw_type		= IMGU_ABI_RAW_TYPE_BAYER;
+
+	frame_sp = &frames_sp->out_vf;
+	frame_sp->info.res.width	= css_queue_vf->fmt.mpix.width;
+	frame_sp->info.res.height	= css_queue_vf->fmt.mpix.height;
+	frame_sp->info.padded_width	= css_queue_vf->width_pad;
+	frame_sp->info.format		= css_queue_vf->css_fmt->frame_format;
+	frame_sp->info.raw_bit_depth	= css_queue_vf->css_fmt->bit_depth;
+	frame_sp->info.raw_bayer_order	= css_queue_vf->css_fmt->bayer_order;
+	frame_sp->info.raw_type		= IMGU_ABI_RAW_TYPE_BAYER;
+	frame_sp->planes.yuv.u.offset	= css_queue_vf->width_pad *
+					  css_queue_vf->fmt.mpix.height;
+	frame_sp->planes.yuv.v.offset	= css_queue_vf->width_pad *
+					  css_queue_vf->fmt.mpix.height * 5 / 4;
+	frame_sp->buf_attr.buf_src.queue_id = IMGU_ABI_QUEUE_E_ID;
+	frame_sp->buf_attr.buf_type	= IMGU_ABI_BUFFER_TYPE_VF_OUTPUT_FRAME;
+
+	frames_sp->s3a_buf.buf_src.queue_id = IMGU_ABI_QUEUE_F_ID;
+	frames_sp->s3a_buf.buf_type	= IMGU_ABI_BUFFER_TYPE_3A_STATISTICS;
+
+	frames_sp->dvs_buf.buf_src.queue_id = IMGU_ABI_QUEUE_G_ID;
+	frames_sp->dvs_buf.buf_type	= IMGU_ABI_BUFFER_TYPE_DIS_STATISTICS;
+
+	sp_stage->dvs_envelope.width =
+				css_pipe->rect[IPU3_CSS_RECT_ENVELOPE].width;
 	sp_stage->dvs_envelope.height =
 				css_pipe->rect[IPU3_CSS_RECT_ENVELOPE].height;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
