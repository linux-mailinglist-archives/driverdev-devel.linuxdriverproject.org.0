Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 96B6A2A678C
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 16:23:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 927C8866FB;
	Wed,  4 Nov 2020 15:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JK8m9xdqTxhx; Wed,  4 Nov 2020 15:23:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 04EC88670F;
	Wed,  4 Nov 2020 15:23:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 173861BF32E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 15:23:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 136C285876
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 15:23:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y5rmeK8n4dZP for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 15:23:44 +0000 (UTC)
X-Greylist: delayed 11:16:06 by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2059.outbound.protection.outlook.com [40.107.236.59])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C9EA38586A
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 15:23:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jp95Wv7tm4xbZSwwh95UAThNBYrYqnA5UuJo+7+ztwzWm7IjKDNTzJPoccxIQuB5ghcLiHW1GEa3gp5IE2rSOlAd0irmOW43uAQDd8/NSTsjtROmrFhK3//4VGpM6lfZirtCv8gFkGadw0QOUyYaR18DaD/eohsBm/3SbxAT6V4Kr0zsXvJwQq9ZTzjcj3gjfNPKnmzCrbEBxXN7b4nwNa2hImw7fSp04Y3DXyW1opNB8TZN7WyHiZCR9Sb3nFcHEQGqse+GpIddqRWQECnnWTwwJF1haSwg/Kk631nywqdSpOdNWq0RSMgrdZvdXuF3t9BygOu1O+VCLPDnzPHKNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qrlqf169eOMTmGAqd1UB+DG7YCIgywR1JmgQpEUkCOQ=;
 b=nTbfuPrWdKmFGXPFoBbWoPBQj0/NoZoOL7fbyheXK9R+qEqP7UxJwKDMDMCimWPlcrT+RtQJnIky4CDcb8GoCT/G9JYXza9bWQIZprK6ldLPrbxTfLH82UinJtQfZ+yTH+ZC05GRa3BSMB1uptb8Ye/Bc40uB40jZ6uSkTASAeCZaqG+P38aubbe7a8J1QVWzKWmq55PrSWwtkZBqAoDlVqmprYnFmfTs2tTeGFIytKmeyN8c/ACE7PA5rOyMFdQAbcbndD4wIf5ooHNsh4e4eSslTK6lgZQHiI8UannuWgwNmbuaSVIMfPmr92LOCsw3aLYFeSk2d1P/C17LaZdAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qrlqf169eOMTmGAqd1UB+DG7YCIgywR1JmgQpEUkCOQ=;
 b=XjOgn5O6aTP0ko7waqWu4f5PCG9U+M5ZSN/P/hE3fam2zq24db+r43ZyP7A2encnwk/ZXRq4pkv95lJKxLx7/tPQ1lNmg7PeCW5qht04id9sEg5TGbFCExoahbriBqOOXgD98No2STi2CeltQc3tUBXiQyn7UYzGqNgBR1Wsu60=
