Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC5C6255C08
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Aug 2020 16:12:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A5D4229D4;
	Fri, 28 Aug 2020 14:12:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hbe9avfRVWOE; Fri, 28 Aug 2020 14:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E264203EF;
	Fri, 28 Aug 2020 14:12:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C643E1BF3C0
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 14:11:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C20F488677
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 14:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SceQynDO76ui for <devel@linuxdriverproject.org>;
 Fri, 28 Aug 2020 14:11:54 +0000 (UTC)
X-Greylist: delayed 00:31:08 by SQLgrey-1.7.6
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
 (mail-eopbgr760042.outbound.protection.outlook.com [40.107.76.42])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C9EDA885CB
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 14:11:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J2Sngn4aZ8userDdx9wHdHfCWVGkH/N0CAWsJzZ/oxe0wvQrBAZevWwt171Vn02ENmD81Ex+lF9DGCp/5lRwX3hBdRo0finA8oTROT5UF6zXI4mDBj6DdXK1iew4FBFKSQXTYsRzQJYGAXmG5y6edq8KnXtrZQL/ytxTBBzkGuf7ZJtnZjT6KiMQr6QLRlbtk1VCZFbEx4hSJZUHpTzQq1QX5aAYCq+jfU7AnwrJ3g4nTGak0awIBWcHUbwB8qzd21hqDGkB/JNHV5y6szzcfQCvc1Z3YpTYzIyTNRHQUFhwNKmDRyHtsdLiOTIrzpA2O2uI/mlijY0zj5kBEvd4bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Z9K7W0xVt6tZoVxuf4lFIucFP1dZMqMhbLgQzy6/IE=;
 b=bpSdwt9YL2WncaRlUxaU3g2FbBELnfy+7kADHilCZ3TFi0ORVs/ZJXM/b5sur8PHFwWn//WM28aajjxVQdLEA+acITRWzWqkaVpRiHmO1i4xSY07upPzW2drSshHLh/39HuG3xWkhFoXJ8BGWG0dVGRByvZHzo2ZBnFNPZfJUdztJGi1b7C62x5SB9Q1ybbXzDuFp741I4pYP9gOEOzwLhIq5Oq/VTd7Kmgg6aNaRAuwyf0I02ToHjZUoxgNTRYnR2yYfSJUn5ah4wnaNS2nNvKJtYzn2vzdV0DaevaltvGTOvjcu9h2sbLzsrKyTc8GxTDNrWBaLJIk9VNEnGQC+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=baylibre.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4Z9K7W0xVt6tZoVxuf4lFIucFP1dZMqMhbLgQzy6/IE=;
 b=Oj6a3RQSmWVpiM5GZ3R1emqTVG70nqqvOYxQBX+PGaoJ3wK0hwGmCV26HSJfw6CQUcUm+n+1A4dvkEwyaOfbIOrgKs/5BP/dseq71E0W+uLjiVGWpF+MxXWe8/cjOBqik5iyDGwybv6ZyxliZKzUVMZo1laLgK3BA3/AeK3M0Rs=
