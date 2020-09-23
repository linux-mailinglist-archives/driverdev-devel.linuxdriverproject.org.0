Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCB0275344
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Sep 2020 10:33:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EA120860D2;
	Wed, 23 Sep 2020 08:33:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WsVxZxM-jiKa; Wed, 23 Sep 2020 08:33:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8585484AE2;
	Wed, 23 Sep 2020 08:33:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 091B71BF289
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 08:33:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 04F7D85C56
 for <devel@linuxdriverproject.org>; Wed, 23 Sep 2020 08:33:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jgv3PKUhhEx3 for <devel@linuxdriverproject.org>;
 Wed, 23 Sep 2020 08:33:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [207.82.80.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4473085B8A
 for <devel@driverdev.osuosl.org>; Wed, 23 Sep 2020 08:33:43 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-214-lGnJMTG5MyWxNYe194BkTw-1; Wed, 23 Sep 2020 09:33:38 +0100
X-MC-Unique: lGnJMTG5MyWxNYe194BkTw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 23 Sep 2020 09:33:38 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Wed, 23 Sep 2020 09:33:38 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Mauro Carvalho Chehab' <mchehab+huawei@kernel.org>, "Linux Media Mailing
 List" <linux-media@vger.kernel.org>
Subject: RE: [PATCH 1/2] media: atomisp: fix gcc warnings
Thread-Topic: [PATCH 1/2] media: atomisp: fix gcc warnings
Thread-Index: AQHWkYKkcL0rMDLAdkSe4RxBoZVCqql15EgQ
Date: Wed, 23 Sep 2020 08:33:37 +0000
Message-ID: <15bec1f27f5e45e6aa3eb9125d973a06@AcuMS.aculab.com>
References: <8e3d5d4baf0781974a224e284e837665c0d26f92.1600849288.git.mchehab+huawei@kernel.org>
In-Reply-To: <8e3d5d4baf0781974a224e284e837665c0d26f92.1600849288.git.mchehab+huawei@kernel.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=C51A453 smtp.mailfrom=david.laight@aculab.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linuxarm@huawei.com" <linuxarm@huawei.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 "mauro.chehab@huawei.com" <mauro.chehab@huawei.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IDIzIFNlcHRlbWJlciAyMDIwIDA5
OjIyDQo+IA0KPiBEZXBlbmRpbmcgb24gdGhlIGdjYyB2ZXJzaW9uLCBhZnRlciBjaGFuZ2VzZXQN
Cj4gNzJhOWZmM2JmN2ZiICgibWVkaWE6IGF0b21pc3A6IGdldCByaWQgb2YgLVdzdWdnZXN0LWF0
dHJpYnV0ZT1mb3JtYXQgd2FybmluZ3MiKSwNCj4gd2UncmUgbm93IGdldHRpbmcgdHdvIHdhcm5p
bmdzLCB3aGljaCBhcmUgYnJlYWtpbmcgdGhlIEplbmtpbnMNCj4gQ0kgaW5zdGFuY2UgYXQgaHR0
cHM6Ly9idWlsZGVyLmxpbnV4dHYub3JnOg0KPiANCj4gCS4uL2RyaXZlcnMvc3RhZ2luZy9tZWRp
YS9hdG9taXNwL3BjaS9hdG9taXNwX2NvbXBhdF9jc3MyMC5jOiBJbiBmdW5jdGlvbiDigJhfX3Nl
dF9jc3NfcHJpbnRfZW524oCZOg0KPiAJLi4vZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3Av
cGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmM6ODYwOjUwOiBlcnJvcjogYXNzaWdubWVudCB0byDi
gJhpbnQNCj4gKCopKGNvbnN0IGNoYXIgKiwgY2hhciAqKeKAmSBmcm9tIGluY29tcGF0aWJsZSBw
b2ludGVyIHR5cGUg4oCYaW50IChfX2F0dHJpYnV0ZV9fKChyZWdwYXJtKDApKSkgKikoY29uc3QN
Cj4gY2hhciAqLCBjaGFyICop4oCZIFstV2Vycm9yPWluY29tcGF0aWJsZS1wb2ludGVyLXR5cGVz
XQ0KPiAJICAgaXNwLT5jc3NfZW52LmlzcF9jc3NfZW52LnByaW50X2Vudi5kZWJ1Z19wcmludCA9
IHZwcmludGs7DQo+IAkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIF4NCj4gCS4uL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9hdG9taXNwL3BjaS9hdG9taXNw
X2NvbXBhdF9jc3MyMC5jOiBJbiBmdW5jdGlvbg0KPiDigJhhdG9taXNwX2Nzc19sb2FkX2Zpcm13
YXJl4oCZOg0KPiAJLi4vZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvcGNpL2F0b21pc3Bf
Y29tcGF0X2NzczIwLmM6ODkzOjQ5OiBlcnJvcjogYXNzaWdubWVudCB0byDigJhpbnQNCj4gKCop
KGNvbnN0IGNoYXIgKiwgY2hhciAqKeKAmSBmcm9tIGluY29tcGF0aWJsZSBwb2ludGVyIHR5cGUg
4oCYaW50IChfX2F0dHJpYnV0ZV9fKChyZWdwYXJtKDApKSkgKikoY29uc3QNCj4gY2hhciAqLCBj
aGFyICop4oCZIFstV2Vycm9yPWluY29tcGF0aWJsZS1wb2ludGVyLXR5cGVzXQ0KPiAJICBpc3At
PmNzc19lbnYuaXNwX2Nzc19lbnYucHJpbnRfZW52LmVycm9yX3ByaW50ID0gdnByaW50azsNCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4NCj4gCWNj
MTogc29tZSB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycw0KPiANCj4gU28sIHdlIG5l
ZWQgdG8gcGFydGlhbGx5IHJldmVydCB0aGUgcGF0Y2guDQoNClRoYXQgbG9va3MgbGlrZSBjb21w
bGV0ZWx5IHRoZSB3cm9uZyBjb21taXQgbWVzc2FnZS4NCkZyb20gdGhlIGVycm9yIG1lc3NhZ2Ug
aXQgbG9va3MgbGlrZSB2cHJpbnRrKCkgaXMgdXNpbmcgYSBub24tc3RhbmRhcmQNCmNhbGxpbmcg
Y29udmVudGlvbiAnX19hdHRyaWJ1dGVfXygocmVncGFybSgwKSkpJyBzbyBjYW4ndCBiZSBhc3Np
Z25lZA0KdG8gJ2RlYnVnX3ByaW50JyAtIHdoaWNoIGV4cGVjdHMgdGhlIG5vcm1hbCBjb252ZW50
aW9uLg0KDQpUaGUgZml4IGlzIGNvcnJlY3QgdGhvdWdoLg0KDQoJRGF2aWQNCg0KPiANCj4gRml4
ZXM6IDcyYTlmZjNiZjdmYiAoIm1lZGlhOiBhdG9taXNwOiBnZXQgcmlkIG9mIC1Xc3VnZ2VzdC1h
dHRyaWJ1dGU9Zm9ybWF0IHdhcm5pbmdzIikNCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFs
aG8gQ2hlaGFiIDxtY2hlaGFiK2h1YXdlaUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIC4uLi9zdGFn
aW5nL21lZGlhL2F0b21pc3AvcGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmMgIHwgMTEgKysrKysr
KysrLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvcGNpL2F0
b21pc3BfY29tcGF0X2NzczIwLmMNCj4gYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvYXRvbWlzcC9w
Y2kvYXRvbWlzcF9jb21wYXRfY3NzMjAuYw0KPiBpbmRleCAyODc5NmVjMTc3ZTMuLjg1YjM5ZGU3
YmMyOCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21pc3AvcGNpL2F0
b21pc3BfY29tcGF0X2NzczIwLmMNCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL2F0b21p
c3AvcGNpL2F0b21pc3BfY29tcGF0X2NzczIwLmMNCj4gQEAgLTE2Niw2ICsxNjYsMTMgQEAgYXRv
bWlzcF9jc3MyX2RiZ19mdHJhY2VfcHJpbnQoY29uc3QgY2hhciAqZm10LCB2YV9saXN0IGFyZ3Mp
DQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+IA0KPiArc3RhdGljIGludCAgX19hdHRyaWJ1dGVfXygo
Zm9ybWF0IChwcmludGYsIDEsIDApKSkNCj4gK2F0b21pc3BfdnByaW50ayhjb25zdCBjaGFyICpm
bXQsIHZhX2xpc3QgYXJncykNCj4gK3sNCj4gKwl2cHJpbnRrKGZtdCwgYXJncyk7DQo+ICsJcmV0
dXJuIDA7DQo+ICt9DQo+ICsNCj4gIHZvaWQgYXRvbWlzcF9sb2FkX3VpbnQzMihocnRfYWRkcmVz
cyBhZGRyLCB1aW50MzJfdCAqZGF0YSkNCj4gIHsNCj4gIAkqZGF0YSA9IGF0b21pc3BfY3NzMl9o
d19sb2FkXzMyKGFkZHIpOw0KPiBAQCAtODU3LDcgKzg2NCw3IEBAIHN0YXRpYyBpbmxpbmUgaW50
IF9fc2V0X2Nzc19wcmludF9lbnYoc3RydWN0IGF0b21pc3BfZGV2aWNlICppc3AsIGludCBvcHQp
DQo+ICAJCWlzcC0+Y3NzX2Vudi5pc3BfY3NzX2Vudi5wcmludF9lbnYuZGVidWdfcHJpbnQgPQ0K
PiAgCQkgICAgYXRvbWlzcF9jc3MyX2RiZ19mdHJhY2VfcHJpbnQ7DQo+ICAJZWxzZSBpZiAob3B0
ID09IDIpDQo+IC0JCWlzcC0+Y3NzX2Vudi5pc3BfY3NzX2Vudi5wcmludF9lbnYuZGVidWdfcHJp
bnQgPSB2cHJpbnRrOw0KPiArCQlpc3AtPmNzc19lbnYuaXNwX2Nzc19lbnYucHJpbnRfZW52LmRl
YnVnX3ByaW50ID0gYXRvbWlzcF92cHJpbnRrOw0KPiAgCWVsc2UNCj4gIAkJcmV0ID0gLUVJTlZB
TDsNCj4gDQo+IEBAIC04OTAsNyArODk3LDcgQEAgaW50IGF0b21pc3BfY3NzX2xvYWRfZmlybXdh
cmUoc3RydWN0IGF0b21pc3BfZGV2aWNlICppc3ApDQo+IA0KPiAgCV9fc2V0X2Nzc19wcmludF9l
bnYoaXNwLCBkYmdfZnVuYyk7DQo+IA0KPiAtCWlzcC0+Y3NzX2Vudi5pc3BfY3NzX2Vudi5wcmlu
dF9lbnYuZXJyb3JfcHJpbnQgPSB2cHJpbnRrOw0KPiArCWlzcC0+Y3NzX2Vudi5pc3BfY3NzX2Vu
di5wcmludF9lbnYuZXJyb3JfcHJpbnQgPSBhdG9taXNwX3ZwcmludGs7DQo+IA0KPiAgCS8qIGxv
YWQgaXNwIGZ3IGludG8gSVNQIG1lbW9yeSAqLw0KPiAgCWVyciA9IGlhX2Nzc19sb2FkX2Zpcm13
YXJlKGlzcC0+ZGV2LCAmaXNwLT5jc3NfZW52LmlzcF9jc3NfZW52LA0KPiAtLQ0KPiAyLjI2LjIN
Cg0KLQ0KUmVnaXN0ZXJlZCBBZGRyZXNzIExha2VzaWRlLCBCcmFtbGV5IFJvYWQsIE1vdW50IEZh
cm0sIE1pbHRvbiBLZXluZXMsIE1LMSAxUFQsIFVLDQpSZWdpc3RyYXRpb24gTm86IDEzOTczODYg
KFdhbGVzKQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
