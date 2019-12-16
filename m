Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CADAD1211E0
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:38:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6C783220EF;
	Mon, 16 Dec 2019 17:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HIEzwW06jN3C; Mon, 16 Dec 2019 17:38:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 28854220E5;
	Mon, 16 Dec 2019 17:38:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 333A01BF40E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:38:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2FFA588252
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:38:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1KHnGbHDjSWG for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:38:26 +0000 (UTC)
X-Greylist: delayed 00:34:40 by SQLgrey-1.7.6
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680062.outbound.protection.outlook.com [40.107.68.62])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 48D74881D0
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:38:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K83cQ6/lA+of2mwcLZJfGmk1wsQ2lPiNkSQSZdGQglmazk9fTAgcqj7UyooXqi5may9GlU5WVJT6wfaKidcS45YR4e49yblWobelTJcGByUb79Vm8/FkQXQCu1rSHVOPqsY47wBRqtNKa/x7cHue08axiYKwI03lt0vH4XzTdvslxSYRgUa9E7XtQ0NdE9l1hFwNH9XXXIGYwf2BQAVxPwww5FJhp+vgSi9ryFPYXyoBeuKTO15t7D6Xb/kt8Sps9mJIzYL4LJFNmZvQm6OonBx/w149ptSgtENs1RoYz4TYoYblJgxGyrVE2CtPj/tYWkEO6RI8hVWboyQsW8Dh8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gkGnHMPxxQOvCIZqPts/mg8NVFaCglqnElqOvrGQRwI=;
 b=mw5yEBEx5Ys4m3fwrtOg1EM8Q0bZWmYrmT85/xOAD0lrer6inQpFTFqJaZuCOnJJu2myJXcm4jyK+TCA80lbGBsKNGNrOOAQE7JOYyVbO7SfBs76AW014wyjOSc8eZI/5mgAHnEzlNUx3PaTMB8Wp2KFBOoSYz5k+7pS9LGZ2LeJ5T70tiLl/OaUXRc/S6AuhoFuGlAFXAIeHMuvcJc/f3W8nh6wP0oMhPSb1p8qRd/+24b86LCgKLMlRHXAKkczgQlWW91g6MIoH4fAmJWTQJdDWxs9Nq2d+FcOspMH+QEPZhs9YQa+HsxKFB4tysCwgTDu71Hgajj3C7cuGzo9Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gkGnHMPxxQOvCIZqPts/mg8NVFaCglqnElqOvrGQRwI=;
 b=ZtbjFfNJ2wFEY5a7mINpyOeI8vd2oX40+8uxur+xkv3qz409+kwUEXb5/Q+vQj44llfqPdF5Qbj+Klk05WPgqy970GFUBQhafo4PR5G6GaBlznwEjKDeEG32p2NOOQ14V7+OStPASPBZhund/aTviExHaQ9zAHCe5sPczFUhmz4=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4445.namprd11.prod.outlook.com (52.135.37.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 17:06:50 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:06:50 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 53/55] staging: wfx: delayed_link_loss cannot happen
