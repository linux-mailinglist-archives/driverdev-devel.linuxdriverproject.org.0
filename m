Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 432DA13C3D9
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:55:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E7A20842A4;
	Wed, 15 Jan 2020 13:55:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P4ibxm1hU02m; Wed, 15 Jan 2020 13:55:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D3065840B8;
	Wed, 15 Jan 2020 13:55:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 10F0E1BF573
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 021CE86499
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ZRw4mEYzgSU for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:54:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2059.outbound.protection.outlook.com [40.107.92.59])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 56873864A4
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:54:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k2VvN2ZMXMv2GpTv1VwYZWS0sHgcI8ko++GkLPB6EShnEtbU6Smit40ofHbatUTvY8SbZnTtSnMrOKwrJWb25lpgSw6grL7DBylq7CUErykp9g3Y1w3I2QYB+7o3ZVJMnquHBgXjssOlNw9SOzkgwtDThzn+VXrogO1xm8PHw0SGPfK7JyEKMlWpb7hCswUpX+LTXKQjd1TfwRqVI5evZ0cJy/zRf34mud5N47OMyBzFpY87tWu44fOGTP7oerCWZtZAufiH21P1yFSIbE80jXo7yeGigF89gEOpHaxg7bu60jWuKjsYMZh+mMTcbBIPEb39a9JrWLHrnFtybQ+mbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lh4Sgj/UN1E/Qd8hmHGGL7HIEuTRhUu+NasuAtyaxyw=;
 b=k7ZOh3a9fyRuZFZwujpu9jtQg+BVVe1H7oaazGUW02vJezfMVmpPRwcJDIBT49eaBTqr0fxvAvNt5+irLfES2/6S4r4pLFHjgkdQh34BAkxA00EqdqF1gspgHtyMB8cMu9pQnMzpNmAPR65/zrWFqJJOVLD+cP6T+1RlAIOh8xd7R9+SYRh27DEMmMTVYYI1aMvD5DVJVFmxm1xoiHk/t/LulXxakWYK6HaEtHYjDz0BT7C96PJEx3Pe4Mh5OnMYGsyinrFfE9KPOVwetuPcVJfHhpAdNm78cUqQtAydt9jaKN2HjOG33nWKUYsgt0Uzp8hnMHEcIaOnhFm0oKFvpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lh4Sgj/UN1E/Qd8hmHGGL7HIEuTRhUu+NasuAtyaxyw=;
 b=WYVIRL53YEcxyOeTLO5nQYEjhZA5OmdUD3z7DJT1oGzz5VkGDGzQ4oGKXawiaWWUKLB3cS6389bK+v4+4Lmvoou8I6R7mx9cCDUyyWCfjmDWemmN2bghqUq2vx5T1i7YHlYqz6nXyXl1eRGQhkz1Dmr5pmj/ueFJeGKd4XdxZws=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3661.namprd11.prod.outlook.com (20.178.252.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 15 Jan 2020 13:54:45 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:54:45 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:54:43 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 29/65] staging: wfx: simplify hif_join()
Thread-Topic: [PATCH v2 29/65] staging: wfx: simplify hif_join()
Thread-Index: AQHVy6tXquCrSDEORkeaA5ycct2Rrw==
Date: Wed, 15 Jan 2020 13:54:44 +0000
Message-ID: <20200115135338.14374-30-Jerome.Pouiller@silabs.com>
References: <20200115135338.14374-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20200115135338.14374-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20)
 To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.25.0
