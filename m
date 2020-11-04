Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F5A2A69FC
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 17:39:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A119481D08;
	Wed,  4 Nov 2020 16:39:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a2cjyD6EiKMJ; Wed,  4 Nov 2020 16:39:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C59A381D7D;
	Wed,  4 Nov 2020 16:39:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6BDF51BF5DD
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 16:39:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6591C81D08
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 16:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UJeBcexlHXKO for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 16:39:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2048.outbound.protection.outlook.com [40.107.220.48])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4B37B8113B
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 16:39:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d9hne/80roBWHPcr2PI5eHO1WqOPwVdHlAeqio6P8ZpeCWvxUNbQq4CpvVGUU8taTM6uf3Sx3Ow9aV7kruRIYbsSDi5x8thfXhckI+asulyiR4VGgA1q6c8vjYdx0OwRcw3LQnz3tSO6N3AxgAlSPuraJOmjtMv5mD4NiblCfaOxNM1YnH8+fcqQXcxxsHGYw0bL5vkZkRMYNj0aymwUqz5dABYKYItWt3I5bAar5z0cCoPy1wtLXGaYufW9DpVh6jjgDY4pIUemy/b1SMZn6jfjGfvUmdPiUOkYecsvECXpEA9um4HJM/8TqyMZlc2NmGBSd2qUcBKZrngJm6Tmog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3vfq0GVycpTs1+KvU5P5xIWU+3WTFUs0I2USFq3kzj4=;
 b=UtibTp02/uy2xBiF102r6nU3AXZTOSdS3xD7vnw9I6KFQ+2Gf2SR71mo3dRyZ6KZFhGo7cD+YbklCTa3SLK5y3GjspgPI+UR6mkW2uBKFPq3pEotTFx5UHFkFPYdrGwJPRRRzYXxnFX7Ok1qSFd2uiZx/pzczFxza/cLoXxXCcpNPRBZq6sDGXh1vexK3KQzetkFaYYTWDRxuRSOi4dzsdDP6vgNHadEoSqNuVxbe6++iLYipcY9/LRqiERJ60O9tXeBhz8nnOOM1bf/940Inn5VePoJ/l7GOOXUbGTkblL6/Ak3vU5GTZzvjjhb2AkNAUkGF37Gzuu/CaQDTmdJQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3vfq0GVycpTs1+KvU5P5xIWU+3WTFUs0I2USFq3kzj4=;
 b=R4FeGsnB7B9Rlwff+/xjlAHcrZ5znxubv/a3aurvdM8HHB9lC5+KgZzQoOJK9+WG20+i3iVR5i8BvXjxWFVtZfqwHQQCULXB1J8uuIBI1n9ML8FxCUj5iXaP2UAx9ortKQzeQ6Drt8FQcrXwkEN5Ev4kkqB9RMxv9fl5NFKsRXo=
