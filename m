Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C04DA87F
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 11:40:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5371488602;
	Thu, 17 Oct 2019 09:40:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dhV6e5OVA5XJ; Thu, 17 Oct 2019 09:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC4A48861F;
	Thu, 17 Oct 2019 09:40:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04EE91BF9CB
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C426523524
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YYFd9yJAhZ2r for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 09:40:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770071.outbound.protection.outlook.com [40.107.77.71])
 by silver.osuosl.org (Postfix) with ESMTPS id 4835D20463
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 09:40:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkZjdETPM0vLLxWuhViTz46l8tMEDNYH8Xm6twV0ZJ5OAp/yz5v01eIFdQ4pv6pXWQeZbc21RgvIPxYpihep5/tJ+xCQDVRmJLmhHmjkqdCz2yS11ROqAbwe4WWkXy7QcxXu205G/1Vus2HcQY/L9mL4haNN2OI4RWFsDBG/t9DLxyWqy1lfhBekOWM/lYAGORDUvGeIwPuLnbwO+3bTw7G2HtXaaZj7oDlxif5ugpgcRMGxXbSa5wv3Ae7HMVkq0gb50Ioj9HsIMJRW6z/IBOOq6F4PYm58VqPQIXedddVmVpXRoC64l9DGzaXbhZTJJR+tSmHFxaEGHBiohTY3oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wpeFuYHDeM+00v8lIg9C11+9uwrfsGDh2F4ZQa3XCUc=;
 b=RIAhnSjVqU2OE7aNEqYCXY0VtSEQq2J0IRSar7+umURpGMRYwQrIzfAKj429c5dPFOZO0+/mLgy4lueV+1Gc1Daz8aBYX2wIVSp4nVaWPDEzXCO756jAb4Ha3bH7Vk2hI5bAo3dC/E7cPCO/unur/IKQOtvqLR2MMxPFcsxWXnI9NbAcPK7E98isRySXryJ7ocJ5kTxgpxQFN3fGQwwjDR5kuz/9aB2SBFKBkaYcUcqCcmLmnSCw15bDSdkEBO8xOz55JPdMGiwxC6IjuhZsgPSeDKW+gF/Z5545FGdDXULw33+fBXniJMEx9TsLD71zFuWs4LHPgxX2zPs+vhf9Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wpeFuYHDeM+00v8lIg9C11+9uwrfsGDh2F4ZQa3XCUc=;
 b=GhWKlv+yVjJmmeUvIqWhmLZWRwzC8BcLV4jSlRBLyNppk3J/t7oDaBdVFxmqWWXCzAtqImDslPM/bQn7lW+nAuCUB+kAivP0vGaC2+CZOMb0ClKHdylFIT/U6ZNsgCUVMr1jBhhbEpeYfR/Jq35Rdm65j7VdGGg/xaKPRsRiJvg=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4254.namprd11.prod.outlook.com (52.135.38.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Thu, 17 Oct 2019 09:40:07 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.023; Thu, 17 Oct 2019
 09:40:06 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 3/6] staging: wfx: fix CONFIG_MMC=m with CONFIG_WFX=y
