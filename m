Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49AEC2A6A05
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 17:40:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8B711203D8;
	Wed,  4 Nov 2020 16:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IiyIlZCuyUmX; Wed,  4 Nov 2020 16:40:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C4910203A7;
	Wed,  4 Nov 2020 16:40:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B84B71BF5DD
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 16:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AFCF287216
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 16:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Go2enZLNNQw for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 16:40:52 +0000 (UTC)
X-Greylist: delayed 10:59:24 by SQLgrey-1.7.6
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680045.outbound.protection.outlook.com [40.107.68.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B442F8720D
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 16:40:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SY3xuDN8EUfDdOoRj++yFe+ytYRdy2Bru5hVOmjciY90cxyMPgtxUUlD4gACyPvGqllwmsz36ylxmk4XA0Na9oPRwUFQ67mB4+KwXS3SiyI10EEKRDsCNglvIug1kq/9qSPDThlHsc52BGFZ1OakuIxzwdWFIC1lbzx2VWfgsSg0fC9ftij3MPHf+mfUqnIStceww8Dic9yFz1nO3lvGzLweGUqrbEHjUVdfokskn+YFez9TrMHhh4Z/yEcNAaI03Y/ysKlck4ehF/s4NsrG79yugz0CB4QM1gehb3GELq3fYyPrhIeHX2RpNbUUi/dhAvYBDee5W/7OmfGflX2jDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CVuuTVm4kNVjw1QohjTJFApSIi3tzsnwlDaYpbM359E=;
 b=RaXV7gcnnwbis1gN6Jvp2VPmMCHJGh7OUTOd4wmqPuM2QC4rbEYS3vnlpuGeMqglMyVWppX9aY3A5yZ6Fix43zyha7uHeEFoBKoexmis/4TKNsCzfkyw+tyHt7y6kNshNKKP3cOHbKdRI8m2H2Ly/3iGWljVuzncikLWMfq4BdjJt30xfbqBdE23KA0fgOX9KBK9Z0UIK75o16IditTL9Za7DGCzvsT1u7jHspbpaRYH9gzoJ7kSMXj1UAhZSSxJ2R42uucY8Ia8Uc5PKYB+tpHhaaphF1fmYOAM6oUYpKLdn0YrhB1mRQETpTuAWGJ6SQEzy79rCt42BALl+IodFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CVuuTVm4kNVjw1QohjTJFApSIi3tzsnwlDaYpbM359E=;
 b=Fjkf1i2kl71S2c6smXESE/x0OO4EJL+PDIbZ8hOJW0OBTtUDJKRNfWtJA3DpYwfLh4pV0wXaFcUup4QFTb2Ze1rYzdBzlmVfVAVdfyeULVhrOyxoNS11aitZax3eA6RQrxuZsFcnNjRerdFWa5ueeNRe9MEDyZn4lpxclO9KUgg=
Received: from BL0PR0102CA0028.prod.exchangelabs.com (2603:10b6:207:18::41) by
 SN6PR02MB3949.namprd02.prod.outlook.com (2603:10b6:805:39::30) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.18; Wed, 4 Nov 2020 15:07:40 +0000
Received: from BL2NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2603:10b6:207:18:cafe::b) by BL0PR0102CA0028.outlook.office365.com
 (2603:10b6:207:18::41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.29 via Frontend
 Transport; Wed, 4 Nov 2020 15:07:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 BL2NAM02FT047.mail.protection.outlook.com (10.152.77.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3520.15 via Frontend Transport; Wed, 4 Nov 2020 15:07:40 +0000
Received: from xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 4 Nov 2020 07:07:01 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 4 Nov 2020 07:07:01 -0800
Envelope-to: git@xilinx.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=49678 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kaKNI-0007UB-3i; Wed, 04 Nov 2020 07:07:00 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <linux-clk@vger.kernel.org>
Subject: [PATCH v7 3/7] clk: clock-wizard: Fix kernel-doc warning
Date: Wed, 4 Nov 2020 20:36:43 +0530
Message-ID: <1604502407-14352-4-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9a18f445-37b9-4ad9-5de8-08d880d35fd6
X-MS-TrafficTypeDiagnostic: SN6PR02MB3949:
X-Microsoft-Antispam-PRVS: <SN6PR02MB39497238AC6C924653055A10AAEF0@SN6PR02MB3949.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1751;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gzeaS+OlVISuv01HT96qs6xdiQd1VuFDEMeWLNCFFzIHGFFMy03BX3cU/6efNHdj4gzigbwbTafa1+AJaodvpdewsHPizw+CihKrtoljwCqEweTj33yhcE/PDfU6EawjpFvPogGinepFAOLK1dEz3sbgkpW57bu0oj1mevRHD0drgDytwxi/5obbjxWfHkrPbaNylw3jWyS+RrLReCDSdFTXLzeu07a60JpVFIfmhJU4D6ik1s4d5gqyEL611IoYkAFHO2URyFkRY/6s1zt849jxGxC97SIUwPcXyZgSK9/lD5uxy8A2ZAStzP3DkSSQkRnmpItnrb1xf6Rf70Py7cb65+GP013seH7KKRfVsEbsAzdaygg/nO9fOa9tvOdWxhlvnvlRdCPmkuZkStGgOaDGqJTDJRP96raxJLxJQXs=
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch02.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(396003)(376002)(39850400004)(346002)(136003)(46966005)(70206006)(5660300002)(70586007)(47076004)(7636003)(356005)(4744005)(83380400001)(82310400003)(6666004)(9786002)(36756003)(54906003)(426003)(8936002)(44832011)(8676002)(316002)(36906005)(4326008)(7696005)(478600001)(82740400003)(107886003)(2906002)(2616005)(186003)(26005)(336012)(6916009)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2020 15:07:40.5854 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a18f445-37b9-4ad9-5de8-08d880d35fd6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: BL2NAM02FT047.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB3949
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

Update description for the clocking wizard structure

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 drivers/clk/clk-xlnx-clock-wizard.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/clk-xlnx-clock-wizard.c b/drivers/clk/clk-xlnx-clock-wizard.c
index 1bab68e..fb2d555 100644
--- a/drivers/clk/clk-xlnx-clock-wizard.c
+++ b/drivers/clk/clk-xlnx-clock-wizard.c
@@ -40,7 +40,8 @@ enum clk_wzrd_int_clks {
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
