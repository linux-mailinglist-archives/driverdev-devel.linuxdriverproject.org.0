Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B93E32AC4E
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Mar 2021 22:34:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E88E2431EC;
	Tue,  2 Mar 2021 21:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LffLvcEh0UwZ; Tue,  2 Mar 2021 21:34:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0589A43156;
	Tue,  2 Mar 2021 21:34:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7601BF966
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 21:34:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 26CBF4D8E4
 for <devel@linuxdriverproject.org>; Tue,  2 Mar 2021 21:34:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKiZE79Prc-g for <devel@linuxdriverproject.org>;
 Tue,  2 Mar 2021 21:34:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2086.outbound.protection.outlook.com [40.107.236.86])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 72FC94D7ED
 for <devel@driverdev.osuosl.org>; Tue,  2 Mar 2021 21:34:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gCrMwHbYJl1WpFxI5HWL2ekR2WI/6MgStunUCrgWdP+7IY7VYsZIQkd7YTJV9pBEyftOw3Ml9HvGB4ky46C5zbxRhXQgYvloLeeyBTQ4uyevrLBzl4pBtzPrQj1tEOSeFi4HwRJ8/E58e73MPwSsGclkwW7q9ROedO5RdgTf3U213mpXsP5eNuz1z3eoAVHjKQc61NC/vtIZ9CDYXh6of3eFSdEcjdAC6XaCn4oU1+hAihtNFth55iPVBjDhz/5mccY2HA/rZJGUyUHy6Lhmc3Oluctqyq313OyEaoveo3w4uGvyTQ2q3b1EGTTkGhI5nOjeT4Ks7FJGtoZtUQs6jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C7Cg5YD4X5pWXFCTqIba1wnvmbbaGqzcLuFpSoLmZpE=;
 b=VBm5WJNQUJueXaFcKrdhb7kJFjjv+EmPAYUfzCPktQaqidwXg1WKTwh9/wqkB4cliujdCDLe8OAIeE7te6V0G8QPiAkbI2NDJE2CwsQHQ3EGUo+mmddYm8J5SBLx41F2H2T5Gl+C62j9hYcn5T4q7FWVCLAEuyUmGIeQk2aNivA45NlZPcx+PjM5SIhn4ytkd5gYIPDXYAKzVUo6pOVd0JbubERxeeH5DMzSBZfibGkl8pUbQlD1uLJf6JHhepwv9hDl1rnYTyDHHqPfQTLFR3+VE8lYXPxXmgbz5oRd3TtmnMRasCfer/iy8Wzvfo0wUk8nSehBXi1ngSTEgHTB+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C7Cg5YD4X5pWXFCTqIba1wnvmbbaGqzcLuFpSoLmZpE=;
 b=PL2sUTn92fAvg9tBhu6hGgTMxoVdimXQAwF3GDToSSZcZ4FtwWU7gHo2rUuPHM9mi+zWeadB+rDCr+u6fuKewEDX8lUhE4PSIEXweR7j2FaWoowArAHFpUQDlWBx2UlSaNl86av/aunQhRn4Own8n2le1IHKW4iQLdJLJXIit80=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2654.namprd11.prod.outlook.com (2603:10b6:805:54::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Tue, 2 Mar
 2021 15:01:29 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701%7]) with mapi id 15.20.3890.028; Tue, 2 Mar 2021
 15:01:29 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Muhammad Usama Anjum <musamaanjum@gmail.com>