x-originating-ip: [2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a200b61c-5c96-4d7d-e1c7-08d799c27a1a
x-ms-traffictypediagnostic: MN2PR11MB3661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3661E88C58F211A122C6379093370@MN2PR11MB3661.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(136003)(346002)(366004)(199004)(189003)(8886007)(6486002)(316002)(54906003)(71200400001)(36756003)(6506007)(66476007)(66446008)(66946007)(110136005)(8676002)(81166006)(81156014)(478600001)(86362001)(2616005)(4326008)(66574012)(2906002)(107886003)(1076003)(16526019)(186003)(85202003)(5660300002)(6512007)(52116002)(64756008)(66556008)(85182001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3661;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F2LMhS+T2ONX6Xn89JBoFXGIxV3toVnamorFxhmBq1ieOfcsP4ATyjVgfozsSa7tFdVy4lVPIPN8VRFLyqJJKsmWkWfr9B20pFv5iujJzHcwxFrgxLR2Zal2lt7DaQ5Hpveqp9Ou15fSTdKNoPTWnKjeZ2qUeLG0TMpoPnCY1Rs3k92GETF+9faQ6YoqHPTepDEewSLvuP35nt7Tas1I7suGhBtI34re0Tekd47iNBakYJrnuVKXgZk7l/Px7iZAE23kktzPKyCGQmDuZbpPj44BA5oTwHv14ckrKnBBqXFFEJppk7dgy8oLl/xriK1Ux5ODeeuKOX1DGl7OKvlVBV7xNDrOw6fzcUxz/CQuYRBaSIBRqbqvyiEY1s+cSdJpAjXKiS74Ke9y0lZP3EgBvGxFAievz0bxL2KiQbZAFbc30kXtl04Ku3sJCm7on/Tu
Content-ID: <4EE34D735786754AACA3310B6DF3A509@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a200b61c-5c96-4d7d-e1c7-08d799c27a1a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:54:44.9310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UyuXiyIMcnyeAx2GXGhhjRAF5Xsc73il+duY3sYyfpE3Qk2mym0G/6ZJhJg9kONYmMiuPR+bRiRmyk0I7h7cYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3661
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHN0cnVjdHVyZSBoaWZfcmVxX2pvaW4gY29tZSBmcm9tIGhhcmR3YXJlIEFQSS4gSXQgaXMgbm90
IGludGVuZGVkCnRvIGJlIG1hbmlwdWxhdGVkIGluIHVwcGVyIGxheWVycyBvZiB0aGUgZHJpdmVy
LgoKSW4gYWRkLCBjdXJyZW50IGNvZGUgZm9yIGhpZl9qb2luKCkgaXMgdG9vIGR1bWIuIEl0IHNo
b3VsZCBwYWNrIGRhdGEKd2l0aCBoYXJkd2FyZSByZXByZXNlbnRhdGlvbiBpbnN0ZWFkIG9mIGxl
YXZpbmcgYWxsIHdvcmsgdG8gdGhlIGNhbGxlci4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBv
dWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl90eC5jIHwgMjUgKysrKysrKysrKysrKystLS0tLS0KIGRyaXZlcnMvc3RhZ2luZy93
ZngvaGlmX3R4LmggfCAgMyArKy0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgICAgfCA0NSAr
KysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIDMgZmlsZXMgY2hhbmdlZCwgMzAg
aW5zZXJ0aW9ucygrKSwgNDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFn
aW5nL3dmeC9oaWZfdHguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmMKaW5kZXggMzJl
ZWJhMmZjYTQ3Li4yNDI4MzYzMzcxZmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX3R4LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguYwpAQCAtMjg4LDE4ICsy
ODgsMjkgQEAgaW50IGhpZl9zdG9wX3NjYW4oc3RydWN0IHdmeF92aWYgKnd2aWYpCiAJcmV0dXJu
IHJldDsKIH0KIAotaW50IGhpZl9qb2luKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBjb25zdCBzdHJ1
Y3QgaGlmX3JlcV9qb2luICphcmcpCitpbnQgaGlmX2pvaW4oc3RydWN0IHdmeF92aWYgKnd2aWYs
IGNvbnN0IHN0cnVjdCBpZWVlODAyMTFfYnNzX2NvbmYgKmNvbmYsCisJICAgICBjb25zdCBzdHJ1
Y3QgaWVlZTgwMjExX2NoYW5uZWwgKmNoYW5uZWwsIGNvbnN0IHU4ICpzc2lkaWUpCiB7CiAJaW50
IHJldDsKIAlzdHJ1Y3QgaGlmX21zZyAqaGlmOwogCXN0cnVjdCBoaWZfcmVxX2pvaW4gKmJvZHkg
PSB3ZnhfYWxsb2NfaGlmKHNpemVvZigqYm9keSksICZoaWYpOwogCi0JbWVtY3B5KGJvZHksIGFy
Zywgc2l6ZW9mKHN0cnVjdCBoaWZfcmVxX2pvaW4pKTsKLQljcHVfdG9fbGUxNnMoJmJvZHktPmNo
YW5uZWxfbnVtYmVyKTsKLQljcHVfdG9fbGUxNnMoJmJvZHktPmF0aW1fd2luZG93KTsKLQljcHVf
dG9fbGUzMnMoJmJvZHktPnNzaWRfbGVuZ3RoKTsKLQljcHVfdG9fbGUzMnMoJmJvZHktPmJlYWNv
bl9pbnRlcnZhbCk7Ci0JY3B1X3RvX2xlMzJzKCZib2R5LT5iYXNpY19yYXRlX3NldCk7CisJV0FS
Tl9PTighY29uZi0+YmFzaWNfcmF0ZXMpOworCWJvZHktPmluZnJhc3RydWN0dXJlX2Jzc19tb2Rl
ID0gIWNvbmYtPmlic3Nfam9pbmVkOworCWJvZHktPnNob3J0X3ByZWFtYmxlID0gY29uZi0+dXNl
X3Nob3J0X3ByZWFtYmxlOworCWlmIChjaGFubmVsICYmIGNoYW5uZWwtPmZsYWdzICYgSUVFRTgw
MjExX0NIQU5fTk9fSVIpCisJCWJvZHktPnByb2JlX2Zvcl9qb2luID0gMDsKKwllbHNlCisJCWJv
ZHktPnByb2JlX2Zvcl9qb2luID0gMTsKKwlib2R5LT5jaGFubmVsX251bWJlciA9IGNwdV90b19s
ZTE2KGNoYW5uZWwtPmh3X3ZhbHVlKTsKKwlib2R5LT5iZWFjb25faW50ZXJ2YWwgPSBjcHVfdG9f
bGUzMihjb25mLT5iZWFjb25faW50KTsKKwlib2R5LT5iYXNpY19yYXRlX3NldCA9CisJCWNwdV90
b19sZTMyKHdmeF9yYXRlX21hc2tfdG9faHcod3ZpZi0+d2RldiwgY29uZi0+YmFzaWNfcmF0ZXMp
KTsKKwltZW1jcHkoYm9keS0+YnNzaWQsIGNvbmYtPmJzc2lkLCBzaXplb2YoYm9keS0+YnNzaWQp
KTsKKwlpZiAoIWNvbmYtPmlic3Nfam9pbmVkICYmIHNzaWRpZSkgeworCQlib2R5LT5zc2lkX2xl
bmd0aCA9IGNwdV90b19sZTMyKHNzaWRpZVsxXSk7CisJCW1lbWNweShib2R5LT5zc2lkLCAmc3Np
ZGllWzJdLCBzc2lkaWVbMV0pOworCX0KIAl3ZnhfZmlsbF9oZWFkZXIoaGlmLCB3dmlmLT5pZCwg
SElGX1JFUV9JRF9KT0lOLCBzaXplb2YoKmJvZHkpKTsKIAlyZXQgPSB3ZnhfY21kX3NlbmQod3Zp
Zi0+d2RldiwgaGlmLCBOVUxMLCAwLCBmYWxzZSk7CiAJa2ZyZWUoaGlmKTsKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90
eC5oCmluZGV4IDkyNGI4ODljYWQwYS4uMjA5NzdlNDYxNzE4IDEwMDY0NAotLS0gYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2hpZl90eC5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmgK
QEAgLTQ1LDcgKzQ1LDggQEAgaW50IGhpZl93cml0ZV9taWIoc3RydWN0IHdmeF9kZXYgKndkZXYs
IGludCB2aWZfaWQsIHUxNiBtaWJfaWQsCiBpbnQgaGlmX3NjYW4oc3RydWN0IHdmeF92aWYgKnd2
aWYsIHN0cnVjdCBjZmc4MDIxMV9zY2FuX3JlcXVlc3QgKnJlcTgwMjExLAogCSAgICAgaW50IGNo
YW5fc3RhcnQsIGludCBjaGFuX251bSk7CiBpbnQgaGlmX3N0b3Bfc2NhbihzdHJ1Y3Qgd2Z4X3Zp
ZiAqd3ZpZik7Ci1pbnQgaGlmX2pvaW4oc3RydWN0IHdmeF92aWYgKnd2aWYsIGNvbnN0IHN0cnVj
dCBoaWZfcmVxX2pvaW4gKmFyZyk7CitpbnQgaGlmX2pvaW4oc3RydWN0IHdmeF92aWYgKnd2aWYs
IGNvbnN0IHN0cnVjdCBpZWVlODAyMTFfYnNzX2NvbmYgKmNvbmYsCisJICAgICBjb25zdCBzdHJ1
Y3QgaWVlZTgwMjExX2NoYW5uZWwgKmNoYW5uZWwsIGNvbnN0IHU4ICpzc2lkaWUpOwogaW50IGhp
Zl9zZXRfcG0oc3RydWN0IHdmeF92aWYgKnd2aWYsIGJvb2wgcHMsIGludCBkeW5hbWljX3BzX3Rp
bWVvdXQpOwogaW50IGhpZl9zZXRfYnNzX3BhcmFtcyhzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKIAkJ
ICAgICAgIGNvbnN0IHN0cnVjdCBoaWZfcmVxX3NldF9ic3NfcGFyYW1zICphcmcpOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3Rh
LmMKaW5kZXggMzk1YTI4MjM0NmIxLi4zMGM2MmUzYjM3MTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
c3RhZ2luZy93Zngvc3RhLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtNTEy
LDMyICs1MTIsMTkgQEAgc3RhdGljIHZvaWQgd2Z4X3NldF9tZnAoc3RydWN0IHdmeF92aWYgKnd2
aWYsCiAKIHN0YXRpYyB2b2lkIHdmeF9kb19qb2luKHN0cnVjdCB3ZnhfdmlmICp3dmlmKQogewot
CWNvbnN0IHU4ICpic3NpZDsKKwlpbnQgcmV0OworCWNvbnN0IHU4ICpzc2lkaWU7CiAJc3RydWN0
IGllZWU4MDIxMV9ic3NfY29uZiAqY29uZiA9ICZ3dmlmLT52aWYtPmJzc19jb25mOwogCXN0cnVj
dCBjZmc4MDIxMV9ic3MgKmJzcyA9IE5VTEw7Ci0Jc3RydWN0IGhpZl9yZXFfam9pbiBqb2luID0g
ewotCQkuaW5mcmFzdHJ1Y3R1cmVfYnNzX21vZGUgPSAhY29uZi0+aWJzc19qb2luZWQsCi0JCS5z
aG9ydF9wcmVhbWJsZSA9IGNvbmYtPnVzZV9zaG9ydF9wcmVhbWJsZSwKLQkJLnByb2JlX2Zvcl9q
b2luID0gMSwKLQkJLmF0aW1fd2luZG93ID0gMCwKLQkJLmJhc2ljX3JhdGVfc2V0ID0gd2Z4X3Jh
dGVfbWFza190b19odyh3dmlmLT53ZGV2LAotCQkJCQkJICAgICAgY29uZi0+YmFzaWNfcmF0ZXMp
LAotCX07CiAKIAl3ZnhfdHhfbG9ja19mbHVzaCh3dmlmLT53ZGV2KTsKIAotCWlmICh3dmlmLT5j
aGFubmVsLT5mbGFncyAmIElFRUU4MDIxMV9DSEFOX05PX0lSKQotCQlqb2luLnByb2JlX2Zvcl9q
b2luID0gMDsKLQogCWlmICh3dmlmLT5zdGF0ZSkKIAkJd2Z4X2RvX3Vuam9pbih3dmlmKTsKIAot
CWJzc2lkID0gd3ZpZi0+dmlmLT5ic3NfY29uZi5ic3NpZDsKLQogCWJzcyA9IGNmZzgwMjExX2dl
dF9ic3Mod3ZpZi0+d2Rldi0+aHctPndpcGh5LCB3dmlmLT5jaGFubmVsLAotCQkJICAgICAgIGJz
c2lkLCBOVUxMLCAwLAorCQkJICAgICAgIGNvbmYtPmJzc2lkLCBOVUxMLCAwLAogCQkJICAgICAg
IElFRUU4MDIxMV9CU1NfVFlQRV9BTlksIElFRUU4MDIxMV9QUklWQUNZX0FOWSk7Ci0KIAlpZiAo
IWJzcyAmJiAhY29uZi0+aWJzc19qb2luZWQpIHsKIAkJd2Z4X3R4X3VubG9jayh3dmlmLT53ZGV2
KTsKIAkJcmV0dXJuOwpAQCAtNTQ1LDI5ICs1MzIsMTUgQEAgc3RhdGljIHZvaWQgd2Z4X2RvX2pv
aW4oc3RydWN0IHdmeF92aWYgKnd2aWYpCiAKIAltdXRleF9sb2NrKCZ3dmlmLT53ZGV2LT5jb25m
X211dGV4KTsKIAotCS8qIFNhbml0eSBjaGVjayBiYXNpYyByYXRlcyAqLwotCWlmICgham9pbi5i
YXNpY19yYXRlX3NldCkKLQkJam9pbi5iYXNpY19yYXRlX3NldCA9IDc7Ci0KIAkvKiBTYW5pdHkg
Y2hlY2sgYmVhY29uIGludGVydmFsICovCiAJaWYgKCF3dmlmLT5iZWFjb25faW50KQogCQl3dmlm
LT5iZWFjb25faW50ID0gMTsKIAotCWpvaW4uYmVhY29uX2ludGVydmFsID0gd3ZpZi0+YmVhY29u
X2ludDsKLQlqb2luLmNoYW5uZWxfbnVtYmVyID0gd3ZpZi0+Y2hhbm5lbC0+aHdfdmFsdWU7Ci0J
bWVtY3B5KGpvaW4uYnNzaWQsIGJzc2lkLCBzaXplb2Yoam9pbi5ic3NpZCkpOwotCi0JaWYgKCFj
b25mLT5pYnNzX2pvaW5lZCkgewotCQljb25zdCB1OCAqc3NpZGllOwotCi0JCXJjdV9yZWFkX2xv
Y2soKTsKKwlyY3VfcmVhZF9sb2NrKCk7CisJaWYgKCFjb25mLT5pYnNzX2pvaW5lZCkKIAkJc3Np
ZGllID0gaWVlZTgwMjExX2Jzc19nZXRfaWUoYnNzLCBXTEFOX0VJRF9TU0lEKTsKLQkJaWYgKHNz
aWRpZSkgewotCQkJam9pbi5zc2lkX2xlbmd0aCA9IHNzaWRpZVsxXTsKLQkJCW1lbWNweShqb2lu
LnNzaWQsICZzc2lkaWVbMl0sIGpvaW4uc3NpZF9sZW5ndGgpOwotCQl9Ci0JCXJjdV9yZWFkX3Vu
bG9jaygpOwotCX0KKwllbHNlCisJCXNzaWRpZSA9IE5VTEw7CiAKIAl3ZnhfdHhfZmx1c2god3Zp
Zi0+d2Rldik7CiAKQEAgLTU3OCw3ICs1NTEsOSBAQCBzdGF0aWMgdm9pZCB3ZnhfZG9fam9pbihz
dHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAogCS8qIFBlcmZvcm0gYWN0dWFsIGpvaW4gKi8KIAl3dmlm
LT53ZGV2LT50eF9idXJzdF9pZHggPSAtMTsKLQlpZiAoaGlmX2pvaW4od3ZpZiwgJmpvaW4pKSB7
CisJcmV0ID0gaGlmX2pvaW4od3ZpZiwgY29uZiwgd3ZpZi0+Y2hhbm5lbCwgc3NpZGllKTsKKwly
Y3VfcmVhZF91bmxvY2soKTsKKwlpZiAocmV0KSB7CiAJCWllZWU4MDIxMV9jb25uZWN0aW9uX2xv
c3Mod3ZpZi0+dmlmKTsKIAkJd3ZpZi0+am9pbl9jb21wbGV0ZV9zdGF0dXMgPSAtMTsKIAkJLyog
VHggbG9jayBzdGlsbCBoZWxkLCB1bmpvaW4gd2lsbCBjbGVhciBpdC4gKi8KLS0gCjIuMjUuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
