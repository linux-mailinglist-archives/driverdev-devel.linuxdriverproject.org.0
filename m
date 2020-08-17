Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63B1245E5D
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:50:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3318881A8;
	Mon, 17 Aug 2020 07:50:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iQxmAc+Uq-RC; Mon, 17 Aug 2020 07:50:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7416D87CDB;
	Mon, 17 Aug 2020 07:50:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D0AAC1BF471
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CE1A687ECB
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lMBMl3Zw93Bq for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5E65D87CD4
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:50:20 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E08F42080D;
 Mon, 17 Aug 2020 07:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597650620;
 bh=VpSbfYXzRPSnQuOLCl0Ddt6PoN45I0ZQPp4ER+hVYAs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vKpfMasXULPraU9glsF6Bh1l0Lvl34RJFqxbeX18OVcBF2Y91SCssso8xKwEXHcmt
 6xPj9cTDP8W8zLwJNKPRubam1s4Ffu+zzNOnhLIJVTkm4yL8kYNmcBuXInTDZOwLFB
 GGhYKZ8xcPG/3tsymrb1riX8tih75+ugYona0eQU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZuM-00Bfc2-15; Mon, 17 Aug 2020 09:50:18 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 05/16] iommu: hisi_smmu: remove linux/hisi/hisi-iommu.h
Date: Mon, 17 Aug 2020 09:50:04 +0200
Message-Id: <ebabd683057b4069ab74a5460e89a6090f16742e.1597650455.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597650455.git.mchehab+huawei@kernel.org>
References: <cover.1597650455.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chenfeng <puck.chen@hisilicon.com>, Suzhuangluan <suzhuangluan@hisilicon.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Just move its contents into drivers/iommu/hisi_smmu.h.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hisi_smmu.h      |  8 ++++++++
 drivers/staging/hikey9xx/hisi_smmu_lpae.c |  1 -
 include/linux/hisi/hisi-iommu.h           | 13 -------------
 3 files changed, 8 insertions(+), 14 deletions(-)
 delete mode 100644 include/linux/hisi/hisi-iommu.h

diff --git a/drivers/staging/hikey9xx/hisi_smmu.h b/drivers/staging/hikey9xx/hisi_smmu.h
index bd3ee53735bd..c84f854bf39f 100644
--- a/drivers/staging/hikey9xx/hisi_smmu.h
+++ b/drivers/staging/hikey9xx/hisi_smmu.h
@@ -93,6 +93,14 @@ struct hisi_smmu_device_lpae {
 	struct iommu_device iommu;
 };
 
+struct iommu_domain_data {
+	unsigned int     iova_start;
+	unsigned int     iova_size;
+	phys_addr_t      phy_pgd_base;
+	unsigned long    iova_align;
+	struct list_head list;
+};
+
 struct hisi_map_tile_position_lpae {
 	struct scatterlist *sg ;
 	unsigned long offset;
diff --git a/drivers/staging/hikey9xx/hisi_smmu_lpae.c b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
index 5acde3ddbd99..fcaf97f92e7f 100644
--- a/drivers/staging/hikey9xx/hisi_smmu_lpae.c
+++ b/drivers/staging/hikey9xx/hisi_smmu_lpae.c
@@ -24,7 +24,6 @@
 #include <linux/spinlock.h>
 #include <asm/pgalloc.h>
 #include <linux/debugfs.h>
-#include <linux/hisi/hisi-iommu.h>
 #include <linux/uaccess.h>
 #include <linux/bitops.h>
 #include "hisi_smmu.h"
diff --git a/include/linux/hisi/hisi-iommu.h b/include/linux/hisi/hisi-iommu.h
deleted file mode 100644
index 00dd5e97db59..000000000000
--- a/include/linux/hisi/hisi-iommu.h
+++ /dev/null
@@ -1,13 +0,0 @@
-#ifndef _HI36XX_SMMU_H
-#define _HI36XX_SMMU_H
-
-#include <linux/types.h>
-struct iommu_domain_data {
-	unsigned int     iova_start;
-	unsigned int     iova_size;
-	phys_addr_t      phy_pgd_base;
-	unsigned long    iova_align;
-	struct list_head list;
-};
-
-#endif
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
