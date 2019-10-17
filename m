Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B48DA87E
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 11:40:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F13F224074;
	Thu, 17 Oct 2019 09:40:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-sI+PzvIEnr; Thu, 17 Oct 2019 09:40:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CE258204EB;
	Thu, 17 Oct 2019 09:40:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 047BC1BF9BD
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7CE4E20368
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z4B-hRVC2z+J for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 09:40:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770071.outbound.protection.outlook.com [40.107.77.71])
 by silver.osuosl.org (Postfix) with ESMTPS id 8930D2046F
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 09:40:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b9G5o2fyrKRQfVkVdcPhiBiUJuVHOuPWPMotkgxSIlgLpHCtI52wvtTEDDdrCMAWqQVH1HbRdH/ydl26nmYLI8S9XMBxtoiFIXpG+H+JvScYXedOKnJmf+6+XKGlhHnHWcpvyC7aL8jKvxn2FU2Ih8OkQErSeE4TZ9tHdOIVyAhOgugZePDQs/xWVYANiRGBRtPmBNtxWMn2vuBnbQ1tyaGJgMTmBCCptphzcjVjwXlarIYawzd1Su5+dbGVEP+MHnRRAUxFYew9w64/OYS+44GKr2NhaCdo/Vs3EgqIeG7vzevdhj5UWXgMdTai/hDwLpbGz82MnveTS3TI2iaeXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jttP5KsSTemlepA+hl0d4SFsWvBiF2ff/ybSUIgw8OU=;
 b=fdyP2eJCoX42qYVM2nCNsAbI2qE6qmZ/C5FjWyJ5ltIon1HQ7jmgUsgsAQm4MV/rNN93kB9UYB6lsCXhH30JFKKfH49jsOSkLhVmE7ril9Fxfvo2VhHXYTyCzKiVaOFgr0qcktEKCtojHGDJXSqNP+Uzx0aWP0WdBmLh/Vfs8K5eHTBV1TiEXBeyZgGlYL8wA8wYHKxgwE9Azh3qp9VvbG+Oh455/V6bpi7ZglGZXLU2ppFKVfIMBywQS8Z7OBvMN0qpTEXyu+WVFhSGdoVd2ixrAHtJTFzgZQf6+T1Px5GXFjR912C4vVyI/G91l2Mn1Py+pA3IRL5jeLdXM2pZRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jttP5KsSTemlepA+hl0d4SFsWvBiF2ff/ybSUIgw8OU=;
 b=dBuWYA09SkuepalQeQdjDYWQ3uKnZrOGXlLI632pukkQFZhWxsGB9VS9OmtTPZUJJrAMGypZchczj1BrJayUe2refP0xLXmgCsQda/QI28p2l0Nv/hpmmSEUs0B23IaDTyBbsXQwUM3GFSQ1pfq9tZg5E+w2yx0Ehj6PW19kTyU=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4254.namprd11.prod.outlook.com (52.135.38.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Thu, 17 Oct 2019 09:40:07 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.023; Thu, 17 Oct 2019
 09:40:07 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 4/6] staging: wfx: fix Oops when CONFIG_OF_NET is not set
