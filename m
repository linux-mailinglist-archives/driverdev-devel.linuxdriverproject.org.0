Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DDB123149
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:14:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29D478602D;
	Tue, 17 Dec 2019 16:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4OYdhReK0D9m; Tue, 17 Dec 2019 16:14:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD0B085F67;
	Tue, 17 Dec 2019 16:14:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDD5A1BF2B3
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DAB0885F54
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fxK7u63ofzWN for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:14:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770055.outbound.protection.outlook.com [40.107.77.55])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5775D85F43
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:14:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PX1F9Mf3WovbK2b5f4UKgPw4FFyYDx/2Xs15uJlspuIkXwN/q9JZ6rGPbXSYSiVsS0oUzaxPlI9fqRDzt7t8t7mf+slsagL4S3mSlnbpAFG+/jC7aZvq8roYz31oJ8I119gZRwSDLMmyF/BnFxLyFj2bNUGIC9CGmtwSMDCpAGnCWULiMFu1RO/pQDXGAWntwi0ZOWA6VSe/8xX+ByFJLXRsij1dazFgQxUIhIxS2fAuxKAbpU3xWdo0DWU6zQwQmcUOr9L8doc+nHRQgtm7zxiZB1B+uHqyhJ94gsVGwsKsGRkyN6OrWpQ1NIZf2FczgvrkKQ/F7MrdI5zsJ/MH2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6FKLXPwFiAaxz9IjURM8K6izCl2qp7MySkfX7eEdZc4=;
 b=joyrZuK9AfufqvFl0RNXTcvK/eq5wh1PqL51K5zjaqeFJo6bjcYKXn/MQ1FP8I8A61IOQkYfk8En7MZN4S961oqJ+IySMK9Sd3dWrALi3AFb2sQD4uKsM626IelKiCHMkMLALvddJ0jsDg+VpSaQfjo5PDUaPR9cCCKp4Q+xvdrFHniRfOeumRNDonXBh9Zxv9euvQ98tCsNNy18rjBdOpeStvZm00x4L1l62+I9PAqZGy3gG1B4vKr8jhEud5Ll9nduZl4Eq9jN3vertUchcQp4P6U533ZDOKGdkSKYMZo7l3eQL998j7t9BWbhL+eZpI+rIQF/myLIfx7reh/0Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6FKLXPwFiAaxz9IjURM8K6izCl2qp7MySkfX7eEdZc4=;
 b=kdrbXaZoIlO+kgfywXp6LpFTCZCthhKIT0MRNtGAujpcroU6ogyrIpIN4+sLcPEdth9SzdWEuIw3UGZAwPT9YC3K7V7SK2wTsD9L01xprYU6RuGir/D+Bqqf7UtQuV7FgwbtFyEzPjpmQa0nurO+gM+cgVL/RFOChl2G0WNQq+E=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.254.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Tue, 17 Dec 2019 16:14:29 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:14:29 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 02/55] staging: wfx: fix case of lack of tx_retry_policies
Thread-Topic: [PATCH v2 02/55] staging: wfx: fix case of lack of
 tx_retry_policies
