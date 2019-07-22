Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE35701A8
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jul 2019 15:49:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 639F120448;
	Mon, 22 Jul 2019 13:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k4DEcKOGy-8T; Mon, 22 Jul 2019 13:49:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 98472203F7;
	Mon, 22 Jul 2019 13:48:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0D1361BF365
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 13:48:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F25BB20351
 for <devel@linuxdriverproject.org>; Mon, 22 Jul 2019 13:48:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXuHuTIuTS0o for <devel@linuxdriverproject.org>;
 Mon, 22 Jul 2019 13:48:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id CDB6320028
 for <devel@driverdev.osuosl.org>; Mon, 22 Jul 2019 13:48:54 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B47831F73539573CC4C6;
 Mon, 22 Jul 2019 21:48:46 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Mon, 22 Jul 2019
 21:48:39 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <sakari.ailus@linux.intel.com>, <mchehab@kernel.org>,
 <gregkh@linuxfoundation.org>, <yong.zhi@intel.com>, <digetx@gmail.com>,
 <hverkuil-cisco@xs4all.nl>
Subject: [PATCH] media: staging: ipu3: Enable IOVA API only when IOMMU support
 is enabled
Date: Mon, 22 Jul 2019 21:47:49 +0800
Message-ID: <20190722134749.21580-1-yuehaibing@huawei.com>
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
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If IOMMU_SUPPORT is not set, ipu3 driver may select IOMMU_IOVA to m.
But for many drivers, they use "select IOMMU_IOVA if IOMMU_SUPPORT"
in the Kconfig, for example, CONFIG_TEGRA_VDE is set to y but IOMMU_IOVA
is m, then the building fails like this:

drivers/staging/media/tegra-vde/iommu.o: In function `tegra_vde_iommu_map':
iommu.c:(.text+0x41): undefined reference to `alloc_iova'
iommu.c:(.text+0x56): undefined reference to `__free_iova'

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 7fc7af649ca7 ("media: staging/intel-ipu3: Add imgu top level pci device driver")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/media/ipu3/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/ipu3/Kconfig b/drivers/staging/media/ipu3/Kconfig
index 4b51c67..b7df18f 100644
--- a/drivers/staging/media/ipu3/Kconfig
+++ b/drivers/staging/media/ipu3/Kconfig
@@ -4,7 +4,7 @@ config VIDEO_IPU3_IMGU
 	depends on PCI && VIDEO_V4L2
 	depends on MEDIA_CONTROLLER && VIDEO_V4L2_SUBDEV_API
 	depends on X86
-	select IOMMU_IOVA
+	select IOMMU_IOVA if IOMMU_SUPPORT
 	select VIDEOBUF2_DMA_SG
 	help
 	  This is the Video4Linux2 driver for Intel IPU3 image processing unit,
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
