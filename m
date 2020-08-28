Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B380255BB4
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Aug 2020 15:55:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E1619203DD;
	Fri, 28 Aug 2020 13:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BfKr+lBYawA6; Fri, 28 Aug 2020 13:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B589E203EF;
	Fri, 28 Aug 2020 13:55:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 994C91BF2BF
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 13:55:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 957C986D1D
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 13:55:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p7VzAF6_AlHQ for <devel@linuxdriverproject.org>;
 Fri, 28 Aug 2020 13:55:06 +0000 (UTC)
X-Greylist: delayed 00:14:39 by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2070.outbound.protection.outlook.com [40.107.243.70])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9B50786DD2
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 13:55:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XAtiOIapAHkyQZwq7tGDUIJRolYqwcvWeIU3G+piB3yxkI5tplqY3RsqHrZtLG7pWcVKmAZbgiWqUsiLyBpVtigA3uumxNLgPhhAahfM6mM+orii3CpzLItLLG0pgVnuI8hiQqFx9+XHU1enPdZqUKgzOpP/SNTjrFSs+fWQKB0hj1F0GevhICrUNFYrdjgq9cajrlWX5aubJ6i/ZeJ6xa91bsHCZQPKQTwfQdoF1MGbXe0nV+Sv7yy9aQKbTQU3ENafbc+sqGif/b0p9GGozYVwsWwvnKrTHelrgDJcqoJfJqOehw+0eCoxHj9/WyXSma0mjjnprupSd39tjnWsqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CWNw/uFzzcTbbb546rFGvYtEV7r5RGaHTN4/9EQwNQ=;
 b=BWA/BKnXL6mLIW4HcSC34Y8gZeV9M4PHUaATJBbmF5mafdGRdmIPhkVt01I1dD4akPswL1DCglx2YqvWq0BfpW73CVC8R6XxnNeFsfzybDv9AftVjjSwsb5/LCUNXYWPF9LN3jKenAgrrZ9r/T/pDA/Z7pXMpK26Xyuvj/rk9iA5RtvMkxBdBiNKSsmiaa7SFo/3l7us+4BFjBGIHtJcKkHblLSUal+rmA0j7fCkHUEdTLq6p6Fiop3K3lRpS0yVC/PaK74VFBc+jyQL25X+xkG6p8XqROB9NgdQ4HMpZFMB4fGSr8McRi/l/5ycvXhB8Sr7LF2f/YFDzkgFek721w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=baylibre.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1CWNw/uFzzcTbbb546rFGvYtEV7r5RGaHTN4/9EQwNQ=;
 b=oiH5dcGw4YyeKFZB9aznFaA7vBV3clQqEGsKk0eciR60801eoCRV7mV0wOoNYBgbvUDlA7H5SLXuoUf5gpGfcFOJVuvMWUqjLU7qSv4yQDgSS2TRp7nRXnlSjcUjUCyZBHcTIEiMvSZ1kNMPG5SAB+MDDTqAaK2qq90HYTgsr0I=
