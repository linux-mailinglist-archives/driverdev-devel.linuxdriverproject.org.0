Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F1929202
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 09:44:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53EE688B8B;
	Fri, 24 May 2019 07:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c1SnNetBPLPw; Fri, 24 May 2019 07:44:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id BB65288540;
	Fri, 24 May 2019 07:44:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50B1F1BF3A7
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 07:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4D70788540
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 07:44:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p9wAiSgkwCW6 for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 07:44:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 68B6E88517
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 07:44:16 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,506,1549954800"; d="scan'208";a="34292066"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 24 May 2019 00:44:15 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.107) with Microsoft SMTP Server (TLS)
 id 14.3.352.0; Fri, 24 May 2019 00:43:36 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gAm2YwAZ/EmePgHMsx/on3S5wg7TWPQxUKqD3gJrDwE=;
 b=Q3BVUNODh0DnzX7/DUsZruTT/duaEpFXg+ysxob2XfL9Jil94ScxuLr8J8wBTEgiy9147lhcwZ5LqGKoZGpcIgk2BXbaY2cpu0h1KRUzxJWOjKfOMgKAIk29QGk9S3YGp16Lh5eHXcfrDK9uq464qAX/hvYF+KHRyRjal7R2oEU=
Received: from DM6PR11MB3705.namprd11.prod.outlook.com (20.178.231.155) by
 DM6PR11MB3499.namprd11.prod.outlook.com (20.177.220.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Fri, 24 May 2019 07:43:34 +0000
Received: from DM6PR11MB3705.namprd11.prod.outlook.com
 ([fe80::489a:6dfb:8f5a:4e32]) by DM6PR11MB3705.namprd11.prod.outlook.com
 ([fe80::489a:6dfb:8f5a:4e32%2]) with mapi id 15.20.1922.018; Fri, 24 May 2019
 07:43:34 +0000
From: <Christian.Gromm@microchip.com>
To: <linux-kernel@vger.kernel.org>, <gregkh@linuxfoundation.org>,
 <nishkadg.linux@gmail.com>, <devel@driverdev.osuosl.org>
Subject: Re: [PATCH] staging: most: usb: Remove variable frame_size
Thread-Topic: [PATCH] staging: most: usb: Remove variable frame_size
Thread-Index: AQHVEWru4bAmJ43IiUKRHTPXdpRoOqZ55vcA
Date: Fri, 24 May 2019 07:43:34 +0000
Message-ID: <1558684034.16425.5.camel@microchip.com>
References: <20190523132334.29611-1-nishkadg.linux@gmail.com>
In-Reply-To: <20190523132334.29611-1-nishkadg.linux@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9644965-a449-4c6c-a6f8-08d6e01b8698
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:DM6PR11MB3499; 
x-ms-traffictypediagnostic: DM6PR11MB3499:
x-microsoft-antispam-prvs: <DM6PR11MB34992CCEBD96F73D9C6995C4F8020@DM6PR11MB3499.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-forefront-prvs: 0047BC5ADE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39860400002)(366004)(376002)(136003)(346002)(189003)(199004)(2501003)(66556008)(76176011)(6246003)(110136005)(26005)(8936002)(2201001)(86362001)(71200400001)(71190400001)(186003)(99286004)(316002)(53936002)(486006)(103116003)(68736007)(25786009)(11346002)(5660300002)(476003)(66476007)(2616005)(446003)(229853002)(8676002)(6436002)(3846002)(66066001)(14454004)(6116002)(6512007)(64756008)(73956011)(66446008)(66946007)(91956017)(76116006)(81166006)(478600001)(102836004)(6486002)(14444005)(6506007)(36756003)(256004)(305945005)(81156014)(2906002)(72206003)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR11MB3499;
 H:DM6PR11MB3705.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: hvs1JZ4V4E2EvKzsjAq6a9DrncC+raw6BZJx3yPyztiCP+hckx3HACx1aTTnGU0paRBYAPrJxQNIRDKDvnF+/DoZs5zhdqamVQ10sBlMpbQJ5hdgrZeVd3qs+Gs0Jszu/PZ16YjgbLvyySMpU8f2tSWSbPcDdjvbdrbkIz+aDKsg+E8tT3JLL8gYhLmNBHICpkDKz+YfnD43X0dSda+GJHHF5udZiUjupunmPHE08wNjt+lc7wj9C3OVgcOnXCxRUW7yHr0OnGYyjQ9tH25Dhtfpw+r2VYYpSlKs8vIJxX/gMBp458A5fM50tb+V3LAVXsCuK5C8Ez09Op4GfF4uVvlXajUS6ZGucjXCJB4+2Rt5gz+bMx4SVnGkyiz1nn7owJGxRV2Q1Z7tMjzeMowDf7DXLN9sjKo97J1Yo+1Fq60=
