Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BED7135B7
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 May 2019 00:43:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D62E788934;
	Fri,  3 May 2019 22:43:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PhIvfOEYyIMM; Fri,  3 May 2019 22:43:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 92DF68858C;
	Fri,  3 May 2019 22:43:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 90E761BF3D2
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:43:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8DC6C8459E
 for <devel@linuxdriverproject.org>; Fri,  3 May 2019 22:43:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qiFhHkuPrZAG for <devel@linuxdriverproject.org>;
 Fri,  3 May 2019 22:43:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9421E84546
 for <devel@driverdev.osuosl.org>; Fri,  3 May 2019 22:43:38 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id n8so3349781plp.10
 for <devel@driverdev.osuosl.org>; Fri, 03 May 2019 15:43:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vh+f8bdLjY+HSfSVBVy8Lc/Hv+xFPxT6P6Duza4D9HA=;
 b=EgBibSzQzNZyaDWGZQdmYgyajg6GvTlPYNK0RmjIxLmeTufTpc1uPVwkzm2p5YP0V2
 /jWdGJ73fc5z11SOLMK+vznXt+9dJGWBSdfNANWWqO8maHNJsKam7eA0QxrYZNxDVYaK
 DZa+Bh1LulDIA7kusAVorwjwi9Q3VksVRk4hcP7xMeVIhPtdRdA9ghY/WvUvSL79Pbx6
 uTxBmlHZWy4SBr+YNcihVBkqMb8vYyS6Nf1Zjx4lbHvZDvws5px1gNK6rwLTZIVrYDrP
 V388QCsfqwWVHB1WmlmqqhkPT8qeZsue4SlCqXidoI2zFPfuIXktZIOlzmXRSlQSKjKn
 eRKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vh+f8bdLjY+HSfSVBVy8Lc/Hv+xFPxT6P6Duza4D9HA=;
 b=Th94h3YJt2ubIaDEQpNxmTqyC4u0k/fWicnW5vuhJiVeVvyssjoNmb8gLEMKzcmqtH
 21t6yP4pnWaBm87cTvhEC1LoF0pFwfVhH59tfq+ZoahUZvBl/Un7NYxCZJ5Ae5Pn4KQI
 QVRw9x5zuezRuLVZF0QWBp+GVoy+w4kSKaXJq2GEyVdQGq2HVwZA5KhN3bY2FD4s5glk
 LGBg991pM70M3p19vh5nzzVM45ckwZ333qA2s7pSJsIdGjJb63mwzo9ECyFT2JAJSajg
 INt0/ozAxiPBEC5DygPzkMBlgrA7JEPp7eh0k8yC9ZtX6IFoanMc95fqnMVFT5TgTOYh
 L+jA==
X-Gm-Message-State: APjAAAXiKIHBX7kkVPU+hw2d3ilmmOYMqQzGGl9ubDMaa2jId7HV102w
 uOOO7ThjotuANlJLs4vvBJ8=
X-Google-Smtp-Source: APXvYqyzxnZaCrW5IkTqOdCpOVpCCe1fMIBgjIx4ZOPIbPO3CFipcahW5MfGa1J8fv99RX48f93yVw==
X-Received: by 2002:a17:902:70ca:: with SMTP id
 l10mr14372938plt.228.1556923418103; 
 Fri, 03 May 2019 15:43:38 -0700 (PDT)
Received: from majic.sklembedded.com (c-73-202-231-77.hsd1.ca.comcast.net.
 [73.202.231.77])
 by smtp.googlemail.com with ESMTPSA id e62sm4793871pfa.50.2019.05.03.15.43.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 15:43:37 -0700 (PDT)
From: Steve Longerbeam <slongerbeam@gmail.com>
To: linux-media@vger.kernel.org
Subject: [PATCH v4 2/8] media: staging/imx: Pass device to alloc/free_dma_buf
Date: Fri,  3 May 2019 15:43:20 -0700
Message-Id: <20190503224326.21039-3-slongerbeam@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190503224326.21039-1-slongerbeam@gmail.com>
References: <20190503224326.21039-1-slongerbeam@gmail.com>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Allocate and free a DMA coherent buffer in imx_media_alloc/free_dma_buf()
from the given device. This allows DMA alloc and free using a device
that is backed by real hardware, which for the imx5/6/7 CSI is the CSI
unit, and for the internal IPU sub-devices, is the parent IPU.

Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
---
 drivers/staging/media/imx/imx-ic-prpencvf.c | 18 +++++++++---------
 drivers/staging/media/imx/imx-media-csi.c   |  6 +++---
 drivers/staging/media/imx/imx-media-utils.c | 13 ++++++-------
 drivers/staging/media/imx/imx-media.h       |  4 ++--
 drivers/staging/media/imx/imx7-media-csi.c  |  4 ++--
 5 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
