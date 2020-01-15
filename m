Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6068B13C3AE
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:54:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EBF75879CD;
	Wed, 15 Jan 2020 13:54:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EK2cw5poMTUR; Wed, 15 Jan 2020 13:54:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F3F03879DA;
	Wed, 15 Jan 2020 13:54:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53E7A1BF573
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4BD158796D
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9cLIS4dUtZLo for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:54:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2081.outbound.protection.outlook.com [40.107.223.81])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4238D878F7
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:54:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g2yaBI3FlAr2xivUwicVrJGBv6vWv0fXws9hjTg8lpSfm5EK1cD/VjzKzhaVHRNOyHm9ZoNkFe/AQIr9YNyCa4HLbdGctWCH6VidkBZhXaKTxUmrsaZzxMEvGyyFvgyEgJAhLENSCdfsQnIxJEu7XSzyGRNZRxvFhGLWAoixPfb2WixF8GSuIaU6nRhYt1Fy1jAvs7IZQquhlTguqL80/xTTjQvSSj5hzNUOJnwc3iKiVkC1hxxGKp1MWlxtTSei29+XI94sSQAxyr0vnZGB8sO4Ir6LGsAgzmk5LbhGLVAY1ouNVsaDZtB+BPdq3+kpy63zkVxo6MR0it66pDnZ5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+AJrNR5x6OaUELuP4bcANVom55NGF0XSik/Lq5n/m4E=;
 b=c3Az/5wUAr/QpF550qgEqD9Jlr1E6EPmGwQATCxAwAAQ01fQHTdxb11E20cRicdN2NJwhaHusSEnQ/dqUsYpTmVk1jpirtXPVYPwbNXEHzrBPCHxmXVdhP9HuwaFqIRkpUC6OFH01yzXHi5puFiHC3Z++VLN68HaTupqlZxVe/vlXs0wO4vsmmaknvqiuTyw4mA8VSWv1dMhVuCJIcd2/Tx5umgwXTRieaNef6ERAx+PjDepq+TzzwDhYGOcle37yhpmZVQy6ABebKPX5YXVtT2PIJPjS4ydwVykt5PfrXhQ7/67D3ToJBRuvMW3GFQZD+hQ0ef7peZ+rCEeyq7qjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+AJrNR5x6OaUELuP4bcANVom55NGF0XSik/Lq5n/m4E=;
 b=TylJzHLQlQ5rQIuCH85tGRG62er7/CsF69MvTXLRG0CuN5rTlDuiwb69BzyeZxxzdoKdc4aBztNd1O56B2vYVjjAnKcY988L3VVHzvGRpDivwlwlhi5hpJoM6KhHsfnUjZWRKS8I8110nksLZ2LN/DrefHuZZviSxvQl20L2PNg=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4094.namprd11.prod.outlook.com (10.255.180.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Wed, 15 Jan 2020 13:54:12 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:54:12 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:54:11 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 07/65] staging: wfx: simplify hif_set_rcpi_rssi_threshold()
 usage
Thread-Topic: [PATCH v2 07/65] staging: wfx: simplify
 hif_set_rcpi_rssi_threshold() usage
