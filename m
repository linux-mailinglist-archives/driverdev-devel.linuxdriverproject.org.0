Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F0AB795B
	for <lists+driverdev-devel@lfdr.de>; Thu, 19 Sep 2019 14:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 579D2220CA;
	Thu, 19 Sep 2019 12:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F816lfdQcspX; Thu, 19 Sep 2019 12:26:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 869D521FFB;
	Thu, 19 Sep 2019 12:26:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 80A851BF3C0
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 12:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B6B6860CF
 for <devel@linuxdriverproject.org>; Thu, 19 Sep 2019 12:26:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Br34uzrpwJAh for <devel@linuxdriverproject.org>;
 Thu, 19 Sep 2019 12:26:25 +0000 (UTC)
X-Greylist: delayed 01:33:48 by SQLgrey-1.7.6
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr700057.outbound.protection.outlook.com [40.107.70.57])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5ED3185F9D
 for <devel@driverdev.osuosl.org>; Thu, 19 Sep 2019 12:26:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Spwa4+kfXCn6TEfv8QZwnjS2JUC5r6nCQeyZ06aZV/f3pcnfa0t0O+EcUrtqaLQCxcGrxZmNj0MOqTOsCyoV+DCR1eq2VHK6tmgzbmVacrJbJsU+r8ntdfQJZDJ4AyT7tC8gbz8l/S7Mwrsm+Fg/w3TyOUSwQkLzPXo3rrbCVm5ri0noKUay8F/BD4X1Tin68dgu7Du9MV5LzNArd3yBRgbxrNasDzK/gcpCwlNJocpZcZoe/ryjEpeVqZtwpbOaNd0GDDdxqYCIjB3FwyEsmaOj+pBNJkdXl6bQzCxQC0CNkXLptS/yyhb+PBoMwmVwEpkF0zZKsygjcVFVyCrKvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IqrvIRLiKZ/bvt54De92KMZWa6wNK8oZCzID2iGcttU=;
 b=iepGFPIJf1RZFkAquvz5j2nqR2ybTpqA/fGdEQrlRPYpM4JbJySIhF8RkFkXuBGuDFHr5I5Z0Jm57zqRgWeHiDYESUlwLUHkvVTaxxsBGLmDESoqE7BoTcstGYO8G4zEogR0HNrR0iXNbbsUTpUwLhHxn54RVYXwjn4VytZ+Vwv+zwbGiz/sYFqARyXpUZRGmnpZODab7MCXVFGhM6oWQRCp6jingAkm7PxVVxs2Qk7E/EHfVkvHe15UhF+wE8WcXlIWFV7x9m7FYLjhLvmahjmtZs3FCuflq4sSNgQCMty0EgE43YQYVB+hf7oiDpiFMsk6CoWz2NRJ+yIgzLqzAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IqrvIRLiKZ/bvt54De92KMZWa6wNK8oZCzID2iGcttU=;
 b=LiUNSFn5keDeFZ0L33Bcb7mm25Moi7yC/l0k6sgMVUs0LGCkiah3KFxakAeEsf0HZlkO0sEMIe0hpu2DjjUnX3xsEPzLVPhRbCx9ud4GH7GkbEFTdhUaPh1bPRTmtAdJZ+R2T/3xxsDTgLrg9eg4LDT+tOuCDRCfu3VokBcWFck=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (20.179.149.217) by
 MN2PR11MB4415.namprd11.prod.outlook.com (52.135.39.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.17; Thu, 19 Sep 2019 10:52:43 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::45dc:e073:4446:4bf8]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::45dc:e073:4446:4bf8%3]) with mapi id 15.20.2263.023; Thu, 19 Sep 2019
 10:52:43 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 15/20] staging: wfx: add debug files and trace debug events
Thread-Topic: [PATCH 15/20] staging: wfx: add debug files and trace debug
 events
