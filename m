Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2DA139F68
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 03:18:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 198F2204CF;
	Tue, 14 Jan 2020 02:18:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YP9B85KS4wTp; Tue, 14 Jan 2020 02:18:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C62E9203F1;
	Tue, 14 Jan 2020 02:18:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0EF4C1BF32A
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 02:18:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 04600204A7
 for <devel@linuxdriverproject.org>; Tue, 14 Jan 2020 02:18:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EMjimuz-M7RY for <devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 02:18:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by silver.osuosl.org (Postfix) with ESMTPS id BFA12203F1
 for <devel@driverdev.osuosl.org>; Tue, 14 Jan 2020 02:18:23 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 2F1F990C45F4730C62EB;
 Tue, 14 Jan 2020 10:18:20 +0800 (CST)
Received: from localhost.localdomain (10.175.124.28) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Tue, 14 Jan 2020 10:18:10 +0800
From: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
To: <mchehab@kernel.org>, <gregkh@linuxfoundation.org>,
 <zhangxiaoxu5@huawei.com>
Subject: [PATCH v2] media: staging: rkisp1: The rkisp1 should be depended on
 CONFIG_OF
Date: Tue, 14 Jan 2020 10:17:20 +0800
Message-ID: <20200114021720.30826-1-zhangxiaoxu5@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If 'CONFIG_VIDEO_ROCKCHIP_ISP1' configured but no 'CONFIG_OF', the
default configuration maybe:
  # CONFIG_OF is not set
  CONFIG_PHY_ROCKCHIP_DPHY_RX0=y
  CONFIG_VIDEO_ROCKCHIP_ISP1=y

This will cause the following compilation errors:
  drivers/staging/media/rkisp1/rkisp1-isp.o:
      In function `rkisp1_mipi_csi2_start.isra.5':
  rkisp1-isp.c:(.text+0x1238):
      undefined reference to `phy_mipi_dphy_get_default_config'
  make: *** [vmlinux] Error 1

Signed-off-by: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
---
 drivers/staging/media/rkisp1/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkisp1/Kconfig b/drivers/staging/media/rkisp1/Kconfig
index b859a493caba..23080b7f07a6 100644
--- a/drivers/staging/media/rkisp1/Kconfig
+++ b/drivers/staging/media/rkisp1/Kconfig
@@ -3,7 +3,7 @@
 config VIDEO_ROCKCHIP_ISP1
 	tristate "Rockchip Image Signal Processing v1 Unit driver"
 	depends on VIDEO_V4L2 && VIDEO_V4L2_SUBDEV_API
-	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
 	select VIDEOBUF2_DMA_CONTIG
 	select VIDEOBUF2_VMALLOC
 	select V4L2_FWNODE
-- 
2.17.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
