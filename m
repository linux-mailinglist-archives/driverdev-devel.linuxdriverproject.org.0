Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E91332777
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 14:46:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9B494B23E;
	Tue,  9 Mar 2021 13:46:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWXagyjD4cwG; Tue,  9 Mar 2021 13:46:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1839246E35;
	Tue,  9 Mar 2021 13:46:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B2CA1BF3F2
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 13:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 242F94BA7C
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 13:46:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TlxZbpaQ-mY2 for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 13:46:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2056.outbound.protection.outlook.com [40.107.236.56])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B2AFC46E35
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 13:46:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HDxHwuO/hytF+otvLkmSHvch+TbBWYD9E155BKcuScVbgD4EGsRlnQd+iNEccCvszxO2QhgGuAwy48X41QPamehg+PuHGjprI4frNo4ol6nrGu55C5VQga24obNQriBZv23i2Eb3tor2jorj8zbXkqotoTw87Z1u3oIoycuDKC16liB3RAxC8kMfyF1VO1nyal/tIWkDKmqH466WjkBhNbCbV/yoCWg8rMIw4y1DwHg/Q8CWHjK5yf1IckPsTbgaXXHHxAf96n66R992jVBJ6yfoioRwKyjDdC5wrSwgzCO2ae3Qd+4PcWhNfiw37CA9t6ZeveE6d5/TATvkBthqiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5G9b0s+qG1hIErVW4PYoWErpQ/LBtT7SZfl9NKlblHE=;
 b=FKnIcfzUdNe/LovIM2ckq2YYbNi6iVEGB7nHo6NyMQJaPvAaWZEZ/c+kF8Ebdp78GQq2QDBoB0SVibYuyheoeFTWJwsBz9Ie8HP2xoqnIOQoLoILGeldc2xRjHe6v+50VgcSxQpc2sGVu57RB7dNv5wCGTOkqFmErYqQzBb/iZXQl5EDCkjUzm0x3iYkldQs550a460t53JoTMGYet+4lP1cTinX9vw61rCIzKBf6UTq+H7pGVn5GDNB6rVqfwBsw9Lyz9VoGhQk7aJDUNwK22dZq/CEyJHfyTbpkBDunrrfvM1BMcY3r4yKzK+wPLUTac3W+VPMPNF+oWrpvwltoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5G9b0s+qG1hIErVW4PYoWErpQ/LBtT7SZfl9NKlblHE=;
 b=SU9CqZSHK7YTi8roGKLT5VmC4CEssLOa0/kM/8mN4fIO8MtxQfIKqHTJMk2raWBEsuzjGtlB5/E1taL6jA4HA4XYsTp7JeXtgfM/ZPXplyoVdqYO0ADRCQkLe5aIu6adwY4tP0/beIMgccVn2YWYF39VzU1HSy8ugXq0jGHrg7g=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Tue, 9 Mar
 2021 13:46:01 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701%7]) with mapi id 15.20.3912.027; Tue, 9 Mar 2021
 13:46:01 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: wfx: remove unused included header files
