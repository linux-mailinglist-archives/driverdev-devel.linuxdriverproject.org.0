Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A35323E99
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 14:44:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E852430DC;
	Wed, 24 Feb 2021 13:44:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id evNQueNjWKVZ; Wed, 24 Feb 2021 13:44:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92F98430D4;
	Wed, 24 Feb 2021 13:44:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7F0931BF423
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6E56A83C13
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:44:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=xilinx.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qNcuL7gfUOuz for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 13:44:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2080.outbound.protection.outlook.com [40.107.237.80])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 18A2B83BE7
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 13:44:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cPLjZJquha2xx2bixXRObjAAOOJoNK/0gujR8OCz2C/4c20uUGf/XmsiNTnJ9T+tabpIQMPEZIlPXA42o/LekiH2oUKykJ9mBOuY6Ma2Yue/OMjNnyOU+9EcBBGFZcWfwmaVkFl+NpZS/j2dO/rEgymq4lThVJQMGjGXEH0jRczo3MeFXaFzkChGUfTXhMjAYqESrDJ75y/p1hW/C2Pr9uSqApRF5VahCO6hClgZfF0FbCFxoJ+rT1udtQ8W1APqkbwU2xoYdGwScH+hZopgLbdEt9LzZuqTpY2hSegWQqxusUDhBHAJEat+nTIzYo/GlxP6VslqIrmRlC3lNhCX6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hiIKrdGRUjGysJc84U1PviXQRm+k6cqnjuyLTaTNH+4=;
 b=fiSBIpPl4Z4d7WxAaE1csqiBeC//CWDIDxlbFzO6qCSVGlJonOV6LblUNA3WNdiYM6WOBp5/bSmheKXUmjkO4XJX/34V8scr9LIEla0JDngcN4pbcmCrrzz2VIMr8sf3K0bKC7uQeQ0rNobEyHHUWi4uZ1zssaGcLSvbG5YMJl330LhRtLdD/i5mY/5uELBzeeZh8lyFKd8TmEtVjEjbELFazEstfPlyGllmLfznJTt3QI2w2c5j0pMsSSXkgjSOkq9FEmn3Nm5FBfDIhec5kMM4yHzEzuYgDVFMK+TMS9PellswOlUltZ82XEPRedwJBPB3I56rpNP+/OA55NxPuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hiIKrdGRUjGysJc84U1PviXQRm+k6cqnjuyLTaTNH+4=;
 b=BJAJAshuzB60TNFVpAx1ALKUfGdnvQwyGikZfUiQ2Uq2wKbJWFfn+1BaTV2T1uOODATfMUXFqaSZ3zhec7+j2BO744JuLHxvkmtMF492C8yLwY5PeAfrgbD2EtlpXJ2AHeCy3qr4Dn2WlmD2p6hRWwBbIBI+rt8j/SADfCR1IBs=
