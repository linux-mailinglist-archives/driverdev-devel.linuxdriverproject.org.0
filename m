Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 777031540FD
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Feb 2020 10:15:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DA518742F;
	Thu,  6 Feb 2020 09:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QhtU4EsjnD0p; Thu,  6 Feb 2020 09:15:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8134586EA5;
	Thu,  6 Feb 2020 09:15:03 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 09CF41BF414
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 09:15:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 05A832107D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 09:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QwnePJntZlKU
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 09:14:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id F24FF2045A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  6 Feb 2020 09:14:58 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: UffcRqgU/dZg3PkeV9wqYt8WK5ztx1CyNgGouj94f1xCsz5+Xn/qQZJOMIyohlD9Zg27QeS232
 ysMBUxBqUWLsMPpLK9w5Ssq+4MbX1rMMxdWMZ6pbFssGPekGr8kHTiqcRAOxVMLyMdhsUy3Qp7
 4CTQR1ENPpBwn6aftjCOOMETeB2K9VpsAlim8dHWpuZyEjFbdjmL0U+WnOnlJ66tEz1xEVPPXc
 0GU+MasRVQMvJBBP7MUZuROsVWGAr8m+MeJbA7jSh/rvGGJGzVRUGYJt6PrwtVPVVPrjf81qkp
 Qs0=
X-IronPort-AV: E=Sophos;i="5.70,409,1574146800"; d="scan'208";a="64478524"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Feb 2020 02:14:58 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Feb 2020 02:14:57 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 6 Feb 2020 02:14:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l+9LPNo+W2IDOw+M8imIDO0eP3sTvzGI3WecJXg1WXpaWbCWvGSgxoDxz3cP/4dpIz2/ZutZbixRTKixxnT2Xm/Q2h7LFGeCN1vxQPvWb4T/ZoJqTN7v0wmyBjYRwMYuXic0ltnCLE/Q479cufMOT6nrNe2EoTS8RPe1sseG4qbhx+rYT5Yt9j8t5DjAiId08ZEmw910pEm7aLN8xa2IjrPCpicKzkyIKcZ9BtIMYtjPR4AKS9qZd/IIYMKwZoPcapMlceW46hhtdcacCR3pv5fBT++W/w/YN4D2XlxkTHYHzFDoX/VOmRUzZmp0cKPFL5CgzFacZv9xz0cT/I0GIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8QP/57njsTLi3+KlsiWfaHr2IAPfuiKW6NLNV5BjJ+c=;
 b=Dg1bBg+72jRtWS8mZg1SWby908WuqmCh32qb1aLZpymgA4yLj7AkXBibpaed1hquPSzGXGuhOOLEjDmwVGgdSD0eX32psW7kW64qvHICKC+UiZk1I91fkM9JOjc0VWRQg5fi47dLA/mjBTSwETcs3+QXUqnRye9Cn/r9ILMTQ4gqmx38CYQ1AAHwWnrYVwU7PhSZV4vlH8acZN9RVdlev9L5rOsplgccRatowCFmujQg9VU1S2FqRwNxHnpqHYDrUJYakb9TUrWPairqsQIh2QiN6G3Pxq8FzeN1KsCtxTdTmYYqsf4PGiL9HxJa+/Vz9Yw4IOOhgyhTCxLrdYS41A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8QP/57njsTLi3+KlsiWfaHr2IAPfuiKW6NLNV5BjJ+c=;
 b=oaTL8DmV8u7/oy3dnskmXv7x9DbNCpmnNKB1TTU7aORBqerpS1KXX9v2CC2X0be4Iz9ExRi41r3VZ4/5oylQTdRAIrazKkndCgZDuaQWNvhZ8SZK6q+IECYbwsQUqhEhw0LDwsZgFj1ongdjUf+ap9wVUVLpv0pysgx26OtEIq4=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.147) by
 MN2PR11MB3887.namprd11.prod.outlook.com (10.255.181.206) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.23; Thu, 6 Feb 2020 09:14:55 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::8c1b:b94:5d2e:446b]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::8c1b:b94:5d2e:446b%3]) with mapi id 15.20.2707.020; Thu, 6 Feb 2020
 09:14:55 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v4 01/10] staging: most: remove device from interface
 structure
Thread-Topic: [PATCH v4 01/10] staging: most: remove device from interface
 structure
Thread-Index: AQHV0gMy+cfYshKLdEaAbagaEunRb6f4jwmAgAD17gCAAAMYgIAUcIuA
Date: Thu, 6 Feb 2020 09:14:55 +0000
Message-ID: <b8a77d5c7947dd4fb0f06f9938e15b1496f64cd4.camel@microchip.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
 <1579793906-5054-2-git-send-email-christian.gromm@microchip.com>
 <20200123181837.GA1927902@kroah.com>
 <2dc825b7ff12cf90de21f9f2486952a935401dba.camel@microchip.com>
 <20200124090955.GA2980450@kroah.com>