index 069cce512280..ddcd87a17c71 100644
--- a/drivers/staging/media/imx/imx-ic-prpencvf.c
+++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
@@ -464,13 +464,13 @@ static int prp_setup_rotation(struct prp_priv *priv)
 	incc = priv->cc[PRPENCVF_SINK_PAD];
 	outcc = vdev->cc;
 
-	ret = imx_media_alloc_dma_buf(ic_priv->md, &priv->rot_buf[0],
+	ret = imx_media_alloc_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[0],
 				      outfmt->sizeimage);
 	if (ret) {
 		v4l2_err(&ic_priv->sd, "failed to alloc rot_buf[0], %d\n", ret);
 		return ret;
 	}
-	ret = imx_media_alloc_dma_buf(ic_priv->md, &priv->rot_buf[1],
+	ret = imx_media_alloc_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[1],
 				      outfmt->sizeimage);
 	if (ret) {
 		v4l2_err(&ic_priv->sd, "failed to alloc rot_buf[1], %d\n", ret);
@@ -543,9 +543,9 @@ static int prp_setup_rotation(struct prp_priv *priv)
 unsetup_vb2:
 	prp_unsetup_vb2_buf(priv, VB2_BUF_STATE_QUEUED);
 free_rot1:
-	imx_media_free_dma_buf(ic_priv->md, &priv->rot_buf[1]);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[1]);
 free_rot0:
-	imx_media_free_dma_buf(ic_priv->md, &priv->rot_buf[0]);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[0]);
 	return ret;
 }
 
@@ -563,8 +563,8 @@ static void prp_unsetup_rotation(struct prp_priv *priv)
 
 	ipu_ic_disable(priv->ic);
 
-	imx_media_free_dma_buf(ic_priv->md, &priv->rot_buf[0]);
-	imx_media_free_dma_buf(ic_priv->md, &priv->rot_buf[1]);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[0]);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->rot_buf[1]);
 }
 
 static int prp_setup_norotation(struct prp_priv *priv)
@@ -656,7 +656,7 @@ static int prp_start(struct prp_priv *priv)
 
 	outfmt = &vdev->fmt.fmt.pix;
 
-	ret = imx_media_alloc_dma_buf(ic_priv->md, &priv->underrun_buf,
+	ret = imx_media_alloc_dma_buf(ic_priv->ipu_dev, &priv->underrun_buf,
 				      outfmt->sizeimage);
 	if (ret)
 		goto out_put_ipu;
@@ -726,7 +726,7 @@ static int prp_start(struct prp_priv *priv)
 out_unsetup:
 	prp_unsetup(priv, VB2_BUF_STATE_QUEUED);
 out_free_underrun:
-	imx_media_free_dma_buf(ic_priv->md, &priv->underrun_buf);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->underrun_buf);
 out_put_ipu:
 	prp_put_ipu_resources(priv);
 	return ret;
@@ -763,7 +763,7 @@ static void prp_stop(struct prp_priv *priv)
 
 	prp_unsetup(priv, VB2_BUF_STATE_ERROR);
 
-	imx_media_free_dma_buf(ic_priv->md, &priv->underrun_buf);
+	imx_media_free_dma_buf(ic_priv->ipu_dev, &priv->underrun_buf);
 
 	/* cancel the EOF timeout timer */
 	del_timer_sync(&priv->eof_timeout_timer);
diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
index 93b107eab5f5..ea3d13103c91 100644
--- a/drivers/staging/media/imx/imx-media-csi.c
+++ b/drivers/staging/media/imx/imx-media-csi.c
@@ -612,7 +612,7 @@ static int csi_idmac_start(struct csi_priv *priv)
 
 	outfmt = &vdev->fmt.fmt.pix;
 
