Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D572213C41A
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:56:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7750B8649A;
	Wed, 15 Jan 2020 13:56:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7B2makeiLsr; Wed, 15 Jan 2020 13:56:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 303B68669A;
	Wed, 15 Jan 2020 13:55:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 506CC1BF573
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4D6A585F43
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wDDTQqlU_62w for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:55:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2069.outbound.protection.outlook.com [40.107.237.69])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 724D285F6C
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:55:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FcGS5yVCSmN0pzzkQvGr3UilUEo+1qC7awgO9HpsSVzedMRyyQ4XdkZ4e8TDMjLRbwEy/NcSeIiGTQCScAnZsicO3hqmsoI5ggoYSCaFvOYXGsKwyq/6c81aGM+GOV8c40hharDK7kkd3UuWRmKfo3Z+EiTJm6i0oQMMbvGCRGuVU5HSOL+6rSysEcVcMIiv2v1zV8uPg8/l4Qr63MDQ/wWcgcRSGxfqzKEIqSPtuKUFgcUNxORHHqiwGyg9AqQthXgyHBCZXIxgeflGvKreBXkIP6XzivZoI8Uscg1WwfvoDho6AU5PxylikX60dr/Efxw96Sa0So9hQufvuina6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NV6i8iFSi16VOyb/8DY1eR4/NhyYerJyThLKXln0oV0=;
 b=j2zV0Pp9p4+Yqw8cJg3CwBxtsiD5emvvjVFrHwJIEBL+6WvzJkN1rVU5MYSHiECEFJnPOo0zNnbVEt5nD1aEV8gihyrBieAnuKt1gAJSU20ZSh1a9zGMYXDdPPGB26buyqhl41qzG7UfgXdUK+4JBUCU2ZP50YvbFzehZX5AhIwsxSto66vx+I9XfNEiCsr4cVUU0bDESrdawHzLvf+I4DftvrEz1S2aKeotSt3nmaojSb/YbaAPkM4xT3FewCew/Yt1dsys/osRQmnYG+96Gz7rb29li7UR9266ajbhxyiAaS6HWGPPB7tgd6hsc+ZP8tSJ6YRYdxSbkFqlZKhEuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NV6i8iFSi16VOyb/8DY1eR4/NhyYerJyThLKXln0oV0=;
 b=D6cLMlm6SR1Y9NqD4ZOkGkZU0wsLUNxhpTSLowLMSC83pq423NOuF2IOC0uHL1vcv+Iu/+dUJ47K2ynysVa7I95V2l00DApYzsrPABdkw0Du64uGe6i9gpDAZN2O9ArOdNFyrOlnl+dYhrrKw1SnbUfWo1FQToxu5F8myyOns90=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3661.namprd11.prod.outlook.com (20.178.252.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 15 Jan 2020 13:55:32 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:55:32 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:55:27 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 59/65] staging: wfx: ensure that packet_id is unique
Thread-Topic: [PATCH v2 59/65] staging: wfx: ensure that packet_id is unique
Thread-Index: AQHVy6txUER+GWdktEqnlcABTK2d+A==
Date: Wed, 15 Jan 2020 13:55:28 +0000
Message-ID: <20200115135338.14374-60-Jerome.Pouiller@silabs.com>
References: <20200115135338.14374-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20200115135338.14374-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20)
 To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.25.0
