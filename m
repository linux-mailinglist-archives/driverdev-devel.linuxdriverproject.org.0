Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFCD56B377
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jul 2022 09:27:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6319460ACA;
	Fri,  8 Jul 2022 07:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6319460ACA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QQUwyUUFvBaS; Fri,  8 Jul 2022 07:27:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E8A9B60A6A;
	Fri,  8 Jul 2022 07:27:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8A9B60A6A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 527951BF403
 for <devel@linuxdriverproject.org>; Fri,  8 Jul 2022 07:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C418410D6
 for <devel@linuxdriverproject.org>; Fri,  8 Jul 2022 07:27:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C418410D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4UUFlSm4iESh for <devel@linuxdriverproject.org>;
 Fri,  8 Jul 2022 07:27:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E923E40500
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2066.outbound.protection.outlook.com [40.107.220.66])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E923E40500
 for <devel@driverdev.osuosl.org>; Fri,  8 Jul 2022 07:27:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MR6M3iobzJT4Zk5CxxJDiLs8Y1kitFfY3Ummb21qUP/Dx6D1DsDmslel9DF0FN6/3qn1dVh3VoqsYLuHmqJQY6bfgVu3hDu+afKxe3Z2rC5K0NHrYNAtvmaIzeJc8zjdQarOYPZUwWD7XNKRjse1FeYPE6OPdxh7ySSy1A+BYDI+P+8HT1/LxpOdm4ANNvwRQKAKMVD6t0KC56Hprk9D5XRHea8qr7opXY9ZIAViR2BZ5ykoOjc4uDboYJqmKgZnyt0R9P3z0NDJ9DPhyXqWb8PrQRxrfPTS1pl3BVjtjiPNpkzJOANN6PfLGilB7qwcWRX+1BawkKI7XYSQMLpsgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sWZfIcg4UCoIjhQBdeyckztZLrbOYF7f6atg+EZZYiE=;
 b=hE6jjLC+zL1XEVjf0bT0rDw+asoEj93NbfP1Y3g9GS2/6fFx6JqSERQYjNhC8o4HKVuTkWX6tA/tiESsu84TP3bHalciXob/HObYa3vCVUDbTCiKorGpDxB+wLa9E235Lyt7SldlzfMeVEIZTZTp9IHDxyygdQoz1knBzZS6Q9+3jQuXvrXljWsgQuZYB/gOWRNq6kE95cE/SDWvklaCKgTuxzjZUNhlaA36hr5GGFhnPDOVUsjd9cI2Z4TRySzZFX1DNUQjOJTsxrsg/YSX2yhi8l2TMgXs9w16cS7Yd0bAlTXNkAcaz/UP58qv3vIDu+AoLC8pCk20Dv+B1C9jIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
