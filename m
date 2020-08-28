Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF172255BBC
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Aug 2020 15:56:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5520C22E1C;
	Fri, 28 Aug 2020 13:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k3dllzI8ZXNm; Fri, 28 Aug 2020 13:56:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74B97203EF;
	Fri, 28 Aug 2020 13:56:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFB8F1BF2BF
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 13:56:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CB96E866B3
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 13:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aEdErrnNr6ys for <devel@linuxdriverproject.org>;
 Fri, 28 Aug 2020 13:56:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2086.outbound.protection.outlook.com [40.107.243.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6F990862B2
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 13:56:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nfeh3rQgVR3se1cqgjulvvtYxgJAEtsmTxQcvO7B6D7eLYqcMm21zeQ8C4KF9AQUUJrPOdNvntygppi7OG0YcCKclA+eLI7zzITOhWmjWhu5PmEFt9+ButyCQCIvYkjpHcwbNIRFKKEertkKUTxqa9h7wO121NGEkeUO0gJl7x3/dzinl7G7j/gNoyLqPZ/WpMfE9WD3ltLQYGDu9sZ0UCm/2zxZ06gy8GDfruEAUyhzVv7PS76J/qx/H3Y+YB+i/XHa8+hP6aBceUFv3e/RK/O3qK8qTEBUkrY8rCmhU7aiMHgjZB89L2w/IsLDj4aTRJN5oPT44D2i3z8676wTqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Y6+76i69YSPQSJC0XuQtiIHhrHmnsqREJBig2DhdrA=;
 b=ErsumPtk/0cEOBQbQ4OUrprWo1P9uzE5x9bqcxh2nHBxR9KZ7ajZf5/4YoK2eJD5/27jW4pCs0hxlHqmq/uGRcsG5iTxV7FOjvT0/OAgOG4Ug14iZmKRvOSyD0pBLYULlT6TFO9LfGj057ulyAdRMGdBxtlAnE6uA3foryuDFV8w9C13pi8tS9abfluEE+KA/1/gs7iEtS5NYjX7WQjQusMsCxbbpMx7GTk84QoGQLcTXfjFg8eOx9arOdXKgTf6vV8fd+orHcBhaMhe3gIJswF8URlHw5zn4awHEVARuZcsufste1ikkWDF9xMC5awVsFh83uIlBc0ogUcCPWr9EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=baylibre.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6Y6+76i69YSPQSJC0XuQtiIHhrHmnsqREJBig2DhdrA=;
 b=XP3ypGunGlVe2PtKeD263y8O5vhRAWKYgvJh1hA8Z8bhK+A8OEIe+XjMpGkBDbBIREeTfVjp/ry6ZY4Bu3Ogi9vMbQqWtvF+AkjLqCs4sh4ZnjlBTgykg+e1IdIwhmeMsaYnUoXB7anDEvJE6w5o/HXEwXjn0tZDiC1Imre0CL0=
Received: from SN6PR01CA0013.prod.exchangelabs.com (2603:10b6:805:b6::26) by
 BN6PR02MB2465.namprd02.prod.outlook.com (2603:10b6:404:57::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.23; Fri, 28 Aug 2020 13:40:33 +0000
Received: from SN1NAM02FT040.eop-nam02.prod.protection.outlook.com
 (2603:10b6:805:b6:cafe::a3) by SN6PR01CA0013.outlook.office365.com
 (2603:10b6:805:b6::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19 via Frontend
 Transport; Fri, 28 Aug 2020 13:40:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT040.mail.protection.outlook.com (10.152.72.195) with Microsoft SMTP
 Server id 15.20.3326.19 via Frontend Transport; Fri, 28 Aug 2020 13:40:33
 +0000
Received: from [149.199.38.66] (port=59882 helo=smtp.xilinx.com)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kBebn-0004sr-AI; Fri, 28 Aug 2020 06:39:59 -0700
Received: from [127.0.0.1] (helo=localhost)
 by smtp.xilinx.com with smtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kBecL-0006Ll-Ba; Fri, 28 Aug 2020 06:40:33 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 07SDePiA028616; 
 Fri, 28 Aug 2020 06:40:25 -0700
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kBecC-0005it-OL; Fri, 28 Aug 2020 06:40:24 -0700
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH v6 5/8] clk: clock-wizard: Add support for fractional support
Date: Fri, 28 Aug 2020 19:09:53 +0530
Message-Id: <1598621996-31040-6-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: de716512-5375-4b91-2a5e-08d84b57f02f
X-MS-TrafficTypeDiagnostic: BN6PR02MB2465:
X-Microsoft-Antispam-PRVS: <BN6PR02MB24650776080ABFD979D40CC9AA520@BN6PR02MB2465.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:989;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /p6nF9Etq9vVagTTTBiZw5g4CNXXLAo0XSJsEYhI+P7bkYus2ZovNn3Ez2SPG9/AWF2sBtwtH6gllysUA0aFSzIxOvhJ+C5pJMpwWkJ8rNGv8Xxcn7CpZFLQLqrG1T5L7ISYS3qMwIAlYEYZHAI9tiQldkWsImQHpfp4Xa9hdGRHhCK7mA/5lKpuZzXf+I7F38sWlfX/JwJPYlLdqcb1s1zGQNePm0yf+1xqSG9eW3zE4mK1wWncpNXvUjlDAQj6lqdGKoLDIHWnMeO/N2E1Uar9oMaPCDFnIDHrLY0AJ3bRPvQ9vdAxAnLCfhclY9hN/5u/i73E5TreQSnB4NvL+MQaenZR9pNYPLqzQWaSQbSYKQsPPBofdAbs5sz7cD+5u5GMY7Q6+tsw/hufWZ65Cg==
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFS:(396003)(136003)(346002)(39860400002)(376002)(46966005)(26005)(8936002)(4326008)(107886003)(8676002)(186003)(44832011)(36756003)(336012)(6666004)(5660300002)(2616005)(82310400002)(426003)(70586007)(70206006)(83380400001)(356005)(82740400003)(81166007)(47076004)(9786002)(6916009)(316002)(478600001)(7696005)(2906002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2020 13:40:33.6676 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: de716512-5375-4b91-2a5e-08d84b57f02f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-AuthSource: SN1NAM02FT040.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2465
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
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently the set rate granularity is to integral divisors.
Add support for the fractional divisors.
Only the first output0 is fractional in the hardware.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
v6:
remove unnecessary typecast
remove unnecessary locks
use polled timeout

 drivers/clk/clk-xlnx-clock-wizard.c | 166 +++++++++++++++++++++++++++++++++---
 1 file changed, 153 insertions(+), 13 deletions(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index 8dfcec8..1af59a4 100644
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
 
@@ -185,6 +191,134 @@ static const struct clk_ops clk_wzrd_clk_divider_ops = {
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
+	return ((parent_rate * 1000) / ((div * 1000) + frac));
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
+
+	value = ((f << WZRD_CLKOUT_DIVIDE_WIDTH) | (clockout0_div &
+			WZRD_CLKOUT_DIVIDE_MASK));
+
+	/* Set divisor and clear phase offset */
+	writel(value, div_addr);
+	writel(0x0, div_addr + WZRD_DR_DIV_TO_PHASE_OFFSET);
+
+	/* Check status register */
+	err= readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
+				value & WZRD_DR_LOCK_BIT_MASK,
+				WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
+	if (err)
+		return err;
+
+	/* Initiate reconfiguration */
+	writel(WZRD_DR_BEGIN_DYNA_RECONF,
+	       divider->base + WZRD_DR_INIT_REG_OFFSET);
+
+	/* Check status register */
+	err= readl_poll_timeout(divider->base + WZRD_DR_STATUS_REG_OFFSET, value,
+				value & WZRD_DR_LOCK_BIT_MASK,
+				WZRD_USEC_POLL, WZRD_TIMEOUT_POLL);
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
+	init.flags = flags;
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
@@ -303,7 +437,7 @@ static SIMPLE_DEV_PM_OPS(clk_wzrd_dev_pm_ops, clk_wzrd_suspend,
 static int clk_wzrd_probe(struct platform_device *pdev)
 {
 	int i, ret;
-	u32 reg;
+	u32 reg, reg_f, mult;
 	unsigned long rate;
 	const char *clk_name;
 	struct clk_wzrd *clk_wzrd;
@@ -355,17 +489,13 @@ static int clk_wzrd_probe(struct platform_device *pdev)
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
@@ -374,7 +504,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
 			(&pdev->dev, clk_name,
 			 __clk_get_name(clk_wzrd->clk_in1),
-			 0, reg, 1);
+			0, mult, 1000);
 	kfree(clk_name);
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul])) {
 		dev_err(&pdev->dev, "unable to register fixed-factor clock\n");
@@ -413,8 +543,18 @@ static int clk_wzrd_probe(struct platform_device *pdev)
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
