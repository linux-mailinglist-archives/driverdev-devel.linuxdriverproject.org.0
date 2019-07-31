Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF5F7C813
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 18:02:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3F52422176;
	Wed, 31 Jul 2019 16:02:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xpF0FmIem8Tu; Wed, 31 Jul 2019 16:02:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2CA8422001;
	Wed, 31 Jul 2019 16:02:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C4D71BF844
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7981485F37
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 16:02:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ddgs1leUBagf for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 16:02:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F204885F34
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 16:02:21 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D28C206A2;
 Wed, 31 Jul 2019 16:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564588941;
 bh=VN+7uqWWVVSJqZuPldysiASKx1rHOEYOcX3GkT4BirE=;
 h=Date:From:To:Cc:Subject:From;
 b=BSStEoJ9JQOakWBJ5751Txzqf7eFEDdWn4NhRNsC0zZHkdMQeaQ8Gb06H7lDwyY3N
 j5zpu+1XZoxEPYTXpLYGJDUJ0Rv2q50jrb7DTPBrcueIdYjyWs5ZX8s/fzFlZudult
 KkHDwZEnJKYpVSyqTSYMygsUfp+uJnKTPikkLdwo=
Date: Wed, 31 Jul 2019 18:02:19 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: willy@infradead.org, davem@davemloft.net, netdev@vger.kernel.org
Subject: [PATCH v2] staging/octeon: Fix build error without CONFIG_NETDEVICES
Message-ID: <20190731160219.GA2114@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: YueHaibing <yuehaibing@huawei.com>

While do COMPILE_TEST build without CONFIG_NETDEVICES,
we get Kconfig warning:

WARNING: unmet direct dependencies detected for PHYLIB
  Depends on [n]: NETDEVICES [=n]
  Selected by [y]:
  - OCTEON_ETHERNET [=y] && STAGING [=y] && (CAVIUM_OCTEON_SOC && NETDEVICES [=n] || COMPILE_TEST [=y])

Reported-by: Hulk Robot <hulkci@huawei.com>
Reported-by: Mark Brown <broonie@kernel.org>
Fixes: 171a9bae68c7 ("staging/octeon: Allow test build on !MIPS")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2: cc: netdev and add another reported-by line.

 drivers/staging/octeon/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/octeon/Kconfig b/drivers/staging/octeon/Kconfig
index 5b39946..5319909 100644
--- a/drivers/staging/octeon/Kconfig
+++ b/drivers/staging/octeon/Kconfig
@@ -1,7 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 config OCTEON_ETHERNET
 	tristate "Cavium Networks Octeon Ethernet support"
-	depends on CAVIUM_OCTEON_SOC && NETDEVICES || COMPILE_TEST
+	depends on CAVIUM_OCTEON_SOC || COMPILE_TEST
+	depends on NETDEVICES
 	select PHYLIB
 	select MDIO_OCTEON
 	help
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
