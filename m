Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 530D3249C21
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 13:46:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDA0184AD2;
	Wed, 19 Aug 2020 11:46:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XmBTQgNeSsm2; Wed, 19 Aug 2020 11:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1CE79855DF;
	Wed, 19 Aug 2020 11:46:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 02D6F1BF9AD
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 000BC8693C
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4+qrx+40mWWU for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3F9C28691E
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 093342310C;
 Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597837583;
 bh=zHf77lVLfTNqIaF9sRrNbaiO3qYSqs9jubzcWDx1ovA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lqYhiCf4WYrkZPL2mxfY4LFdgDMcf0IqacgkYiFAinHtvsLLw3nGvlRlGBuq2tExC
 sceu3WD8kEwqxZtiHI9Du/wNwhm5UOIo8sSpTykX26dS1KpIiBGQ9TGW+NSCHCDqFT
 NvrVXGF9PpS3l24SHgKq/HPA5yjH1dbBZKrVZ1yM=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k8MXt-00Eubj-0d; Wed, 19 Aug 2020 13:46:21 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 37/49] staging: hikey9xx/gpu: don't use iommu code
Date: Wed, 19 Aug 2020 13:46:05 +0200
Message-Id: <0230300d41aaa80f27aeeeafe585b8d19b4d5146.1597833138.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597833138.git.mchehab+huawei@kernel.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Liwei Cai <cailiwei@hisilicon.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-kernel@vger.kernel.org, Wanchun Zheng <zhengwanchun@hisilicon.com>,
 linuxarm@huawei.com, dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, John Stultz <john.stultz@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

While this driver apparently supports both IOMMU and no-IOMMU
access, it always enable the IOMMU via some code, at the
downstream version.

Apparently, the downstream iommu is there just to get the
physical address of the logical IOMMU address. Based on
the downstream code, it sounds that the IOMMU would be an
specific one for the GPU.

Anyway, right now, the driver is set to not use the IOMMU
at all. So, let's comment out the code which allocates
IOMMU pages, and the code that would try to use it to
setup a register, as, without the IOMMU, this would cause
an OOPS.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c      | 12 ++++++++++--
 .../hikey9xx/gpu/kirin9xx_drm_overlay_utils.c        | 10 ++++++++++
 2 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
index e3bb0a32dddf..546da775f2fb 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
@@ -769,6 +769,14 @@ static int dss_plane_init(struct drm_device *dev, struct dss_plane *aplane,
 
 static int dss_enable_iommu(struct platform_device *pdev, struct dss_hw_ctx *ctx)
 {
+#if 0
+/*
+ * FIXME:
+ *
+ * Right now, the IOMMU support is actually disabled. See the caller of
+ * hisi_dss_smmu_config(). Yet, if we end enabling it, this should be
+ * ported to use io-pgtable directly.
+ */
 	struct device *dev = NULL;
 
 	dev = &pdev->dev;
@@ -781,7 +789,7 @@ static int dss_enable_iommu(struct platform_device *pdev, struct dss_hw_ctx *ctx
 	}
 
 	iommu_attach_device(ctx->mmu_domain, dev);
-
+#endif
 	return 0;
 }
 
@@ -934,7 +942,7 @@ static int dss_dts_parse(struct platform_device *pdev, struct dss_hw_ctx *ctx)
 			 DSS_MAX_PXL0_CLK_144M, (uint64_t)clk_get_rate(ctx->dss_pxl0_clk));
 	}
 
-	/* regulator enable */
+	/* enable IOMMU */
 	dss_enable_iommu(pdev, ctx);
 
 	return 0;
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
index 9113937478f5..6b6774b8d903 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
@@ -1333,8 +1333,17 @@ static void hisi_dss_mif_on(struct dss_hw_ctx *ctx)
 	set_reg(dss_base + MIF_CH11_OFFSET + MIF_CTRL0, 0x1, 1, 0);
 }
 
+
 void hisi_dss_smmu_on(struct dss_hw_ctx *ctx)
 {
+#if 0
+/*
+ * FIXME:
+ *
+ * Right now, the IOMMU support is actually disabled. See the caller of
+ * hisi_dss_smmu_config(). Yet, if we end enabling it, this should be
+ * ported to use io-pgtable directly.
+ */
 	void __iomem *smmu_base;
 	struct iommu_domain_data *domain_data = NULL;
 	u32 phy_pgd_base = 0;
@@ -1374,6 +1383,7 @@ void hisi_dss_smmu_on(struct dss_hw_ctx *ctx)
 	phy_pgd_base = (uint32_t)(domain_data->phy_pgd_base);
 	DRM_DEBUG("fama_phy_pgd_base = %llu, phy_pgd_base =0x%x \n", fama_phy_pgd_base, phy_pgd_base);
 	set_reg(smmu_base + SMMU_CB_TTBR0, phy_pgd_base, 32, 0);
+#endif
 }
 
 void hisifb_dss_on(struct dss_hw_ctx *ctx)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
