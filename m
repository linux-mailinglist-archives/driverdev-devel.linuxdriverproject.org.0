Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCEF123157
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:14:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7099285F90;
	Tue, 17 Dec 2019 16:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hmz3QwFjRqsE; Tue, 17 Dec 2019 16:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63EFB85F67;
	Tue, 17 Dec 2019 16:14:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 10B251BF95F
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0C92385F54
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0FsqL2CnzMGZ for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:14:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770082.outbound.protection.outlook.com [40.107.77.82])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EAE2685F67
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:14:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DYbutUTxIEc9+ZAwkfFyoHP4qlz+jsIn8/GBPE6KS/feHFFR198WV3R0vwv6KbuAYOO8RzfocuwaSyzG/1MOdlihzIJGOGn7OTxQowbY3Hn678Ji5ib9xpkIG9isiQiF3e7GDkK6h5e4aiUWbAhAQ3wVHZ44ATGOG6/tGsS1txv86bQCHik5ZKmyQ2GlulaNzvtCRJoIw6vUllmYUKmd2kaZrlOnLfHiArcs0Abui3Hb5jVJEPxZ3foT8zyClklf5d/XXAmt2WfkH/VbAMUFO8MLKsRKsjWQFejW7gb9gFTfpBVF1HSS+xiz76KXHSE43Url3pVP/k3K8xdV7ExRrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3e6A8zclh+sbKBL/FiNbcfJFdz00l+Pj7W9HJEvq2ms=;
 b=a0+n67Ap3Vmv0Q0CyGkypnuwbYi4Ub5PGKD6vtFM4BRlR692250uoYcYC3y/1lhxykV3fij/z2XF9MhG4eYdqBZQVOsPVikX1EKMpCaTQbJLCZ8cJ1TyvaM+qgYTpE8ku6CJhLsNXuqDFcn1gs4nS1MBx27kQSAbuWrCTb0gOjFbzXBUmjVYGx3VHh+1lzoJZ0QndyKXgBwHMBCa84/egwpxpy1gyDMEPkbzzjV5vLAMdQKGKqAaP7y8pPHefcTax/9yAibzzJPiv0V7p/5B3dPacrRnESmVQaiLKHdlO8teB30zcDKcKP5wjMTuo7UOuWJrmpd4UK2Ax9ku4wbYTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3e6A8zclh+sbKBL/FiNbcfJFdz00l+Pj7W9HJEvq2ms=;
 b=Z8alIFW7ZRDdXWBIRhZCArKtgpeT7r4zNKQ6/aFwnffT0Yicu+7MJnzEr2btbVyi0EAhpNBLQflPTNa08IlkZjD4hYYQvnxuZ3AA2t/YiOmebkAfX3rPoRaVqQPk4iIEgXgXxMogJZzLOlCKnKv/g3keWmh+UokGkAHj6WDwU8Y=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.254.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Tue, 17 Dec 2019 16:14:44 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:14:44 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 13/55] staging: wfx: avoid double warning when no more tx
 policy are available
Thread-Topic: [PATCH v2 13/55] staging: wfx: avoid double warning when no more
 tx policy are available
Thread-Index: AQHVtPUYR1+FPj2gG0K7mDog2VQHUA==
Date: Tue, 17 Dec 2019 16:14:44 +0000
Message-ID: <20191217161318.31402-14-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: dcc4ea14-f825-4228-f51b-08d7830c3a62
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3678AE40F826DCD20133A13993500@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:475;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39840400004)(366004)(136003)(199004)(189003)(6512007)(66574012)(1076003)(4744005)(478600001)(86362001)(8936002)(110136005)(316002)(2616005)(26005)(6506007)(5660300002)(36756003)(6486002)(66946007)(66476007)(66556008)(64756008)(66446008)(71200400001)(52116002)(85182001)(81166006)(81156014)(8676002)(54906003)(107886003)(2906002)(4326008)(186003)(85202003)(29513003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KteQ0mmWNUZMIIgpxuAcNCBNfXEURrp1m58Y7dMaRHIeY3cvMBdb+UW7hp07wJTugMSGuN5pKokeBmwTu7e/CTqOuqzVJA7O9Hqeo3sKKUYwIwMpQ/t9EyUPg6zZP6YRtNu/zvFZFdnt3YVAVlahXHOjTb3CUigqnIW2Rfpk5xMYKBqvdgK5qcPpNmas1ARlDhCFkCsfHgDJ5084KOwTbtCbar9KNaNhG1mZcKN3KzY4l9MSGQfr7ZVipzhX0P3lNXAS+fSkfmzLmX45UgH9O9r/k4CwkPu2DChxO6VcazM06Yp+48x9tHUZVEWhMsDlUr8mhW9rFgOCE/10GKSy26EBO/0XLyhVm+ej29j+/Gp1IO8c/UmcARGMn1tM/zX1FNOK+dHggO99B/BzbJABjJO+VGs79VsCny4PGyhqD9Zt4jIEqUA2XtTIqyOIErF9cfD+vzT2KKu0DIzQ3LAzOjvwGy3IizNM2CmiYT+D7uUGn1FkpMqnOpbD3jAwrJ8l
Content-ID: <D48774AC0382C241B6253EEC7AEACA95@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcc4ea14-f825-4228-f51b-08d7830c3a62
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:14:44.1113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Cog3yRiQW9M7fp84Fy3m9ZDuprl2jXoTSQox8z6s2nLEUSOw9o2YgDpREA/EERQS4MK6mF056ZM1KmZfQ2N8RA==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQ3Vy
cmVudGx5LCBudW1iZXIgb2YgYXZhaWxhYmxlIHR4IHJldHJ5IHBvbGljaWVzIGlzIGNoZWNrZWQg
dHdvIHRpbWVzLgpPbmx5IG9uZSBpcyBzdWZmaWNpZW50LgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0
bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3Rh
Z2luZy93ZngvZGF0YV90eC5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFf
dHguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCmluZGV4IDMyZTI2OWJlY2Q3NS4u
YzlkZWE2Mjc2NjFmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYwor
KysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYwpAQCAtMTY5LDcgKzE2OSw4IEBAIHN0
YXRpYyBpbnQgd2Z4X3R4X3BvbGljeV9nZXQoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJd2Z4X3R4
X3BvbGljeV9idWlsZCh3dmlmLCAmd2FudGVkLCByYXRlcyk7CiAKIAlzcGluX2xvY2tfYmgoJmNh
Y2hlLT5sb2NrKTsKLQlpZiAoV0FSTl9PTihsaXN0X2VtcHR5KCZjYWNoZS0+ZnJlZSkpKSB7CisJ
aWYgKGxpc3RfZW1wdHkoJmNhY2hlLT5mcmVlKSkgeworCQlXQVJOKDEsICJ1bmFibGUgdG8gZ2V0
IGEgdmFsaWQgVHggcG9saWN5Iik7CiAJCXNwaW5fdW5sb2NrX2JoKCZjYWNoZS0+bG9jayk7CiAJ
CXJldHVybiBXRlhfSU5WQUxJRF9SQVRFX0lEOwogCX0KLS0gCjIuMjQuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
