Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30046DA963
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 11:55:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0826323E6B;
	Thu, 17 Oct 2019 09:55:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jkzRtAynZ+KE; Thu, 17 Oct 2019 09:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C86241FE0A;
	Thu, 17 Oct 2019 09:55:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCC0B1BF2CF
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:55:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C3FA62046F
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:55:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UJHtsmDAiHZI for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 09:55:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr820050.outbound.protection.outlook.com [40.107.82.50])
 by silver.osuosl.org (Postfix) with ESMTPS id E71702043A
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 09:55:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q0mRv9danp0rDnvHaGwqq698vC48MBxi6xYGzqDE7vmfO0erU4OR77cfctu9Kq8Gn3gu24bU2TMlgJkXcAKZO639B2ZPrM02Ylb7d9nJWpCqWz2cTN2Vw6bsUSgcs5LC+ZZ3IgNVVRUdaxgQKRsbg7dqlI4DUUHubDdQ3Crx2fubcxxTRSFvlmZ9yOFi8Nks1QmUVeYD8tCF2p8pOZCmSghCQYfU2bPDndK64E5tdxIpUniR6inorV5du6L/AHGgiyhUNGOEkiHKMU+mm6F8Em3rMnKjHlXgJtAyBx/yMriolRDM9YrZqzCGgAv9APGGafqKIyBmLKXVZxAfB0CSIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lxa43W8xmiUlNROScUbJdPErH8lvPHpavwfbzc/CxyU=;
 b=JBMv9rhGwaiopvFqZcwu2fq9463DE5M757AMUShI8V4DWzZsAHl6LMJFfNz8B7ILFCGUhfJRn0RACTFbBp+y0HILkveu2D9aa6dOrAVlb8I5o85jDllpjxngWjOAbFueG06qjf02xalAgxVYLlwoAnvm0g5LswRvsJmnL/ThNY8V7by0H/C0T5YQCilo5CvIVgNPZAdXMTb97nTGU/qZEMpMA5X5VpTJW2UKTUQmfmL8NWlkWLiISSILCjrHfjEspTm8/wYghMu5HIjPOAbd1SCwcywbup6mSphgyIrzGp9aDQZ9QTvFkK9VMUab2ENTeZNDITTJnP8aOEQum+kydw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lxa43W8xmiUlNROScUbJdPErH8lvPHpavwfbzc/CxyU=;
 b=Crblmbr0lEXmVBzJD2QNrqPqI9ie8LTJrX1HauXsBDgwNh1nWucesXhV79ehbIbqnY06CPPNzPojRulZYkhDsNF0T+XLHO5tLEt/kjUJSf1NDwWgGPwjhnaspYLZmR2WTxJMU2lqMb9nZwPSd/FjNfboOuEK2GrAx66SV+hdG7M=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4255.namprd11.prod.outlook.com (52.135.37.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Thu, 17 Oct 2019 09:40:08 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.023; Thu, 17 Oct 2019
 09:40:08 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 6/6] staging: wfx: fix number of available tx_policies
