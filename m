Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A88D9323E06
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 14:26:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CF61430DD;
	Wed, 24 Feb 2021 13:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zcWZUnbqrm1m; Wed, 24 Feb 2021 13:26:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6955C430C7;
	Wed, 24 Feb 2021 13:26:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E22A31BF423
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE81483AAB
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=xilinx.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C90RXgJCatzT for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 13:26:18 +0000 (UTC)
X-Greylist: delayed 00:14:52 by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2081.outbound.protection.outlook.com [40.107.237.81])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F1B6E83046
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 13:26:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=glB/E+VKPUpzX2MJ/Jwb+pLo96bSYiLiWQLNvE5CGZkE3M+lPm+d+3horL6W8aqCLb9irZJ9DX7LiUIdWxMkL42CMQLmPOHKeTuUd5VpPy9bOmWpJOicl5nGHBlKDx/ZSyh3I5nKPBmQRP1Y6cnYHeGvOhi/TgS9e9RK/eUH6JTr3aTpohOolnyJCXUS2GtTLRn2ppta7amG1nnJkDKWFjtbExicaH4OvmDPsOXLio8CtrxMn7tizCw7/FamFlHBTbZpTx4iWVJ/9INl9EbihdsX4vmX4L0yCyv5scoh+G9SAG2gMQRLPCDAnClfEeueY9n4UEXGsYX561DraCeiAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EZWyBMiRlWqknzViXQyTbqPa9qHBi5PttgCzMQK+Afg=;
 b=QSnXBrYy8uddjReZ0z1WUecWOvjYTCA8zs3O3+n5xTLpt95WbAalHviYIoeWonicolMeu5ujUCRk27uM2iEQvyTXm/4/6Cu7rz+iUfbo6SBa97B28yidO25BIP6cGSA2u/0z4mzCfzBqM84ZOwAbxG2Mi/IS1OG6YRlebb+VcjiDX+0/HfKfm5rcZfdB6xadMbRzheFmgKZqnGfwHjEA6TvYKCdsRzQKVkXj9x8LZmWIMmvV0pthaYnnL5aEtOqOAeyGmt0xl/bFnVYrOoesfGqS9/hnLhj48eO+MzSHUD3kDPokcNk3EdZQ4AVlkLMwf9V5ASSQwO1ZsLDsds5bsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EZWyBMiRlWqknzViXQyTbqPa9qHBi5PttgCzMQK+Afg=;
 b=E+N/KSxmBdGJ0AqDVqgNZDMCj/Ev9zVVUj8/tQJ4J4zPJy8kWGxifWmyc/OMxoDrQ+3gM54TeGjs8VCepd4LW9lQFVcJ7P/Ht2ubZBcmzh8yP9r2163+jccH3eDA3ysUzDdJJ+CI9kd5g3kVjV/2f7Ais1X4EMkM4pV/mcJ1aP4=
Received: from CY4PR13CA0041.namprd13.prod.outlook.com (2603:10b6:903:99::27)
 by DM6PR02MB4713.namprd02.prod.outlook.com (2603:10b6:5:13::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.26; Wed, 24 Feb
 2021 13:11:22 +0000
Received: from CY1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:99:cafe::ff) by CY4PR13CA0041.outlook.office365.com
 (2603:10b6:903:99::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.10 via Frontend
 Transport; Wed, 24 Feb 2021 13:11:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=pass action=none header.from=xilinx.com; 
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 CY1NAM02FT057.mail.protection.outlook.com (10.152.75.110) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3890.19 via Frontend Transport; Wed, 24 Feb 2021 13:11:21 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 24 Feb 2021 05:10:53 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 24 Feb 2021 05:10:53 -0800
Envelope-to: git@xilinx.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 shubhrajyoti.datta@gmail.com, miquel.raynal@bootlin.com,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=34848 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1lEtwH-0001ry-Hy; Wed, 24 Feb 2021 05:10:49 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <devicetree@vger.kernel.org>
Subject: [PATCH v10 1/9] staging: clocking-wizard: Fix kernel-doc warning
Date: Wed, 24 Feb 2021 18:40:33 +0530
Message-ID: <1614172241-17326-2-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9c6335fa-2d51-4f33-1f09-08d8d8c5ae7b
X-MS-TrafficTypeDiagnostic: DM6PR02MB4713:
X-Microsoft-Antispam-PRVS: <DM6PR02MB47135E099602303EE2CAA456AA9F9@DM6PR02MB4713.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:590;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cSAYqcEqlR5/gt1D0GjzPpAuiExvxQ6KwpAMSG/Y01vfHLhrNqzlDqq5+n8klyJPj/U0oUXoNzSZ4seA/mOepVppliWk0ZHK/odOIe65o8I+qcbAPbgBv0al/HfNylUnsRKYKn+0nnFMOLIQlYX2c+AkLrZv1BRxx0bG5rh6q3LYarH6g1HdQGoDcvZjoaVFXF64i4dq2IgkwnwFQJHRkzOrMBlf43nfIflcO9VGebrgWuHOQlfxmMiuOue+wRohjyJj9XrhU37Yyic04JziZ/9BhkxRPn0UT7sQhj1LbiF32QK5clFzz78VN76dC90LTh0jRTZEMokFSPo+Mpl4YwcpuY0kI4cNmIST+34EPCbZabdxYFeSitKV5ndoVRiiPUHxwXYkAZSwPL7InNAe2BFSkPwP9nZQ5RBJzVYyypRjtkCd5ITPZwUkb/WujOr7efLfi8xVE0S5ASYigTd9C8kxncDMBGTEgR2H0TitJWIPpCuurRYHWQNAPAtI2mUQFf1o1yi7cgdU9AwWwQGLEXTSNiKSECx6kX9VTPaMkB8QjTbhyYVDVxx6Pa5TIJMGdXXXRrM/faBY3/iAx9Gbajv0u0LayyqDASiV3XGntXge2JunRVbijNkDxwPSDYQZduEho2PS+kjFsosY2cPIOgMuExdHDU4uVaV9dBO8sqt57Wkp9zlxKLnC6RsWA6wg
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch02.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(376002)(39860400002)(346002)(136003)(396003)(36840700001)(46966006)(8936002)(44832011)(186003)(36756003)(336012)(8676002)(26005)(356005)(7636003)(2906002)(7696005)(426003)(82310400003)(36860700001)(9786002)(47076005)(6916009)(54906003)(4744005)(478600001)(316002)(5660300002)(70586007)(83380400001)(2616005)(4326008)(70206006)(107886003)(6666004)(82740400003)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2021 13:11:21.9716 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c6335fa-2d51-4f33-1f09-08d8d8c5ae7b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: CY1NAM02FT057.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4713
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

Fix the clocking wizard main structure kernel documentation.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
v10:
Updated the description

 drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index e52a64b..1973587 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -38,7 +38,8 @@ enum clk_wzrd_int_clks {
 };
 
 /**
- * struct clk_wzrd:
+ * struct clk_wzrd - Clock wizard private data structure
+ *
  * @clk_data:		Clock data
  * @nb:			Notifier block
  * @base:		Memory base
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
