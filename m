Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C38158CE4
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Feb 2020 11:45:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4DD9720003;
	Tue, 11 Feb 2020 10:45:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oe2NXJpV+7HJ; Tue, 11 Feb 2020 10:45:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 22C642045A;
	Tue, 11 Feb 2020 10:45:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4D0FD1BF831
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:45:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 447342002C
 for <devel@linuxdriverproject.org>; Tue, 11 Feb 2020 10:45:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6xt1rUBnDJ2x for <devel@linuxdriverproject.org>;
 Tue, 11 Feb 2020 10:45:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2084.outbound.protection.outlook.com [40.107.243.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 1932D20003
 for <devel@driverdev.osuosl.org>; Tue, 11 Feb 2020 10:45:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CDqKJwkzJp51OxmFz1B10Hv3vljPec9P7Bo+5+fPiM63ybgB1VTkzFcdtqx++usJntE6uHWkUQgZqjoNDaPsfS6Yoza9NOluhhX3lGslueQVT01S/7cr5FdDQF3RfofIytouvEYNdaV7epTW1e6HTz4d9YxdjVIYSQnqB+1qKDLWtzUOSXZSHBDdB3zDfUH9AnRlOoA1whIF7S9HGyhDv57ucMcBMyIwXA8PwYYIAc7y6iq+jlyYR9W6m6XMCDfYSO65jWBGf0bgopjZ4iWKr7qCkwv0BPviX+pcwobLRgfv6GqPKinGo0KruNNooKNNxPyFEJ0OMxqiVLloGo0bsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4MBTICax0x2ZwHWB8tsc9goElv6cGNhSAZ/01Ml4VHI=;
 b=dxeRJ3ExJzv2YYa2xL+ZTzPPCfXx6gbsr0H6Vr5ZNNPUVG6wZaB7tXhNShI36E6IQgBnZi5PMsR2LHRbh3ENxHmDe9EY5DXShjnSGG5dmJsuQmRdHLeC9hv/qxJQ7T/z9o13N/HWTyHa1eR9WFjfQ+lZViMnA9tt9cHGSBaDYdrJcxuHEbjXCCyGPp382Ch3uZHqhYRu2H7JBuzPi1N2if8NbZ5Ay10ZPaOmFatihb7NKF0su5yctqjvBxBz0RsYDEcQVyVtHSfPHbB3TLpXk1HX+nXpySYDkL+mSjDVwN+OpaxnWZg78hlpwABYLzrIkJ/mIc5W6Hs2xl6N1qksPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4MBTICax0x2ZwHWB8tsc9goElv6cGNhSAZ/01Ml4VHI=;
 b=Rw7AO+Tx5IYpxMsh6AbPO4M1IvuLNMpkV0q+GdWwxWGfWywNMQYSk7YA7hxLEIkeI+/3r+UB9xhnznjDEv+9KaI2mhnuxwRzWEduqBdCjA6i0DcNlIeSKBooZ4FgGTzePervnYubDsQSspbrJmEKCai62/oxuJrZSYQs5sNL0y0=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4430.namprd11.prod.outlook.com (52.135.39.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Tue, 11 Feb 2020 10:45:44 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2707.030; Tue, 11 Feb 2020
 10:45:44 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Subject: Re: [[PATCH staging] 7/7] staging: wfx: use more power-efficient
 sleep for reset
Thread-Topic: [[PATCH staging] 7/7] staging: wfx: use more power-efficient
 sleep for reset
Thread-Index: AQHV4LfWwjaGGUkfz0qcKeUdYm85kagVz2GA
Date: Tue, 11 Feb 2020 10:45:44 +0000
Message-ID: <2074006.CDZ1VyBi8C@pc-42>
References: <cover.1581410026.git.mirq-linux@rere.qmqm.pl>
 <f32c850dcb02bf26faf04655c01aee4c4d20c139.1581410026.git.mirq-linux@rere.qmqm.pl>
In-Reply-To: <f32c850dcb02bf26faf04655c01aee4c4d20c139.1581410026.git.mirq-linux@rere.qmqm.pl>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38484214-703a-4443-2640-08d7aedf8bdd
x-ms-traffictypediagnostic: MN2PR11MB4430:
x-microsoft-antispam-prvs: <MN2PR11MB44302CC5F1F703B90583327493180@MN2PR11MB4430.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
x-forefront-prvs: 0310C78181
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(346002)(366004)(376002)(39850400004)(136003)(396003)(189003)(199004)(6916009)(86362001)(6486002)(6506007)(66574012)(478600001)(54906003)(85182001)(5660300002)(26005)(66946007)(66556008)(76116006)(186003)(91956017)(33716001)(66476007)(66446008)(85202003)(64756008)(2906002)(4326008)(71200400001)(9686003)(6512007)(81156014)(316002)(8936002)(81166006)(8676002)(39026012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4430;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0fzw+k8ooNBx64C8G5lvZH+GUVoh9e/sHayvLPJjEVcxbmsJ+cJ4gc9tPnfLgvBeufmj8dB3kG9kwutETsq4octn7vokZc4JydK4V76GsVKwu2wFadRmPKE+zlebatFIi41NGP49CCbuSn6uALO6jaosDpdM+n3ZERY5cS3Jp6qWoB5JHF4Z9+IFNgbvhd5WSf/GSUwRXAIriiNlcVDKYJ0WD/mYqcjIknSdr14Z9z+18L7+Den8vLn6fyBMa730NOb0Q2O6b33cdjzyhICLbA+mseFQa/jVMT+eACxUCJ+q0InavZ80o1RydogTI3cEnfRCT8sBoayhfbwZIILJAYfJvc4CYOBVLMYuwV9c+FLJbE+G6n6E7hQn9A+zcYh8zXvNj6H7gXe5YH54CKDAdXKt36tuMAX0nj4j+RpJszS1MIjPWZzNUoTIjZ4Olz5JmV0XgrumJwkUHbwP+OHofYAYsK9bdtnUmHHNENH7CaFlzkmz6eK/0zfGdd13flj7
x-ms-exchange-antispam-messagedata: SUDEEyjLlZpjQjygiDmVkny9Q9D4tzj+l1ijEZFbaZRnD7jl9j8CePBgmN/57MJ4gUNimPj/4yMyr9B2TPyMEwzvcvn8b15lqZ0BCOBxHer57nVyxUYWsU2OKCAl8Lx0GRfqZwFVT2XwQ8b+GP3ZdQ==
x-ms-exchange-transport-forked: True
Content-ID: <4FD07A54F615E64780007E8D4C524A03@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38484214-703a-4443-2640-08d7aedf8bdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2020 10:45:44.1222 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ELehLiEveZxkbMqRXK5SDr8g00i/EGLIwWPn82Jwap0PCgLkRD3gnB0Ac7o0+uPdFKjA772Wf/5Vjv+Hc3MONQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4430
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlc2RheSAxMSBGZWJydWFyeSAyMDIwIDA5OjQ2OjU2IENFVCBNaWNoYcWCIE1pcm9zxYJh
dyB3cm90ZToNCj4NCj4gUmVwbGFjZSB1ZGVsYXkoKSB3aXRoIHVzbGVlcF9yYW5nZSgpIGFzIGFs
bCB1c2VzIGFyZSBpbiBhIHNsZWVwYWJsZSBjb250ZXh0Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTog
TWljaGHFgiBNaXJvc8WCYXcgPG1pcnEtbGludXhAcmVyZS5xbXFtLnBsPg0KPiAtLS0NCj4gIGRy
aXZlcnMvc3RhZ2luZy93ZngvYmguYyAgICAgIHwgMiArLQ0KPiAgZHJpdmVycy9zdGFnaW5nL3dm
eC9idXNfc3BpLmMgfCA0ICsrLS0NCj4gIGRyaXZlcnMvc3RhZ2luZy93ZngvaHdpby5jICAgIHwg
MiArLQ0KPiAgMyBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9iaC5jDQo+IGluZGV4IGM2MzE5YWI3ZTcxYS4uOWZjYWIwMGEzNzMzIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMNCj4gKysrIGIvZHJpdmVycy9zdGFn
aW5nL3dmeC9iaC5jDQo+IEBAIC0yNiw3ICsyNiw3IEBAIHN0YXRpYyB2b2lkIGRldmljZV93YWtl
dXAoc3RydWN0IHdmeF9kZXYgKndkZXYpDQo+ICAgICAgICAgZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNs
ZWVwKHdkZXYtPnBkYXRhLmdwaW9fd2FrZXVwLCAxKTsNCj4gICAgICAgICBpZiAod2Z4X2FwaV9v
bGRlcl90aGFuKHdkZXYsIDEsIDQpKSB7DQo+ICAgICAgICAgICAgICAgICBpZiAoIWNvbXBsZXRp
b25fZG9uZSgmd2Rldi0+aGlmLmN0cmxfcmVhZHkpKQ0KPiAtICAgICAgICAgICAgICAgICAgICAg
ICB1ZGVsYXkoMjAwMCk7DQo+ICsgICAgICAgICAgICAgICAgICAgICAgIHVzbGVlcF9yYW5nZSgy
MDAwLCAyNTAwKTsNCj4gICAgICAgICB9IGVsc2Ugew0KPiAgICAgICAgICAgICAgICAgLy8gY29t
cGxldGlvbi5oIGRvZXMgbm90IHByb3ZpZGUgYW55IGZ1bmN0aW9uIHRvIHdhaXQNCj4gICAgICAg
ICAgICAgICAgIC8vIGNvbXBsZXRpb24gd2l0aG91dCBjb25zdW1lIGl0IChhIGtpbmQgb2YNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jIGIvZHJpdmVycy9zdGFn
aW5nL3dmeC9idXNfc3BpLmMNCj4gaW5kZXggNjM0YjRlNWJiMDU1Li4xNDcyOWFmMmM0MDUgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jDQo+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jDQo+IEBAIC0yMDksOSArMjA5LDkgQEAgc3RhdGljIGlu
dCB3Znhfc3BpX3Byb2JlKHN0cnVjdCBzcGlfZGV2aWNlICpmdW5jKQ0KPiAgICAgICAgICAgICAg
ICAgaWYgKHNwaV9nZXRfZGV2aWNlX2lkKGZ1bmMpLT5kcml2ZXJfZGF0YSAmIFdGWF9SRVNFVF9J
TlZFUlRFRCkNCj4gICAgICAgICAgICAgICAgICAgICAgICAgZ3Bpb2RfdG9nZ2xlX2FjdGl2ZV9s
b3coYnVzLT5ncGlvX3Jlc2V0KTsNCj4gICAgICAgICAgICAgICAgIGdwaW9kX3NldF92YWx1ZV9j
YW5zbGVlcChidXMtPmdwaW9fcmVzZXQsIDEpOw0KPiAtICAgICAgICAgICAgICAgdWRlbGF5KDEw
MCk7DQo+ICsgICAgICAgICAgICAgICB1c2xlZXBfcmFuZ2UoMTAwLCAxNTApOw0KPiAgICAgICAg
ICAgICAgICAgZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKGJ1cy0+Z3Bpb19yZXNldCwgMCk7DQo+
IC0gICAgICAgICAgICAgICB1ZGVsYXkoMjAwMCk7DQo+ICsgICAgICAgICAgICAgICB1c2xlZXBf
cmFuZ2UoMjAwMCwgMjUwMCk7DQo+ICAgICAgICAgfQ0KPiANCj4gICAgICAgICBJTklUX1dPUkso
JmJ1cy0+cmVxdWVzdF9yeCwgd2Z4X3NwaV9yZXF1ZXN0X3J4KTsNCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvc3RhZ2luZy93ZngvaHdpby5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9od2lvLmMNCj4g
aW5kZXggNDdlMDRjNTllZDkzLi5kM2ExNDFkOTVhMGUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvaHdpby5jDQo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaHdpby5jDQo+
IEBAIC0xNDIsNyArMTQyLDcgQEAgc3RhdGljIGludCBpbmRpcmVjdF9yZWFkKHN0cnVjdCB3Znhf
ZGV2ICp3ZGV2LCBpbnQgcmVnLCB1MzIgYWRkciwgdm9pZCAqYnVmLA0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICBnb3RvIGVycjsNCj4gICAgICAgICAgICAgICAgIGlmICghKGNmZyAmIHByZWZl
dGNoKSkNCj4gICAgICAgICAgICAgICAgICAgICAgICAgYnJlYWs7DQo+IC0gICAgICAgICAgICAg
ICB1ZGVsYXkoMjAwKTsNCj4gKyAgICAgICAgICAgICAgIHVzbGVlcF9yYW5nZSgyMDAsIDI1MCk7
DQo+ICAgICAgICAgfQ0KPiAgICAgICAgIGlmIChpID09IDIwKSB7DQo+ICAgICAgICAgICAgICAg
ICByZXQgPSAtRVRJTUVET1VUOw0KPiAtLQ0KPiAyLjIwLjENCj4gDQoNClJldmlld2VkLWJ5OiBK
w6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQoNCi0tIA0KSsOp
csO0bWUgUG91aWxsZXINCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
