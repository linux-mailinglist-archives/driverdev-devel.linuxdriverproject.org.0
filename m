Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BC79DF71
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 11:29:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A6D3E86DB0;
	Mon, 29 Apr 2019 09:29:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AwKGs7YvRAgG; Mon, 29 Apr 2019 09:29:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1415586DAC;
	Mon, 29 Apr 2019 09:29:52 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9AB031BF2C6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 09:29:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 96D5A230ED
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 09:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Um2hOqxhtff7
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 09:29:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 11183207A1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 09:29:49 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.60,409,1549954800"; d="scan'208";a="29294462"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 29 Apr 2019 02:29:49 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.76.49) with Microsoft SMTP Server (TLS) id
 14.3.352.0; Mon, 29 Apr 2019 02:29:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tEVuP9KcYhF+1FO92ClDjY3GsnC3gpFxTmRya7tRNSo=;
 b=lBwvbIsKjLEqmLVS/leu8Bh54pvP0Z+o3JjYXJu4NS8gjBcSBYHT+uHN24AfRXZWzs5QXP92BkYUiC01nrv23JsT28OFVQdW2yGJ66QIlkdWdTXheDMwxibYSCwBawqp0y7BDqO2Bk05Z898pUaBlyRVc55Ka9RRK4BJuYgeG5c=
Received: from MN2PR11MB3710.namprd11.prod.outlook.com (20.178.252.215) by
 MN2PR11MB3951.namprd11.prod.outlook.com (10.255.181.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Mon, 29 Apr 2019 09:29:45 +0000
Received: from MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::8dab:655a:59a2:ba40]) by MN2PR11MB3710.namprd11.prod.outlook.com
 ([fe80::8dab:655a:59a2:ba40%4]) with mapi id 15.20.1835.010; Mon, 29 Apr 2019
 09:29:45 +0000
From: <Christian.Gromm@microchip.com>
To: <erosca@de.adit-jv.com>
Subject: Re: [PATCH 16/28] staging: most: sound: call snd_card_new with struct
 device
Thread-Topic: [PATCH 16/28] staging: most: sound: call snd_card_new with
 struct device
