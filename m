Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D97C93089A7
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 16:04:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 58FAE861B2;
	Fri, 29 Jan 2021 15:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j3FkVPn1icGu; Fri, 29 Jan 2021 15:03:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 037D2860F2;
	Fri, 29 Jan 2021 15:03:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 714851BF399
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E16885FAD
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HeFmcjT3qEK0 for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 01A7D85E8D
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 67F4064E07;
 Fri, 29 Jan 2021 15:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611932634;
 bh=eQ4UNCS1B5nMgIPMj7KkM7wlwymmBz10N22DbACFNw4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=firzzi4VROMf3WcsjCgNJSo3RtzRX85GROt/UZS5cu0pDOOLoX+zzN/cuNbvj+qLz
 ARmYfKcVRRyzs9GVKl1RUWnD09676Kq9VD8+NG14YxfumPz1gAIzOiLywQnfuBtvb0
 8lJNHPmubpBi9NN0IDw8PMoD+9JR2LwQrmZQfeQAOSh8J6EEdqyFkQSNW1RBTFmMXL
 1OTmwHOtHa3opoIoHolyRdlez/GMm2p2zBoytIFyp2Yl7X7UVeTPL5paiLRilQtDLh
 nT2wuZh7TRYLYUr70shll7Ghvf1kUn9wTTfbIpQcw6oIQ06a2IEpQovGGvBmeldevt
 wjOrICqF0xwYw==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5VJQ-0078tM-39; Fri, 29 Jan 2021 16:03:52 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v7 09/14] staging: hikey9xx: hi6421-spmi-pmic: update
 copyright notes
Date: Fri, 29 Jan 2021 16:03:44 +0100
Message-Id: <43a2d929e60a5c2b5d8ffbe7efd7e6ec501451d0.1611932194.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611932194.git.mchehab+huawei@kernel.org>
References: <cover.1611932194.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Mayulong <mayulong1@huawei.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>
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
index b11401ebcc03..e91ff07b5af8 100644
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
