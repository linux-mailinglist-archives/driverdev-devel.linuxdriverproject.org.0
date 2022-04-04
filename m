Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E93474F1208
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Apr 2022 11:31:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 403A860E29;
	Mon,  4 Apr 2022 09:31:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XHp7pcVbsdGQ; Mon,  4 Apr 2022 09:31:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A7F7D60C1C;
	Mon,  4 Apr 2022 09:31:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9E961BF281
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 09:31:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B73274002B
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 09:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tg4ftwIm46tR for <devel@linuxdriverproject.org>;
 Mon,  4 Apr 2022 09:31:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2060.outbound.protection.outlook.com [40.107.94.60])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CDA864000B
 for <devel@driverdev.osuosl.org>; Mon,  4 Apr 2022 09:31:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IP5QTTfQdD4Qs3JJRQ9Wqz2pXEf7aD9oSxMjKJSB/hVARB7bd1wkLChic0RrtGNOx6psS5zUL0LsO7pSiMkr4Vqq12v8SxKnDTYyx5oGDPHiqzOprGVfa8e1uQvUpIZdpMzm3S7KTPcPjaK5b31URLpVzsCZZzmjjtPn/jEhbFHPJapB5QDwMgAp/xlmEr41z5EBpmj1O6408sjx8jKC6NeYaqCCWosWsXvroqGw46E/batHWgepmZHxhlrK2e3F5gtzJjwjzcmpUJBVl69xNf7cg2CYa/Isbuuz63B+yhsOik2/a3xH5xvIJ6DeHyeB7pRpxLyvYWrAkrFb7/cMzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWSMna+Swzq1I0svE9LYpJ3jR7ka6eZij0lcDyGUSe8=;
 b=c04LnNcq6MAwjuXh8ztQR5BjxD1tMHK2sdlsVKBRqB0lIIS/NhbBgj8DdfM1D5gL9evdGsEA2VeB4cXRi78laWQvgsmp/fDXcxWbVqBcMVzvhznFyQ4b19RYnarajJKtU7CmN8bmq8fjF1AAHn7VbW/MPj5hV9MYyOq5G75jfxRkunCwGOldZnJ9+UHPzT0y87KQdXObAmStaWBSZTTiNl6AHTWC1WhlpBjWVT709FBhwNzBazQwKrT4WXM/nMmcrES93eDb3lKQK9XDzUe3xXE1YwYSQN8xERlH3DprY0NXUDN/oT/3snrWjmrxNT5CstoHVzCDQccNFNAiIgiiWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LWSMna+Swzq1I0svE9LYpJ3jR7ka6eZij0lcDyGUSe8=;
 b=fPfdbF2izFDwIjGmsjaj7mU4ma6RO8DxNkBfpIi2bjXWBWXSWpupQEi8LTy5vL2fpnXf/Hx6gAfjWmT40ALaqA4YXjacCmEjxXsra65K+twL+d9JmoqiEkn8kbUHz0Hvf+SDbXXMcaD/iIhjO1Tj2Y+wFXV8s6V0Ua05azZ3vH4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by MN2PR11MB3774.namprd11.prod.outlook.com (2603:10b6:208:fa::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Mon, 4 Apr
 2022 09:31:29 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::90dd:b347:32a3:bea4]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::90dd:b347:32a3:bea4%7]) with mapi id 15.20.5123.031; Mon, 4 Apr 2022
 09:31:29 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kalle Valo <kvalo@kernel.org>
Subject: Re: [PATCH v10 0/1] wfx: get out from the staging area
Date: Mon, 04 Apr 2022 11:31:23 +0200
Message-ID: <5830958.DvuYhMxLoT@pc-42>
Organization: Silicon Labs
In-Reply-To: <87wnhhsr9m.fsf@kernel.org>
References: <20220226092142.10164-1-Jerome.Pouiller@silabs.com>
 <YhojjHGp4EfsTpnG@kroah.com> <87wnhhsr9m.fsf@kernel.org>
