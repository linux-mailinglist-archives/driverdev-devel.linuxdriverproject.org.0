Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFD42FE39E
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 Jan 2021 08:18:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7AE73861BC;
	Thu, 21 Jan 2021 07:18:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qsuQuH0XkxD7; Thu, 21 Jan 2021 07:18:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCBED860FD;
	Thu, 21 Jan 2021 07:18:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 736321BF873
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6EFA986D0F
 for <devel@linuxdriverproject.org>; Thu, 21 Jan 2021 07:18:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fkMqOcZJV3tG for <devel@linuxdriverproject.org>;
 Thu, 21 Jan 2021 07:18:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA6CE86CF9
 for <devel@driverdev.osuosl.org>; Thu, 21 Jan 2021 07:18:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 201F92396D;
 Thu, 21 Jan 2021 07:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611213508;
 bh=mbuAyjc4Gf5cdswGQdNod+LYe43pzG2SbMc0YDjJRSI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hFpfIk8I5BsaOX3iTzyisFeULUJn4IMuzKVQJ3lFYUfw5y4R4dJDWmgKLA1OeOBbY
 jaB6Xoua3CabscBAg1hFfbWitm7nRGExESARa+d6Jnap07yxVS58iiqQlUDGuZzzXG
 kxrnmdMI8vVr9vs9rvA0jNUhS9y0NLYWWs01NA6m2wTAVnLhnHYS32VcUeYRkE2YEs
 Nu8Cn0RGW4g5RidtlbfwGwbZ2d/mJPjVluIS181Cho5XOah6EcnxTlGbQv97DivVvx
 0zI96T0cH6TJSHZlWvnj0HFqUql9SyihQJe5Ekd9H3pA+JmI0aYucQsNVku8RkKwN3
 tO5VZQuo010uA==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l2UEb-004BsE-IY; Thu, 21 Jan 2021 08:18:25 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Lee Jones <lee.jones@linaro.org>
Subject: [PATCH v5 10/21] staging: hikey9xx: hi6421v600-regulator: fix delay
 logic
Date: Thu, 21 Jan 2021 08:18:12 +0100
Message-Id: <6733dac9813ba6688def404142cb7b964accf758.1611212783.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <cover.1611212783.git.mchehab+huawei@kernel.org>
References: <cover.1611212783.git.mchehab+huawei@kernel.org>
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

The original driver, which can be seen at
commit 42f24d9d446a ("staging: regulator: add a regulator driver for HiSilicon 6421v600 SPMI PMIC")
had a complex logic to ensure that there won't be multiple power
enable/disable commands running at the same time. At the original
logic, it were ensured that:

- a next power up/down would wait for at least the on/off period;
- an extra delay would be granted. It turns that such extra delay
  has a value of zero, but it was relying on gettimeofday()
  call, which can take some time.

This was later simplified, but there are still some possible
issues. In order to avoid that, let's simply add a delay
to wait for the power up line to stabilize after powering up
a device.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421v600-regulator.c | 5 +++--
 include/linux/mfd/hi6421-spmi-pmic.h            | 1 -
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421v600-regulator.c b/drivers/staging/hikey9xx/hi6421v600-regulator.c
index 5e78eebfc1f3..e5a492ee7121 100644
--- a/drivers/staging/hikey9xx/hi6421v600-regulator.c
+++ b/drivers/staging/hikey9xx/hi6421v600-regulator.c
@@ -113,14 +113,15 @@ static int hi6421_spmi_regulator_enable(struct regulator_dev *rdev)
 
 	/* cannot enable more than one regulator at one time */
 	mutex_lock(&sreg->enable_mutex);
-	usleep_range(HISI_REGS_ENA_PROTECT_TIME,
-		     HISI_REGS_ENA_PROTECT_TIME + 1000);
 
 	/* set enable register */
 	ret = hi6421_spmi_pmic_rmw(pmic, rdev->desc->enable_reg,
 				   rdev->desc->enable_mask,
 				   rdev->desc->enable_mask);
 
+	/* Avoid powering up multiple devices at the same time */
+	usleep_range(rdev->desc->off_on_delay, rdev->desc->off_on_delay + 60);
+
 	mutex_unlock(&sreg->enable_mutex);
 
 	return ret;
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
index 2c8896fd852e..0c2214612c4e 100644
--- a/include/linux/mfd/hi6421-spmi-pmic.h
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -13,7 +13,6 @@
 
 #include <linux/irqdomain.h>
 
-#define HISI_REGS_ENA_PROTECT_TIME	(0)	/* in microseconds */
 #define HISI_ECO_MODE_ENABLE		(1)
 #define HISI_ECO_MODE_DISABLE		(0)
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
