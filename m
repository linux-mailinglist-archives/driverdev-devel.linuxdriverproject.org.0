Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 828A41248FE
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Dec 2019 15:03:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1791D88312;
	Wed, 18 Dec 2019 14:03:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V+FogTmlYTV4; Wed, 18 Dec 2019 14:03:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0249787FFF;
	Wed, 18 Dec 2019 14:02:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6B0A1BF359
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:02:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFD8820133
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:02:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e66i+Zxs+9P4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:02:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id ABCEA1FEBF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 18 Dec 2019 14:02:55 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Okmp2kLBJyVS6AO0+GmSCaEx4FvHBJ8iqF0443TznQMWLW6kkIOYnmqANu/336d5Sf1TQ0HSEk
 gsSU4AoeaGJ033gBpqfVB2SgJYOE8hVP4joDNa+5T35KcRR9tb73K6k4fUGk4EC7l6KO8TTDGK
 mqskn46A8UylzC/7INRYH9FQcJjWCLy7MxHJA+O5xquN570nZp/vA2948SKSr/OrebH1JrcxK1
 qGcWtSrR5pconKCFnqAtglaAFWAjN1Ksq2+XFc7P/eZdZ+rLhhs/h1MqkhU30z3JhLzA/qeI2f
 1p4=
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="58165697"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Dec 2019 07:02:46 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 18 Dec 2019 07:02:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 18 Dec 2019 07:02:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fhWe0A1YOgZSL9uytCV/JOUuBYEIcz4qsBR5oasRk6BEFGqpqMZddyzXe/MBg69VnW6R+YC0bXNra7yOJyGCFEgOhFugJUdRukoR+gfaB+/XsCJNDYfPCMh96jcDwMuU/Ps4nK8lX88IRlsLhc1upFytZ5lU1Xlh9Mj0FWkF8Fu808weLTadzpZpKFlC9unfiIIZNKHF/rK/SWRdzHpuN5YAFF8smJLLVfwTMVEKRRsxvreoVUFnxu1MVTW8js+XF5L9Gb56Z/3DzdMatm1KQ4f/XM5/lnB+XCOs/pWsHxn5zeNBMufprOU08MJmS7hI3kEE4eVgjlOZoJPBOXYZAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQX3ziIYlPz5m8UoECjlq4PfG42WesA6tG8zGvK3bAY=;
 b=WmaV8c/yi5OCGedjJJWKYbS+B5klOmmQMPkSnI8QdWsqhtfwuFY1yoLxWJjAHup4jBXQE5voWAM8Mz2LyN8maw1awpIwqV59dsD/j5eVNhltKQKU2iWV/w4EtukWxdHAl0YTIJ1MWBst53ocmo4DWi3Qrd48WygUr8r8dY72lexrgJsuzENeJtvuoCmoyMW8LpoyNSk4eHiFjlJT5ndW/0BjtRCLGlYWApNSLXNHzM5SrPpTUT+EF7f5n2iHeFjhSFwnBFct8nAJdjKlu1dx0dErTTYbm4lhLSG4cJnXfcZj83u+xEoBUTQO9TB0VszU06aUdVvAF+gyRtNMtJppcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQX3ziIYlPz5m8UoECjlq4PfG42WesA6tG8zGvK3bAY=;
 b=KImj7JAMhL2ZacUXzfvg+kQJ/V9QTNVBnnYTaVJ6A8/HGL5HDbA//8QXvwZNseUKQyrMncz5Htzfy5FaA+oBEqE6FelPSj6fNKKFJPLcIC06hnm40sSrBP3HPQ9qujXmybclkaPYL1HNxM1QXFVGeNtT2IVBz81lQ0OWY7bAfT8=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.147) by
 MN2PR11MB4286.namprd11.prod.outlook.com (52.135.38.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Wed, 18 Dec 2019 14:02:43 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd%3]) with mapi id 15.20.2538.019; Wed, 18 Dec 2019
 14:02:43 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Thread-Topic: [PATCH RFC v2 7/9] staging: most: move core files out of the
 staging area
Thread-Index: AQHVsa2n5xJpSzPzn0qztCi6rUw4Dae+UgsAgAGijYA=
Date: Wed, 18 Dec 2019 14:02:43 +0000
Message-ID: <553516df78dcb750d107ad35bd56a164e7fe7e72.camel@microchip.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
 <1576238662-16512-8-git-send-email-christian.gromm@microchip.com>
 <20191217130548.GA3227907@kroah.com>