Content-ID: <16B117BE1C833640A6995931C6077582@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c9644965-a449-4c6c-a6f8-08d6e01b8698
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2019 07:43:34.6014 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: christian.gromm@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3499
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRG8sIDIwMTktMDUtMjMgYXQgMTg6NTMgKzA1MzAsIE5pc2hrYSBEYXNndXB0YSB3cm90ZToN
Cj4gRXh0ZXJuYWwgRS1NYWlsDQo+IA0KPiANCj4gUmVtb3ZlIHZhcmlhYmxlIGZyYW1lX3NpemUg
YXMgaXRzIG11bHRpcGxlIHVzYWdlcyBhcmUgYWxsIGluZGVwZW5kZW50DQo+IG9mDQo+IGVhY2gg
b3RoZXIgYW5kIHNvIGNhbiBiZSByZXR1cm5lZCBzZXBhcmF0ZWx5Lg0KPiBJc3N1ZSBmb3VuZCB3
aXRoIENvY2NpbmVsbGUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBOaXNoa2EgRGFzZ3VwdGEgPG5p
c2hrYWRnLmxpbnV4QGdtYWlsLmNvbT4NCg0KQWNrZWQtYnk6IENocmlzdGlhbiBHcm9tbSA8Y2hy
aXN0aWFuLmdyb21tQG1pY3JvY2hpcC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9zdGFnaW5n
L21vc3QvdXNiL3VzYi5jIHwgMTYgKysrKysrLS0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy9tb3N0L3VzYi91c2IuYw0KPiBiL2RyaXZlcnMvc3RhZ2luZy9tb3N0L3Vz
Yi91c2IuYw0KPiBpbmRleCAzNjBjYjViN2ExMGIuLjc1MWU4MmNmNjZjNSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9zdGFnaW5nL21vc3QvdXNiL3VzYi5jDQo+ICsrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy9tb3N0L3VzYi91c2IuYw0KPiBAQCAtMTg2LDMyICsxODYsMjggQEAgc3RhdGljIGlubGluZSBp
bnQgc3RhcnRfc3luY19lcChzdHJ1Y3QNCj4gdXNiX2RldmljZSAqdXNiX2RldiwgdTE2IGVwKQ0K
PiDCoCAqLw0KPiDCoHN0YXRpYyB1bnNpZ25lZCBpbnQgZ2V0X3N0cmVhbV9mcmFtZV9zaXplKHN0
cnVjdCBtb3N0X2NoYW5uZWxfY29uZmlnDQo+ICpjZmcpDQo+IMKgew0KPiAtCXVuc2lnbmVkIGlu
dCBmcmFtZV9zaXplID0gMDsNCj4gwqAJdW5zaWduZWQgaW50IHN1Yl9zaXplID0gY2ZnLT5zdWJi
dWZmZXJfc2l6ZTsNCj4gwqANCj4gwqAJaWYgKCFzdWJfc2l6ZSkgew0KPiDCoAkJcHJfd2Fybigi
TWlzY29uZmlnOiBTdWJidWZmZXIgc2l6ZSB6ZXJvLlxuIik7DQo+IC0JCXJldHVybiBmcmFtZV9z
aXplOw0KPiArCQlyZXR1cm4gMDsNCj4gwqAJfQ0KPiDCoAlzd2l0Y2ggKGNmZy0+ZGF0YV90eXBl
KSB7DQo+IMKgCWNhc2UgTU9TVF9DSF9JU09DOg0KPiAtCQlmcmFtZV9zaXplID0gQVZfUEFDS0VU
U19QRVJfWEFDVCAqIHN1Yl9zaXplOw0KPiAtCQlicmVhazsNCj4gKwkJcmV0dXJuIEFWX1BBQ0tF
VFNfUEVSX1hBQ1QgKiBzdWJfc2l6ZTsNCj4gwqAJY2FzZSBNT1NUX0NIX1NZTkM6DQo+IMKgCQlp
ZiAoY2ZnLT5wYWNrZXRzX3Blcl94YWN0ID09IDApIHsNCj4gwqAJCQlwcl93YXJuKCJNaXNjb25m
aWc6IFBhY2tldHMgcGVyIFhBQ1QNCj4gemVyb1xuIik7DQo+IC0JCQlmcmFtZV9zaXplID0gMDsN
Cj4gKwkJCXJldHVybiAwOw0KPiDCoAkJfSBlbHNlIGlmIChjZmctPnBhY2tldHNfcGVyX3hhY3Qg
PT0gMHhGRikgew0KPiAtCQkJZnJhbWVfc2l6ZSA9IChVU0JfTVRVIC8gc3ViX3NpemUpICoNCj4g
c3ViX3NpemU7DQo+ICsJCQlyZXR1cm4gKFVTQl9NVFUgLyBzdWJfc2l6ZSkgKiBzdWJfc2l6ZTsN
Cj4gwqAJCX0gZWxzZSB7DQo+IC0JCQlmcmFtZV9zaXplID0gY2ZnLT5wYWNrZXRzX3Blcl94YWN0
ICoNCj4gc3ViX3NpemU7DQo+ICsJCQlyZXR1cm4gY2ZnLT5wYWNrZXRzX3Blcl94YWN0ICogc3Vi
X3NpemU7DQo+IMKgCQl9DQo+IC0JCWJyZWFrOw0KPiDCoAlkZWZhdWx0Og0KPiDCoAkJcHJfd2Fy
bigiUXVlcnkgZnJhbWUgc2l6ZSBvZiBub24tc3RyZWFtaW5nDQo+IGNoYW5uZWxcbiIpOw0KPiAt
CQlicmVhazsNCj4gKwkJcmV0dXJuIDA7DQo+IMKgCX0NCj4gLQlyZXR1cm4gZnJhbWVfc2l6ZTsN
Cj4gwqB9DQo+IMKgDQo+IMKgLyoqCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