Received: from SA0PR11CA0011.namprd11.prod.outlook.com (2603:10b6:806:d3::16)
 by DM5PR02MB2234.namprd02.prod.outlook.com (2603:10b6:3:58::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3326.21; Fri, 28 Aug 2020 13:40:33 +0000
Received: from SN1NAM02FT012.eop-nam02.prod.protection.outlook.com
 (2603:10b6:806:d3:cafe::15) by SA0PR11CA0011.outlook.office365.com
 (2603:10b6:806:d3::16) with Microsoft SMTP Server (version=TLS1_2,
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
 SN1NAM02FT012.mail.protection.outlook.com (10.152.72.95) with Microsoft SMTP
 Server id 15.20.3326.19 via Frontend Transport; Fri, 28 Aug 2020 13:40:33
 +0000
Received: from [149.199.38.66] (port=59865 helo=smtp.xilinx.com)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kBebn-0004so-5f; Fri, 28 Aug 2020 06:39:59 -0700
Received: from [127.0.0.1] (helo=localhost)
 by smtp.xilinx.com with smtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kBecL-0006Ll-6m; Fri, 28 Aug 2020 06:40:33 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 07SDeShj028644; 
 Fri, 28 Aug 2020 06:40:28 -0700
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kBecF-0005it-VV; Fri, 28 Aug 2020 06:40:28 -0700
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH v6 6/8] clk: clock-wizard: Remove the hardcoding of the clock
 outputs
Date: Fri, 28 Aug 2020 19:09:54 +0530
Message-Id: <1598621996-31040-7-git-send-email-shubhrajyoti.datta@xilinx.com>
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
X-MS-Office365-Filtering-Correlation-Id: 86420ce0-73aa-4e2b-a82e-08d84b57f019
X-MS-TrafficTypeDiagnostic: DM5PR02MB2234:
X-Microsoft-Antispam-PRVS: <DM5PR02MB22341077A2F09CB34346B513AA520@DM5PR02MB2234.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HJTpAInATx4XWcskg1Cfegx/nvuR2MyUCH5pj0wnxLuXkp8yXvEnRVkd3UWiojHvjo9+zMH6uR9PmMHkmIAHe6XFsqfpccAcDVEocmFGtK6FOmxavh0ulJ1zYaKW0PhcQTvpy6BO+vGhyZdFShgfi5+CfPxsUQzKoBs7tKFBgNF9TaQdoET5C5r9Q3JI5xBSY1T6DIYjBv2iHLV6+pIa4FwtoNCZjtswImskuTOQkSffvF/hdPFO0pejuokehGTSQORwucF0Z5I7J3hwPaEFNtP0MDAOtBpDU0u35Lx0z+bISeUG7TpxYHSKZB5+jHMDz7w9rMoYGVAQwe/Psg4c+DTYGEaez0zYExBWCMIaySqb2UjakbybnNd4AVMqxRMKA4iC+8kQ9V5Zir/at/Gr6Q==
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFS:(346002)(396003)(376002)(39860400002)(136003)(46966005)(336012)(4326008)(107886003)(6916009)(6666004)(7696005)(82740400003)(47076004)(2906002)(81166007)(8936002)(44832011)(316002)(356005)(82310400002)(2616005)(478600001)(70206006)(83380400001)(5660300002)(426003)(186003)(36756003)(26005)(70586007)(9786002)(8676002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2020 13:40:33.5276 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 86420ce0-73aa-4e2b-a82e-08d84b57f019
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-AuthSource: SN1NAM02FT012.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2234
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

The number of output clocks are configurable in the hardware.
Currently the driver registers the maximum number of outputs.
Fix the same by registering only the outputs that are there.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
v4:
Assign output in this patch

 drivers/clk/clk-xlnx-clock-wizard.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index 1af59a4..ded4cdd 100644
--- a/drivers/clk/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/clk-xlnx-clock-wizard.c
@@ -442,6 +442,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	const char *clk_name;
 	struct clk_wzrd *clk_wzrd;
 	struct resource *mem;
+	int outputs;
 	struct device_node *np = pdev->dev.of_node;
 
 	clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
@@ -512,6 +513,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		goto err_disable_clk;
 	}
 
+	outputs = of_property_count_strings(np, "clock-output-names");
 	/* register div */
 	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
 			WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
@@ -533,7 +535,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	}
 
 	/* register div per output */
-	for (i = WZRD_NUM_OUTPUTS - 1; i >= 0 ; i--) {
+	for (i = outputs - 1; i >= 0 ; i--) {
 		const char *clkout_name;
 
 		if (of_property_read_string_index(np, "clock-output-names", i,
@@ -564,7 +566,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		if (IS_ERR(clk_wzrd->clkout[i])) {
 			int j;
 
-			for (j = i + 1; j < WZRD_NUM_OUTPUTS; j++)
+			for (j = i + 1; j < outputs; j++)
 				clk_unregister(clk_wzrd->clkout[j]);
 			dev_err(&pdev->dev,
 				"unable to register divider clock\n");
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
