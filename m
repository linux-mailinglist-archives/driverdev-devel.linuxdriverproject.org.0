Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83851C50D5
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 10:46:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9B818818E;
	Tue,  5 May 2020 08:46:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3KezDL1LdUaa; Tue,  5 May 2020 08:46:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79C4B87B3E;
	Tue,  5 May 2020 08:46:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 637821BF2F7
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 08:46:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5D42586DEA
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 08:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpk5QqG+rmOL for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 08:46:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com
 [210.118.77.11])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0A56686038
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 08:46:39 +0000 (UTC)
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200505084637euoutp014d9f76802ea747dd68bd623354d566c3~MFX2FapRG0374703747euoutp01a
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 08:46:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200505084637euoutp014d9f76802ea747dd68bd623354d566c3~MFX2FapRG0374703747euoutp01a
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588668397;
 bh=4Wn9PB2hsUcfeXjKsNb4RnLI8IycXO7vRARzqAzX/lM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JwfIevFgE6xjUpKZC6gcYgjqm046UpBiV8zsSnO2IcDLts8JMUwbQ745BuJH9qLTG
 CqpLwL88vxE0DnOoJf51DLOolbai2fFIiwepI2UqB+FIPJkyEa/RYoft4/pKr8ryp5
 c9zNdqxTI2PVpUBZrHmPN7CvDGYJbnI+v5R3D/HI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20200505084637eucas1p2ae80f76e35086405a44f4510d0ab7e90~MFX1t_H5f1348613486eucas1p2m;
 Tue,  5 May 2020 08:46:37 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E2.11.60698.CE721BE5; Tue,  5
 May 2020 09:46:36 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200505084636eucas1p23a33d0b83ca284692713745d004f93ea~MFX1XHA9E2336923369eucas1p2C;
 Tue,  5 May 2020 08:46:36 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200505084636eusmtrp12bf7c85bfcea14cc0211d23f25f7de34~MFX1WPsxX0942509425eusmtrp1Z;
 Tue,  5 May 2020 08:46:36 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-4a-5eb127ecdc90
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 0F.14.08375.CE721BE5; Tue,  5
 May 2020 09:46:36 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200505084635eusmtip1a40af7250cf41dbed0f1cc43f8041929~MFX0pbEfv0686606866eusmtip1N;
 Tue,  5 May 2020 08:46:35 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: dri-devel@lists.freedesktop.org, iommu@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 21/25] staging: tegra-vde: fix common struct sg_table
 related issues
