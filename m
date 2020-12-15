Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B8A2DAF42
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 15:46:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62B6B86E59;
	Tue, 15 Dec 2020 14:46:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WJANcX9OSBXr; Tue, 15 Dec 2020 14:46:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7844E86E5E;
	Tue, 15 Dec 2020 14:46:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 872941BF315
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 14:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 839BA871B6
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 14:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TwWGJSSh7eda for <devel@linuxdriverproject.org>;
 Tue, 15 Dec 2020 14:46:10 +0000 (UTC)
X-Greylist: delayed 03:59:21 by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2077.outbound.protection.outlook.com [40.107.92.77])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 96C8D86614
 for <devel@driverdev.osuosl.org>; Tue, 15 Dec 2020 14:46:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F55OGZQjTw7Dky+YhxZkiYwlPBgRM3N/otb1gzu7JoyUYwQ5x6AZrsIcKs5Rdcho8e+VX3oOyOSAmCjwOlTHC+Cw/Sr1UI/25oSc7gQ+hUUO5CIYsIqSxZYH5mLaIyumErcwiZfEGhXgPiwvWuy3KvHdt8idyZfHw8FaHxzEne0o6ihENRqXUz22JVf2yPp8pxFOlbQznWgy/F2X0DSqVq/n/LjrU78GMz1yH3I8AGVOr0pXWyKOLkS4cZBCNmSW2O+UWVIOBk0CMKnqs9vORaCnVanjKFUBpyYi+Z090xREvwZlLBSTbMl9iPpA2O7jfY0ZLYwkjVx6YO5vXxWVew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uiukqRLKLe9e23yXKpPvPyq+ED5RgzNbDC3lDfoCoNU=;
 b=ZSyRsqEJgso7U1yQ+Vr8vr2fQAKKuXgRYYEoHmkURs8o62qoipsN1dw38GR8+sfw+4lv92p0y4SeYxHotLCivCdyTS2qxuLi2op+qFL1H9Sn3gIGCp+Ufhaj2orESbpIsnzVyZr12qzk+V83Q1+T/XC1nN0M7oiK2Bv9MPPh52XMoEyKoRhklRa3nv2sYwbWQGxlZySE2pmxocfRKUHW7rRpN0SlZ1kzhLwb3cYnGAmiUZvY0xg+xaKipyJCddHyF23VtYahYvLRkXeFHEL8HcHtQlNPIT6kGtdNrAMlIF4rPJHUOikhWtqEzGaNWXNrJ3tk2XbwrlqdbXiflC5aIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=driverdev.osuosl.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uiukqRLKLe9e23yXKpPvPyq+ED5RgzNbDC3lDfoCoNU=;
 b=OeLjaE+ehJ7NJhQj8ckUJsC2/VLpUPklTZKzFc+H3m3aLpd+UmTWNi4sOg5wBXpqmvOOBfE9xIStKOmcR7dY9sKQE6p3IT1u7TXygZ0MYWHsJ4IRi/3fTbQOvttOKAbC3gcOVCzXvLyEbtZW33yF0eBfgzm6D+W8KbG8+iCR7Vg=