Received: from BL1PR13CA0295.namprd13.prod.outlook.com (2603:10b6:208:2bc::30)
 by MW4PR02MB7441.namprd02.prod.outlook.com (2603:10b6:303:74::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Wed, 4 Nov
 2020 15:07:46 +0000
Received: from BL2NAM02FT054.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:2bc:cafe::e7) by BL1PR13CA0295.outlook.office365.com
 (2603:10b6:208:2bc::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.10 via Frontend
 Transport; Wed, 4 Nov 2020 15:07:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 BL2NAM02FT054.mail.protection.outlook.com (10.152.77.107) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3520.15 via Frontend Transport; Wed, 4 Nov 2020 15:07:45 +0000
Received: from xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 4 Nov 2020 07:07:07 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 4 Nov 2020 07:07:07 -0800
Envelope-to: git@xilinx.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=49678 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kaKNO-0007UB-OK; Wed, 04 Nov 2020 07:07:06 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <linux-clk@vger.kernel.org>
Subject: [PATCH v7 5/7] clk: clock-wizard: Add support for fractional support
Date: Wed, 4 Nov 2020 20:36:45 +0530
Message-ID: <1604502407-14352-6-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1e6f4c46-3af6-47f8-2573-08d880d362f9
X-MS-TrafficTypeDiagnostic: MW4PR02MB7441:
X-Microsoft-Antispam-PRVS: <MW4PR02MB74417D7BDC72C07A14230DA2AAEF0@MW4PR02MB7441.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QCeF6rGZfYe8aB46Ua4q/kA0YY1BCb8aPSOIt5+jJ6U6dzjaW2bgtppQDrBBYddj+MglOuxUsvoiZIIj8oXbjn7KuJ9ltRryokjhE8V0yO9KxWONAg9kQrM4/HIG22RclcXFMbMp8BdJzp5J/0Hkw60E//n0BPpL8mz60MX3vIimffOTIkI3wOea4dt0UsDhkpxrdU2H9tg1QCgEk9Q85auBLD9tENkkrh37NU6QDUGJ6LMQs7+3Vf/xon+4QTeRnXNKSOiQ70dnCChzuImEmb2bfGaya2uV6V+VVCbp58qMRVrfrBgBBgOJ2Z2IqMcvoCwJ3ejhxftBCJ436cITVfTJ+DZF0hIQ1HdtpqcZNI2m/aC8t+DFhWpF5blB7+8D4AVyOF39eGhhLwV++3BWCwENlt+U7n0/t9iTs6ZhpOc=
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch02.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(396003)(136003)(346002)(39860400002)(376002)(46966005)(70206006)(26005)(6666004)(36756003)(2616005)(426003)(82310400003)(4326008)(186003)(6916009)(9786002)(54906003)(70586007)(8936002)(82740400003)(107886003)(5660300002)(44832011)(2906002)(83380400001)(478600001)(7696005)(356005)(316002)(47076004)(336012)(7636003)(8676002)(36906005)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2020 15:07:45.8415 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e6f4c46-3af6-47f8-2573-08d880d362f9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: BL2NAM02FT054.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR02MB7441
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently the set rate granularity is to integral divisors.
Add support for the fractional divisors.
Only the first output0 is fractional in the hardware.


Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
v7:
Remove unnecessary comments
use mult_frac
use a common divisor function.

 drivers/clk/clk-xlnx-clock-wizard.c | 219 ++++++++++++++++++++++++++++++++----
 1 file changed, 199 insertions(+), 20 deletions(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index 5581b24..ed3b0ef 100644
--- a/drivers/clk/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/clk-xlnx-clock-wizard.c
@@ -29,20 +29,25 @@
 
 #define WZRD_CLKFBOUT_MULT_SHIFT	8
 #define WZRD_CLKFBOUT_MULT_MASK		(0xff << WZRD_CLKFBOUT_MULT_SHIFT)
+#define WZRD_CLKFBOUT_FRAC_SHIFT	16
+#define WZRD_CLKFBOUT_FRAC_MASK		(0x3ff << WZRD_CLKFBOUT_FRAC_SHIFT)
 #define WZRD_DIVCLK_DIVIDE_SHIFT	0
 #define WZRD_DIVCLK_DIVIDE_MASK		(0xff << WZRD_DIVCLK_DIVIDE_SHIFT)
 #define WZRD_CLKOUT_DIVIDE_SHIFT	0
 #define WZRD_CLKOUT_DIVIDE_WIDTH	8
 #define WZRD_CLKOUT_DIVIDE_MASK		(0xff << WZRD_DIVCLK_DIVIDE_SHIFT)
+#define WZRD_CLKOUT_FRAC_SHIFT		8
+#define WZRD_CLKOUT_FRAC_MASK		0x3ff
 
 #define WZRD_DR_MAX_INT_DIV_VALUE	255
-#define WZRD_DR_NUM_RETRIES		10000
 #define WZRD_DR_STATUS_REG_OFFSET	0x04
 #define WZRD_DR_LOCK_BIT_MASK		0x00000001
 #define WZRD_DR_INIT_REG_OFFSET		0x25C
 #define WZRD_DR_DIV_TO_PHASE_OFFSET	4
 #define WZRD_DR_BEGIN_DYNA_RECONF	0x03
 
+#define WZRD_USEC_POLL		10
+#define WZRD_TIMEOUT_POLL		1000
 /* Get the mask from width */
 #define div_mask(width)			((1 << (width)) - 1)
 
@@ -52,6 +57,7 @@
 enum clk_wzrd_int_clks {
 	wzrd_clk_mul,
 	wzrd_clk_mul_div,
+	wzrd_clk_mul_frac,
 	wzrd_clk_int_max
 };
 
@@ -186,7 +192,7 @@ static long clk_wzrd_round_rate(struct clk_hw *hw, unsigned long rate,
 	 */
 	div = DIV_ROUND_CLOSEST(*prate, rate);
 
-	return (*prate / div);
+	return *prate / div;
 }
 
 static const struct clk_ops clk_wzrd_clk_divider_ops = {
@@ -195,6 +201,117 @@ static const struct clk_ops clk_wzrd_clk_divider_ops = {
 	.recalc_rate = clk_wzrd_recalc_rate,
 };
 
+static unsigned long clk_wzrd_recalc_ratef(struct clk_hw *hw,
+					   unsigned long parent_rate)
+{
+	unsigned int val;
+	u32 div, frac;
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	void __iomem *div_addr = divider->base + divider->offset;
+
+	val = readl(div_addr);
+	div = val & div_mask(divider->width);
+	frac = (val >> WZRD_CLKOUT_FRAC_SHIFT) & WZRD_CLKOUT_FRAC_MASK;
+
+	return mult_frac(parent_rate, 1000, (div * 1000) + frac);
+}
+
+static int clk_wzrd_dynamic_reconfig_f(struct clk_hw *hw, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	int err;
+	u32 value, pre;
+	unsigned long rate_div, f, clockout0_div;
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	void __iomem *div_addr = divider->base + divider->offset;
+
+	rate_div = ((parent_rate * 1000) / rate);
+	clockout0_div = rate_div / 1000;
+
+	pre = DIV_ROUND_CLOSEST((parent_rate * 1000), rate);
+	f = (u32)(pre - (clockout0_div * 1000));
+	f = f & WZRD_CLKOUT_FRAC_MASK;
+	f = f << WZRD_CLKOUT_DIVIDE_WIDTH;
+
+	value = (f  | (clockout0_div & WZRD_CLKOUT_DIVIDE_MASK));
+
+	/* Set divisor and clear phase offset */
+	writel(value, div_addr);
+	writel(0x0, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);
+
+	/* Check status register */
+	err = readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
+				 value & WZRD_DR_LOCK_BIT_MASK,
+				 WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+	if (err)
+		return err;
+
+	/* Initiate reconfiguration */
+	writel(WZRD_DR_BEGIN_DYNA_RECONF,
+	       divider->base + WZRD_DR_INIT_REG_OFFSET);
+
+	/* Check status register */
+	return readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
+				value & WZRD_DR_LOCK_BIT_MASK,
+				WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+}
+
+static long clk_wzrd_round_rate_f(struct clk_hw *hw, unsigned long rate,
+				  unsigned long *prate)
+{
+	return rate;
+}
+
+static const struct clk_ops clk_wzrd_clk_divider_ops_f = {
+	.round_rate = clk_wzrd_round_rate_f,
+	.set_rate = clk_wzrd_dynamic_reconfig_f,
+	.recalc_rate = clk_wzrd_recalc_ratef,
+};
+
+static struct clk *clk_wzrd_register_divf(struct device *dev,
+					  const char *name,
+					  const char *parent_name,
+					  unsigned long flags,
+					  void __iomem *base, u16 offset,
+					  u8 shift, u8 width,
+					  u8 clk_divider_flags,
+					  const struct clk_div_table *table,
+					  spinlock_t *lock)
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
+
+	init.ops = &clk_wzrd_clk_divider_ops_f;
+
+	init.flags = flags;
+	init.parent_names = &parent_name;
+	init.num_parents = 1;
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
+	hw = &div->hw;
+	ret =  devm_clk_hw_register(dev, hw);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return hw->clk;
+}
+
 static struct clk *clk_wzrd_register_divider(struct device *dev,
 					     const char *name,
 					     const char *parent_name,
@@ -229,7 +346,6 @@ static struct clk *clk_wzrd_register_divider(struct device *dev,
 	div->hw.init = &init;
 	div->table = table;
 
-	/* register the clock */
 	hw = &div->hw;
 	ret = devm_clk_hw_register(dev, hw);
 	if (ret)
@@ -237,7 +353,6 @@ static struct clk *clk_wzrd_register_divider(struct device *dev,
 
 	return hw->clk;
 }
-
 static int clk_wzrd_clk_notifier(struct notifier_block *nb, unsigned long event,
 				 void *data)
 {
@@ -267,6 +382,61 @@ static int clk_wzrd_clk_notifier(struct notifier_block *nb, unsigned long event,
 	}
 }
 
+static int clk_wzrd_register_dividers(struct platform_device *pdev,
+				      const char *clk_name)
+{
+	int i, ret;
+	struct device_node *np = pdev->dev.of_node;
+	int outputs;
+	unsigned long flags = 0;
+	struct clk_wzrd *clk_wzrd = platform_get_drvdata(pdev);
+	const char *clkout_name;
+
+	outputs = of_property_count_strings(np, "clock-output-names");
+	if (outputs == 1)
+		flags = CLK_SET_RATE_PARENT;
+
+	for (i = outputs - 1; i >= 0 ; i--) {
+		if (of_property_read_string_index(np, "clock-output-names", i,
+						  &clkout_name)) {
+			dev_err(&pdev->dev,
+				"clock output name not specified\n");
+			ret = -EINVAL;
+			return ret;
+		}
+
+		if (!i)
+			clk_wzrd->clkout[i] = clk_wzrd_register_divf
+				(&pdev->dev, clkout_name,
+				clk_name, flags,
+				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
+				WZRD_CLKOUT_DIVIDE_SHIFT,
+				WZRD_CLKOUT_DIVIDE_WIDTH,
+				CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
+				NULL, &clkwzrd_lock);
+		else
+			clk_wzrd->clkout[i] = clk_wzrd_register_divider
+				(&pdev->dev, clkout_name,
+				clk_name, 0,
+				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
+				WZRD_CLKOUT_DIVIDE_SHIFT,
+				WZRD_CLKOUT_DIVIDE_WIDTH,
+				CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
+				NULL, &clkwzrd_lock);
+
+		if (IS_ERR(clk_wzrd->clkout[i])) {
+			int j;
+
+			for (j = i + 1; j < outputs; j++)
+				clk_unregister(clk_wzrd->clkout[j]);
+			dev_err(&pdev->dev,
+				"unable to register divider clock\n");
+			ret = PTR_ERR(clk_wzrd->clkout[i]);
+			return ret;
+		}
+	}
+	return 0;
+}
 static int __maybe_unused clk_wzrd_suspend(struct device *dev)
 {
 	struct clk_wzrd *clk_wzrd = dev_get_drvdata(dev);
@@ -298,8 +468,8 @@ static SIMPLE_DEV_PM_OPS(clk_wzrd_dev_pm_ops, clk_wzrd_suspend,
 
 static int clk_wzrd_probe(struct platform_device *pdev)
 {
-	int i, ret;
-	u32 reg;
+	int ret;
+	u32 reg, reg_f, mult;
 	unsigned long rate;
 	const char *clk_name;
 	struct clk_wzrd *clk_wzrd;
@@ -349,17 +519,13 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		goto err_disable_clk;
 	}
 
-	/* we don't support fractional div/mul yet */
-	reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
-		    WZRD_CLKFBOUT_FRAC_EN;
-	reg |= readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2)) &
-		     WZRD_CLKOUT0_FRAC_EN;
-	if (reg)
-		dev_warn(&pdev->dev, "fractional div/mul not supported\n");
+	reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0));
+	reg_f = reg & WZRD_CLKFBOUT_FRAC_MASK;
+	reg_f =  reg_f >> WZRD_CLKFBOUT_FRAC_SHIFT;
 
-	/* register multiplier */
-	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
-		     WZRD_CLKFBOUT_MULT_MASK) >> WZRD_CLKFBOUT_MULT_SHIFT;
+	reg = reg & WZRD_CLKFBOUT_MULT_MASK;
+	reg =  reg >> WZRD_CLKFBOUT_MULT_SHIFT;
+	mult = (reg * 1000) + reg_f;
 	clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev->dev));
 	if (!clk_name) {
 		ret = -ENOMEM;
@@ -368,8 +534,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
 			(&pdev->dev, clk_name,
 			 __clk_get_name(clk_wzrd->clk_in1),
-			 0, reg, 1);
-	kfree(clk_name);
+			0, mult, 1000);
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
 		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
 		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul]);
@@ -407,8 +572,18 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 			ret = -EINVAL;
 			goto err_rm_int_clks;
 		}
-		clk_wzrd->clkout[i] = clk_wzrd_register_divider(&pdev->dev,
-								clkout_name,
+		if (!i)
+			clk_wzrd->clkout[i] = clk_wzrd_register_divf
+				(&pdev->dev, clkout_name,
+				clk_name, 0,
+				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
+				WZRD_CLKOUT_DIVIDE_SHIFT,
+				WZRD_CLKOUT_DIVIDE_WIDTH,
+				CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO,
+				NULL, &clkwzrd_lock);
+		else
+			clk_wzrd->clkout[i] = clk_wzrd_register_divider
+				(&pdev->dev, clkout_name,
 				clk_name, 0,
 				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
 				WZRD_CLKOUT_DIVIDE_SHIFT,
@@ -427,6 +602,10 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		}
 	}
 
+	ret = clk_wzrd_register_dividers(pdev, clk_name);
+	if (ret)
+		goto err_rm_int_clks;
+
 	kfree(clk_name);
 
 	clk_wzrd->clk_data.clks = clk_wzrd->clkout;
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
