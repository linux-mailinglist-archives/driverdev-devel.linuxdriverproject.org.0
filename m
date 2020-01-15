Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F115E13BF6E
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:13:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9C13285F8A;
	Wed, 15 Jan 2020 12:13:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hu5WvvM1kU4R; Wed, 15 Jan 2020 12:13:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DB5985F5E;
	Wed, 15 Jan 2020 12:13:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 89FFE1BF5A0
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86CE9836CE
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7W717hcQkn1n for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:13:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2063.outbound.protection.outlook.com [40.107.92.63])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9E86483F06
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 12:13:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kFT8VjBlFUcb+O1keJWFGa7gntfpQQNHsKkaQVYCfv5By1hzdvRG31alPQqIhQx2k7JylFj8e0wfe46Ylcyp4xOUizGWVWX6KmIIQJa/JNRaqLjf6WXC3OO4JBmE9mUrL0rlQwwQOsJhBHuYLW/eVO9qR5pVP3wYNCUo/TpIhB4iFpWZWTuj/F60ipi+HR/783NQAaUTaXojN2UyowdBuURs2ALc3hBdy4D2vjqE/uOyUtv7gvI9ytMynMa8qb1mZwXdcLitRgYSGC+cdzN1QKQkn+aZhLTvi+NZ/boUQcbALIa7vBuI6qp1tRmLG4/ceMIF0TfxGK8xaBiZbSWN1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NyYErm/+SiSh/FDrosP5g9wl3yLmrIQ5MCjg3/oJYyg=;
 b=MiwEdcxj8FoQGgkBbbXK9qA91bvik9jJt5LQV3NwI70smlScr3o/mKkIVRy3YnlDN518lFGcr0hEDSyX6Yu6f0RpZTHiOZ0qRGi3XtwzSRmTMD+1dX1i3AHQuEfgtjpit4fFbzRUofmr+UQIIXUcHzF0rD7pFuXcPxUsc5htOom4Pm9wuEKXqV7MgTinlHrEfIRD0iv2Q9HI1xZ6U+2DykGEys49gLiu4TO9IuE/XnLpbAoIuJDZprPyNTvZ6V8nTkeXh4gObhj5KzH98oWugz8vI8Hd0ytEZeGyvqGxB6JgOcWebiE42Sa+tMxKCvu6ExVqiugMiR66BoOkgcEBNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NyYErm/+SiSh/FDrosP5g9wl3yLmrIQ5MCjg3/oJYyg=;
 b=Sn38m4k7s6Bsd24oxsf2i6A3hpQm+BGzIgCgSN3l/Q1LRB2DDZLmCPEsciuEg5IpUHdAdP19ZDopEIwB2suVwsXIaUAjiGQcyxO1APsMHtdhk2fFesJx7vVxNZl0UnZ37t5YE8DhQUdXwO8qK7yUhIGwYwyr/FirgVTB6zpvFwk=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4096.namprd11.prod.outlook.com (20.179.150.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Wed, 15 Jan 2020 12:13:23 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 12:13:23 +0000
Received: from pc-42.silabs.com (37.71.187.125) by
 PR2PR09CA0009.eurprd09.prod.outlook.com (2603:10a6:101:16::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 12:12:55 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 36/65] staging: wfx: simplify hif_set_config_data_filter()
Thread-Topic: [PATCH 36/65] staging: wfx: simplify hif_set_config_data_filter()
Thread-Index: AQHVy50fkq83Hb3UakCQCbvjcwuX4g==
Date: Wed, 15 Jan 2020 12:12:57 +0000
Message-ID: <20200115121041.10863-37-Jerome.Pouiller@silabs.com>
References: <20200115121041.10863-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20200115121041.10863-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2PR09CA0009.eurprd09.prod.outlook.com
 (2603:10a6:101:16::21) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.25.0
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 565ea02c-eec3-4fcd-e54e-08d799b4418f
x-ms-traffictypediagnostic: MN2PR11MB4096:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4096B56CBDB70F5A6C78B5B493370@MN2PR11MB4096.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(366004)(376002)(136003)(199004)(189003)(85202003)(66946007)(66446008)(66476007)(2906002)(107886003)(66556008)(1076003)(66574012)(64756008)(5660300002)(8936002)(6486002)(186003)(26005)(8676002)(316002)(81156014)(36756003)(52116002)(2616005)(7696005)(478600001)(16526019)(956004)(54906003)(110136005)(86362001)(71200400001)(85182001)(4326008)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4096;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mGioZBYYrhexDzbuwXFUqxH6M7nNmCCevlZRMU+INUGK+LyIGhiNfNBOsquNGf4kYQ0UwEhjcvB/pUikRukjZkpvmLai444yyhEPqLxmI2P7yzhaY6SqxNEBaCoNcN6BVTTm8RNsAtoZin2NULIGqMpt0BY4UiLRJdVygia2KTzj0CqRQzxUjffq48ldF18JkQ4j7qluoSdunB/yAjBql3JXhtNUZw3Z7ROhZm3s14GCLwywQ9HXNEMicxwD2X+mQ6Hbqr8g3Aa5r/jDwrP265hOY4vW5QwLuxCmGbUuqB3WzErkeQhO8VDD4jJAyI8dyRM91lACnlnxSYkKqA8454Fr62P+JCcmlRYQUVA/jBWF/FhABlmMwb+o500QJOhSZrdZe/RFNh3iXuLrUTnWvJca2y94+qZxLxVoUTup+jMVOOuFhimKGqdLoxEKpLS8
Content-ID: <9A3D5CCB791FDF4DA6955F6403DA68A0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 565ea02c-eec3-4fcd-e54e-08d799b4418f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 12:12:57.1075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZA71KEhminT6buNxRyPBHEZhUAGF5xphcohECBvS0p1M8PjBvX3tSFn0NJ+z7zzBxO0cRfqdDrz22MZ9Tolm5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4096
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
IHN0cnVjdHVyZSBoaWZfbWliX2NvbmZpZ19kYXRhX2ZpbHRlciBjb21lIGZyb20gaGFyZHdhcmUK
QVBJLiBJdCBpcyBub3QgaW50ZW5kZWQgdG8gYmUgbWFuaXB1bGF0ZWQgaW4gdXBwZXIgbGF5ZXJz
IG9mIHRoZSBkcml2ZXIuCgpJbiBhZGQsIGN1cnJlbnQgY29kZSBmb3IgaGlmX3NldF9jb25maWdf
ZGF0YV9maWx0ZXIoKSBpcyB0b28gZHVtYi4gSXQKc2hvdWxkIHBhY2sgZGF0YSB3aXRoIGhhcmR3
YXJlIHJlcHJlc2VudGF0aW9uIGluc3RlYWQgb2YgbGVhdmluZyBhbGwKd29yayB0byB0aGUgY2Fs
bGVyLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBz
aWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5oIHwgMTQgKysr
KysrKysrKystLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgICAgICAgIHwgIDggKystLS0t
LS0KIDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuaCBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvaGlmX3R4X21pYi5oCmluZGV4IDkwNDc0YjFjNWVjMy4uY2NlYTNmMTVhMzRkIDEw
MDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuaAorKysgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuaApAQCAtMjY1LDExICsyNjUsMTkgQEAgc3RhdGljIGlu
bGluZSBpbnQgaGlmX3NldF91Y19tY19iY19jb25kaXRpb24oc3RydWN0IHdmeF92aWYgKnd2aWYs
CiAJCQkgICAgICZ2YWwsIHNpemVvZih2YWwpKTsKIH0KIAotc3RhdGljIGlubGluZSBpbnQgaGlm
X3NldF9jb25maWdfZGF0YV9maWx0ZXIoc3RydWN0IHdmeF92aWYgKnd2aWYsCi0JCQkJCSAgICAg
c3RydWN0IGhpZl9taWJfY29uZmlnX2RhdGFfZmlsdGVyICphcmcpCitzdGF0aWMgaW5saW5lIGlu
dCBoaWZfc2V0X2NvbmZpZ19kYXRhX2ZpbHRlcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgYm9vbCBl
bmFibGUsCisJCQkJCSAgICAgaW50IGlkeCwgaW50IG1hY19maWx0ZXJzLAorCQkJCQkgICAgIGlu
dCBmcmFtZXNfdHlwZXNfZmlsdGVycykKIHsKKwlzdHJ1Y3QgaGlmX21pYl9jb25maWdfZGF0YV9m
aWx0ZXIgdmFsID0geworCQkuZW5hYmxlID0gZW5hYmxlLAorCQkuZmlsdGVyX2lkeCA9IGlkeCwK
KwkJLm1hY19jb25kID0gbWFjX2ZpbHRlcnMsCisJCS51Y19tY19iY19jb25kID0gZnJhbWVzX3R5
cGVzX2ZpbHRlcnMsCisJfTsKKwogCXJldHVybiBoaWZfd3JpdGVfbWliKHd2aWYtPndkZXYsIHd2
aWYtPmlkLAotCQkJICAgICBISUZfTUlCX0lEX0NPTkZJR19EQVRBX0ZJTFRFUiwgYXJnLCBzaXpl
b2YoKmFyZykpOworCQkJICAgICBISUZfTUlCX0lEX0NPTkZJR19EQVRBX0ZJTFRFUiwgJnZhbCwg
c2l6ZW9mKHZhbCkpOwogfQogCiBzdGF0aWMgaW5saW5lIGludCBoaWZfc2V0X2RhdGFfZmlsdGVy
aW5nKHN0cnVjdCB3ZnhfdmlmICp3dmlmLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKaW5kZXggYjc0ZTBjZTQxMDY5Li5l
NzFiOTlhYTFmNjMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKKysrIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtMTE3LDcgKzExNyw2IEBAIHN0YXRpYyBpbnQg
d2Z4X3NldF9tY2FzdF9maWx0ZXIoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJCQkJICAgIHN0cnVj
dCB3ZnhfZ3JwX2FkZHJfdGFibGUgKmZwKQogewogCWludCBpLCByZXQ7Ci0Jc3RydWN0IGhpZl9t
aWJfY29uZmlnX2RhdGFfZmlsdGVyIGNvbmZpZyA9IHsgfTsKIAogCS8vIFRlbXBvcmFyeSB3b3Jr
YXJvdW5kIGZvciBmaWx0ZXJzCiAJcmV0dXJuIGhpZl9zZXRfZGF0YV9maWx0ZXJpbmcod3ZpZiwg
ZmFsc2UsIHRydWUpOwpAQCAtMTI5LDcgKzEyOCw2IEBAIHN0YXRpYyBpbnQgd2Z4X3NldF9tY2Fz
dF9maWx0ZXIoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJCXJldCA9IGhpZl9zZXRfbWFjX2FkZHJf
Y29uZGl0aW9uKHd2aWYsIGksIGZwLT5hZGRyZXNzX2xpc3RbaV0pOwogCQlpZiAocmV0KQogCQkJ
cmV0dXJuIHJldDsKLQkJY29uZmlnLm1hY19jb25kIHw9IDEgPDwgaTsKIAl9CiAKIAlyZXQgPSBo
aWZfc2V0X3VjX21jX2JjX2NvbmRpdGlvbih3dmlmLCAwLCBISUZfRklMVEVSX1VOSUNBU1QgfApA
QCAtMTM3LDEwICsxMzUsOCBAQCBzdGF0aWMgaW50IHdmeF9zZXRfbWNhc3RfZmlsdGVyKHN0cnVj
dCB3ZnhfdmlmICp3dmlmLAogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLQljb25maWcudWNf
bWNfYmNfY29uZCA9IDE7Ci0JY29uZmlnLmZpbHRlcl9pZHggPSAwOyAvLyBUT0RPICNkZWZpbmUg
TVVMVElDQVNUX0ZJTFRFUklORyAwCi0JY29uZmlnLmVuYWJsZSA9IDE7Ci0JcmV0ID0gaGlmX3Nl
dF9jb25maWdfZGF0YV9maWx0ZXIod3ZpZiwgJmNvbmZpZyk7CisJcmV0ID0gaGlmX3NldF9jb25m
aWdfZGF0YV9maWx0ZXIod3ZpZiwgdHJ1ZSwgMCwgQklUKDEpLAorCQkJCQkgQklUKGZwLT5udW1f
YWRkcmVzc2VzKSAtIDEpOwogCWlmIChyZXQpCiAJCXJldHVybiByZXQ7CiAKLS0gCjIuMjUuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
