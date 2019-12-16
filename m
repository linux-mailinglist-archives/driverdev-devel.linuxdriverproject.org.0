Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C36F6121781
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 19:36:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13DD9221F0;
	Mon, 16 Dec 2019 18:36:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vqflVBE0KmHO; Mon, 16 Dec 2019 18:36:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DAA3E221CC;
	Mon, 16 Dec 2019 18:36:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3F231BF308
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 18:36:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id AFCCB8669F
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 18:36:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OKijKwdbvVfu for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 18:36:47 +0000 (UTC)
X-Greylist: delayed 00:56:37 by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770088.outbound.protection.outlook.com [40.107.77.88])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9024F86614
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 18:36:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fMy5Kwz7WbiU08aQaAjivS3qDn8K1bDa04LuAzV9IkEaLPHZphGs4mLCjeiniPdflhsl2CO8fCO/iUFvY8PodmArerlqwGs2mPTFXjgRW51EJkrtn4bUL4i2ELKLkx6CqtN/Rl76fRRXgyYJm65YkqQ82PikYqoK1tebJZcj15akkVUR625FPizXp32v0qe7j7SLl5Ylaz1KkYzaNKjk1OBRjcE5KWGYuYLIBTiDySG7XS64C3fqPPa78G6avrbS4DF7gAYQsFslDb63Vh742Cd+NMnrHaUlzfwjgrUc5T9mUT/zdgwscO0pnq4xkkjTSeEgVMoEcKRscVXTaqxHUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zhG1Ok86Jz3EuuS9CpzO4QG8Lt5Nei24lU15Lc8Q7AI=;
 b=ftN+eP2dfFuNumq+NOVCao8sMuoHTO+Js0ygM9hunG7Zg+/n2CsmiaKMqLwz/HGESdUMnJAZOMSDv2UjJcC8QZj5uR5qu5V3ab4bFCs5TnVz86w8Mko/0LIn6PlT54Xhz0Dz5dW9KSxj160k8OwTQBAvcSiLd1neJIFP1tNKDAiOfGDuWwgq/e4cFRdEstQLKK8Oz/i/ImThe07cprujguovek6HONgOsxrZj5FrjXiCHO19HkkObs/P4P7QsHQeu4GCb7jwrz8bLUqCxFeewfTTn5i586ST9xf8Uh3goYUkBN59vWs0pXg9j/vN95lJEDraRwmyn7XffY+nxEiBMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zhG1Ok86Jz3EuuS9CpzO4QG8Lt5Nei24lU15Lc8Q7AI=;
 b=iyNqZyfIGJXNYi2CctDdIFgECJH0M0mp05N/hXjINmdruKjA8A4URxtJ9Y8QSxBMYb7SHz3Tj2ZFn0CH0PVvdSklIOVY2G5I/V6VdXhagj0RoNDEuXa1B9yzCQ/amTwWpuNxM0uRji5bB9w6U9gUIwhdE6uvlqtSp2+JaJ69ZaA=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3838.namprd11.prod.outlook.com (20.178.252.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:03:38 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:03:38 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 04/55] staging: wfx: use boolean appropriately
