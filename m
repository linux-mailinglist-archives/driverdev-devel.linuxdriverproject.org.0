Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C894C28F447
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Oct 2020 16:04:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39B53880E8;
	Thu, 15 Oct 2020 14:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uueccdweJkt5; Thu, 15 Oct 2020 14:04:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACE0F880D5;
	Thu, 15 Oct 2020 14:03:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 223FA1BF339
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 14:03:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1EB7A88444
 for <devel@linuxdriverproject.org>; Thu, 15 Oct 2020 14:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qKq0FyKer1rx for <devel@linuxdriverproject.org>;
 Thu, 15 Oct 2020 14:03:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2089.outbound.protection.outlook.com [40.107.223.89])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9224D88458
 for <devel@driverdev.osuosl.org>; Thu, 15 Oct 2020 14:03:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VBkYeljQXrWAFVPF0oCUtuO619CTckA3uxz1r0Hbg5tFXdt/Ra+vqYHCfpxd27RnhwYQIguIDEfgRdDw02M1QofwlJAutnp/ThkRYgoQkOItZZFu7myDRnyO1vTEvpD/+eS4Yp+TGzYN+3Fsxh+iGllETWeQc8P8Vio9vzAik95xBqiotDn36Ga7oeObYHTD59zPdhZQeyM10hnDBwMpSx4KALa8p+4SAuxmj6Y59W+I//FrPRRa0O6rScraXAPV6zJwMyFVkS9lMDwMvIihEAbt6mTN18kBjF4bOM1iV9+SMHsbioJZtIOsKq2sFruG1Jg71N6DoVDEDIiPtym1oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nx6IB7/tt02OcOIdIlS/b97xUsavB7+2pzYxL/IbOEM=;
 b=hZS4anu/1p2FBI5uf0gIqQp/NyVaZukuNBLOWC8t4xRsYe2FTbMyBkH27kK483Rj62/Ghy7wlKPO1LVtCu3JS57zR8Ai/yZCRryHaRe4OKYEbqGa0l8zLU/JT2Hj3zWCyb56fYB1X6YtSkjxqsu0am6338Ok0aACO2ZSxvmR8tjzRaRSmSg0QIkKhuCddeifDYVskwUmov+wQtOB1+/Xm3WGy47A63xQd5QeX90htxwlPvmF6VzxgLRgUeMmdRTNLLWWnzv9Q2Zq2GsuJ1p8vzF3yNlYqP75ChJEzlSoli0ZhtESZ30EbfHjHx8jcTB4r6mXeJUUOMX3F6yVfpkYvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nx6IB7/tt02OcOIdIlS/b97xUsavB7+2pzYxL/IbOEM=;
 b=SZ8XTQf7vyDtg5+NKiBDNYMlVbqItUZqKaKgQnDyin78BRnclm7EHSyFSMlRXr0sLNrowdjMtlQFHxzzGnpo8lrHJSzumup//Oyx6WFqTj2LWB4hujwRvQc9umrcIyBLLuzkgmBPLpZ9bufTDhefshy/i6uEic8A1UQ18CN390I=