Received: from BL1PR13CA0293.namprd13.prod.outlook.com (2603:10b6:208:2bc::28)
 by CH2PR02MB7046.namprd02.prod.outlook.com (2603:10b6:610:8c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.19; Wed, 4 Nov
 2020 15:07:45 +0000
Received: from BL2NAM02FT043.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:2bc:cafe::a7) by BL1PR13CA0293.outlook.office365.com
 (2603:10b6:208:2bc::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.10 via Frontend
 Transport; Wed, 4 Nov 2020 15:07:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 BL2NAM02FT043.mail.protection.outlook.com (10.152.77.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3520.15 via Frontend Transport; Wed, 4 Nov 2020 15:07:45 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 4 Nov 2020 07:07:04 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 4 Nov 2020 07:07:04 -0800
Envelope-to: git@xilinx.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=49678 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kaKNL-0007UB-Kd; Wed, 04 Nov 2020 07:07:03 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <linux-clk@vger.kernel.org>
Subject: [PATCH v7 4/7] clk: clock-wizard: Add support for dynamic
 reconfiguration
Date: Wed, 4 Nov 2020 20:36:44 +0530
Message-ID: <1604502407-14352-5-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dfd83cd2-55ba-4988-0170-08d880d362e1
X-MS-TrafficTypeDiagnostic: CH2PR02MB7046:
X-Microsoft-Antispam-PRVS: <CH2PR02MB704614004540B312DA93E7D5AAEF0@CH2PR02MB7046.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1201;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SoOLl2q87PwuZ+sbdtS3b3uYq8trUSxUQ7oVWsHoo+Z2QMo5goDXe3T6fCzt1zkudbRmHQIFHR80OHeo9VVVHw9ESDdtQfiAKLxEpduNTsjjU3XNMMLAJ4EzDqVRaDPPdKczB1uH0ugrfRzFNdm50/3wkn8FpCj9hIaWpEfC8g7aHJ0NwuzId+BzIgQtPOUwQmLC6sbaWnzgd6idAiBAZstrljqnWQrZZpVVIzCK5uw7rjU8KGh+dOrO4ghYIMXxpXr4/PQttjMAcfiUoti/3Q+n7gKFxm8F5Sbf/IERIJP61EscPDLpOPTDmKv6z0vG12mGOYbtYmHE3nllM6XdSf9I0KOlI3uNKSc1xd+asNGIRxiyfWdLnwiykh1ABp33QAAF9TEiBDd0hyoRGsFTz5iTDdieMcq22pZURzOU5qg=
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch02.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(136003)(346002)(39850400004)(376002)(396003)(46966005)(8676002)(8936002)(316002)(54906003)(44832011)(2906002)(82310400003)(5660300002)(47076004)(7636003)(82740400003)(36756003)(26005)(186003)(9786002)(4326008)(107886003)(70206006)(70586007)(426003)(7696005)(36906005)(6916009)(478600001)(336012)(6666004)(83380400001)(356005)(2616005)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2020 15:07:45.6873 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dfd83cd2-55ba-4988-0170-08d880d362e1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: BL2NAM02FT043.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB7046
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Chirag Parekh <chirag.parekh@xilinx.com>, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The patch adds support for dynamic reconfiguration of clock output rate.
Output clocks are registered as dividers and set rate callback function
is used for dynamic reconfiguration.

Based on the initial work from Chirag.

Signed-off-by: Chirag Parekh <chirag.parekh@xilinx.com>
Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
v6:
Remove the typecast.
use min for capping frequency.
use polled timeout

v7:
Use devm functions
Add the spinlock

 drivers/clk/clk-xlnx-clock-wizard.c | 181 ++++++++++++++++++++++++++++++++++--
 1 file changed, 175 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index fb2d555..5581b24 100644
--- a/drivers/clk/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/clk-xlnx-clock-wizard.c
@@ -17,6 +17,7 @@
 #include <linux/of.h>
 #include <linux/module.h>
 #include <linux/err.h>
+#include <linux/iopoll.h>
 
 #define WZRD_NUM_OUTPUTS	7
 #define WZRD_ACLK_MAX_FREQ	250000000UL
@@ -31,8 +32,23 @@
 #define WZRD_DIVCLK_DIVIDE_SHIFT	0
 #define WZRD_DIVCLK_DIVIDE_MASK		(0xff << WZRD_DIVCLK_DIVIDE_SHIFT)
 #define WZRD_CLKOUT_DIVIDE_SHIFT	0
+#define WZRD_CLKOUT_DIVIDE_WIDTH	8
 #define WZRD_CLKOUT_DIVIDE_MASK		(0xff << WZRD_DIVCLK_DIVIDE_SHIFT)
 
+#define WZRD_DR_MAX_INT_DIV_VALUE	255
+#define WZRD_DR_NUM_RETRIES		10000
+#define WZRD_DR_STATUS_REG_OFFSET	0x04
+#define WZRD_DR_LOCK_BIT_MASK		0x00000001
+#define WZRD_DR_INIT_REG_OFFSET		0x25C
+#define WZRD_DR_DIV_TO_PHASE_OFFSET	4
+#define WZRD_DR_BEGIN_DYNA_RECONF	0x03
+
+/* Get the mask from width */
+#define div_mask(width)			((1 << (width)) - 1)
+
+/* Extract divider instance from clock hardware instance */
+#define to_clk_wzrd_divider(_hw) container_of(_hw, struct clk_wzrd_divider, hw)
+
 enum clk_wzrd_int_clks {
 	wzrd_clk_mul,
 	wzrd_clk_mul_div,
@@ -64,6 +80,29 @@ struct clk_wzrd {
 	bool suspended;
 };
 
+/**
+ * struct clk_wzrd_divider - clock divider specific to clk_wzrd
+ *
+ * @hw:		handle between common and hardware-specific interfaces
+ * @base:	base address of register containing the divider
+ * @offset:	offset address of register containing the divider
+ * @shift:	shift to the divider bit field
+ * @width:	width of the divider bit field
+ * @flags:	clk_wzrd divider flags
+ * @table:	array of value/divider pairs, last entry should have div = 0
+ * @lock:	register lock
+ */
+struct clk_wzrd_divider {
+	struct clk_hw hw;
+	void __iomem *base;
+	u16 offset;
+	u8 shift;
+	u8 width;
+	u8 flags;
+	const struct clk_div_table *table;
+	spinlock_t *lock;  /* divider lock */
+};
+
 #define to_clk_wzrd(_nb) container_of(_nb, struct clk_wzrd, nb)
 
 /* maximum frequencies for input/output clocks per speed grade */
@@ -73,6 +112,132 @@ static const unsigned long clk_wzrd_max_freq[] = {
 	1066000000UL
 };
 
+/* spin lock variable for clk_wzrd */
+static DEFINE_SPINLOCK(clkwzrd_lock);
+
+static unsigned long clk_wzrd_recalc_rate(struct clk_hw *hw,
+					  unsigned long parent_rate)
+{
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	void __iomem *div_addr = divider->base + divider->offset;
+	unsigned int val;
+
+	val = readl(div_addr) >> divider->shift;
+	val &= div_mask(divider->width);
+
+	return divider_recalc_rate(hw, parent_rate, val, divider->table,
+			divider->flags, divider->width);
+}
+
+static int clk_wzrd_dynamic_reconfig(struct clk_hw *hw, unsigned long rate,
+				     unsigned long parent_rate)
+{
+	int err = 0;
+	u32 value;
+	unsigned long flags = 0;
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	void __iomem *div_addr = divider->base + divider->offset;
+
+	if (divider->lock)
+		spin_lock_irqsave(divider->lock, flags);
+	else
+		__acquire(divider->lock);
+
+	value = DIV_ROUND_CLOSEST(parent_rate, rate);
+
+	/* Cap the value to max */
+	min_t(u32, value, WZRD_DR_MAX_INT_DIV_VALUE);
+
+	/* Set divisor and clear phase offset */
+	writel(value, div_addr);
+	writel(0x00, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);
+
+	/* Check status register */
+	err = readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET,
+				 value, value & WZRD_DR_LOCK_BIT_MASK,
+				 WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+	if (err)
+		goto err_reconfig;
+
+	/* Initiate reconfiguration */
+	writel(WZRD_DR_BEGIN_DYNA_RECONF,
+	       divider->base + WZRD_DR_INIT_REG_OFFSET);
+
+	/* Check status register */
+	err = readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET,
+				 value, value & WZRD_DR_LOCK_BIT_MASK,
+				 WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+err_reconfig:
+	if (divider->lock)
+		spin_unlock_irqrestore(divider->lock, flags);
+	else
+		__release(divider->lock);
+	return err;
+}
+
+static long clk_wzrd_round_rate(struct clk_hw *hw, unsigned long rate,
+				unsigned long *prate)
+{
+	u8 div;
+
+	/*
+	 * since we don't change parent rate we just round rate to closest
+	 * achievable
+	 */
+	div = DIV_ROUND_CLOSEST(*prate, rate);
+
+	return (*prate / div);
+}
+
+static const struct clk_ops clk_wzrd_clk_divider_ops = {
+	.round_rate = clk_wzrd_round_rate,
+	.set_rate = clk_wzrd_dynamic_reconfig,
+	.recalc_rate = clk_wzrd_recalc_rate,
+};
+
+static struct clk *clk_wzrd_register_divider(struct device *dev,
+					     const char *name,
+					     const char *parent_name,
+					     unsigned long flags,
+					     void __iomem *base, u16 offset,
+					     u8 shift, u8 width,
+					     u8 clk_divider_flags,
+					     const struct clk_div_table *table,
+					     spinlock_t *lock)
+{
+	struct clk_wzrd_divider *div;
+	struct clk_hw *hw;
+	struct clk_init_data init;
+	int ret;
+
+	div = devm_kzalloc(dev, sizeof(*div), GFP_KERNEL);
+	if (!div)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.ops = &clk_wzrd_clk_divider_ops;
+	init.flags = flags;
+	init.parent_names =  &parent_name;
+	init.num_parents =  1;
+
+	div->base = base;
+	div->offset = offset;
+	div->shift = shift;
+	div->width = width;
+	div->flags = clk_divider_flags;
+	div->lock = lock;
+	div->hw.init = &init;
+	div->table = table;
+
+	/* register the clock */
+	hw = &div->hw;
+	ret = devm_clk_hw_register(dev, hw);
+	if (ret)
+		hw = ERR_PTR(ret);
+
+	return hw->clk;
+}
+
 static int clk_wzrd_clk_notifier(struct notifier_block *nb, unsigned long event,
 				 void *data)
 {
@@ -223,7 +388,8 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_fixed_factor
 			(&pdev->dev, clk_name,
 			 __clk_get_name(clk_wzrd->clks_internal[wzrd_clk_mul]),
-			 0, 1, reg);
+			flags, ctrl_reg, 0, 8, CLK_DIVIDER_ONE_BASED |
+			CLK_DIVIDER_ALLOW_ZERO, &clkwzrd_lock);
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
 		dev_err(&pdev->dev, "unable to register divider clock\n");
 		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
@@ -241,11 +407,14 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 			ret = -EINVAL;
 			goto err_rm_int_clks;
 		}
-		reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2) + i * 12);
-		reg &= WZRD_CLKOUT_DIVIDE_MASK;
-		reg >>= WZRD_CLKOUT_DIVIDE_SHIFT;
-		clk_wzrd->clkout[i] = clk_register_fixed_factor
-			(&pdev->dev, clkout_name, clk_name, 0, 1, reg);
+		clk_wzrd->clkout[i] = clk_wzrd_register_divider(&pdev->dev,
+								clkout_name,
+				clk_name, 0,
+				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
+				WZRD_CLKOUT_DIVIDE_SHIFT,
+				WZRD_CLKOUT_DIVIDE_WIDTH,
+				CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
+				NULL, &clkwzrd_lock);
 		if (IS_ERR(clk_wzrd->clkout[i])) {
 			int j;
 
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
