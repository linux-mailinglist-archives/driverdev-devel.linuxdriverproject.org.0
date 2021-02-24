Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B21323E0D
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 14:27:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D081C83D57;
	Wed, 24 Feb 2021 13:27:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99Zxdgy_Ht7B; Wed, 24 Feb 2021 13:27:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E2D5983D55;
	Wed, 24 Feb 2021 13:27:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E0511BF423
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:26:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 59B2F4EC42
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:26:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=xilinx.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8tCz66BWF5cc for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 13:26:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2083.outbound.protection.outlook.com [40.107.237.83])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0BFE84D10E
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 13:26:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pn4TpwY4GFmDI/6QtQryeGhutsTT0na97KNYE24i3OEew3mPgo2Ebo5Zku6omLLci9+yLRBFlFtOz5yAn2b4jqu0XxvOoNhY3q4LdM645MsbCXEGCdH8zHAOB3I2KPzSqV2ModGisTYJM0rzZULuyo3hc7p738uHxNE+zh5LrzNcdKpDnxPq8M5roKZsyVk8jxVSeNnSIu9aQHUWUuEDqbSuouCS2QD6O+16/FjilKkwFOLR54yMEmB1r0YNB02eOcnd5IcfzuOOQkO4BIflbJf2iGSGYjEgsaOb/XZneNi9MMHEnxSV94M56X9OBfrZQ5xvbZKT6A6v0FSYJhN8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X08dbfM/k8r1eKpvZpmfIzUzxhVmnp/s9B9xyGfC2TM=;
 b=Ss2J2bOpO140JvMXpRV7cNVvz1eGPhz23b/c9t+ZpHmyTDRsk2A8y0+sAeerzkttw3iFBV7rkzO2nGm/1tN5wvGkbOy/cFT/gWfDMd10qtd5ix6CKVbUS9xD7IeiV5tog1AN1gS3qIc/hddZlEskGIf0Xi7TIR4W1DOigsRbPlKYLDqrY0gdFxgHqfNd0KRyiTO37Tg9LxTjepI87SsPuVBP+Kq4ATfknqbL3Y6iGu1Os+EQZFd49EEde9aJuZVAi4JWrHA/HfCZZ2C0XBwEooSHtVvHfhJwwG2gfTRlG4sLeT1x2YKerSfFBPeD8zHxyYCmc7w0yXe6XQ8OyHt5dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X08dbfM/k8r1eKpvZpmfIzUzxhVmnp/s9B9xyGfC2TM=;
 b=neCz9FFcGTWbcESHUVUh12pvtRCsp0brf+6fhogtxvlq3UZvKinlqAsv287EGd4cOdaAhcC2fQBb1xONcAY2BfAxAcCHEKYJfuzA1PpqpNZOAOOHj5ClJyD4wuc4FU8UHmr0W/ao8sxMkO9dpdB74Gp8LLRAD4bjqWhz/aOTJN8=
