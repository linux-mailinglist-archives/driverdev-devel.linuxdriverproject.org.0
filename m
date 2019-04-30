Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C0DF6D4
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 13:53:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C97C874F3;
	Tue, 30 Apr 2019 11:53:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f47vp4JG0gNj; Tue, 30 Apr 2019 11:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9CB96856FE;
	Tue, 30 Apr 2019 11:53:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 06D011BF5DC
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 11:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 03230844CA
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 11:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Zn4RzMdUtQmD
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 11:53:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C698185852
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 11:53:05 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
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
X-IronPort-AV: E=Sophos;i="5.60,413,1549954800"; d="scan'208";a="28463094"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 30 Apr 2019 04:53:04 -0700
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.105) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Tue, 30 Apr 2019 04:53:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YQmsXc8jsTCwmjjFIXqjlaqF7uMpZEw2SW5TxbdoBF0=;
 b=wqpYP0TKEVSMcfrrDxJRUuWWzzKJE2j5DPeF8cu4Z5bzme9j1jVGZ6GdATixjOxvLo8NKCEqQw2aNjX2X3ZlRfZlmr/6K8bWHYnCjgRcZ49toFHgIPwmnQMba3qhMqWnaaS2Hk3N4roPurt2iYElHAaFhd6aifsCSk4fnYJ6WGg=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.215) by
 MN2PR11MB3760.namprd11.prod.outlook.com (20.178.254.144) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Tue, 30 Apr 2019 11:53:01 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::8dab:655a:59a2:ba40]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::8dab:655a:59a2:ba40%4]) with mapi id 15.20.1835.010; Tue, 30 Apr 2019
 11:53:01 +0000
From: <Christian.Gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] staging: most: sound: pass correct device when creating a
 sound card
Thread-Topic: [PATCH] staging: most: sound: pass correct device when creating
 a sound card
Thread-Index: AQHU/zNCdBSLRrG9HkeN99q+x+Tg0KZUbaMAgAArToA=
Date: Tue, 30 Apr 2019 11:53:01 +0000
Message-ID: <1556625357.21063.13.camel@microchip.com>
References: <1556614822-21464-1-git-send-email-christian.gromm@microchip.com>
 <20190430092058.GA14684@kroah.com>
In-Reply-To: <20190430092058.GA14684@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ebed1286-e8a3-40f6-b261-08d6cd62659f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MN2PR11MB3760; 
x-ms-traffictypediagnostic: MN2PR11MB3760:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR11MB3760724809C089DA684C89B2F83A0@MN2PR11MB3760.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:565;
x-forefront-prvs: 00235A1EEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(979002)(376002)(366004)(136003)(39860400002)(396003)(346002)(189003)(199004)(86362001)(54906003)(305945005)(71190400001)(7736002)(68736007)(5640700003)(76116006)(2501003)(3846002)(6116002)(5660300002)(14444005)(256004)(91956017)(71200400001)(2906002)(66446008)(66066001)(66476007)(66946007)(97736004)(73956011)(316002)(66556008)(64756008)(99286004)(476003)(6512007)(2616005)(486006)(36756003)(6916009)(81156014)(81166006)(1730700003)(8676002)(14454004)(6306002)(446003)(11346002)(76176011)(8936002)(53936002)(2351001)(6246003)(26005)(478600001)(103116003)(186003)(966005)(72206003)(6436002)(229853002)(6506007)(4326008)(6486002)(102836004)(25786009)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3760;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nkLA9KLXcpzPWQC2ysZGliXGH6oHDcEHDuLnw5pIESpvQCBvaMSRJQiG6iRmpGU86sPeRqo6DJbBfNZyBuYe5S/SkUw6S6smJmJl2uBNZZaZf8OIdEcxxraOiksaFxIL1CIrc6kPQyCeDp2w9kRaREns2FfUNFQ4bMqaeqF+CEhlKyqHav4bsPOgZ7E1XEQHjnH36eSomXFxERP8sL8csqbzvdBGLXawhQhUbXbX1Ajg/tPXLXcK7OKxG+1dOhhTuKCzqVUZKcFfToKxnCZC0TSBNsdKmCV+jrhb/K+IvAqtqfY9sz3AuzpFiU7FvpXKnQKfzrhJzcvi3yB5pMJ1KB30mz7BgSeokXv2DOaNWDPRfguYBAsA1W3BMU/dX2dOwlTTAMml1HStKchuLAa6w5Be/nIqjMyY+opm77/kurw=
Content-ID: <EA1B96802B6F1742BF0D22DC06800B48@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ebed1286-e8a3-40f6-b261-08d6cd62659f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2019 11:53:01.3746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3760
X-OriginatorOrg: microchip.com
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
Cc: driverdev-devel@linuxdriverproject.org, erosca@de.adit-jv.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRGksIDIwMTktMDQtMzAgYXQgMTE6MjAgKzAyMDAsIEdyZWcgS0ggd3JvdGU6DQo+IEV4dGVy
bmFsIEUtTWFpbA0KPiANCj4gDQo+IE9uIFR1ZSwgQXByIDMwLCAyMDE5IGF0IDExOjAwOjIyQU0g
KzAyMDAsIENocmlzdGlhbiBHcm9tbSB3cm90ZToNCj4gPiANCj4gPiBUaGlzIHBhdGNoIGZpeGVz
IHRoZSB1c2FnZSBvZiB0aGUgd3Jvbmcgc3RydWN0IGRldmljZSB3aGVuIGNhbGxpbmcNCj4gPiBm
dW5jdGlvbiBzbmRfY2FyZF9uZXcuDQo+ID4gDQo+ID4gUmVwb3J0ZWQtYnk6IEV1Z2VuaXUgUm9z
Y2EgPGVyb3NjYUBkZS5hZGl0LWp2LmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4g
R3JvbW0gPGNocmlzdGlhbi5ncm9tbUBtaWNyb2NoaXAuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJp
dmVycy9zdGFnaW5nL21vc3Qvc291bmQvc291bmQuYyB8IDIgKy0NCj4gPiDCoDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiBEb2VzIHRoaXMgZml4IGEgc3Bl
Y2lmaWMgY29tbWl0P8KgwqBJZiBzbywgc2hvdWxkIHRoZXJlIGJlIGEgIkZpeGVzOiAiDQo+IHRh
Zw0KPiBpbiB0aGUgcy1vLWI6IGFyZWE/wqDCoERvZXMgdGhpcyBuZWVkIHRvIGdvIHRvIHRoZSBz
dGFibGUgdHJlZXM/DQoNClllcywgeWVzIGFuZCB5ZXMuIEknbGwgYmUgc2VuZGluZyBhIHYyIHNo
b3J0bHkuDQoNCkkgd2Fzbid0IGF3YXJlIHRoYXQgSSBuZWVkIHRvIHJlZmVyIHRvIGEgY2VydGFp
biBjb21taXQgd2hlbiBmaXhpbmcNCnRoaW5ncyB1cC4gSG93IGNhbiBidWdmaXggcGF0Y2hlcyBu
b3QgZml4IGEgc3BlY2lmaWMgY29tbWl0IGFueXdheT8NClRoZSBidWdzIG11c3QgaGF2ZSBnb3R0
ZW4gaW4gc29tZWhvdywgcmlnaHQ/DQoNCnRoYW5rcywNCkNocmlzDQoNCj4gDQo+IHRoYW5rcywN
Cj4gDQo+IGdyZWcgay1oDQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+IGRldmVsIG1haWxpbmcgbGlzdA0KPiBkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnDQo+IGh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZQ0KPiB2ZWwNCj4gCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