Received: from DS7PR11MB6038.namprd11.prod.outlook.com (2603:10b6:8:75::8) by
 SJ0PR11MB4991.namprd11.prod.outlook.com (2603:10b6:a03:2df::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.20; Fri, 8 Jul 2022 07:27:13 +0000
Received: from DS7PR11MB6038.namprd11.prod.outlook.com
 ([fe80::2045:bd0a:d570:8ccb]) by DS7PR11MB6038.namprd11.prod.outlook.com
 ([fe80::2045:bd0a:d570:8ccb%4]) with mapi id 15.20.5395.021; Fri, 8 Jul 2022
 07:27:13 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: ben@demerara.io, Josh Boyer <jwboyer@kernel.org>
Subject: Re: [PATCH 2/3] wfx: add antenna configuration files
Date: Fri, 08 Jul 2022 09:27:06 +0200
Message-ID: <3938237.uBZYkAkHzk@pc-42>
Organization: Silicon Labs
In-Reply-To: <CA+5PVA7F7-5GY=YE9rSL0ZYkAtiG+mi-gGyq6=65fpvBiqpe6Q@mail.gmail.com>
References: <20220221163754.150011-1-Jerome.Pouiller@silabs.com>
 <cb49da01-584a-bb71-eecb-c54e40bce062@demerara.io>
 <CA+5PVA7F7-5GY=YE9rSL0ZYkAtiG+mi-gGyq6=65fpvBiqpe6Q@mail.gmail.com>
X-ClientProxiedBy: PR3P251CA0009.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:102:b5::31) To DS7PR11MB6038.namprd11.prod.outlook.com
 (2603:10b6:8:75::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b523af7c-b96c-4f16-5bb0-08da60b346d5
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4991:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KgjzUBuKcVgqy+56mdtSGJWiUaELUpxim/zqvsoltCjfRE4E/rM4tmMD5Wb1FhQolktLe7dBrR9dieUfFz2fnLk7SQiaX26VFHx/GBcYAMG2v1ERLB7l7yvxTmiRFbquHMvUkQhkDgeqGrSRbaulC6+ZRKrxgNQIdvTDonNSMuU2xQiTOlkSSNrCShrrh254oBRRIKCWK9rdHzPJmMxJb/1k/an2KkCNbCW8U+nufu8xGUM3sKvgnZMN84zb0hW7xEx5zhAzvgqCZBg2r+vNRuquQT0QdIf/ajeRkJY5Qtd3ERduIy9I3wq/5RDJQwhfxgkzqUeifT85sC+8/ejMOHGjRQpQqYUOes+gcpCWiENpYO0jPDFE+TG8dt4M0nEfs7p48xwbe9JYo7Wn9FuBx8n2jYwpvUDntEHbTDogLZBnsPWvr26qKytG9JoygrUY4NiuRXye1c2a4uCBoiwV1X2mNSSKGe6I3/g8L+0HsjWyDm319bM6YGJMHgdkXLjq6Tpl10zsHVgxLNA15djRqWpMCVTG9QGcIYZtZJLZH669IdNC0c+fUPBpsLhtrn2n9dZ/5LSxzeF63QvPZiVOFduIm6RtmN/+gIa6+ncwXNA6n0NHZrXrR22BzFh5Ig21sQiuSuFg/GEbk5mIfznVBqoIxjdcv9s2k+6se62Q32LhbLyOnRCGKjzkcF02a1pMn8MOfkF1lsV5Tg2ma2JikpBLqcbodTuD39TT7oswHLh4rW+9cJs7IM//lZ4DzS4f
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB6038.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(7916004)(39850400004)(136003)(376002)(366004)(396003)(346002)(2906002)(52116002)(478600001)(6486002)(53546011)(33716001)(66476007)(54906003)(316002)(6916009)(86362001)(6506007)(6512007)(9686003)(41300700001)(6666004)(36916002)(8676002)(66556008)(4326008)(66946007)(38100700002)(186003)(5660300002)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?D+gEWu2zaPMnrhHlnz1Gp2vViRgBfWFAfy67KlsQ2vZxttZhryaDEnQOqx?=
 =?iso-8859-1?Q?o/XPnlLQqxa5p3TnQV8ikaRKT/NYnIZhmiA1OnyHeWInCxxiU6T9B7nSJb?=
 =?iso-8859-1?Q?Ryx1isKxu32/rY7Uwwb+kDp+Z4U27qLX+sWe11BHqfXOwbvSYywwXQy16N?=
 =?iso-8859-1?Q?gS7Mb3pTeeF+DcSd3bI/RGLBqDIIsbxklVoIIZsG+ILAlX1rE6Cd7yi/gp?=
 =?iso-8859-1?Q?Ck1JDGsMPmv8JdvDknp4zHDD1Ix5gZxwib8w1BbrGL377J04UyrMeN/Z4u?=
 =?iso-8859-1?Q?W4PCdBcTdcflPXlaoxpBaovIUZRGRqzWsmw+o+jR4UHdwfcHIo68OYuKgo?=
 =?iso-8859-1?Q?VIVATUO0kcyyD6Q74nQbvt5o/VS2WdgXqzGGp6zaadyEGFteVwVW4TFfvZ?=
 =?iso-8859-1?Q?qNf65PgE4LkfYr2ETdIQ0RcKMpIVk47wc5HQw5goHbNsUYTxNRimSAugXY?=
 =?iso-8859-1?Q?ebX7Jb4UK7+eRxsDqRPJtLxthbi98Nx8+l1R1JxUiab/vgEYxgc7Ytc7aC?=
 =?iso-8859-1?Q?j04DLaJaqyf7r1628xUgyPq/ai9iJmjZ9wtLHtzqxc5Go2vPXrYp0h2TGG?=
 =?iso-8859-1?Q?+F0xuYnPn34je9mwf1D2yUxvC221mDj0bOSQXMmxo8Nn2YKRnXXJnSMB8h?=
 =?iso-8859-1?Q?SCNOyqIM30ZoyH0tX7y0w4WCQtpl4n0ACIxkySkvDptiO7cZi/Ic0BBegM?=
 =?iso-8859-1?Q?gBE9jMBE7b61OxUPsIrNF99EESLYey4q6nXGGG50HKzrY4NWatTkOLwX/K?=
 =?iso-8859-1?Q?0yZtF5+9gAne/CuZSmOPlgu1AUNxCOe7WPyO7cTyW4gxKby0+UbQ/sIE1l?=
 =?iso-8859-1?Q?vP3qfRiM/82dHgTY1zWvYECX6LtJbdkP4ZNDordkqWVlVuUw9GB3O5WGGq?=
 =?iso-8859-1?Q?SpNek5MTYtKAEr6xbiZo78gtxnqso2SN4Lb1WDIeiNnq308UZzjDxOpvP7?=
 =?iso-8859-1?Q?DdsdzZ3HQU7jLHABU2E+WZcYzi0NN3Vi7bve3CJXJZPwZ4KgAGQXikJ9Aw?=
 =?iso-8859-1?Q?I/8+bDOy+enkScrctfhzVpajKb5p1dSk9MYO5oPJMT1zt+mMD+pXx/R7xE?=
 =?iso-8859-1?Q?fPVfMeNlO99wIeDF0gU8jYnG0u+970JMpmohHx+NraFasvEBE3NnPV+iv/?=
 =?iso-8859-1?Q?xb944WrgZ/O97IA0v36HMfxznuvPaEjZSakma1Fa9DHn/hCoJgsuJM7H/w?=
 =?iso-8859-1?Q?ubcZr7QUtdZNXISm2njGWogrMB67JwZawHpO4njPkAsQVyfRmnEybgB3dX?=
 =?iso-8859-1?Q?B7YtHL5S4LeMYTbspf7ziKg5iG5aBu42vsXAAZwidQBFIX4GNlmFZytUHt?=
 =?iso-8859-1?Q?6AvvGYkt/VmWJBK/D+/eGcY2TEjjbioFapMFU0IssKpDgylVh12bC2DTYn?=
 =?iso-8859-1?Q?NOrvojvui+Mbz3JbtWlLoQ3HXy/7UnWM9JfXtPbwHATbsNGTtTnONb8aft?=
 =?iso-8859-1?Q?cs0IC1Y8/5nL6m6+UA4aewah87aB+486e30jP95LaCI34XjNlZL8g+oPun?=
 =?iso-8859-1?Q?wsjk773bMspMo44iWfz+zfjV6y+b/fmC7uksq5NbxRHjtIyLs7Jc8HH5w4?=
 =?iso-8859-1?Q?RyOZr4ec1KF1AT59rm4WUJ1BJN3QrvSXcGKSl0LJFCi167wyPFt5WvZCsN?=
 =?iso-8859-1?Q?z+/UDnFxlm3Ab9f5vlyG/osCBv/BYTbilRmMNIAcumr2BePRXzK7e4h18q?=
 =?iso-8859-1?Q?DIH4gy2TwOlV9E9FTFQZ2P4OlCjQxnQzO5/lt8F0?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b523af7c-b96c-4f16-5bb0-08da60b346d5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB6038.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2022 07:27:13.2177 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HA00u6heLm4OzZawSHnlkTSyPeV7Jnsn0aHjvirJ8IV+jHEJ5UjfxVDcmLefsuuCIz2SSzgy+FYTeCwTvBAVJw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4991
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sWZfIcg4UCoIjhQBdeyckztZLrbOYF7f6atg+EZZYiE=;
 b=DLlb3+T/UeFXiQ875QKP6K1N99TuWDcgd+4N89MUqPNP4qazEAuGPUMMrcTmndtHtIQCSJtBl2YUc0YlEypLOa6GFMILBGPqH09wr49nMjcVO9gilz2+UByNhOT1HoB4Z3kJQKxeWqJdUKOVMpfcTaVRyoLvpLNEheoAcLtdhOE=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
 header.i=@silabs.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-silabs-onmicrosoft-com header.b=DLlb3+T/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
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
Cc: devel@driverdev.osuosl.org, netdev <netdev@vger.kernel.org>,
 Linux Wireless <linux-wireless@vger.kernel.org>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 Linux Firmware <linux-firmware@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thursday 7 July 2022 19:40:27 CEST Josh Boyer wrote:
> On Thu, Jul 7, 2022 at 1:04 PM Ben Brown <ben@demerara.io> wrote:
> > On 21/02/2022 16:37, Jerome Pouiller wrote:
> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > <snip>
> > > diff --git a/WHENCE b/WHENCE
> > > index 0a6cb15..96f67f7 100644
> > > --- a/WHENCE
> > > +++ b/WHENCE
> > > @@ -5845,8 +5845,18 @@ Driver: wfx - Silicon Labs Wi-Fi Transceiver
> > >  File: wfx/wfm_wf200_C0.sec
> > >  Version: 3.12.1
> > >
> > > +File: wfx/brd4001a.pds not listed in WHENCE
> > > +File: wfx/brd8022a.pds not listed in WHENCE
> > > +File: wfx/brd8023a.pds not listed in WHENCE
> >
> > This format does not appear to be correct. While this will seemingly
> > pass the `check_whence.py` check, it will be completely ignored by
> > `copy-firmware.sh`, as that takes the full line after 'File: ' (e.g.
> > 'wfx/brd4001a.pds not listed in WHENCE', which of course does not exist=
).
> =

> Oh, indeed.
> =

> > I'm assuming the trailing ' not listed in WHENCE' needs to be removed
> > from each of these lines. Otherwise these are likely not being picked up
> > by distros (they are missing from Arch, for example). This may have been
> > the intention, but that seems odd (and unclear if so).
> =

> I doubt that was the intention.  I'll correct WHENCE in a separate
> commit.  Thank you for reporting the issue.

It seems I had copy-pasted the output of check_whence.py. I was probably not
very awake. Sorry for the disturb.

Do you think the change below could be useful?

---------8<-------------8<----------------

diff --git i/check_whence.py w/check_whence.py
index 8805e99..8244288 100755
--- i/check_whence.py
+++ w/check_whence.py
@@ -6,11 +6,11 @@
 def list_whence():
     with open('WHENCE', encoding=3D'utf-8') as whence:
         for line in whence:
-            match =3D re.match(r'(?:File|Source):\s*"(.*)"', line)
+            match =3D re.match(r'(?:File|Source):\s*"(.*)"\s*$', line)
             if match:
                 yield match.group(1)
                 continue
-            match =3D re.match(r'(?:File|Source):\s*(\S*)', line)
+            match =3D re.match(r'(?:File|Source):\s*(\S*)\s*$', line)
             if match:
                 yield match.group(1)
                 continue



-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