Thread-Topic: [PATCH 6/6] staging: wfx: fix number of available tx_policies
Thread-Index: AQHVhM7cmXiorceyL0e/fLLyiB2IRQ==
Date: Thu, 17 Oct 2019 09:40:07 +0000
Message-ID: <20191017093954.657-6-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: ab7d7ea6-5602-48d2-7832-08d752e5ff93
x-ms-traffictypediagnostic: MN2PR11MB4255:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB42551416B01AB4633ACA35DA936D0@MN2PR11MB4255.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(396003)(376002)(39850400004)(346002)(199004)(189003)(6116002)(3846002)(71190400001)(5660300002)(2906002)(256004)(14444005)(107886003)(64756008)(66066001)(71200400001)(6512007)(478600001)(66556008)(1076003)(2351001)(4744005)(66574012)(66446008)(66476007)(66946007)(76116006)(91956017)(25786009)(7736002)(6916009)(76176011)(99286004)(102836004)(6506007)(2616005)(81156014)(81166006)(2501003)(14454004)(5640700003)(316002)(6436002)(36756003)(6486002)(54906003)(4326008)(476003)(8936002)(305945005)(8676002)(1730700003)(486006)(26005)(186003)(86362001)(446003)(11346002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4255;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ug01h03+N9FATAIkX/YqKHNHdf6y7w9EYUoYK0HtzeJytQnV2+b9ZVCYooBx3X2ppSkZx2JUjL79ApFwBnvkvjnw51bgCy8y4fZqVPw5QrpJ655FLgLlIOfuK2rkNkzL+FLi0NLZlUAk6O8yQTAE4ElX3hrQRfnD06cZaXou/szK7afsbt1ZIswY/3JnPJP8yCNkPq72WwO0Tu0LKfxPvHGXT159URsPxfUwoDUERurWVbA4HfN2BoNm1hwTwkZhNaqEDC2RpTY0IaefxzTLP9gxS3Glrq08IfV7/+17xgHbrZukkYgnvp4JTQ+r+j1Vn1/LrWR86Fz87W41/OT6Q7o3JOIqC60EjAF2KSd0aEJ1pTC0TGOiYd1V8YLrVjuV7N3ZWmc05yWHlru3Rfcd4gJ78utsrEwC99pngkm3MJQ=
Content-ID: <1ACCA43AAAFF9A4A9A010C91945473A2@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab7d7ea6-5602-48d2-7832-08d752e5ff93
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 09:40:07.1985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a7mv7Df9D9cx+hntOkM1ysApWI69RWEc5UrNWg4VZ8siH0WrKNyXr5SsUYjpGxjgJmkpwOyO7laYFqIs8fGBzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4255
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
Cc: Alban Jeantheau <Alban.Jeantheau@silabs.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpP
cmlnaW5hbCBBUEkgZGVjbGFyZXMgMTYgdHhfcG9saWNpZXMuIEJ1dCBpbiBmYWN0LCB0aGUgMTZ0
aCBpcyB1c2VkDQppbnRlcm5hbGx5IGJ5IHRoZSBmaXJtd2FyZS4gU28sIG9ubHkgMTUgdHhfcG9s
aWNpZXMgYXJlIGF2YWlsYWJsZSBmb3INCmRyaXZlci4NCg0KUmVwb3J0ZWQtYnk6IEFsYmFuIEpl
YW50aGVhdSA8YWxiYW4uamVhbnRoZWF1QHNpbGFicy5jb20+DQpTaWduZWQtb2ZmLWJ5OiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQotLS0NCiBkcml2ZXJz
L3N0YWdpbmcvd2Z4L2hpZl9hcGlfbWliLmggfCAyICstDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl9hcGlfbWliLmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfbWliLmgNCmlu
ZGV4IDNjNTZlZjI5NzhhMi4uYWY2NTc1NTVmODk0IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFn
aW5nL3dmeC9oaWZfYXBpX21pYi5oDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlf
bWliLmgNCkBAIC01MDcsNyArNTA3LDcgQEAgc3RydWN0IGhpZl9taWJfdHhfcmF0ZV9yZXRyeV9w
b2xpY3kgew0KIAl1aW50OF90ICAgIHJhdGVzWzEyXTsNCiB9IF9fcGFja2VkOw0KIA0KLSNkZWZp
bmUgSElGX01JQl9OVU1fVFhfUkFURV9SRVRSWV9QT0xJQ0lFUyAgICAxNg0KKyNkZWZpbmUgSElG
X01JQl9OVU1fVFhfUkFURV9SRVRSWV9QT0xJQ0lFUyAgICAxNQ0KIA0KIHN0cnVjdCBoaWZfbWli
X3NldF90eF9yYXRlX3JldHJ5X3BvbGljeSB7DQogCXVpbnQ4X3QgICAgbnVtX3R4X3JhdGVfcG9s
aWNpZXM7DQotLSANCjIuMjAuMQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
