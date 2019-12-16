Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F011211D7
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9A3E7863F1;
	Mon, 16 Dec 2019 17:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id prkmk9lVef8w; Mon, 16 Dec 2019 17:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A807861D2;
	Mon, 16 Dec 2019 17:37:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8CBB81BF40E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8927A86146
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Bh6S93Hmjn7j for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:37:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr700045.outbound.protection.outlook.com [40.107.70.45])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3467E86138
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:37:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zqo0VLAD1OoccU4pFSW0xo/3K1CUJdAj/qeEQZE82sLWHrTK7t4knn9ArDeqgtrPIReYn/w6yVyD7jrYzGIBfg0PDz7sinj/LZnNIO0ER9avKWdopcfiCOYVm+XPwYLFD5S0Jq0GYSQniRXwam0xpLafBpvTX6iFw9pCme8uCuhNgdibH1BUmvSCGhEw5LmmrC9hcYrNhdcx+yCfZ/Nv8jrdou3yOdg+bftz6JlhM6HFpPICoX/jSyOu7O+aIVsze5DiNCwawspPYqsnNhyBf11J+7u9olBS3e60s73KFOuP9FPg/9oMAHOoOh0JRJNEwCgQZIiCvdblhY1KsCmtwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ypbJi7qzmnzIwUZ0zxTzHV7LB48R3jUIzwmLkkd2hM=;
 b=QgsyKGJvBJf8NrC4lSz6Yu+kYtsGELdbhra9dalI7VXQ5tdEfWV4Sfh7XOHfZr/dnqJZk1IR33nwmPjzXl0oyo27p9RNwUfVXGtoI3s2kdEVb809NHSrwgVwRUEoW8ErXaDZ0vEu9cCvFFaMW38bEs3C/1hU4la0Avhxnp58uJOCmxAKqO/GuboK1kB3sRDXzynQbdnJrR8E3UW4ZRpLkyV9NCQppkizIfv/ZzgiEDCPOJWHTM5qxxUr/GsoQEmZCOKgRDA8hprx0CqxVbpAfXh0xWyNVgDwUEemtYS2jvspV6DaPsmP1uYce88p1XpMPTiaW558JeGYo1AujdetHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8ypbJi7qzmnzIwUZ0zxTzHV7LB48R3jUIzwmLkkd2hM=;
 b=g/Y8hOo2TANRsaM9Gr3dZjAcNFk2cUDhVBVhCrhZhOr1YljQaj6REgQruq7KUxgSpEGjTzXMEk9tJh9iCvnqoPq2FRh0m7M/qecoNWKqXVa9ALUVu1c86yrr0joOrIfxj8p+m1lLN2fKDO4kRoenAwGlCcDSPHKfuqKJf8c7msI=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4445.namprd11.prod.outlook.com (52.135.37.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 17:06:37 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:06:37 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 32/55] staging: wfx: drop useless argument from wfx_set_pm()
Thread-Topic: [PATCH 32/55] staging: wfx: drop useless argument from
 wfx_set_pm()
