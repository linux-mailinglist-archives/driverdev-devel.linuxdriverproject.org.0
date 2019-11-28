Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E696E10C432
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Nov 2019 08:06:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 472F3877A6;
	Thu, 28 Nov 2019 07:05:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 37UaHUQM-eID; Thu, 28 Nov 2019 07:05:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7ADD6877AB;
	Thu, 28 Nov 2019 07:05:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 17D621BF860
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:05:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 14BEA86892
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:05:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p6ug2R7naCpn for <devel@linuxdriverproject.org>;
 Thu, 28 Nov 2019 07:05:52 +0000 (UTC)
X-Greylist: delayed 00:14:43 by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790079.outbound.protection.outlook.com [40.107.79.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 97B89868C7
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 07:05:52 +0000 (UTC)
Received: from CY4PR02CA0027.namprd02.prod.outlook.com (2603:10b6:903:117::13)
 by BYAPR02MB3942.namprd02.prod.outlook.com (2603:10b6:a03::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18; Thu, 28 Nov 2019 06:51:10 +0000
Received: from CY1NAM02FT046.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::208) by CY4PR02CA0027.outlook.office365.com
 (2603:10b6:903:117::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18 via Frontend
 Transport; Thu, 28 Nov 2019 06:51:10 +0000
Authentication-Results: spf=softfail (sender IP is 149.199.60.83)
 smtp.mailfrom=gmail.com; driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=fail action=none
 header.from=gmail.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 gmail.com discourages use of 149.199.60.83 as permitted sender)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT046.mail.protection.outlook.com (10.152.74.232) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 28 Nov 2019 06:51:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQ4-0007Y5-25; Wed, 27 Nov 2019 22:36:52 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDPy-0005D8-W5; Wed, 27 Nov 2019 22:36:46 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAS6ajKT007292; 
 Wed, 27 Nov 2019 22:36:46 -0800
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDPx-00059i-EX; Wed, 27 Nov 2019 22:36:45 -0800
From: shubhrajyoti.datta@gmail.com
To: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v3 05/10] clk: clock-wizard: Add support for fractional support
Date: Thu, 28 Nov 2019 12:06:12 +0530
Message-Id: <cd19ce14c15c96d9ce72bb22417dd2201691107f.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--3.194-7.0-31-1
X-imss-scan-details: No--3.194-7.0-31-1;No--3.194-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-Matching-Connectors: 132193974703580389;
 (f9e945fa-a09a-4caa-7158-08d2eb1d8c44); ()
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(39860400002)(376002)(189003)(199004)(426003)(336012)(47776003)(2906002)(498600001)(16586007)(305945005)(14444005)(73392003)(316002)(118296001)(4326008)(82202003)(5660300002)(70586007)(11346002)(446003)(70206006)(107886003)(8676002)(51416003)(81156014)(8936002)(76176011)(50226002)(81166006)(7696005)(9786002)(9686003)(48376002)(50466002)(76482006)(36756003)(86362001)(26005)(356004)(6666004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB3942; H:xsj-pvapsmtpgw01; FPR:;
 SPF:SoftFail; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2686d306-5dab-483e-33be-08d773cf5a19
X-MS-TrafficTypeDiagnostic: BYAPR02MB3942:
X-Microsoft-Antispam-PRVS: <BYAPR02MB3942147D98F8416CF951E15687470@BYAPR02MB3942.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0235CBE7D0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8lkgcucrI7CdDDFaW702l5jJ9HyND9/auJQa8hm6j4Kge2x+GMqbfvzjV4dBd+f25CJ44VfhrARGPNOkFnZdpmJd5dWzn7GGB9pzRCH2mornZVYSGxl+i0fMvZWszohJbBpa/iwAVWQm4P3om3jjlCI7hfHaz/Szr4zT2KB6EbUi4KmTBOVqcMgq/MqBz0rsUwOHEoEaXDCBi+LGVHii6R1XrkmLllr4GzzyUngDgxrLElgJpYfYWi9Lqr1E85IVHgsqYQWAl+7mY6T6hv+tsxwAIADp5sLj/63sCFL3hLky0I5dF/1InRsu+CHqz9otqoy8TaLxOIm4cydnofCqI6spiMTMlwA5ELbHsK5JTOgU2cegx+tdYIAPMOY8MrF8UwBkGsB0s9sAUMPM5JJDyTUjb9Gh5j2rM1UGtwlpSd1lEITQceGeuB1HYERf/pyJ
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2019 06:51:10.1117 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2686d306-5dab-483e-33be-08d773cf5a19
X-MS-Exchange-CrossTenant-Id: 5afe0b00-7697-4969-b663-5eab37d5f47e
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5afe0b00-7697-4969-b663-5eab37d5f47e; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB3942
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, robh+dt@kernel.org,
 soren.brinkmann@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Currently the set rate granularity is to integral divisors.
Add support for the fractional divisors.
Only the first output0 is fractional in the hardware.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 drivers/clk/clk-xlnx-clock-wizard.c | 192 +++++++++++++++++++++++++++++++++---
 1 file changed, 179 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index 870e7fb..bc0354a 100644
--- a/drivers/clk/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/clk-xlnx-clock-wizard.c
@@ -26,11 +26,15 @@
 
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
 #define WZRD_DR_NUM_RETRIES		10000
@@ -49,6 +53,7 @@
 enum clk_wzrd_int_clks {
 	wzrd_clk_mul,
 	wzrd_clk_mul_div,
+	wzrd_clk_mul_frac,
 	wzrd_clk_int_max
 };
 
@@ -124,7 +129,7 @@ static unsigned long clk_wzrd_recalc_rate(struct clk_hw *hw,
 	val &= div_mask(divider->width);
 
 	return divider_recalc_rate(hw, parent_rate, val, divider->table,
-			divider->flags, divider->width);
+			divider->flags);
 }
 
 static int clk_wzrd_dynamic_reconfig(struct clk_hw *hw, unsigned long rate,
@@ -210,6 +215,161 @@ static const struct clk_ops clk_wzrd_clk_divider_ops = {
 	.recalc_rate = clk_wzrd_recalc_rate,
 };
 
+static unsigned long clk_wzrd_recalc_ratef(struct clk_hw *hw,
+					   unsigned long parent_rate)
+{
+	unsigned int val;
+	u32 div, frac;
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	void __iomem *div_addr =
+			(void __iomem *)((u64)divider->base + divider->offset);
+
+	val = readl(div_addr);
+	div = val & div_mask(divider->width);
+	frac = (val >> WZRD_CLKOUT_FRAC_SHIFT) & WZRD_CLKOUT_FRAC_MASK;
+
+	return ((parent_rate * 1000) / ((div * 1000) + frac));
+}
+
+static int clk_wzrd_dynamic_reconfig_f(struct clk_hw *hw, unsigned long rate,
+				       unsigned long parent_rate)
+{
+	int err = 0;
+	u16 retries;
+	u32 value, pre;
+	unsigned long flags = 0;
+	unsigned long rate_div, f, clockout0_div;
+	struct clk_wzrd_divider *divider = to_clk_wzrd_divider(hw);
+	void __iomem *div_addr =
+			(void __iomem *)((u64)divider->base + divider->offset);
+
+	if (divider->lock)
+		spin_lock_irqsave(divider->lock, flags);
+	else
+		__acquire(divider->lock);
+
+	rate_div = ((parent_rate * 1000) / rate);
+	clockout0_div = rate_div / 1000;
+
+	pre = DIV_ROUND_CLOSEST((parent_rate * 1000), rate);
+	f = (u32)(pre - (clockout0_div * 1000));
+	f = f & WZRD_CLKOUT_FRAC_MASK;
+
+	value = ((f << WZRD_CLKOUT_DIVIDE_WIDTH) | (clockout0_div &
+			WZRD_CLKOUT_DIVIDE_MASK));
+
+	/* Set divisor and clear phase offset */
+	writel(value, div_addr);
+	writel(0x0, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);
+
+	/* Check status register */
+	retries = WZRD_DR_NUM_RETRIES;
+	while (retries--) {
+		if (readl(divider->base + WZRD_DR_STATUS_REG_OFFSET) &
+							WZRD_DR_LOCK_BIT_MASK)
+			break;
+	}
+
+	if (!retries) {
+		err = -ETIMEDOUT;
+		goto err_reconfig;
+	}
+
+	/* Initiate reconfiguration */
+	writel(WZRD_DR_BEGIN_DYNA_RECONF,
+	       divider->base + WZRD_DR_INIT_REG_OFFSET);
+
+	/* Check status register */
+	retries = WZRD_DR_NUM_RETRIES;
+	while (retries--) {
+		if (readl(divider->base + WZRD_DR_STATUS_REG_OFFSET) &
+							WZRD_DR_LOCK_BIT_MASK)
+			break;
+	}
+
+	if (!retries)
+		err = -ETIMEDOUT;
+
+err_reconfig:
+	if (divider->lock)
+		spin_unlock_irqrestore(divider->lock, flags);
+	else
+		__release(divider->lock);
+
+	return err;
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
+	if (clk_divider_flags & CLK_DIVIDER_HIWORD_MASK) {
+		if (width + shift > 16) {
+			pr_warn("divider value exceeds LOWORD field\n");
+			return ERR_PTR(-EINVAL);
+		}
+	}
+
+	/* allocate the divider */
+	div = kzalloc(sizeof(*div), GFP_KERNEL);
+	if (!div)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+
+	if (clk_divider_flags & CLK_DIVIDER_READ_ONLY)
+		init.ops = &clk_divider_ro_ops;
+	else
+		init.ops = &clk_wzrd_clk_divider_ops_f;
+
+	init.flags = flags | CLK_IS_BASIC;
+	init.parent_names = (parent_name ? &parent_name : NULL);
+	init.num_parents = (parent_name ? 1 : 0);
+
+	/* struct clk_divider assignments */
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
+	ret = clk_hw_register(dev, hw);
+	if (ret) {
+		kfree(div);
+		return ERR_PTR(ret);
+	}
+
+	return hw->clk;
+}
+
 static struct clk *clk_wzrd_register_divider(struct device *dev,
 					     const char *name,
 					     const char *parent_name,
@@ -328,7 +488,7 @@ static SIMPLE_DEV_PM_OPS(clk_wzrd_dev_pm_ops, clk_wzrd_suspend,
 static int clk_wzrd_probe(struct platform_device *pdev)
 {
 	int i, ret;
-	u32 reg;
+	u32 reg, reg_f, mult;
 	unsigned long rate;
 	const char *clk_name;
 	struct clk_wzrd *clk_wzrd;
@@ -380,17 +540,13 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		goto err_disable_clk;
 	}
 
-	/* we don't support fractional div/mul yet */
-	reg = readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
-		    WZRD_CLKFBOUT_FRAC_EN;
-	reg |= readl(clk_wzrd->base + WZRD_CLK_CFG_REG(2)) &
-		     WZRD_CLKOUT0_FRAC_EN;
-	if (reg)
-		dev_warn(&pdev->dev, "fractional div/mul not supported\n");
-
 	/* register multiplier */
 	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
 		     WZRD_CLKFBOUT_MULT_MASK) >> WZRD_CLKFBOUT_MULT_SHIFT;
+	reg_f = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
+		     WZRD_CLKFBOUT_FRAC_MASK) >> WZRD_CLKFBOUT_FRAC_SHIFT;
+
+	mult = ((reg * 1000) + reg_f);
 	clk_name = kasprintf(GFP_KERNEL, "%s_mul", dev_name(&pdev->dev));
 	if (!clk_name) {
 		ret = -ENOMEM;
@@ -399,7 +555,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
 			(&pdev->dev, clk_name,
 			 __clk_get_name(clk_wzrd->clk_in1),
-			 0, reg, 1);
+			0, mult, 1000);
 	kfree(clk_name);
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
 		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
@@ -437,8 +593,18 @@ static int clk_wzrd_probe(struct platform_device *pdev)
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
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
