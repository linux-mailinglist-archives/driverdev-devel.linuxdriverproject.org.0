Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1644810C439
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Nov 2019 08:07:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B7183227AD;
	Thu, 28 Nov 2019 07:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8ihzsOsHEZp; Thu, 28 Nov 2019 07:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 90CBD20406;
	Thu, 28 Nov 2019 07:07:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 34DCF1BF860
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:07:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 31C04841D5
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:07:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GJhq1oKsquH1 for <devel@linuxdriverproject.org>;
 Thu, 28 Nov 2019 07:07:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680063.outbound.protection.outlook.com [40.107.68.63])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1508B84115
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 07:07:48 +0000 (UTC)
Received: from CY4PR02CA0041.namprd02.prod.outlook.com (2603:10b6:903:117::27)
 by MN2PR02MB6783.namprd02.prod.outlook.com (2603:10b6:208:198::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.19; Thu, 28 Nov
 2019 06:51:55 +0000
Received: from BL2NAM02FT003.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::203) by CY4PR02CA0041.outlook.office365.com
 (2603:10b6:903:117::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.17 via Frontend
 Transport; Thu, 28 Nov 2019 06:51:55 +0000
Authentication-Results: spf=softfail (sender IP is 149.199.60.83)
 smtp.mailfrom=gmail.com; driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=fail action=none
 header.from=gmail.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 gmail.com discourages use of 149.199.60.83 as permitted sender)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT003.mail.protection.outlook.com (10.152.76.204) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 28 Nov 2019 06:51:54 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQE-0007Ye-97; Wed, 27 Nov 2019 22:37:02 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQ9-0005Ei-5W; Wed, 27 Nov 2019 22:36:57 -0800
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAS6asYH007316; 
 Wed, 27 Nov 2019 22:36:54 -0800
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQ5-00059i-VB; Wed, 27 Nov 2019 22:36:54 -0800
From: shubhrajyoti.datta@gmail.com
To: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v3 07/10] clk: clock-wizard: Update the fixed factor divisors
Date: Thu, 28 Nov 2019 12:06:14 +0530
Message-Id: <55183b0a7c466528361802fabef65a57f969d07b.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--1.597-7.0-31-1
X-imss-scan-details: No--1.597-7.0-31-1;No--1.597-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-Matching-Connectors: 132193975152488423;
 (f9e945fa-a09a-4caa-7158-08d2eb1d8c44); ()
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(346002)(136003)(376002)(189003)(199004)(70206006)(2906002)(6666004)(356004)(70586007)(426003)(118296001)(9686003)(316002)(15650500001)(82202003)(50466002)(498600001)(51416003)(48376002)(47776003)(7696005)(16586007)(14444005)(446003)(8936002)(305945005)(76482006)(36756003)(11346002)(73392003)(336012)(50226002)(26005)(76176011)(4326008)(81166006)(9786002)(81156014)(5660300002)(107886003)(86362001)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6783; H:xsj-pvapsmtpgw01; FPR:;
 SPF:SoftFail; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9e4b6db9-4d92-4f7f-1ed7-08d773cf74d1
X-MS-TrafficTypeDiagnostic: MN2PR02MB6783:
X-Microsoft-Antispam-PRVS: <MN2PR02MB6783D2B9AF019E9C2856DE0487470@MN2PR02MB6783.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:644;
X-Forefront-PRVS: 0235CBE7D0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w3TJplFtbm79rINbFMgQDZddSXpKh0vBsZE7Lv89P0xALk9zJU5pM4sToZZTWEI/a55FRF65dtycqcAq3Krg1pRuVtKPsVWmTlwoDD26raspFhIR4MVx+NRuw9/6iAvDoBuZHI0yKw2fOMeif88vqdvidVW5aidtAyVb4mHDkH+0zU6CBPf6E90RHxEMHj6Jc9jzNMhLDfZv5p5s/xHkKiXhFm+DiAqBHGAzwILfEyes4IU4v9EwPVeJEUXJKHkyKcpPQZwxShNG1S9efMD0bwPTPQVaeNhMgUJpIvw+aFLwWTh9mlKjwJd2k1ObO5bbHBPA6TuNyPcT2QhOG9+hJOnjdhwNgzV5EjuYSgr8QnOmCMwVVQih2Qo2D+4DPUn0fdp+5lvV6ca816lDKNXgHCGP4emsped4dw/rBSdz2w2iskbeAM+f8ZKGqtjTjy9B
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2019 06:51:54.9099 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e4b6db9-4d92-4f7f-1ed7-08d773cf74d1
X-MS-Exchange-CrossTenant-Id: 5afe0b00-7697-4969-b663-5eab37d5f47e
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5afe0b00-7697-4969-b663-5eab37d5f47e; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6783
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

Update the fixed factor clock registration to register the divisors.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 drivers/clk/clk-xlnx-clock-wizard.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index 4c6155b..75ea745 100644
--- a/drivers/clk/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/clk-xlnx-clock-wizard.c
@@ -491,9 +491,11 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	u32 reg, reg_f, mult;
 	unsigned long rate;
 	const char *clk_name;
+	void __iomem *ctrl_reg;
 	struct clk_wzrd *clk_wzrd;
 	struct resource *mem;
 	int outputs;
+	unsigned long flags = 0;
 	struct device_node *np = pdev->dev.of_node;
 
 	clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
@@ -564,19 +566,22 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		goto err_disable_clk;
 	}
 
-	/* register div */
-	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
-			WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
+	outputs = of_property_count_strings(np, "clock-output-names");
+	if (outputs == 1)
+		flags = CLK_SET_RATE_PARENT;
 	clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
 	if (!clk_name) {
 		ret = -ENOMEM;
 		goto err_rm_int_clk;
 	}
 
-	clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_fixed_factor
+	ctrl_reg = clk_wzrd->base + WZRD_CLK_CFG_REG(0);
+	/* register div */
+	clk_wzrd->clks_internal[wzrd_clk_mul_div] = clk_register_divider
 			(&pdev->dev, clk_name,
 			 __clk_get_name(clk_wzrd->clks_internal[wzrd_clk_mul]),
-			 0, 1, reg);
+			flags, ctrl_reg, 0, 8, CLK_DIVIDER_ONE_BASED |
+			CLK_DIVIDER_ALLOW_ZERO, &clkwzrd_lock);
 	if (IS_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div])) {
 		dev_err(&pdev->dev, "unable to register divider clock\n");
 		ret = PTR_ERR(clk_wzrd->clks_internal[wzrd_clk_mul_div]);
@@ -597,7 +602,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		if (!i)
 			clk_wzrd->clkout[i] = clk_wzrd_register_divf
 				(&pdev->dev, clkout_name,
-				clk_name, 0,
+				clk_name, flags,
 				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
 				WZRD_CLKOUT_DIVIDE_SHIFT,
 				WZRD_CLKOUT_DIVIDE_WIDTH,
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
