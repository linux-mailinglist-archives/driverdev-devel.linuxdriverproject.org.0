Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E06C91389EB
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jan 2020 04:49:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 437AE870AD;
	Mon, 13 Jan 2020 03:49:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 79pYtghNiFDH; Mon, 13 Jan 2020 03:49:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 838BF87001;
	Mon, 13 Jan 2020 03:49:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8E4FE1BF976
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 03:49:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B1FF85359
 for <devel@linuxdriverproject.org>; Mon, 13 Jan 2020 03:49:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7BBKxzUhhe31 for <devel@linuxdriverproject.org>;
 Mon, 13 Jan 2020 03:49:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 749B28523B
 for <devel@driverdev.osuosl.org>; Mon, 13 Jan 2020 03:49:05 +0000 (UTC)
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 0A9B6363CF2ECA1AC0A6;
 Mon, 13 Jan 2020 11:49:01 +0800 (CST)
Received: from localhost.localdomain (10.175.124.28) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.439.0; Mon, 13 Jan 2020 11:48:52 +0800
From: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
To: <helen.koike@collabora.com>, <mchehab@kernel.org>,
 <gregkh@linuxfoundation.org>, <zhangxiaoxu5@huawei.com>
Subject: [PATCH] media: staging: rkisp1: Fix undefined reference to
 `phy_mipi_dphy_get_default_config' in rkisp1_mipi_csi2_start
Date: Mon, 13 Jan 2020 11:48:04 +0800
Message-ID: <20200113034804.24732-1-zhangxiaoxu5@huawei.com>
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

If 'GENERIC_PHY_MIPI_DPHY' not configured, there is an error:

drivers/staging/media/rkisp1/rkisp1-isp.o:
	In function `rkisp1_mipi_csi2_start.isra.5':
rkisp1-isp.c:(.text+0x1238):
	undefined reference to `phy_mipi_dphy_get_default_config'
make: *** [vmlinux] Error 1

Signed-off-by: Zhang Xiaoxu <zhangxiaoxu5@huawei.com>
---
 drivers/staging/media/rkisp1/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/media/rkisp1/Kconfig b/drivers/staging/media/rkisp1/Kconfig
index b859a493caba..788bcb703376 100644
--- a/drivers/staging/media/rkisp1/Kconfig
+++ b/drivers/staging/media/rkisp1/Kconfig
@@ -8,6 +8,7 @@ config VIDEO_ROCKCHIP_ISP1
 	select VIDEOBUF2_VMALLOC
 	select V4L2_FWNODE
 	select PHY_ROCKCHIP_DPHY_RX0
+	select GENERIC_PHY_MIPI_DPHY
 	default n
 	help
 	  Enable this to support the Image Signal Processing (ISP) module
-- 
2.17.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
