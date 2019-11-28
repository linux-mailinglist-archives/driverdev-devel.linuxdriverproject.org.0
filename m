Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B8810C44D
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Nov 2019 08:28:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 20E76882FD;
	Thu, 28 Nov 2019 07:27:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BmdqUhsrSdyt; Thu, 28 Nov 2019 07:27:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F0BA88216;
	Thu, 28 Nov 2019 07:27:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0E7D71BF860
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:27:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0A7A488216
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:27:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aGdTIjjOwOoi for <devel@linuxdriverproject.org>;
 Thu, 28 Nov 2019 07:27:52 +0000 (UTC)
X-Greylist: delayed 00:20:58 by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770057.outbound.protection.outlook.com [40.107.77.57])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 21C5D882B5
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 07:27:52 +0000 (UTC)
Received: from DM6PR02CA0090.namprd02.prod.outlook.com (2603:10b6:5:1f4::31)
 by BY5PR02MB6593.namprd02.prod.outlook.com (2603:10b6:a03:213::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.17; Thu, 28 Nov
 2019 06:51:57 +0000
Received: from BL2NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by DM6PR02CA0090.outlook.office365.com
 (2603:10b6:5:1f4::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.19 via Frontend
 Transport; Thu, 28 Nov 2019 06:51:56 +0000
Authentication-Results: spf=softfail (sender IP is 149.199.60.83)
 smtp.mailfrom=gmail.com; driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=fail action=none
 header.from=gmail.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 gmail.com discourages use of 149.199.60.83 as permitted sender)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT022.mail.protection.outlook.com (10.152.77.153) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 28 Nov 2019 06:51:56 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQG-0007Yf-M5; Wed, 27 Nov 2019 22:37:04 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQB-0005Ep-IW; Wed, 27 Nov 2019 22:36:59 -0800
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAS6awt7004652; 
 Wed, 27 Nov 2019 22:36:58 -0800
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQA-00059i-3G; Wed, 27 Nov 2019 22:36:58 -0800
From: shubhrajyoti.datta@gmail.com
To: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v3 08/10] clk: clock-wizard: Make the output names unique
Date: Thu, 28 Nov 2019 12:06:15 +0530
Message-Id: <d9277db2692bb77a41dfed927cfb791bdcced17d.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--5.385-7.0-31-1
X-imss-scan-details: No--5.385-7.0-31-1;No--5.385-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-Matching-Connectors: 132193975167939472;
 (f9e945fa-a09a-4caa-7158-08d2eb1d8c44); ()
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(346002)(136003)(376002)(199004)(189003)(118296001)(5660300002)(36756003)(16586007)(336012)(7696005)(316002)(51416003)(426003)(6666004)(356004)(76482006)(446003)(9686003)(26005)(2906002)(81166006)(81156014)(8676002)(11346002)(305945005)(50226002)(70206006)(107886003)(70586007)(48376002)(14444005)(50466002)(8936002)(498600001)(76176011)(86362001)(4326008)(73392003)(47776003)(82202003)(9786002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6593; H:xsj-pvapsmtpgw01; FPR:;
 SPF:SoftFail; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b4d23ac5-87e8-4bfa-cc75-08d773cf75cb
X-MS-TrafficTypeDiagnostic: BY5PR02MB6593:|BY5PR02MB6593:
X-Microsoft-Antispam-PRVS: <BY5PR02MB65933D6A753D7F5F0AF29B4F87470@BY5PR02MB6593.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:475;
X-Forefront-PRVS: 0235CBE7D0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QEvZZrirNPdUdxjymsOXKZo0QN3fK9l1N9JqNTeXi72XzfXIonAqcbsx9At2ZJfqsOi97SfRvqARF6wGY7My+ByrF8u75d571PF99kxgrOQWrswv15xt0g3yZvlU0UYXN69mLxqGTWh3ahQIj4MZHspq6cvoFAmVNNCx0IRPiBC8y9z3+ljyqQ1nsPJdVt87kgcaEMyUDWxGLttnv3EZ0J39IhS8f/EvC/1rP69lAuSbzEOr4fHKNqMvETcrXJkjXuhZgFE2+dFa82c9fr4Trf3IvHQnTepPm5OHieMoN1kSbBx7m7WOO/YjmYDelqN2v9AGpewDlLZn8X1jnkf+tRzHz2Hwuvaml+9sIGbHYtmP2ne7+eAPfasoQRf9am1Rzp9f+nSEiXYq7xFszxnesQGqxgA31CMT7fdz7vl4zjNkIUES2oVuLF98fd7XxQgv
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2019 06:51:56.5537 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b4d23ac5-87e8-4bfa-cc75-08d773cf75cb
X-MS-Exchange-CrossTenant-Id: 5afe0b00-7697-4969-b663-5eab37d5f47e
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5afe0b00-7697-4969-b663-5eab37d5f47e; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6593
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

Incase there are more than one instance of the clocking wizard.
And if the output name given is the same then the probe fails.
Fix the same by appending the device name to the output name to
make it unique.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 drivers/clk/clk-xlnx-clock-wizard.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index 75ea745..9993543 100644
--- a/drivers/clk/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/clk-xlnx-clock-wizard.c
@@ -555,6 +555,9 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		ret = -ENOMEM;
 		goto err_disable_clk;
 	}
+	outputs = of_property_count_strings(np, "clock-output-names");
+	if (outputs == 1)
+		flags = CLK_SET_RATE_PARENT;
 	clk_wzrd->clks_internal[wzrd_clk_mul] = clk_register_fixed_factor
 			(&pdev->dev, clk_name,
 			 __clk_get_name(clk_wzrd->clk_in1),
@@ -566,9 +569,6 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		goto err_disable_clk;
 	}
 
-	outputs = of_property_count_strings(np, "clock-output-names");
-	if (outputs == 1)
-		flags = CLK_SET_RATE_PARENT;
 	clk_name = kasprintf(GFP_KERNEL, "%s_mul_div", dev_name(&pdev->dev));
 	if (!clk_name) {
 		ret = -ENOMEM;
@@ -591,6 +591,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	/* register div per output */
 	for (i = outputs - 1; i >= 0 ; i--) {
 		const char *clkout_name;
+		const char *clkout_name_wiz;
 
 		if (of_property_read_string_index(np, "clock-output-names", i,
 						  &clkout_name)) {
@@ -599,9 +600,11 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 			ret = -EINVAL;
 			goto err_rm_int_clks;
 		}
+		clkout_name_wiz = kasprintf(GFP_KERNEL, "%s_%s",
+					    dev_name(&pdev->dev), clkout_name);
 		if (!i)
 			clk_wzrd->clkout[i] = clk_wzrd_register_divf
-				(&pdev->dev, clkout_name,
+				(&pdev->dev, clkout_name_wiz,
 				clk_name, flags,
 				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
 				WZRD_CLKOUT_DIVIDE_SHIFT,
@@ -610,7 +613,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 				NULL, &clkwzrd_lock);
 		else
 			clk_wzrd->clkout[i] = clk_wzrd_register_divider
-				(&pdev->dev, clkout_name,
+				(&pdev->dev, clkout_name_wiz,
 				clk_name, 0,
 				clk_wzrd->base, (WZRD_CLK_CFG_REG(2) + i * 12),
 				WZRD_CLKOUT_DIVIDE_SHIFT,
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