Received: from SN1PR12CA0060.namprd12.prod.outlook.com (2603:10b6:802:20::31)
 by CH2PR02MB6661.namprd02.prod.outlook.com (2603:10b6:610:7c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12; Tue, 15 Dec
 2020 09:13:53 +0000
Received: from SN1NAM02FT052.eop-nam02.prod.protection.outlook.com
 (2603:10b6:802:20:cafe::b8) by SN1PR12CA0060.outlook.office365.com
 (2603:10b6:802:20::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend
 Transport; Tue, 15 Dec 2020 09:13:53 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; driverdev.osuosl.org; dkim=none (message not
 signed) header.d=none;driverdev.osuosl.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch01.xlnx.xilinx.com;
Received: from xsj-pvapexch01.xlnx.xilinx.com (149.199.62.198) by
 SN1NAM02FT052.mail.protection.outlook.com (10.152.72.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3654.12 via Frontend Transport; Tue, 15 Dec 2020 09:13:53 +0000
Received: from xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Tue, 15 Dec 2020 01:13:50 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Tue, 15 Dec 2020 01:13:50 -0800
Envelope-to: git@xilinx.com, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 devicetree@vger.kernel.org, sboyd@kernel.org,
 linux-clk@vger.kernel.org
Received: from [172.30.17.109] (port=43944)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <michal.simek@xilinx.com>)
 id 1kp6Oz-0006QG-Kc; Tue, 15 Dec 2020 01:13:49 -0800
Subject: Re: [PATCH v7 0/7] clk: clk-wizard: clock-wizard: Driver updates
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 <linux-clk@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <a62e0871-d6bd-d233-fdea-014ba638e782@xilinx.com>
Date: Tue, 15 Dec 2020 10:13:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
Content-Language: en-US
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0103caa6-f53f-43c0-c4ec-08d8a0d9be24
X-MS-TrafficTypeDiagnostic: CH2PR02MB6661:
X-Microsoft-Antispam-PRVS: <CH2PR02MB6661C552B52FD1D6378BF5D5C6C60@CH2PR02MB6661.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:556;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hIPzrEdpYCIC+D0f5rLgWFDoFDFQ0Xqtf4pbygDFfzAqhpJYbSiZmAGVKKQcGKMmsY3NxzjWSfB/pPdi3wVYpYh9hfaBbkB5T5HJAQdS8/5oRrzKOd4nK/xXez1IBCV6AKTyvefMb9rSKpw6GccRnjTZsX2qWAAGjGVpXtnJ1v9RA0/Ye7kOo49grLoYzZTzsGA38Jr7b77tDOuJ/zAkaUfSEWXuysXKsi7S/DfsMf941ISBsgwfWKHVXJ7NkyE6Tx3aBgMnpXxWb711vxGR8m9e+2AYeBWpI+pjA76eHcIzAGHra0jZAoGN06har/mUIyRF254dVutOZ4bIUXwvDV/9Gp0XVj2IJct5MglJmzeo/1C17iP56mwNjVvdzX8GILXPe1YH7vqjGBmc3U2ZLjFF/a1tUeqyr1ZYZ808DZIKuNTr6mCemb8nfcKzZfo23YO0vc4JKRcKLmOUjV/o9CC+sLdzuRynEw7icNR6Xmc0Bztogy8l9fYLZrTXQ2i3UDHNckCYouA2epwFQMfZFA==
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch01.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(136003)(376002)(346002)(46966005)(31686004)(2616005)(31696002)(186003)(7636003)(2906002)(44832011)(110136005)(9786002)(47076004)(966005)(36756003)(26005)(70206006)(508600001)(8676002)(426003)(356005)(15650500001)(83380400001)(82310400003)(4326008)(336012)(36906005)(70586007)(8936002)(5660300002)(6666004)(54906003)(50156003)(43740500002);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2020 09:13:53.0554 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0103caa6-f53f-43c0-c4ec-08d8a0d9be24
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch01.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: SN1NAM02FT052.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6661
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 mturquette@baylibre.com, git@xilinx.com, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Stephen,

On 04. 11. 20 16:06, Shubhrajyoti Datta wrote:
> 
> In the thread [1] Greg suggested that we move the driver
> to the clk from the staging.
> Add patches to address the concerns regarding the fractional and
> set rate support in the TODO.
> 
> The patch set does the following
> - Trivial fixes for kernel doc.
> - Move the driver to the clk folder
> - Add capability to set rate.
> - Add fractional support.
> - Add support for configurable outputs.
> - Make the output names unique so that multiple instances
> do not crib.
> 
> Changes in the v3:
> Added the cover-letter.
> Add patches for rate setting and fractional support
> Add patches for warning.
> Remove the driver from staging as suggested
> 
> v4:
> Reorder the patches.
> Merge the CLK_IS_BASIC patch.
> Add the yaml form of binding document
> 
> v5:
> Fix a mismerge
> 
> v6:
> Fix the yaml warning
> use poll timedout
> 
> v7:
> Binding doc updates
> Use common divisor function.
> 
> [1] https://spinics.net/lists/linux-driver-devel/msg117326.html
> 
> Shubhrajyoti Datta (7):
>   dt-bindings: add documentation of xilinx clocking wizard
>   clk: clock-wizard: Add the clockwizard to clk directory
>   clk: clock-wizard: Fix kernel-doc warning
>   clk: clock-wizard: Add support for dynamic reconfiguration
>   clk: clock-wizard: Add support for fractional support
>   clk: clock-wizard: Remove the hardcoding of the clock outputs
>   clk: clock-wizard: Update the fixed factor divisors
> 
>  .../bindings/clock/xlnx,clocking-wizard.yaml       |  65 ++
>  drivers/clk/Kconfig                                |   9 +
>  drivers/clk/Makefile                               |   1 +
>  drivers/clk/clk-xlnx-clock-wizard.c                | 689 +++++++++++++++++++++
>  drivers/staging/Kconfig                            |   2 -
>  drivers/staging/Makefile                           |   1 -
>  drivers/staging/clocking-wizard/Kconfig            |  10 -
>  drivers/staging/clocking-wizard/Makefile           |   2 -
>  drivers/staging/clocking-wizard/TODO               |  12 -
>  .../clocking-wizard/clk-xlnx-clock-wizard.c        | 333 ----------
>  drivers/staging/clocking-wizard/dt-binding.txt     |  30 -
>  11 files changed, 764 insertions(+), 390 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
>  create mode 100644 drivers/clk/clk-xlnx-clock-wizard.c
>  delete mode 100644 drivers/staging/clocking-wizard/Kconfig
>  delete mode 100644 drivers/staging/clocking-wizard/Makefile
>  delete mode 100644 drivers/staging/clocking-wizard/TODO
>  delete mode 100644 drivers/staging/clocking-wizard/clk-xlnx-clock-wizard.c
>  delete mode 100644 drivers/staging/clocking-wizard/dt-binding.txt
> 

Can you please take a look at this series?

Thanks,
Michal
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
