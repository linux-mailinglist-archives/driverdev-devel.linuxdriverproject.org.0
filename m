Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A882A6787
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 16:22:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBD13858D3;
	Wed,  4 Nov 2020 15:22:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 91uuDeflYoEm; Wed,  4 Nov 2020 15:22:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6EF208586A;
	Wed,  4 Nov 2020 15:22:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E0011BF32E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 15:22:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7A084866FB
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 15:22:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JXtbNByDPZ2z for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 15:22:37 +0000 (UTC)
X-Greylist: delayed 11:00:15 by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770059.outbound.protection.outlook.com [40.107.77.59])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 99F4A866F8
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 15:22:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OdyoBKJVKYGyTjKF6iuEM4iWMebR5PbuExGdo15jzFVKqsP8zick4aWKh8JnodngHGpicl5M5UN6gc6PKRck2il+YIplglGIMoBzVL6cQPVuAazQ3Snsf2SC/t51kFOeBqpRVUCtZehNyc/a2TgpLSloWDioe/qEzL/aR0P3z8m8VeiTpZ0S7OymQ+2zaJ6rs2HkQRbuz4pkhQeEA95eE9IMPwqjFVaDkXBz+WN28yYIj2xMivbKGw5/tXsWCOaIAgpxqYFY06C/eNJ00lLWJfI6i12xFrdbWDI/I703mHPLgs3tQiOBHQTooVeG5z4luVh1tp4aQGeQVh+TUIgvKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=roEj9Agv1RYOmPCtk4VocZviSZy/fkIAobJzO2mZ+s4=;
 b=MImsGVUusiz5YARKPshtPNa0DzfmsHYbEhCUrl9DJ7nUoUVfUSN7QxVhKXnDf0jTBLslbvEraNrTTFodE+mfi2l1ngI+nuwyHEBOIGehmggHws1+aI++wAZxUg/rviPmnnyQY5vUsmhtPw0u7KpReLNdBfF1f1bWPF/DxnefHPvTk0mAjKEQ41GASo/ANw46BbaAZYS4FIXLbV86fSdctCjXkcGhVXcWCPZmXwJUf9r5e/lDonePJOH/BD15bcyKa48XsoXfOTCxRBkL/0gj2e3d0waRmw5uJc7Dymlu/v6fVwSM1z+SGBqDOcvWk3MQ5xh9opEaGTH9CKvqidE/fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=roEj9Agv1RYOmPCtk4VocZviSZy/fkIAobJzO2mZ+s4=;
 b=l0vm4LWngLXDAmr7ftrR934u+fnBzVr0rGdYBVJzFx2o6/2BnT5v/mDaduKrY1BbVVsP/jy9NnhPs0Tgw9OtqkwNCprNaPZ6ZX5uBJ3r2Tl8aPgq4nX2NjptVNSrzeDuJn/TrlnFJEWaN7AiIcTalfGkPG1dT99B47nCgLc7DGg=
Received: from BL1PR13CA0131.namprd13.prod.outlook.com (2603:10b6:208:2bb::16)
 by MWHPR02MB2685.namprd02.prod.outlook.com (2603:10b6:300:108::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Wed, 4 Nov
 2020 15:07:54 +0000
Received: from BL2NAM02FT007.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:2bb:cafe::d) by BL1PR13CA0131.outlook.office365.com
 (2603:10b6:208:2bb::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.10 via Frontend
 Transport; Wed, 4 Nov 2020 15:07:54 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch01.xlnx.xilinx.com;
Received: from xsj-pvapexch01.xlnx.xilinx.com (149.199.62.198) by
 BL2NAM02FT007.mail.protection.outlook.com (10.152.77.46) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3520.15 via Frontend Transport; Wed, 4 Nov 2020 15:07:54 +0000
Received: from xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 4 Nov 2020 07:07:16 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 4 Nov 2020 07:07:16 -0800
Envelope-to: git@xilinx.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=49678 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kaKNX-0007UB-0n; Wed, 04 Nov 2020 07:07:15 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <linux-clk@vger.kernel.org>
Subject: [PATCH v7 7/7] clk: clock-wizard: Update the fixed factor divisors
Date: Wed, 4 Nov 2020 20:36:47 +0530
Message-ID: <1604502407-14352-8-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 56504c0f-de9b-4e8a-7856-08d880d36800
X-MS-TrafficTypeDiagnostic: MWHPR02MB2685:
X-Microsoft-Antispam-PRVS: <MWHPR02MB2685C320F5BECF1949046B58AAEF0@MWHPR02MB2685.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:989;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 27cMBIelgmUqf1ws5cpLY3DMd6bNJR+ppVH2gs+EKi5au1ici2NNBUXsh+pG1aZ0iztzg5u8XoYEuCEzm32Qjf9b1o3C3a/PQlPEwbkSwr038ZBLpKnv0duvg+MnyCUCsE4EvR1+3PCUT4sMFiGHDLu/7u+zmbG4JgVxx8RZhqj1t8cnsyKgLcGy5gQmaCvhC9dHAXDAzOgpWFrCkwdGgjyY1Lzo/lQ1r07DZJw3S2ciBBmqLBhC5Ny1WH83xr+y0clRoZ2QqaLfvHZhX1VWZVGCRKeZze7UPW8he4Bz6n3z3nDuyHB17uRwAqKvGyro4khRA0hla2v4bRMDu9qxoFJLhlN3EJfW3b7TDt52tZG/lrqzco04f0UPFH8eUK+eZoxklN4ZcFodFzK0Y48UvhOf99PBpITHSkXC6rAHk2I=
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch01.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(136003)(376002)(396003)(39860400002)(346002)(46966005)(356005)(8936002)(82740400003)(478600001)(7636003)(47076004)(107886003)(36906005)(26005)(316002)(44832011)(15650500001)(82310400003)(7696005)(8676002)(6666004)(4326008)(2616005)(336012)(9786002)(70586007)(186003)(83380400001)(426003)(6916009)(36756003)(2906002)(5660300002)(70206006)(54906003)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2020 15:07:54.2811 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 56504c0f-de9b-4e8a-7856-08d880d36800
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: BL2NAM02FT007.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2685
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

Update the fixed factor clock registration to register the divisors.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 drivers/clk/clk-xlnx-clock-wizard.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index d403a74..7f09522 100644
--- a/drivers/clk/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/clk-xlnx-clock-wizard.c
@@ -472,8 +472,10 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	u32 reg, reg_f, mult;
 	unsigned long rate;
 	const char *clk_name;
+	void __iomem *ctrl_reg;
 	struct clk_wzrd *clk_wzrd;
 	int outputs;
+	unsigned long flags = 0;
 	struct device_node *np = pdev->dev.of_node;
 
 	clk_wzrd = devm_kzalloc(&pdev->dev, sizeof(*clk_wzrd), GFP_KERNEL);
@@ -543,16 +545,17 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	}
 
 	outputs = of_property_count_strings(np, "clock-output-names");
-	/* register div */
-	reg = (readl(clk_wzrd->base + WZRD_CLK_CFG_REG(0)) &
-			WZRD_DIVCLK_DIVIDE_MASK) >> WZRD_DIVCLK_DIVIDE_SHIFT;
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
 			flags, ctrl_reg, 0, 8, CLK_DIVIDER_ONE_BASED |
@@ -577,7 +580,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
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
