Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E190E323EA7
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 14:46:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD2566F633;
	Wed, 24 Feb 2021 13:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o018PeYhSn5j; Wed, 24 Feb 2021 13:45:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1863D6F5FF;
	Wed, 24 Feb 2021 13:45:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F2E7D1BF423
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:45:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E223683D2F
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=xilinx.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hVEKYD8Zli_f for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 13:45:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2063.outbound.protection.outlook.com [40.107.94.63])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2EC1383B47
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 13:45:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GzMmEwdz9MKRefMAPa16Yq3P8Ko7gWoi9gmvMRTkug31inZNq+2FJlST67IxxRq/VaHt9PUxCNQF8EVpaAYCQcqt04Bejeyz8H9lnQ2BqmsofJpEYRFRwQP2sVBdF/+wH5hJRNsOEGFk03wD2K4E2Zi0WcXkAxDAJYOz4iXLSuXzOBzoIEXvbe4VjV5HLavmCEnJaIb519O35UCRkOV5ltioO4SvpYEmdUgfW+E38CvxwYYbdjEOrv3SSX4t/fHDgaZiqXXbwdhp31NhcmU1EH98n+TPAyviFq3yLuUZmroofj+W0ZjwveL/esDIhWrO4Tkepr/uDlbLjNG/u66DFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a9psyoKRCRDkMjRUPCwI2RO3YBj1Mhwt9yyQgsxiVWc=;
 b=bVDF3vfXJEQ+TM6xXYf2SklErTf7m/We6WzjQgRGmrHMWVtZ0iI9gYKQKKfPGD9Mox9U7cKdflYMj79uRZqA18pLclnc2u+NBqdqIzRzYt26MCmD4eCUZkzE8VAaj2iA5u33UyLDM1q6MJlrbTw5B2wNI+LcyjHe0T8yg3JO8upajmimJ2hHg4/Yin7S222XpNQ+WPZE3VQ+FRoZMFDpj94g4jutpS3rjBXEDydiXhwckL7PcbIYFUhv+ghviHU+lWRzTSpXCbYT9VpUKEirItyqRwiQJUHgXkBuhndCgMEKh6+DETwXIQDygD45Wg82qruoooRFdiSp8dGhFBh5pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a9psyoKRCRDkMjRUPCwI2RO3YBj1Mhwt9yyQgsxiVWc=;
 b=OXkHK3+M4VC4KhaQCeLNxZ+Y0dlSUBszpKFDrfW5YHti1Yh5VvTXqx4BrbdRxJ/uioW/clnPoO50pSbhX6fB94wH0QXYuej8lNfGa2VTAqUjTAyA7/QxcDf4RqaQDWDBJXgAjFREtHs1T/L6hLRp9t0oCdJ/8OBbzVcbcu28HuE=