Thread-Topic: [PATCH 04/55] staging: wfx: use boolean appropriately
Thread-Index: AQHVtDLApmJeO27A5kGs7sP8uS+xRA==
Date: Mon, 16 Dec 2019 17:03:35 +0000
Message-ID: <20191216170302.29543-5-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 826dd7f4-b721-4bd2-b5e9-08d78249e56d
x-ms-traffictypediagnostic: MN2PR11MB3838:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB383843B7851439E7E71ED11B93510@MN2PR11MB3838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:247;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(396003)(366004)(189003)(199004)(85202003)(8936002)(81166006)(8676002)(54906003)(110136005)(316002)(85182001)(6506007)(186003)(2906002)(5660300002)(6512007)(26005)(107886003)(81156014)(36756003)(4326008)(6666004)(2616005)(76116006)(91956017)(64756008)(66556008)(66476007)(66946007)(71200400001)(86362001)(66446008)(6486002)(478600001)(1076003)(66574012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3838;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hc5/q5nU4S0FwYijpi5kpn4ImjY5z3onue916600j6nb5PNJJkMLbB/JkgjScZIttYnhEgzDXQ//5/EawKR3wkQf038NKu5TsRE9rF03ErvJ89a9L7ecFSTYS1rZEFAUI7LR52KYju3xURR7BtLFchkzUzeSTeMUpAIuTbYf2EC+4At/IGG7BdkUCpR7XNdnI4qH0Typx5An6/CYRbYG+rbv3OrYAsPC7jvcfWumWukyLfDmJzzngszUQTjonxV5wWDZ1AeMcb/D4ra+f5Hr39jYdlrbTtGSo+DY1rWa0svVtetseSxWmXppQNSrbPVZ/xlC6Oy1leIR9IyX0T++WnxhlCu266lsBzv/qnD9caIWhTIF8bwEplnl1O6ehugQUQ0x1YBUvIIhrm9jB6FEY3F8U1D6ixz/KlBpvM+nVaN1NvjRwA5cn2DQK5jtTq1j
Content-ID: <03CB32629AA9584A82B036BB41B003B6@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 826dd7f4-b721-4bd2-b5e9-08d78249e56d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:35.1182 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: axiULtux7Cxj2Naa8xaUGA8yg8ATSTYx0NxplhSapI2iNTxLGJRBbOCGzpp934GmrVMROstenQc5ICOMdQoTGQ==
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
aGUgZmllbGQgJ3VwbG9hZGVkJyBpcyB1c2VkIGFzIGEgYm9vbGVhbiwgc28gY2FsbCBpdCBhIGJv
b2xlYW4uDQoNClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxs
ZXJAc2lsYWJzLmNvbT4NCi0tLQ0KIGRyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jIHwgNCAr
Ky0tDQogZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmggfCAyICstDQogMiBmaWxlcyBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5j
DQppbmRleCBkZjNhY2EwM2I1MGIuLmI3MjZkZDVlNTlmMyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvZGF0YV90eC5jDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHgu
Yw0KQEAgLTE4NCw3ICsxODQsNyBAQCBzdGF0aWMgaW50IHdmeF90eF9wb2xpY3lfZ2V0KHN0cnVj
dCB3ZnhfdmlmICp3dmlmLA0KIAkJICovDQogCQllbnRyeSA9IGxpc3RfZW50cnkoY2FjaGUtPmZy
ZWUucHJldiwgc3RydWN0IHR4X3BvbGljeSwgbGluayk7DQogCQltZW1jcHkoZW50cnktPnJhdGVz
LCB3YW50ZWQucmF0ZXMsIHNpemVvZihlbnRyeS0+cmF0ZXMpKTsNCi0JCWVudHJ5LT51cGxvYWRl
ZCA9IDA7DQorCQllbnRyeS0+dXBsb2FkZWQgPSBmYWxzZTsNCiAJCWVudHJ5LT51c2FnZV9jb3Vu
dCA9IDA7DQogCQlpZHggPSBlbnRyeSAtIGNhY2hlLT5jYWNoZTsNCiAJfQ0KQEAgLTI0MSw3ICsy
NDEsNyBAQCBzdGF0aWMgaW50IHdmeF90eF9wb2xpY3lfdXBsb2FkKHN0cnVjdCB3ZnhfdmlmICp3
dmlmKQ0KIAkJCWRzdC0+dGVybWluYXRlID0gMTsNCiAJCQlkc3QtPmNvdW50X2luaXQgPSAxOw0K
IAkJCW1lbWNweSgmZHN0LT5yYXRlcywgc3JjLT5yYXRlcywgc2l6ZW9mKHNyYy0+cmF0ZXMpKTsN
Ci0JCQlzcmMtPnVwbG9hZGVkID0gMTsNCisJCQlzcmMtPnVwbG9hZGVkID0gdHJ1ZTsNCiAJCQlh
cmctPm51bV90eF9yYXRlX3BvbGljaWVzKys7DQogCQl9DQogCX0NCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5o
DQppbmRleCBmNjNlNWQ4Y2Y5MjkuLjBmYzM4OGRiNjJlMCAxMDA2NDQNCi0tLSBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvZGF0YV90eC5oDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHgu
aA0KQEAgLTQxLDcgKzQxLDcgQEAgc3RydWN0IHR4X3BvbGljeSB7DQogCXN0cnVjdCBsaXN0X2hl
YWQgbGluazsNCiAJaW50IHVzYWdlX2NvdW50Ow0KIAl1OCByYXRlc1sxMl07DQotCXU4IHVwbG9h
ZGVkOw0KKwlib29sIHVwbG9hZGVkOw0KIH07DQogDQogc3RydWN0IHR4X3BvbGljeV9jYWNoZSB7
DQotLSANCjIuMjAuMQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
