Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB90B7AF6
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 15:53:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2D7B5221F8;
	Thu, 19 Sep 2019 13:53:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OFfRJUhydRCk; Thu, 19 Sep 2019 13:53:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74BDE221B2;
	Thu, 19 Sep 2019 13:52:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C46AA1BF5EA
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 13:52:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BDD6A221B2
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 13:52:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AAqlLUf45I0r for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 13:52:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790059.outbound.protection.outlook.com [40.107.79.59])
 by silver.osuosl.org (Postfix) with ESMTPS id 354032050A
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 13:52:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mYYZwUEEYnFt7bWEs8RdgbwIeTC75eXLilQuzfem7NLNVm4n98XaLEDd52lojqsx0KYpLYTYPsR45SDxeE9TCMQvRsN0m9fjBBX+UYBQD+l8ThVleH+uhFeccq5s7uSbWs/VAkuXXZPbJEmjMlO6p5D/S7pX3rK8yKMWLePVjfNAO8L7R9W02jMb8CPBQz9dkGSaH/X8fOmrxFiiHmEHA+dm9NJxCQDrqEoh22+/nGUSTcQgCaknvMCbqB7lbtfT3j5qxBERTtrkUHY/K2QCpRYQQJK6n1xiL9Iu4G08i0nDG8YWd45PA99CBZmaYz5SV6V0GGbjBVZ/FVHG5+un2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mjdyvvRksTlhVIpIRffIMgZsQ42ACLLqlz1hRapUSeA=;
 b=Un0GqvXerhRHLEiqRZ432Q45BJautOY9Ht7Rq0vX3Ji/dh9hoqpyXRMQluYb1yQbm91HC/HjbnnIvUsCiScIwBpIo4AAxdW/7jnv8VOjn/lQnmE1Wr9gkUGcMFtRaYqs5t2OFxow8Fl4jCShSkWwoQ4ti/OcSxc8ookli2+6EnbHHMPpsQgXECHwRa5MqTbSQfbUJ6XBXaHPObjBmWlLrFEQcpyShvQ7anBIyqrK1/Cd66OubAIWfgKLsKES7cefeoRKSf/md9jh6Cpfs3s8LLWY/uSW5PNjqmw8vQ0n4wuKuN6gdW2u5JanzwEhxMKx0shinJYeFQUkxHBtz6NS1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mjdyvvRksTlhVIpIRffIMgZsQ42ACLLqlz1hRapUSeA=;
 b=P+7At+4IRDwNM3Up3Z/LohYvqdMkv+pCkA32YEWoKFd3XjtC1BWj+LZSmSbY5bR98VVtalkhPGIISL9Fe5YzzCtKQKn/cYuEPOtXK/BIEjpehPqn0ULhhOcMeu5HmFKoZnP+y+HmCaEShXfDja+WiweWHc6fb8axPC1CBsgLwIg=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (20.179.149.217) by
 MN2PR11MB4400.namprd11.prod.outlook.com (52.135.37.204) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.20; Thu, 19 Sep 2019 13:52:36 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::45dc:e073:4446:4bf8]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::45dc:e073:4446:4bf8%3]) with mapi id 15.20.2263.023; Thu, 19 Sep 2019
 13:52:36 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 09/20] staging: wfx: add support for start-up indication
Thread-Topic: [PATCH v2 09/20] staging: wfx: add support for start-up
 indication