Thread-Index: AQHVtDLJbPOrje42kkqeD7yT4l3GGA==
Date: Mon, 16 Dec 2019 17:03:50 +0000
Message-ID: <20191216170302.29543-33-Jerome.Pouiller@silabs.com>
References: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20191216170302.29543-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e6773442-727a-4e26-519c-08d7824a500f
x-ms-traffictypediagnostic: MN2PR11MB4445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB44459D7E7E306121AD9CFABA93510@MN2PR11MB4445.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(39850400004)(396003)(136003)(189003)(199004)(110136005)(6486002)(107886003)(36756003)(186003)(316002)(66946007)(54906003)(5660300002)(66574012)(66446008)(66556008)(85182001)(66476007)(76116006)(91956017)(64756008)(2616005)(6506007)(85202003)(2906002)(26005)(71200400001)(6512007)(4326008)(8936002)(81166006)(1076003)(478600001)(86362001)(81156014)(6666004)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4445;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2IEi03nX61Ii/Tzlvjszh/rt99h3YtY9n002GnmVvGhDmjlhQSTKBOSHBm/vpPyjwdDbMvQasr8nvYYhmJP5Qsd9mkyUi+3GMjQRGTE0LJ6I+wiBjbFgcN7C88RN3KGwx5klW3y9P3SBy5utNdyqdxA8MYMJq8YmcszNoMot4lHQDFmHR1TNWrtOuGBZBd59K86E2LOgQ244KM1xIG+DhViK1o/suUxGSYPBbl7lHifGDFeFg+gR5AvEvDcbsoRiR/8mImbqa1Juby1CixbfgRD0DLDpkzFnfZ0b1bU2ESj49rv1flyirP12wD/T6bGSjceUahoWzqwVBuJzcsbdAOiyII4czAcOpGrq21MTV9p37R5rUj/H2AIHpI2Iphvg34ItSk4zpoTmYKLVGiKSu1GiQowFATzOTmQG8ukx9HmUzetJyjUQ1+GUNCsCGNGm
Content-ID: <B1995BA5B83479419202F4EB6D307759@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6773442-727a-4e26-519c-08d7824a500f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:50.4204 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wDnRtHVX6VeRsqqENq4OHiNdIeNe03+Rf42sskjj5PIDjAs/hdegRExzyo+khHYAqUVkhmyg+vBeWo6AR/203Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4445
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
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpB
cmd1bWVudCB0byB3Znhfc2V0X3BtKCkgaXMgYWx3YXlzIHd2aWYtPnBvd2Vyc2F2ZV9tb2RlLiBT
bywgd2UgY2FuDQpzaW1wbGlmeSBpdC4NCg0KU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxs
ZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KLS0tDQogZHJpdmVycy9zdGFnaW5nL3dm
eC9zdGEuYyB8IDE2ICsrKysrKystLS0tLS0tLS0NCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRp
b25zKCspLCA5IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMNCmluZGV4IGViMDg3YjljODA5Ny4u
ZWUxYjE1OTUwMzg5IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYw0KKysr
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYw0KQEAgLTMyNiwxMiArMzI2LDEwIEBAIHZvaWQg
d2Z4X2NvbmZpZ3VyZV9maWx0ZXIoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsDQogCX0NCiB9DQog
DQotc3RhdGljIGludCB3Znhfc2V0X3BtKHN0cnVjdCB3ZnhfdmlmICp3dmlmLA0KLQkJICAgICAg
Y29uc3Qgc3RydWN0IGhpZl9yZXFfc2V0X3BtX21vZGUgKmFyZykNCitzdGF0aWMgaW50IHdmeF91
cGRhdGVfcG0oc3RydWN0IHdmeF92aWYgKnd2aWYpDQogew0KLQlzdHJ1Y3QgaGlmX3JlcV9zZXRf
cG1fbW9kZSBwbSA9ICphcmc7DQorCXN0cnVjdCBoaWZfcmVxX3NldF9wbV9tb2RlIHBtID0gd3Zp
Zi0+cG93ZXJzYXZlX21vZGU7DQogCXUxNiB1YXBzZF9mbGFnczsNCi0JaW50IHJldDsNCiANCiAJ
aWYgKHd2aWYtPnN0YXRlICE9IFdGWF9TVEFURV9TVEEgfHwgIXd2aWYtPmJzc19wYXJhbXMuYWlk
KQ0KIAkJcmV0dXJuIDA7DQpAQCAtMzkwLDcgKzM4OCw3IEBAIGludCB3ZnhfY29uZl90eChzdHJ1
Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZiwNCiAJCQlpZiAo
IXJldCAmJiB3dmlmLT5zZXRic3NwYXJhbXNfZG9uZSAmJg0KIAkJCSAgICB3dmlmLT5zdGF0ZSA9
PSBXRlhfU1RBVEVfU1RBICYmDQogCQkJICAgIG9sZF91YXBzZF9mbGFncyAhPSBuZXdfdWFwc2Rf
ZmxhZ3MpDQotCQkJCXJldCA9IHdmeF9zZXRfcG0od3ZpZiwgJnd2aWYtPnBvd2Vyc2F2ZV9tb2Rl
KTsNCisJCQkJcmV0ID0gd2Z4X3VwZGF0ZV9wbSh3dmlmKTsNCiAJCX0NCiAJfSBlbHNlIHsNCiAJ
CXJldCA9IC1FSU5WQUw7DQpAQCAtMTAxNCw3ICsxMDEyLDcgQEAgc3RhdGljIHZvaWQgd2Z4X2pv
aW5fZmluYWxpemUoc3RydWN0IHdmeF92aWYgKnd2aWYsDQogCQloaWZfc2V0X2Jzc19wYXJhbXMo
d3ZpZiwgJnd2aWYtPmJzc19wYXJhbXMpOw0KIAkJd3ZpZi0+c2V0YnNzcGFyYW1zX2RvbmUgPSB0
cnVlOw0KIAkJd2Z4X3NldF9iZWFjb25fd2FrZXVwX3BlcmlvZF93b3JrKCZ3dmlmLT5zZXRfYmVh
Y29uX3dha2V1cF9wZXJpb2Rfd29yayk7DQotCQl3Znhfc2V0X3BtKHd2aWYsICZ3dmlmLT5wb3dl
cnNhdmVfbW9kZSk7DQorCQl3ZnhfdXBkYXRlX3BtKHd2aWYpOw0KIAl9DQogfQ0KIA0KQEAgLTE0
NTEsNyArMTQ0OSw3IEBAIGludCB3ZnhfY29uZmlnKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCB1
MzIgY2hhbmdlZCkNCiAJCQkJfQ0KIAkJCX0NCiAJCQlpZiAod3ZpZi0+c3RhdGUgPT0gV0ZYX1NU
QVRFX1NUQSAmJiB3dmlmLT5ic3NfcGFyYW1zLmFpZCkNCi0JCQkJd2Z4X3NldF9wbSh3dmlmLCAm
d3ZpZi0+cG93ZXJzYXZlX21vZGUpOw0KKwkJCQl3ZnhfdXBkYXRlX3BtKHd2aWYpOw0KIAkJfQ0K
IAkJd3ZpZiA9IHdkZXZfdG9fd3ZpZih3ZGV2LCAwKTsNCiAJfQ0KQEAgLTE1OTEsNyArMTU4OSw3
IEBAIGludCB3ZnhfYWRkX2ludGVyZmFjZShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0
IGllZWU4MDIxMV92aWYgKnZpZikNCiAJCWVsc2UNCiAJCQloaWZfc2V0X2Jsb2NrX2Fja19wb2xp
Y3kod3ZpZiwgMHgwMCwgMHgwMCk7DQogCQkvLyBDb21ibyBmb3JjZSBwb3dlcnNhdmUgbW9kZS4g
V2UgY2FuIHJlLWVuYWJsZSBpdCBub3cNCi0JCXdmeF9zZXRfcG0od3ZpZiwgJnd2aWYtPnBvd2Vy
c2F2ZV9tb2RlKTsNCisJCXdmeF91cGRhdGVfcG0od3ZpZik7DQogCX0NCiAJcmV0dXJuIDA7DQog
fQ0KQEAgLTE2NjYsNyArMTY2NCw3IEBAIHZvaWQgd2Z4X3JlbW92ZV9pbnRlcmZhY2Uoc3RydWN0
IGllZWU4MDIxMV9odyAqaHcsDQogCQllbHNlDQogCQkJaGlmX3NldF9ibG9ja19hY2tfcG9saWN5
KHd2aWYsIDB4MDAsIDB4MDApOw0KIAkJLy8gQ29tYm8gZm9yY2UgcG93ZXJzYXZlIG1vZGUuIFdl
IGNhbiByZS1lbmFibGUgaXQgbm93DQotCQl3Znhfc2V0X3BtKHd2aWYsICZ3dmlmLT5wb3dlcnNh
dmVfbW9kZSk7DQorCQl3ZnhfdXBkYXRlX3BtKHd2aWYpOw0KIAl9DQogfQ0KIA0KLS0gDQoyLjIw
LjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
