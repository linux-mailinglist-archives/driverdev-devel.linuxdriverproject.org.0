Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7204C2FBC0D
	for <lists+driverdev-devel@lfdr.de>; Tue, 19 Jan 2021 17:11:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E4F48691E;
	Tue, 19 Jan 2021 16:11:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FELXJFtA3Amk; Tue, 19 Jan 2021 16:11:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DA2186439;
	Tue, 19 Jan 2021 16:11:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B62521BF9C2
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B3188844E7
 for <devel@linuxdriverproject.org>; Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cqykBahay3DG for <devel@linuxdriverproject.org>;
 Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 68AC38517E
 for <devel@driverdev.osuosl.org>; Tue, 19 Jan 2021 16:10:52 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8C3042313F;
 Tue, 19 Jan 2021 16:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611072651;
 bh=ocmCpgwDao2iTuPR1N+l2pLHx6KXPjh5Kl2bcWLyNNw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rWfHdMKxN7Wrhxsd1SvImW01qbT5pAHf6k63CMkv38z5SWPqGxX/hyNx7YBW0DkdB
 jdvlEeTDqQsIFnfQuQqETpAvyAOOVzpTc0bgfXFVhBTKjcUITvIOuMCekU+cueKXWK
 AQUDsllHRJ6/9AfhSqSHa4JT1k33L1KMyQELlaH/kT9o9r16jWVJJjB7KMO69cPYFh
 zdcAWXtYHZmwEzKqkaLk8ESSLAhBcNqsRbTK3yIGfi++oa5uJVLAy4ajYeXU8SBlXO
 FyDtWnwCMaKgz4vO0OKbA2o4gQRXbwfNVARi985S5xBNq/CNLRxKRdeT2iIi/w1Xwn
 +hH+1RhgYD1RQ==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l1taj-0012c8-Al; Tue, 19 Jan 2021 17:10:49 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v4 16/21] staging: hikey9xx: simplify includes
Date: Tue, 19 Jan 2021 17:10:42 +0100
Message-Id: <069d2e3eaf8c2cb7a37e773278f7bc489f2f3cc5.1611072387.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611072387.git.mchehab+huawei@kernel.org>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Mayulong <mayulong1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are several uneeded includes. Remove them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 9310a9d699bc..99c4f3359f71 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -7,20 +7,12 @@
 //
 // Copyright (c) 2020-2021 Huawei Technologies Co., Ltd
 
-#include <linux/delay.h>
-#include <linux/device.h>
-#include <linux/err.h>
 #include <linux/interrupt.h>
-#include <linux/io.h>
 #include <linux/irq.h>
 #include <linux/mfd/core.h>
 #include <linux/mfd/hi6421-spmi-pmic.h>
 #include <linux/module.h>
-#include <linux/of_address.h>
-#include <linux/of_device.h>
 #include <linux/of_gpio.h>
-#include <linux/of.h>
-#include <linux/of_irq.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/spmi.h>
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