Thread-Index: AQHVbvF9RjprTXKT9Uub+N9phOnkGA==
Date: Thu, 19 Sep 2019 13:52:35 +0000
Message-ID: <20190919135220.30663-10-Jerome.Pouiller@silabs.com>
References: <20190919135220.30663-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20190919135220.30663-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60845c54-bdeb-43ed-ef77-08d73d08a0ae
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB4400; 
x-ms-traffictypediagnostic: MN2PR11MB4400:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4400EEB5773FD9E8BD08B30A93890@MN2PR11MB4400.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(1496009)(376002)(39850400004)(136003)(366004)(396003)(346002)(189003)(199004)(3846002)(76176011)(8676002)(76116006)(476003)(25786009)(2616005)(6116002)(54906003)(71190400001)(6436002)(102836004)(6486002)(36756003)(186003)(71200400001)(26005)(305945005)(6512007)(99286004)(6506007)(91956017)(7736002)(446003)(8936002)(256004)(81156014)(14444005)(2906002)(66066001)(107886003)(4326008)(86362001)(14454004)(478600001)(64756008)(81166006)(2501003)(486006)(66574012)(316002)(66946007)(66446008)(66556008)(5660300002)(11346002)(66476007)(1076003)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4400;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: aAOMYeQs7Pp3hCH31W8DlQZDxjvBu4DmhkHhzASAygNUfKJI2Ysns9npWI9NaSNPvqLcgpFh4qEyseGEBySL1sliRQIpZ0k0ix1Vd6gCp/3o2OoL0SWZ9p2IAOvYziBDDdMiHxzFtKLw+o3V24K8TpjkTUTH2+JmadB3nRoA3cw0q5O2r7xYt/NIoUiYJ91zD8mS8BUo3c9e2m6a8fv7VratGYM3pFx12WESVzH3/N2BoE4kj6LuJzk7isG8PRS0gr/eqaOGVrSumSYDrp6ZZYO1JL6vgzjAoawauJ5TTzd8b6B+HSyC2b8xDdP0bMaDz8JPWxe8zieL6x4Gdiql7u3wlARN6CaqSeg73iOBpThwP0jrWw+akMoNCWsSU8bEyRWxLi5+UvMOAgGjNBkc90lS8Q00PhOGSydWmsvX+88=
Content-ID: <9DD8E17401FF02479613053E25390A42@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60845c54-bdeb-43ed-ef77-08d73d08a0ae
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 13:52:35.0832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h5kSgAvMXMcYjj2Bzwg0nCnKfqSW5ohIUdtqumHoII0viZVpmWk8BUrMpDfua6OOTsap6tZbj1ONzBUZl32X7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4400
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Le Goff <David.Legoff@silabs.com>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpP
bmNlIGZpcm13YXJlIGlzIGxvYWRlZCwgaXQgc2VuZCBhIGZpcnN0IGluZGljYXRpb24gdG8gaG9z
dC4gVGhpcw0KaW5kaWNhdGlvbiBzaWduYWxpemUgdGhhdCBob3N0IGNhbiBzdGFydCB0byBjb21t
dW5pY2F0ZSB3aXRoIGZpcm13YXJlLg0KSW4gYWRkLCBpdCBjb250YWlucyBpbmZvcm1hdGlvbiBh
Ym91dCBjaGlwIGFuZCBmaXJtd2FyZSAoTUFDIGFkZHJlc3NlcywNCmZpcm13YXJlIHZlcnNpb24s
IGV0Yy4uLikuDQoNClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91
aWxsZXJAc2lsYWJzLmNvbT4NCi0tLQ0KIGRyaXZlcnMvc3RhZ2luZy93ZngvTWFrZWZpbGUgfCAg
MSArDQogZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jICAgICB8ICA0ICsrLQ0KIGRyaXZlcnMvc3Rh
Z2luZy93ZngvaGlmX3J4LmMgfCA1NyArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysNCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5oIHwgMTggKysrKysrKysrKysrDQogZHJp
dmVycy9zdGFnaW5nL3dmeC9tYWluLmMgICB8IDQ1ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysNCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oICAgIHwgIDUgKysrKw0KIDYgZmlsZXMgY2hh
bmdlZCwgMTI5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCiBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5oDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L01ha2VmaWxlIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9NYWtlZmlsZQ0KaW5kZXggMWFiZDMx
MTVmMTFkLi4zNTY3MGI4NmM2NGYgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L01h
a2VmaWxlDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L01ha2VmaWxlDQpAQCAtNyw2ICs3LDcg
QEAgd2Z4LXkgOj0gXA0KIAliaC5vIFwNCiAJaHdpby5vIFwNCiAJZndpby5vIFwNCisJaGlmX3J4
Lm8gXA0KIAltYWluLm8gXA0KIAlkZWJ1Zy5vDQogd2Z4LSQoQ09ORklHX1NQSSkgKz0gYnVzX3Nw
aS5vDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jIGIvZHJpdmVycy9zdGFn
aW5nL3dmeC9iaC5jDQppbmRleCA3NmFmZWNkZjU3OWQuLmM0MGRhM2YxZjI1ZCAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYmguYw0KKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9i
aC5jDQpAQCAtMTIsNiArMTIsNyBAQA0KICNpbmNsdWRlICJ3ZnguaCINCiAjaW5jbHVkZSAiaHdp
by5oIg0KICNpbmNsdWRlICJ0cmFjZXMuaCINCisjaW5jbHVkZSAiaGlmX3J4LmgiDQogI2luY2x1
ZGUgImhpZl9hcGlfY21kLmgiDQogDQogc3RhdGljIHZvaWQgZGV2aWNlX3dha2V1cChzdHJ1Y3Qg
d2Z4X2RldiAqd2RldikNCkBAIC0xMDcsNyArMTA4LDggQEAgc3RhdGljIGludCByeF9oZWxwZXIo
c3RydWN0IHdmeF9kZXYgKndkZXYsIHNpemVfdCByZWFkX2xlbiwgaW50ICppc19jbmYpDQogCX0N
CiANCiAJc2tiX3B1dChza2IsIGhpZi0+bGVuKTsNCi0JZGV2X2tmcmVlX3NrYihza2IpOyAvKiBG
SVhNRTogaGFuZGxlIHJlY2VpdmVkIGRhdGEgKi8NCisJLy8gd2Z4X2hhbmRsZV9yeCB0YWtlcyBj
YXJlIG9uIFNLQiBsaXZldGltZQ0KKwl3ZnhfaGFuZGxlX3J4KHdkZXYsIHNrYik7DQogDQogCXJl
dHVybiBwaWdneWJhY2s7DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZf
cnguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMNCm5ldyBmaWxlIG1vZGUgMTAwNjQ0
DQppbmRleCAwMDAwMDAwMDAwMDAuLjVjMjA3ZTZkNDM0OA0KLS0tIC9kZXYvbnVsbA0KKysrIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYw0KQEAgLTAsMCArMSw1NyBAQA0KKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkNCisvKg0KKyAqIEltcGxlbWVudGF0aW9u
IG9mIGNoaXAtdG8taG9zdCBldmVudCAoYWthIGluZGljYXRpb25zKSBvZiBXRnh4eCBTcGxpdCBN
YWMNCisgKiAoV1NNKSBBUEkuDQorICoNCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAxOSwgU2ls
aWNvbiBMYWJvcmF0b3JpZXMsIEluYy4NCisgKiBDb3B5cmlnaHQgKGMpIDIwMTAsIFNULUVyaWNz
c29uDQorICovDQorI2luY2x1ZGUgPGxpbnV4L3NrYnVmZi5oPg0KKyNpbmNsdWRlIDxsaW51eC9l
dGhlcmRldmljZS5oPg0KKw0KKyNpbmNsdWRlICJoaWZfcnguaCINCisjaW5jbHVkZSAid2Z4Lmgi
DQorI2luY2x1ZGUgImhpZl9hcGlfY21kLmgiDQorDQorc3RhdGljIGludCBoaWZfc3RhcnR1cF9p
bmRpY2F0aW9uKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3QgaGlmX21zZyAqaGlmLCB2b2lk
ICpidWYpDQorew0KKwlzdHJ1Y3QgaGlmX2luZF9zdGFydHVwICpib2R5ID0gYnVmOw0KKw0KKwlp
ZiAoYm9keS0+c3RhdHVzIHx8IGJvZHktPmZpcm13YXJlX3R5cGUgPiA0KSB7DQorCQlkZXZfZXJy
KHdkZXYtPmRldiwgInJlY2VpdmVkIGludmFsaWQgc3RhcnR1cCBpbmRpY2F0aW9uIik7DQorCQly
ZXR1cm4gLUVJTlZBTDsNCisJfQ0KKwltZW1jcHkoJndkZXYtPmh3X2NhcHMsIGJvZHksIHNpemVv
ZihzdHJ1Y3QgaGlmX2luZF9zdGFydHVwKSk7DQorCWxlMzJfdG9fY3B1cygmd2Rldi0+aHdfY2Fw
cy5zdGF0dXMpOw0KKwlsZTE2X3RvX2NwdXMoJndkZXYtPmh3X2NhcHMuaGFyZHdhcmVfaWQpOw0K
KwlsZTE2X3RvX2NwdXMoJndkZXYtPmh3X2NhcHMubnVtX2lucF9jaF9idWZzKTsNCisJbGUxNl90
b19jcHVzKCZ3ZGV2LT5od19jYXBzLnNpemVfaW5wX2NoX2J1Zik7DQorDQorCWNvbXBsZXRlKCZ3
ZGV2LT5maXJtd2FyZV9yZWFkeSk7DQorCXJldHVybiAwOw0KK30NCisNCitzdGF0aWMgY29uc3Qg
c3RydWN0IHsNCisJaW50IG1zZ19pZDsNCisJaW50ICgqaGFuZGxlcikoc3RydWN0IHdmeF9kZXYg
KndkZXYsIHN0cnVjdCBoaWZfbXNnICpoaWYsIHZvaWQgKmJ1Zik7DQorfSBoaWZfaGFuZGxlcnNb
XSA9IHsNCisJeyBISUZfSU5EX0lEX1NUQVJUVVAsICAgICAgICAgICAgICBoaWZfc3RhcnR1cF9p
bmRpY2F0aW9uIH0sDQorfTsNCisNCit2b2lkIHdmeF9oYW5kbGVfcngoc3RydWN0IHdmeF9kZXYg
KndkZXYsIHN0cnVjdCBza19idWZmICpza2IpDQorew0KKwlpbnQgaTsNCisJc3RydWN0IGhpZl9t
c2cgKmhpZiA9IChzdHJ1Y3QgaGlmX21zZyAqKSBza2ItPmRhdGE7DQorCWludCBoaWZfaWQgPSBo
aWYtPmlkOw0KKw0KKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShoaWZfaGFuZGxlcnMpOyBp
KyspIHsNCisJCWlmIChoaWZfaGFuZGxlcnNbaV0ubXNnX2lkID09IGhpZl9pZCkgew0KKwkJCWlm
IChoaWZfaGFuZGxlcnNbaV0uaGFuZGxlcikNCisJCQkJaGlmX2hhbmRsZXJzW2ldLmhhbmRsZXIo
d2RldiwgaGlmLCBoaWYtPmJvZHkpOw0KKwkJCWdvdG8gZnJlZTsNCisJCX0NCisJfQ0KKwlkZXZf
ZXJyKHdkZXYtPmRldiwgInVuc3VwcG9ydGVkIEhJRiBJRCAlMDJ4XG4iLCBoaWZfaWQpOw0KK2Zy
ZWU6DQorCWRldl9rZnJlZV9za2Ioc2tiKTsNCit9DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFn
aW5nL3dmeC9oaWZfcnguaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmgNCm5ldyBmaWxl
IG1vZGUgMTAwNjQ0DQppbmRleCAwMDAwMDAwMDAwMDAuLmYwN2MxMGM4YzZiZA0KLS0tIC9kZXYv
bnVsbA0KKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguaA0KQEAgLTAsMCArMSwxOCBA
QA0KKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8NCisvKg0KKyAq
IEltcGxlbWVudGF0aW9uIG9mIGNoaXAtdG8taG9zdCBldmVudCAoYWthIGluZGljYXRpb25zKSBv
ZiBXRnh4eCBTcGxpdCBNYWMNCisgKiAoV1NNKSBBUEkuDQorICoNCisgKiBDb3B5cmlnaHQgKGMp
IDIwMTctMjAxOSwgU2lsaWNvbiBMYWJvcmF0b3JpZXMsIEluYy4NCisgKiBDb3B5cmlnaHQgKGMp
IDIwMTAsIFNULUVyaWNzc29uDQorICogQ29weXJpZ2h0IChDKSAyMDEwLCBTVC1Fcmljc3NvbiBT
QQ0KKyAqLw0KKyNpZm5kZWYgV0ZYX0hJRl9SWF9IDQorI2RlZmluZSBXRlhfSElGX1JYX0gNCisN
CitzdHJ1Y3Qgd2Z4X2RldjsNCitzdHJ1Y3Qgc2tfYnVmZjsNCisNCit2b2lkIHdmeF9oYW5kbGVf
cngoc3RydWN0IHdmeF9kZXYgKndkZXYsIHN0cnVjdCBza19idWZmICpza2IpOw0KKw0KKyNlbmRp
Zg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jIGIvZHJpdmVycy9zdGFn
aW5nL3dmeC9tYWluLmMNCmluZGV4IGYwYmVhMDUzYTBkOS4uNWU3ZTcyMjVmMDY4IDEwMDY0NA0K
LS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMNCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93
ZngvbWFpbi5jDQpAQCAtMTIsNiArMTIsNyBAQA0KICAqLw0KICNpbmNsdWRlIDxsaW51eC9tb2R1
bGUuaD4NCiAjaW5jbHVkZSA8bGludXgvb2YuaD4NCisjaW5jbHVkZSA8bGludXgvb2ZfbmV0Lmg+
DQogI2luY2x1ZGUgPGxpbnV4L2dwaW8uaD4NCiAjaW5jbHVkZSA8bGludXgvZ3Bpby9jb25zdW1l
ci5oPg0KICNpbmNsdWRlIDxsaW51eC9tbWMvc2Rpb19mdW5jLmg+DQpAQCAtODcsNiArODgsOSBA
QCBzdHJ1Y3Qgd2Z4X2RldiAqd2Z4X2luaXRfY29tbW9uKHN0cnVjdCBkZXZpY2UgKmRldiwNCiAJ
d2Rldi0+aHdidXNfb3BzID0gaHdidXNfb3BzOw0KIAl3ZGV2LT5od2J1c19wcml2ID0gaHdidXNf
cHJpdjsNCiAJbWVtY3B5KCZ3ZGV2LT5wZGF0YSwgcGRhdGEsIHNpemVvZigqcGRhdGEpKTsNCisN
CisJaW5pdF9jb21wbGV0aW9uKCZ3ZGV2LT5maXJtd2FyZV9yZWFkeSk7DQorDQogCXJldHVybiB3
ZGV2Ow0KIH0NCiANCkBAIC05Niw3ICsxMDAsOSBAQCB2b2lkIHdmeF9mcmVlX2NvbW1vbihzdHJ1
Y3Qgd2Z4X2RldiAqd2RldikNCiANCiBpbnQgd2Z4X3Byb2JlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2
KQ0KIHsNCisJaW50IGk7DQogCWludCBlcnI7DQorCWNvbnN0IHZvaWQgKm1hY2FkZHI7DQogDQog
CXdmeF9iaF9yZWdpc3Rlcih3ZGV2KTsNCiANCkBAIC0xMDQsNiArMTEwLDQ1IEBAIGludCB3Znhf
cHJvYmUoc3RydWN0IHdmeF9kZXYgKndkZXYpDQogCWlmIChlcnIpDQogCQlnb3RvIGVycjE7DQog
DQorCWVyciA9IHdhaXRfZm9yX2NvbXBsZXRpb25faW50ZXJydXB0aWJsZV90aW1lb3V0KCZ3ZGV2
LT5maXJtd2FyZV9yZWFkeSwgMTAgKiBIWik7DQorCWlmIChlcnIgPD0gMCkgew0KKwkJaWYgKGVy
ciA9PSAwKSB7DQorCQkJZGV2X2Vycih3ZGV2LT5kZXYsICJ0aW1lb3V0IHdoaWxlIHdhaXRpbmcg
Zm9yIHN0YXJ0dXAgaW5kaWNhdGlvbi4gSVJRIGNvbmZpZ3VyYXRpb24gZXJyb3I/XG4iKTsNCisJ
CQllcnIgPSAtRVRJTUVET1VUOw0KKwkJfSBlbHNlIGlmIChlcnIgPT0gLUVSRVNUQVJUU1lTKSB7
DQorCQkJZGV2X2luZm8od2Rldi0+ZGV2LCAicHJvYmUgaW50ZXJydXB0ZWQgYnkgdXNlclxuIik7
DQorCQl9DQorCQlnb3RvIGVycjE7DQorCX0NCisNCisJLy8gRklYTUU6IGZpbGwgd2lwaHk6Omh3
X3ZlcnNpb24NCisJZGV2X2luZm8od2Rldi0+ZGV2LCAic3RhcnRlZCBmaXJtd2FyZSAlZC4lZC4l
ZCBcIiVzXCIgKEFQSTogJWQuJWQsIGtleXNldDogJTAyWCwgY2FwczogMHglLjhYKVxuIiwNCisJ
CSB3ZGV2LT5od19jYXBzLmZpcm13YXJlX21ham9yLCB3ZGV2LT5od19jYXBzLmZpcm13YXJlX21p
bm9yLA0KKwkJIHdkZXYtPmh3X2NhcHMuZmlybXdhcmVfYnVpbGQsIHdkZXYtPmh3X2NhcHMuZmly
bXdhcmVfbGFiZWwsDQorCQkgd2Rldi0+aHdfY2Fwcy5hcGlfdmVyc2lvbl9tYWpvciwgd2Rldi0+
aHdfY2Fwcy5hcGlfdmVyc2lvbl9taW5vciwNCisJCSB3ZGV2LT5rZXlzZXQsICooKHUzMiAqKSAm
d2Rldi0+aHdfY2Fwcy5jYXBhYmlsaXRpZXMpKTsNCisNCisJaWYgKHdmeF9hcGlfb2xkZXJfdGhh
bih3ZGV2LCAxLCAwKSkgew0KKwkJZGV2X2Vycih3ZGV2LT5kZXYsICJ1bnN1cHBvcnRlZCBmaXJt
d2FyZSBBUEkgdmVyc2lvbiAoZXhwZWN0IDEgd2hpbGUgZmlybXdhcmUgcmV0dXJucyAlZClcbiIs
DQorCQkJd2Rldi0+aHdfY2Fwcy5hcGlfdmVyc2lvbl9tYWpvcik7DQorCQllcnIgPSAtRU5PVFNV
UFA7DQorCQlnb3RvIGVycjE7DQorCX0NCisNCisJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUo
d2Rldi0+YWRkcmVzc2VzKTsgaSsrKSB7DQorCQlldGhfemVyb19hZGRyKHdkZXYtPmFkZHJlc3Nl
c1tpXS5hZGRyKTsNCisJCW1hY2FkZHIgPSBvZl9nZXRfbWFjX2FkZHJlc3Mod2Rldi0+ZGV2LT5v
Zl9ub2RlKTsNCisJCWlmIChtYWNhZGRyKSB7DQorCQkJZXRoZXJfYWRkcl9jb3B5KHdkZXYtPmFk
ZHJlc3Nlc1tpXS5hZGRyLCBtYWNhZGRyKTsNCisJCQl3ZGV2LT5hZGRyZXNzZXNbaV0uYWRkcltF
VEhfQUxFTiAtIDFdICs9IGk7DQorCQl9DQorCQlldGhlcl9hZGRyX2NvcHkod2Rldi0+YWRkcmVz
c2VzW2ldLmFkZHIsIHdkZXYtPmh3X2NhcHMubWFjX2FkZHJbaV0pOw0KKwkJaWYgKCFpc192YWxp
ZF9ldGhlcl9hZGRyKHdkZXYtPmFkZHJlc3Nlc1tpXS5hZGRyKSkgew0KKwkJCWRldl93YXJuKHdk
ZXYtPmRldiwgInVzaW5nIHJhbmRvbSBNQUMgYWRkcmVzc1xuIik7DQorCQkJZXRoX3JhbmRvbV9h
ZGRyKHdkZXYtPmFkZHJlc3Nlc1tpXS5hZGRyKTsNCisJCX0NCisJCWRldl9pbmZvKHdkZXYtPmRl
diwgIk1BQyBhZGRyZXNzICVkOiAlcE1cbiIsIGksIHdkZXYtPmFkZHJlc3Nlc1tpXS5hZGRyKTsN
CisJfQ0KIA0KIAlyZXR1cm4gMDsNCiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L3dmeC5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaA0KaW5kZXggNGYyODkzOGZhM2E2Li5m
NWY5YTMzN2Q4MjggMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oDQorKysg
Yi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oDQpAQCAtMTAsNiArMTAsOSBAQA0KICNpZm5kZWYg
V0ZYX0gNCiAjZGVmaW5lIFdGWF9IDQogDQorI2luY2x1ZGUgPGxpbnV4L2NvbXBsZXRpb24uaD4N
CisjaW5jbHVkZSA8bmV0L21hYzgwMjExLmg+DQorDQogI2luY2x1ZGUgImJoLmgiDQogI2luY2x1
ZGUgIm1haW4uaCINCiAjaW5jbHVkZSAiaGlmX2FwaV9nZW5lcmFsLmgiDQpAQCAtMTksMTAgKzIy
LDEyIEBAIHN0cnVjdCBod2J1c19vcHM7DQogc3RydWN0IHdmeF9kZXYgew0KIAlzdHJ1Y3Qgd2Z4
X3BsYXRmb3JtX2RhdGEgcGRhdGE7DQogCXN0cnVjdCBkZXZpY2UJCSpkZXY7DQorCXN0cnVjdCBt
YWNfYWRkcmVzcwlhZGRyZXNzZXNbMl07DQogCWNvbnN0IHN0cnVjdCBod2J1c19vcHMJKmh3YnVz
X29wczsNCiAJdm9pZAkJCSpod2J1c19wcml2Ow0KIA0KIAl1OAkJCWtleXNldDsNCisJc3RydWN0
IGNvbXBsZXRpb24JZmlybXdhcmVfcmVhZHk7DQogCXN0cnVjdCBoaWZfaW5kX3N0YXJ0dXAJaHdf
Y2FwczsNCiAJc3RydWN0IHdmeF9oaWYJCWhpZjsNCiB9Ow0KLS0gDQoyLjIwLjENCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
