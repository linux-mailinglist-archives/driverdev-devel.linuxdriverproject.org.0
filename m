Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A242A6715
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 16:07:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F082F8666F;
	Wed,  4 Nov 2020 15:07:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7iY4Rzncyus; Wed,  4 Nov 2020 15:07:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE0628664E;
	Wed,  4 Nov 2020 15:07:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A6E991BF32E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 15:07:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A185C847F8
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 15:07:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bAAwsrUWZCq5 for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 15:07:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2041.outbound.protection.outlook.com [40.107.243.41])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B63B0847EB
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 15:07:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EGrtHT/uYgh/nMpQAym8skmFt3nxXJ8BLgIetXq8+ihy69adnKqpK6UW/wBiMcG5Qzphcm50qwq5t4w054qYmtDq3XfUJ4Qe9n3DHhzrBSfo08ONGOyBFaqOZUpTvdl9znn791Ozem3pTW/mz6RzriF6+PjQHYDulKlJ7fH9/ezBk6fNPxqNIdalnqS7uBR0xCFBEMrTQX4aK825rsmjyPDgazI7MCLUZ+jL7wL7KR+FdrDVXEgVvyr8FClO8kUjehAavByxEV0sy/F2Bi/pLaIhzz8NEdx8ULUaeEostY+zR2ZA8rYIF6sZB2yu1yp2AcXQc3Ilcap0bBMyy7Y1IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5XIKA0GruvDOTe9SMRwF6sMKFLRDLLPZ5CkvOIaqA0=;
 b=b+9F5yr42iydnvs3kpeqrwjvuCdz2mQlwL7f2pKbuIa0XT034sePZLjDws8KrYiFIqs9bDWZq2HmBpZMooLMl9Q2zy6S3+ngcpA9CnI+VGUGURgpBexRpYxJyYzMXbiZ4vQy1XJELk+nQYFZM3JAphQzhADLqyP2riRrYc1+jid36EDeL9UtzADhWc8Xh2rPJnoWczzPZSPNgG0/WgvvcYfYcXIqW5Qn89rSErmttb29xf2RCLTKjh00X0hrJzl/BcJNlRRW9s4ysVfrPmy4mw4+EcjC2OowmfEqTnWjFQDtDLp9U87txTkUBRiUUD+dTGItxVIelqBv2lCHCprRfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l5XIKA0GruvDOTe9SMRwF6sMKFLRDLLPZ5CkvOIaqA0=;
 b=UnCcjSJPKnrMPmpHmiCRiFDVN7ZtzsErULRsDoIE7up1spu20N7xApOaZ93VPBMOrO6qpcjEmdOCBShzcYNpsftDqsO+F1J2z3epx2B38gtHKNp078jWddm60xwwLEc8mbET5+W+SVndCVKTogWBNTK1vKwCR7KzzJFQYcGhkqs=
Received: from BL1PR13CA0287.namprd13.prod.outlook.com (2603:10b6:208:2bc::22)
 by SN6PR02MB5102.namprd02.prod.outlook.com (2603:10b6:805:67::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Wed, 4 Nov
 2020 15:07:29 +0000
Received: from BL2NAM02FT043.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:2bc:cafe::93) by BL1PR13CA0287.outlook.office365.com
 (2603:10b6:208:2bc::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.10 via Frontend
 Transport; Wed, 4 Nov 2020 15:07:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch01.xlnx.xilinx.com;
Received: from xsj-pvapexch01.xlnx.xilinx.com (149.199.62.198) by
 BL2NAM02FT043.mail.protection.outlook.com (10.152.77.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3520.15 via Frontend Transport; Wed, 4 Nov 2020 15:07:29 +0000
Received: from xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 4 Nov 2020 07:06:52 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 4 Nov 2020 07:06:52 -0800
Envelope-to: git@xilinx.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=49678 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kaKN8-0007UB-Nt; Wed, 04 Nov 2020 07:06:51 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <linux-clk@vger.kernel.org>
Subject: [PATCH v7 0/7] clk: clk-wizard: clock-wizard: Driver updates
Date: Wed, 4 Nov 2020 20:36:40 +0530
Message-ID: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 13b24c5f-4871-42dc-21b2-08d880d35906
X-MS-TrafficTypeDiagnostic: SN6PR02MB5102:
X-Microsoft-Antispam-PRVS: <SN6PR02MB510247971697314F9C43EFDBAAEF0@SN6PR02MB5102.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:207;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /PQyJgLYqYW2pAXkqBr1LBvCp5s23rBBYZmPABmLqdVoxHOIdJzdFDe1QwMScbk0P4521lJYm8eQ2IVaczzVOPCHm9nVApneQ4QJCeatNyLy+SrEhriVYQAeVNs2nmtjBnz8+5k+2cAmBYTASCeF8/g9H6xETcy4aaujHqsFnyfpbJkQU7z+DWB0gyetqUDBUDSm6btuDX6zMYsO39GNRzSx+HLGaXNk5fO2gei5jMRo5sKZNs+4L4ei4BLHw49xQG11HblYDgyydz08ANuO+rmy1VTb3LQqKBPVD0zX4qKfb1Z3mT7+XOE3/M9sAvk4wDO7txKR15MbIBLtyL1GC9e+zCGMCmd04c74zQ+V5EvdtEICwMWsRBpdG2Ksx7cjB7INkpBOlOfEe7GS/wef26tWKzl8HlIAJbmE0Nqyo1zlfnF9qS2aMZHGs/ZY77FV/LT2gd49y8S4ePhIAvkdeFeODTH3zZFgXacCiWHaI1xut9gHegR02HxowzVimLlr
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch01.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(396003)(39850400004)(46966005)(36756003)(4326008)(426003)(186003)(316002)(44832011)(478600001)(82740400003)(36906005)(336012)(6666004)(2906002)(7636003)(966005)(47076004)(356005)(54906003)(8936002)(107886003)(83380400001)(82310400003)(6916009)(2616005)(7696005)(5660300002)(9786002)(70206006)(70586007)(15650500001)(26005)(8676002)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2020 15:07:29.1544 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 13b24c5f-4871-42dc-21b2-08d880d35906
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: BL2NAM02FT043.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5102
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

[1] https://spinics.net/lists/linux-driver-devel/msg117326.html

Shubhrajyoti Datta (7):
  dt-bindings: add documentation of xilinx clocking wizard
  clk: clock-wizard: Add the clockwizard to clk directory
  clk: clock-wizard: Fix kernel-doc warning
  clk: clock-wizard: Add support for dynamic reconfiguration
  clk: clock-wizard: Add support for fractional support
  clk: clock-wizard: Remove the hardcoding of the clock outputs
  clk: clock-wizard: Update the fixed factor divisors

 .../bindings/clock/xlnx,clocking-wizard.yaml       |  65 ++
 drivers/clk/Kconfig                                |   9 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/clk-xlnx-clock-wizard.c                | 689 +++++++++++++++++++++
 drivers/staging/Kconfig                            |   2 -
 drivers/staging/Makefile                           |   1 -
 drivers/staging/clocking-wizard/Kconfig            |  10 -
 drivers/staging/clocking-wizard/Makefile           |   2 -
 drivers/staging/clocking-wizard/TODO               |  12 -
 .../clocking-wizard/clk-xlnx-clock-wizard.c        | 333 ----------
 drivers/staging/clocking-wizard/dt-binding.txt     |  30 -
 11 files changed, 764 insertions(+), 390 deletions(-)
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
