Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EB837CF6D1
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 12:15:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2FB9860F4;
	Tue,  8 Oct 2019 10:15:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7F1z2WpquxSF; Tue,  8 Oct 2019 10:15:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C19B8584A;
	Tue,  8 Oct 2019 10:15:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B62E1BF857
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:15:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6733085CA8
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fPRvJa9mbESJ for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 10:15:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690062.outbound.protection.outlook.com [40.107.69.62])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 445DA85C98
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 10:15:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UKF+Wu92kHoSXZ50t7xBFQxZEDkWFdmbgUfwDhJmaRTaGH3fPntolN6eKHDTLeRY4hCsutIEKtAirV7tWr1MYb79/8HBj5xBkh0DgI3y4qKcd1SDZib0bJO14h/rtnTk76O1Rf+6Y6ZgPeSHlRDkRZDWGB+3Wr2NLzXljEzgCdrLt79ZnxT274zvZ8WyoWg94nIBiBAiCnGGbYN8JZkADQksa05QhKcNDcQJOn1pS2SI61qgdxkQKoQeuxLJLbYVNEfy3fEw0f1V0k8G6oGqkWRl6Ukyz87Gbx2RVgLBfsYKQSjB6gBtQVPN6CmsBcITcy8FxxPKJuFR4omAZeSBZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mQh//04/KkYBgMmQJlnWgPoDRlqzOyaMtXKm8YZaRok=;
 b=R9mqogJEI+QKNaZFOoCMDFN8lB08tzoPxCgz6RJU4ilZm1bVF8i6T/BR+5Eae4f83ESkqYlpVTPiRhVqClpxgbFONnH3yu356MjjGAW4ZZmFLkW17HqKiqTJcY966hIVQO6X6QAXK7Lf32U57393+YAA8cgpV910QUsIo3bL7kt0aYlffyeKTL2qqG7qr8YeX1EmKlI+PT4Ui4SXPPXtnQ1+RNhfjK0rQ1F3YAMhoWoPtN9AsdzfdbWnnBT6c/VSno8DELGKxfsWDc+5nXOlzJvNI7EK0z+jSBw3Ilc7ZxhUC4LH0k/LUzR7VpftvESR8yIN1agQnz5pf4p5P/ZItQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mQh//04/KkYBgMmQJlnWgPoDRlqzOyaMtXKm8YZaRok=;
 b=iVGa9kJ60xHW5hWFyyC+qmrnbV6jcyQZ/+Xm67KH+1M+1xPrxkVKsj2byjskgjtH+mLTXPV6vUc3LrGM5kom2wBpaiDQ808ENvpJYHBp1RIAyQR3cyQDwt0xBK+TzbStXwtrBQ8acrZDIQrA/X26pQyYeO9Wmlyzn1vCOtYyTRw=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4333.namprd11.prod.outlook.com (10.255.90.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 8 Oct 2019 09:42:47 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Tue, 8 Oct 2019
 09:42:47 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 0/7] Fix various compilation issues with wfx driver
