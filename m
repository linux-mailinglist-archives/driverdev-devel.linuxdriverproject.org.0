Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D5110ADC6
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Nov 2019 11:33:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2F6398826A;
	Wed, 27 Nov 2019 10:33:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kHtfcn3yHzLC; Wed, 27 Nov 2019 10:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CC3E88168;
	Wed, 27 Nov 2019 10:33:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA7D01BF2C2
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 10:33:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E7516854AD
 for <devel@linuxdriverproject.org>; Wed, 27 Nov 2019 10:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ie64nbuyWSCD for <devel@linuxdriverproject.org>;
 Wed, 27 Nov 2019 10:33:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 741B38559B
 for <devel@driverdev.osuosl.org>; Wed, 27 Nov 2019 10:33:07 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: tmPH9ezL6FFw5I68zdxVLAgWFJiVsRFM6Yr4BLf9dnDVYSDwySWBZiUXAGjPSbzVpWCtRcQXHT
 uKRFWfOXjRDE45pv5VZ9XHWOeI8rn/An+mRAMrgTSu9EHltAOVhBMpclG9wadsgEdH8ma+/b0C
 r/2sbATy9mZ63uyAtDONgj7o7jN2ZZr/nruVMpS5qgfP6svxMI06fEsQRKDh4KAB7lS5CBhzAe
 WYUoUEV0PYXwQVMukixf3slvMKUMqnND13QK7RomUOayqOuAOYFEJAsJ0IwuAnFmfwLe5UFNiW
 uUM=
X-IronPort-AV: E=Sophos;i="5.69,249,1571727600"; d="scan'208";a="58526141"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Nov 2019 03:33:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Nov 2019 03:33:01 -0700
Received: from NAM03-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 27 Nov 2019 03:33:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MofEfawi9yU3y4TlpLqyHEKjczrXRzsLWj6P7N5O/pl0Tm3ij+vadBBsbtSpABq0wu6LQgTrbmlPE+D6AXHdyr6DbgNEqRuG4bARE8zOu0buVN9kwxt7HIfVQKZvc8+hT3T45BAxMCXgsetkd8QIlPPv3zFVN1h2q4Cvs8Qx1mSkPyV72bXc2qBZHCu4z8Lb+ICtXbk2c84B7AcKUIUja5Tkp6Bo7qh8ntP/8bKxI7iIUNd6D4qC+R8D+nIPYZoL//qsXTOzSytM3TjAGch1mYb4feeF26838uFBxfIdmw8HRhUV+JBK9jBMSWp2t4k0cED6PpLDVnNXhCy+NNeL6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D2yq+SL0M6Y5By3Wt1KBdLhg1ptalG/FHFIsNx38iH8=;
 b=RHhuVawWJi0KkTtDi1srMomHtMFQjTQGNHpGbQ3lFb+a2+BsVf6QjD4CtKazq/+hPcJ4c+e3WGkpnEK0S5sKqAfHW2C2yUCCf7EdRqKn1A+l8KWlJx79NK7gAl0FxSkIaob8Yqc3HwepAzObFphuHdiq/DJOhsKELLx3aBIVFj4IPGGYPM+1C+MZjBwwk/1Mh7ORBFbTAUT7oYf6gxma7OeCZeYwDPupbrkKjLInbIUEAB2HKbz6q8YfkkCgiuP8KlixGy3U7bD4dGKmP0ZlKSvY3qRy84HcGQQoZpv4fwp9Aez3P4JIjJXYSmuUO4QzjFRnK8xnd+zYtTFOsPiuSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D2yq+SL0M6Y5By3Wt1KBdLhg1ptalG/FHFIsNx38iH8=;
 b=O14S3RBz08LJ4lps9suBiklLiuhUU+5RHUYg6M2i6pAHJD49K2BC6RPwdJPu3opiLVfk9D/6majZAinYccNPfqi8DEm0qUhGv/m+yM7sYpk3uxkoadkVXapBOIu7RFAO22NF7vkgfSCmlf91mN+A60LxGtZP7Bff76mX2DutNj0=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.147) by
 MN2PR11MB3997.namprd11.prod.outlook.com (10.255.181.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.24; Wed, 27 Nov 2019 10:33:00 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::6525:fc5b:ffbb:acd%3]) with mapi id 15.20.2474.023; Wed, 27 Nov 2019
 10:33:00 +0000
