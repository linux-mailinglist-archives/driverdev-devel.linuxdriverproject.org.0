Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C97A332D111
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Mar 2021 11:45:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 159D443201;
	Thu,  4 Mar 2021 10:45:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 12j4tfci3uma; Thu,  4 Mar 2021 10:45:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4703242FBA;
	Thu,  4 Mar 2021 10:45:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 643FA1BF32A
 for <devel@linuxdriverproject.org>; Thu,  4 Mar 2021 10:45:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60F0142FBA
 for <devel@linuxdriverproject.org>; Thu,  4 Mar 2021 10:45:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yfiKbWmzjThh for <devel@linuxdriverproject.org>;
 Thu,  4 Mar 2021 10:45:11 +0000 (UTC)
X-Greylist: delayed 01:01:18 by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2074.outbound.protection.outlook.com [40.107.237.74])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A6924017F
 for <devel@driverdev.osuosl.org>; Thu,  4 Mar 2021 10:45:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S3iQizTUobLMHzmY6ZAowy2Id9mIDm4OPhAmH2pjsIUJxzXhDVMC2lvFAzXS+HRp9b3lctpQkVgApRGQ+CRiHhDDSGirqeIKgLDhNL1O3vI7UVLW+DgCydpXSC6ZaH20HjCCu9HqxTtoieJor+g9FoNjyhDmkETghNG0/DLdcRmg9WrFbSF5xTt1qzSOBZ8O+zzqVZVyWY7y8WhyChYlZW72YdHWtsOuHHdQGSNC7Z93/0Kh44aCJsB1SU1u+ouDZtC3WcXAKK9ztfwE0v8+XZimXjM9LC3hwqGj2FpdNRBOHk5i7rHaLAx3apTl/02bssZ1baQR+bR7lSr7xQIMQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3IGRUslgXhbcmrbJKHsL4XvFQt3r+Ymoqq/e7xjJNaA=;
 b=TjkAOt3zfAo0NpmY6z5SH4pNjM6RKqni13Zu/pdLqa1J729mCNCxlsevvYQOlc5eyjZgdJjj6Mg43XjW2jVT8Ru7/VRyuAG/b0KAWa6qyWf1OTdd/Foi81CiVQeU0XX459pdjwE2/1WRTQOsv0KcEUBqWgQN37+Izp06128xrsy0LX1dVSfWkIdENI7Z30C84xarqK3ImOFECoYnzRZdrFhox7Ciamk8URDo9bs63PuSWHa4pLXUc0Zua1v5H07jY4zJ/ZdTChUnKENW7X39UkzVzihqZHWccpS2hWR2CiqtqfPSNM+6qfs5fy0wc9V1RsqPOwnjYHJWi+rodPVzdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3IGRUslgXhbcmrbJKHsL4XvFQt3r+Ymoqq/e7xjJNaA=;
 b=bNkhdzqocExCcaypJ9NpYwp2qIFt4enf/o3G9mreJEPPzNvsAjB8I30LPkkGZ5TzD5UHnwCpxq1AhP2acPNCuWsDrVncrTP2p4Jt5gc8senunEN0kT/BfW6BHfQZI48p7a3REoH8ga7nb1xQmXbZ7rrIaG+jiyKmIuktYs9n9xE=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB5050.namprd11.prod.outlook.com (2603:10b6:806:fb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Thu, 4 Mar
 2021 09:43:50 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::41bc:5ce:dfa0:9701%7]) with mapi id 15.20.3912.022; Thu, 4 Mar 2021
 09:43:50 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Muhammad Usama Anjum <musamaanjum@gmail.com>