Received: from CY4PR20CA0039.namprd20.prod.outlook.com (2603:10b6:903:cb::25)
 by CH2PR02MB6598.namprd02.prod.outlook.com (2603:10b6:610:a7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.30; Wed, 24 Feb
 2021 13:11:22 +0000
Received: from CY1NAM02FT060.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:cb:cafe::db) by CY4PR20CA0039.outlook.office365.com
 (2603:10b6:903:cb::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend
 Transport; Wed, 24 Feb 2021 13:11:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=pass action=none header.from=xilinx.com; 
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch01.xlnx.xilinx.com;
Received: from xsj-pvapexch01.xlnx.xilinx.com (149.199.62.198) by
 CY1NAM02FT060.mail.protection.outlook.com (10.152.74.252) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3890.19 via Frontend Transport; Wed, 24 Feb 2021 13:11:22 +0000
Received: from xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 24 Feb 2021 05:10:54 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 24 Feb 2021 05:10:54 -0800
Envelope-to: git@xilinx.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 shubhrajyoti.datta@gmail.com, miquel.raynal@bootlin.com,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=34848 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1lEtwL-0001ry-8I; Wed, 24 Feb 2021 05:10:53 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <devicetree@vger.kernel.org>
Subject: [PATCH v10 2/9] staging: clocking-wizard: Rename speed-grade to xlnx,
 speed-grade
Date: Wed, 24 Feb 2021 18:40:34 +0530
Message-ID: <1614172241-17326-3-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 938aa363-c4cc-4037-5e73-08d8d8c5aeeb
X-MS-TrafficTypeDiagnostic: CH2PR02MB6598:
X-Microsoft-Antispam-PRVS: <CH2PR02MB6598ED3D1F0230303CF30F9EAA9F9@CH2PR02MB6598.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:299;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CHq1CY6HNCZT9nXyqQVavlFtvRgbTk2L6COlH3S6KXr2yGfLK2QUOqOG1yB+W/ewm+A7D3cl1JkysSvH1JV2KLiiYMtdT0n117JJmhIhWTEAgclndjKtFwywpfyOOEb66rzLju7w3qhKZiXLZMsl+UhHZPhDxXt7QPpbSDVMd5HbxOWaMPDsI/Uf2S//PRLjxJWy8Elr6wh+cmerZcrjWdNk5hyls1x2dXighyF/1LwMLdovVrGLPpbZaUBCWJuCYhDE3oQyX/6WUEN0OAPABgnamjMWh3WjCAjnORhIUT/XVZcJO+mEYJ9w6Re9UMMK0GsgRjkCKE6K2ZjFsr6IMFEAS473mqwlYfcJJWF+3gtGn+XJhvoGANRuXV+n0WsKacKdEI2RwH8Bu47ODa0rhBx+VoCmn6HDQ+svMpKy2SQnXEhvFw5f0jd61ZEs/t+Osl/1xkfKOVzBm6VcjQOdwieCpbEpI/fiCcDBo7HO64ewG7PL2tu+lJCHlYdKowJxRQS2gVMLyzuTxXeQkKWULyYCzBp0GpA0aBPIa9io5b6OKf/w1y/D+34J1y2vu3n2oedUNFNrDyJajyiVGarJHv4Z8XM+obUw5JaEQweG3RcqGMyR9X9AzK+Iwp4SKnTJ0Okpp8xZ4QdfEpLwnklkgYwi0XUqr1dSw/xEKRIgiTW7QJ6Z+nOmELz/4O8hf9dU
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch01.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(136003)(346002)(39860400002)(376002)(396003)(46966006)(36840700001)(83380400001)(70206006)(6916009)(54906003)(6666004)(7696005)(7636003)(5660300002)(70586007)(26005)(478600001)(82740400003)(107886003)(4744005)(2616005)(2906002)(186003)(356005)(36906005)(8676002)(36860700001)(336012)(8936002)(4326008)(82310400003)(316002)(9786002)(426003)(36756003)(44832011)(47076005)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2021 13:11:22.7014 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 938aa363-c4cc-4037-5e73-08d8d8c5aeeb
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: CY1NAM02FT060.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6598
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

Rename speed-grade to xlnx,speed-grade

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
index 1973587..57f80ba 100644
--- a/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
+++ b/drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
@@ -147,7 +147,7 @@ static int clk_wzrd_probe(struct platform_device *pdev)
 	if (IS_ERR(clk_wzrd->base))
 		return PTR_ERR(clk_wzrd->base);
 
-	ret = of_property_read_u32(np, "speed-grade", &clk_wzrd->speed_grade);
+	ret = of_property_read_u32(np, "xlnx,speed-grade", &clk_wzrd->speed_grade);
 	if (!ret) {
 		if (clk_wzrd->speed_grade < 1 || clk_wzrd->speed_grade > 3) {
 			dev_warn(&pdev->dev, "invalid speed grade '%d'\n",
-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
