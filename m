Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B58533400F8
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 09:22:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 443E1430A2;
	Thu, 18 Mar 2021 08:22:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XRPhymPnQb-L; Thu, 18 Mar 2021 08:22:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5D8CC4309E;
	Thu, 18 Mar 2021 08:22:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCEA61BF376
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 08:21:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC26F6068A
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 08:21:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BSzoUvLl2v6C for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 08:21:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B9E26065A
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:21:12 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 8D5C11F456D1
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Subject: [PATCH v6 07/13] media: hantro: Define HEVC codec profiles and
 supported features
Date: Thu, 18 Mar 2021 09:20:40 +0100
Message-Id: <20210318082046.51546-8-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Define which HEVC profiles (up to level 5.1) and features
(no scaling, no 10 bits) are supported by the driver.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro.h     |  3 ++
 drivers/staging/media/hantro/hantro_drv.c | 58 +++++++++++++++++++++++
 2 files changed, 61 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index a99a96b84b5e..4ae2071b3bfe 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -35,6 +35,7 @@ struct hantro_codec_ops;
 #define HANTRO_MPEG2_DECODER	BIT(16)
 #define HANTRO_VP8_DECODER	BIT(17)
 #define HANTRO_H264_DECODER	BIT(18)
+#define HANTRO_HEVC_DECODER	BIT(19)
 #define HANTRO_DECODERS		0xffff0000
 
 /**
@@ -100,6 +101,7 @@ struct hantro_variant {
  * @HANTRO_MODE_H264_DEC: H264 decoder.
  * @HANTRO_MODE_MPEG2_DEC: MPEG-2 decoder.
  * @HANTRO_MODE_VP8_DEC: VP8 decoder.
+ * @HANTRO_MODE_HEVC_DEC: HEVC decoder.
  */
 enum hantro_codec_mode {
 	HANTRO_MODE_NONE = -1,
@@ -107,6 +109,7 @@ enum hantro_codec_mode {
 	HANTRO_MODE_H264_DEC,
 	HANTRO_MODE_MPEG2_DEC,
 	HANTRO_MODE_VP8_DEC,
+	HANTRO_MODE_HEVC_DEC,
 };
 
 /*
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index ac1429f00b33..f0b68e16fcc0 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -245,6 +245,18 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
 		if (sps->bit_depth_luma_minus8 != 0)
 			/* Only 8-bit is supported */
 			return -EINVAL;
+	} else if (ctrl->id == V4L2_CID_MPEG_VIDEO_HEVC_SPS) {
+		const struct v4l2_ctrl_hevc_sps *sps = ctrl->p_new.p_hevc_sps;
+
+		if (sps->bit_depth_luma_minus8 != sps->bit_depth_chroma_minus8)
+			/* Luma and chroma bit depth mismatch */
+			return -EINVAL;
+		if (sps->bit_depth_luma_minus8 != 0)
+			/* Only 8-bit is supported */
+			return -EINVAL;
+		if (sps->flags & V4L2_HEVC_SPS_FLAG_SCALING_LIST_ENABLED)
+			/* No scaling support */
+			return -EINVAL;
 	}
 	return 0;
 }
@@ -351,6 +363,52 @@ static const struct hantro_ctrl controls[] = {
 			.def = V4L2_MPEG_VIDEO_H264_PROFILE_MAIN,
 		}
 	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_DECODE_MODE,
+			.min = V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_FRAME_BASED,
+			.max = V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_FRAME_BASED,
+			.def = V4L2_MPEG_VIDEO_HEVC_DECODE_MODE_FRAME_BASED,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_START_CODE,
+			.min = V4L2_MPEG_VIDEO_HEVC_START_CODE_ANNEX_B,
+			.max = V4L2_MPEG_VIDEO_HEVC_START_CODE_ANNEX_B,
+			.def = V4L2_MPEG_VIDEO_HEVC_START_CODE_ANNEX_B,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_PROFILE,
+			.min = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
+			.max = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN_10,
+			.def = V4L2_MPEG_VIDEO_HEVC_PROFILE_MAIN,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_LEVEL,
+			.min = V4L2_MPEG_VIDEO_HEVC_LEVEL_1,
+			.max = V4L2_MPEG_VIDEO_HEVC_LEVEL_5_1,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_SPS,
+			.ops = &hantro_ctrl_ops,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_PPS,
+		},
+	}, {
+		.codec = HANTRO_HEVC_DECODER,
+		.cfg = {
+			.id = V4L2_CID_MPEG_VIDEO_HEVC_DECODE_PARAMS,
+		},
 	},
 };
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
