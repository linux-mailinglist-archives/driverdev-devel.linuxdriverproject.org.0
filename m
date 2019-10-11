Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB148D3F93
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 14:35:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 58B072048D;
	Fri, 11 Oct 2019 12:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id csN9tgdEt3Kg; Fri, 11 Oct 2019 12:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7AE4E2034D;
	Fri, 11 Oct 2019 12:35:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8B0A61BF292
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:35:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8279520341
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:35:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3AG7qV9iOD14 for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 12:35:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr700053.outbound.protection.outlook.com [40.107.70.53])
 by silver.osuosl.org (Postfix) with ESMTPS id 7FB0A2033D
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 12:35:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kJg35FlqooOBOb20CsbO+MVOHrvzdTM+QRED6eZtYBs7iMXIjfRhaovUVQt1Th1qn1RQPU/7iOMn2mDptsRSo4+oMs63pMMcgeYs4WBEIkPdkgRH0uyctIp60wPHcYjulXFD0Mk44CLKwUAGXtZ+KJHz90kvN3+FNZOhFMQTgvLoKApXJL9MtYEbDOpRTPAG3TYrL+ESVGy9IbRkh2z0zouT55mr47ydpC+ckovNmmr/Ql1U73AcqCOuVkJN/QjElLha+8m2QhWG/YeHq5yBV81tUBL7v7qmHI8pRWi5At3kdwySWKvvaPOYk/oDaPNtruYhcKcW1UfTglSPQBe4GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Whxo+WgEjij0YgVG2fkbFDoF1boUtbacdjuZaVzQ6+s=;
 b=XJnoORZlxhpUCUskkd0X+0GHrZn2gksOoYlwrIyye18rQyOhiARldDHi50d9bdqvvjjMPTmYV6Frvdv8Czbm1TgepaHLRwwdujZ6j1BBEYqRaE9Y/dQhxbJOUM3B8m/s54cs+C4zMyEi70tGboVQk52ktqzBO7m2byWqS8BTOfBgyiqhTQkVzEcxlpKexeYYJvMP4naDGmWzbEbSc5TyyHOTyR6vc8vi0CUjlhhVG/+XWWCX9ylq6zUFQhcJ8AE1NCFJ/jr/8x+BHfCTrk1U83Fa7yJFj4h1khXhlE4YiaLtYpp2C0jvPOggXTvnJJtj1yU7CUhELXepNeg7kq/+3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Whxo+WgEjij0YgVG2fkbFDoF1boUtbacdjuZaVzQ6+s=;
 b=EQf8n7ZWPKc7RiAugmj2wsCID+xchJCZxg2TLcd5hP7ANFtNY5wNxb8BBRIpg7RXiBmsYaEP6wi8e6lbNXsfBfTVpP+FtHdOIhphn0EBj4DOmsfhnkr2Xq1yeLBY8l+hpQ/pXo7YZMftKHKpX2cSlC0nR1vqCZEjqEPhfqi+Rro=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4255.namprd11.prod.outlook.com (52.135.37.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Fri, 11 Oct 2019 12:35:37 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 12:35:37 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "lkp@lists.01.org" <lkp@lists.01.org>
Subject: Re: [PATCH] staging: wfx: fix potential vulnerability to spectre
Thread-Topic: [PATCH] staging: wfx: fix potential vulnerability to spectre
Thread-Index: AQHVgBzd1G9uPB5+okyjo2amDVnWB6dVWYKAgAAHBoA=
Date: Fri, 11 Oct 2019 12:35:36 +0000
Message-ID: <2165496.I6CF8xJYvu@pc-42>
References: <20191011101551.30946-1-Jerome.Pouiller@silabs.com>
 <20191011121027.GA1144221@kroah.com>
In-Reply-To: <20191011121027.GA1144221@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6d7cf699-eab3-41e2-c7ee-08d74e4784b6
x-ms-traffictypediagnostic: MN2PR11MB4255:
x-microsoft-antispam-prvs: <MN2PR11MB425505C39A3933AF66DB771493970@MN2PR11MB4255.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:949;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(376002)(366004)(136003)(396003)(39850400004)(346002)(199004)(189003)(66574012)(71200400001)(14454004)(71190400001)(4744005)(8936002)(5660300002)(2351001)(186003)(25786009)(6512007)(9686003)(2501003)(446003)(6916009)(7736002)(305945005)(11346002)(66476007)(66556008)(64756008)(76176011)(91956017)(6506007)(66446008)(86362001)(6486002)(6246003)(229853002)(26005)(76116006)(66946007)(3846002)(256004)(99286004)(2906002)(33716001)(54906003)(6436002)(66066001)(14444005)(102836004)(8676002)(81166006)(81156014)(6116002)(1730700003)(4326008)(316002)(5640700003)(486006)(478600001)(476003)(39026011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4255;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hfVpjMDPUE4nYY29xUnD4HvqYqWdSleM8mmQABblNltS2MZCMwZrtUaW/g2MuJ4uAg85T77WS/XNATEUElW412cpDn9h2l7IkV1kYcV/d6EPrrrQdCjGUVYy1hojsNOdpu70K31ojqhz8nGUiM7DKP/LQP2t/mAQ8Z0SpplBzO3zjktEtJhjWQtTvLt1o8d8/UZ3NCVaVQhm8St/HREqjhhXoAM0L/faUSxzPz3DK74Ci1ymaaH0ea0r9REaZDipi8GyuvHdb/Mm1aTOgkEY/RjcbUSyBQ4rzkcezM4TSvLI2fkk73cMzwINqiRxmxNKNU1hNIYp1kh2+bI8p8Mrimo2YaFJY/pwbI+OchHToICdqy0jupYoTrcyTRt2SyYGm4pF+9p4ZTbUFAe5Feol6q3q78QMM7d3c4apguyvoZM=
x-ms-exchange-transport-forked: True
Content-ID: <A23DEEF861CD1F40A53617D53B4BBE1C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d7cf699-eab3-41e2-c7ee-08d74e4784b6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 12:35:37.0901 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hr8jTAVD4aVqgJiRqFexn0rzfj4pRY7GrHYL9Qtqvcgk6bKL9mDB5XzMTTj4/o3WYSWuQvns464RJgQYv4JKxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4255
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Friday 11 October 2019 14:10:35 CEST Greg Kroah-Hartman wrote:
> On Fri, Oct 11, 2019 at 10:15:54AM +0000, Jerome Pouiller wrote:
> > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> >
> > array_index_nospec() should be applied after a bound check.
> >
> > Fixes: 9bca45f3d6924f19f29c0d019e961af3f41bdc9e ("staging: wfx: allow t=
o send 802.11 frames")
> =

> No need for the full sha1, this should be:
>         Fixes: 9bca45f3d692 ("staging: wfx: allow to send 802.11 frames")

I copy-pasted information from kbuild robot notification.

I suggest that commit-id in robot notification is also cut down to 12
characters. Or even better, to use this snippet:

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>
Fixes: 9bca45f3d692 ("staging: wfx: allow to send 802.11 frames")

(I added lkp@lists.01.org in CC but, I am not sure it is the correct
ML. I am sorry if it is not the case)

-- =

J=E9r=F4me Pouiller

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