Thread-Index: AQHU+s7vfSdU24YryUy005lU0b/yhaZS51+A
Date: Mon, 29 Apr 2019 09:29:45 +0000
Message-ID: <1556530363.2904.8.camel@microchip.com>
References: <20190424185032.GA9019@vmlxhi-102.adit-jv.com>
In-Reply-To: <20190424185032.GA9019@vmlxhi-102.adit-jv.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Gromm@microchip.com; 
x-originating-ip: [62.154.213.229]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa2838a0-86e6-4d5c-f2ea-08d6cc8537db
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:MN2PR11MB3951; 
x-ms-traffictypediagnostic: MN2PR11MB3951:
x-ms-exchange-purlcount: 3
x-microsoft-antispam-prvs: <MN2PR11MB39519B533A0EFA43929E0314F8390@MN2PR11MB3951.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 0022134A87
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(136003)(346002)(366004)(199004)(189003)(6916009)(73956011)(476003)(11346002)(446003)(316002)(66476007)(186003)(66446008)(66556008)(486006)(64756008)(26005)(6306002)(6512007)(54906003)(91956017)(76116006)(76176011)(6436002)(5640700003)(2351001)(229853002)(2616005)(256004)(14444005)(66946007)(6486002)(68736007)(2501003)(71190400001)(71200400001)(99286004)(8676002)(8936002)(66066001)(5660300002)(3846002)(6116002)(102836004)(97736004)(86362001)(14454004)(81166006)(36756003)(4326008)(103116003)(6246003)(25786009)(966005)(72206003)(53936002)(305945005)(478600001)(2906002)(7736002)(6506007)(81156014)(1730700003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3951;
 H:MN2PR11MB3710.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +jCrBtLiDFicxc8ekIi2kUYSwgOCkU8Jt3y0ZLmiwa8syOg6Mcg6kxCfvE7tazWSDbjFzmJ/CEE2sDt78uCANRGjeLfjVHa6JkhKRi1L39Azt5JKy04AU0ffHNaAtxbXJwufUxkGcuTYZGx9Jd8hohtVtQdwVEQQp/jv+1nvDW/ejPXlwbZLe4vx8v51+BNN1xiAUe8lrL/TQh8++USckIqHBvUaDT4EjmuZPFOC2eVSvV55kIqPsgPbKEpO0UeoZj2a23Fs0tvMmIs240iK0Xsm5MrDghcC3ZWurKSaUmzQS/QYmHg8DLALzFqhs+RXZtm+xyCXSYWURwcWkq26FBGqO14lOClirrrob799jJPBlaKhvUekBnjn3cJ5gqK7buZA+1cTkS/wTiXEa+iZDJ45PlLmVzz0o9EBJzS2knE=
Content-ID: <46C13D919DB108459E4BAAA6C5C6640C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: aa2838a0-86e6-4d5c-f2ea-08d6cc8537db
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2019 09:29:45.7780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3951
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
Cc: roscaeugeniu@gmail.com, gregkh@linuxfoundation.org,
 driverdev-devel@linuxdriverproject.org, linux-kernel@vger.kernel.org,
 sudipi@jp.adit-jv.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTWksIDIwMTktMDQtMjQgYXQgMjA6NTAgKzAyMDAsIEV1Z2VuaXUgUm9zY2Egd3JvdGU6DQo+
IEV4dGVybmFsIEUtTWFpbA0KPiANCj4gDQo+IEhpIENocmlzdGlhbiwNCj4gDQo+IE9uIFR1ZSwg
MDggTWF5IDIwMTggMDI6NDY6NDQgLTA3MDAsIENocmlzdGlhbiBHcm9tbSB3cm90ZToNCj4gPiAN
Cj4gPiDCoMKgwqDCoFRoaXMgcGF0Y2ggaXMgbmVlZGVkIGFzIGZ1bmN0aW9uIHNuZF9jYXJkX25l
dyBuZWVkcyBhIHZhbGlkDQo+ID4gwqDCoMKgwqBwYXJlbnQgZGV2aWNlLiBQYXNzaW5nIGEgTlVM
TCBwb2ludGVyIGxlYWRzIHRvIGtlcm5lbCBPb29wcy4NCj4gPiDCoMKgwqDCoA0KPiA+IMKgwqDC
oMKgU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEdyb21tIDxjaHJpc3RpYW4uZ3JvbW1AbWljcm9j
aGlwLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvc3RhZ2luZy9tb3N0L2NvcmUuaMKgwqDC
oMKgwqDCoMKgwqB8IDEgKw0KPiA+IMKgZHJpdmVycy9zdGFnaW5nL21vc3Qvc291bmQvc291bmQu
YyB8IDIgKy0NCj4gPiDCoGRyaXZlcnMvc3RhZ2luZy9tb3N0L3VzYi91c2IuY8KgwqDCoMKgwqB8
IDEgKw0KPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21vc3QvY29yZS5oDQo+
ID4gYi9kcml2ZXJzL3N0YWdpbmcvbW9zdC9jb3JlLmgNCj4gPiBpbmRleCA3YTNjNzBiZWFkMTku
LjY0Y2MwMmYxNjFlNyAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbW9zdC9jb3Jl
LmgNCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbW9zdC9jb3JlLmgNCj4gPiBAQCAtMjMwLDYg
KzIzMCw3IEBAIHN0cnVjdCBtYm8gew0KPiA+IMKgICovDQo+ID4gwqBzdHJ1Y3QgbW9zdF9pbnRl
cmZhY2Ugew0KPiA+IMKgCXN0cnVjdCBkZXZpY2UgZGV2Ow0KPiA+ICsJc3RydWN0IGRldmljZSAq
ZHJpdmVyX2RldjsNCj4gPiDCoAlzdHJ1Y3QgbW9kdWxlICptb2Q7DQo+ID4gwqAJZW51bSBtb3N0
X2ludGVyZmFjZV90eXBlIGludGVyZmFjZTsNCj4gPiDCoAljb25zdCBjaGFyICpkZXNjcmlwdGlv
bjsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21vc3Qvc291bmQvc291bmQuYw0K
PiA+IGIvZHJpdmVycy9zdGFnaW5nL21vc3Qvc291bmQvc291bmQuYw0KPiA+IGluZGV4IDE4Zjcy
MjQxMGE2My4uMDRjMTgzMjNjMmVhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9t
b3N0L3NvdW5kL3NvdW5kLmMNCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbW9zdC9zb3VuZC9z
b3VuZC5jDQo+ID4gQEAgLTU5MCw3ICs1OTAsNyBAQCBzdGF0aWMgaW50IGF1ZGlvX3Byb2JlX2No
YW5uZWwoc3RydWN0DQo+ID4gbW9zdF9pbnRlcmZhY2UgKmlmYWNlLCBpbnQgY2hhbm5lbF9pZCwN
Cj4gPiDCoAlpZiAocmV0IDwgMCkNCj4gPiDCoAkJcmV0dXJuIHJldDsNCj4gPiDCoA0KPiA+IC0J
cmV0ID0gc25kX2NhcmRfbmV3KE5VTEwsIC0xLCBjYXJkX25hbWUsIFRISVNfTU9EVUxFLA0KPiA+
ICsJcmV0ID0gc25kX2NhcmRfbmV3KCZpZmFjZS0+ZGV2LCAtMSwgY2FyZF9uYW1lLA0KPiA+IFRI
SVNfTU9EVUxFLA0KPiA+IMKgCQkJwqDCoMKgc2l6ZW9mKCpjaGFubmVsKSwgJmNhcmQpOw0KPiA+
IMKgCWlmIChyZXQgPCAwKQ0KPiA+IMKgCQlyZXR1cm4gcmV0Ow0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvbW9zdC91c2IvdXNiLmMNCj4gPiBiL2RyaXZlcnMvc3RhZ2luZy9tb3N0
L3VzYi91c2IuYw0KPiA+IGluZGV4IDVlZDFkY2NjMDgzOS4uZjE4NzI2MDQ5NTI4IDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tb3N0L3VzYi91c2IuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy9tb3N0L3VzYi91c2IuYw0KPiA+IEBAIC0xMDQzLDYgKzEwNDMsNyBAQCBoZG1f
cHJvYmUoc3RydWN0IHVzYl9pbnRlcmZhY2UgKmludGVyZmFjZSwNCj4gPiBjb25zdCBzdHJ1Y3Qg
dXNiX2RldmljZV9pZCAqaWQpDQo+ID4gwqAJbWRldi0+bGlua19zdGF0X3RpbWVyLmV4cGlyZXMg
PSBqaWZmaWVzICsgKDIgKiBIWik7DQo+ID4gwqANCj4gPiDCoAltZGV2LT5pZmFjZS5tb2QgPSBo
ZG1fdXNiX2ZvcHMub3duZXI7DQo+ID4gKwltZGV2LT5pZmFjZS5kcml2ZXJfZGV2ID0gJmludGVy
ZmFjZS0+ZGV2Ow0KPiA+IMKgCW1kZXYtPmlmYWNlLmludGVyZmFjZSA9IElUWVBFX1VTQjsNCj4g
PiDCoAltZGV2LT5pZmFjZS5jb25maWd1cmUgPSBoZG1fY29uZmlndXJlX2NoYW5uZWw7DQo+ID4g
wqAJbWRldi0+aWZhY2UucmVxdWVzdF9uZXRpbmZvID0gaGRtX3JlcXVlc3RfbmV0aW5mbzsNCj4g
SnVzdCBmb3IgeW91ciBpbmZvcm1hdGlvbiwgd2hlbiBtYXBwaW5nIGNvbW1pdHMgZnJvbSB2YW5p
bGxhIHRvIHRob3NlDQo+IGZyb20gaHR0cHM6Ly9naXRodWIuY29tL21pY3JvY2hpcC1haXMvbGlu
dXgvY29tbWl0cy9tbGQtMS44LjAsIHdlJ3ZlDQo+IHN0dW1ibGVkIHVwb24gc29tZSBzdWJ0bGUg
YnV0IHN0cmlraW5nIGRpZmZlcmVuY2UgYmV0d2VlbiBtbGQtMS44LjANCj4gY29tbWl0IFswXSBh
bmQgdjQuMTgtcmMxIGNvbW1pdCBbMV0uIFRoZSBsYXR0ZXIgbG9va3MgbGlrZSBhbg0KPiB1cHN0
cmVhbWVkDQo+IHZlcnNpb24gb2YgdGhlIGZvcm1lci4gSG93ZXZlciwgd2hpbGUgY29tbWl0IFsw
XSBjcmVhdGVzIGEgbmV3ICdkZXYnDQo+IG1lbWJlciBpbiAnc3RydWN0IG1vc3RfaW50ZXJmYWNl
JyBhbmQgdXNlcyBpdCBjb25zaXN0ZW50bHksIGNvbW1pdA0KPiBbMV0NCj4gY3JlYXRlcyAnZHJp
dmVyX2RldicgYW5kIHVzZXMgaXQgaW50ZXJtaXhlZCB3aXRoICdkZXYnLg0KDQpUaGlzIGxvb2tz
IHNvcnQgb2Ygc3VzcGljaW91cy4gSSdsbCBjaGVjayBpdC4NCg0KVGhhbmtzIGZvciBsZXR0aW5n
IG1lIGtub3cuDQoNClJlZ2FyZHMsDQpDaHJpcw0KDQo+IA0KPiBTaW5jZSB3ZSBkb24ndCB1c2Ug
YWltLXNvdW5kLCB3ZSBqdXN0IHNpZ25hbCB0aGlzIGZlZWRiYWNrIHRvIHlvdQ0KPiBhcyBGV0lX
IHdpdGhvdXQgc2VuZGluZyBhIHBhdGNoICh3aGljaCB3ZSBjYW4ndCB0ZXN0KS4NCj4gDQo+IFsw
XSBodHRwczovL2dpdGh1Yi5jb20vbWljcm9jaGlwLWFpcy9saW51eC9jb21taXQvMmZlZjBmODlm
MDQ3MDMNCj4gwqDCoMKgwqAoInN0YWdpbmc6IG1vc3Q6IGFkZCBzdHJ1Y3QgZGV2aWNlIHRvIG1v
c3QgaW50ZXJmYWNlIikNCj4gWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51
eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpDQo+IHQvY29tbWl0Lz9pZD02OWM5MGNmMWIy
ZmFmNQ0KPiDCoMKgwqDCoCgic3RhZ2luZzogbW9zdDogc291bmQ6IGNhbGwgc25kX2NhcmRfbmV3
IHdpdGggc3RydWN0IGRldmljZSIpDQo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