Date: Tue, 09 Mar 2021 14:45:56 +0100
Message-ID: <2505525.pDR9D5mlbe@pc-42>
Organization: Silicon Labs
In-Reply-To: <YEdzHxR2VOwS8Fr/@kroah.com>
References: <20210211143637.GA177425@LEGION> <5120192.kWiexivLR2@pc-42>
 <YEdzHxR2VOwS8Fr/@kroah.com>
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-ClientProxiedBy: SN4PR0201CA0040.namprd02.prod.outlook.com
 (2603:10b6:803:2e::26) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 SN4PR0201CA0040.namprd02.prod.outlook.com (2603:10b6:803:2e::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17 via Frontend
 Transport; Tue, 9 Mar 2021 13:46:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 91050c2b-14b4-406d-d9b4-08d8e301acf8
X-MS-TrafficTypeDiagnostic: SA0PR11MB4734:
X-Microsoft-Antispam-PRVS: <SA0PR11MB473417070C171DF2EAEA983793929@SA0PR11MB4734.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1332;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jCXvS77h2y1azgkEg9CQ8/VEt25XI79eEcpuLOLLPuGLCM5LuF65LCYjVHpwtFnvhLh2vjwjNytZZ/LtHougL0/GqONmbTj3kWdJkSBrrDHHc7uaApK9JJOkh5s4F0GRANS2znIqNQlNTY888/ImB73+9iRMAQg9e9dt6U0NLEeApaJ78Kxu2gKrkjJOwD++TqhHzrT59WczL4xx1OKA5ngM9vb9Roti1dNaUN59K2fbhZohLl/5VP3EOWIWOMESpWvvzHbtXR9Un/NwPDNEEfuGr0Zuyz5eWnVKOTTdO8jD1vfjH6HDAxjMCK46oUiTKfQfOHcQuDSoIzcKs64m5IZitLKhXTw1n/pAs0YnOBOsxUujtqDreStkuWzwV4xXoibrxJACqcEHP6JwFYvKMA7cbmeidc/9UpnXbSRKnpWSaRX526/hcexmEaLBpm8oPBfli5Bg6FSRuTLSsnFMOGwUtcZjdZHkcCNee2W+/JPydiH1Nry8f2s4junr4Dkt8HJIPe6klXmtE/XcKrO5g64Q3JX6sqRihq35XBMY1njrI24TUsfWEADseBjzhvFD8h+vgZ17zGEelNq4mMvEaw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(39850400004)(376002)(396003)(366004)(86362001)(6666004)(66946007)(66574015)(33716001)(52116002)(66556008)(5660300002)(316002)(8936002)(4326008)(478600001)(186003)(66476007)(36916002)(8676002)(6512007)(6916009)(6506007)(9686003)(83380400001)(2906002)(16526019)(6486002)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?MNJjtdJn0Np+IhAb+oYb6DgV/avDVdsD9LwwoBWGxfGdaSUV6tF/h0wuoY?=
 =?iso-8859-1?Q?n3XPCZnU0twUNGkeI0j7CIdE+QY1UXYvo8UxVRIqjHS4vLv51SgVOFvZLw?=
 =?iso-8859-1?Q?dBrklnLoNf5wc8yyB3YSNZlqSfkKtOuOUZwA8Quc8/Qj/oMExO4Ol9pTo/?=
 =?iso-8859-1?Q?V0IBgTACnZDogPwZvMhjwBDXrNuEA/rEKxMU8H7V7hkGu/Q2j97yPCa/+W?=
 =?iso-8859-1?Q?EkAyEgF2lrzvldKyNDXIsGVO+0Uqhr8ihMvfbjYX0r//FQEKSndrFFeTQv?=
 =?iso-8859-1?Q?avVX286dMKycvwsGOkiNxNiShydbhZsVQeclWYbDpeztQvh6+YKo9cITbm?=
 =?iso-8859-1?Q?4T2hJsuv6K9Fkumnum+jhFCvDF7yzJ0t5TGxpzlTPlH2v1kTskDuFPLQi6?=
 =?iso-8859-1?Q?SBMY+dvGW7EvmRHQ+GJOqkYPdl4UyQZnZla8FmwO/jVlliq165XpP5EdtZ?=
 =?iso-8859-1?Q?FRcoOOGzSlxvdIWmwmINos65d2/E1b32cyKKvWxwBeMDtwFvvAVEfAh4Th?=
 =?iso-8859-1?Q?ZTxiEffhneZjuxhIW9oDUoJJhOvyV2cMvIkNuAQ/rDWlmnNJ3bGEn7p887?=
 =?iso-8859-1?Q?hCiILGve/epTgab6cRnmtq0wbxxdgBKLcN7SIM+Sl8pD6KzzjtSj6I9Gu2?=
 =?iso-8859-1?Q?84Vu0HxOJ9Z8HtN/7j8V9DfgmU0xUULDTJF4uxKWhl6AF0RRhqf12D77q4?=
 =?iso-8859-1?Q?p5v9kD/q1GCRo2Jok5bKVxFg+LtppgM/7V8V3fAnDiXPU0BMqHPR7a4569?=
 =?iso-8859-1?Q?E0fdFBCF86A9KQKjeVgnG3JjLfNStjQOPlFF3rNyn7RfjCxNyx4vHs5Vij?=
 =?iso-8859-1?Q?6UBMiG6Rjeg2KAQxEX0796XM1gudHd4DarnWlGCkwGk+GxqhJr3KLc/RdZ?=
 =?iso-8859-1?Q?UaZVlMI/LMpyfoTRfRSdSAixKGk/oKh9lCWHuLBDe0UKCPXLNOXi7UP4kp?=
 =?iso-8859-1?Q?B1UnXd/CIBymq1ES8ZIFuJu2dR/UGzVDftU3wLhZLRqI5n4kwFha2LfHmO?=
 =?iso-8859-1?Q?sSXU8i8vITSOaIqShaLTla9LSlSBKcQfaCwH/G/Dt3ybm+oNbLXas6jm3E?=
 =?iso-8859-1?Q?8bPYGiDNv63NvKrLX+rkkd1PlZGvlzND5NjZIqJus1I5VZdUqObG3/rcKM?=
 =?iso-8859-1?Q?g1j5Ns5cs4gY/fl2hS+fEyomOxgax6TdED4YLW9BeZlZJsk4R2WkcdQ3q8?=
 =?iso-8859-1?Q?FbyJmM8OhZoND0i+1uOaTVPV4KA5T579ghvP7MHYXxQ/1v9I8CCcPSvTwG?=
 =?iso-8859-1?Q?co0Kf3AEyKg03teCBz2viDUtvjKuzHT3GH9i+eERH6NZobltrBJZNin164?=
 =?iso-8859-1?Q?GokYKmu3mxlNwWuUG2M1NEDyhNsDTWXaNutmTmiTqXD7Z1EQwGD/CjsCJr?=
 =?iso-8859-1?Q?0HOUkPGNBDf1XVBi6ce4DNku0OHTvd1Ir04fRvRN6bmLe0mef++qOxVQyU?=
 =?iso-8859-1?Q?Y4bSq78LAsX+6o+Z?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 91050c2b-14b4-406d-d9b4-08d8e301acf8
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2021 13:46:01.1156 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t7VuWA/5IpvzkfyCSoA/g1SrDhnyy7Nb7VZgFhHRTSY40/pWpbyTPFnxWQ8yC3NoNyCVijKtDVSgblJPD+DDPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4734
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Muhammad Usama Anjum <musamaanjum@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tuesday 9 March 2021 14:07:43 CET Greg KH wrote:
> On Thu, Mar 04, 2021 at 10:43:45AM +0100, J=E9r=F4me Pouiller wrote:
> > Hello Greg,
> >
> > On Tuesday 2 March 2021 16:01:25 CET J=E9r=F4me Pouiller wrote:
> > > Hello Muhammad,
> > >
> > > Sorry, I am a bit late for the review of this patch. Thank you for =

your
> > > contribution.
> > >
> > > On Thursday 11 February 2021 15:36:37 CET Muhammad Usama Anjum =

wrote:
> > > >
> > > > Many header files have been included, but never used. Those =

header
> > > > files have been removed.
> > > >
> > > > Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> > > > ---
> > > >  drivers/staging/wfx/bh.c              | 1 -
> > > >  drivers/staging/wfx/bh.h              | 4 ----
> > > >  drivers/staging/wfx/bus.h             | 3 ---
> > > >  drivers/staging/wfx/bus_sdio.c        | 6 ------
> > > >  drivers/staging/wfx/bus_spi.c         | 7 -------
> > > >  drivers/staging/wfx/data_rx.c         | 5 -----
> > > >  drivers/staging/wfx/data_tx.c         | 5 -----
> > > >  drivers/staging/wfx/data_tx.h         | 3 ---
> > > >  drivers/staging/wfx/debug.c           | 6 ------
> > > >  drivers/staging/wfx/fwio.c            | 2 --
> > > >  drivers/staging/wfx/hif_api_cmd.h     | 4 ----
> > > >  drivers/staging/wfx/hif_api_general.h | 9 ---------
> > > >  drivers/staging/wfx/hif_tx.c          | 4 ----
> > > >  drivers/staging/wfx/hif_tx_mib.c      | 5 -----
> > > >  drivers/staging/wfx/hwio.c            | 3 ---
> > > >  drivers/staging/wfx/hwio.h            | 2 --
> > > >  drivers/staging/wfx/key.c             | 2 --
> > > >  drivers/staging/wfx/key.h             | 2 --
> > > >  drivers/staging/wfx/main.c            | 7 -------
> > > >  drivers/staging/wfx/main.h            | 3 ---
> > > >  drivers/staging/wfx/queue.c           | 4 ----
> > > >  drivers/staging/wfx/queue.h           | 3 ---
> > > >  drivers/staging/wfx/scan.h            | 2 --
> > > >  drivers/staging/wfx/sta.c             | 6 ------
> > > >  drivers/staging/wfx/sta.h             | 2 --
> > > >  drivers/staging/wfx/traces.h          | 3 ---
> > > >  drivers/staging/wfx/wfx.h             | 3 ---
> > > >  27 files changed, 106 deletions(-)
> > > >
> > > > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > > > index ed53d0b45592..cd6bcfdfbe9a 100644
> > > > --- a/drivers/staging/wfx/bh.c
> > > > +++ b/drivers/staging/wfx/bh.c
> > > > @@ -5,7 +5,6 @@
> > > >   * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
> > > >   * Copyright (c) 2010, ST-Ericsson
> > > >   */
> > > > -#include <linux/gpio/consumer.h>
> > > >  #include <net/mac80211.h>
> > >
> > > Though bh.c refers to gpiod_set_value_cansleep()
> > >
> > >
> > > >  #include "bh.h"
> > > > diff --git a/drivers/staging/wfx/bh.h b/drivers/staging/wfx/bh.h
> > > > index 78c49329e22a..92ef3298d4ac 100644
> > > > --- a/drivers/staging/wfx/bh.h
> > > > +++ b/drivers/staging/wfx/bh.h
> > > > @@ -8,10 +8,6 @@
> > > >  #ifndef WFX_BH_H
> > > >  #define WFX_BH_H
> > > >
> > > > -#include <linux/atomic.h>
> > > > -#include <linux/wait.h>
> > > > -#include <linux/workqueue.h>
> > > > -
> > > >  struct wfx_dev;
> > > >
> > > >  struct wfx_hif {
> > >
> > > Ditto, bh.h refers to atomic_t, struct work_struct and struct
> > > completion. If you try to compile bh.h alone (with something like
> > > gcc -xc .../bh.h) it won't work.
> > >
> > > Maybe it works now because we are lucky in the order the headers =

are
> > > included, but I think it is not sufficient.
> > >
> > > [... same problem repeats multiple times in the following ...]
> > >
> >
> > Greg, if nobody has any opinion on that, I think that this patch =

should
> > be reverted.
> =

> Nothing is breaking, why should it be reverted?

Because it is less maintainable?
 =

> You never build a .h file alone :)

hmmm... notwithstanding, I thing that the code should not depend on the =

order the headers are included. You don't?
 =

> Anyway, sure, I'll revert it, what is the commit id?

commit 314fd52f01ea "staging: wfx: remove unused included header files"

Thank you!

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