Received: from SA9PR11CA0018.namprd11.prod.outlook.com (2603:10b6:806:6e::23)
 by BN6PR02MB2643.namprd02.prod.outlook.com (2603:10b6:404:5c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24; Fri, 28 Aug
 2020 13:40:03 +0000
Received: from SN1NAM02FT018.eop-nam02.prod.protection.outlook.com
 (2603:10b6:806:6e:cafe::5a) by SA9PR11CA0018.outlook.office365.com
 (2603:10b6:806:6e::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19 via Frontend
 Transport; Fri, 28 Aug 2020 13:40:02 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT018.mail.protection.outlook.com (10.152.72.122) with Microsoft SMTP
 Server id 15.20.3326.19 via Frontend Transport; Fri, 28 Aug 2020 13:40:02
 +0000
Received: from [149.199.38.66] (port=57271 helo=smtp.xilinx.com)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kBebI-0004sA-Bs; Fri, 28 Aug 2020 06:39:28 -0700
Received: from [127.0.0.1] (helo=localhost)
 by smtp.xilinx.com with smtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kBebq-0005os-CT; Fri, 28 Aug 2020 06:40:02 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 07SDe0EV028008; 
 Fri, 28 Aug 2020 06:40:00 -0700
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1kBebo-0005it-0V; Fri, 28 Aug 2020 06:40:00 -0700
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH v6 0/8] clk: clk-wizard: clock-wizard: Driver updates
Date: Fri, 28 Aug 2020 19:09:48 +0530
Message-Id: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 4e119a77-58c4-4d54-5b62-08d84b57ddc4
X-MS-TrafficTypeDiagnostic: BN6PR02MB2643:
X-Microsoft-Antispam-PRVS: <BN6PR02MB264396CAB12E575E1278416FAA520@BN6PR02MB2643.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:207;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zIhjjoO/trY2NVqXw0jtmRrui1tUvokzh5BCQh6ShmKvcha19aT3CCFdZuwgQ5HnAZkPo7NdisI3XvdSmPb/e+q0+Fs2rskLTMcv/lKYO79Ernx3hPPCJb71XtKj8Gq1eWlF6Pm/3kRdtiTjLM8lQqFcHSu+Oc4d2meIJzvQbjOT3FrB8tqIszu+FD/hdZc7Q0fJY7WK6KNlAxF4gkj2drclh/v9CcIcXBrMf5zKIt4qCPIPs2qYhsSd3xYW6lbcsg42MS44GwJD4blLYMHrQY80cIeuBXk//bXg8fGfqKuLnLO+E2r5ySI1w+SWudcKxAyWTCPcD7Q3+aHE65ySkrmP/2J6+2ZDj7nM3zkPovA5QnU4/XuNwzPg9ln5aw2olZFH5CiOfJ5VE1ZzR694TSY5S6J5Pxl2LRhDCQACGasN6A1f3qgT6Tul+DLru5fbmQfVYniFpPXzOvA5HjNzevXg+wNO4hQeR9cZwRlbTFZXr71kubiwsVlpRHsfIfyh
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFS:(39860400002)(136003)(396003)(346002)(376002)(46966005)(4326008)(356005)(336012)(2616005)(8936002)(44832011)(9786002)(82310400002)(6916009)(8676002)(70586007)(81166007)(107886003)(966005)(186003)(5660300002)(15650500001)(426003)(478600001)(36756003)(7696005)(26005)(70206006)(6666004)(47076004)(82740400003)(2906002)(316002)(83380400001)(42866002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2020 13:40:02.7696 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e119a77-58c4-4d54-5b62-08d84b57ddc4
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-AuthSource: SN1NAM02FT018.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2643
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
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org
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

[1] https://spinics.net/lists/linux-driver-devel/msg117326.html

Shubhrajyoti Datta (8):
  dt-bindings: add documentation of xilinx clocking wizard
  clk: clock-wizard: Add the clockwizard to clk directory
  clk: clock-wizard: Fix kernel-doc warning
  clk: clock-wizard: Add support for dynamic reconfiguration
  clk: clock-wizard: Add support for fractional support
  clk: clock-wizard: Remove the hardcoding of the clock outputs
  clk: clock-wizard: Update the fixed factor divisors
  staging: clocking-wizard: Delete the driver from the staging

 .../bindings/clock/xlnx,clocking-wizard.yaml       |  71 +++
 drivers/clk/Kconfig                                |   9 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/clk-xlnx-clock-wizard.c                | 657 +++++++++++++++++++++
 drivers/staging/Kconfig                            |   2 -
 drivers/staging/Makefile                           |   1 -
 drivers/staging/clocking-wizard/Kconfig            |  10 -
 drivers/staging/clocking-wizard/Makefile           |   2 -
 drivers/staging/clocking-wizard/TODO               |  12 -
 .../clocking-wizard/clk-xlnx-clock-wizard.c        | 333 -----------
 drivers/staging/clocking-wizard/dt-binding.txt     |  30 -
 11 files changed, 738 insertions(+), 390 deletions(-)
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