Received: from CY4PR18CA0030.namprd18.prod.outlook.com (2603:10b6:903:9a::16)
 by CY4PR02MB2392.namprd02.prod.outlook.com (2603:10b6:903:d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27; Wed, 24 Feb
 2021 13:11:50 +0000
Received: from CY1NAM02FT006.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:9a:cafe::b8) by CY4PR18CA0030.outlook.office365.com
 (2603:10b6:903:9a::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend
 Transport; Wed, 24 Feb 2021 13:11:50 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=pass action=none header.from=xilinx.com; 
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch01.xlnx.xilinx.com;
Received: from xsj-pvapexch01.xlnx.xilinx.com (149.199.62.198) by
 CY1NAM02FT006.mail.protection.outlook.com (10.152.74.104) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3890.19 via Frontend Transport; Wed, 24 Feb 2021 13:11:50 +0000
Received: from xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 24 Feb 2021 05:11:13 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 24 Feb 2021 05:11:13 -0800
Envelope-to: git@xilinx.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 shubhrajyoti.datta@gmail.com, miquel.raynal@bootlin.com,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=34848 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1lEtwe-0001ry-50; Wed, 24 Feb 2021 05:11:12 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <devicetree@vger.kernel.org>
Subject: [PATCH v10 7/9] staging: clocking-wizard: Remove the hardcoding of
 the clock outputs
Date: Wed, 24 Feb 2021 18:40:39 +0530
Message-ID: <1614172241-17326-8-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 827eeefc-d62c-4240-b533-08d8d8c5bf38
X-MS-TrafficTypeDiagnostic: CY4PR02MB2392:
X-Microsoft-Antispam-PRVS: <CY4PR02MB2392BE9D59C1CC8DD632C1B4AA9F9@CY4PR02MB2392.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8J7VMr4vh0prnsXHkHNdl4wFbaGbLMsxL19CWVBqLPhxp902aLvIVuoGolQUzKOxOaQl+uQSbOpBc4IcBhduaztp3QupZEi9jZmcVWDRR8LqR9RijrpotUo72CHzTm2SQfLU+4GDGytRgxwp5BE+SO53r/hvg4iR6NUBAoc4IOTmslb4dXofxAoFkB+pef/EZhGpIFPWUiTvnLiFANWrvVGn5+buNOn1zQoZzldFeLuFn0zzopIRZ1UoBM9fxM0FlDG8g//rRYxkEC6bEeZIMmzgdXGty7AzutzpAvY7xXKIiLbzED0nZkYt+b+LwF5LuapwdW49uIFMleRZFYGcub55GpoQ/3HEDKtKhJpLb0cG4ecdfUx+aZJXfK3vhgFfJ7zoEU0PAiYtSDrMVPt8Q4YwGcPlxJW9JQBqnwx+jH3R2FWNb43YnF99ewsAmurKdsDbdtmddrYvkB/xewm18fCGPdB+L96pkDKiJXjwmR9FwcJHr/U8RvYmuwpsQdm9rG/sAyXOv2V+i6nnttJZBUUat9XlIx4ZX+u1vziytzEhNI0LQNfLvVVSJOn6suwpdXK6+UwJxkx96H4vwXk3UhcLYU5VI0Ojaam4V6wm73xS9xkRtw5xOerSgpt9yriHbT3TEJ8E4tD1l35bQQhgbKzHQJK89olm/THe4vqFRJ8ylHbSe3hkwZXnaExBRy3L
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch01.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(396003)(346002)(376002)(136003)(39860400002)(46966006)(36840700001)(70586007)(36756003)(36860700001)(70206006)(2906002)(5660300002)(8936002)(7696005)(8676002)(6916009)(316002)(36906005)(9786002)(83380400001)(4326008)(478600001)(2616005)(107886003)(426003)(47076005)(44832011)(54906003)(7636003)(356005)(82740400003)(82310400003)(186003)(6666004)(336012)(26005)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2021 13:11:50.0577 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 827eeefc-d62c-4240-b533-08d8d8c5bf38
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: CY1NAM02FT006.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2392
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

The number of output clocks are configurable in the hardware.
Currently the driver registers the maximum number of outputs.
Fix the same by registering only the outputs that are there.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
v10:
generate the names runtime.

 drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index a70f09e..b0ced42 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -517,16 +518,15 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	}
 
 	/* register div per output */
-	for (i = WZRD_NUM_OUTPUTS - 1; i >= 0 ; i--) {
+	for (i = nr_outputs - 1; i >= 0 ; i--) {
 		const char *clkout_name;
 
-		if (of_property_read_string_index(np, "clock-output-names", i,
-						  &clkout_name)) {
-			dev_err(&pdev->dev,
-				"clock output name not specified\n");
-			ret = -EINVAL;
-			goto err_rm_int_clks;
+		clkout_name = kasprintf(GFP_KERNEL, "%s_out%d", dev_name(&pdev->dev), i);
+		if (!clkout_name) {
+			ret = -ENOMEM;
+			goto err_rm_int_clk;
 		}
+
 		if (!i)
 			clk_wzrd->clkout[i] = clk_wzrd_register_divf
 				(&pdev->dev, clkout_name,
@@ -548,7 +548,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 		if (IS_ERR(clk_wzrd->clkout[i])) {
 			int j;
 
-			for (j = i + 1; j < WZRD_NUM_OUTPUTS; j++)
+			for (j = i + 1; j < nr_outputs; j++)
 				clk_unregister(clk_wzrd->clkout[j]);
 			dev_err(&pdev->dev,
 				"unable to register divider clock\n");
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