Authentication-Results: linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=none action=none header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB4825.namprd11.prod.outlook.com (2603:10b6:806:111::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21; Thu, 15 Oct
 2020 14:03:53 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3455.031; Thu, 15 Oct 2020
 14:03:53 +0000
From: =?ISO-8859-1?Q?J=E9r=F4me?= Pouiller <jerome.pouiller@silabs.com>
To: Ulf Hansson <ulf.hansson@linaro.org>,
 Pali =?ISO-8859-1?Q?Roh=E1r?= <pali@kernel.org>
Subject: Re: [PATCH 07/23] wfx: add bus_sdio.c
Date: Thu, 15 Oct 2020 16:03:47 +0200
Message-ID: <2444203.ROLCPKctRj@pc-42>
Organization: Silicon Labs
In-Reply-To: <20201014124334.lgx53qvtgkmfkepc@pali>
References: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
 <2628294.9EgBEFZmRI@pc-42> <20201014124334.lgx53qvtgkmfkepc@pali>
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: SN4PR0401CA0040.namprd04.prod.outlook.com
 (2603:10b6:803:2a::26) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.localnet (82.67.86.106) by
 SN4PR0401CA0040.namprd04.prod.outlook.com (2603:10b6:803:2a::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21 via Frontend
 Transport; Thu, 15 Oct 2020 14:03:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ebefc732-f4d2-4968-6c15-08d8711325d2
X-MS-TrafficTypeDiagnostic: SA2PR11MB4825:
X-Microsoft-Antispam-PRVS: <SA2PR11MB4825ACF79958D1CE60B2C04493020@SA2PR11MB4825.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TyCZTLNQjtrhT3cY7A3TXZHlzLAAf877Gp3g3XLXOQPgoNN+58cVIvOpB9KZ4F35IomoOKlZ2BJBgfmF5OuSr5TUgGkToLhO9ccQbMPeqQihn2ul4Hv6Uzw9dTS6O5a233+4+frj7RCKXU7bHxe48OWyKBQzEymiW8r4zY+aOcyoMfPsB3hpzIIw8zYQJnt8aZESwyenAgxGC9unF2G5I1GGv7OqUc6b9lOokUsfDGcfuGe/KcRhZtX6a9hfCYENZSQD13JGO+lE6cbyiUVoqbkfbeBB1/scfJBv6wJJtMPk91uwFKlkcZsfl3FTHP6KTUXQNfsdI4XdAR0W/saxW/XGNGKIRUPne5ka7Uu7joHuzcjNujFRUvD0gvuQzZXA6+EzlbrZo65f3cj4jQDy/Kdf/pg1z/yCCwqkX1IHhatannd5bI4N3NOLz8B1KHxNFpOr3YJTnWF23/F77qkwhg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(346002)(39850400004)(366004)(376002)(54906003)(33716001)(110136005)(26005)(66556008)(16526019)(66946007)(316002)(66476007)(8936002)(478600001)(83080400001)(186003)(6512007)(8676002)(9686003)(6666004)(36916002)(7416002)(5660300002)(4326008)(66574015)(2906002)(6506007)(6486002)(956004)(86362001)(52116002)(83380400001)(966005)(403724002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: frk1a4J5TsdRGuoUC4CzU91q8rgx0MD/KH7ZEBciNO3c+usGH4DDYs+KZje/iyBsJhPo2hFjK+cFGckEgEV58g+W1A+wOrDYeqCAJTC5orsuSVvl/K4EbJw2OZv6NMWrNSi29vBG+JzmYcABZe+d6QoIUyw9gxFDFn/c9/v96jxDVc1uW7ME/H3xeWylfRjlzXluMHMisX+Jj/NW8xtt8PkTncvgkZ3gbXg51FtQxYVn96PIrDQf0nDqM++9VI7sDHWw1+5tZqGb/vCe9KsTnAljzV1Ussa1lxTBkGI7OOmEc05g3vHzlCzgR+/BEm78XEHaQRcZ3czJXLmrhRZbZ4JGXhUu5/2KcaKCAMx2c8ObCvVbKV2C/1MDmh+SO6o624rquFQohGawYJEDiPhGQw//NeoTuS/jQ/7I/tVzakWoUj4qB6AMZA+oR3LG2erOMjZLY9GVt6vROVeEqI4eM643LU759CrrAc6hp3mBEXnxYyD21XmERHMVHpmD7EfrKJ5rCRz2qcFZFSInpnac/A7hlLqFPpokvpB3M2+2QuxuNpmRHIrV2SmA9oO6KNYrdaT3EHXysUWdoGh0iHxdkn5skOzJUSycDFZ14vP0iJjj6BnkcmDC14OqiPpTpC3I0P25+wqZErzsFJS09goh7Q==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebefc732-f4d2-4968-6c15-08d8711325d2
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2020 14:03:52.8578 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iI1NxQQOUHbjaXXbA8+94xkhbKHepOXvdadagz9BF2lbVvlwUWYJI4tu3VVlaLrVxRcHkcJFC2ED5mJWVvZctw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4825
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
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wednesday 14 October 2020 14:43:34 CEST Pali Roh=E1r wrote:
> On Wednesday 14 October 2020 13:52:15 J=E9r=F4me Pouiller wrote:
> > On Tuesday 13 October 2020 22:11:56 CEST Pali Roh=E1r wrote:
> > > On Monday 12 October 2020 12:46:32 Jerome Pouiller wrote:
> > > > +#define SDIO_VENDOR_ID_SILABS        0x0000
> > > > +#define SDIO_DEVICE_ID_SILABS_WF200  0x1000
> > > > +static const struct sdio_device_id wfx_sdio_ids[] =3D {
> > > > +     { SDIO_DEVICE(SDIO_VENDOR_ID_SILABS, SDIO_DEVICE_ID_SILABS_WF=
200) },
> > >
> > > Please move ids into common include file include/linux/mmc/sdio_ids.h
> > > where are all SDIO ids. Now all drivers have ids defined in that file.
> > >
> > > > +     // FIXME: ignore VID/PID and only rely on device tree
> > > > +     // { SDIO_DEVICE(SDIO_ANY_ID, SDIO_ANY_ID) },
> > >
> > > What is the reason for ignoring vendor and device ids?
> >
> > The device has a particularity, its VID/PID is 0000:1000 (as you can see
> > above). This value is weird. The risk of collision with another device =
is
> > high.
> =

> Those ids looks strange. You are from Silabs, can you check internally
> in Silabs if ids are really correct? And which sdio vendor id you in
> Silabs got assigned for your products?

I confirm these ids are the ones burned in the WF200. We have to deal with
that :( .


> I know that sdio devices with multiple functions may have different sdio
> vendor/device id particular function and in common CIS (function 0).
> =

> Could not be a problem that on one place is vendor/device id correct and
> on other place is that strange value?
> =

> I have sent following patch (now part of upstream kernel) which exports
> these ids to userspace:
> https://lore.kernel.org/linux-mmc/20200527110858.17504-2-pali@kernel.org/=
T/#u
> =

> Also for debugging ids and information about sdio cards, I sent another
> patch which export additional data:
> https://lore.kernel.org/linux-mmc/20200727133837.19086-1-pali@kernel.org/=
T/#u
> =

> Could you try them and look at /sys/class/mmc_host/ attribute outputs?

Here is:

    # cd /sys/class/mmc_host/ && grep -r . mmc1/
    mmc1/power/runtime_suspended_time:0
    grep: mmc1/power/autosuspend_delay_ms: Input/output error
    mmc1/power/runtime_active_time:0
    mmc1/power/control:auto
    mmc1/power/runtime_status:unsupported
    mmc1/mmc1:0001/vendor:0x0000
    mmc1/mmc1:0001/rca:0x0001
    mmc1/mmc1:0001/device:0x1000
    mmc1/mmc1:0001/mmc1:0001:1/vendor:0x0000
    mmc1/mmc1:0001/mmc1:0001:1/device:0x1000
    grep: mmc1/mmc1:0001/mmc1:0001:1/info4: No data available
    mmc1/mmc1:0001/mmc1:0001:1/power/runtime_suspended_time:0
    grep: mmc1/mmc1:0001/mmc1:0001:1/power/autosuspend_delay_ms: Input/outp=
ut error
    mmc1/mmc1:0001/mmc1:0001:1/power/runtime_active_time:0
    mmc1/mmc1:0001/mmc1:0001:1/power/control:auto
    mmc1/mmc1:0001/mmc1:0001:1/power/runtime_status:unsupported
    mmc1/mmc1:0001/mmc1:0001:1/class:0x00
    grep: mmc1/mmc1:0001/mmc1:0001:1/info2: No data available
    mmc1/mmc1:0001/mmc1:0001:1/modalias:sdio:c00v0000d1000
    mmc1/mmc1:0001/mmc1:0001:1/revision:0.0
    mmc1/mmc1:0001/mmc1:0001:1/uevent:OF_NAME=3Dmmc
    mmc1/mmc1:0001/mmc1:0001:1/uevent:OF_FULLNAME=3D/soc/sdhci@7e300000/mmc=
@1
    mmc1/mmc1:0001/mmc1:0001:1/uevent:OF_COMPATIBLE_0=3Dsilabs,wfx-sdio
    mmc1/mmc1:0001/mmc1:0001:1/uevent:OF_COMPATIBLE_N=3D1
    mmc1/mmc1:0001/mmc1:0001:1/uevent:SDIO_CLASS=3D00
    mmc1/mmc1:0001/mmc1:0001:1/uevent:SDIO_ID=3D0000:1000
    mmc1/mmc1:0001/mmc1:0001:1/uevent:SDIO_REVISION=3D0.0
    mmc1/mmc1:0001/mmc1:0001:1/uevent:MODALIAS=3Dsdio:c00v0000d1000
    grep: mmc1/mmc1:0001/mmc1:0001:1/info3: No data available
    grep: mmc1/mmc1:0001/mmc1:0001:1/info1: No data available
    mmc1/mmc1:0001/ocr:0x00200000
    grep: mmc1/mmc1:0001/info4: No data available
    mmc1/mmc1:0001/power/runtime_suspended_time:0
    grep: mmc1/mmc1:0001/power/autosuspend_delay_ms: Input/output error
    mmc1/mmc1:0001/power/runtime_active_time:0
    mmc1/mmc1:0001/power/control:auto
    mmc1/mmc1:0001/power/runtime_status:unsupported
    grep: mmc1/mmc1:0001/info2: No data available
    mmc1/mmc1:0001/type:SDIO
    mmc1/mmc1:0001/revision:0.0
    mmc1/mmc1:0001/uevent:MMC_TYPE=3DSDIO
    mmc1/mmc1:0001/uevent:SDIO_ID=3D0000:1000
    mmc1/mmc1:0001/uevent:SDIO_REVISION=3D0.0
    grep: mmc1/mmc1:0001/info3: No data available
    grep: mmc1/mmc1:0001/info1: No data available



-- =

J=E9r=F4me Pouiller


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
