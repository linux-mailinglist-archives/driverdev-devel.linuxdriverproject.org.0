Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15AF4D4623
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 19:03:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7740425B0B;
	Fri, 11 Oct 2019 17:03:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YaTc9Rt6mcXe; Fri, 11 Oct 2019 17:03:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2721F20385;
	Fri, 11 Oct 2019 17:03:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B80041BF2C7
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 17:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ACE3720426
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 17:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qX7FWctNQjc0 for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 17:03:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr820080.outbound.protection.outlook.com [40.107.82.80])
 by silver.osuosl.org (Postfix) with ESMTPS id 4D1E320365
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 17:03:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RdlgE+hMdsSNX19TDmCSKES7zsf1GzbSoV5oHy6/XcjFt6kgQVRjDvGvCW9P0gTtDuvN3gDGc+DhrUA+agDVsvxWodXi1p9w1QPi3F3AuQ5B3ocQnmtr744hWb/pfO4rOfnMSlb0EDXYU0mwpeTL34bNR8V5ht272J1f/WnQZpfmgTjxK2lo7JV2Hp3EptctCF/YbLdzLDPGbo/OU2v7nCjHMcBTBEzVLrUNJ2McVfsp4V70FnOCo12SHc+Bp84aow9YWSOH3Q/3RD5+zoJoF4YfsnBQ2woYOFrGHKkCtrQCxFs/arfiJ3zLstVTpFgQstF8okmBCFcxBptxUT6T1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dmGcBfcidmAu02Dnvyv5vnFvgnR62fHMtuwqq7Z7oJo=;
 b=XUYzFxUEc1UAIZUfqR/8Zf65wj6KapKMOJJ9FlwWqij7ptRRzKczDhCG6uBAc9QRwr+Ji6P7iFmHBXoGqo6fj9RlLDTzIOd5pRdkpPc9Mv+w+1qzl/GM7BiXnXV13LBhC9mucA5PTQNMNKxeU5lkITK6Uyz97ObtaeouBYtLfj7rXzjEP4orHc7OKnQ+Z//BfbSf6+kEFlo7uU5L+3HycuIH2NGAviXl52bP8K/WBsFBV6aWt04DRx3i8OtF5+jjxjenxbUZ4tE8BP/dxiLqrmSBQ7NPEg7P8yOtQSgiZHOv6+KhmkhLP9N8l18LoLaKlmYojbrx9XTK+NmN8KojqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dmGcBfcidmAu02Dnvyv5vnFvgnR62fHMtuwqq7Z7oJo=;
 b=D1XZ8BvbWihdmTsTM1wUr39lGFwaCRq20W90nfmSnhKxrPVPWXgba2JuJuOFyy4xnAyn5PWJmL/31eqVYV1PjD9kSwx2R2+k+EZSPqTM8Per3fdkc3WmXSF+rjP7tyijmPfXDLFG/x+j+67XOiPMuYs9GPDyP85Uis1xbMOiU2k=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3648.namprd11.prod.outlook.com (20.178.252.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Fri, 11 Oct 2019 16:47:52 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Fri, 11 Oct 2019
 16:47:52 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH v3] staging: wfx: fix potential vulnerability to spectre
