Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE712E1B59
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 12:07:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9F4D872DD;
	Wed, 23 Dec 2020 11:07:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vpGOzzUrxbxs; Wed, 23 Dec 2020 11:07:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BFAF2871D8;
	Wed, 23 Dec 2020 11:07:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E5A11BF339
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 11:07:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 071F3867FB
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 11:07:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CaMor1pkgcNw for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 11:07:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs15.siol.net [185.57.226.206])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CC4B1867D3
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 11:07:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id EB1D352245D;
 Wed, 23 Dec 2020 12:07:11 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 1B9QXqDKl0Mr; Wed, 23 Dec 2020 12:07:11 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 79E1352248C;
 Wed, 23 Dec 2020 12:07:11 +0100 (CET)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 6A348521E46;
 Wed, 23 Dec 2020 12:07:08 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 1/2] media: cedrus: Remove checking for required controls
Date: Wed, 23 Dec 2020 12:06:58 +0100
Message-Id: <20201223110659.2631255-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201223110659.2631255-1-jernej.skrabec@siol.net>
References: <20201223110659.2631255-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net,
 nicolas.dufresne@collabora.com, gregkh@linuxfoundation.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 hans.verkuil@cisco.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

According to v4l2 request api specifications, it's allowed to skip
control if its content isn't changed for performance reasons. Cedrus
driver predates that, so it has implemented mechanism to check if all
required controls are included in one request.

Conform to specifications with removing that mechanism.

Note that this mechanism with static required flag isn't very good
anyway because need for control is usually signaled in other controls.

Fixes: 50e761516f2b ("media: platform: Add Cedrus VPU decoder driver")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.c | 49 ---------------------
 drivers/staging/media/sunxi/cedrus/cedrus.h |  1 -
 2 files changed, 50 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index ddad5d274ee8..7bd9291c8d5f 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -34,56 +34,48 @@ static const struct cedrus_control cedrus_controls[] = {
 			.id	= V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS,
 		},
 		.codec		= CEDRUS_CODEC_MPEG2,
-		.required	= true,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION,
 		},
 		.codec		= CEDRUS_CODEC_MPEG2,
-		.required	= false,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_STATELESS_H264_DECODE_PARAMS,
 		},
 		.codec		= CEDRUS_CODEC_H264,
-		.required	= true,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_STATELESS_H264_SLICE_PARAMS,
 		},
 		.codec		= CEDRUS_CODEC_H264,
-		.required	= true,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_STATELESS_H264_SPS,
 		},
 		.codec		= CEDRUS_CODEC_H264,
-		.required	= true,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_STATELESS_H264_PPS,
 		},
 		.codec		= CEDRUS_CODEC_H264,
-		.required	= true,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_STATELESS_H264_SCALING_MATRIX,
 		},
 		.codec		= CEDRUS_CODEC_H264,
-		.required	= false,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_STATELESS_H264_PRED_WEIGHTS,
 		},
 		.codec		= CEDRUS_CODEC_H264,
-		.required	= false,
 	},
 	{
 		.cfg = {
@@ -92,7 +84,6 @@ static const struct cedrus_control cedrus_controls[] = {
 			.def	= V4L2_STATELESS_H264_DECODE_MODE_SLICE_BASED,
 		},
 		.codec		= CEDRUS_CODEC_H264,
-		.required	= false,
 	},
 	{
 		.cfg = {
@@ -101,7 +92,6 @@ static const struct cedrus_control cedrus_controls[] = {
 			.def	= V4L2_STATELESS_H264_START_CODE_NONE,
 		},
 		.codec		= CEDRUS_CODEC_H264,
-		.required	= false,
 	},
 	/*
 	 * We only expose supported profiles information,
@@ -120,28 +110,24 @@ static const struct cedrus_control cedrus_controls[] = {
 				BIT(V4L2_MPEG_VIDEO_H264_PROFILE_EXTENDED),
 		},
 		.codec		= CEDRUS_CODEC_H264,
-		.required	= false,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_MPEG_VIDEO_HEVC_SPS,
 		},
 		.codec		= CEDRUS_CODEC_H265,
-		.required	= true,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_MPEG_VIDEO_HEVC_PPS,
 		},
 		.codec		= CEDRUS_CODEC_H265,
-		.required	= true,
 	},
 	{
 		.cfg = {
 			.id	= V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS,
 		},
 		.codec		= CEDRUS_CODEC_H265,
-		.required	= true,
 	},
 	{
 		.cfg = {
@@ -150,7 +136,6 @@ static const struct cedrus_control cedrus_controls[] = {
 			.def	= V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_SLICE_BASED,
 		},
 		.codec		= CEDRUS_CODEC_H265,
-		.required	= false,
 	},
 	{
 		.cfg = {
@@ -159,14 +144,12 @@ static const struct cedrus_control cedrus_controls[] = {
 			.def	= V4L2_MPEG_VIDEO_HEVC_START_CODE_NONE,
 		},
 		.codec		= CEDRUS_CODEC_H265,
-		.required	= false,
 	},
 	{
 		.cfg = {
 			.id		= V4L2_CID_MPEG_VIDEO_VP8_FRAME_HEADER,
 		},
 		.codec		= CEDRUS_CODEC_VP8,
-		.required	= true,
 	},
 };
 
@@ -227,12 +210,8 @@ static int cedrus_init_ctrls(struct cedrus_dev *dev, struct cedrus_ctx *ctx)
 static int cedrus_request_validate(struct media_request *req)
 {
 	struct media_request_object *obj;
-	struct v4l2_ctrl_handler *parent_hdl, *hdl;
 	struct cedrus_ctx *ctx = NULL;
-	struct v4l2_ctrl *ctrl_test;
 	unsigned int count;
-	unsigned int i;
-	int ret = 0;
 
 	list_for_each_entry(obj, &req->objects, list) {
 		struct vb2_buffer *vb;
@@ -259,34 +238,6 @@ static int cedrus_request_validate(struct media_request *req)
 		return -EINVAL;
 	}
 
-	parent_hdl = &ctx->hdl;
-
-	hdl = v4l2_ctrl_request_hdl_find(req, parent_hdl);
-	if (!hdl) {
-		v4l2_info(&ctx->dev->v4l2_dev, "Missing codec control(s)\n");
-		return -ENOENT;
-	}
-
-	for (i = 0; i < CEDRUS_CONTROLS_COUNT; i++) {
-		if (cedrus_controls[i].codec != ctx->current_codec ||
-		    !cedrus_controls[i].required)
-			continue;
-
-		ctrl_test = v4l2_ctrl_request_hdl_ctrl_find(hdl,
-							    cedrus_controls[i].cfg.id);
-		if (!ctrl_test) {
-			v4l2_info(&ctx->dev->v4l2_dev,
-				  "Missing required codec control\n");
-			ret = -ENOENT;
-			break;
-		}
-	}
-
-	v4l2_ctrl_request_hdl_put(hdl);
-
-	if (ret)
-		return ret;
-
 	return vb2_request_validate(req);
 }
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index c96077aaef49..251a6a660351 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -56,7 +56,6 @@ enum cedrus_h264_pic_type {
 struct cedrus_control {
 	struct v4l2_ctrl_config cfg;
 	enum cedrus_codec	codec;
-	unsigned char		required:1;
 };
 
 struct cedrus_h264_run {
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