Thread-Topic: [PATCH 53/55] staging: wfx: delayed_link_loss cannot happen
Thread-Index: AQHVtDLPhPRwXHXHJkeCH8JEWbw2sw==
Date: Mon, 16 Dec 2019 17:04:00 +0000
Message-ID: <20191216170302.29543-54-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: c3ed8e86-79f4-43fd-6789-08d7824a57a5
x-ms-traffictypediagnostic: MN2PR11MB4445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB44459EAFD8E1E0EE8E650A2A93510@MN2PR11MB4445.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
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
x-microsoft-antispam-message-info: eNYqO2OSm19WHao1iJufk5vF1mi7640SwxOZSDGilIntvtJR3YQF1F9vIXd33stTR8tN19+lAiUrcatGR9DEQIjmGzJ9wA6RlFJ93on3SqpvAmKY6mqL8aRbDCwR82bib/hx9LVTvlMsvmxb0O+wepo0C+hsluThdbDmHaSJvfQKi8aq1aTpivDvIKIzcWu8R5KsNpqtiIiZZGwT6dkHcygnk8KxCvCEOQyB3VpZfZNuSdD80d8i+Q/dJeYat9tqWSuFb2qKbnBcWNjJkGpt7xCjoCFDO0VHZzkJdCHFbAu4dwL59ocmWPm006CI9wzWwZfck+G5K+pDQbi+jErVNuhP4+wuPYSfGCVta4CqlasZFqO8x8Eu4l5eAkwxORIDi1IIBWJU8wTPB4/mZ3a7Z2q5BqPBMhsGmbpNnjWDuVyBO4gBB6DYaBTBCTl6dBwq
Content-ID: <4925DEB1411DCF4EAD724E4579B61797@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3ed8e86-79f4-43fd-6789-08d7824a57a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:04:00.2648 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XxAmANw+vzlbfriWaXd+o/t/z6Gc69CRvb/jPTxAT5rNDgfalTmPm3bA1FXvW3iCjt34WxhRNBD21JXfOqErrw==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpP
cmlnaW5hbCBjb2RlIGFsbG93cyB0byBkZXRlY3QgYW4gQlNTIGxvc3MgZHVyaW5nIGEgc2NhbiBh
bmQgZGVsYXlpbmcNCnRoZSBoYW5kbGluZyBvZiBCU1MgbG9zcy4gSG93ZXZlciwgdGhlcmUgaXQg
aXMgbm8gcmVhbCBwcm9ibGVtIHRvIGp1c3QNCm1ha2UgdGhlc2UgdHdvIGV2ZW50cyBtdXR1YWxs
eSBleGNsdXNpdmUgKHRoZXJlIGlzIGp1c3QgYSBwZXJmb3JtYW5jZQ0KcGVuYWx0eSkuDQoNClNp
Z25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNv
bT4NCi0tLQ0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5jIHwgIDQgLS0tLQ0KIGRyaXZlcnMv
c3RhZ2luZy93Zngvc3RhLmMgIHwgMTggKysrLS0tLS0tLS0tLS0tLS0tDQogZHJpdmVycy9zdGFn
aW5nL3dmeC93ZnguaCAgfCAgMSAtDQogMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDIwIGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zY2Fu
LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uYw0KaW5kZXggYmRiY2U2OTI2ZTkxLi5kZGUy
Zjg4NjgxNDcgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uYw0KKysrIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9zY2FuLmMNCkBAIC05NSwxMCArOTUsNiBAQCB2b2lkIHdmeF9o
d19zY2FuX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQ0KIAltdXRleF91bmxvY2soJnd2
aWYtPndkZXYtPmNvbmZfbXV0ZXgpOw0KIAltdXRleF91bmxvY2soJnd2aWYtPnNjYW5fbG9jayk7
DQogCV9faWVlZTgwMjExX3NjYW5fY29tcGxldGVkX2NvbXBhdCh3dmlmLT53ZGV2LT5odywgcmV0
IDwgMCk7DQotCWlmICh3dmlmLT5kZWxheWVkX2xpbmtfbG9zcykgew0KLQkJd3ZpZi0+ZGVsYXll
ZF9saW5rX2xvc3MgPSBmYWxzZTsNCi0JCXdmeF9jcW1fYnNzbG9zc19zbSh3dmlmLCAxLCAwLCAw
KTsNCi0JfQ0KIH0NCiANCiBpbnQgd2Z4X2h3X3NjYW4oc3RydWN0IGllZWU4MDIxMV9odyAqaHcs
IHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMNCmluZGV4IDdhZTc2M2U5NjQ1
NS4uMzI5NmJjMzUyMWQ1IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYw0K
KysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYw0KQEAgLTYzLDcgKzYzLDYgQEAgdm9pZCB3
ZnhfY3FtX2Jzc2xvc3Nfc20oc3RydWN0IHdmeF92aWYgKnd2aWYsIGludCBpbml0LCBpbnQgZ29v
ZCwgaW50IGJhZCkNCiAJaW50IHR4ID0gMDsNCiANCiAJbXV0ZXhfbG9jaygmd3ZpZi0+YnNzX2xv
c3NfbG9jayk7DQotCXd2aWYtPmRlbGF5ZWRfbGlua19sb3NzID0gMDsNCiAJY2FuY2VsX3dvcmtf
c3luYygmd3ZpZi0+YnNzX3BhcmFtc193b3JrKTsNCiANCiAJaWYgKGluaXQpIHsNCkBAIC00Mjks
MTggKzQyOCw5IEBAIHN0YXRpYyB2b2lkIHdmeF9ldmVudF9oYW5kbGVyX3dvcmsoc3RydWN0IHdv
cmtfc3RydWN0ICp3b3JrKQ0KIAkJc3dpdGNoIChldmVudC0+ZXZ0LmV2ZW50X2lkKSB7DQogCQlj
YXNlIEhJRl9FVkVOVF9JTkRfQlNTTE9TVDoNCiAJCQljYW5jZWxfd29ya19zeW5jKCZ3dmlmLT51
bmpvaW5fd29yayk7DQotCQkJaWYgKG11dGV4X3RyeWxvY2soJnd2aWYtPnNjYW5fbG9jaykpIHsN
Ci0JCQkJd2Z4X2NxbV9ic3Nsb3NzX3NtKHd2aWYsIDEsIDAsIDApOw0KLQkJCQltdXRleF91bmxv
Y2soJnd2aWYtPnNjYW5fbG9jayk7DQotCQkJfSBlbHNlIHsNCi0JCQkJLyogU2NhbiBpcyBpbiBw
cm9ncmVzcy4gRGVsYXkgcmVwb3J0aW5nLg0KLQkJCQkgKiBTY2FuIGNvbXBsZXRlIHdpbGwgdHJp
Z2dlciBic3NfbG9zc193b3JrDQotCQkJCSAqLw0KLQkJCQl3dmlmLT5kZWxheWVkX2xpbmtfbG9z
cyA9IDE7DQotCQkJCS8qIEFsc28gc3RhcnQgYSB3YXRjaGRvZy4gKi8NCi0JCQkJc2NoZWR1bGVf
ZGVsYXllZF93b3JrKCZ3dmlmLT5ic3NfbG9zc193b3JrLA0KLQkJCQkJCSAgICAgIDUgKiBIWik7
DQotCQkJfQ0KKwkJCW11dGV4X2xvY2soJnd2aWYtPnNjYW5fbG9jayk7DQorCQkJd2Z4X2NxbV9i
c3Nsb3NzX3NtKHd2aWYsIDEsIDAsIDApOw0KKwkJCW11dGV4X3VubG9jaygmd3ZpZi0+c2Nhbl9s
b2NrKTsNCiAJCQlicmVhazsNCiAJCWNhc2UgSElGX0VWRU5UX0lORF9CU1NSRUdBSU5FRDoNCiAJ
CQl3ZnhfY3FtX2Jzc2xvc3Nfc20od3ZpZiwgMCwgMCwgMCk7DQpAQCAtNDk3LDggKzQ4Nyw2IEBA
IHN0YXRpYyB2b2lkIHdmeF9kb191bmpvaW4oc3RydWN0IHdmeF92aWYgKnd2aWYpDQogew0KIAlt
dXRleF9sb2NrKCZ3dmlmLT53ZGV2LT5jb25mX211dGV4KTsNCiANCi0Jd3ZpZi0+ZGVsYXllZF9s
aW5rX2xvc3MgPSBmYWxzZTsNCi0NCiAJaWYgKCF3dmlmLT5zdGF0ZSkNCiAJCWdvdG8gZG9uZTsN
CiANCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oIGIvZHJpdmVycy9zdGFn
aW5nL3dmeC93ZnguaA0KaW5kZXggNWU3YzkxMWRiMDI0Li5kYjQzM2JlZTg3YWYgMTAwNjQ0DQot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4
L3dmeC5oDQpAQCAtNzAsNyArNzAsNiBAQCBzdHJ1Y3Qgd2Z4X3ZpZiB7DQogCWludAkJCWlkOw0K
IAllbnVtIHdmeF9zdGF0ZQkJc3RhdGU7DQogDQotCWludAkJCWRlbGF5ZWRfbGlua19sb3NzOw0K
IAlpbnQJCQlic3NfbG9zc19zdGF0ZTsNCiAJdTMyCQkJYnNzX2xvc3NfY29uZmlybV9pZDsNCiAJ
c3RydWN0IG11dGV4CQlic3NfbG9zc19sb2NrOw0KLS0gDQoyLjIwLjENCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