Thread-Index: AQHVbthcrJiWXQfj6UGo6oVHge3Vfg==
Date: Thu, 19 Sep 2019 10:52:42 +0000
Message-ID: <20190919105153.15285-16-Jerome.Pouiller@silabs.com>
References: <20190919105153.15285-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20190919105153.15285-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8a1f5d0c-6b13-4bbf-7483-08d73cef7fe0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR11MB4415; 
x-ms-traffictypediagnostic: MN2PR11MB4415:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB441581C8D6C701BC87E10D5E93890@MN2PR11MB4415.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:327;
x-forefront-prvs: 016572D96D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(39850400004)(376002)(136003)(189003)(199004)(14454004)(71190400001)(2906002)(81156014)(81166006)(478600001)(316002)(2501003)(64756008)(76176011)(66476007)(256004)(86362001)(66446008)(99286004)(25786009)(8676002)(66556008)(66946007)(11346002)(6512007)(110136005)(66574012)(5660300002)(54906003)(6436002)(71200400001)(14444005)(76116006)(3846002)(6506007)(91956017)(1076003)(6116002)(486006)(305945005)(36756003)(2616005)(446003)(4326008)(7736002)(8936002)(66066001)(186003)(107886003)(26005)(476003)(6486002)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4415;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 2n/FNcI9TRSE7tk8Wto8aIFgjZrZLKJdt8LZNPzrl6XnVcf+EJwahkPGwsWyEg1T++Z5bFF5wphKd6wUsrD+9ZSiro5tsbrkMOPi/qybQzZghZ6SQ0dR7y+2SDGuXMfOrW0N9UwHp0qh/5tB8Em33KnVgTDDrqKcvdkW0zdKuHey6NXT+iggEZUNQhAxhryAYc3xBVTMFZwIQnCIr/kUDxdfJmqMcmLnXsKScC9StTVdx7fj0X4fPautHwnrcbJgHrHPpfFWzXZ5XQ1D2MOoVqgdO/bdCv1IuCdR8JCjOFt52b3xZ1i8LBS0XDYWlGLK/14IR33IodttVgsu/vKVkwvVonk2uUaGQR1ZDU69MRd12sWRigNaWGeX9f2k/27OMEl5knGeKBmbFZVT/hGU83mY7dz8uBc3dhKVYkHCewg=
Content-ID: <4467A1877F7F7144A9AED367A8ED793E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a1f5d0c-6b13-4bbf-7483-08d73cef7fe0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2019 10:52:42.0230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vz9MYsQullvIqSe0jO8hQxQsc5tdHZK13OpD5vlHdGDmGdpxfNynYXT7xtIa8ypxQqQIjOKhfUc2yWIpMPUT7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4415
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpB
ZGQgdHJhY2VzIHdoZW4gZGVidWcgZXZlbnRzIGhhcHBlbiBhbmQgYWxsb3cgdG8gYXNrIGludGVy
bmFsDQppbmZvcm1hdGlvbiB0byBjaGlwLg0KDQpUaGVzZSBmZWF0dXJlcyB3b3JrIGluZGVwZW5k
ZW50bHkgZnJvbSBtYWM4MDIxMS4NCg0KU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIg
PGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KLS0tDQogZHJpdmVycy9zdGFnaW5nL3dmeC9k
ZWJ1Zy5jICB8IDEyMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKw0KIGRyaXZl
cnMvc3RhZ2luZy93ZngvaGlmX3J4LmMgfCAgODAgKysrKysrKysrKysrKysrKysrKysrKysNCiBk
cml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYyAgIHwgICAyICsNCiBkcml2ZXJzL3N0YWdpbmcvd2Z4
L3dmeC5oICAgIHwgIDE2ICsrKysrDQogNCBmaWxlcyBjaGFuZ2VkLCAyMjAgaW5zZXJ0aW9ucygr
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kZWJ1Zy5jIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9kZWJ1Zy5jDQppbmRleCAwNjE5YzdkMWNmNzkuLjRiZDlhMDc5Y2JkOSAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGVidWcuYw0KKysrIGIvZHJpdmVycy9zdGFn
aW5nL3dmeC9kZWJ1Zy5jDQpAQCAtNSwxNiArNSwzNSBAQA0KICAqIENvcHlyaWdodCAoYykgMjAx
Ny0yMDE5LCBTaWxpY29uIExhYm9yYXRvcmllcywgSW5jLg0KICAqIENvcHlyaWdodCAoYykgMjAx
MCwgU1QtRXJpY3Nzb24NCiAgKi8NCisjaW5jbHVkZSA8bGludXgvdmVyc2lvbi5oPg0KICNpbmNs
dWRlIDxsaW51eC9kZWJ1Z2ZzLmg+DQorI2luY2x1ZGUgPGxpbnV4L3NlcV9maWxlLmg+DQogI2lu
Y2x1ZGUgPGxpbnV4L2NyYzMyLmg+DQogDQogI2luY2x1ZGUgImRlYnVnLmgiDQogI2luY2x1ZGUg
IndmeC5oIg0KICNpbmNsdWRlICJtYWluLmgiDQorI2luY2x1ZGUgImhpZl90eF9taWIuaCINCiAN
CiAjZGVmaW5lIENSRUFURV9UUkFDRV9QT0lOVFMNCiAjaW5jbHVkZSAidHJhY2VzLmgiDQogDQor
I2lmIChLRVJORUxfVkVSU0lPTig0LCAxNywgMCkgPiBMSU5VWF9WRVJTSU9OX0NPREUpDQorI2Rl
ZmluZSBERUZJTkVfU0hPV19BVFRSSUJVVEUoX19uYW1lKQkJCQkJXA0KK3N0YXRpYyBpbnQgX19u
YW1lICMjIF9vcGVuKHN0cnVjdCBpbm9kZSAqaW5vZGUsIHN0cnVjdCBmaWxlICpmaWxlKQlcDQor
ewkJCQkJCQkJCVwNCisJcmV0dXJuIHNpbmdsZV9vcGVuKGZpbGUsIF9fbmFtZSAjIyBfc2hvdywg
aW5vZGUtPmlfcHJpdmF0ZSk7CVwNCit9CQkJCQkJCQkJXA0KKwkJCQkJCQkJCVwNCitzdGF0aWMg
Y29uc3Qgc3RydWN0IGZpbGVfb3BlcmF0aW9ucyBfX25hbWUgIyMgX2ZvcHMgPSB7CQkJXA0KKwku
b3duZXIJCT0gVEhJU19NT0RVTEUsCQkJCQlcDQorCS5vcGVuCQk9IF9fbmFtZSAjIyBfb3BlbiwJ
CQkJXA0KKwkucmVhZAkJPSBzZXFfcmVhZCwJCQkJCVwNCisJLmxsc2VlawkJPSBzZXFfbHNlZWss
CQkJCQlcDQorCS5yZWxlYXNlCT0gc2luZ2xlX3JlbGVhc2UsCQkJCVwNCit9DQorI2VuZGlmDQor
DQogc3RhdGljIGNvbnN0IHN0cnVjdCB0cmFjZV9wcmludF9mbGFncyBoaWZfbXNnX3ByaW50X21h
cFtdID0gew0KIAloaWZfbXNnX2xpc3QsDQogfTsNCkBAIC01NSw2ICs3NCwxMDcgQEAgY29uc3Qg
Y2hhciAqZ2V0X3JlZ19uYW1lKHVuc2lnbmVkIGxvbmcgaWQpDQogCXJldHVybiBnZXRfc3ltYm9s
KGlkLCB3ZnhfcmVnX3ByaW50X21hcCk7DQogfQ0KIA0KK3N0YXRpYyBpbnQgd2Z4X2NvdW50ZXJz
X3Nob3coc3RydWN0IHNlcV9maWxlICpzZXEsIHZvaWQgKnYpDQorew0KKwlpbnQgcmV0Ow0KKwlz
dHJ1Y3Qgd2Z4X2RldiAqd2RldiA9IHNlcS0+cHJpdmF0ZTsNCisJc3RydWN0IGhpZl9taWJfZXh0
ZW5kZWRfY291bnRfdGFibGUgY291bnRlcnM7DQorDQorCXJldCA9IGhpZl9nZXRfY291bnRlcnNf
dGFibGUod2RldiwgJmNvdW50ZXJzKTsNCisJaWYgKHJldCA8IDApDQorCQlyZXR1cm4gcmV0Ow0K
KwlpZiAocmV0ID4gMCkNCisJCXJldHVybiAtRUlPOw0KKw0KKyNkZWZpbmUgUFVUX0NPVU5URVIo
bmFtZSkgXA0KKwlzZXFfcHJpbnRmKHNlcSwgIiUyNHMgJWRcbiIsICNuYW1lICI6IiwgbGUzMl90
b19jcHUoY291bnRlcnMuY291bnRfIyNuYW1lKSkNCisNCisJUFVUX0NPVU5URVIodHhfcGFja2V0
cyk7DQorCVBVVF9DT1VOVEVSKHR4X211bHRpY2FzdF9mcmFtZXMpOw0KKwlQVVRfQ09VTlRFUih0
eF9mcmFtZXNfc3VjY2Vzcyk7DQorCVBVVF9DT1VOVEVSKHR4X2ZyYW1lX2ZhaWx1cmVzKTsNCisJ
UFVUX0NPVU5URVIodHhfZnJhbWVzX3JldHJpZWQpOw0KKwlQVVRfQ09VTlRFUih0eF9mcmFtZXNf
bXVsdGlfcmV0cmllZCk7DQorDQorCVBVVF9DT1VOVEVSKHJ0c19zdWNjZXNzKTsNCisJUFVUX0NP
VU5URVIocnRzX2ZhaWx1cmVzKTsNCisJUFVUX0NPVU5URVIoYWNrX2ZhaWx1cmVzKTsNCisNCisJ
UFVUX0NPVU5URVIocnhfcGFja2V0cyk7DQorCVBVVF9DT1VOVEVSKHJ4X2ZyYW1lc19zdWNjZXNz
KTsNCisJUFVUX0NPVU5URVIocnhfcGFja2V0X2Vycm9ycyk7DQorCVBVVF9DT1VOVEVSKHBsY3Bf
ZXJyb3JzKTsNCisJUFVUX0NPVU5URVIoZmNzX2Vycm9ycyk7DQorCVBVVF9DT1VOVEVSKHJ4X2Rl
Y3J5cHRpb25fZmFpbHVyZXMpOw0KKwlQVVRfQ09VTlRFUihyeF9taWNfZmFpbHVyZXMpOw0KKwlQ
VVRfQ09VTlRFUihyeF9ub19rZXlfZmFpbHVyZXMpOw0KKwlQVVRfQ09VTlRFUihyeF9mcmFtZV9k
dXBsaWNhdGVzKTsNCisJUFVUX0NPVU5URVIocnhfbXVsdGljYXN0X2ZyYW1lcyk7DQorCVBVVF9D
T1VOVEVSKHJ4X2NtYWNpY3ZfZXJyb3JzKTsNCisJUFVUX0NPVU5URVIocnhfY21hY19yZXBsYXlz
KTsNCisJUFVUX0NPVU5URVIocnhfbWdtdF9jY21wX3JlcGxheXMpOw0KKw0KKwlQVVRfQ09VTlRF
UihyeF9iZWFjb24pOw0KKwlQVVRfQ09VTlRFUihtaXNzX2JlYWNvbik7DQorDQorI3VuZGVmIFBV
VF9DT1VOVEVSDQorDQorCXJldHVybiAwOw0KK30NCitERUZJTkVfU0hPV19BVFRSSUJVVEUod2Z4
X2NvdW50ZXJzKTsNCisNCitzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IGNoYW5uZWxfbmFtZXNb
XSA9IHsNCisJWzBdID0gIjFNIiwNCisJWzFdID0gIjJNIiwNCisJWzJdID0gIjUuNU0iLA0KKwlb
M10gPSAiMTFNIiwNCisJLyogRW50cmllcyA0IGFuZCA1IGRvZXMgbm90IGV4aXN0ICovDQorCVs2
XSA9ICI2TSIsDQorCVs3XSA9ICI5TSIsDQorCVs4XSA9ICIxMk0iLA0KKwlbOV0gPSAiMThNIiwN
CisJWzEwXSA9ICIyNE0iLA0KKwlbMTFdID0gIjM2TSIsDQorCVsxMl0gPSAiNDhNIiwNCisJWzEz
XSA9ICI1NE0iLA0KKwlbMTRdID0gIk1DUzAiLA0KKwlbMTVdID0gIk1DUzEiLA0KKwlbMTZdID0g
Ik1DUzIiLA0KKwlbMTddID0gIk1DUzMiLA0KKwlbMThdID0gIk1DUzQiLA0KKwlbMTldID0gIk1D
UzUiLA0KKwlbMjBdID0gIk1DUzYiLA0KKwlbMjFdID0gIk1DUzciLA0KK307DQorDQorc3RhdGlj
IGludCB3Znhfcnhfc3RhdHNfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgdm9pZCAqdikNCit7
DQorCXN0cnVjdCB3ZnhfZGV2ICp3ZGV2ID0gc2VxLT5wcml2YXRlOw0KKwlzdHJ1Y3QgaGlmX3J4
X3N0YXRzICpzdCA9ICZ3ZGV2LT5yeF9zdGF0czsNCisJaW50IGk7DQorDQorCW11dGV4X2xvY2so
JndkZXYtPnJ4X3N0YXRzX2xvY2spOw0KKwlzZXFfcHJpbnRmKHNlcSwgIlRpbWVzdGFtcDogJWR1
c1xuIiwgc3QtPmRhdGUpOw0KKwlzZXFfcHJpbnRmKHNlcSwgIkxvdyBwb3dlciBjbG9jazogZnJl
cXVlbmN5ICV1SHosIGV4dGVybmFsICVzXG4iLA0KKwkJc3QtPnB3cl9jbGtfZnJlcSwNCisJCXN0
LT5pc19leHRfcHdyX2NsayA/ICJ5ZXMiIDogIm5vIik7DQorCXNlcV9wcmludGYoc2VxLCAiTnVt
LiBvZiBmcmFtZXM6ICVkLCBQRVIgKHgxMGU0KTogJWQsIFRocm91Z2hwdXQ6ICVkS2Jwcy9zXG4i
LA0KKwkJc3QtPm5iX3J4X2ZyYW1lLCBzdC0+cGVyX3RvdGFsLCBzdC0+dGhyb3VnaHB1dCk7DQor
CXNlcV9wdXRzKHNlcSwgIiAgICAgICBOdW0uIG9mICAgICAgUEVSICAgICBSU1NJICAgICAgU05S
ICAgICAgQ0ZPXG4iKTsNCisJc2VxX3B1dHMoc2VxLCAiICAgICAgICBmcmFtZXMgICh4MTBlNCkg
ICAgKGRCbSkgICAgIChkQikgICAgKGtIeilcbiIpOw0KKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlf
U0laRShjaGFubmVsX25hbWVzKTsgaSsrKSB7DQorCQlpZiAoY2hhbm5lbF9uYW1lc1tpXSkNCisJ
CQlzZXFfcHJpbnRmKHNlcSwgIiU1cyAlOGQgJThkICU4ZCAlOGQgJThkXG4iLA0KKwkJCQkgICBj
aGFubmVsX25hbWVzW2ldLCBzdC0+bmJfcnhfYnlfcmF0ZVtpXSwNCisJCQkJICAgc3QtPnBlcltp
XSwgc3QtPnJzc2lbaV0gLyAxMDAsDQorCQkJCSAgIHN0LT5zbnJbaV0gLyAxMDAsIHN0LT5jZm9b
aV0pOw0KKwl9DQorCW11dGV4X3VubG9jaygmd2Rldi0+cnhfc3RhdHNfbG9jayk7DQorDQorCXJl
dHVybiAwOw0KK30NCitERUZJTkVfU0hPV19BVFRSSUJVVEUod2Z4X3J4X3N0YXRzKTsNCisNCiBz
dGF0aWMgc3NpemVfdCB3Znhfc2VuZF9wZHNfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsIGNvbnN0
IGNoYXIgX191c2VyICp1c2VyX2J1ZiwNCiAJCQkgICAgIHNpemVfdCBjb3VudCwgbG9mZl90ICpw
cG9zKQ0KIHsNCkBAIC0xOTAsNiArMzEwLDggQEAgaW50IHdmeF9kZWJ1Z19pbml0KHN0cnVjdCB3
ZnhfZGV2ICp3ZGV2KQ0KIAlzdHJ1Y3QgZGVudHJ5ICpkOw0KIA0KIAlkID0gZGVidWdmc19jcmVh
dGVfZGlyKCJ3ZngiLCB3ZGV2LT5ody0+d2lwaHktPmRlYnVnZnNkaXIpOw0KKwlkZWJ1Z2ZzX2Ny
ZWF0ZV9maWxlKCJjb3VudGVycyIsIDA0NDQsIGQsIHdkZXYsICZ3ZnhfY291bnRlcnNfZm9wcyk7
DQorCWRlYnVnZnNfY3JlYXRlX2ZpbGUoInJ4X3N0YXRzIiwgMDQ0NCwgZCwgd2RldiwgJndmeF9y
eF9zdGF0c19mb3BzKTsNCiAJZGVidWdmc19jcmVhdGVfZmlsZSgic2VuZF9wZHMiLCAwMjAwLCBk
LCB3ZGV2LCAmd2Z4X3NlbmRfcGRzX2ZvcHMpOw0KIAlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJidXJu
X3Nsa19rZXkiLCAwMjAwLCBkLCB3ZGV2LCAmd2Z4X2J1cm5fc2xrX2tleV9mb3BzKTsNCiAJZGVi
dWdmc19jcmVhdGVfZmlsZSgic2VuZF9oaWZfbXNnIiwgMDYwMCwgZCwgd2RldiwgJndmeF9zZW5k
X2hpZl9tc2dfZm9wcyk7DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcngu
YyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMNCmluZGV4IDZiOTY4M2Q2OWEzZi4uYzkz
YmFlMWI2YWNmIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYw0KKysr
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYw0KQEAgLTk0LDEzICs5NCw5MyBAQCBzdGF0
aWMgaW50IGhpZl9rZXlzX2luZGljYXRpb24oc3RydWN0IHdmeF9kZXYgKndkZXYsIHN0cnVjdCBo
aWZfbXNnICpoaWYsIHZvaWQgKg0KIAlyZXR1cm4gMDsNCiB9DQogDQorc3RhdGljIGludCBoaWZf
am9pbl9jb21wbGV0ZV9pbmRpY2F0aW9uKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3QgaGlm
X21zZyAqaGlmLCB2b2lkICpidWYpDQorew0KKwlzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiA9IHdkZXZf
dG9fd3ZpZih3ZGV2LCBoaWYtPmludGVyZmFjZSk7DQorDQorCVdBUk5fT04oIXd2aWYpOw0KKwlk
ZXZfd2Fybih3ZGV2LT5kZXYsICJ1bmF0dGVuZGVkIEpvaW5Db21wbGV0ZUluZFxuIik7DQorDQor
CXJldHVybiAwOw0KK30NCisNCitzdGF0aWMgaW50IGhpZl9lcnJvcl9pbmRpY2F0aW9uKHN0cnVj
dCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3QgaGlmX21zZyAqaGlmLCB2b2lkICpidWYpDQorew0KKwlz
dHJ1Y3QgaGlmX2luZF9lcnJvciAqYm9keSA9IGJ1ZjsNCisJdTggKnBSb2xsYmFjayA9ICh1OCAq
KSBib2R5LT5kYXRhOw0KKwl1MzIgKnBTdGF0dXMgPSAodTMyICopIGJvZHktPmRhdGE7DQorDQor
CXN3aXRjaCAoYm9keS0+dHlwZSkgew0KKwljYXNlIEhJRl9FUlJPUl9GSVJNV0FSRV9ST0xMQkFD
SzoNCisJCWRldl9lcnIod2Rldi0+ZGV2LCAiYXN5bmNocm9ub3VzIGVycm9yOiBmaXJtd2FyZSBy
b2xsYmFjayBlcnJvciAlZFxuIiwgKnBSb2xsYmFjayk7DQorCQlicmVhazsNCisJY2FzZSBISUZf
RVJST1JfRklSTVdBUkVfREVCVUdfRU5BQkxFRDoNCisJCWRldl9lcnIod2Rldi0+ZGV2LCAiYXN5
bmNocm9ub3VzIGVycm9yOiBmaXJtd2FyZSBkZWJ1ZyBmZWF0dXJlIGVuYWJsZWRcbiIpOw0KKwkJ
YnJlYWs7DQorCWNhc2UgSElGX0VSUk9SX09VVERBVEVEX1NFU1NJT05fS0VZOg0KKwkJZGV2X2Vy
cih3ZGV2LT5kZXYsICJhc3luY2hyb25vdXMgZXJyb3I6IHNlY3VyZSBsaW5rIG91dGRhdGVkIGtl
eTogJSMuOHhcbiIsICpwU3RhdHVzKTsNCisJCWJyZWFrOw0KKwljYXNlIEhJRl9FUlJPUl9JTlZB
TElEX1NFU1NJT05fS0VZOg0KKwkJZGV2X2Vycih3ZGV2LT5kZXYsICJhc3luY2hyb25vdXMgZXJy
b3I6IGludmFsaWQgc2Vzc2lvbiBrZXlcbiIpOw0KKwkJYnJlYWs7DQorCWNhc2UgSElGX0VSUk9S
X09PUl9WT0xUQUdFOg0KKwkJZGV2X2Vycih3ZGV2LT5kZXYsICJhc3luY2hyb25vdXMgZXJyb3I6
IG91dC1vZi1yYW5nZSBvdmVydm9sdGFnZTogJSMuOHhcbiIsICpwU3RhdHVzKTsNCisJCWJyZWFr
Ow0KKwljYXNlIEhJRl9FUlJPUl9QRFNfVkVSU0lPTjoNCisJCWRldl9lcnIod2Rldi0+ZGV2LCAi
YXN5bmNocm9ub3VzIGVycm9yOiB3cm9uZyBQRFMgcGF5bG9hZCBvciB2ZXJzaW9uOiAlIy44eFxu
IiwgKnBTdGF0dXMpOw0KKwkJYnJlYWs7DQorCWRlZmF1bHQ6DQorCQlkZXZfZXJyKHdkZXYtPmRl
diwgImFzeW5jaHJvbm91cyBlcnJvcjogdW5rbm93biAoJWQpXG4iLCBib2R5LT50eXBlKTsNCisJ
CWJyZWFrOw0KKwl9DQorCXJldHVybiAwOw0KK30NCisNCitzdGF0aWMgaW50IGhpZl9nZW5lcmlj
X2luZGljYXRpb24oc3RydWN0IHdmeF9kZXYgKndkZXYsIHN0cnVjdCBoaWZfbXNnICpoaWYsIHZv
aWQgKmJ1ZikNCit7DQorCXN0cnVjdCBoaWZfaW5kX2dlbmVyaWMgKmJvZHkgPSBidWY7DQorDQor
CXN3aXRjaCAoYm9keS0+aW5kaWNhdGlvbl90eXBlKSB7DQorCWNhc2UgSElGX0dFTkVSSUNfSU5E
SUNBVElPTl9UWVBFX1JBVzoNCisJCXJldHVybiAwOw0KKwljYXNlIEhJRl9HRU5FUklDX0lORElD
QVRJT05fVFlQRV9TVFJJTkc6DQorCQlkZXZfaW5mbyh3ZGV2LT5kZXYsICJmaXJtd2FyZSBzYXlz
OiAlc1xuIiwgKGNoYXIgKikgYm9keS0+aW5kaWNhdGlvbl9kYXRhLnJhd19kYXRhKTsNCisJCXJl
dHVybiAwOw0KKwljYXNlIEhJRl9HRU5FUklDX0lORElDQVRJT05fVFlQRV9SWF9TVEFUUzoNCisJ
CW11dGV4X2xvY2soJndkZXYtPnJ4X3N0YXRzX2xvY2spOw0KKwkJLy8gT2xkZXIgZmlybXdhcmUg
c2VuZCBhIGdlbmVyaWMgaW5kaWNhdGlvbiBiZXNpZGUgUnhTdGF0cw0KKwkJaWYgKCF3ZnhfYXBp
X29sZGVyX3RoYW4od2RldiwgMSwgNCkpDQorCQkJZGV2X2luZm8od2Rldi0+ZGV2LCAiUnggdGVz
dCBvbmdvaW5nLiBUZW1wZXJhdHVyZTogJWTCsENcbiIsIGJvZHktPmluZGljYXRpb25fZGF0YS5y
eF9zdGF0cy5jdXJyZW50X3RlbXApOw0KKwkJbWVtY3B5KCZ3ZGV2LT5yeF9zdGF0cywgJmJvZHkt
PmluZGljYXRpb25fZGF0YS5yeF9zdGF0cywgc2l6ZW9mKHdkZXYtPnJ4X3N0YXRzKSk7DQorCQlt
dXRleF91bmxvY2soJndkZXYtPnJ4X3N0YXRzX2xvY2spOw0KKwkJcmV0dXJuIDA7DQorCWRlZmF1
bHQ6DQorCQlkZXZfZXJyKHdkZXYtPmRldiwgImdlbmVyaWNfaW5kaWNhdGlvbjogdW5rbm93biBp
bmRpY2F0aW9uIHR5cGU6ICUjLjh4XG4iLCBib2R5LT5pbmRpY2F0aW9uX3R5cGUpOw0KKwkJcmV0
dXJuIC1FSU87DQorCX0NCit9DQorDQorc3RhdGljIGludCBoaWZfZXhjZXB0aW9uX2luZGljYXRp
b24oc3RydWN0IHdmeF9kZXYgKndkZXYsIHN0cnVjdCBoaWZfbXNnICpoaWYsIHZvaWQgKmJ1ZikN
Cit7DQorCXNpemVfdCBsZW4gPSBoaWYtPmxlbiAtIDQ7IC8vIGRyb3AgaGVhZGVyDQorCWRldl9l
cnIod2Rldi0+ZGV2LCAiZmlybXdhcmUgZXhjZXB0aW9uXG4iKTsNCisJcHJpbnRfaGV4X2R1bXBf
Ynl0ZXMoIkR1bXA6ICIsIERVTVBfUFJFRklYX05PTkUsIGJ1ZiwgbGVuKTsNCisJd2Rldi0+Y2hp
cF9mcm96ZW4gPSAxOw0KKw0KKwlyZXR1cm4gLTE7DQorfQ0KKw0KIHN0YXRpYyBjb25zdCBzdHJ1
Y3Qgew0KIAlpbnQgbXNnX2lkOw0KIAlpbnQgKCpoYW5kbGVyKShzdHJ1Y3Qgd2Z4X2RldiAqd2Rl
diwgc3RydWN0IGhpZl9tc2cgKmhpZiwgdm9pZCAqYnVmKTsNCiB9IGhpZl9oYW5kbGVyc1tdID0g
ew0KIAl7IEhJRl9JTkRfSURfU1RBUlRVUCwgICAgICAgICAgICAgIGhpZl9zdGFydHVwX2luZGlj
YXRpb24gfSwNCiAJeyBISUZfSU5EX0lEX1dBS0VVUCwgICAgICAgICAgICAgICBoaWZfd2FrZXVw
X2luZGljYXRpb24gfSwNCisJeyBISUZfSU5EX0lEX0pPSU5fQ09NUExFVEUsICAgICAgICBoaWZf
am9pbl9jb21wbGV0ZV9pbmRpY2F0aW9uIH0sDQogCXsgSElGX0lORF9JRF9TTF9FWENIQU5HRV9Q
VUJfS0VZUywgaGlmX2tleXNfaW5kaWNhdGlvbiB9LA0KKwl7IEhJRl9JTkRfSURfR0VORVJJQywg
ICAgICAgICAgICAgIGhpZl9nZW5lcmljX2luZGljYXRpb24gfSwNCisJeyBISUZfSU5EX0lEX0VS
Uk9SLCAgICAgICAgICAgICAgICBoaWZfZXJyb3JfaW5kaWNhdGlvbiB9LA0KKwl7IEhJRl9JTkRf
SURfRVhDRVBUSU9OLCAgICAgICAgICAgIGhpZl9leGNlcHRpb25faW5kaWNhdGlvbiB9LA0KIH07
DQogDQogdm9pZCB3ZnhfaGFuZGxlX3J4KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3Qgc2tf
YnVmZiAqc2tiKQ0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9tYWluLmMNCmluZGV4IDViMDRlYTVmNDM1My4uMmU3MWY0NDZkNGQ0
IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMNCisrKyBiL2RyaXZlcnMv
c3RhZ2luZy93ZngvbWFpbi5jDQpAQCAtMjEyLDYgKzIxMiw3IEBAIHN0cnVjdCB3ZnhfZGV2ICp3
ZnhfaW5pdF9jb21tb24oc3RydWN0IGRldmljZSAqZGV2LA0KIAl3ZGV2LT5wZGF0YS5ncGlvX3dh
a2V1cCA9IHdmeF9nZXRfZ3BpbyhkZXYsIGdwaW9fd2FrZXVwLCAid2FrZXVwIik7DQogCXdmeF9m
aWxsX3NsX2tleShkZXYsICZ3ZGV2LT5wZGF0YSk7DQogDQorCW11dGV4X2luaXQoJndkZXYtPnJ4
X3N0YXRzX2xvY2spOw0KIAlpbml0X2NvbXBsZXRpb24oJndkZXYtPmZpcm13YXJlX3JlYWR5KTsN
CiAJd2Z4X2luaXRfaGlmX2NtZCgmd2Rldi0+aGlmX2NtZCk7DQogDQpAQCAtMjIwLDYgKzIyMSw3
IEBAIHN0cnVjdCB3ZnhfZGV2ICp3ZnhfaW5pdF9jb21tb24oc3RydWN0IGRldmljZSAqZGV2LA0K
IA0KIHZvaWQgd2Z4X2ZyZWVfY29tbW9uKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQ0KIHsNCisJbXV0
ZXhfZGVzdHJveSgmd2Rldi0+cnhfc3RhdHNfbG9jayk7DQogCWllZWU4MDIxMV9mcmVlX2h3KHdk
ZXYtPmh3KTsNCiB9DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaCBi
L2RyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmgNCmluZGV4IDI1MzdmYzk3YWYyNy4uNDgwNzFlMWM5
ODljIDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaA0KKysrIGIvZHJpdmVy
cy9zdGFnaW5nL3dmeC93ZnguaA0KQEAgLTQ0LDYgKzQ0LDkgQEAgc3RydWN0IHdmeF9kZXYgew0K
IAlpbnQJCQljaGlwX2Zyb3plbjsNCiANCiAJc3RydWN0IHdmeF9oaWZfY21kCWhpZl9jbWQ7DQor
DQorCXN0cnVjdCBoaWZfcnhfc3RhdHMJcnhfc3RhdHM7DQorCXN0cnVjdCBtdXRleAkJcnhfc3Rh
dHNfbG9jazsNCiB9Ow0KIA0KIHN0cnVjdCB3ZnhfdmlmIHsNCkBAIC01Miw0ICs1NSwxNyBAQCBz
dHJ1Y3Qgd2Z4X3ZpZiB7DQogCWludAkJCWlkOw0KIH07DQogDQorc3RhdGljIGlubGluZSBzdHJ1
Y3Qgd2Z4X3ZpZiAqd2Rldl90b193dmlmKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgdmlmX2lk
KQ0KK3sNCisJaWYgKHZpZl9pZCA+PSBBUlJBWV9TSVpFKHdkZXYtPnZpZikpIHsNCisJCWRldl9k
Ymcod2Rldi0+ZGV2LCAicmVxdWVzdGluZyBub24tZXhpc3RlbnQgdmlmOiAlZFxuIiwgdmlmX2lk
KTsNCisJCXJldHVybiBOVUxMOw0KKwl9DQorCWlmICghd2Rldi0+dmlmW3ZpZl9pZF0pIHsNCisJ
CWRldl9kYmcod2Rldi0+ZGV2LCAicmVxdWVzdGluZyBub24tYWxsb2NhdGVkIHZpZjogJWRcbiIs
IHZpZl9pZCk7DQorCQlyZXR1cm4gTlVMTDsNCisJfQ0KKwlyZXR1cm4gKHN0cnVjdCB3Znhfdmlm
ICopIHdkZXYtPnZpZlt2aWZfaWRdLT5kcnZfcHJpdjsNCit9DQorDQogI2VuZGlmIC8qIFdGWF9I
ICovDQotLSANCjIuMjAuMQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