X-ClientProxiedBy: PR0P264CA0146.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::14) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ca35d342-f543-4f60-ff78-08da161de5ed
X-MS-TrafficTypeDiagnostic: MN2PR11MB3774:EE_
X-Microsoft-Antispam-PRVS: <MN2PR11MB377436B82B6325FA071BA53B93E59@MN2PR11MB3774.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0zIyrp1sC1rdr9UNjbhX05eOsGzK2dccbt0aisTifLAW22PaEKzGksr25uJE21wvPpXwtadT3/kamW8kBpvNZOLquQuS28aHMCu8dazM7rVuAgMZU4P+kfIVtvEOLUrA3660xbXIztY7pnU4Fu+fypFCZOn2n82RgvooOXg9eFG/sAS/gAVeIpzlczXWWffRlWNd/8i/y4RoFgGS6uSd19LSmz1jTwLsdNJOm9kxihETJV3m9fxNIq/wMN5WgiyN49qHADlnq81wqwCX+Tfa2etc1max8MAcIqNd8RY5uSm/jRlE3Drii0dJPiJi0e0SPW5wh48s+gnafaPma1NZiqlJ34ir2omipg0tlg2Kt0I74hxQEI2RkPPMP+is/J9jIrocouYiHFXM96H1BjyLdAnC2sHZrMmAJ8qYMm6rtzuPFL+RyZbwpJXOnAzVbd1FCX45eVv0QEJyLLP+De8iYqsSlFKjinYkIejUNiry+bcjIWa5ppbgXZBTtPw2H6SUhz12j8XcRJ1UjG3+IXsDQXJCn0NmKAt9OmKgnoAnyLSU/54oth32lq1vNn4ysJS3fxUUT8jKFFr+7vYAnIJ5bIchpSmMNFs64d5CpKs4WgsX0lFs2Lyrf47IZEGQ3qaJpZEu52jEIGTMKNsLW7AIZlkeaUZIyiPOsfppN4ouiGyuuDEwffp/Q0KUpd7TNTzXDIebM+hJGm9yKCbUJfx5rYAGj7PQC91AXFMyFwUuGtQUDRG29z5+B943vpy/ycNzPpvgDxPl98wiCxcEh16tpUmp4/uSs4678M7fkC0Z8zk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(7916004)(366004)(54906003)(110136005)(33716001)(26005)(186003)(38350700002)(83380400001)(38100700002)(316002)(66574015)(6506007)(66476007)(6486002)(966005)(4326008)(8676002)(66946007)(508600001)(2906002)(52116002)(36916002)(6512007)(9686003)(6666004)(66556008)(8936002)(5660300002)(86362001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?alM3uDHixKrPifzJhCpSSyxJCO98fTgFyjIL8dnOLbOzzf4Nyup/8E0G0D?=
 =?iso-8859-1?Q?gWZerS8AzhcRWEQM6qtXXAjZMH+mU00v+yrN8VbNJUIBI60fDrZDpt1PCx?=
 =?iso-8859-1?Q?SQoHEL2aNR8rPzbzXOwL0FyCK05J8FLnDnxZCLFo5BX+1M3pShVUTgIGJZ?=
 =?iso-8859-1?Q?vfaSGjUX5V1mbCAZNjGFvJuCuLHPEAvDZhRiUu9S0LR+KUniiANFRn681P?=
 =?iso-8859-1?Q?ZucNdKkxl48A9Jh9eL9DQl+6xIqulBZDz3gVs1V9en+yh5slBfNfQoCOrh?=
 =?iso-8859-1?Q?vAajibpseAZx/nydEZSUbJZndmkvnwAjupUM4kYlWpTZlaFTlcRgyEvLAU?=
 =?iso-8859-1?Q?QTifsFOAVs2gguFqLj3l3ApVZkLXx9ISlwOlSlLbCbjXSQPJhdRykWwfOK?=
 =?iso-8859-1?Q?Qs/j3k+bi+HMpw7SjxmZXpx27IQDZj5hS82NoYX18qvQ6Zg1CBFCb3tlqo?=
 =?iso-8859-1?Q?xpulzJIwFaPJznF3VIvxDMzB/P1aXrVLBg1FGpkAt2BhQrXRhfbfcots4N?=
 =?iso-8859-1?Q?sJEkVLjXu1N7LqEsRRn9vXWFt4DD5WYIzaHJ5Iuxid6rv/PI/o/WM5At8v?=
 =?iso-8859-1?Q?kag+uV4VRaedJuJjpSBghU19v6XuVfqWHA/KMTme0cPoLwZTQDBtfTaL7J?=
 =?iso-8859-1?Q?4avMjKtWi5O5JfhXCviVqEZfHadljyyjZ+1yzdCmsP4OWGuPHhdZ0/n+qz?=
 =?iso-8859-1?Q?tY97iFy9S4NLMfvTTD337Db6xNVQ/l2igiM95uxyuoHKK2C7nRXTEqBDJJ?=
 =?iso-8859-1?Q?u/7DnSV+U5GjMNZGyX1cUt/jUD905XLmwbSIPkwyqKfNbbt4pcI5NcHvE3?=
 =?iso-8859-1?Q?Ttrk5aKx0B83YnuiozS13TNNPRQU2XVY4lQ/UhWsbKkt2B9Yknf4CEDENy?=
 =?iso-8859-1?Q?IEPxdJiD3/NRTlP44V6EZ6OpPZzLkwTcGur/bdQTdX5M+d6Ir65dRRbc+m?=
 =?iso-8859-1?Q?j8fCHap27FjpzQ7wQ+szpwbtNQ2BLacey9IkxhuLA7OyFdzT0PLkZ7l9AX?=
 =?iso-8859-1?Q?VD66hByuWrknKMSID/H1CBg5AoIFBHBNsGG8QnW7ior3zPov2RsOj5nz63?=
 =?iso-8859-1?Q?QMDtc/BdXX5jVZ/tcPukNBwC5f1M42QAE+v0O98Z2IxX7ZR3HCyEzRCKsZ?=
 =?iso-8859-1?Q?cv+LomWLOfnWFPnxKH/avcg/hLodXEdjDhjxeYRgT1WDSMHD9BrYAxakFX?=
 =?iso-8859-1?Q?rG0DMVFkMWOEg7WeLD9iy3AzSEJysL2luQ3HxOR5CbW42kWbOVx+PP+DgK?=
 =?iso-8859-1?Q?XuytlCHQAjbe7gw9FHetRzfVrJKk9o6vjwDnVUqjuG/CPEC6hwuN01T5Ry?=
 =?iso-8859-1?Q?+M6yaG5laOBYqqmysovi4thLjmNCsX8phWsxHaWL9SwSMvQ5hcFAUFhMG0?=
 =?iso-8859-1?Q?Z0kMzp74bksbcfturE75P8Fz623FPKWSXmvyEDajGPy391oIi5Ul4RCkU2?=
 =?iso-8859-1?Q?tK5npw2ne4P6SKKHxDEPjTcJGh9KmE/S5hNWZb10Z5N4mBwcs7vw0eXUX8?=
 =?iso-8859-1?Q?smY+rQdCkMlaNTO/Y4E5pCV71fM/xRVjSdumQhuR98a5s7raRGUGrJOqCh?=
 =?iso-8859-1?Q?Xi3g3vpVMXs3nm81G2E0+t3QwCdmrD8bAn1dT4pWICtypErn9GCjwRRAgr?=
 =?iso-8859-1?Q?Dieyix89Mb/6Iw/wr1JZkrrIXocIygtLbnXnWwdX2GM5LIpkuJV/lzR0Pl?=
 =?iso-8859-1?Q?oN+Vlon2nxtidThdgwpuQ/HVFC+3rerFLnJwGQXOtI4+uwt6tQ3sfxrw+2?=
 =?iso-8859-1?Q?WQlT8eXlG4UNcyqJeD3BGPRETXzeSprGCKiStvxs/O6cTRe7IdouEF/iPI?=
 =?iso-8859-1?Q?KCfbM//ScA=3D=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca35d342-f543-4f60-ff78-08da161de5ed
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2022 09:31:29.5507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LqAE2Est15BJcWsTYG6Bm/dGA/P0Ei85j5GN1nHO+Njtr/VjL6M26+kX9bXBSWpg4A9dswaxV7ary0DsNa+FVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3774
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Kalle,

On Saturday 26 February 2022 14:15:33 CEST Kalle Valo wrote:
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> =

> > On Sat, Feb 26, 2022 at 12:41:41PM +0200, Kalle Valo wrote:
> >> + jakub
> >>
> >> Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> >>
> >> > The firmware and the PDS files (=3D antenna configurations) are now =
a part of
> >> > the linux-firmware repository.
> >> >
> >> > All the issues have been fixed in staging tree. I think we are ready=
 to get
> >> > out from the staging tree for the kernel 5.18.
> >>
> >> [...]
> >>
> >> >  rename Documentation/devicetree/bindings/{staging =3D>
> >> > }/net/wireless/silabs,wfx.yaml (98%)
> >>
> >> I lost track, is this file acked by the DT maintainers now?
> >>
> >> What I suggest is that we queue this for v5.19. After v5.18-rc1 is
> >> released I could create an immutable branch containing this one commit.
> >> Then I would merge the branch to wireless-next and Greg could merge it
> >> to the staging tree, that way we would minimise the chance of conflicts
> >> between trees.
> >>
> >> Greg, what do you think? Would this work for you? IIRC we did the same
> >> with wilc1000 back in 2020 and I recall it went without hiccups.
> >
> > That sounds great to me, let's plan on that happening after 5.18-rc1 is
> > out.
> =

> Very good, we have a plan then. I marked the patch as deferred in
> patchwork:
> =

> https://patchwork.kernel.org/project/linux-wireless/patch/20220226092142.=
10164-2-Jerome.Pouiller@silabs.com/
> =

> Jerome, feel free to remind me about this after v5.18-rc1 is released.

v5.18-rc1 is released :)

-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
