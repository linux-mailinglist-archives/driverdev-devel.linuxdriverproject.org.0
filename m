Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AA372F62
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 15:01:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60CDF85EC4;
	Wed, 24 Jul 2019 13:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bx5c8ta5b7FI; Wed, 24 Jul 2019 13:01:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3FA785EA5;
	Wed, 24 Jul 2019 13:01:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 423B81BF2BC
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 13:01:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3FA1720525
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 13:01:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qW1VZMlo917B for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 13:01:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id BC3A920031
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 13:01:44 +0000 (UTC)
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id C5B3B6749C1C740FA9AE;
 Wed, 24 Jul 2019 21:01:40 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Wed, 24 Jul 2019
 21:01:33 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <manishc@marvell.com>, <GR-Linux-NIC-Dev@marvell.com>,
 <gregkh@linuxfoundation.org>, <bpoirier@suse.com>
Subject: [PATCH] qlge: Fix build error without CONFIG_ETHERNET
Date: Wed, 24 Jul 2019 21:01:26 +0800
Message-ID: <20190724130126.53532-1-yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Now if CONFIG_ETHERNET is not set, QLGE driver
building fails:

drivers/staging/qlge/qlge_main.o: In function `qlge_remove':
drivers/staging/qlge/qlge_main.c:4831: undefined reference to `unregister_netdev'

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 955315b0dc8c ("qlge: Move drivers/net/ethernet/qlogic/qlge/ to drivers/staging/qlge/")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/qlge/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/qlge/Kconfig b/drivers/staging/qlge/Kconfig
index ae9ed2c..a3cb25a3 100644
--- a/drivers/staging/qlge/Kconfig
+++ b/drivers/staging/qlge/Kconfig
@@ -2,7 +2,7 @@
 
 config QLGE
 	tristate "QLogic QLGE 10Gb Ethernet Driver Support"
-	depends on PCI
+	depends on ETHERNET && PCI
 	help
 	This driver supports QLogic ISP8XXX 10Gb Ethernet cards.
 
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
