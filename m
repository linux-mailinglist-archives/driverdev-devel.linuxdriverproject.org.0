Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 384173240EA
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 16:45:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDDD64EC75;
	Wed, 24 Feb 2021 15:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 98IFD4LTjUAJ; Wed, 24 Feb 2021 15:45:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 580A64EC62;
	Wed, 24 Feb 2021 15:45:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E5AE1BF2B6
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 15:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9AD5B6F641
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 15:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=xilinx.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id idJafM7D7ISN for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 15:45:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2042.outbound.protection.outlook.com [40.107.93.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B0F06F668
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 15:45:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U5/FfcOAyraJBqLAy9rDoEIppZfLIPRI+mCgeB98+iTB1QjdoPU4UJLYvhzlC5CjMKtdDpZYyPWLytv+cP/FE5XtbmZ6feE+mHbbqjn5QvRUCdpphCU9uyfO091gr0Rrz6WxBIy+Zcp/mGgfRt/zWNvnyoU5onX32+ztETvLNTnhsUVK3lopHXlwswClfjT82neH/RVYeM4UszRTJk+Fv9Atibwv3kuGTOhAX+X+dagUBxq+q3y3edtp1OvyKdZ9meD3ETkGBCa/evEQo/gE3bqk1SC2kxoiEKUlf+UElyUH1mBc+kSGnMywP9ZFGmhTu+Cyf3AxXYztYrmqIVBU7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pQvaENyuknexIRmK4Ondt1wnTaiHhqrlEZO46wJHld4=;
 b=NvBO2YGmvYk9cCre7UKl0llvjk6sMfGM/cdw7PqeD4AswBYkymE4o/c4+eVrd0Vs+KzSkrWXQiCqSLh8WB7Q//jEKWsNvRv5npGf499/WyTsa3hqloSpP/1W7+oTlOz7eUXqwh707ywGzOfVtlkpJVQbPN/wf/fz6jZviWldQvGuRBvz3/AD/YqrLRrsMhQBcvrySKHv7xv9Ytr//I0zaUa8MUN+EtmBWrEwwyoU6f+DNmO5lradXQf1IguCA5Do6vVlyqjeKT967kgxwiFK/3nlxU+EuDB6qimpehcQK6kNeVsRQxSLwAO/xprnTsBHJAQSV9RAXxsC+9zMGAra8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pQvaENyuknexIRmK4Ondt1wnTaiHhqrlEZO46wJHld4=;
 b=ppud/w/E11RCCV1gPxlgjPlrRdpAj6qjpgv1JdsNFRSm7hmjOdylTr5WpXBnoCmKOdh2o1rNw55K5ev9kTKo95+XfpjL1J/oCtQlFSIpJJjVMK07tJsC1461B2P/lFk4rk1PPw+OhVdjZ+ejs8zEiNPRKV09jRyg2k+HBiK8hAQ=
Received: from CY4PR21CA0009.namprd21.prod.outlook.com (2603:10b6:903:dd::19)
 by BY5PR02MB6308.namprd02.prod.outlook.com (2603:10b6:a03:1b1::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.25; Wed, 24 Feb
 2021 13:11:49 +0000
Received: from CY1NAM02FT039.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:dd:cafe::d0) by CY4PR21CA0009.outlook.office365.com
 (2603:10b6:903:dd::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.3 via Frontend
 Transport; Wed, 24 Feb 2021 13:11:48 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=pass action=none header.from=xilinx.com; 
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 CY1NAM02FT039.mail.protection.outlook.com (10.152.75.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3868.27 via Frontend Transport; Wed, 24 Feb 2021 13:11:48 +0000
Received: from xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 24 Feb 2021 05:11:06 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 24 Feb 2021 05:11:06 -0800
Envelope-to: git@xilinx.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 shubhrajyoti.datta@gmail.com, miquel.raynal@bootlin.com,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=34848 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1lEtwX-0001ry-5h; Wed, 24 Feb 2021 05:11:05 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <devicetree@vger.kernel.org>
Subject: [PATCH v10 5/9] staging: clocking-wizard: Add support for dynamic
 reconfiguration
Date: Wed, 24 Feb 2021 18:40:37 +0530
Message-ID: <1614172241-17326-6-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7bcf89a7-d276-4d5a-2555-08d8d8c5be73
X-MS-TrafficTypeDiagnostic: BY5PR02MB6308:
X-Microsoft-Antispam-PRVS: <BY5PR02MB63083C0A249A696622FB1C68AA9F9@BY5PR02MB6308.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1060;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PmPEfSAcmA/V3v51HxlVc9nzoKHLRcr7SFUHOWw5YEdNgZLQSLHmQHSyS56PGCUvKabTc7Z82sIguV7RMp0N2T2hG6icJvrVs69KnStGPgRHGdJiWrux9CZSa1LlLnRqYDTbaRv7XeHP/skOMBa928+viz6rb/b99/6dov6WgHB8b+hYWm8QW+4QppnACFK2TDFkRrsUeDG68Climu5Th4nkVc2ncrPYJlT+4szjrmsbM5bmJ3auwbuzYbXlHM61xZj8r58vp1GqGqWFtFat7LDNzqVCBSUtb6ec1im9wi0vkDxoG8nw4CxmKi8Tl9qwALbDMUgVsNuried6EVYK1hvuKmzXil3sAnAeKb/GzyCFBfOTQxMbU9BP9X9Ca2xYQRZXcSbjVMGUQ3RCQ184asOq+DyxQ0b54lMWEDaFGkhbGZzzWPQKf7CHfYeWwnEofG+ThWIXcENAmsX12Cq0Ap210Ci+NkcNfuC1D88G5xkIhH+rIaN8eTwcCD+hNuGVMbOH94E6SXdsFZQa7ywRYTH6p7o3noMA0ZglrBbe5ZOvcCvSNbzIIReUV7YfJ+q2y59n4VRprzUE9Myxu1sdsRvFpXOssfvT2bw/cWfzVu3n6v4ap8QdeWrzvKYxqVcjw8gB5SUse42ssNiePsi6RLDRmkvvEYsDZhqeUgahRblVhYqIDDbs9nf+HojzjoTL
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch02.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(376002)(346002)(136003)(396003)(39860400002)(46966006)(36840700001)(336012)(5660300002)(4326008)(6666004)(2616005)(83380400001)(26005)(2906002)(7636003)(7696005)(36860700001)(70586007)(82740400003)(426003)(36756003)(9786002)(8676002)(478600001)(82310400003)(186003)(316002)(107886003)(70206006)(36906005)(47076005)(6916009)(8936002)(44832011)(54906003)(356005)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2021 13:11:48.7629 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bcf89a7-d276-4d5a-2555-08d8d8c5be73
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: CY1NAM02FT039.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6308
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
Cc: devel@driverdev.osuosl.org, shubhrajyoti.datta@gmail.com, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, robh+dt@kernel.org,
 git@xilinx.com, miquel.raynal@bootlin.com, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The patch adds support for dynamic reconfiguration of clock output rate.
Output clocks are registered as dividers and set rate callback function
is used for dynamic reconfiguration.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Co-developed-by: Chirag Parekh <chirag.parekh@xilinx.com>
---
v6:
Remove the typecast.
use min for capping frequency.
use polled timeout

v7:
Use devm functions
Add the spinlock

v10:
Add a codeveloped by tag.

 .../clocking-wizard/clk-xlnx-clock-wizard.c        | 178 ++++++++++++++++++++-
 1 file changed, 173 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index e08fc2f..b1bfdb86 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -15,6 +15,7 @@
 #include <linux/of.h>
 #include <linux/module.h>
 #include <linux/err.h>
+#include <linux/iopoll.h>
 
 #define WZRD_NUM_OUTPUTS	7
 #define WZRD_ACLK_MAX_FREQ	250000000UL
@@ -29,8 +30,24 @@
 #define WZRD_DIVCLK_DIVIDE_SHIFT	0
 #define WZRD_DIVCLK_DIVIDE_MASK		(0xff << WZRD_DIVCLK_DIVIDE_SHIFT)
 #define WZRD_CLKOUT_DIVIDE_SHIFT	0
+#define WZRD_CLKOUT_DIVIDE_WIDTH	8
 #define WZRD_CLKOUT_DIVIDE_MASK		(0xff << WZRD_DIVCLK_DIVIDE_SHIFT)
 
+#define WZRD_DR_MAX_INT_DIV_VALUE	255
+#define WZRD_DR_STATUS_REG_OFFSET	0x04
+#define WZRD_DR_LOCK_BIT_MASK		0x00000001
+#define WZRD_DR_INIT_REG_OFFSET		0x25C
+#define WZRD_DR_DIV_TO_PHASE_OFFSET	4
+#define WZRD_DR_BEGIN_DYNA_RECONF	0x03
+
+#define WZRD_USEC_POLL		10
+#define WZRD_TIMEOUT_POLL		1000
+/* Get the mask from width */
+#define div_mask(width)			((1 << (width)) - 1)
+
+/* Extract divider instance from clock hardware instance */
+#define to_clk_wzrd_divider(_hw) container_of(_hw, struct clk_wzrd_divider, hw)
+
 enum clk_wzrd_int_clks {
 	wzrd_clk_mul,
 	wzrd_clk_mul_div,
@@ -62,6 +79,29 @@ struct clk_wzrd {
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
@@ -71,6 +111,131 @@ static const unsigned long clk_wzrd_max_freq[] = {
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
+	int err;
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
+	return *prate / div;
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
@@ -251,11 +416,14 @@ static int clk_wzrd_probe(struct platform_device *pdev)
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