Date: Tue,  5 May 2020 10:46:10 +0200
Message-Id: <20200505084614.30424-21-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200505084614.30424-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+3bOzo7D6WlWfqkoDLIMvKHBJ1Z2++PYHxVoUULW1IOXvLGj
 lkIk2cWWEy+UOsqGlpp3l2mZl7wsC2XUFFmpM1uKltnFu8zKddT++73P+z48Dx8fiYnH+HZk
 ZGwCI4uVRksIId7waknrOrWzLtjjT44PUmjf8FBdfg0f/WnIxlBz77IAVfw0AtQ/951AacU1
 BHpcoeEhVZsvuqYswtFs/ygPqY0DfNTXdI9AGbVP+ejWrJJAVV3DAlSiNvFQ+4/PfLTUVIgf
 sKErCysBbWjtxOmWeRVOP1cOC2h1+S2Cbpz/yKfb7lcK6JHb3Tz6ycMr9OBvI0bn6ksB/eJ9
 KkEr0qYJOrO+HNAzascT1kHCvWFMdGQSI3Pff14YUfXJJIjXWl6q0+9NBe+EcmBBQsobaoY0
 PDOLqTIAO5UuciBc5VkAW1IHMG6YAbB3wSBYd+gLfmKcoxTAstxdG465NAPfvCAoTyj/JifM
 vIW6DuBrhaWZMaoXh72LXnJAkjbUGThykzXLOLUDjjwY+tdCRO2H/SP3MS7LCVbUvvzHFqu6
 UTdEmLMglU3ChR/1gDs6AseVVTjHNvBLd/1aUQfYk5uBc4Y0AEe1VQJuyACw72r+mtsXDmmX
 CXMjjHKBNU3unHwQVhe14mYZUlZQ/20z198K5jTkYZwsguk3xNy1M1R2V2/Etr/VrfWnobzu
 JsG9j2Y1tbmFlwWclP/DVACUA1smkY0JZ1ivWOaiGyuNYRNjw91C42LUYPXz9fzunnsGWk0h
 HYAigcRSdHqmJljMlyaxyTEdAJKYZIuoZLE2WCwKkyanMLK4c7LEaIbtAPYkLrEVeRVNnhVT
 4dIE5gLDxDOy9S2PtLBLBc4ezTaeVpsuBCxHnTocZcgb/3A5ZenQd1//wvSJIFg87eO0su1O
 zrEVXaH3om6q2r7SejCwM/3u130h1u1xHrouzaRfVijrtOCmmHAMm5zfwxxXZmOLj0xdHf5+
 Ox30p39tD01IUR1NcQ3InB8TL9kFJo8qthobi26bhk8apguqJTgbIfXcjclY6V9lF92peAMA
 AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrJIsWRmVeSWpSXmKPExsVy+t/xu7pv1DfGGexfq2LRe+4kk8XGGetZ
 Lf5vm8hssefML3aL1R8fM1pc+fqezaJ58Xo2i5WrjzJZLNhvbdEyaxGLxZcrD5ksNj2+xmpx
 edccNoueDVtZLTq/zGKzWHvkLrvFsk1/mCwOfnjCavFz1zwWB2GPNfPWMHrc23eYxWPvtwUs
 Hjtn3WX32LSqk81j+7cHrB77565h97jffZzJY/OSeo/b/x4ze0y+sZzRY/fNBjaP3uZ3bB59
 W1YxenzeJBfAH6VnU5RfWpKqkJFfXGKrFG1oYaRnaGmhZ2RiqWdobB5rZWSqpG9nk5Kak1mW
 WqRvl6CXsfbRH/aCczwVG2/YNDBe5Opi5OSQEDCRuDHzI3MXIxeHkMBSRom9Wy8wQiRkJE5O
 a2CFsIUl/lzrYgOxhQQ+MUpsX1wEYrMJGEp0vQWJc3GICHQySkzr/sgO4jAL3GCRmLvlAztI
 lbBAuMSrna3MIDaLgKrE/fl3mEBsXgE7iSv35zJDbJCXWL3hAJjNCRR/fOkO1LZCiQ/nv7NO
 YORbwMiwilEktbQ4Nz232FCvODG3uDQvXS85P3cTIzAatx37uXkH46WNwYcYBTgYlXh4Iz6v
 jxNiTSwrrsw9xCjBwawkwrvsx4Y4Id6UxMqq1KL8+KLSnNTiQ4ymQEdNZJYSTc4HJoq8knhD
 U0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2Muko3RMovvHki7CHA3+LV
 7JCau4xtg73btAuWW48ZWEicnCnP/519GeOWfb9Wsj02qxK81xllLrHgo3t/gEJfRcCcyv6H
 /23nKvBUrmv7OVvh6qei/jlc/i5ugmxx5pIbNM9MlTusXBU369HrZCk/BqMK0zLna7puT278
 Ov6w1HjxEQONbfFKLMUZiYZazEXFiQDIsp8b3AIAAA==
X-CMS-MailID: 20200505084636eucas1p23a33d0b83ca284692713745d004f93ea
X-Msg-Generator: CA
X-RootMTR: 20200505084636eucas1p23a33d0b83ca284692713745d004f93ea
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200505084636eucas1p23a33d0b83ca284692713745d004f93ea
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <CGME20200505084636eucas1p23a33d0b83ca284692713745d004f93ea@eucas1p2.samsung.com>
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
Cc: devel@driverdev.osuosl.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-media@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Thierry Reding <thierry.reding@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-tegra@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The Documentation/DMA-API-HOWTO.txt states that dma_map_sg returns the
numer of the created entries in the DMA address space. However the
subsequent calls to dma_sync_sg_for_{device,cpu} and dma_unmap_sg must be
called with the original number of the entries passed to dma_map_sg. The
sg_table->nents in turn holds the result of the dma_map_sg call as stated
in include/linux/scatterlist.h. A common mistake was to ignore a result
of the dma_map_sg function and don't use the sg_table->orig_nents at all.

To avoid such issues, lets use common dma-mapping wrappers operating
directly on the struct sg_table objects and adjust references to the
nents and orig_nents respectively.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
For more information, see '[PATCH v3 00/25] DRM: fix struct sg_table nents
vs. orig_nents misuse' thread: https://lkml.org/lkml/2020/5/5/187
---
 drivers/staging/media/tegra-vde/iommu.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/tegra-vde/iommu.c b/drivers/staging/media/tegra-vde/iommu.c
index 6af863d..adf8dc7 100644
--- a/drivers/staging/media/tegra-vde/iommu.c
+++ b/drivers/staging/media/tegra-vde/iommu.c
@@ -36,8 +36,8 @@ int tegra_vde_iommu_map(struct tegra_vde *vde,
 
 	addr = iova_dma_addr(&vde->iova, iova);
 
-	size = iommu_map_sg(vde->domain, addr, sgt->sgl, sgt->nents,
-			    IOMMU_READ | IOMMU_WRITE);
+	size = iommu_map_sgtable(vde->domain, addr, sgt,
+				 IOMMU_READ | IOMMU_WRITE);
 	if (!size) {
 		__free_iova(&vde->iova, iova);
 		return -ENXIO;
-- 
1.9.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
