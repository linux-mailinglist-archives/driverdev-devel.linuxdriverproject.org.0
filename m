Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55498FA3E6
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 Nov 2019 03:14:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5D8C583303;
	Wed, 13 Nov 2019 02:14:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n7OS1L1sg61x; Wed, 13 Nov 2019 02:14:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16E5E83336;
	Wed, 13 Nov 2019 02:14:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9350D1BF41C
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 02:14:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 86C0920392
 for <devel@linuxdriverproject.org>; Wed, 13 Nov 2019 02:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VzXhvYgcT1H8 for <devel@linuxdriverproject.org>;
 Wed, 13 Nov 2019 02:14:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id D3C952035E
 for <devel@driverdev.osuosl.org>; Wed, 13 Nov 2019 02:14:45 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C6FE83DB6A79074E0F32;
 Wed, 13 Nov 2019 10:14:40 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Wed, 13 Nov 2019
 10:14:32 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <perex@perex.cz>, <davem@davemloft.net>,
 <joe@perches.com>, <yuehaibing@huawei.com>, <tglx@linutronix.de>
Subject: [PATCH -next] staging: hp100: Fix build error without ETHERNET
Date: Wed, 13 Nov 2019 10:13:06 +0800
Message-ID: <20191113021306.35464-1-yuehaibing@huawei.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It should depends on ETHERNET, otherwise building fails:

drivers/staging/hp/hp100.o: In function `hp100_pci_remove':
hp100.c:(.text+0x165): undefined reference to `unregister_netdev'
hp100.c:(.text+0x214): undefined reference to `free_netdev'

Fixes: 52340b82cf1a ("hp100: Move 100BaseVG AnyLAN driver to staging")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/hp/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/hp/Kconfig b/drivers/staging/hp/Kconfig
index fb395cf..f20ab21 100644
--- a/drivers/staging/hp/Kconfig
+++ b/drivers/staging/hp/Kconfig
@@ -6,6 +6,7 @@
 config NET_VENDOR_HP
 	bool "HP devices"
 	default y
+	depends on ETHERNET
 	depends on ISA || EISA || PCI
 	---help---
 	  If you have a network (Ethernet) card belonging to this class, say Y.
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
