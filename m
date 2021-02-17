Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D9731D606
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 09:04:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B63BA871E5;
	Wed, 17 Feb 2021 08:04:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q4Zz0NiUzfyK; Wed, 17 Feb 2021 08:04:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 932E0871F2;
	Wed, 17 Feb 2021 08:04:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A5231BF306
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5682086BAC
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kHtq3bxbKdMB for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 08:04:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4EB5B866F6
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 08:04:11 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B51451F45097;
 Wed, 17 Feb 2021 08:04:08 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Subject: [PATCH v1 14/18] media: hantro: add G2 support to postproc
Date: Wed, 17 Feb 2021 09:03:02 +0100
Message-Id: <20210217080306.157876-15-benjamin.gaignard@collabora.com>
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

G2 doesn't have the same post processor feature than G1.
Adapt post processor code for G2 requirements.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 .../staging/media/hantro/hantro_postproc.c    | 35 ++++++++++++-------
 1 file changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 050880f720d6..64eee936285d 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -74,12 +74,6 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 	u32 src_pp_fmt, dst_pp_fmt;
 	dma_addr_t dst_dma;
 
-	if (!vpu->variant->postproc_regs)
-		return;
-
-	/* Turn on pipeline mode. Must be done first. */
-	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x1);
-
 	src_pp_fmt = VPU_PP_IN_NV12;
 
 	switch (ctx->vpu_dst_fmt->fourcc) {
@@ -93,13 +87,32 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 		break;
 	}
 
+	if (!vpu->variant->postproc_regs)
+		return;
+
+	/* Turn on pipeline mode. Must be done first. */
+	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x1);
+
+	switch (ctx->dev->core_hw_dec_rev) {
+	case HANTRO_G1_REV:
+		HANTRO_PP_REG_WRITE(vpu, clk_gate, 0x1);
+		HANTRO_PP_REG_WRITE(vpu, out_endian, 0x1);
+		HANTRO_PP_REG_WRITE(vpu, out_swap32, 0x1);
+		HANTRO_PP_REG_WRITE(vpu, max_burst, 16);
+
+		HANTRO_PP_REG_WRITE(vpu, orig_width, MB_WIDTH(ctx->dst_fmt.width));
+		HANTRO_PP_REG_WRITE(vpu, display_width, ctx->dst_fmt.width);
+		break;
+	default:
+		vpu_err("PP does not recognize HW revision: %x, disabling\n",
+			ctx->dev->core_hw_dec_rev);
+		hantro_postproc_disable(ctx);
+		return;
+	}
+
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
 
-	HANTRO_PP_REG_WRITE(vpu, clk_gate, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, out_endian, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, out_swap32, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, max_burst, 16);
 	HANTRO_PP_REG_WRITE(vpu, out_luma_base, dst_dma);
 	HANTRO_PP_REG_WRITE(vpu, input_width, MB_WIDTH(ctx->dst_fmt.width));
 	HANTRO_PP_REG_WRITE(vpu, input_height, MB_HEIGHT(ctx->dst_fmt.height));
@@ -107,8 +120,6 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 	HANTRO_PP_REG_WRITE(vpu, output_fmt, dst_pp_fmt);
 	HANTRO_PP_REG_WRITE(vpu, output_width, ctx->dst_fmt.width);
 	HANTRO_PP_REG_WRITE(vpu, output_height, ctx->dst_fmt.height);
-	HANTRO_PP_REG_WRITE(vpu, orig_width, MB_WIDTH(ctx->dst_fmt.width));
-	HANTRO_PP_REG_WRITE(vpu, display_width, ctx->dst_fmt.width);
 }
 
 void hantro_postproc_free(struct hantro_ctx *ctx)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
