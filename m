Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4576431D60D
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 09:05:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D8AC86F60B
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 08:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nBS4SnRbkpIL for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 08:05:12 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 59EF56F5FE; Wed, 17 Feb 2021 08:05:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F0746F55A;
	Wed, 17 Feb 2021 08:04:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 532DB1BF306
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:04:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 404B36F55A
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:04:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 41UZ_018tZKo for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 08:04:11 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 7AE196F4D7; Wed, 17 Feb 2021 08:04:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2233F6F55A
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 08:03:57 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 535071F45073;
 Wed, 17 Feb 2021 08:03:50 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Subject: [PATCH v1 07/18] media: hantro: Add a field to distinguish the
 hardware versions
Date: Wed, 17 Feb 2021 09:02:55 +0100
Message-Id: <20210217080306.157876-8-benjamin.gaignard@collabora.com>
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

Decoders hardware blocks could exist in multiple versions: add
a field to distinguish them at runtime.
Keep the default behavoir to be G1 hardware.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro.h     | 5 +++++
 drivers/staging/media/hantro/hantro_drv.c | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index bde65231f22f..2a566dfc2fe3 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -36,6 +36,9 @@ struct hantro_codec_ops;
 #define HANTRO_H264_DECODER	BIT(18)
 #define HANTRO_DECODERS		0xffff0000
 
+#define HANTRO_G1_REV		0x6731
+#define HANTRO_G2_REV		0x6732
+
 /**
  * struct hantro_irq - irq handler and name
  *
@@ -170,6 +173,7 @@ hantro_vdev_to_func(struct video_device *vdev)
  * @enc_base:		Mapped address of VPU encoder register for convenience.
  * @dec_base:		Mapped address of VPU decoder register for convenience.
  * @ctrl_base:		Mapped address of VPU control block.
+ * @core_hw_dec_rev	Runtime detected HW decoder core revision
  * @vpu_mutex:		Mutex to synchronize V4L2 calls.
  * @irqlock:		Spinlock to synchronize access to data structures
  *			shared with interrupt handlers.
@@ -189,6 +193,7 @@ struct hantro_dev {
 	void __iomem *enc_base;
 	void __iomem *dec_base;
 	void __iomem *ctrl_base;
+	u32 core_hw_dec_rev;
 
 	struct mutex vpu_mutex;	/* video_device lock */
 	spinlock_t irqlock;
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 0570047c7fa0..e1443c394f62 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -840,6 +840,8 @@ static int hantro_probe(struct platform_device *pdev)
 	}
 	vpu->enc_base = vpu->reg_bases[0] + vpu->variant->enc_offset;
 	vpu->dec_base = vpu->reg_bases[0] + vpu->variant->dec_offset;
+	/* by default decoder is G1 */
+	vpu->core_hw_dec_rev = HANTRO_G1_REV;
 
 	ret = dma_set_coherent_mask(vpu->dev, DMA_BIT_MASK(32));
 	if (ret) {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
