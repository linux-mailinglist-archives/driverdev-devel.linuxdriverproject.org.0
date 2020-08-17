Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8E7245D7A
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 09:11:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 13BBC867ED;
	Mon, 17 Aug 2020 07:11:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZbpM5XHWAud; Mon, 17 Aug 2020 07:11:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E0CE86702;
	Mon, 17 Aug 2020 07:11:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 659BE1BF968
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5A355203E6
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 07:11:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gJX-ACn2hmpr for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 6C053204C9
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27AC122B49;
 Mon, 17 Aug 2020 07:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597648277;
 bh=ZcDE5i42m9j0hSsmtVzmayvub4jxnh7AZrHRgXzHWhU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XgCr34ssaqJELt20tAVRPUC1brWnwEUE5zUhim+TsOVnq4j9ThbSqTCAON68jEOAX
 nm50rEG2NQWVlZ1B3Bx+LX9J81dlFu8t0m3bFZdmH+F0V40lanpOQeAxakUp6r7SBd
 R3iWUapTQH/g3JVtuTOpIs4AOSLMte9IlT0g9dzU=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k7ZIZ-00Bdjm-9Z; Mon, 17 Aug 2020 09:11:15 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3 12/44] staging: mfd: hi6421-spmi-pmic: get rid of unused
 code
Date: Mon, 17 Aug 2020 09:10:31 +0200
Message-Id: <ecbef801f6c32ba0850ad9e5c534a4304807df3b.1597647359.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597647359.git.mchehab+huawei@kernel.org>
References: <cover.1597647359.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, mauro.chehab@huawei.com,
 Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are some checks there which could make sense for
downstream builds, but doesn't make much sense for
upstream ones. They came from the official Hikey970 tree
from Linaro, but even there, the commented-out code is not
set via other Kconfig vars.

So, let's just get rid of that. If needed later, this
patch can be (partially?) reversed.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/hikey9xx/hi6421-spmi-pmic.c | 63 ---------------------
 include/linux/mfd/hi6421-spmi-pmic.h        | 42 --------------
 2 files changed, 105 deletions(-)

diff --git a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
index 6bb0bc4b203b..809381eb6043 100644
--- a/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
+++ b/drivers/staging/hikey9xx/hi6421-spmi-pmic.c
@@ -53,10 +53,6 @@
 #define HISI_PMIC_FIRST_GROUP_INT_NUM        2
 
 static struct bit_info g_pmic_vbus = {0};
-#ifndef BIT
-#define BIT(x)		(0x1U << (x))
-#endif
-
 static struct hisi_pmic *g_pmic;
 static unsigned int g_extinterrupt_flag  = 0;
 static struct of_device_id of_hisi_pmic_match_tbl[] = {
@@ -121,65 +117,6 @@ void hisi_pmic_write(struct hisi_pmic *pmic, int reg, u32 val)
 }
 EXPORT_SYMBOL(hisi_pmic_write);
 
-#ifdef CONFIG_HISI_DIEID
-u32 hisi_pmic_read_sub_pmu(u8 sid, int reg)
-{
-	u32 ret;
-	u8 read_value = 0;
-	struct spmi_device *pdev;
-
-	if(strstr(saved_command_line, "androidboot.swtype=factory"))
-	{
-		if (NULL == g_pmic) {
-			pr_err(" g_pmic  is NULL\n");
-			return -1;/*lint !e570 */
-		}
-
-		pdev = to_spmi_device(g_pmic->dev);
-		if (NULL == pdev) {
-			pr_err("%s:pdev get failed!\n", __func__);
-			return -1;/*lint !e570 */
-		}
-
-		ret = spmi_ext_register_readl(pdev->ctrl, sid, reg, (unsigned char*)&read_value, 1);/*lint !e734 !e732 */
-		if (ret) {
-			pr_err("%s:spmi_ext_register_readl failed!\n", __func__);
-			return ret;
-		}
-		return (u32)read_value;
-	}
-	return  0;
-}
-EXPORT_SYMBOL(hisi_pmic_read_sub_pmu);
-
-void hisi_pmic_write_sub_pmu(u8 sid, int reg, u32 val)
-{
-	u32 ret;
-	struct spmi_device *pdev;
-	if(strstr(saved_command_line, "androidboot.swtype=factory"))
-	{
-		if (NULL == g_pmic) {
-			pr_err(" g_pmic  is NULL\n");
-			return;
-		}
-
-		pdev = to_spmi_device(g_pmic->dev);
-		if (NULL == pdev) {
-			pr_err("%s:pdev get failed!\n", __func__);
-			return;
-		}
-
-		ret = spmi_ext_register_writel(pdev->ctrl, sid, reg, (unsigned char*)&val, 1);/*lint !e734 !e732 */
-		if (ret) {
-			pr_err("%s:spmi_ext_register_writel failed!\n", __func__);
-			return ;
-		}
-	}
-
-	return ;
-}
-EXPORT_SYMBOL(hisi_pmic_write_sub_pmu);
-#endif
 
 void hisi_pmic_rmw(struct hisi_pmic *pmic, int reg,
 		     u32 mask, u32 bits)