From: <Christian.Gromm@microchip.com>
To: <joe@perches.com>
Subject: Re: staging: most: configfs: PAGE_SIZE char arrays?
Thread-Topic: staging: most: configfs: PAGE_SIZE char arrays?
Thread-Index: AQHVpJApu+n3g8Jfgk+3q2J+qsW5X6ee0wOA
Date: Wed, 27 Nov 2019 10:33:00 +0000
Message-ID: <1574850793.22988.31.camel@microchip.com>
References: <94ed28d75af8850171f2542d7170ca61001a9a8b.camel@perches.com>
In-Reply-To: <94ed28d75af8850171f2542d7170ca61001a9a8b.camel@perches.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 50b618e8-beff-40e2-150e-08d773252d09
x-ms-traffictypediagnostic: MN2PR11MB3997:
x-microsoft-antispam-prvs: <MN2PR11MB3997E2E7B3FE24E2D7134357F8440@MN2PR11MB3997.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:88;
x-forefront-prvs: 023495660C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(396003)(376002)(366004)(136003)(199004)(189003)(2351001)(5660300002)(446003)(26005)(66446008)(7736002)(8676002)(66556008)(1730700003)(81156014)(256004)(5640700003)(5024004)(64756008)(66476007)(81166006)(2501003)(6486002)(229853002)(4326008)(6246003)(76116006)(103116003)(71190400001)(71200400001)(102836004)(8936002)(6512007)(305945005)(91956017)(66946007)(478600001)(2616005)(11346002)(6916009)(186003)(66066001)(99286004)(36756003)(14454004)(86362001)(6436002)(2906002)(6116002)(3846002)(316002)(54906003)(4001150100001)(6506007)(76176011)(25786009);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3997;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JA7suFQHQbs+bzkmA8d5JY0BfCR3waHhgIzFEwXmWoCZOaw+HaU4+nSt3RNvcHSja1hPj0PxITYSH+u4qDix+nKNhSFqRc2vjZA51gbBtswYZKJK9wmLt5r0CQx0uinUtOODyw1UfylCmZKHVjFIyu7F/PacDxsLHKX6imdmTFqKjJEvV3hxkAS6JsbAcfeym41UfvTYWODqCSEhA9wrj/dX/4U6yOVxm+K0ZhuIheblmp+t1itMtlDT1ejDrMeBIQu+7DlQXwi6Q3RSdot+oQOYkTkCGsbOxLE54uI8tI73XEVTYdnv1FZXYabnSYuHAVc+nttPsVDAg7iWzcXXp0wztELWMkJvamsnw87Y54ZYq9kFey4aEFlJlNh075kB29n13yBmZsN/GTruArl1vNq8wuh/wJXzjH8qJgJkcPF3etn6Nleb9wFOEIwlcwCO
x-ms-exchange-transport-forked: True
Content-ID: <C45A06FAB7D9B944A87EB043F37CE8A6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 50b618e8-beff-40e2-150e-08d773252d09
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2019 10:33:00.1479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fXRI2V+9lBLW32ZkhMQYPpXRtN8Y4S+60rzoucO2zGDqHGHVIvs95xzqpL/9VrewBgzgT8XHm6U15OZ0idOrCKklEP72/YFscvVwN5eanJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3997
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRGksIDIwMTktMTEtMjYgYXQgMTE6MzAgLTA4MDAsIEpvZSBQZXJjaGVzIHdyb3RlOg0KPiBF
WFRFUk5BTCBFTUFJTDogRG8gbm90IGNsaWNrIGxpbmtzIG9yIG9wZW4gYXR0YWNobWVudHMgdW5s
ZXNzIHlvdQ0KPiBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUNCj4gDQo+IGRyaXZlcnMvc3RhZ2lu
Zy9tb3N0L2NvbmZpZ2ZzLmM6c3RydWN0IG1kZXZfbGluayB7DQo+IGRyaXZlcnMvc3RhZ2luZy9t
b3N0L2NvbmZpZ2ZzLmMtwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBjb25maWdfaXRlbSBpdGVtOw0K
PiBkcml2ZXJzL3N0YWdpbmcvbW9zdC9jb25maWdmcy5jLcKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
bGlzdF9oZWFkIGxpc3Q7DQo+IGRyaXZlcnMvc3RhZ2luZy9tb3N0L2NvbmZpZ2ZzLmMtwqDCoMKg
wqDCoMKgwqDCoGJvb2wgY3JlYXRlX2xpbms7DQo+IGRyaXZlcnMvc3RhZ2luZy9tb3N0L2NvbmZp
Z2ZzLmMtwqDCoMKgwqDCoMKgwqDCoGJvb2wgZGVzdHJveV9saW5rOw0KPiBkcml2ZXJzL3N0YWdp
bmcvbW9zdC9jb25maWdmcy5jLcKgwqDCoMKgwqDCoMKgwqB1MTYgbnVtX2J1ZmZlcnM7DQo+IGRy
aXZlcnMvc3RhZ2luZy9tb3N0L2NvbmZpZ2ZzLmMtwqDCoMKgwqDCoMKgwqDCoHUxNiBidWZmZXJf
c2l6ZTsNCj4gZHJpdmVycy9zdGFnaW5nL21vc3QvY29uZmlnZnMuYy3CoMKgwqDCoMKgwqDCoMKg
dTE2IHN1YmJ1ZmZlcl9zaXplOw0KPiBkcml2ZXJzL3N0YWdpbmcvbW9zdC9jb25maWdmcy5jLcKg
wqDCoMKgwqDCoMKgwqB1MTYgcGFja2V0c19wZXJfeGFjdDsNCj4gZHJpdmVycy9zdGFnaW5nL21v
c3QvY29uZmlnZnMuYy3CoMKgwqDCoMKgwqDCoMKgdTE2IGRicl9zaXplOw0KPiBkcml2ZXJzL3N0
YWdpbmcvbW9zdC9jb25maWdmcy5jLcKgwqDCoMKgwqDCoMKgwqBjaGFyIGRhdGF0eXBlW1BBR0Vf
U0laRV07DQo+IGRyaXZlcnMvc3RhZ2luZy9tb3N0L2NvbmZpZ2ZzLmMtwqDCoMKgwqDCoMKgwqDC
oGNoYXIgZGlyZWN0aW9uW1BBR0VfU0laRV07DQo+IGRyaXZlcnMvc3RhZ2luZy9tb3N0L2NvbmZp
Z2ZzLmMtwqDCoMKgwqDCoMKgwqDCoGNoYXIgbmFtZVtQQUdFX1NJWkVdOw0KPiBkcml2ZXJzL3N0
YWdpbmcvbW9zdC9jb25maWdmcy5jLcKgwqDCoMKgwqDCoMKgwqBjaGFyIGRldmljZVtQQUdFX1NJ
WkVdOw0KPiBkcml2ZXJzL3N0YWdpbmcvbW9zdC9jb25maWdmcy5jLcKgwqDCoMKgwqDCoMKgwqBj
aGFyIGNoYW5uZWxbUEFHRV9TSVpFXTsNCj4gZHJpdmVycy9zdGFnaW5nL21vc3QvY29uZmlnZnMu
Yy3CoMKgwqDCoMKgwqDCoMKgY2hhciBjb21wW1BBR0VfU0laRV07DQo+IGRyaXZlcnMvc3RhZ2lu
Zy9tb3N0L2NvbmZpZ2ZzLmMtwqDCoMKgwqDCoMKgwqDCoGNoYXIgY29tcF9wYXJhbXNbUEFHRV9T
SVpFXTsNCj4gZHJpdmVycy9zdGFnaW5nL21vc3QvY29uZmlnZnMuYy19Ow0KPiANCj4gV2h5IGFy
ZSBhbGwgdGhlIGNoYXIgYXJyYXlzIHNpemUgUEFHRV9TSVpFID8NCj4gVGhhdCBzZWVtcyBjb21w
bGV0ZWx5IHVubmVjZXNzYXJ5Lg0KDQpSaWdodC4gUHJvYmFibHkgYSBiYWQgaGFiaXQgd2hlbiBo
YW5kbGluZyB1c2Vyc3BhY2UuDQoNCnRoYW5rcywNCkNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