In-Reply-To: <20200124090955.GA2980450@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e068a52d-03db-4a94-4863-08d7aae507df
x-ms-traffictypediagnostic: MN2PR11MB3887:
x-microsoft-antispam-prvs: <MN2PR11MB3887DCE6328F5FFBA869D95FF81D0@MN2PR11MB3887.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 0305463112
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(396003)(376002)(39860400002)(189003)(199004)(81156014)(5660300002)(478600001)(71200400001)(316002)(6486002)(6916009)(8936002)(6506007)(91956017)(66946007)(66556008)(76116006)(64756008)(66476007)(66446008)(2616005)(86362001)(6512007)(81166006)(8676002)(4326008)(2906002)(26005)(186003)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3887;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WrCmgbLjPUF3YiCL4JGfZasoroBHfsinPYG6tL2vCDsT6SxCnPFL/Wjti/cK8u4/I7rNBZDi7ySLMs2BNgjTDWFBaCKLjqvoBjc0PG6cnEaofclbLziCsOBOp4rbvuXUrWAgWCZfX/NPUvX/XydB44ncnEMR6M7QKvywq3VkJs+uCOccJuyFaRzBwxl02WBC2Wuu+ByqUpzOf7FKAOeAhxBtuSAA5GKpZdJZvSpqsKIwJdn+0OrD7XEqrpZBccOCoDY8EZbzSLTzRurB3buz/AsTbjoipDyAywTk9QpZrsRtbAYylc+mB2mH4+Nqo3eL8DFGCtt3kidWGlCHATh+jIx6Fy0DXYKqNcjmKGkwnxgsIZzUaGg/YmU3a6nMs3wRT9OBFdTia9C4IWTwLNJ2OmzoXK+YHpoGql3zgzQvY0BjBqAFjDU557cr/+/nijwC
x-ms-exchange-antispam-messagedata: 8mgEZttpw3UYJTLIETIZp7qQkQ3aTPAdNAJ9KPhMAMlFnxHOwD3IoINLxZmjHItZuIwuiIH5qqana73m8JeMMQkCWaKuTBkOOxLGBFKFSRp5r/mLC97gFI4q6V5kuAyxQ3y9OUee657mGBMp6Y13vg==
x-ms-exchange-transport-forked: True
Content-ID: <5C6DA4B217482C418F0824025FD19854@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e068a52d-03db-4a94-4863-08d7aae507df
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2020 09:14:55.0861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ayI3eop0T67CQTJydA3+9KlIFlZhWjy74965414qRuMCG7UMTW6yhXCFapAD6YO2NHdGZ76ROx/oM6hc7bvn6VH6pgzvko5a2enHl39oqNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3887
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

On Fri, 2020-01-24 at 10:09 +0100, Greg KH wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On Fri, Jan 24, 2020 at 08:56:56AM +0000, 
> Christian.Gromm@microchip.com wrote:
> > On Thu, 2020-01-23 at 19:18 +0100, Greg KH wrote:
> > > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > > know the content is safe
> > > 
> > > On Thu, Jan 23, 2020 at 04:38:17PM +0100, Christian Gromm wrote:
> > > > This patch makes the adapter drivers use their own device
> > > > structures
> > > > when registering a most interface with the core module.
> > > > With this the module that actually operates the physical device
> > > > is
> > > > the
> > > > owner of the device.
> > > 
> > > Ick, why?  The interface should be part of sysfs, right, and now
> > > it
> > > isn't?
> > 
> > It still is. What has changed is that the device that actually
> > represents the attached hardware is used (see probe function of
> > the USB adapter driver for instance).
> 
> Ah.  Ick.  odd...
> 
> > > Who handles the lifetime rules of these interfaces now?  Why
> > > remove this?
> > 
> > The struct device that is allocated when attaching a MOST device is
> > handling the lifetime and the struct most_interface is
> > representing this device in the kernel. Hence, registered with
> > sysfs.
> > 
> > This ensures that the device is present in the kernel until its
> > physical stature is being detached from the system.
> > The core driver is just the man in the middle that registers the
> > bus and itself as the driver and organizes the configfs, sysfs and
> > communication paths to user space.
> > 
> > > 
> > > Why isn't the interface dynamically created properly?  That
> > > should
> > > solve
> > > the lifetime rules here, right?
> > 
> > The interface is dynamically allocated. This happens inside the
> > USB, DIM2, I2C etc. drivers. The struct most_interface is part of
> > the container struct there.
> 
> Ok, I'll take the first 7 of these patches and see what the end
> result
> looks like after that, it will make reviewing the code easier...

Did you find some time for the review yet?

thanks,
Chris


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
