Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49BE33400F9
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 09:22:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5880841CA;
	Thu, 18 Mar 2021 08:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iLXD249wQmnu; Thu, 18 Mar 2021 08:22:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AB1E84168;
	Thu, 18 Mar 2021 08:22:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1168E1BF376
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 08:21:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F3B2E4309F
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 08:21:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EpMjYKuTHbHk for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 08:21:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4341C4309A
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:21:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id BDAD21F456D3
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Subject: [PATCH v6 08/13] media: hantro: Only use postproc when post processed
 formats are defined
Date: Thu, 18 Mar 2021 09:20:41 +0100
Message-Id: <20210318082046.51546-9-benjamin.gaignard@collabora.com>
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

If the variant doesn't offert postprocessed formats make sure it will
be ok.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro.h          |  8 ++------
 drivers/staging/media/hantro/hantro_postproc.c | 14 ++++++++++++++
 drivers/staging/media/hantro/hantro_v4l2.c     |  4 +++-
 3 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 4ae2071b3bfe..83299e8d3a6c 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -413,12 +413,8 @@ hantro_get_dst_buf(struct hantro_ctx *ctx)
 	return v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 }
 
-static inline bool
-hantro_needs_postproc(const struct hantro_ctx *ctx,
-		      const struct hantro_fmt *fmt)
-{
-	return !ctx->is_encoder && fmt->fourcc != V4L2_PIX_FMT_NV12;
-}
+bool hantro_needs_postproc(const struct hantro_ctx *ctx,
+			   const struct hantro_fmt *fmt);
 
 static inline dma_addr_t
 hantro_get_dec_buf_addr(struct hantro_ctx *ctx, struct vb2_buffer *vb)
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 6d2a8f2a8f0b..ed8916c950a4 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -50,6 +50,20 @@ const struct hantro_postproc_regs hantro_g1_postproc_regs = {
 	.display_width = {G1_REG_PP_DISPLAY_WIDTH, 0, 0xfff},
 };
 
+bool hantro_needs_postproc(const struct hantro_ctx *ctx,
+			   const struct hantro_fmt *fmt)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	if (ctx->is_encoder)
+		return false;
+
+	if (!vpu->variant->postproc_fmts)
+		return false;
+
+	return fmt->fourcc != V4L2_PIX_FMT_NV12;
+}
+
 void hantro_postproc_enable(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index 1bc118e375a1..77d7fe62ce81 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -55,7 +55,9 @@ static const struct hantro_fmt *
 hantro_get_postproc_formats(const struct hantro_ctx *ctx,
 			    unsigned int *num_fmts)
 {
-	if (ctx->is_encoder) {
+	struct hantro_dev *vpu = ctx->dev;
+
+	if (ctx->is_encoder || !vpu->variant->postproc_fmts) {
 		*num_fmts = 0;
 		return NULL;
 	}
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