x-originating-ip: [2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0631c169-8da4-470c-07b5-08d799c29441
x-ms-traffictypediagnostic: MN2PR11MB3661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB36615E69458E6964E3BAD05493370@MN2PR11MB3661.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(136003)(346002)(366004)(199004)(189003)(8886007)(6486002)(316002)(54906003)(71200400001)(36756003)(6506007)(66476007)(66446008)(66946007)(110136005)(8676002)(81166006)(81156014)(478600001)(86362001)(2616005)(4326008)(66574012)(2906002)(107886003)(1076003)(16526019)(186003)(85202003)(5660300002)(6512007)(52116002)(64756008)(66556008)(85182001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3661;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: czYwTgkgAJdIhp0rUR/YWE1J3SzIhZZSxC0aLsP/8Df9dvrisMye2EPEt2aOryeyGOy104iGqionEfVhYkvEXPViTdo/ScHD7TBDfZZTfBFgWsGqk1fb+zsVB+NIZqlmJP8q9DTZLe6Ua5cPxBjFJ8YcGlqsQyz/c+A/NJRArXo8DSdee8PMdO+CcujT1if1MpEPdneGbPBo5DmUE7uT/tRAyxwtktmXs5Y6lYcEjd93A4ujPYZ/ffS7YXNiwsUCSrgg+Ycc3XLj5w3o5FUOySjAyam0dALOa9tBEqZ5ntM+i8yQammEsFjm8BPzDxgQCDfs3OfCiVCeVytOcJzabNXe0V+cfmQk3OStHhT3aQQ39LJc0+bCw37znB8HV/9A6JUHBME5V1W/W16kDBpXXQqXJFZSEBhDeflDMiUq1AgfOV3O+43YzH5h3CwA86/4
Content-ID: <0171E68131C9814BAA64F3F408878735@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0631c169-8da4-470c-07b5-08d799c29441
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:55:28.8268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Iq6b9uIEO1aQ/lOTybKcvhMlKiqD1cC2jeA2x9jBpNNaf3geZIFRpXdMLbTCvsX+8hRyykxY1Qbv6w19UoVrEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3661
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSW4g
Y3VycmVudCBjb2RlLCBwYWNrZXRfaWQgaXMgZGVyaXZhdGVkIGZyb20gbWFjODAyLjExIHBhY2tl
dCBzZXF1ZW5jZQpudW1iZXIsIGJ1dCB0aGlzIG51bWJlciBpcyBvbmx5IHVuaXF1ZSBmb3IgYSBz
dGF0aW9uLiBJdCBpcyBub3QKc3VmZmljaWVudC4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBv
dWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L2RhdGFfdHguYyB8IDggKysrKysrLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggICAg
IHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvZGF0YV90eC5jCmluZGV4IGMzMjk5NDU1MzYzMy4uMjBmNDc0MDczNGYyIDEwMDY0
NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYworKysgYi9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2RhdGFfdHguYwpAQCAtNDY5LDggKzQ2OSwxMiBAQCBzdGF0aWMgaW50IHdmeF90eF9p
bm5lcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKIAog
CS8vIEZpbGwgdHggcmVxdWVzdAogCXJlcSA9IChzdHJ1Y3QgaGlmX3JlcV90eCAqKWhpZl9tc2ct
PmJvZHk7Ci0JcmVxLT5wYWNrZXRfaWQgPSBxdWV1ZV9pZCA8PCAxNiB8Ci0JCQkgSUVFRTgwMjEx
X1NFUV9UT19TTihsZTE2X3RvX2NwdShoZHItPnNlcV9jdHJsKSk7CisJLy8gcGFja2V0X2lkIGp1
c3QgbmVlZCB0byBiZSB1bmlxdWUgb24gZGV2aWNlLiAzMmJpdHMgYXJlIG1vcmUgdGhhbgorCS8v
IG5lY2Vzc2FyeSBmb3IgdGhhdCB0YXNrLCBzbyB3ZSB0YWUgYWR2YW50YWdlIG9mIGl0IHRvIGFk
ZCBzb21lIGV4dHJhCisJLy8gZGF0YSBmb3IgZGVidWcuCisJcmVxLT5wYWNrZXRfaWQgPSBxdWV1
ZV9pZCA8PCAyOCB8CisJCQkgSUVFRTgwMjExX1NFUV9UT19TTihsZTE2X3RvX2NwdShoZHItPnNl
cV9jdHJsKSkgPDwgMTYgfAorCQkJIChhdG9taWNfYWRkX3JldHVybigxLCAmd3ZpZi0+d2Rldi0+
cGFja2V0X2lkKSAmIDB4RkZGRik7CiAJcmVxLT5kYXRhX2ZsYWdzLmZjX29mZnNldCA9IG9mZnNl
dDsKIAlpZiAodHhfaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhfQ1RMX1NFTkRfQUZURVJfRFRJ
TSkKIAkJcmVxLT5kYXRhX2ZsYWdzLmFmdGVyX2R0aW0gPSAxOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9zdGFnaW5nL3dmeC93ZnguaCBiL2RyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmgKaW5kZXggNWQ2
MTk0NmUzM2UwLi44Yjg1YmIxYWJiOWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
d2Z4LmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaApAQCAtNTQsNiArNTQsNyBAQCBz
dHJ1Y3Qgd2Z4X2RldiB7CiAJaW50CQkJdHhfYnVyc3RfaWR4OwogCWF0b21pY190CQl0eF9sb2Nr
OwogCisJYXRvbWljX3QJCXBhY2tldF9pZDsKIAl1MzIJCQlrZXlfbWFwOwogCXN0cnVjdCBoaWZf
cmVxX2FkZF9rZXkJa2V5c1tNQVhfS0VZX0VOVFJJRVNdOwogCi0tIAoyLjI1LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