-	ret = imx_media_alloc_dma_buf(priv->md, &priv->underrun_buf,
+	ret = imx_media_alloc_dma_buf(priv->dev, &priv->underrun_buf,
 				      outfmt->sizeimage);
 	if (ret)
 		goto out_put_ipu;
@@ -666,7 +666,7 @@ static int csi_idmac_start(struct csi_priv *priv)
 out_unsetup:
 	csi_idmac_unsetup(priv, VB2_BUF_STATE_QUEUED);
 out_free_dma_buf:
-	imx_media_free_dma_buf(priv->md, &priv->underrun_buf);
+	imx_media_free_dma_buf(priv->dev, &priv->underrun_buf);
 out_put_ipu:
 	csi_idmac_put_ipu_resources(priv);
 	return ret;
@@ -698,7 +698,7 @@ static void csi_idmac_stop(struct csi_priv *priv)
 
 	csi_idmac_unsetup(priv, VB2_BUF_STATE_ERROR);
 
-	imx_media_free_dma_buf(priv->md, &priv->underrun_buf);
+	imx_media_free_dma_buf(priv->dev, &priv->underrun_buf);
 
 	/* cancel the EOF timeout timer */
 	del_timer_sync(&priv->eof_timeout_timer);
diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
index 1c63a2765a81..c52aa59acd05 100644
--- a/drivers/staging/media/imx/imx-media-utils.c
+++ b/drivers/staging/media/imx/imx-media-utils.c
@@ -679,29 +679,28 @@ int imx_media_ipu_image_to_mbus_fmt(struct v4l2_mbus_framefmt *mbus,
 }
 EXPORT_SYMBOL_GPL(imx_media_ipu_image_to_mbus_fmt);
 
-void imx_media_free_dma_buf(struct imx_media_dev *imxmd,
+void imx_media_free_dma_buf(struct device *dev,
 			    struct imx_media_dma_buf *buf)
 {
 	if (buf->virt)
-		dma_free_coherent(imxmd->md.dev, buf->len,
-				  buf->virt, buf->phys);
+		dma_free_coherent(dev, buf->len, buf->virt, buf->phys);
 
 	buf->virt = NULL;
 	buf->phys = 0;
 }
 EXPORT_SYMBOL_GPL(imx_media_free_dma_buf);
 
-int imx_media_alloc_dma_buf(struct imx_media_dev *imxmd,
+int imx_media_alloc_dma_buf(struct device *dev,
 			    struct imx_media_dma_buf *buf,
 			    int size)
 {
-	imx_media_free_dma_buf(imxmd, buf);
+	imx_media_free_dma_buf(dev, buf);
 
 	buf->len = PAGE_ALIGN(size);
-	buf->virt = dma_alloc_coherent(imxmd->md.dev, buf->len, &buf->phys,
+	buf->virt = dma_alloc_coherent(dev, buf->len, &buf->phys,
 				       GFP_DMA | GFP_KERNEL);
 	if (!buf->virt) {
-		dev_err(imxmd->md.dev, "failed to alloc dma buffer\n");
+		dev_err(dev, "%s: failed\n", __func__);
 		return -ENOMEM;
 	}
 
diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
index fadde3435cb7..ba2d75bcc4c9 100644
--- a/drivers/staging/media/imx/imx-media.h
+++ b/drivers/staging/media/imx/imx-media.h
@@ -208,9 +208,9 @@ struct imx_media_dma_buf {
 	unsigned long  len;
 };
 
-void imx_media_free_dma_buf(struct imx_media_dev *imxmd,
+void imx_media_free_dma_buf(struct device *dev,
 			    struct imx_media_dma_buf *buf);
-int imx_media_alloc_dma_buf(struct imx_media_dev *imxmd,
+int imx_media_alloc_dma_buf(struct device *dev,
 			    struct imx_media_dma_buf *buf,
 			    int size);
 
diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
index 95f3808762b4..96d01d8af874 100644
--- a/drivers/staging/media/imx/imx7-media-csi.c
+++ b/drivers/staging/media/imx/imx7-media-csi.c
@@ -714,7 +714,7 @@ static int imx7_csi_dma_start(struct imx7_csi *csi)
 	struct v4l2_pix_format *out_pix = &vdev->fmt.fmt.pix;
 	int ret;
 
-	ret = imx_media_alloc_dma_buf(csi->imxmd, &csi->underrun_buf,
+	ret = imx_media_alloc_dma_buf(csi->dev, &csi->underrun_buf,
 				      out_pix->sizeimage);
 	if (ret < 0) {
 		v4l2_warn(&csi->sd, "consider increasing the CMA area\n");
@@ -754,7 +754,7 @@ static void imx7_csi_dma_stop(struct imx7_csi *csi)
 
 	imx7_csi_dma_unsetup_vb2_buf(csi, VB2_BUF_STATE_ERROR);
 
-	imx_media_free_dma_buf(csi->imxmd, &csi->underrun_buf);
+	imx_media_free_dma_buf(csi->dev, &csi->underrun_buf);
 }
 
 static int imx7_csi_configure(struct imx7_csi *csi)
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
