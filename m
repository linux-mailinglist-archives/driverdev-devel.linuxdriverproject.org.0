Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6B61211EE
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:39:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D09A08694A;
	Mon, 16 Dec 2019 17:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iJiobG4PkQwq; Mon, 16 Dec 2019 17:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 875198691A;
	Mon, 16 Dec 2019 17:39:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C4E421BF40E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:39:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C0B12220DD
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:39:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fUZcXNXWF8kT for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:39:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-BN3-obe.outbound.protection.outlook.com
 (mail-eopbgr680066.outbound.protection.outlook.com [40.107.68.66])
 by silver.osuosl.org (Postfix) with ESMTPS id AF833220A9
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:39:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BtPfbZHATLY9xb0Og9WkfbYWnWoIgF794RQE/8VUuH9peczml0EuYl9rRuQP+FYJ6J+XQzIQJH1iPnqNEtaQcMqmSJujfwIsTqPMMES9DUDNbvCiu6VdcVVPw4tRCcHHA5vMEJXTWZNJ+ImRDtpaDg9FdAdskQT2hExkAJIp23tlctInSwGZPKw8ORF1ZDxzU7otfPAwiiEiZL5jMnUoukKtFKqpi/8jmWIuYxliVtUpmQzcKfGlaeo2X8IV78jbUbgijcsDgB5kcdXBc4INZhPE7/3rsfK1NVBZ2ZnBjPFhfr/h06G85alQfa3BbtcZOOFUEw5w6VKUBbygnWTkXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mg+EntRAaAxWAlnA413NWq07DoMrRslmbbQ7DN8oNAE=;
 b=H7hhg4a3tX579wu2fkgHrGJIyBaIpDoMtNmZzslBhMdEGVn5GHnVmyMH2SBwZ7QkKETyQtEgomBXfHk/lC9c+Vz7lFxQ3iuG/aoeKZXweyuKGw0NyQ+YFGiDPHAEah7hVxFMpEiVxNCXrhlRHaQ48nmchnBg9Eb9DgMjfxDKiOo1LQa2ttxwNArwRsp8H4VWTYhO8wALZLxCSkeoyOFz6DbkqrAA8TcxX09u+GRlJKez0mNFCGOfyxw60CMeIyoplUkWHQqHQT3O5C4ERFmpI/mM1eTEqEFwdB9YPOQzoOjbTnlH2nAFNbOBp3i7lG5gl/7a20l8txNnHiDlClLDEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mg+EntRAaAxWAlnA413NWq07DoMrRslmbbQ7DN8oNAE=;
 b=FKqqYOdjg3USL51RA4L1hOfUPHja0qmzTsfl1Pdr2hOotqMNZc4JgjxCsPtZLdhxjSSupo3UaDDyc857N1lLUOjqEzLwyCZidlwu9jvYZo9Iz7XCS7pn7d/0ua4tq05DUG/t8QIyQNqN9LjezXUuV+Om8hziKofgllPcBnr8ndE=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4445.namprd11.prod.outlook.com (52.135.37.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 17:06:39 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:06:39 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 35/55] staging: wfx: do not try to save call to hif_set_pm()
Thread-Topic: [PATCH 35/55] staging: wfx: do not try to save call to
 hif_set_pm()
