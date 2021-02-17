Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7091F31D608
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 09:05:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 216D0859D9;
	Wed, 17 Feb 2021 08:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LOA35CIRlqPm; Wed, 17 Feb 2021 08:05:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D329C85F2D;
	Wed, 17 Feb 2021 08:04:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 665771BF59C
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:04:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 513A76F4CF
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:04:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ygPbTe4Ml8C3 for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 08:04:30 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 060616F647; Wed, 17 Feb 2021 08:04:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2DD0D6F569
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 08:04:01 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B56251F4507A;
 Wed, 17 Feb 2021 08:03:55 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Subject: [PATCH v1 08/18] media: hantro: Add HEVC structures
Date: Wed, 17 Feb 2021 09:02:56 +0100
Message-Id: <20210217080306.157876-9-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
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
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add structures and context for HEVC support

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro.h    |  3 ++
 drivers/staging/media/hantro/hantro_hw.h | 35 ++++++++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 2a566dfc2fe3..8459643657ab 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -34,6 +34,7 @@ struct hantro_codec_ops;
 #define HANTRO_MPEG2_DECODER	BIT(16)
 #define HANTRO_VP8_DECODER	BIT(17)
 #define HANTRO_H264_DECODER	BIT(18)
+#define HANTRO_HEVC_DECODER	BIT(19)
 #define HANTRO_DECODERS		0xffff0000
 
 #define HANTRO_G1_REV		0x6731
@@ -224,6 +225,7 @@ struct hantro_dev {
  * @jpeg_enc:		JPEG-encoding context.
  * @mpeg2_dec:		MPEG-2-decoding context.
  * @vp8_dec:		VP8-decoding context.
+ * @hevc_dec:		HEVC-decoding context.
  */
 struct hantro_ctx {
 	struct hantro_dev *dev;
@@ -250,6 +252,7 @@ struct hantro_ctx {
 		struct hantro_jpeg_enc_hw_ctx jpeg_enc;
 		struct hantro_mpeg2_dec_hw_ctx mpeg2_dec;
 		struct hantro_vp8_dec_hw_ctx vp8_dec;
+		struct hantro_hevc_dec_hw_ctx hevc_dec;
 	};
 };
 
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 34c9e4649a25..191c5ba4a599 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -90,6 +90,41 @@ struct hantro_h264_dec_hw_ctx {
 	struct hantro_h264_dec_ctrls ctrls;
 };
 
+/**
+ * struct hantro_hevc_dec_ctrls
+ * @scaling:	Scaling info
+ * @decode_params: Decode params
+ * @sps:	SPS info
+ * @pps:	PPS info
+ */
+struct hantro_hevc_dec_ctrls {
+	const struct v4l2_ctrl_hevc_scaling_matrix *scaling;
+	const struct v4l2_ctrl_hevc_decode_params *decode_params;
+	const struct v4l2_ctrl_hevc_sps *sps;
+	const struct v4l2_ctrl_hevc_pps *pps;
+};
+
+/**
+ * struct hantro_hevc_dec_hw_ctx
+ * @scaling_lists:	Scaling lists buffer
+ * @tile_sizes:		Tile sizes buffer
+ * @tile_filter:	Tile vertical filter buffer
+ * @tile_sao:		Tile SAO buffer
+ * @tile_bsd:		Tile BSD control buffer
+ * @dpb:	DPB
+ * @reflists:	P/B0/B1 reflists
+ * @ctrls:	V4L2 controls attached to a run
+ */
+struct hantro_hevc_dec_hw_ctx {
+	struct hantro_aux_buf scaling_lists;
+	struct hantro_aux_buf tile_sizes;
+	struct hantro_aux_buf tile_filter;
+	struct hantro_aux_buf tile_sao;
+	struct hantro_aux_buf tile_bsd;
+	struct hantro_hevc_dec_ctrls ctrls;
+	unsigned int num_tile_cols_allocated;
+};
+
 /**
  * struct hantro_mpeg2_dec_hw_ctx
  * @qtable:		Quantization table
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
