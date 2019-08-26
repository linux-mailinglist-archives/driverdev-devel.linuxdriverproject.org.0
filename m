Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1239D0A5
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Aug 2019 15:32:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94851868B2;
	Mon, 26 Aug 2019 13:32:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4mbFIhkR9neb; Mon, 26 Aug 2019 13:32:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7FC5A8464A;
	Mon, 26 Aug 2019 13:32:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0C9A1BF345
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 13:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ECC958464A
 for <devel@linuxdriverproject.org>; Mon, 26 Aug 2019 13:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZFi3IgabmT1A for <devel@linuxdriverproject.org>;
 Mon, 26 Aug 2019 13:32:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C557581B89
 for <devel@driverdev.osuosl.org>; Mon, 26 Aug 2019 13:32:31 +0000 (UTC)
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5EFA913FC29889333CDC;
 Mon, 26 Aug 2019 21:32:27 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Mon, 26 Aug 2019
 21:32:20 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <digetx@gmail.com>, <mchehab@kernel.org>, <gregkh@linuxfoundation.org>,
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <robin.murphy@arm.com>,
 <hverkuil-cisco@xs4all.nl>
Subject: [PATCH] media: staging: tegra-vde: Disable building with COMPILE_TEST
Date: Mon, 26 Aug 2019 21:31:40 +0800
Message-ID: <20190826133140.13456-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If COMPILE_TEST is y and IOMMU_SUPPORT is n, selecting TEGRA_VDE
to m will set IOMMU_IOVA to m, this fails the building of
TEGRA_HOST1X and DRM_TEGRA which is y like this:

drivers/gpu/host1x/cdma.o: In function `host1x_cdma_init':
cdma.c:(.text+0x66c): undefined reference to `alloc_iova'
cdma.c:(.text+0x698): undefined reference to `__free_iova'

drivers/gpu/drm/tegra/drm.o: In function `tegra_drm_unload':
drm.c:(.text+0xeb0): undefined reference to `put_iova_domain'
drm.c:(.text+0xeb4): undefined reference to `iova_cache_put'

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 6b2265975239 ("media: staging: tegra-vde: Fix build error")
Fixes: b301f8de1925 ("media: staging: media: tegra-vde: Add IOMMU support")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/media/tegra-vde/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/Kconfig b/drivers/staging/media/tegra-vde/Kconfig
index ba49ea5..a41d30c 100644
--- a/drivers/staging/media/tegra-vde/Kconfig
+++ b/drivers/staging/media/tegra-vde/Kconfig
@@ -1,9 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
 config TEGRA_VDE
 	tristate "NVIDIA Tegra Video Decoder Engine driver"
-	depends on ARCH_TEGRA || COMPILE_TEST
+	depends on ARCH_TEGRA
 	select DMA_SHARED_BUFFER
-	select IOMMU_IOVA if (IOMMU_SUPPORT || COMPILE_TEST)
+	select IOMMU_IOVA if IOMMU_SUPPORT
 	select SRAM
 	help
 	    Say Y here to enable support for the NVIDIA Tegra video decoder
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