Thread-Topic: [PATCH v3] staging: wfx: fix potential vulnerability to spectre
Thread-Index: AQHVgFOfEOphZuCZaEK6REiAIbb4ng==
Date: Fri, 11 Oct 2019 16:47:51 +0000
Message-ID: <20191011164746.2518-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c6e48f1-dc82-4915-3859-08d74e6ac1c6
x-ms-traffictypediagnostic: MN2PR11MB3648:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3648982248D3580E39A6B99D93970@MN2PR11MB3648.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:108;
x-forefront-prvs: 0187F3EA14
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(346002)(366004)(39830400003)(136003)(199004)(189003)(6116002)(86362001)(6916009)(2351001)(26005)(71190400001)(71200400001)(478600001)(102836004)(8936002)(6486002)(2906002)(6506007)(186003)(99286004)(6436002)(1730700003)(81156014)(81166006)(8676002)(5640700003)(66066001)(3846002)(6512007)(36756003)(91956017)(64756008)(66946007)(66476007)(66556008)(76116006)(7736002)(256004)(66446008)(5660300002)(4326008)(1076003)(25786009)(305945005)(2501003)(14454004)(316002)(54906003)(4744005)(2616005)(476003)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3648;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KiNYxDEN/WAj0DbPvrqZfO9M90he9YV3ffTobEfIM3tYK+5gqTTmr0SvWE3LBUMEvk+yj3zCTeRfS+gFGQhXC7FaVJoeopq9M/kOSHZBcYja07fKS/AZEafFCKHjRYW21ltAS35lNKjdwk4BxwxrOXVyzX0dQEA5h9aJmLy4cZAL3KQNo6kpwMY0TmeU5fgRB4m18Dj+cAb9QAUFEB6+sEaq/b2OqulV1Gz5mTdPkHRZZK2dSoMY/r2x9w/Lg5WGOLztYT/QAk9qwp22lyZHqhCgMMGBbWfvKj2rPc2b1iOpml7aetsmBzgz2slHiJ3eZIJD51AlYcYWFFrFTIJGv85jMrefEZfLytoyuJw62e/gJASEfZy6BIVLi/SCEFapYdPBuvB8igVNPgPrp5gsQ8OXAky+NQZMruDs7sLPT3A=
Content-ID: <621965B27B0BC8438C530F735A7E2514@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c6e48f1-dc82-4915-3859-08d74e6ac1c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2019 16:47:51.9108 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bi47P0LRdECAU0ao/dSGjJIO4Xd6qcdPtsWCuAkMGMBt5pa20rsF4NCvtbfbz8V9LP3Id//3DUMumwc/hSNYEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3648
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQph
cnJheV9pbmRleF9ub3NwZWMoKSBzaG91bGQgYmUgYXBwbGllZCBhZnRlciBhIGJvdW5kIGNoZWNr
Lg0KDQpGaXhlczogOWJjYTQ1ZjNkNjkyICgic3RhZ2luZzogd2Z4OiBhbGxvdyB0byBzZW5kIDgw
Mi4xMSBmcmFtZXMiKQ0KUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwu
Y29tPg0KUmVwb3J0ZWQtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNv
bT4NClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2ls
YWJzLmNvbT4NCi0tLQ0KdjI6IGN1dCBkb3duIGNvbW1pdC1pZCB0byAxMiBjaGFyYWN0ZXJzDQp2
MzogZml4IG1pc3NpbmcgaW5jbHVkZQ0KDQogZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaCB8IDIg
KysNCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspDQoNCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaA0KaW5kZXgg
NDg5ODM2ODM3YjBhLi5kNjc4YjVhMDg4NzMgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L3dmeC5oDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oDQpAQCAtMTMsNiArMTMs
NyBAQA0KICNpbmNsdWRlIDxsaW51eC9jb21wbGV0aW9uLmg+DQogI2luY2x1ZGUgPGxpbnV4L3dv
cmtxdWV1ZS5oPg0KICNpbmNsdWRlIDxsaW51eC9tdXRleC5oPg0KKyNpbmNsdWRlIDxsaW51eC9u
b3NwZWMuaD4NCiAjaW5jbHVkZSA8bmV0L21hYzgwMjExLmg+DQogDQogI2luY2x1ZGUgImJoLmgi
DQpAQCAtMTM4LDYgKzEzOSw3IEBAIHN0YXRpYyBpbmxpbmUgc3RydWN0IHdmeF92aWYgKndkZXZf
dG9fd3ZpZihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IHZpZl9pZCkNCiAJCWRldl9kYmcod2Rl
di0+ZGV2LCAicmVxdWVzdGluZyBub24tZXhpc3RlbnQgdmlmOiAlZFxuIiwgdmlmX2lkKTsNCiAJ
CXJldHVybiBOVUxMOw0KIAl9DQorCXZpZl9pZCA9IGFycmF5X2luZGV4X25vc3BlYyh2aWZfaWQs
IEFSUkFZX1NJWkUod2Rldi0+dmlmKSk7DQogCWlmICghd2Rldi0+dmlmW3ZpZl9pZF0pIHsNCiAJ
CWRldl9kYmcod2Rldi0+ZGV2LCAicmVxdWVzdGluZyBub24tYWxsb2NhdGVkIHZpZjogJWRcbiIs
IHZpZl9pZCk7DQogCQlyZXR1cm4gTlVMTDsNCi0tIA0KMi4yMC4xDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
