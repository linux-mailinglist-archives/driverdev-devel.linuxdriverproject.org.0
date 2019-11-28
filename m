Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEFA10C435
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 Nov 2019 08:06:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13DDB22797;
	Thu, 28 Nov 2019 07:06:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w-OgWKA5Cpnp; Thu, 28 Nov 2019 07:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A752920415;
	Thu, 28 Nov 2019 07:06:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 29FF41BF860
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 26133877A5
 for <devel@linuxdriverproject.org>; Thu, 28 Nov 2019 07:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u9slNIbHA-iX for <devel@linuxdriverproject.org>;
 Thu, 28 Nov 2019 07:06:15 +0000 (UTC)
X-Greylist: delayed 00:15:07 by SQLgrey-1.7.6
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr720081.outbound.protection.outlook.com [40.107.72.81])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4AEEC8779F
 for <devel@driverdev.osuosl.org>; Thu, 28 Nov 2019 07:06:15 +0000 (UTC)
Received: from BN7PR02CA0014.namprd02.prod.outlook.com (2603:10b6:408:20::27)
 by BY5PR02MB6353.namprd02.prod.outlook.com (2603:10b6:a03:1fb::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.19; Thu, 28 Nov
 2019 06:51:02 +0000
Received: from BL2NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by BN7PR02CA0014.outlook.office365.com
 (2603:10b6:408:20::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.19 via Frontend
 Transport; Thu, 28 Nov 2019 06:51:02 +0000
Authentication-Results: spf=softfail (sender IP is 149.199.60.83)
 smtp.mailfrom=gmail.com; driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=fail action=none
 header.from=gmail.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 gmail.com discourages use of 149.199.60.83 as permitted sender)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT022.mail.protection.outlook.com (10.152.77.153) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 28 Nov 2019 06:51:02 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDPj-0007XN-7h; Wed, 27 Nov 2019 22:36:31 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDPe-0005AB-42; Wed, 27 Nov 2019 22:36:26 -0800
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAS6aORJ004512; 
 Wed, 27 Nov 2019 22:36:25 -0800
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@gmail.com>)
 id 1iaDPc-00059i-Cb; Wed, 27 Nov 2019 22:36:24 -0800
From: shubhrajyoti.datta@gmail.com
To: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org
Subject: [PATCH v3 00/10] clk: clk-wizard: clock-wizard: Driver updates
Date: Thu, 28 Nov 2019 12:06:07 +0530
Message-Id: <cover.1574922435.git.shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--6.009-7.0-31-1
X-imss-scan-details: No--6.009-7.0-31-1;No--6.009-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-Matching-Connectors: 132193974626401211;
 (f9e945fa-a09a-4caa-7158-08d2eb1d8c44); ()
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(346002)(136003)(189003)(199004)(8936002)(6666004)(498600001)(70206006)(70586007)(356004)(9686003)(15650500001)(6306002)(316002)(82202003)(50466002)(426003)(7696005)(51416003)(966005)(47776003)(16586007)(14444005)(48376002)(36756003)(76482006)(336012)(73392003)(305945005)(50226002)(2906002)(26005)(4326008)(9786002)(8676002)(86362001)(5660300002)(107886003)(81166006)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR02MB6353; H:xsj-pvapsmtpgw01; FPR:;
 SPF:SoftFail; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c136814f-7f3a-46d2-8060-08d773cf557a
X-MS-TrafficTypeDiagnostic: BY5PR02MB6353:
X-Microsoft-Antispam-PRVS: <BY5PR02MB63536F741949AA23CAE7DCE587470@BY5PR02MB6353.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0235CBE7D0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: btW7ahgs/PjfzyQdO7NRJpUbDPIN2XY2T5mrWBqymwQQRpXvPxbzAz44/shULKWZIXASYXwHeiXS5jvI/04r9JhCIzrxKmjPPVis0pkv++TAucysxDiwXmV5ClT52/T8arFA9YtJto98AmiSCjvhDc5Qp5FkTzSwT9hFj2AzNM8I5TwBNnE0Q+naVrxLFfJihw0WslC8+0jviyL5IKa8OnuVebcK9A/TsDcUvAaImfUU8+yUIHNuu/KBqJ2mZX6qo9ItOjJeJq9+AmXvXvbsjfuCyxH9pww7fLaZRzsC9qhXH7qeRQ3LiMOjHh5xFeKNsxF+yv5M3tUNbrgZE117zI3fllHYHl+LoE6c+zqHlSZ98i/V5K1dyzc2j1rIQ2ZiL7MbIvQ5H2LpPhYW+UC+aLqykYJQTDVhuh+fRvyDdMryGo3ro8bvAgKjK4TUF+WK4UTjA2zZBwOT0xfOF0gyqJF+QA6YRpqW4RkuuNVNT+Q=
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2019 06:51:02.3328 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c136814f-7f3a-46d2-8060-08d773cf557a
X-MS-Exchange-CrossTenant-Id: 5afe0b00-7697-4969-b663-5eab37d5f47e
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5afe0b00-7697-4969-b663-5eab37d5f47e; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR02MB6353
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

[1] https://spinics.net/lists/linux-driver-devel/msg117326.html

Shubhrajyoti Datta (10):
  dt-bindings: add documentation of xilinx clocking wizard
  clk: clock-wizard: Move the clockwizard to clk
  clk: clock-wizard: Fix kernel-doc warning
  clk: clock-wizard: Add support for dynamic reconfiguration
  clk: clock-wizard: Add support for fractional support
  clk: clock-wizard: Remove the hardcoding of the clock outputs
  clk: clock-wizard: Update the fixed factor divisors
  clk: clock-wizard: Make the output names unique
  staging: clocking-wizard: Delete the driver from the staging
  clk: clock-wizard: Fix the compilation failure

 .../bindings/clock/xlnx,clocking-wizard.txt        |  32 +
 drivers/clk/Kconfig                                |   6 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/clk-xlnx-clock-wizard.c                | 710 +++++++++++++++++++++
 drivers/staging/Kconfig                            |   2 -
 drivers/staging/Makefile                           |   1 -
 drivers/staging/clocking-wizard/Kconfig            |  10 -
 drivers/staging/clocking-wizard/Makefile           |   2 -
 drivers/staging/clocking-wizard/TODO               |  12 -
 .../clocking-wizard/clk-xlnx-clock-wizard.c        | 335 ----------
 drivers/staging/clocking-wizard/dt-binding.txt     |  30 -
 11 files changed, 749 insertions(+), 392 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.txt
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