Subject: Re: [PATCH] staging: wfx: remove unused included header files
Date: Tue, 02 Mar 2021 16:01:25 +0100
Message-ID: <1722736.fQpYkz0vEs@pc-42>
Organization: Silicon Labs
In-Reply-To: <20210211143637.GA177425@LEGION>
References: <20210211143637.GA177425@LEGION>
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-ClientProxiedBy: SA9PR11CA0001.namprd11.prod.outlook.com
 (2603:10b6:806:6e::6) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 SA9PR11CA0001.namprd11.prod.outlook.com (2603:10b6:806:6e::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3890.23 via Frontend Transport; Tue, 2 Mar 2021 15:01:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e7719439-c67c-4528-708d-08d8dd8c0eec
X-MS-TrafficTypeDiagnostic: SN6PR11MB2654:
X-Microsoft-Antispam-PRVS: <SN6PR11MB26546B063C6BC60E1118C99693999@SN6PR11MB2654.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: L3dnSoQF6Qhe6jjELAYL4VeiMuyhIJVWVDeepJOTxwlp3dX4yHuS0avEPIinbWscUV9Hh66KoLTvzzqhtxQEp7J5Sxq7lPGlxhlfv9m9qkIvDATGZH+6XRQAa01E0mv4GnDpd8bmFakI1UIa7vV0t7DUZ7pe8mhVu+EZVdfnxgCzb8N88R7l5Z/X3UfKAsNVN7waJzsWUaOFReeoGOd8o9ZeWU2xql6KoNPhMFhkTNzOTFBV0a6irF/Z75vHQPEJjK79lclYpjb3s+FSJXA/W1KLinrJ0sLTtO63QvL/wohpNcCeCvFphHbrknK8Gdr5np1jRwWxZQchbFGP4WWqupvUMtAFA+lOLxG2N7sT6hHxWBrMW7VOx8UbpUxI1ojj92YtYyY1MfKbe7T0So9jIQFKWkaDeivyx9uQP5/MAT4a7zb8cWWuZM0Avr11Zax3+BwP+J2ttxHsjbZ5pZo3ugQ3U1NpmBl/3uXRsOo1FWU2RuCRLvwMgaGHZ7G9FZLJsOnk4hSfppxBEWQSlFPaqY9NUvgtZ9LI4+apihPqRenZCCG4O0Xwp0MMA0yvlpFm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(366004)(396003)(39850400004)(376002)(52116002)(66946007)(2906002)(36916002)(6506007)(186003)(66556008)(66476007)(16526019)(478600001)(86362001)(6916009)(6486002)(5660300002)(83380400001)(8936002)(66574015)(9686003)(6512007)(8676002)(316002)(6666004)(33716001)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?nlgmSL3kS1Ta5Eey54EBuTN3UV6InqWnfq8gHW6ayPEsDYJCXH87gQzpoJ?=
 =?iso-8859-1?Q?p/eiTB4YGxzIu6qGIoeNRn75BK/4Xwsq+1KUCaHRm+sPKRtdcp41SkGnVQ?=
 =?iso-8859-1?Q?1pq0K0scwpOtR70QfFh/Ag/sLlYXyiOIE9wft44dQ0Q0SlznNE41WglxOa?=
 =?iso-8859-1?Q?io5Liyt0HJNwymAtU5RtgdCYDK5cQdo4TU4x/8L5yyHmLaGXCJYQhxEA6e?=
 =?iso-8859-1?Q?CBTwHh2pDhfyrpAnd3CF68As7nX12QUjQ6LGJnkWvebqG9PTlarFDW6lfa?=
 =?iso-8859-1?Q?EbRlMOGJBvfPQh7oz0grZAL03x20x4iK+Wx5XCXMNExXTd/KgAY5OROj3c?=
 =?iso-8859-1?Q?yw97tkLBsxTd14BmYh1CLIKCY6mBqqtSGDOML6lMuv+sTqa5q2I0DtY6Yi?=
 =?iso-8859-1?Q?798X9URfcCjqIuUEqGvdFlt/RVtd5Jt1+ee5iMkrrUjp4089il81id5lBJ?=
 =?iso-8859-1?Q?9g0rzj0ArhIy9YSKg7GHOT1lQiPcWWxFueL0wXbFoDjs4P1RsTlmp7+uBr?=
 =?iso-8859-1?Q?VQR7PtFG8invizcpFCWvP3/6axh/6K04yw19jgkpUj/vDKKMSGI6qzGr1b?=
 =?iso-8859-1?Q?FQGph9VLzZ7BVowMykEStA2ALu0k96Y9pfXGY/LgeOYZGasB7fMDvY4GRD?=
 =?iso-8859-1?Q?cnwqVD7VUkk04YmiaAVAxgF9KcmpW0nRKt0KZw/+vHb6cV0FzmTwh6ujZ6?=
 =?iso-8859-1?Q?wMrO8PuyMZ2ND2EtH4P3JODBQRA3lycIct41zU6p1fo462veVzAOmUL6Ka?=
 =?iso-8859-1?Q?wQ+Xap6qH//wfEigFtPNjb3zwdpYtm8t4ByV6zWTEej9/pkgcycPBWiRh8?=
 =?iso-8859-1?Q?7MU9OSMBX8jom6M5HCf2YqU8m2Oj748wWhDiZmmRX0NZHHlRfuQ8t+D3hS?=
 =?iso-8859-1?Q?hdW/nOLzSvBK0++Z7xQEZi4Amfj9csdo69jMWVCThTIBwkN6NjJXGZFwIY?=
 =?iso-8859-1?Q?DhhwyiNTJGkWICAurIncmIBrrIY8Y5nqreJ50tq1RQarCGaLDT2mrA6bKn?=
 =?iso-8859-1?Q?1/WXsLn1xzoMEe3rBQl5iSUvGyLG1X4MREWqR5w4TrIdFI4X0fXmlQFkzF?=
 =?iso-8859-1?Q?QC8ghccFGVoIWwp84rMSKI2hBOPRiSlPoIsJY2LNmiH9TJ0dBhR7wbeOCw?=
 =?iso-8859-1?Q?j9PGzur15G7WbmH7eLnD5EJduJEoSunF18CVPqGgRTnFHxHwjUAkF//u6w?=
 =?iso-8859-1?Q?+CpoPS7W8gOPa+8P3Ud7ZdhimzQOordwW+5AcvltRtO0Rze3fiKX3u8qf5?=
 =?iso-8859-1?Q?DF6VkbhlDlXIMfNY0/kwtcxwfBMzF3zOgjPr5fPf6xpT0bmChAnwGM7xtM?=
 =?iso-8859-1?Q?2GB5ZDHV1gIBfBaNgww9TmScKbIDEVJ8NetsIX+G9MOry4fPQJ2MQPDu5b?=
 =?iso-8859-1?Q?fDru5cHFUBziZ3ZiP/PEZQkVdwSu+99sTBqObNnIzWS/HbyImwRgNPubTW?=
 =?iso-8859-1?Q?nQBSlblmphU27sVU?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7719439-c67c-4528-708d-08d8dd8c0eec
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2021 15:01:28.9960 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VKwIQGH4xzBR4VUXP8Ue1rZF+gqc536q1lfiT/EUS/tT9cT7wFs24hbks+CPBCX9gxJkv5vTy0p7uoIGTxRXrA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2654
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Muhammad,

Sorry, I am a bit late for the review of this patch. Thank you for your =

contribution.

On Thursday 11 February 2021 15:36:37 CET Muhammad Usama Anjum wrote:
> =

> Many header files have been included, but never used. Those header
> files have been removed.
> =

> Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> ---
>  drivers/staging/wfx/bh.c              | 1 -
>  drivers/staging/wfx/bh.h              | 4 ----
>  drivers/staging/wfx/bus.h             | 3 ---
>  drivers/staging/wfx/bus_sdio.c        | 6 ------
>  drivers/staging/wfx/bus_spi.c         | 7 -------
>  drivers/staging/wfx/data_rx.c         | 5 -----
>  drivers/staging/wfx/data_tx.c         | 5 -----
>  drivers/staging/wfx/data_tx.h         | 3 ---
>  drivers/staging/wfx/debug.c           | 6 ------
>  drivers/staging/wfx/fwio.c            | 2 --
>  drivers/staging/wfx/hif_api_cmd.h     | 4 ----
>  drivers/staging/wfx/hif_api_general.h | 9 ---------
>  drivers/staging/wfx/hif_tx.c          | 4 ----
>  drivers/staging/wfx/hif_tx_mib.c      | 5 -----
>  drivers/staging/wfx/hwio.c            | 3 ---
>  drivers/staging/wfx/hwio.h            | 2 --
>  drivers/staging/wfx/key.c             | 2 --
>  drivers/staging/wfx/key.h             | 2 --
>  drivers/staging/wfx/main.c            | 7 -------
>  drivers/staging/wfx/main.h            | 3 ---
>  drivers/staging/wfx/queue.c           | 4 ----
>  drivers/staging/wfx/queue.h           | 3 ---
>  drivers/staging/wfx/scan.h            | 2 --
>  drivers/staging/wfx/sta.c             | 6 ------
>  drivers/staging/wfx/sta.h             | 2 --
>  drivers/staging/wfx/traces.h          | 3 ---
>  drivers/staging/wfx/wfx.h             | 3 ---
>  27 files changed, 106 deletions(-)
> =

> diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> index ed53d0b45592..cd6bcfdfbe9a 100644
> --- a/drivers/staging/wfx/bh.c
> +++ b/drivers/staging/wfx/bh.c
> @@ -5,7 +5,6 @@
>   * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
>   * Copyright (c) 2010, ST-Ericsson
>   */
> -#include <linux/gpio/consumer.h>
>  #include <net/mac80211.h>

Though bh.c refers to gpiod_set_value_cansleep()


>  #include "bh.h"
> diff --git a/drivers/staging/wfx/bh.h b/drivers/staging/wfx/bh.h
> index 78c49329e22a..92ef3298d4ac 100644
> --- a/drivers/staging/wfx/bh.h
> +++ b/drivers/staging/wfx/bh.h
> @@ -8,10 +8,6 @@
>  #ifndef WFX_BH_H
>  #define WFX_BH_H
> =

> -#include <linux/atomic.h>
> -#include <linux/wait.h>
> -#include <linux/workqueue.h>
> -
>  struct wfx_dev;
> =

>  struct wfx_hif {

Ditto, bh.h refers to atomic_t, struct work_struct and struct =

completion. If you try to compile bh.h alone (with something like
gcc -xc .../bh.h) it won't work.

Maybe it works now because we are lucky in the order the headers are =

included, but I think it is not sufficient.

[... same problem repeats multiple times in the following ...]

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