Subject: Re: [PATCH] staging: wfx: remove unused included header files
Date: Thu, 04 Mar 2021 10:43:45 +0100
Message-ID: <5120192.kWiexivLR2@pc-42>
Organization: Silicon Labs
In-Reply-To: <1722736.fQpYkz0vEs@pc-42>
References: <20210211143637.GA177425@LEGION> <1722736.fQpYkz0vEs@pc-42>
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-ClientProxiedBy: SN7PR04CA0175.namprd04.prod.outlook.com
 (2603:10b6:806:125::30) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 SN7PR04CA0175.namprd04.prod.outlook.com (2603:10b6:806:125::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17 via Frontend
 Transport; Thu, 4 Mar 2021 09:43:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 799fb8d5-c6b9-4c05-d814-08d8def203e9
X-MS-TrafficTypeDiagnostic: SA2PR11MB5050:
X-Microsoft-Antispam-PRVS: <SA2PR11MB5050ECDDA93EC7C5D332B16293979@SA2PR11MB5050.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wr+PUBzVc2GYS/MOpOIpYd88DvYMb1xU0F9nZj3VQOX7dZq9Izt5cI9eUNTOacLWZtOnlOlojQQaTMrxm2CSwt32fKVjqNyhAYEsuuKas0eRBjByQiIG8InHs8NTqsxs8l0KITmBZxy0xk+QXa0ARForwPeJfUz8qJpzzSpPhmuhwd3+A0jr47YfOndO0YacRy+phz0AxXGlFtqGTGl1zGZoXAeOIeB5s8R8ZqFjudgevjn50nnJpxj358qBnQLbfcwuRyj0+u28m0M3+tIeZQAT/02pqDItamqZcYT0nPdEnZHCn1hPQD9T0Rvo4ASnykJ+dnJdVvX5p6ezRmW+wOAwkTVdYzOImhB1HnaLV0Ul78GfV5lMrcghuJNyCGjLVM1GjWGOSl94jd/FGfyFDL/RXY15VBPIDpC3Fuuy0j43gqWslHo4lu6dy5I2f8R4EteGaWXjTf9e2rxXeBWKASSM6Ub3n1kL421OTd9UA0O1L85l7eryTjMvtfZbYWuoD0+R4F9Pmf/oEHoWn11gn91IVc5TLsmjMvZaL1lJJrPtHzx1wGcI+rSQ3g9vMp3J
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(366004)(39850400004)(346002)(136003)(376002)(8676002)(6916009)(86362001)(478600001)(6512007)(36916002)(8936002)(6506007)(33716001)(52116002)(316002)(6666004)(9686003)(66476007)(83380400001)(2906002)(66946007)(5660300002)(66556008)(6486002)(66574015)(16526019)(186003)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?iso-8859-1?Q?yDLGRdS/K4TOtSvTNvZavvhJZyKX9Q4BQsnbN4oOD89Ck8Hc8FvfLYAtvC?=
 =?iso-8859-1?Q?LulyoPrIDrpSR5ZhAuRjxX20K3xsjJseBoEV2FXmyfUsEBs9ubcs5brfK5?=
 =?iso-8859-1?Q?8GDCTKTkoSMFqYq5e6fO0voHXJBdGEE9CVBO744qdKrKmtc5jmqERbcXXZ?=
 =?iso-8859-1?Q?NXkg296ItxFIph7DuahybvkRaUxaCSB0cGEEKNPFgDPxIg/qA3iSKSYozV?=
 =?iso-8859-1?Q?HmICfkkzNZDZuO1QWhjrmfrfGFR/rS6jTlTNxOZ74QLp7xq/M1BqflIza3?=
 =?iso-8859-1?Q?1Ezxn9K9kaVUAvq4zvXoZA7reYrAlW3EhjkwAm33YefVEoMturA1uWBGJ9?=
 =?iso-8859-1?Q?J+smZpEDszZ71LgJkljn84N0hpVrJBI8B/jTIqbLEjMw3FOzVnso78zGGJ?=
 =?iso-8859-1?Q?hhCBaYJB0oixi3hIvqY3NMWXKI+eNACIIGoPkvpujTDgtyYKwSa60KkQhy?=
 =?iso-8859-1?Q?ZkJlkyQx3zPZG0W563wkYcQIO5piKgifREEH6SzJNl1himwrcEWVQAOxdB?=
 =?iso-8859-1?Q?F5tgbgRLZPyYJ9xK6IiCeJoKBSTaRu6cnexU4A+I7qmdE/RxTyuB8K2Xeo?=
 =?iso-8859-1?Q?m7hrDM6au32uDTyxNXDy9AEHmP4Be5Ec/4or0rVClQMC9fG4CfbVG4XSjt?=
 =?iso-8859-1?Q?pzhI3l9xGNKyiomoMlpcQ1IU01JGN7W/lLSnuZmiG2gDMc/XsrO6W4GFTU?=
 =?iso-8859-1?Q?YdZJN+ZwfsBCMKY5jxdIcmoNMFHXik4Yw14jtgK2bdj7H4xIkYt/CbZZrX?=
 =?iso-8859-1?Q?d83Dubv4YvMqemFBfFTDQvv3SZpDSXW9vYJ9ukYyW3CG1H6gq35rXx9OC4?=
 =?iso-8859-1?Q?kmnoF7PQBkOWhHLS5Bg6fh48Q0ZABgnyqrgIc4yh2UYwV+TIaQqSdE1Ed6?=
 =?iso-8859-1?Q?UO/lrCcnFy4Pkq43ShGYYfRtXrkVkoqJQvqjdwd+Be6BGFyVzNK7+val/i?=
 =?iso-8859-1?Q?QSWzjhUqNNbbPRggvcX4d6WCQxDXa0k3X/BVUjtIvrQY51BFkijqH7aeGv?=
 =?iso-8859-1?Q?FD4Hsje8QMiFkpwBQ5VCMnyX0mP1dtQFEB3EY49P5KS8HKWCYe/X2AFeKe?=
 =?iso-8859-1?Q?+NwIFlGu5M1eHsH3pXTK6UmXCQtHLYluKcP1HODwz3MXd8gimjsTRKTYvw?=
 =?iso-8859-1?Q?dYRULWfAfjT0MdRGfhnwW05seAGU+/ze+j5+2x5NMIRYeqrqCcAScvgvlq?=
 =?iso-8859-1?Q?ujhDbeErqse7ZPZN5eH/jwA7nXkFKMPq8HaOMcBOgDXRGR9kXMiPiaoSY4?=
 =?iso-8859-1?Q?NvBafFEtvDwMMv790B8c83dPwdchIxOKN+x7FIiiI14mOAa/fFdOkFPnW9?=
 =?iso-8859-1?Q?0JoJJfZ99xmsKovIzf+r1IWkK0vLnQZJaaXm1C4RR8E/GoHj2ZHaAWqGvH?=
 =?iso-8859-1?Q?kRSqUU1EKYNRxG5F0SVFFFSOpqygqBE21bMHeTRiV5y0Nj5UpRzIpx9x/f?=
 =?iso-8859-1?Q?de/Fx5BSFp2VSsrD?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 799fb8d5-c6b9-4c05-d814-08d8def203e9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2021 09:43:50.4472 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SJtC0HKX2mT6NlFnfafkH3hrroQb0aINxJADiMSnyfKicBE8UZ97n7ouKJUi/u3L4F+9/qsBafTah3ENlNF76w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5050
X-MS-Exchange-Transport-Forked: True
X-OriginatorOrg: silabs.com
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

Hello Greg,

On Tuesday 2 March 2021 16:01:25 CET J=E9r=F4me Pouiller wrote:
> Hello Muhammad,
> =

> Sorry, I am a bit late for the review of this patch. Thank you for your =

> contribution.
> =

> On Thursday 11 February 2021 15:36:37 CET Muhammad Usama Anjum wrote:
> > =

> > Many header files have been included, but never used. Those header
> > files have been removed.
> > =

> > Signed-off-by: Muhammad Usama Anjum <musamaanjum@gmail.com>
> > ---
> >  drivers/staging/wfx/bh.c              | 1 -
> >  drivers/staging/wfx/bh.h              | 4 ----
> >  drivers/staging/wfx/bus.h             | 3 ---
> >  drivers/staging/wfx/bus_sdio.c        | 6 ------
> >  drivers/staging/wfx/bus_spi.c         | 7 -------
> >  drivers/staging/wfx/data_rx.c         | 5 -----
> >  drivers/staging/wfx/data_tx.c         | 5 -----
> >  drivers/staging/wfx/data_tx.h         | 3 ---
> >  drivers/staging/wfx/debug.c           | 6 ------
> >  drivers/staging/wfx/fwio.c            | 2 --
> >  drivers/staging/wfx/hif_api_cmd.h     | 4 ----
> >  drivers/staging/wfx/hif_api_general.h | 9 ---------
> >  drivers/staging/wfx/hif_tx.c          | 4 ----
> >  drivers/staging/wfx/hif_tx_mib.c      | 5 -----
> >  drivers/staging/wfx/hwio.c            | 3 ---
> >  drivers/staging/wfx/hwio.h            | 2 --
> >  drivers/staging/wfx/key.c             | 2 --
> >  drivers/staging/wfx/key.h             | 2 --
> >  drivers/staging/wfx/main.c            | 7 -------
> >  drivers/staging/wfx/main.h            | 3 ---
> >  drivers/staging/wfx/queue.c           | 4 ----
> >  drivers/staging/wfx/queue.h           | 3 ---
> >  drivers/staging/wfx/scan.h            | 2 --
> >  drivers/staging/wfx/sta.c             | 6 ------
> >  drivers/staging/wfx/sta.h             | 2 --
> >  drivers/staging/wfx/traces.h          | 3 ---
> >  drivers/staging/wfx/wfx.h             | 3 ---
> >  27 files changed, 106 deletions(-)
> > =

> > diff --git a/drivers/staging/wfx/bh.c b/drivers/staging/wfx/bh.c
> > index ed53d0b45592..cd6bcfdfbe9a 100644
> > --- a/drivers/staging/wfx/bh.c
> > +++ b/drivers/staging/wfx/bh.c
> > @@ -5,7 +5,6 @@
> >   * Copyright (c) 2017-2020, Silicon Laboratories, Inc.
> >   * Copyright (c) 2010, ST-Ericsson
> >   */
> > -#include <linux/gpio/consumer.h>
> >  #include <net/mac80211.h>
> =

> Though bh.c refers to gpiod_set_value_cansleep()
> =

> =

> >  #include "bh.h"
> > diff --git a/drivers/staging/wfx/bh.h b/drivers/staging/wfx/bh.h
> > index 78c49329e22a..92ef3298d4ac 100644
> > --- a/drivers/staging/wfx/bh.h
> > +++ b/drivers/staging/wfx/bh.h
> > @@ -8,10 +8,6 @@
> >  #ifndef WFX_BH_H
> >  #define WFX_BH_H
> > =

> > -#include <linux/atomic.h>
> > -#include <linux/wait.h>
> > -#include <linux/workqueue.h>
> > -
> >  struct wfx_dev;
> > =

> >  struct wfx_hif {
> =

> Ditto, bh.h refers to atomic_t, struct work_struct and struct =

> completion. If you try to compile bh.h alone (with something like
> gcc -xc .../bh.h) it won't work.
> =

> Maybe it works now because we are lucky in the order the headers are =

> included, but I think it is not sufficient.
> =

> [... same problem repeats multiple times in the following ...]
> =


Greg, if nobody has any opinion on that, I think that this patch should
be reverted.


-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