diff --git a/include/linux/mfd/hi6421-spmi-pmic.h b/include/linux/mfd/hi6421-spmi-pmic.h
index 939b36f617c1..5be9b4d3f207 100644
--- a/include/linux/mfd/hi6421-spmi-pmic.h
+++ b/include/linux/mfd/hi6421-spmi-pmic.h
@@ -78,7 +78,6 @@ unsigned int get_uv_mntn_status(void);
 void clear_uv_mntn_resered_reg_bit(void);
 void set_uv_mntn_resered_reg_bit(void);
 
-#if defined(CONFIG_HISI_PMIC) || defined(CONFIG_HISI_PMIC_PMU_SPMI)
 /* Register Access Helpers */
 u32 hisi_pmic_read(struct hisi_pmic *pmic, int reg);
 void hisi_pmic_write(struct hisi_pmic *pmic, int reg, u32 val);
@@ -90,11 +89,6 @@ int hisi_pmic_array_read(int addr, char *buff, unsigned int len);
 int hisi_pmic_array_write(int addr, char *buff, unsigned int len);
 extern int hisi_get_pmic_irq_byname(unsigned int pmic_irq_list);
 extern int hisi_pmic_get_vbus_status(void);
-#if defined(CONFIG_HISI_DIEID)
-u32 hisi_pmic_read_sub_pmu(u8 sid ,int reg);
-void hisi_pmic_write_sub_pmu(u8 sid ,int reg, u32 val);
-#endif
-#else
 static inline u32 hisi_pmic_read(struct hisi_pmic *pmic, int reg) { return 0; }
 static inline void hisi_pmic_write(struct hisi_pmic *pmic, int reg, u32 val) {}
 static inline void hisi_pmic_rmw(struct hisi_pmic *pmic, int reg, u32 mask, u32 bits) {}
@@ -107,38 +101,7 @@ static inline int hisi_get_pmic_irq_byname(unsigned int pmic_irq_list) { return
 static inline int hisi_pmic_get_vbus_status(void) { return 1; }
 static inline u32 hisi_pmic_read_sub_pmu(u8 sid ,int reg) { return 0; }
 static inline void hisi_pmic_write_sub_pmu(u8 sid ,int reg, u32 val) {}
-#endif
 
-#ifdef CONFIG_HISI_HI6421V500_PMU
-enum pmic_irq_list {
-	POR_D45MR = 0,
-	VBUS_CONNECT,
-	VBUS_DISCONNECT,
-	ALARMON_R,
-	HOLD_6S,
-	HOLD_1S,
-	POWERKEY_UP,
-	POWERKEY_DOWN,
-	OCP_SCP_R,
-	COUL_R,
-	VSYS_OV,
-	VSYS_UV,
-	VSYS_PWROFF_ABS,
-	VSYS_PWROFF_DEB,
-	THSD_OTMP140,
-	THSD_OTMP125,
-	HRESETN,
-	SIM0_HPD_R = 24,
-	SIM0_HPD_F,
-	SIM0_HPD_H,
-	SIM0_HPD_L,
-	SIM1_HPD_R,
-	SIM1_HPD_F,
-	SIM1_HPD_H,
-	SIM1_HPD_L,
-	PMIC_IRQ_LIST_MAX,
-};
-#else
 enum pmic_irq_list {
 	OTMP = 0,
 	VBUS_CONNECT,
@@ -156,10 +119,5 @@ enum pmic_irq_list {
 	SIM1_HPD_F,
 	PMIC_IRQ_LIST_MAX,
 };
-#endif
-
-#ifdef CONFIG_HISI_SR_DEBUG
-extern void get_ip_regulator_state(void);
-#endif
 #endif		/* __HISI_PMIC_H */
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
