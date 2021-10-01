Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E9241F26D
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Oct 2021 18:47:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 18E7C407E7;
	Fri,  1 Oct 2021 16:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q9deBenEE1jx; Fri,  1 Oct 2021 16:47:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D85BF407E4;
	Fri,  1 Oct 2021 16:47:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 152581BF983
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 16:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0409F60635
 for <devel@linuxdriverproject.org>; Fri,  1 Oct 2021 16:46:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k0nAc0Xt9kCR for <devel@linuxdriverproject.org>;
 Fri,  1 Oct 2021 16:46:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2062e.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e88::62e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A84C160622
 for <devel@driverdev.osuosl.org>; Fri,  1 Oct 2021 16:46:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B69MrppiS0ZX/PVhghlVWgy70RW81m++qtpdePZvLrpIA57FFQoW5hG4KXvBL36UZs6hYFYfffjDH7i0cNYxo+DOf0V5Nubufx3KJ8guAwpRVzMwfcVyVW18HKEH5iC14eskY9SwfftZ0v2JISqZ3tV8d2F0jUp/mq72XssPQQbPiodJb+60ceS2LCFFcIjRA1opd/KTQNJiCQT/P8OuBzN8A4qCPc/N+Uwv4lr7+XXZMMfcweHa3GlRnKKwbhy8cTv84YTuaWs3SSMsuS/zXoB+9LKEWWaP2W+BNOVv7WtqVAlZkV8+8NXz1NCrN8AbQ5U8EPgRjc/NGl+w36coJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iNE946XaZZ/UDavnyWdB+dlNXnVSkFQT2AvCfqZ19LQ=;
 b=IJNs7HNM7VXNka+sDhyls9nj6IMzVWOFf6S/YJYChlpQ7hmuvMIzq91h+5b/EyJZadaK++xx4dJvZtKEgayviOK+HrMRDKsVw4SDr9hsp8mXSgTb0COcmNttrz1qSF8zk8SIFwW8c1Tybw2QqwWh2wRrgfPOjqKFu7slqKjC7H42fHvsxZT31ff89j1xhUTdNxaAJxhTjCTRlAjs2cZmf1PA7kHX4qFTEsfkzzsZ/F7eBUPG+8myqNH6yC6vzohmqaXEQCo7qMjhu1TX5iWc6/e1IeTCsPivQ/2r3hkJkjms7luj9ZuLesSnb6z5rmwKuJBnqO1p7wYbdamzeUPOlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iNE946XaZZ/UDavnyWdB+dlNXnVSkFQT2AvCfqZ19LQ=;
 b=POOPWQV2ow6Xxz/o+nJ7aG+1JjbEtyNhsNvglR1hS4lbxR0hVew6Q05o9aiAjyGrvqgJLWQLxLr+TxE8i9A04RJmOafPJP4/uoZ5C+/kJH3+jhPnoG2b8nOfHIx16NaP9VbQQKZhkZYu4TUjR90gCwR3U0Iqog7VeRAgYNL1sk8=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by PH0PR11MB5580.namprd11.prod.outlook.com (2603:10b6:510:e5::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.15; Fri, 1 Oct
 2021 16:46:54 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::31cb:3b13:b0e8:d8f4]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::31cb:3b13:b0e8:d8f4%9]) with mapi id 15.20.4544.025; Fri, 1 Oct 2021
 16:46:54 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Pali =?ISO-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Subject: Re: [PATCH v7 10/24] wfx: add fwio.c/fwio.h
Date: Fri, 01 Oct 2021 18:46:44 +0200
Message-ID: <19961646.Mslci0rqIs@pc-42>
Organization: Silicon Labs
In-Reply-To: <20211001160832.ozxc7bhlwlmjeqbo@pali>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
 <2174509.SLDT7moDbM@pc-42> <20211001160832.ozxc7bhlwlmjeqbo@pali>
