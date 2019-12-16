Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 101B5121199
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:19:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AFCA3220CA;
	Mon, 16 Dec 2019 17:19:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LuNR0nwPkyWF; Mon, 16 Dec 2019 17:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 63F6522049;
	Mon, 16 Dec 2019 17:19:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 288811BF40E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:19:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0FBCF22049
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id grkk02Yo8V9X for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:19:46 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2070.outbound.protection.outlook.com [40.107.223.70])
 by silver.osuosl.org (Postfix) with ESMTPS id B71C322011
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:19:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mDlrPY6d9YFgc5lS8yrClZNvc8n5edZeKMC/hMsW3QMECzjxH8vJt2RiVxi/xo7b5Qkg3jOd9Mw5uZIcdJsRB5eNEtCFbcP/5y4S7dVDeWvpLNvcqr21ixGWWpIBtAqbLazriN7xUb6BVyhJIbvTQMkGIxRqthSglMAMX6no4a6su3ivpT8atiU8VqE7igAPelnrAdDC40DcY3FSFGj3DB6sy+2yyWfKSTZxVWNneH2GyLn5PjKO+MWU4PH1f1bcYoZYieR6Yc8tlBAYGBe1nBLao2dIAr1qK1jv+Ju43UvTsnHaanntk2i6tndI/i0yYd8+lsp/uDcRIBbQfvrutw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YaYE5Q1kr6gaUJB0YB3WrhfOcFBewFvZ/Xh1yhoI3mY=;
 b=h0izcK7MEHaP8yZ4A/4S9fkPOjZVmdw0zLjDAZAoFtR0CeDpdHetC8LLGmUVB4YhUZ3mspCpdfOVliBv4KqJBxsVQVVip7xu+EfGzv3eugfPxgbaXP2WysbspcVb9zn4v0wYdYZ0ThqI9mKVYs+PUfJrIGBfI6UyOzrCHFqoPzVEmEtsI8XQXRk8+kpZ6DH6TaAGwHojW7PPdXu8mRH2yTyAjHbUs6qAdXQEAWa+CuSGgl0bxHazMH9yFH4pdpLaQsb4t7bjeQz2B3lLAa77G/iZeTT5F0lt2IUPnG6J0k3Q8EGoGCR5vh5mPkvziLLXKu0SLIbqk4mJV1q9stft1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YaYE5Q1kr6gaUJB0YB3WrhfOcFBewFvZ/Xh1yhoI3mY=;
 b=h7dp2j7k89xWtBK1MmzMxOX5ygMUwgEO5E+krH5nfzTZ5WGVlJLj++hodmj40bHwL9DkIbi3n8Jy7vvpuZILlKUDmR5uFPNvyomrv6SPx/UNmPd0AJ+QvrTtepXqujqoE5a7BKVoKx5kivO0J94t2qGlkt6Rhix0X5B4dYhYycU=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3838.namprd11.prod.outlook.com (20.178.252.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:03:47 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:03:47 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 11/55] staging: wfx: increase SPI bus frequency limit
Thread-Topic: [PATCH 11/55] staging: wfx: increase SPI bus frequency limit
Thread-Index: AQHVtDLDnrZcVXjHzUqvpMlkHqdTtg==
Date: Mon, 16 Dec 2019 17:03:39 +0000
Message-ID: <20191216170302.29543-12-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 4b7558ca-f0b2-41d9-e964-08d78249ea46
x-ms-traffictypediagnostic: MN2PR11MB3838:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB38388B65BEA618949072C1F693510@MN2PR11MB3838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(396003)(366004)(189003)(199004)(85202003)(8936002)(4744005)(81166006)(8676002)(54906003)(110136005)(316002)(85182001)(6506007)(186003)(2906002)(5660300002)(6512007)(26005)(107886003)(81156014)(36756003)(4326008)(6666004)(2616005)(76116006)(91956017)(64756008)(66556008)(66476007)(66946007)(71200400001)(86362001)(66446008)(6486002)(478600001)(1076003)(66574012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3838;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0UHTnMWdM9JX1Xd9GiCMuLeuGRnJjUUhE+Zkp2BjEmUfqk7QTLrxFjdO2SG9t53fRirdN5xl3xNaSIEu3z7GXdNcmWdZ++qBJB/Vq/sUJJf8JPE2S/va5WdJ/jWtBB/ElI0K2VTAgfUEkUJC7rIbdM/9aqomOHNABfBI/I7hUpOswz0nJzmWPyTSoNzQ2F73Dhr3p2GLUfQYYRkISvK7bZHpDJIYSoJRuw87Q7dyZO6PAuqfj4Y1x3IgEqvIM/8F0Zz8iUQnbBxTOkV7Wum4afyQ5BGZz3yf+458HxWGmC6WFYRY8vmVV8wkM6S6fdgwtlzxYKSW6I5l2/i7Bbo2iCZYbdWrfAGbM8dMmexuhEdLMDnikY8VtVGrdDDg7zkJQyagm70c9w3hhrAOY7xG1ye3t2DtQadQsoeJhRinFm6bEyDLjiEJET+hg/cKEg5X
Content-ID: <426EA0FC3188F949B86988BC0B3A866F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b7558ca-f0b2-41d9-e964-08d78249ea46
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:39.3668 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ULiLvZ2qFNWVJKYn7xSIMNLQL46cfo/yhYpIaw8Gv8XgO+9HDtZnZ/mgnLV4rVVge932PJMaAVD383f5fNY83w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3838
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpU
aGUgY2hpcCBoYXMgbm93IHByb3ZlbiB0aGF0IGl0IGNhbiBydW4gYXQgNTBNSHogb24gYW55IGJv
YXJkcyB3aXRob3V0DQphbnkgcHJvYmxlbS4NCg0KU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91
aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KLS0tDQogZHJpdmVycy9zdGFnaW5n
L3dmeC9idXNfc3BpLmMgfCAyICstDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGku
YyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jDQppbmRleCBhYjBjZGExZTEyNGYuLjQ0
ZmM0MmJiNDNhMCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jDQor
KysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zcGkuYw0KQEAgLTE4Myw3ICsxODMsNyBAQCBz
dGF0aWMgaW50IHdmeF9zcGlfcHJvYmUoc3RydWN0IHNwaV9kZXZpY2UgKmZ1bmMpDQogCWlmIChm
dW5jLT5iaXRzX3Blcl93b3JkICE9IDE2ICYmIGZ1bmMtPmJpdHNfcGVyX3dvcmQgIT0gOCkNCiAJ
CWRldl93YXJuKCZmdW5jLT5kZXYsICJ1bnVzdWFsIGJpdHMvd29yZCB2YWx1ZTogJWRcbiIsDQog
CQkJIGZ1bmMtPmJpdHNfcGVyX3dvcmQpOw0KLQlpZiAoZnVuYy0+bWF4X3NwZWVkX2h6ID4gNDkw
MDAwMDApDQorCWlmIChmdW5jLT5tYXhfc3BlZWRfaHogPiA1MDAwMDAwMCkNCiAJCWRldl93YXJu
KCZmdW5jLT5kZXYsICIlZEh6IGlzIGEgdmVyeSBoaWdoIHNwZWVkXG4iLA0KIAkJCSBmdW5jLT5t
YXhfc3BlZWRfaHopOw0KIA0KLS0gDQoyLjIwLjENCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