Thread-Index: AQHVtDLK00XcshD/qkmDyYms/X/Dcw==
Date: Mon, 16 Dec 2019 17:03:51 +0000
Message-ID: <20191216170302.29543-36-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 4ba0e33a-007b-4530-1885-08d7824a510b
x-ms-traffictypediagnostic: MN2PR11MB4445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4445444A814E87194A7F8B3093510@MN2PR11MB4445.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
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
x-microsoft-antispam-message-info: DK+Y5VrN8wSFbtDliiSGmAY0pNrQ0ZrafIHZ/aO83n+rTO9mE4lzuRu8F47y0cJAp8M39zY2qIfdKvFIY/AP3D2LXkX0RMgwghSmz8d2LQ9biBb2/IvZNO6I6ArDpzT4vYZXubi679bYMNHag7XWw/2eVRHuirIGRxTxIVRTig9o1XkJieASzhowPfLdHPeUqO8ebk6A0ic4Z5I6l2Am05CQKC9R56xASDqCX7LXh5sGqRHbEh2spXD6sYfei/lVbFNz2zMpt9Nm4MI68f6nmwVkj0a9Xon7cMVUN4lxEWxXlUplG/Fqhw1lVbFwT3szLSl+kQl/g34vPTe5HA60Wlqc04r1KvEUpQIesXDZsTTAcXvQZbKn9h3cHWLIem6VT6nNw/kpMgA6mdmE1jBISvM9j1D8+mEKN5qHU1soydSSmcUuX/36GaM4yAp4Py29
Content-ID: <E35EC63AD06B88409BD614EB4110C751@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ba0e33a-007b-4530-1885-08d7824a510b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:51.6797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HGoRiWSqCyg/vBUuZqhhYfe7n/cBlspKDbkOttUwz5acfJtxmldc1xY54I7a0xrghOIGDD1097FbWeyQuEGtlQ==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpD
dXJyZW50IGNvZGUgdHJ5IHRvIG5vdCBleGNoYW5nZSBkYXRhIHdpdGggZGV2aWNlIGlmIGl0IGlz
IG5vdA0KbmVjZXNzYXJ5LiBIb3dldmVyLCBpdCBzZWVtcyB0aGF0IHRoZSBhZGRpdGlvbmFsIGNv
ZGUgZG9lcyBub3QgcHJvdmlkZQ0KYW55IGdhaW4uIFNvLCB3ZSBwcmVmZXIgdG8ga2VlcCBhIHNp
bXBsZXIgY29kZS4NCg0KU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPg0KLS0tDQogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyB8IDcg
Ky0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNiBkZWxldGlvbnMoLSkN
Cg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9kcml2ZXJzL3N0YWdp
bmcvd2Z4L3N0YS5jDQppbmRleCBjNTcxMzVmNzc1NzIuLmRjYjQ2OTNlYzk4MCAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMNCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
c3RhLmMNCkBAIC0zNzEsMTQgKzM3MSwxMSBAQCBpbnQgd2Z4X2NvbmZfdHgoc3RydWN0IGllZWU4
MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsDQogCXN0cnVjdCB3ZnhfZGV2
ICp3ZGV2ID0gaHctPnByaXY7DQogCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gKHN0cnVjdCB3Znhf
dmlmICopIHZpZi0+ZHJ2X3ByaXY7DQogCWludCByZXQgPSAwOw0KLQkvKiBUbyBwcmV2ZW50IHJl
LWFwcGx5aW5nIFBNIHJlcXVlc3QgT0lEIGFnYWluIGFuZCBhZ2FpbiovDQotCXUxNiBvbGRfdWFw
c2RfZmxhZ3MsIG5ld191YXBzZF9mbGFnczsNCiAJc3RydWN0IGhpZl9yZXFfZWRjYV9xdWV1ZV9w
YXJhbXMgKmVkY2E7DQogDQogCW11dGV4X2xvY2soJndkZXYtPmNvbmZfbXV0ZXgpOw0KIA0KIAlp
ZiAocXVldWUgPCBody0+cXVldWVzKSB7DQotCQlvbGRfdWFwc2RfZmxhZ3MgPSAqKCh1MTYgKikg
Jnd2aWYtPnVhcHNkX2luZm8pOw0KIAkJZWRjYSA9ICZ3dmlmLT5lZGNhLnBhcmFtc1txdWV1ZV07
DQogDQogCQl3dmlmLT5lZGNhLnVhcHNkX2VuYWJsZVtxdWV1ZV0gPSBwYXJhbXMtPnVhcHNkOw0K
QEAgLTM5NSwxMCArMzkyLDggQEAgaW50IHdmeF9jb25mX3R4KHN0cnVjdCBpZWVlODAyMTFfaHcg
Kmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmLA0KIA0KIAkJaWYgKHd2aWYtPnZpZi0+dHlw
ZSA9PSBOTDgwMjExX0lGVFlQRV9TVEFUSU9OKSB7DQogCQkJcmV0ID0gd2Z4X3NldF91YXBzZF9w
YXJhbSh3dmlmLCAmd3ZpZi0+ZWRjYSk7DQotCQkJbmV3X3VhcHNkX2ZsYWdzID0gKigodTE2ICop
ICZ3dmlmLT51YXBzZF9pbmZvKTsNCiAJCQlpZiAoIXJldCAmJiB3dmlmLT5zZXRic3NwYXJhbXNf
ZG9uZSAmJg0KLQkJCSAgICB3dmlmLT5zdGF0ZSA9PSBXRlhfU1RBVEVfU1RBICYmDQotCQkJICAg
IG9sZF91YXBzZF9mbGFncyAhPSBuZXdfdWFwc2RfZmxhZ3MpDQorCQkJICAgIHd2aWYtPnN0YXRl
ID09IFdGWF9TVEFURV9TVEEpDQogCQkJCXJldCA9IHdmeF91cGRhdGVfcG0od3ZpZik7DQogCQl9
DQogCX0gZWxzZSB7DQotLSANCjIuMjAuMQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