Thread-Topic: [PATCH 4/6] staging: wfx: fix Oops when CONFIG_OF_NET is not set
Thread-Index: AQHVhM7bwOD1LFVLQ0WOD1mbeqiIvw==
Date: Thu, 17 Oct 2019 09:40:06 +0000
Message-ID: <20191017093954.657-4-Jerome.Pouiller@silabs.com>
References: <20191017093954.657-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20191017093954.657-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4c92ce5-9dca-48f5-38d8-08d752e5ff01
x-ms-traffictypediagnostic: MN2PR11MB4254:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4254882B90F4CFA1B60E61B0936D0@MN2PR11MB4254.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(396003)(366004)(346002)(376002)(189003)(199004)(91956017)(76116006)(4744005)(54906003)(71190400001)(66946007)(26005)(86362001)(186003)(305945005)(99286004)(66476007)(5660300002)(2501003)(64756008)(36756003)(14454004)(66574012)(66556008)(1076003)(7736002)(71200400001)(66066001)(66446008)(2906002)(2351001)(478600001)(6512007)(76176011)(6116002)(3846002)(6506007)(14444005)(6916009)(256004)(316002)(446003)(11346002)(2616005)(6486002)(25786009)(476003)(486006)(81156014)(1730700003)(107886003)(102836004)(81166006)(5640700003)(4326008)(6436002)(8676002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4254;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uCeJWzm7kaolZJFT/segljAlyVOu/uysKcUhUV7Rlw9tmXsLO7hpiGjCJaa52dg1aH8NaYfBYge4hWgRuQS+P7KUDMMA5WWvISsE21ogtM9tdU+mOz7TGjKBfphjGCKu4iQogF0yiIAw+uBQo0pZJzeOtRzjZfGVFO/Lah5flNMkylsqAEWP91I3YoTW7JVvYXvv2lODA1s51MW2Ys1tlJY+y2EgVBOLOOLs62snkrf30c0djSA0IFsQgm7jG0v3JSiQ1/btllvI/zjBV2tXqdw93xJJQioXNzRzgYYNr27vmw/4YXAT+s2LnC/sN0f3VoWA2TC3lWsBWsSY/YSXi1dVX9MfCRn90n8pygDW30Xz5gaKwBPoufo9WW0CBBsyQpP/O2dKvoPR5mgqiU5S00dCDPY2dKcNBEu88uYEu/U=
Content-ID: <426B274299D9BD469BF93130CC361D8F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4c92ce5-9dca-48f5-38d8-08d752e5ff01
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 09:40:06.3230 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WgL8D4ui5M7GPeJHJfNT4Jh77TFwmPcC3OlR08oRbZT4UC9jO/ntJRm3itpOWtAl2sWt4gRLPmRuxdCQc+ncnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4254
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpJ
biBtb3N0IGNhc2UsIG9mX2dldF9tYWNfYWRkcmVzcygpIHJldHVybiBOVUxMIGluIGNhc2Ugb2Yg
ZXJyb3IuDQpIb3dldmVyLCBpZiBDT05GSUdfT0ZfTkVUIGlzIG5vdCBzZXQsIGl0IHJldHVybiAt
RU5PREVWLg0KDQpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWls
bGVyQHNpbGFicy5jb20+DQotLS0NCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYyB8IDIgKy0N
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9t
YWluLmMNCmluZGV4IDNhNDNmMTkwZDk2YS4uMjA1YjViYzg4NzJlIDEwMDY0NA0KLS0tIGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9tYWluLmMNCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5j
DQpAQCAtNDA3LDcgKzQwNyw3IEBAIGludCB3ZnhfcHJvYmUoc3RydWN0IHdmeF9kZXYgKndkZXYp
DQogCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHdkZXYtPmFkZHJlc3Nlcyk7IGkrKykgew0K
IAkJZXRoX3plcm9fYWRkcih3ZGV2LT5hZGRyZXNzZXNbaV0uYWRkcik7DQogCQltYWNhZGRyID0g
b2ZfZ2V0X21hY19hZGRyZXNzKHdkZXYtPmRldi0+b2Zfbm9kZSk7DQotCQlpZiAobWFjYWRkcikg
ew0KKwkJaWYgKCFJU19FUlJfT1JfTlVMTChtYWNhZGRyKSkgew0KIAkJCWV0aGVyX2FkZHJfY29w
eSh3ZGV2LT5hZGRyZXNzZXNbaV0uYWRkciwgbWFjYWRkcik7DQogCQkJd2Rldi0+YWRkcmVzc2Vz
W2ldLmFkZHJbRVRIX0FMRU4gLSAxXSArPSBpOw0KIAkJfQ0KLS0gDQoyLjIwLjENCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