Received: from DM6PR02CA0167.namprd02.prod.outlook.com (2603:10b6:5:332::34)
 by BY5PR02MB6372.namprd02.prod.outlook.com (2603:10b6:a03:1fb::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.31; Wed, 24 Feb
 2021 13:11:12 +0000
Received: from CY1NAM02FT005.eop-nam02.prod.protection.outlook.com
 (2603:10b6:5:332:cafe::26) by DM6PR02CA0167.outlook.office365.com
 (2603:10b6:5:332::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend
 Transport; Wed, 24 Feb 2021 13:11:12 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=pass action=none header.from=xilinx.com; 
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 CY1NAM02FT005.mail.protection.outlook.com (10.152.74.117) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3890.19 via Frontend Transport; Wed, 24 Feb 2021 13:11:11 +0000
Received: from xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 24 Feb 2021 05:10:46 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 24 Feb 2021 05:10:46 -0800
Envelope-to: git@xilinx.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 shubhrajyoti.datta@gmail.com, miquel.raynal@bootlin.com,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=34848 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1lEtwD-0001ry-MF; Wed, 24 Feb 2021 05:10:46 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <devicetree@vger.kernel.org>
Subject: [PATCH v10 0/9] clk: clocking-wizard: driver updates
Date: Wed, 24 Feb 2021 18:40:32 +0530
Message-ID: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2fdd9d10-7f3f-4070-c36a-08d8d8c5a874
X-MS-TrafficTypeDiagnostic: BY5PR02MB6372:
X-Microsoft-Antispam-PRVS: <BY5PR02MB6372652B3508138C11F29A86AA9F9@BY5PR02MB6372.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:207;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: T4J4Yixd7UfHkZx5s4l/sBN0yPGQvvyzG4zJPxwH3oDL04o/PhwWpU/qS0mH3OCsMpb91vtLx1gRptDfAnPwlNesiveJ2tsmNkP7p7x4UmOdh4slYW1ABzGyMtFXacdYkTGQ98d0uk7AUgOson9l1dT0aMbKlpVri0y/xG+1qqdOop1N14ro3MEJcvSxOegz2uyc2PnSZTi37m9LIxcgwyfZsnEHqhAN0CHrIwpUfU9Ei7mIN5p7sAiTvBeP5M3xvWAkLBFnDpLCCTPeHa7N70SVJjKNlUy2VQaI9lRH6FSJjMMN/Ew4pDFksxWAV05efx97C46gLLoTQy4hyO7FicjTWt0eOQ1ALExy24e8Kvi1Zx7ZtGy1XtW5pugyP55w6gwJNJRkPeMigfWe2KlJKnc2nX2yDesRl74ThaRhnozdmlqZHjDp+Q1yDJc49Ix3NrYUA2CA7EdQ7hH+N/RWjNkO5uJwUi1tCUrRrT773mNc8rS5QGNhNnUcxJdlbf2YRUigSyFHyi4zwxuEm+BZhjC+yQgL0n6eF7SBCyWCHqultEK5m8LAOSHYV01gEnls69nLb8IwSHBn2KZjTS/r91AfOhKd7zP2Moh2v2+S4aR1cS+6sQgtn84Z4iBbiHkOMd47y90fX7peCwzCheUkuLf5UhT+HMENUPCnm9BHX9+q6T5bCoHjoOzp138uw1ORSh315porEb1BTT3PXI53BiRtLzG+4r8tkW1bNeZX+kNUOBSUl8ilhU5WaCV0IqRURqDYQdejMiEhxKWjFivGfQ==
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch02.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(376002)(396003)(346002)(36840700001)(46966006)(7696005)(6916009)(426003)(82310400003)(7636003)(26005)(4326008)(478600001)(336012)(966005)(186003)(70586007)(70206006)(36756003)(356005)(83380400001)(44832011)(5660300002)(36860700001)(54906003)(8676002)(47076005)(9786002)(36906005)(8936002)(82740400003)(15650500001)(2906002)(6666004)(107886003)(316002)(2616005)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2021 13:11:11.8636 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2fdd9d10-7f3f-4070-c36a-08d8d8c5a874
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: CY1NAM02FT005.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6372
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

In the thread [1] Greg suggested that we move the driver
to the clk from the staging.
Add patches to address the concerns regarding the fractional and
set rate support in the TODO.

The patch set does the following
- Trivial fixes for kernel doc.
- Move the driver to the clk folder
- Add capability to set rate.
- Add fractional support.
- Add support for configurable outputs.
- Make the output names unique so that multiple instances
do not crib.

Changes in the v3:
Added the cover-letter.
Add patches for rate setting and fractional support
Add patches for warning.
Remove the driver from staging as suggested

v4:
Reorder the patches.
Merge the CLK_IS_BASIC patch.
Add the yaml form of binding document

v5:
Fix a mismerge

v6:
Fix the yaml warning
use poll timedout

v7:
Binding doc updates
Use common divisor function.

v8:
Fix Robs comments

v9:
Fix device tree warnings

v10:
Reorder the patches
Update the speed grade description.

[1] https://spinics.net/lists/linux-driver-devel/msg117326.html

Shubhrajyoti Datta (9):
  staging: clocking-wizard: Fix kernel-doc warning
  staging: clocking-wizard: Rename speed-grade to xlnx,speed-grade
  staging: clocking-wizard: Update the fixed factor divisors
  staging: clocking-wizard: Allow changing of parent rate for single
    output
  staging: clocking-wizard: Add support for dynamic reconfiguration
  staging: clocking-wizard: Add support for fractional support
  staging: clocking-wizard: Remove the hardcoding of the clock outputs
  dt-bindings: add documentation of xilinx clocking wizard
  clk: clock-wizard: Add the clockwizard to clk directory

 .../bindings/clock/xlnx,clocking-wizard.yaml       |  72 +++
 drivers/clk/Kconfig                                |   9 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/clk-xlnx-clock-wizard.c                | 636 +++++++++++++++++++++
 drivers/staging/Kconfig                            |   2 -
 drivers/staging/Makefile                           |   1 -
 drivers/staging/clocking-wizard/Kconfig            |  10 -
 drivers/staging/clocking-wizard/Makefile           |   2 -
 drivers/staging/clocking-wizard/TODO               |  12 -
 .../clocking-wizard/clk-xlnx-clock-wizard.c        | 333 -----------
 drivers/staging/clocking-wizard/dt-binding.txt     |  30 -
 11 files changed, 718 insertions(+), 390 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
 create mode 100644 drivers/clk/clk-xlnx-clock-wizard.c
 delete mode 100644 drivers/staging/clocking-wizard/Kconfig
 delete mode 100644 drivers/staging/clocking-wizard/Makefile
 delete mode 100644 drivers/staging/clocking-wizard/TODO
 delete mode 100644 drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
 delete mode 100644 drivers/staging/clocking-wizard/dt-binding.txt

-- 
2.1.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
