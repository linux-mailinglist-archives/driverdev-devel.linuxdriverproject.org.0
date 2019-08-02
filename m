Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EC47E77B
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 03:27:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A925022E6E;
	Fri,  2 Aug 2019 01:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AJCrrmXL2MhF; Fri,  2 Aug 2019 01:27:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2145F22CD4;
	Fri,  2 Aug 2019 01:27:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB8961BF393
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 01:27:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A69AB8825E
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 01:27:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GogG0mqZyWDb for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 01:27:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A1A748820A
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 01:27:04 +0000 (UTC)
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 6B64A1B966E4DF1DCBEF;
 Fri,  2 Aug 2019 09:27:01 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Fri, 2 Aug 2019 09:26:53 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Ioana Radulescu <ruxandra.radulescu@nxp.com>, Ioana Ciornei
 <ioana.ciornei@nxp.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH -next] staging: fsl-dpaa2/ethsw: Remove useless set memory to
 zero use memset()
Date: Fri, 2 Aug 2019 01:31:49 +0000
Message-ID: <20190802013149.80952-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
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
Cc: devel@driverdev.osuosl.org, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The memory return by kzalloc() has already be set to zero, so remove
useless memset(0).

Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/staging/fsl-dpaa2/ethsw/ethsw.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
index 4b94a01513a7..aac98ece2335 100644
--- a/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
+++ b/drivers/staging/fsl-dpaa2/ethsw/ethsw.c
@@ -641,8 +641,6 @@ static int port_fdb_dump(struct sk_buff *skb, struct netlink_callback *cb,
 	if (!dma_mem)
 		return -ENOMEM;
 
-	memset(dma_mem, 0, fdb_dump_size);
-
 	fdb_dump_iova = dma_map_single(dev, dma_mem, fdb_dump_size,
 				       DMA_FROM_DEVICE);
 	if (dma_mapping_error(dev, fdb_dump_iova)) {



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