Thread-Index: AQHVy6tEZVLrPPl2cUSAlMb2bQPJ/g==
Date: Wed, 15 Jan 2020 13:54:12 +0000
Message-ID: <20200115135338.14374-8-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: feb40c88-1772-439d-f220-08d799c26688
x-ms-traffictypediagnostic: MN2PR11MB4094:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB40941F6ED2C4DD95CB7AC3D693370@MN2PR11MB4094.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(366004)(396003)(346002)(136003)(376002)(189003)(199004)(316002)(110136005)(54906003)(85202003)(81156014)(5660300002)(8676002)(71200400001)(8936002)(81166006)(186003)(6506007)(86362001)(66946007)(66446008)(66476007)(66556008)(2906002)(64756008)(478600001)(6512007)(52116002)(6486002)(1076003)(16526019)(4326008)(85182001)(107886003)(36756003)(8886007)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4094;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 00o9vDEIH5I7c2fbwwiuI+qBr1917nKaxC2DXOTUPMaa3/FMKKWdpLeusPOgx2Di1vJKvSfVd1/N9OxvvnnmYRoSVjYm/PNpDaxXoY61Zgz+6BovHjV+k5QyFmR8J73QiocZcGYe9ayev7TAYB74kJMTTg0XYrQtd1AXQInB5k4x38XlqNlbWBjELHtyBqvrCCYDLn2JTY8rbV2q8y7XFrtD76cZKWGdN8GwKNlnY7QdUU+XcbMYyIuMzZfheZo2gFhM7ewhrmWF0JqZtBLMpa1/RxHS39fK6+5fCRRosI8D/t7fRB4N9Ve2by1yCecUFpnAi348EW/t6SW6FtBarSREyX0BPWor6ETl+qn1B8/5T+lCUbwE/fAQ0zWj9IHLfKu5RRoviRSuKyN/jduBQhKKAG+jDRlQgg2IwiuGbckBoncLfQGEXxylKYZ1u3Bc
Content-ID: <100D41C3DAA1E24A9CD8AF345F137BB4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: feb40c88-1772-439d-f220-08d799c26688
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:54:12.0919 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 210EfQM7F/uvSJnvGkiwNuUUWlm4TuMvawMLZjNQVY3kHy2p36qWtS2jLd1bspi8ZJQtLImgeo9zEMThnNc1KQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4094
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
IHN0cnVjdHVyZSBoaWZfbWliX3JjcGlfcnNzaV90aHJlc2hvbGQgY29tZSBmcm9tIGhhcmR3YXJl
IEFQSS4gSXQgaXMKbm90IGludGVuZGVkIHRvIGJlIG1hbmlwdWxhdGVkIGluIHVwcGVyIGxheWVy
cyBvZiB0aGUgZHJpdmVyLgoKSW4gYWRkLCBjdXJyZW50IGNvZGUgZm9yIGhpZl9zZXRfcmNwaV9y
c3NpX3RocmVzaG9sZCgpIGlzIGR1bWIuIEl0CnNob3VsZCBwYWNrIGRhdGEgdXNpbmcgdGhlIGhh
cmR3YXJlIHJlcHJlc2VudGF0aW9uIGluc3RlYWQgb2YgbGVhdmluZwphbGwgd29yayB0byB0aGUg
Y2FsbGVyLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxl
ckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5oIHwgMTkg
KysrKysrKysrKysrKysrKystLQogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyAgICAgICAgfCAy
NiArKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxOSBpbnNlcnRp
b25zKCspLCAyNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2hpZl90eF9taWIuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5oCmluZGV4IDc0
OWRmNjcxMzFjMy4uYTgwODI1MDhmYmZkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2hpZl90eF9taWIuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuaApAQCAt
NDQsMTAgKzQ0LDI1IEBAIHN0YXRpYyBpbmxpbmUgaW50IGhpZl9zZXRfYmVhY29uX3dha2V1cF9w
ZXJpb2Qoc3RydWN0IHdmeF92aWYgKnd2aWYsCiB9CiAKIHN0YXRpYyBpbmxpbmUgaW50IGhpZl9z
ZXRfcmNwaV9yc3NpX3RocmVzaG9sZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKLQkJCQkJICAgICAg
c3RydWN0IGhpZl9taWJfcmNwaV9yc3NpX3RocmVzaG9sZCAqYXJnKQorCQkJCQkgICAgICBpbnQg
cnNzaV90aG9sZCwgaW50IHJzc2lfaHlzdCkKIHsKKwlzdHJ1Y3QgaGlmX21pYl9yY3BpX3Jzc2lf
dGhyZXNob2xkIGFyZyA9IHsKKwkJLnJvbGxpbmdfYXZlcmFnZV9jb3VudCA9IDgsCisJCS5kZXRl
Y3Rpb24gPSAxLAorCX07CisKKwlpZiAoIXJzc2lfdGhvbGQgJiYgIXJzc2lfaHlzdCkgeworCQlh
cmcudXBwZXJ0aHJlc2ggPSAxOworCQlhcmcubG93ZXJ0aHJlc2ggPSAxOworCX0gZWxzZSB7CisJ
CWFyZy51cHBlcl90aHJlc2hvbGQgPSByc3NpX3Rob2xkICsgcnNzaV9oeXN0OworCQlhcmcudXBw
ZXJfdGhyZXNob2xkID0gKGFyZy51cHBlcl90aHJlc2hvbGQgKyAxMTApICogMjsKKwkJYXJnLmxv
d2VyX3RocmVzaG9sZCA9IHJzc2lfdGhvbGQ7CisJCWFyZy5sb3dlcl90aHJlc2hvbGQgPSAoYXJn
Lmxvd2VyX3RocmVzaG9sZCArIDExMCkgKiAyOworCX0KKwogCXJldHVybiBoaWZfd3JpdGVfbWli
KHd2aWYtPndkZXYsIHd2aWYtPmlkLAotCQkJICAgICBISUZfTUlCX0lEX1JDUElfUlNTSV9USFJF
U0hPTEQsIGFyZywgc2l6ZW9mKCphcmcpKTsKKwkJCSAgICAgSElGX01JQl9JRF9SQ1BJX1JTU0lf
VEhSRVNIT0xELCAmYXJnLCBzaXplb2YoYXJnKSk7CiB9CiAKIHN0YXRpYyBpbmxpbmUgaW50IGhp
Zl9nZXRfY291bnRlcnNfdGFibGUoc3RydWN0IHdmeF9kZXYgKndkZXYsCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwppbmRl
eCAxMWUzM2E2ZDViYjUuLjMzOWFjYmNlOTZmYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCkBAIC0xMDMzLDMxICsx
MDMzLDkgQEAgdm9pZCB3ZnhfYnNzX2luZm9fY2hhbmdlZChzdHJ1Y3QgaWVlZTgwMjExX2h3ICpo
dywKIAkJaGlmX3Nsb3RfdGltZSh3dmlmLCBpbmZvLT51c2Vfc2hvcnRfc2xvdCA/IDkgOiAyMCk7
CiAKIAlpZiAoY2hhbmdlZCAmIEJTU19DSEFOR0VEX0FTU09DIHx8IGNoYW5nZWQgJiBCU1NfQ0hB
TkdFRF9DUU0pIHsKLQkJc3RydWN0IGhpZl9taWJfcmNwaV9yc3NpX3RocmVzaG9sZCB0aCA9IHsK
LQkJCS5yb2xsaW5nX2F2ZXJhZ2VfY291bnQgPSA4LAotCQkJLmRldGVjdGlvbiA9IDEsCi0JCX07
Ci0KIAkJd3ZpZi0+Y3FtX3Jzc2lfdGhvbGQgPSBpbmZvLT5jcW1fcnNzaV90aG9sZDsKLQotCQlp
ZiAoIWluZm8tPmNxbV9yc3NpX3Rob2xkICYmICFpbmZvLT5jcW1fcnNzaV9oeXN0KSB7Ci0JCQl0
aC51cHBlcnRocmVzaCA9IDE7Ci0JCQl0aC5sb3dlcnRocmVzaCA9IDE7Ci0JCX0gZWxzZSB7Ci0J
CQkvKiBGSVhNRSBJdCdzIG5vdCBhIGNvcnJlY3Qgd2F5IG9mIHNldHRpbmcgdGhyZXNob2xkLgot
CQkJICogVXBwZXIgYW5kIGxvd2VyIG11c3QgYmUgc2V0IGVxdWFsIGhlcmUgYW5kIGFkanVzdGVk
Ci0JCQkgKiBpbiBjYWxsYmFjay4gSG93ZXZlciBjdXJyZW50IGltcGxlbWVudGF0aW9uIGlzIG11
Y2gKLQkJCSAqIG1vcmUgcmVsaWFibGUgYW5kIHN0YWJsZS4KLQkJCSAqLwotCQkJLyogUlNTSTog
c2lnbmVkIFE4LjAsIFJDUEk6IHVuc2lnbmVkIFE3LjEKLQkJCSAqIFJTU0kgPSBSQ1BJIC8gMiAt
IDExMAotCQkJICovCi0JCQl0aC51cHBlcl90aHJlc2hvbGQgPSBpbmZvLT5jcW1fcnNzaV90aG9s
ZCArIGluZm8tPmNxbV9yc3NpX2h5c3Q7Ci0JCQl0aC51cHBlcl90aHJlc2hvbGQgPSAodGgudXBw
ZXJfdGhyZXNob2xkICsgMTEwKSAqIDI7Ci0JCQl0aC5sb3dlcl90aHJlc2hvbGQgPSBpbmZvLT5j
cW1fcnNzaV90aG9sZDsKLQkJCXRoLmxvd2VyX3RocmVzaG9sZCA9ICh0aC5sb3dlcl90aHJlc2hv
bGQgKyAxMTApICogMjsKLQkJfQotCQloaWZfc2V0X3JjcGlfcnNzaV90aHJlc2hvbGQod3ZpZiwg
JnRoKTsKKwkJaGlmX3NldF9yY3BpX3Jzc2lfdGhyZXNob2xkKHd2aWYsIGluZm8tPmNxbV9yc3Np
X3Rob2xkLAorCQkJCQkgICAgaW5mby0+Y3FtX3Jzc2lfaHlzdCk7CiAJfQogCiAJaWYgKGNoYW5n
ZWQgJiBCU1NfQ0hBTkdFRF9UWFBPV0VSICYmCi0tIAoyLjI1LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
