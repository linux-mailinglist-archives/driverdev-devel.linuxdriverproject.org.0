Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DE125121805
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 19:41:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5B76686519;
	Mon, 16 Dec 2019 18:41:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4evlwnAr6ewW; Mon, 16 Dec 2019 18:41:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B0846864EF;
	Mon, 16 Dec 2019 18:41:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A2A461BF308
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 18:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9EC6D86914
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 18:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZQIiC7blzU0U for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 18:40:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690079.outbound.protection.outlook.com [40.107.69.79])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A199A867D0
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 18:40:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y2aFV0b2iE+ffvgk5p/5PCEq6DeQxO4DjmEpkicD9Te20PEtRXj1l0lneRoq/rwYdx62DU6JIaVoBWbJnnMsuxud0wNEg5hWNHCT9g1XY6UogNZd2unUBOW9eukh77fz0mY3jmNJd+/sKYcF3GLVe29w12AlQnjACFvpzSCGEcIKvtSuBIXbhOZpnGJOCE0uDeSuKR5Ngion79ZVMAoAqEHdJPSYjzqKTSlfzivM91kXKuxs19MpblBsjJWRpmhTrwS8Y9gBSft1+Cfb6YgqfLBIJwCzVO2MGlco64uqErDW8mMcyZFUuQR+xn5vBL2kXR7TAPL6rDvRsYTYSj5XIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiwqIYI8P5k3+ifRaI0dZTotJIG9DHYZXl3NsSuZw8w=;
 b=DeJidyQP1NFGoKhPNXxjHqdlYZCTboItLgmU3n5Z7vZzY/5afwyunfnYkhYQqftaL6Vk1YTUncyG51vxdYEHEcND4BkEZ0ppBkPOi3/YNGO6vbyl5KpLwLwO7C/eIN2eIIAy7JCXFfYGbRFzYZQVsS1gfhPdUTcFDMfdr4PlrRIp56gPlNuXa1dghMw4GlyEarCRHA7MMGqEb3Wq3ESNypWcNIiTct1tBqy+fKin1Q85pMXvBcy/SJB+C9WF+9na9/fAcmRBFvQ00NIw2Yw8/NaTSbYp/CIhCLHr60bIqjNrDyysK6nLaJua2VQC5499If5bVcMdpQCYgp5+DsiDhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NiwqIYI8P5k3+ifRaI0dZTotJIG9DHYZXl3NsSuZw8w=;
 b=Pp4eqeGnbh2pUIeTOlkIFxb1h2bBLMSkje3+V9j2Fz95vj/+W7lEHtvbqsswzeGJrVUsYrDYcdmcZZBcwgv530lFMcK9nhVfI1g21Th0GfWnqTYFy/IZ5u0VKbOs/fRftNZDwOEnmwpopYy1U+1gij2fU37Iblz0AVm7y1rSFn8=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4445.namprd11.prod.outlook.com (52.135.37.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 17:06:40 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:06:39 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 36/55] staging: wfx: fix pm_mode timeout
Thread-Topic: [PATCH 36/55] staging: wfx: fix pm_mode timeout
Thread-Index: AQHVtDLKcxjSIwTc5kGd/Lrr+WZlcQ==
Date: Mon, 16 Dec 2019 17:03:52 +0000
Message-ID: <20191216170302.29543-37-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 0efbac71-d6d3-41c9-e7e0-08d7824a5154
x-ms-traffictypediagnostic: MN2PR11MB4445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB444564E52789B940FABBB73E93510@MN2PR11MB4445.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(39850400004)(396003)(136003)(189003)(199004)(110136005)(6486002)(107886003)(4744005)(36756003)(186003)(316002)(66946007)(54906003)(5660300002)(66574012)(66446008)(66556008)(85182001)(66476007)(76116006)(91956017)(64756008)(2616005)(6506007)(85202003)(2906002)(26005)(71200400001)(6512007)(4326008)(8936002)(81166006)(1076003)(478600001)(86362001)(81156014)(6666004)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4445;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4LzpIhHC6PyR1JoyVtpAi7JCMCs8g/PSS4QDmQaXs6m+AILosp/LqF6WRF2I3EbqsUrI0/KBLEPug+LAeyEV5jrotgf25uZeQlJI81Qfr6mYSxlHtoE/1BdX45AGRSZTI5ZVOmQD8wVmblZb+DrksH7D6TId21UPgZP3oV0/MsO1cDsmNY9nRv+zzZtiYDrbGTk7ombYblhJqVNfDwRLiSJyg5Muw0QHn2K4VNR1SRvGh9SGfHy8d2B1GC8HwG3aqXZdgoyrSXFiYUk0hL95/mNvYB6XMAgAKO+f18M1CDw+ZhyNsyN4QQ37GmPNNt0ZQvqko/73J4DYgKsEu6WEWBY1uGsT//3S3w0KuyrZiklrUBkYdrXXzUTiU98bjSyh2YBorKC/Kj9TJY6h8FrKWEaKYwxnrnIZQaX5YLEnH+bKtONQUoQemYU85QfGzD4h
Content-ID: <1F229203E031D94CBAADB965D4BF1927@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0efbac71-d6d3-41c9-e7e0-08d7824a5154
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:52.1274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gxPnuuiZCwY7Op2K3arhuvi+QmMZX1vK9JdwWxSlyDcpjMQRwf/+CV5lNTp3GaqEVN+IEjhsYE4IdnzMQoCQwQ==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpN
YXhpbXVtIHJlcXVlc3QgdGltZSAoaG93IGxvbmcgYSByZXF1ZXN0IHdhaXQgZm9yIHRoZSBtZWRp
dW0pIGlzIHNldCBpbg0KZmlybXdhcmUgdG8gNTEyVFUNCg0KU2lnbmVkLW9mZi1ieTogSsOpcsO0
bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KLS0tDQogZHJpdmVycy9z
dGFnaW5nL3dmeC9zdGEuYyB8IDIgKy0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMg
Yi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jDQppbmRleCBkY2I0NjkzZWM5ODAuLjQyYjBkMDFk
ODVjYyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMNCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy93Zngvc3RhLmMNCkBAIC0zNTksNyArMzU5LDcgQEAgc3RhdGljIGludCB3Znhf
dXBkYXRlX3BtKHN0cnVjdCB3ZnhfdmlmICp3dmlmKQ0KIAl9DQogDQogCWlmICghd2FpdF9mb3Jf
Y29tcGxldGlvbl90aW1lb3V0KCZ3dmlmLT5zZXRfcG1fbW9kZV9jb21wbGV0ZSwNCi0JCQkJCSBt
c2Vjc190b19qaWZmaWVzKDMwMCkpKQ0KKwkJCQkJIFRVX1RPX0pJRkZJRVMoNTEyKSkpDQogCQlk
ZXZfd2Fybih3dmlmLT53ZGV2LT5kZXYsDQogCQkJICJ0aW1lb3V0IHdoaWxlIHdhaXRpbmcgb2Yg
c2V0X3BtX21vZGVfY29tcGxldGVcbiIpOw0KIAlyZXR1cm4gaGlmX3NldF9wbSh3dmlmLCAmcG0p
Ow0KLS0gDQoyLjIwLjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