Thread-Topic: [PATCH 3/6] staging: wfx: fix CONFIG_MMC=m with CONFIG_WFX=y
Thread-Index: AQHVhM7be3JMjiTYL0K9lf//ZJkfcg==
Date: Thu, 17 Oct 2019 09:40:06 +0000
Message-ID: <20191017093954.657-3-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 66809a22-5c5a-4f67-5d54-08d752e5feab
x-ms-traffictypediagnostic: MN2PR11MB4254:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB42548E70CED7241464AD3664936D0@MN2PR11MB4254.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(396003)(366004)(346002)(376002)(189003)(199004)(91956017)(76116006)(54906003)(71190400001)(66946007)(26005)(86362001)(186003)(305945005)(99286004)(66476007)(5660300002)(2501003)(64756008)(36756003)(14454004)(66574012)(66556008)(1076003)(7736002)(71200400001)(66066001)(66446008)(2906002)(2351001)(478600001)(6512007)(76176011)(6116002)(3846002)(6506007)(6916009)(256004)(316002)(446003)(11346002)(2616005)(6486002)(25786009)(476003)(486006)(81156014)(1730700003)(102836004)(81166006)(5640700003)(4326008)(6436002)(8676002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4254;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7flkJvIJyKhg3JC3GCbjIWJZFAq8TdQr7VjXDGE6ncyPhTC7QlRQj+Cm6FrlQY+jIU+217LPAUaMwhDOdek4hLIJ7oADMUoATTxTT9afERvJ3G56In6rJs2Q/hUwkWWEkMhVrPxguNSUK9LpcpcJAHB/LY2sA6sNpluP1Wdqvxh+qakV8ugyCCxZF5mSJWB9t2ORb4JwEzQnzH764yp+FaBFxZnnXo0LQZx1NVoxUqJwb3PKMGi/fZD2Kn4orMF0e+ERbbfXxxKDbRmhU2F1Zdp6w1+d4Dig99/wDaSlf7gFgC0m11D26sUgZhPrzrzyisTHsXphDy3RQH22GIlx9PPcknJn1omhRf9NeFhhFhFJ85e+x7ci7K7xGMnm/dBfXdgLtnkj8BAeln2nI/i+avSwcRx+M3RhDQ/jAG6fQ+Y=
Content-ID: <095FEDA99CA1DB45A954F328814D959A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66809a22-5c5a-4f67-5d54-08d752e5feab
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 09:40:06.0161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GMElXlK9C2km7nuZXDJ6MMO3JkGk5EZJHeTmq2aZCbxREVOnMhIspXwQqKqkQFfHUiJfPFB0knOu5e1Y61ePBA==
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
 zhong jiang <zhongjiang@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpJ
ZiBDT05GSUdfTU1DPW0gYW5kIENPTkZJR19XRlg9eSwgY29tcGlsYXRpb24gY29tcGxhaW5zIHdp
dGggdW5kZWZpbmVkDQpyZWZlcmVuY2VzOg0KDQogICAgZHJpdmVycy9zdGFnaW5nL3dmeC9tYWlu
Lm86IEluIGZ1bmN0aW9uIGB3ZnhfY29yZV9pbml0JzogL2xpbnV4L2RyaXZlcnMvc3RhZ2luZy93
ZngvbWFpbi5jOjQ4ODogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgc2Rpb19yZWdpc3Rlcl9kcml2
ZXInDQogICAgZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLm86IEluIGZ1bmN0aW9uIGB3ZnhfY29y
ZV9leGl0JzogL2xpbnV4L2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jOjQ5NjogdW5kZWZpbmVk
IHJlZmVyZW5jZSB0byBgc2Rpb191bnJlZ2lzdGVyX2RyaXZlcicNCiAgICBkcml2ZXJzL3N0YWdp
bmcvd2Z4L21haW4ubzooLmRlYnVnX2FkZHIrMHgxYTgpOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRv
IGBzZGlvX3JlZ2lzdGVyX2RyaXZlcicNCiAgICBkcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4ubzoo
LmRlYnVnX2FkZHIrMHg2ZjApOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBzZGlvX3VucmVnaXN0
ZXJfZHJpdmVyJw0KDQpJbmRlZWQsIHN5bWJvbHMgc2Rpb18qIGFyZSBub3QgcHJlc2VudCBpbiBr
ZXJuZWwgaW1hZ2UuDQoNClRoaXMgcGF0Y2ggZGlzYWxsb3dzIENPTkZJR19XRlg9eSBpZiBDT05G
SUdfTU1DPW0uDQoNClRoaXMgc29sdXRpb24gaW1wYWN0cyB1c2VycyB3aG8gd2FudCB0byB1c2Ug
U1BJIGJ1cyB3aXRoIGNvbmZpZ3VyYXRpb246DQpDT05GSUdfV0ZYPXkgKyBDT05GSUdfU1BJPXkg
KyBDT05GSUdfTU1DPW0uIEhvd2V2ZXIsIEkgdGhpbmsgdGhpcyBpcyBhDQp0d2lzdGVkIGNhc2Uu
IFNvLCBJIHRoaW5rIGl0IHdvbid0IGJlIG1pc3NlZC4NCg0KUmVwb3J0ZWQtYnk6IHpob25nIGpp
YW5nIDx6aG9uZ2ppYW5nQGh1YXdlaS5jb20+DQpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3Vp
bGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQotLS0NCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L0tjb25maWcgfCAxICsNCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCg0KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvS2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy93
ZngvS2NvbmZpZw0KaW5kZXggOWI4YTFjN2E5ZTkwLi44M2VlNGQwY2E4YzYgMTAwNjQ0DQotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvd2Z4L0tjb25maWcNCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
S2NvbmZpZw0KQEAgLTEsNiArMSw3IEBADQogY29uZmlnIFdGWA0KIAl0cmlzdGF0ZSAiU2lsaWNv
biBMYWJzIHdpcmVsZXNzIGNoaXBzIFdGMjAwIGFuZCBmdXJ0aGVyIg0KIAlkZXBlbmRzIG9uIE1B
QzgwMjExDQorCWRlcGVuZHMgb24gTU1DIHx8ICFNTUMgIyBkbyBub3QgYWxsb3cgV0ZYPXkgaWYg
TU1DPW0NCiAJZGVwZW5kcyBvbiAoU1BJIHx8IE1NQykNCiAJaGVscA0KIAkgIFRoaXMgaXMgYSBk
cml2ZXIgZm9yIFNpbGljb25zIExhYnMgV0Z4eHggc2VyaWVzIChXRjIwMCBhbmQgZnVydGhlcikN
Ci0tIA0KMi4yMC4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