X-ClientProxiedBy: PR1P264CA0020.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:19f::7) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
Received: from pc-42.localnet (37.71.187.125) by
 PR1P264CA0020.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:19f::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14 via Frontend Transport; Fri, 1 Oct 2021 16:46:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2f8cd9c0-07d9-44f5-66f7-08d984fb12d3
X-MS-TrafficTypeDiagnostic: PH0PR11MB5580:
X-Microsoft-Antispam-PRVS: <PH0PR11MB55800B53CBB43D69870F8C7693AB9@PH0PR11MB5580.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B0vtxO/EvZFGsvg6E0yrYhRD4OOcwDSlpTSPsVfbEQw6yH+kUfciv112J/6iVTaIlXiRbJ5tff2DXj5uTTYUY5+yfhixIYUSABN0szxXvFWdy6iLPfgmwOtbf53F6Yq3OlK7JFEVP5G/DlAUyL2TI3/JIeElOqycsWCgS0+nWedDwDzekz1kTikPmVbvZfMxy7LX+2wU3m0rfPGPwpw/OAtSGMDwk273qFJ+ro3u/Rc7p4spBh9c7jzDqFwQb3zvDUwLxnCMBHqMNckeuHttzc0anha3nmZNSwn3eKU4I/D2lT/q716l00mzgOqL6Id2lBZSOKi1w53BSYQVZElRoLReCCtbrFGx1aLV+7R8hmlnYJgmn+CglIUa8j7P+dPxrkx0XZsrAoI8gzQS6t0z0sBfeqk2HiD64XLkjOegPoZlTZBvi1e1KmHLaMOI+eT85DjQ1YwM45iTe0LrsrtgIBwnd/4uYbcyuzE4b/yvi0VCyykZUZsQdvyZIKDxXHcZzX/OhFZP5aeC3qcYBwoLAWt43Gvru79C650QcpOAcGm0COLCs4m+HIZrqSfKtW7ysG+CqGRwCjGB0O8xSX7iSs8F/jvJR2Sv9AMnEZKyXhRf5MhpA2aD2eNQihOQzMh5xJs7e8pedyKCD4CANw9q1DmeClBTYPBFiz9RORA4JHnZ3uctob5AYWfuMKicb02URMO814rPXOPJfxGv8IBl0h8VHXhbvJePhQ2qPMRAz6j0UxsYTQ5SOwC0ljaMBrChGciQXn1RhYwk9dtQSB+AQAaLZZHnigCVaeYs6gUk+WLQaff6r0MXGBRfBArnNWBM
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(7416002)(966005)(6512007)(4326008)(6486002)(508600001)(8936002)(5660300002)(9686003)(86362001)(66556008)(6916009)(66476007)(8676002)(52116002)(66946007)(38350700002)(38100700002)(36916002)(186003)(26005)(956004)(54906003)(316002)(66574015)(6666004)(83380400001)(33716001)(6506007)(2906002)(39026012);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?S1Yq1aFsuN/KeJwgA374r0Wc1ni2uUW4MtLDRsONSq8lgSf+HDYFxcuWe7?=
 =?iso-8859-1?Q?Z0q9GdaX/eo4XFurzmo+gT4GedHNU9pkpktGovI/c3F3JfnIrnCMY6mIJN?=
 =?iso-8859-1?Q?1hqODZ7Nv3pTYsTbpgeRrqKUveoGEoADAorblVmUCwtleGjtTF7B0yZpLa?=
 =?iso-8859-1?Q?1uzJjFxLfUgYMzMZUeGv5o/SaORrRnNlW+sUsvyFwok3PyTEZU79I91u+8?=
 =?iso-8859-1?Q?LU7f41BSrjK4TKeO+lH/ZgX8vhB4Gi8ra4lj0nDQpNeMxpoiyH8hX3Ge3L?=
 =?iso-8859-1?Q?E5a5joA1+6eDo8hDRo2T2HQt5r0acadk1Mq+41PcRBLYKGIfmr1NLA7gTB?=
 =?iso-8859-1?Q?BUKixTID7GVvot3j+X3FlSb9YxFuIND8D773ZMVxVJvFpQp+wN443jlaJV?=
 =?iso-8859-1?Q?5iRAaXjRNSRda7GVU2ldburg59u3nDi+ZoqX/x86Xcc+m3n179kPjauHHN?=
 =?iso-8859-1?Q?aSqEsAapTClA5atOpDWmn/Ce++320NGVQYccAybnXpkviuEKEKinGXTzVa?=
 =?iso-8859-1?Q?JTuhX06dfS8S2lF9ElLQgRlAWaY3IMzis96EsgIMtvt/KiZni/0vSu6uTS?=
 =?iso-8859-1?Q?CD/e7Bn95lHDQzr7esXGfEYKXgNcPxpHm26gblixL/A1jQmj3s5sJFeHEb?=
 =?iso-8859-1?Q?SP7HongDGrYtFM6Q7KKdZJ+BEDtLuD9N1F60HgrYWwPUGZkLNdZKzF+ogZ?=
 =?iso-8859-1?Q?A6bGulOMUT6bhwgOL7t8ot1l8sQf+srgcnbN7xZQrhCHME0JAGrc5DxO/I?=
 =?iso-8859-1?Q?2k5xBDLlvvs1loLT2ZHtF/G0VTko4QGumr+HwSHCNQ36shPVE63s7dIbqk?=
 =?iso-8859-1?Q?Jyur2CrWnL//oJX/rV8OLWI3Ww2fhJgG3LC3MSejzI+pXiiq3ayBvjMtk0?=
 =?iso-8859-1?Q?EmU3g4GwgehIGh8ADnxPOakuGicbr/rsaEJUdkTIE/SO2HE/nJTmJ1RY5x?=
 =?iso-8859-1?Q?p2ALVGyQmxl1GMoDRz8ihIbcD31FDbxmwuMziN2v2PyYRdxoxX0edPQAS2?=
 =?iso-8859-1?Q?VzKH07lDH8op13EEILNeT9qTNrCAUcQWIxCYOtYOGqONaiP2so5e4gO9oY?=
 =?iso-8859-1?Q?AObLngTTv0DebV52LD+8wFX7SeerwOM3I/W1ET5FcLZM0UJepzcSWgQVgn?=
 =?iso-8859-1?Q?fRRyDiAT6p9/hrlwkdsCV6bCVpk4gd57FRNl8Zr9Dbf0tu+oy5Njt+wPoP?=
 =?iso-8859-1?Q?f69uYKHKaEu9uN/7RE2K26/zbWE/TDjz9jQfpw/U9VA0K3B9rAe4Pwy1p/?=
 =?iso-8859-1?Q?KpHj7NYSDUrNU5Hams2b8GAlCmJOlZbOK4XxK/lebdV0f+g1BprPRL0dwz?=
 =?iso-8859-1?Q?HaBdZ0ekMx856/mS6fQbl8BDPs02xH54I7eC9I6UlhnDH1+CwGCUsVVAtd?=
 =?iso-8859-1?Q?dvJY3jg3iE?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f8cd9c0-07d9-44f5-66f7-08d984fb12d3
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2021 16:46:53.8835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YGbxwhtBrPUAXMIfYrPG2oRoxFxtFpjLXpybnqSO00MTfsM17RRC9TuPchiTatqtSGUowGO7l8YUuiV7fPP8dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5580
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
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Friday 1 October 2021 18:08:32 CEST Pali Roh=E1r wrote:
> On Friday 01 October 2021 17:09:41 J=E9r=F4me Pouiller wrote:
> > On Friday 1 October 2021 13:58:38 CEST Kalle Valo wrote:
> > > Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> > >
> > > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > > >
> > > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > [...]
> > >
> > > > +static int get_firmware(struct wfx_dev *wdev, u32 keyset_chip,
> > > > +                     const struct firmware **fw, int *file_offset)
> > > > +{
> > > > +     int keyset_file;
> > > > +     char filename[256];
> > > > +     const char *data;
> > > > +     int ret;
> > > > +
> > > > +     snprintf(filename, sizeof(filename), "%s_%02X.sec",
> > > > +              wdev->pdata.file_fw, keyset_chip);
> > > > +     ret =3D firmware_request_nowarn(fw, filename, wdev->dev);
> > > > +     if (ret) {
> > > > +             dev_info(wdev->dev, "can't load %s, falling back to %=
s.sec\n",
> > > > +                      filename, wdev->pdata.file_fw);
> > > > +             snprintf(filename, sizeof(filename), "%s.sec",
> > > > +                      wdev->pdata.file_fw);
> > > > +             ret =3D request_firmware(fw, filename, wdev->dev);
> > > > +             if (ret) {
> > > > +                     dev_err(wdev->dev, "can't load %s\n", filenam=
e);
> > > > +                     *fw =3D NULL;
> > > > +                     return ret;
> > > > +             }
> > > > +     }
> > >
> > > How is this firmware file loading supposed to work? If I'm reading the
> > > code right, the driver tries to load file "wfm_wf200_??.sec" but in
> > > linux-firmware the file is silabs/wfm_wf200_C0.sec:
> > >
> > > https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmwa=
re.git/tree/silabs
> > >
> > > That can't work automatically, unless I'm missing something of course.
> >
> > The firmware are signed. "C0" is the key used to sign this firmware. Th=
is
> > key must match with the key burned into the chip. Fortunately, the driv=
er
> > is able to read the key accepted by the chip and automatically choose t=
he
> > right firmware.
> >
> > We could imagine to add a attribute in the DT to choose the firmware to
> > load. However, it would be a pity to have to specify it manually whereas
> > the driver is able to detect it automatically.
> >
> > Currently, the only possible key is C0. However, it exists some internal
> > parts with other keys. In addition, it is theoretically possible to ask
> > to Silabs to burn parts with a specific key in order to improve security
> > of a product.
> >
> > Obviously, for now, this feature mainly exists for the Silabs firmware
> > developers who have to work with other keys.
> >
> > > Also I would prefer to use directory name as the driver name wfx, but=
 I
> > > guess silabs is also doable.
> >
> > I have no opinion.
> >
> >
> > > Also I'm not seeing the PDS files in linux-firmware. The idea is that
> > > when user installs an upstream kernel and the linux-firmware everythi=
ng
> > > will work automatically, without any manual file installations.
> >
> > WF200 is just a chip. Someone has to design an antenna before to be able
> > to use.
> >
> > However, we have evaluation boards that have antennas and corresponding
> > PDS files[1]. Maybe linux-firmware should include the PDS for these boa=
rds
> =

> So chip vendor provides firmware and card vendor provides PDS files.

Exactly.

> In
> my opinion all files should go into linux-firmware repository. If Silabs
> has PDS files for its devel boards (which are basically cards) then I
> think these files should go also into linux-firmware repository.
> =

> And based on some parameter, driver should load correct PDS file. Seems
> like DT can be a place where to put something which indicates which PDS
> file should be used.
> =

> But should be in DT directly name of PDS file? Or should be in DT just
> additional compatible string with card vendor name and then in driver
> itself should be mapping table from compatible string to filename? I do
> not know what is better.

The DT already accepts the attribute silabs,antenna-config-file (see
patch #2).

I think that linux-firmware repository will reject the pds files if
no driver in the kernel directly point to it. Else how to detect orphans?
So, I think it is slightly better to use a mapping table.


> > and the DT should contains the name of the design. eg:
> >
> >     compatible =3D "silabs,brd4001a", "silabs,wf200";
> >
> > So the driver will know which PDS it should use.
> >
> > In fact, I am sure I had this idea in mind when I have started to write
> > the wfx driver. But with the time I have forgotten it.
> >
> > If you agree with that idea, I can work on it next week.
> >
> >
> > [1]: https://github.com/SiliconLabs/wfx-pds


-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
