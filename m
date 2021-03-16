Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E66B633CF34
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 09:03:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51FB34317A;
	Tue, 16 Mar 2021 08:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YzZqSiTjcWzL; Tue, 16 Mar 2021 08:03:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 71C7F4300E;
	Tue, 16 Mar 2021 08:03:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C81231BF378
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 08:03:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B267E60641
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 08:03:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V9N6EumE7w1l for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 08:03:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 720C2606E1
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:03:06 +0000 (UTC)
IronPort-SDR: YWHHjMSqdNS5BdnjvMQoF1IR+tbYScKM7iCX6BdlEk5oLQc6eLOwq4E6Pa5tjVwMP88Gbn3JTr
 hmnbknmQg7jA==
X-IronPort-AV: E=McAfee;i="6000,8403,9924"; a="168492619"
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="168492619"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2021 01:03:05 -0700
IronPort-SDR: 4Mlf+xJkj70RZ08Adl2iC52T/Xk6/ENFhy59/2Pj5tyn0kcKwhlsNQJ8+GIkjBJu+nLCvAGJVR
 VpXWdqS3Y8HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,251,1610438400"; d="scan'208";a="590576542"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga005.jf.intel.com with ESMTP; 16 Mar 2021 01:03:04 -0700
Received: from shsmsx603.ccr.corp.intel.com (10.109.6.143) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 01:03:03 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.109.6.141) by
 SHSMSX603.ccr.corp.intel.com (10.109.6.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Mar 2021 16:03:01 +0800
Received: from shsmsx601.ccr.corp.intel.com ([10.109.6.141]) by
 SHSMSX601.ccr.corp.intel.com ([10.109.6.141]) with mapi id 15.01.2106.013;
 Tue, 16 Mar 2021 16:03:01 +0800
From: "Li, Philip" <philip.li@intel.com>
To: =?iso-8859-1?Q?J=E9r=F4me_Pouiller?= <jerome.pouiller@silabs.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, lkp <lkp@intel.com>
Subject: RE: [kbuild-all] Re: [PATCH] wfx: fix irqf_oneshot.cocci warnings
Thread-Topic: [kbuild-all] Re: [PATCH] wfx: fix irqf_oneshot.cocci warnings
Thread-Index: AQHXGjluGKy1l/wG8EupGMY1Pavj+qqGQOCw
Date: Tue, 16 Mar 2021 08:03:00 +0000
Message-ID: <a8dba72b92a7407c9f2d531527137643@intel.com>
References: <20210315132501.441681-25-Jerome.Pouiller@silabs.com>
 <20210315210920.GA43634@d108da9836c5> <3096745.nmkoU2l6Xm@pc-42>
In-Reply-To: <3096745.nmkoU2l6Xm@pc-42>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.239.127.36]
MIME-Version: 1.0
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

> Subject: [kbuild-all] Re: [PATCH] wfx: fix irqf_oneshot.cocci warnings
> =

> Hello,
> =

> On Monday 15 March 2021 22:09:20 CET kernel test robot wrote:
> >
> > From: kernel test robot <lkp@intel.com>
> >
> > drivers/net/wireless/silabs/wfx/bus_sdio.c:134:8-33: ERROR: Threaded IR=
Q with no primary handler requested without
> IRQF_ONESHOT
> >
> >  Since commit 1c6c69525b40 ("genirq: Reject bogus threaded irq requests=
")
> >  threaded IRQs without a primary handler need to be requested with
> >  IRQF_ONESHOT, otherwise the request will fail.
> >
> >  So pass the IRQF_ONESHOT flag in this case.
> >
> > Generated by: scripts/coccinelle/misc/irqf_oneshot.cocci
> >
> > CC: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: kernel test robot <lkp@intel.com>
> > ---
> >
> > url:    https://github.com/0day-ci/linux/commits/Jerome-Pouiller/wfx-ge=
t-out-from-the-staging-area/20210315-212855
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.=
git b828324bba8f575fde487a91fec07303789dda8a
> >
> >  bus_sdio.c |    3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > --- a/drivers/net/wireless/silabs/wfx/bus_sdio.c
> > +++ b/drivers/net/wireless/silabs/wfx/bus_sdio.c
> > @@ -132,7 +132,8 @@ static int wfx_sdio_irq_subscribe(void *
> >                 flags =3D IRQF_TRIGGER_HIGH;
> >         flags |=3D IRQF_ONESHOT;
> >         return devm_request_threaded_irq(&bus->func->dev, bus->of_irq, =
NULL,
> > -                                        wfx_sdio_irq_handler_ext, flag=
s,
> > +                                        wfx_sdio_irq_handler_ext,
> > +                                        flags | IRQF_ONESHOT,
> >                                          "wfx", bus);
> >  }
> >
> >
> =

> Obviously, "flags" always contains IRQF_ONESHOT. So, it is a false positi=
ve.
Thanks for the feedback. Sorry about this false positive, this had been dis=
abled
for auto report now.

> =

> =

> --
> J=E9r=F4me Pouiller
> =

> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