Thread-Index: AQHVtPUPAJFfhQ1HJkic9pTjXp8ciQ==
Date: Tue, 17 Dec 2019 16:14:29 +0000
Message-ID: <20191217161318.31402-3-Jerome.Pouiller@silabs.com>
References: <20191217161318.31402-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20191217161318.31402-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0174.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::18) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.0
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 402f5594-1a37-4007-8702-08d7830c3187
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB36781F4646A5BFE3412B915893500@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39840400004)(366004)(136003)(199004)(189003)(6512007)(66574012)(1076003)(478600001)(86362001)(8936002)(110136005)(316002)(2616005)(26005)(6506007)(5660300002)(36756003)(6486002)(66946007)(66476007)(66556008)(64756008)(66446008)(71200400001)(52116002)(85182001)(81166006)(81156014)(8676002)(54906003)(107886003)(2906002)(4326008)(186003)(85202003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zHmWdBnQlHDMvYMakg/1VT/GcqVZvCmgxF0Ag33SRmd+QDXWX69jlTLbegvWctaPLxSISVhuzjGvM8wi80/uMaT79lKYjRM5teV/rcHhzXTGKhk6KBzv0mu6jgSYiaql56m4U1VOBVdQhOvfTJKqHPSck0X3hlSzvvbtzOc2Z0qZInWoaO5qsvcTvx3jzlBhTsR57z93xHl7z6UibovnqQ+qCZan2+or2SA9Wwtgyr+BwfGjNKcpfx3EFO6Wf93uDFUT/p1L27wwniTSlIyCPzOc6CUJ8g5scI1HyfNvqJeNTRsDgtOneiEF0DWDeXH9OzvNmOM1I6PnaiOp198EukwFUDp5DDe2p2CeZPwPPP1+WpVUCqzjIGa0hlLJU+fs+O9qsJkyMdjr07e4DihZiOaEjgCWgIkVGxHHknN7t7jDa1lZxs80jlylYODC2LT7
Content-ID: <B304E1A3D8E26242B76AB5B0F04B6DC8@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 402f5594-1a37-4007-8702-08d7830c3187
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:14:29.1925 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1e9LAFymy5wKnpAlb8BUcuK5KSh4QdrnRrnobfSNQIeppzH5i7hDw5sT/D04Sl6rrljBm+YLpckoQ0qvooWGpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3678
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSW4g
c29tZSByYXJlIGNhc2VzLCBkcml2ZXIgbWF5IG5vdCBoYXZlIGFueSBhdmFpbGFibGUgdHhfcmV0
cnlfcG9saWNpZXMuCkluIHRoaXMgY2FzZSwgdGhlIGRyaXZlciBhc2tzIHRvIG1hYzgwMjExIHRv
IHN0b3Agc2VuZGluZyBkYXRhLiBIb3dldmVyLAppdCBzZWVtcyB0aGF0IGEgcmFjZSBpcyBwb3Nz
aWJsZSBhbmQgYSBmZXcgZnJhbWVzIGNhbiBiZSBzZW50IHRvIHRoZQpkcml2ZXIuIEluIHRoaXMg
Y2FzZSwgZHJpdmVyIGNhbid0IHdhaXQgZm9yIGZyZWUgdHhfcmV0cnlfcG9saWNpZXMgc2luY2UK
d2Z4X3R4KCkgbXVzdCBiZSBhdG9taWMuIFNvLCB0aGlzIHBhdGNoIGZpeCB0aGlzIGNhc2UgYnkg
c2VuZGluZyB0aGVzZQpmcmFtZXMgd2l0aCB0aGUgc3BlY2lhbCBwb2xpY3kgbnVtYmVyIDE1LgoK
VGhlIGZpcm13YXJlIG5vcm1hbGx5IHVzZSBwb2xpY3kgMTUgdG8gc2VuZCBpbnRlcm5hbCBmcmFt
ZXMgKFBTLXBvbGwsCmJlYWNvbnMsIGV0Yy4uLikuIFNvLCBpdCBpcyBub3QgYSBzbyBiYWQgZmFs
bGJhY2suCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVy
QHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgfCA3ICsrKysr
LS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgYi9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2RhdGFfdHguYwppbmRleCAwMmYwMDFkYWI2MmIuLmRmM2FjYTAzYjUwYiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dm
eC9kYXRhX3R4LmMKQEAgLTE2LDcgKzE2LDcgQEAKICNpbmNsdWRlICJ0cmFjZXMuaCIKICNpbmNs
dWRlICJoaWZfdHhfbWliLmgiCiAKLSNkZWZpbmUgV0ZYX0lOVkFMSURfUkFURV9JRCAoMHhGRikK
KyNkZWZpbmUgV0ZYX0lOVkFMSURfUkFURV9JRCAgICAxNQogI2RlZmluZSBXRlhfTElOS19JRF9O
T19BU1NPQyAgIDE1CiAjZGVmaW5lIFdGWF9MSU5LX0lEX0dDX1RJTUVPVVQgKCh1bnNpZ25lZCBs
b25nKSgxMCAqIEhaKSkKIApAQCAtMjAyLDYgKzIwMiw4IEBAIHN0YXRpYyB2b2lkIHdmeF90eF9w
b2xpY3lfcHV0KHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgaWR4KQogCWludCB1c2FnZSwgbG9j
a2VkOwogCXN0cnVjdCB0eF9wb2xpY3lfY2FjaGUgKmNhY2hlID0gJnd2aWYtPnR4X3BvbGljeV9j
YWNoZTsKIAorCWlmIChpZHggPT0gV0ZYX0lOVkFMSURfUkFURV9JRCkKKwkJcmV0dXJuOwogCXNw
aW5fbG9ja19iaCgmY2FjaGUtPmxvY2spOwogCWxvY2tlZCA9IGxpc3RfZW1wdHkoJmNhY2hlLT5m
cmVlKTsKIAl1c2FnZSA9IHdmeF90eF9wb2xpY3lfcmVsZWFzZShjYWNoZSwgJmNhY2hlLT5jYWNo
ZVtpZHhdKTsKQEAgLTU0OSw3ICs1NTEsOCBAQCBzdGF0aWMgdTggd2Z4X3R4X2dldF9yYXRlX2lk
KHN0cnVjdCB3ZnhfdmlmICp3dmlmLAogCiAJcmF0ZV9pZCA9IHdmeF90eF9wb2xpY3lfZ2V0KHd2
aWYsCiAJCQkJICAgIHR4X2luZm8tPmRyaXZlcl9yYXRlcywgJnR4X3BvbGljeV9yZW5ldyk7Ci0J
V0FSTihyYXRlX2lkID09IFdGWF9JTlZBTElEX1JBVEVfSUQsICJ1bmFibGUgdG8gZ2V0IGEgdmFs
aWQgVHggcG9saWN5Iik7CisJaWYgKHJhdGVfaWQgPT0gV0ZYX0lOVkFMSURfUkFURV9JRCkKKwkJ
ZGV2X3dhcm4od3ZpZi0+d2Rldi0+ZGV2LCAidW5hYmxlIHRvIGdldCBhIHZhbGlkIFR4IHBvbGlj
eSIpOwogCiAJaWYgKHR4X3BvbGljeV9yZW5ldykgewogCQkvKiBGSVhNRTogSXQncyBub3Qgc28g
b3B0aW1hbCB0byBzdG9wIFRYIHF1ZXVlcyBldmVyeSBub3cgYW5kCi0tIAoyLjI0LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
