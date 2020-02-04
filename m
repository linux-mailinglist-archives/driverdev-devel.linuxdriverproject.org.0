Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D3D1513E3
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Feb 2020 02:00:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4D0184EAD;
	Tue,  4 Feb 2020 01:00:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id avNIh5oB4ge6; Tue,  4 Feb 2020 01:00:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A2B6884896;
	Tue,  4 Feb 2020 01:00:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD13B1BF980
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 01:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B79B220010
 for <devel@linuxdriverproject.org>; Tue,  4 Feb 2020 01:00:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VPCgUD-6Io-U for <devel@linuxdriverproject.org>;
 Tue,  4 Feb 2020 01:00:46 +0000 (UTC)
X-Greylist: delayed 00:06:15 by SQLgrey-1.7.6
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz
 [202.36.163.20])
 by silver.osuosl.org (Postfix) with ESMTPS id 1A0E92000E
 for <devel@driverdev.osuosl.org>; Tue,  4 Feb 2020 01:00:45 +0000 (UTC)
Received: from mmarshal3.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 3394C806B7;
 Tue,  4 Feb 2020 13:54:28 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
 s=mail181024; t=1580777668;
 bh=tKQC6Ipa66JarTP+nI+/F28NSi13XpZtVs3kbVJL2vA=;
 h=From:To:CC:Subject:Date:References:In-Reply-To;
 b=M0sqb1E68F0qUCN8SZtCYA4EcSGqM8y88CK9Z2MFzPUJaMIxvRbjpiwFsFzlWJOTZ
 FYW7pKgK/pZ0/RxVz/xZnKKpnBHCUJHyK1AqgtqILuN23QaekqimUAmOKQ9etomlBJ
 9mFzqUtwCq74AeWUzQqfL/PQ6ncVofyOSFV05nVU9cXXDOXquOCaiAcD4FbtJuMWVj
 MIlf1JPfAqD+Ie5E4wk6SxqeYDhqQj/vITtymmApV+UvBZ0f2NNMMmTEUf7Ry1lKsU
 HzGQ7dQbt6AXM9Zryl584xpMY165fYFJDCLDmKVHLyJoCFHE99jDkMQdcbCuqTUf0E
 76lQrrtkTxPPQ==
Received: from svr-chch-ex1.atlnz.lc (Not Verified[10.32.16.77]) by
 mmarshal3.atlnz.lc with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e38c0c40000>; Tue, 04 Feb 2020 13:54:29 +1300
Received: from svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) by
 svr-chch-ex1.atlnz.lc (2001:df5:b000:bc8::77) with Microsoft SMTP Server
 (TLS) id 15.0.1473.3; Tue, 4 Feb 2020 13:54:27 +1300
Received: from svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8]) by
 svr-chch-ex1.atlnz.lc ([fe80::409d:36f5:8899:92e8%12]) with mapi id
 15.00.1473.005; Tue, 4 Feb 2020 13:54:27 +1300
From: Chris Packham <Chris.Packham@alliedtelesis.co.nz>
To: "linux@roeck-us.net" <linux@roeck-us.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging/octeon: Mark Ethernet driver as BROKEN
Thread-Topic: [PATCH] staging/octeon: Mark Ethernet driver as BROKEN
Thread-Index: AQHV2vWmtCtKfNrhHkKtpp3ao2yroA==
Date: Tue, 4 Feb 2020 00:54:26 +0000
Message-ID: <8168627a60e9e851860f8cc295498423828401c9.camel@alliedtelesis.co.nz>
References: <20191202141836.9363-1-linux@roeck-us.net>
 <20191202165231.GA728202@kroah.com> <20191202173620.GA29323@roeck-us.net>
 <20191202181505.GA732872@kroah.com>
In-Reply-To: <20191202181505.GA732872@kroah.com>
Accept-Language: en-NZ, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.32.28.97]
Content-ID: <8642AD139CC0B24498FBF8659832B143@atlnz.lc>
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
 "julia.lawall@lip6.fr" <julia.lawall@lip6.fr>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "wambui.karugax@gmail.com" <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg & All,

On Mon, 2019-12-02 at 19:15 +0100, Greg Kroah-Hartman wrote:
> On Mon, Dec 02, 2019 at 09:36:20AM -0800, Guenter Roeck wrote:
> > On Mon, Dec 02, 2019 at 05:52:31PM +0100, Greg Kroah-Hartman wrote:
> > > On Mon, Dec 02, 2019 at 06:18:36AM -0800, Guenter Roeck wrote:
> > > > The code doesn't compile due to incompatible pointer errors
> > > > such as
> > > > 
> > > > drivers/staging/octeon/ethernet-tx.c:649:50: error:
> > > > 	passing argument 1 of 'cvmx_wqe_get_grp' from
> > > > incompatible pointer type
> > > > 
> > > > This is due to mixing, for example, cvmx_wqe_t with 'struct
> > > > cvmx_wqe'.
> > > > 
> > > > Unfortunately, one can not just revert the primary offending
> > > > commit, as doing so
> > > > results in secondary errors. This is made worse by the fact
> > > > that the "removed"
> > > > typedefs still exist and are used widely outside the staging
> > > > directory,
> > > > making the entire set of "remove typedef" changes pointless and
> > > > wrong.
> > > 
> > > Ugh, sorry about that.
> > > 
> > > > Reflect reality and mark the driver as BROKEN.
> > > 
> > > Should I just delete this thing?  No one seems to be using it and
> > > there
> > > is no move to get it out of staging at all.
> > > 
> > > Will anyone actually miss it?  It can always come back of someone
> > > does...
> > > 
> > 
> > All it does is causing trouble and misguided attempts to clean it
> > up.
> > If anything, the whole thing goes into the wrong direction (declare
> > a
> > complete set of dummy functions just to be able to build the driver
> > with COMPILE_TEST ? Seriously ?).
> > 
> > I second the motion to drop it. This has been in staging for 10
> > years.
> > Don't we have some kind of time limit for code in staging ? If not,
> > should we ? If anyone really needs it, that person or group should
> > really invest the time to get it out of staging for good.
> 
> 10 years?  Ugh, yes, it's time to drop the thing, I'll do so after
> -rc1
> is out.
> 

As a long suffering Cavium MIPs customer could I request that this
isn't dropped. I'll get someone here to take a look at fixing the build
issues.

Given our platform isn't upstream I'm not sure that we'll be able to
meet the criteria for getting it out of staging.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
