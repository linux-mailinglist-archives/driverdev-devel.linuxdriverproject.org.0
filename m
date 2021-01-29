Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0093089AA
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jan 2021 16:04:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DEDA42E12E;
	Fri, 29 Jan 2021 15:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4evmwjecAvGd; Fri, 29 Jan 2021 15:04:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 10BB92E126;
	Fri, 29 Jan 2021 15:04:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D53431BF9D1
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D204F8748B
 for <devel@linuxdriverproject.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zZA5mVl7v5cL for <devel@linuxdriverproject.org>;
 Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 450C6873DC
 for <devel@driverdev.osuosl.org>; Fri, 29 Jan 2021 15:03:55 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7BB5E64E0C;
 Fri, 29 Jan 2021 15:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611932634;
 bh=wiKCKGyTVk+pRgyRdpyk+paR7C1IehaYdBx7mwRq1K0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=bcAiRNyJFn+bTfEEfduk2jafmAmtQI7AOmdgTaj4wWfTOrK8UR7XzHLgZ4zLKxmfC
 xudmymJsXqxFq/9IdaVbjLF6Tx3Ndvwtg+ZMoP79VyjPkoESneKi/jdPZWKouG2DZH
 ivD3nZ+hUfs2YI4RquGzMQTk1NpefvUBGAsqG/PqAYG4wRl1n1/+qcvuD6yurshlUg
 4fTinaGL4gg0gLy/9lV2V9Q4sghyHxuNYy5S7NWQ1kO0lWI+eW6msrhG77IKWvqtNj
 ydXBnQZYvAhJChq1MfDf43wBLoxlvtE6l5PKJZAqbJkjpfseHhhsJBAF2l8TN3BdaW
 w4R9t664mzt+w==
Received: by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1l5VJP-0078tE-V3; Fri, 29 Jan 2021 16:03:51 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v7 05/14] staging: hikey9xx: hi6421-spmi-pmic: cleanup header
 file
Date: Fri, 29 Jan 2021 16:03:40 +0100
Message-Id: <5cb8f7ca8075202b6de16b3c8bb1bae13e8378a5.1611932194.git.mchehab+huawei@kernel.org>
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

Remove the IRQ list from the header, as this is used only
inside the driver itself. Also, get rid of two unused
defines.

The net result is that only struct hi6421_spmi_pmic remains
on it, as this is used by the regulator driver.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 17 +++++++++++++++++
 include/linux/mfd/hi6421-spmi-pmic.h        | 20 --------------------
 2 files changed, 17 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 56a991ddea1a..1b12464b51b4 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -17,6 +17,23 @@
 #include <linux/slab.h>
 #include <linux/spmi.h>
 
+enum hi6421_spmi_pmic_irq_list {
+	OTMP = 0,
+	VBUS_CONNECT,
+	VBUS_DISCONNECT,
+	ALARMON_R,
+	HOLD_6S,
+	HOLD_1S,
+	POWERKEY_UP,
+	POWERKEY_DOWN,
+	OCP_SCP_R,
+	COUL_R,
+	SIM0_HPD_R,
+	SIM0_HPD_F,
+	SIM1_HPD_R,
+	SIM1_HPD_F,
+	PMIC_IRQ_LIST_MAX,
+};
 /* 8-bit register offset in PMIC */
 #define HISI_MASK_STATE			0xff
 
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
index aa8d5382f559..4d61cb266a18 100644
--- a/include/linux/mfd/hi6421-spmi-pmic.h
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -14,9 +14,6 @@
 #include <linux/irqdomain.h>
 #include <linux/regmap.h>
 
-#define HISI_ECO_MODE_ENABLE		(1)
-#define HISI_ECO_MODE_DISABLE		(0)
-
 struct hi6421_spmi_pmic {
 	struct resource				*res;
 	struct device				*dev;
@@ -29,21 +26,4 @@ struct hi6421_spmi_pmic {
 	struct regmap				*regmap;
 };
 
-enum hi6421_spmi_pmic_irq_list {
-	OTMP = 0,
-	VBUS_CONNECT,
-	VBUS_DISCONNECT,
-	ALARMON_R,
-	HOLD_6S,
-	HOLD_1S,
-	POWERKEY_UP,
-	POWERKEY_DOWN,
-	OCP_SCP_R,
-	COUL_R,
-	SIM0_HPD_R,
-	SIM0_HPD_F,
-	SIM1_HPD_R,
-	SIM1_HPD_F,
-	PMIC_IRQ_LIST_MAX,
-};
 #endif		/* __HISI_PMIC_H */
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
