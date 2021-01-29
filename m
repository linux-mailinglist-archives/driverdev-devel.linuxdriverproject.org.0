Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A73D308DB7
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 20:52:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4EBFB2E12D;
	Fri, 29 Jan 2021 19:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3o1Y54Lu4LFe; Fri, 29 Jan 2021 19:52:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 89E9F2047E;
	Fri, 29 Jan 2021 19:52:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5FE001C113E
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 58F8587340
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 19:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qhm8kEeX-T1h for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 19:52:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DAD55872BE
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 19:52:05 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 55EA364E12;
 Fri, 29 Jan 2021 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611949925;
 bh=9mLiGpXk6bvkY+x4LV/OFvu74lal4nzyr2VPTxZeGVk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CJPoslY/cGvuk/BxzdZnfpsdeDjI0BUUu6krvgOwflx1Lc/6RA911p/YSzzazDpQT
 /XsIl5slMgtcH4qDB1tcJ7kcBp9j5WNDmoginQO42f+XuWkXvjUUYsQjqe++KTv2mN
 Kbh3XTV+e0iIw0tNBODPOnCxGhy+utn6xjuRHAHwRx4PDdTNcstbbyY8shrkJ0fx01
 dUnKcxeE0pq9zEu9uz42wIqv/cUgnrv4uw8B6/JUI/crpddIUDd5xZNImObjhu8evm
 0CkrM8jYFBsXo1H/qDor/gNSyp2FfDIvz3lzS+Vr6JvfcOfRCXOakdJFY6S37bcW8k
 O4jFxxfokpOZw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5ZoJ-007Wju-6V; Fri, 29 Jan 2021 20:52:03 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v8 09/14] staging: hikey9xx: hi6421-spmi-pmic: update
 copyright notes
Date: Fri, 29 Jan 2021 20:51:55 +0100
Message-Id: <5a86478c8ccb93d3105485b5f16e20e9c12e2196.1611949675.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611949675.git.mchehab+huawei@kernel.org>
References: <cover.1611949675.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

At PMIC subsystem, C89 comments are preferred over C99.
While here, also update the copyrights of the header file.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 14 +++++++-------
 include/linux/mfd/hi6421-spmi-pmic.h        |  1 +
 2 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 9c10f7c4e7c9..2301f4fcd48d 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0
-//
-// Device driver for regulators in HISI PMIC IC
-//
-// Copyright (c) 2013 Linaro Ltd.
-// Copyright (c) 2011 Hisilicon.
-//
-// Copyright (c) 2020-2021 Huawei Technologies Co., Ltd
+/*
+ * Device driver for regulators in HISI PMIC IC
+ *
+ * Copyright (c) 2013 Linaro Ltd.
+ * Copyright (c) 2011 Hisilicon.
+ * Copyright (c) 2020-2021 Huawei Technologies Co., Ltd
+ */
 
 #include <linux/bitops.h>
 #include <linux/interrupt.h>
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
index 4d61cb266a18..2660226138b8 100644
--- a/include/linux/mfd/hi6421-spmi-pmic.h
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -4,6 +4,7 @@
  *
  * Copyright (c) 2013 Linaro Ltd.
  * Copyright (C) 2011 Hisilicon.
+ * Copyright (c) 2020-2021 Huawei Technologies Co., Ltd
  *
  * Guodong Xu <guodong.xu@linaro.org>
  */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