In-Reply-To: <20191217130548.GA3227907@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c71cb55c-0402-4b3f-3fd2-08d783c2f3db
x-ms-traffictypediagnostic: MN2PR11MB4286:
x-microsoft-antispam-prvs: <MN2PR11MB42868F04378878AF0F809390F8530@MN2PR11MB4286.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(366004)(396003)(136003)(39860400002)(199004)(189003)(52314003)(4326008)(8936002)(478600001)(2906002)(8676002)(81156014)(81166006)(36756003)(5660300002)(6512007)(71200400001)(4001150100001)(26005)(6506007)(91956017)(86362001)(76116006)(316002)(66556008)(66476007)(66446008)(64756008)(186003)(6916009)(2616005)(66946007)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4286;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SWfdwkk3vyDu5J2k3u/qaMDvuKPZ2tveNySB+jk/qVSjv5lCVxtQ7nVeTwUuzc0CG71dBDVSnvUr5EAzDJNB/mZ0irppHGz+pn0L/K2YR5qXdebm0l8SExd6/GlCUHxjhNZ8jl412nyJdJ3/6FJDleIhyjK1GTAHMAwnJ0gZ+dbB7X3qdOZx53CdlKkhKI5utETYSPCqATaJI77C5hvZ5wGESuIU5JHRZVfH4+DH3bkq/bMTZY1rwKXZPBvmJG6wAOE7Evl3rQXjC9M9PR5ITmBzb1O3PS+pgWQFDGPHd3PpEhB/2bYwHOWBpzmYUEczI+nXRihMNF7WDojQvG4T0FRmcO9pRsTHEqDEFy5bQsmi713yCfUgEfQKksaw3AsNBJivrqz+ZluuAlf6xLzl+Bpe1u9sJrtLFlsFpc+xwUoXBeHssSLa+K3PhES5HEQBLLgUL4abtedg9uE2fIbh+fyJaBYu5n1J/S2uWlRaUWl+slc2TQQ0+mA3XB1a2VAG
x-ms-exchange-transport-forked: True
Content-ID: <88141EF2C3E9B94B933B64B5060B58E0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c71cb55c-0402-4b3f-3fd2-08d783c2f3db
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 14:02:43.2631 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JAQbYgBQl8PS7h7f35rtRmeFHa7VWDc3fuTy8C/oeQ8s+c9IzuXxsriLNt/kY9GAYro3cAdzj1NnOEgfgWBGEf34JWK45SfVstBRRLlqvIU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4286
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
Cc: driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, 2019-12-17 at 14:05 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Fri, Dec 13, 2019 at 01:04:20PM +0100, Christian Gromm wrote:
> > This patch moves the core module to the /drivers/most directory
> > and makes all necessary changes in order to not break the build.
> > 
> > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> 
> I've applied the patches up to this one in the series, but I still
> have
> questions about the file you are trying to move here.
> 
> It's not in this patch, but I'll just quote from the file
> drivers/staging/most/core.c directly:
> 
>  * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co.
> KG
> 
> You've touched this file since 2015 :)
> 
> #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> 
> No need for this, You have drivers here, no need to use any pr_*
> calls,
> as you always have a device structure.
> Along with that, almost all of your pr_info() calls are really
> errors/warnigns, so use dev_err() or dev_warn() instead please.
> 
> The one:
> pr_info("registered new core component %s\n", comp->name);
> 
> Should at best be a dev_info() line, but really, you don't need to be
> loud if all goes well, right?
> 
> pr_info("deregistering component %s\n", comp->name);
> 
> Should be dev_dbg().
> 
> static void release_interface(struct device *dev)
> {
>         pr_info("releasing interface dev %s...\n", dev_name(dev));
> }
> 
> static void release_channel(struct device *dev)
> {
>         pr_info("releasing channel dev %s...\n", dev_name(dev));
> }
> 
> How did I miss this before?
> 
> The driver core documentation used to have a line saying I was
> allowed
> to make fun of programmers who did this, but that had to be removed
> :(
> 
> Anyway, this is totally wrong, first off, delete the debugging lines.
> Secondly how are you really releasing anything?

Allocated memory is being freed inside the deregister* functions,
once a device is detached from the system or the physical adapter
driver has been removed. There a loop frees all channels and interfaces
and the devices are unregistered with the kernel.

I can move this to the release functions.

> You have to free the
> memory here.  You can not have an "empty" release function, the
> driver
> core requires you to actually do something here.
> 
> Same for release_most_sub() and anywhere else I missed in my review.

Here no memory has been allocated dynamically. What am I supposed to
free up?

I've seen code in the kernel that does host empty release functions.
That's probably why I didn't recognized this as a red flag or sensed
any bad feelings.

thanks,
Chris


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