Thread-Topic: [PATCH 0/7] Fix various compilation issues with wfx driver
Thread-Index: AQHVfby9LEc5HCPngkKgSgv6JOlnAQ==
Date: Tue, 8 Oct 2019 09:42:47 +0000
Message-ID: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d304cbb3-1af8-4d73-a540-08d74bd3e0ba
x-ms-traffictypediagnostic: MN2PR11MB4333:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB433329FCDB9BD225BCEAC463939A0@MN2PR11MB4333.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1751;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(366004)(346002)(39850400004)(199004)(189003)(54906003)(66574012)(1076003)(6436002)(6512007)(5640700003)(25786009)(305945005)(66066001)(4744005)(316002)(7736002)(99286004)(2351001)(6506007)(8936002)(86362001)(2501003)(71200400001)(71190400001)(102836004)(6486002)(14454004)(8676002)(6916009)(81166006)(81156014)(478600001)(1730700003)(4326008)(76116006)(26005)(14444005)(64756008)(66556008)(476003)(256004)(66476007)(66446008)(186003)(107886003)(3846002)(66946007)(2616005)(6116002)(486006)(2906002)(36756003)(91956017)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4333;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AepbYwdLIUekzUC0f8Lef+YAPJX0hMzuk/fuah3LLlcZdKduouWGLRxOybtvz0sLz2VfUi/NiGWKGcPabPq3PxI2DbJjQlzgmg5gszw04TPLCrB76MlblrSCnKaFvU5Cy7V7np9imWb1nmyniHyPbLSzye8h0g5Cyt532fR+S0K4G13/tbfmsQ5PtoDjGEskzDh60sX7git2R+kneL5Z24GG110YsbjjrAlk16U6oqKK8xyFEg4ZjKwSitr13jv5POFJ6T166Q62hhjWxZGQeBNhlsRQTHYkhOfMkDhSE3GSzO1OWv5DKsuWpSKAQ15TBBw47ZonKB9BnaaErYv+NGQdzXNddGF9nQdB7RPI1A5Go60sqoYv6QLVMhrZOnC+tlOTkY9pivz4L7BtdU3/uaNT9FCgJ0bxCQ32bINsG10=
Content-ID: <AA2A2F350E400445B7FE59D293663CA1@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d304cbb3-1af8-4d73-a540-08d74bd3e0ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 09:42:47.2927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Vqt/vznhCAEV7UmWfPxc6PqFE/Y5tNeiEAMVobup8cuuQVnw/lOrqJneqcnG1UjxYp8K2atCPxV8Q+pEE3VAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4333
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpN
b3N0IG9mIHByb2JsZW1zIGFyZSByZWxhdGVkIHRvIGJpZy1lbmRpYW4gYXJjaGl0ZWN0dXJlcy4N
Cg0KSsOpcsO0bWUgUG91aWxsZXIgKDcpOg0KICBzdGFnaW5nOiB3Zng6IHNpbXBsaWZ5IG1lbW9y
eSBhbGxvY2F0aW9uIGluIHdmeF91cGRhdGVfZmlsdGVyaW5nKCkNCiAgc3RhZ2luZzogd2Z4OiBy
ZW1vdmUgbWlzdXNlZCBjYWxsIHRvIGNwdV90b19sZTE2KCkNCiAgc3RhZ2luZzogd2Z4OiBsZTE2
X3RvX2NwdXMoKSB0YWtlcyBhIHJlZmVyZW5jZSBhcyBwYXJhbWV0ZXINCiAgc3RhZ2luZzogd2Z4
OiBjb3JyZWN0bHkgY2FzdCBkYXRhIG9uIGJpZy1lbmRpYW4gdGFyZ2V0cw0KICBzdGFnaW5nOiB3
Zng6IGZpeCBjb3B5X3t0byxmcm9tfV91c2VyKCkgdXNhZ2UNCiAgc3RhZ2luZzogd2Z4OiBkcm9w
IGNhbGxzIHRvIEJVR19PTigpDQogIHN0YWdpbmc6IHdmeDogYXZvaWQgbmFtZXNwYWNlIGNvbnRh
bWluYXRpb24NCg0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYmguYyAgICAgICAgIHwgIDggKysrLS0t
LQ0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8uYyAgIHwgIDQgKystLQ0KIGRyaXZlcnMv
c3RhZ2luZy93ZngvZGF0YV90eC5jICAgIHwgNDAgKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0t
LS0tLS0NCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguaCAgICB8ICAyICstDQogZHJpdmVy
cy9zdGFnaW5nL3dmeC9kZWJ1Zy5jICAgICAgfCAgNSArKy0tDQogZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfdHhfbWliLmggfCAyMyArKysrKysrKysrKystLS0tLS0NCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L2tleS5jICAgICAgICB8IDMyICsrKysrKysrKysrKy0tLS0tLS0tLS0tLS0NCiBkcml2ZXJz
L3N0YWdpbmcvd2Z4L3F1ZXVlLmMgICAgICB8ICA2ICsrLS0tDQogZHJpdmVycy9zdGFnaW5nL3dm
eC9zY2FuLmMgICAgICAgfCAgMiArLQ0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgICAgICAg
IHwgMjEgKysrKysrKy0tLS0tLS0tLS0NCiAxMCBmaWxlcyBjaGFuZ2VkLCA3NCBpbnNlcnRpb25z
KCspLCA2OSBkZWxldGlvbnMoLSkNCg0KLS0gDQoyLjIwLjENCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
