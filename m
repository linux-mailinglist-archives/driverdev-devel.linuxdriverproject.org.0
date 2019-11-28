Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D5710C437
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Nov 2019 08:06:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0243E877E3;
	Thu, 28 Nov 2019 07:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qLfO-acGlIip; Thu, 28 Nov 2019 07:06:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C4105877A5;
	Thu, 28 Nov 2019 07:06:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C69C1BF9B6
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:06:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 459848144A
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zsz9gF8N2Wb8 for <devel@linuxdriverproject.org>;
 Thu, 28 Nov 2019 07:06:25 +0000 (UTC)
X-Greylist: delayed 00:15:14 by SQLgrey-1.7.6
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800057.outbound.protection.outlook.com [40.107.80.57])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE5B08823A
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 07:06:18 +0000 (UTC)
Received: from BL0PR02CA0049.namprd02.prod.outlook.com (2603:10b6:207:3d::26)
 by DM5PR0201MB3623.namprd02.prod.outlook.com (2603:10b6:4:7b::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.21; Thu, 28 Nov
 2019 06:52:00 +0000
Received: from SN1NAM02FT016.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by BL0PR02CA0049.outlook.office365.com
 (2603:10b6:207:3d::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.23 via Frontend
 Transport; Thu, 28 Nov 2019 06:51:59 +0000
Authentication-Results: spf=softfail (sender IP is 149.199.60.83)
 smtp.mailfrom=gmail.com; driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=fail action=none
 header.from=gmail.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 gmail.com discourages use of 149.199.60.83 as permitted sender)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT016.mail.protection.outlook.com (10.152.72.113) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 28 Nov 2019 06:51:59 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQP-0007Z3-Ll; Wed, 27 Nov 2019 22:37:13 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQK-0005Gv-ID; Wed, 27 Nov 2019 22:37:08 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAS6b7gm007343; 
 Wed, 27 Nov 2019 22:37:07 -0800
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDQJ-00059i-3I; Wed, 27 Nov 2019 22:37:07 -0800
From: shubhrajyoti.datta@gmail.com
To: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v3 10/10] clk: clock-wizard: Fix the compilation failure
Date: Thu, 28 Nov 2019 12:06:17 +0530
Message-Id: <a0880cfbbcc729171a37e2a3bc27680efb06e398.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--5.920-7.0-31-1
X-imss-scan-details: No--5.920-7.0-31-1;No--5.920-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-Matching-Connectors: 132193975194638016;
 (f9e945fa-a09a-4caa-7158-08d2eb1d8c44); ()
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(396003)(136003)(39860400002)(376002)(199004)(189003)(4326008)(356004)(6666004)(2906002)(426003)(16586007)(7696005)(316002)(5660300002)(76176011)(26005)(9686003)(36756003)(70586007)(336012)(70206006)(107886003)(446003)(82202003)(11346002)(50226002)(50466002)(9786002)(81166006)(76482006)(8936002)(81156014)(51416003)(305945005)(47776003)(498600001)(86362001)(73392003)(8676002)(48376002)(118296001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0201MB3623; H:xsj-pvapsmtpgw01; FPR:;
 SPF:SoftFail; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 52211f9a-3d15-4338-0239-08d773cf775c
X-MS-TrafficTypeDiagnostic: DM5PR0201MB3623:
X-Microsoft-Antispam-PRVS: <DM5PR0201MB36239ECF7DF37FF93D9625EC87470@DM5PR0201MB3623.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:862;
X-Forefront-PRVS: 0235CBE7D0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vE/j+qd98YO3SoaIuJ69YPTGQKuQc9iFjoACAqMEtCC6s6tQ48xggmJTDFM3byrIQE32SrhWyTOh50zzComO/MidprpQCaXPxhi0f/QlwJM5nghb0Mxe+V9/P9ovBq9tyq/K61o3TJpVQeDdnRRCCn0lK2oUNtl5vSkIFcEqCHbwf9984hPuuTb5U2Y5BHKRCaYF/HqhaRGs5hyuy2aVXoA6svyffEQV0FBCiuGe9iwF/Jm26r104hJOGOv4K1ujqoXALD09Q5GGlKsdo72VIL/76OJ0GEP4KasmEEvMn1O31yl3gLMMllVMfE8Sx/1YSlhiWe/VMKsHRygPuvviqL8IRVyd7QIiO1Mzcj7aJJDhXUS7O1l2juMFU3rIBBn/tXxHJKLvbhJlkjD0N6/2qq9o0+o+aqz43hka9HD0v/NBQQSWf+rlnBR5+INplI5V
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2019 06:51:59.3036 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 52211f9a-3d15-4338-0239-08d773cf775c
X-MS-Exchange-CrossTenant-Id: 5afe0b00-7697-4969-b663-5eab37d5f47e
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5afe0b00-7697-4969-b663-5eab37d5f47e; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0201MB3623
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

After 90b6c5c73 (clk: Remove CLK_IS_BASIC clk flag)
The CLK_IS_BASIC is deleted. Adapt the driver for the same.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 drivers/clk/clk-xlnx-clock-wizard.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index 9993543..76cfa05 100644
--- a/drivers/clk/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/clk-xlnx-clock-wizard.c
@@ -345,7 +345,7 @@ static struct clk *clk_wzrd_register_divf(struct device *dev,
 	else
 		init.ops = &clk_wzrd_clk_divider_ops_f;
 
-	init.flags = flags | CLK_IS_BASIC;
+	init.flags = flags;
 	init.parent_names = (parent_name ? &parent_name : NULL);
 	init.num_parents = (parent_name ? 1 : 0);
 
@@ -402,7 +402,7 @@ static struct clk *clk_wzrd_register_divider(struct device *dev,
 		init.ops = &clk_divider_ro_ops;
 	else
 		init.ops = &clk_wzrd_clk_divider_ops;
-	init.flags = flags | CLK_IS_BASIC;
+	init.flags = flags;
 	init.parent_names = (parent_name ? &parent_name : NULL);
 	init.num_parents = (parent_name ? 1 : 0);
 
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
