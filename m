Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E71249C24
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 13:46:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 415A7865E2;
	Wed, 19 Aug 2020 11:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8BZ5c9SYE4nR; Wed, 19 Aug 2020 11:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D622486786;
	Wed, 19 Aug 2020 11:46:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CBCCC1BF9AF
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C96108560C
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id brjAgsRu7sEa for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 50A4C85617
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A7F62311D;
 Wed, 19 Aug 2020 11:46:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597837583;
 bh=FpfLqTZVGeSp8MM2Pkt3e1EBtQJ47pB5nXQ5ggNPs24=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QrRCC8dhYwIRWv2oe6nSuz0KoupARv8q0VsVrzsultzPiVOgnadXlAHnekjl4l67d
 HkwG7/9/N9ibqukhgRCRbiGxoyHDVpX/uWTa4frM/NYuphkaeBJfiWgbBlZWaYaRsv
 TRvkEQphTmMWEnmW/E3sTWXqRKRDgorMg8/fYXaI=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k8MXt-00Eubt-5a; Wed, 19 Aug 2020 13:46:21 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 41/49] staging: hikey9xx/gpu: get rid of some unused data
Date: Wed, 19 Aug 2020 13:46:09 +0200
Message-Id: <024a251bfc6c10f11e09add5fe84cfcc924d7751.1597833138.git.mchehab+huawei@kernel.org>
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
 Chen Feng <puck.chen@hisilicon.com>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Liuyao An <anliuyao@huawei.com>,
 John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 mauro.chehab@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are some things inside struct dss_hw_ctx that are unused.
Get rid of them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h | 2 --
 drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h | 3 ---
 drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c | 2 --
 3 files changed, 7 deletions(-)

diff --git a/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h b/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
index cd248bf15503..ae4eaae14429 100644
--- a/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
+++ b/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
@@ -3081,8 +3081,6 @@ struct dss_hw_ctx {
 	ktime_t vsync_timestamp_prev;
 
 	struct iommu_domain *mmu_domain;
-	struct ion_client *ion_client;
-	struct ion_handle *ion_handle;
 	char __iomem *screen_base;
 	unsigned long smem_start;
 	unsigned long screen_size;
diff --git a/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h b/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
index aeae3720c889..4751b8b6423c 100644
--- a/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
+++ b/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
@@ -4068,12 +4068,9 @@ struct dss_hw_ctx {
 	ktime_t vsync_timestamp_prev;
 
 	struct iommu_domain *mmu_domain;
-	struct ion_client *ion_client;
-	struct ion_handle *ion_handle;
 	char __iomem *screen_base;
 	unsigned long smem_start;
 	unsigned long screen_size;
-	struct dss_smmu smmu;
 };
 
 struct dss_clk_rate {
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
index 292e14d2edf5..6792ac6fa8dc 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
@@ -976,8 +976,6 @@ static int dss_drm_init(struct drm_device *dev)
 	if (ret)
 		return ret;
 
-	ctx->ion_client = NULL;
-	ctx->ion_handle = NULL;
 	ctx->screen_base = 0;
 	ctx->screen_size = 0;
 	ctx->smem_start = 0;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
