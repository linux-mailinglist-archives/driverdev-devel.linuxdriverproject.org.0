Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E10013C0D2
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:27:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 236922051C;
	Wed, 15 Jan 2020 12:27:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id imWjEPKCRkYh; Wed, 15 Jan 2020 12:27:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2D9C120530;
	Wed, 15 Jan 2020 12:27:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B229F1BF5A0
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A704885F9D
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KDGX1quAytmz for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:27:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2050.outbound.protection.outlook.com [40.107.220.50])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CEE2085F8A
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 12:27:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J6zh68k01ZrTOlmG93C96OaWRdlFTyyGnwUJHxhEw3Wt6NS5WOa5J+JQZsIlI0XoNdvX755a5aoHbEi5OobMWcT1JQV49gkiUpup1zVRqbfU5Fbjjr4EFxXaeYvzW35XwOz6NR/VsEf07Y3Bm7he4iD9P9bzQUzu05kWD1tUBTJ5Z6AzVAkhBmYB0TnDBJ4M+iL5XNe4wdlVJ0Uipgk+20C2JBQc7J5sqxKm8jhU6RpXxKVjOhZRXJk5TnbrnuK988IoRa4MGFSEkPH9oQ/YDL+LOOEgho27yAHgPLsxAc0a1nwsEE7iFABkKmKdbTFrSvV6Ye0DV0/iC2CrnDZzYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TkgqQrIIiJU7w+2JUxpXKH/R2F2qsPbaxSas1tRjHT8=;
 b=X603RyOwVYi58MELU9aiTtA09et6o2PkGfAUl7kIvkZ59ifPRfiuz2gFT/+MHFfJyuxdVrdDqWkpnCvrbn6atkGFw3gWjqGBCTo0H4zZEEW1nLTLnVQN/iz7hdixSqc/N7HlCBZ4DBLzm/AySr73hrcQVyNFtvWfdkA9GJ4HQ1n9/PIYZmBfZbLyxEcs1ptfwrKIDZ2591KRsLxURZ4+N/bcbJtLcC8VVvg2W69ZeT2kEINv45qwtT0fr5qd2psWgkCz4kwMDkdDH1Z7+QdbSSd8f/UpksNwvBRCpgtMomCngwFDA9eXVZvTtrijKLJxOFzzuZuW/+43myvjr6TSvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TkgqQrIIiJU7w+2JUxpXKH/R2F2qsPbaxSas1tRjHT8=;
 b=KCNE9nj1SV3WqpIvopym14gcliFzkybuhFowROUcFrRsHHGrI2ohlNBiZ6+7FBB+uaYHfGeFIkIbYQdBDdjwhVucPe4q1dM2UdMzTi6udFTUrXQDfPrSkhLox8cT6DRCco6ff4BjREWwJdC/HSHd4pkP6zvz8Rxz07e9ANCHav4=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3934.namprd11.prod.outlook.com (10.255.180.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Wed, 15 Jan 2020 12:12:26 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 12:12:26 +0000
Received: from pc-42.silabs.com (37.71.187.125) by
 PR2PR09CA0009.eurprd09.prod.outlook.com (2603:10a6:101:16::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 12:12:24 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 13/65] staging: wfx: drop struct wfx_ht_info
Thread-Topic: [PATCH 13/65] staging: wfx: drop struct wfx_ht_info
Thread-Index: AQHVy50M0EAJP1ADu029KtQ4ImyJaA==
Date: Wed, 15 Jan 2020 12:12:26 +0000
Message-ID: <20200115121041.10863-14-Jerome.Pouiller@silabs.com>
References: <20200115121041.10863-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20200115121041.10863-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR2PR09CA0009.eurprd09.prod.outlook.com
 (2603:10a6:101:16::21) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.25.0
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 042de682-f2cc-48a5-441e-08d799b42f04
x-ms-traffictypediagnostic: MN2PR11MB3934:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB39340ED852463436BEC4A5B793370@MN2PR11MB3934.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:242;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(396003)(136003)(376002)(366004)(346002)(199004)(189003)(54906003)(110136005)(86362001)(956004)(107886003)(2616005)(316002)(36756003)(71200400001)(52116002)(7696005)(478600001)(8936002)(81156014)(8676002)(4326008)(81166006)(6486002)(2906002)(26005)(66946007)(16526019)(186003)(5660300002)(66574012)(1076003)(66556008)(64756008)(66446008)(85182001)(66476007)(85202003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3934;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gnki82aZNuguNZgA9k/gphWZgoXKAjbiMWyom6WkCfYjduM+5RruFaCtuoFMAU58QWltRmrGK+3JwwztVW080Of4E8Uirbzw4mh9K0lCvumyfD6ptiNi2uSmAKkq+s9Y94rQdkpSD+SgaL1+TMc2Bzli4rzDaBpMG0MSKTVnF6rpCPVtFEz813ReyFM0iqhBX64UFp5L6anK1KZLgzJbxmMgs/uYyzBRfRt/mZD3QRxLGmkZh5kDKl2N3S3SyzsnQ55XApA5AHFBDVzgDx9oC8PprrWQhD225udCW6yP9KoMYjC++0BbUPmZlgO75lDj7+4bZammeiEJD/Fd0sw9kpGne4edTj/IrfO9V+UZH8+yePZGvT3YPGpht2EMuk7RBEoTCUwlXaJCz2m0h9P2vzCWUlMdTvdqZmZQsOVWfZO/4BXBjZb6k0W8P59bCpXc
Content-ID: <83C039817D7DCD49AD70682547D5CCF7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 042de682-f2cc-48a5-441e-08d799b42f04
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 12:12:26.5252 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PT/vV4sPAaLrAyldwSV8QnYEJd4EQHU9jVbahw1RegJjm/iIBQx9wrEDOTB33J+pfVt3aZu/K0qDbCcgk0D3Rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3934
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhp
cyBzdHJ1Y3QgaXMgbm8gbW9yZSB1c2VkLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxs
ZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngv
c3RhLmMgfCAxOCArKystLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmgg
fCAgNiAtLS0tLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggfCAgMSAtCiAzIGZpbGVzIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKaW5kZXgg
ZmNkOWZlNjZlNDE3Li5kZDJkMDQyMmM5Y2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93
Zngvc3RhLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtNTE3LDcgKzUxNyw2
IEBAIHN0YXRpYyB2b2lkIHdmeF9kb191bmpvaW4oc3RydWN0IHdmeF92aWYgKnd2aWYpCiAJd2Z4
X3VwZGF0ZV9maWx0ZXJpbmcod3ZpZik7CiAJbWVtc2V0KCZ3dmlmLT5ic3NfcGFyYW1zLCAwLCBz
aXplb2Yod3ZpZi0+YnNzX3BhcmFtcykpOwogCXd2aWYtPnNldGJzc3BhcmFtc19kb25lID0gZmFs
c2U7Ci0JbWVtc2V0KCZ3dmlmLT5odF9pbmZvLCAwLCBzaXplb2Yod3ZpZi0+aHRfaW5mbykpOwog
CiBkb25lOgogCW11dGV4X3VubG9jaygmd3ZpZi0+d2Rldi0+Y29uZl9tdXRleCk7CkBAIC04MTIs
MTEgKzgxMSw2IEBAIHN0YXRpYyBpbnQgd2Z4X3VwbG9hZF9iZWFjb24oc3RydWN0IHdmeF92aWYg
Knd2aWYpCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyBpbnQgd2Z4X2lzX2h0KGNvbnN0IHN0cnVj
dCB3ZnhfaHRfaW5mbyAqaHRfaW5mbykKLXsKLQlyZXR1cm4gaHRfaW5mby0+Y2hhbm5lbF90eXBl
ICE9IE5MODAyMTFfQ0hBTl9OT19IVDsKLX0KLQogc3RhdGljIHZvaWQgd2Z4X2pvaW5fZmluYWxp
emUoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJCQkgICAgICBzdHJ1Y3QgaWVlZTgwMjExX2Jzc19j
b25mICppbmZvKQogewpAQCAtODMwLDE3ICs4MjQsMTIgQEAgc3RhdGljIHZvaWQgd2Z4X2pvaW5f
ZmluYWxpemUoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJcmN1X3JlYWRfbG9jaygpOwogCWlmIChp
bmZvLT5ic3NpZCAmJiAhaW5mby0+aWJzc19qb2luZWQpCiAJCXN0YSA9IGllZWU4MDIxMV9maW5k
X3N0YSh3dmlmLT52aWYsIGluZm8tPmJzc2lkKTsKLQlpZiAoc3RhKSB7Ci0JCXd2aWYtPmh0X2lu
Zm8uaHRfY2FwID0gc3RhLT5odF9jYXA7CisJcmN1X3JlYWRfdW5sb2NrKCk7CisJaWYgKHN0YSkK
IAkJd3ZpZi0+YnNzX3BhcmFtcy5vcGVyYXRpb25hbF9yYXRlX3NldCA9CiAJCQl3ZnhfcmF0ZV9t
YXNrX3RvX2h3KHd2aWYtPndkZXYsIHN0YS0+c3VwcF9yYXRlc1t3dmlmLT5jaGFubmVsLT5iYW5k
XSk7Ci0JCXd2aWYtPmh0X2luZm8ub3BlcmF0aW9uX21vZGUgPSBpbmZvLT5odF9vcGVyYXRpb25f
bW9kZTsKLQl9IGVsc2UgewotCQltZW1zZXQoJnd2aWYtPmh0X2luZm8sIDAsIHNpemVvZih3dmlm
LT5odF9pbmZvKSk7CisJZWxzZQogCQl3dmlmLT5ic3NfcGFyYW1zLm9wZXJhdGlvbmFsX3JhdGVf
c2V0ID0gLTE7Ci0JfQotCXJjdV9yZWFkX3VubG9jaygpOwotCiAJaWYgKHN0YSAmJgogCSAgICBp
bmZvLT5odF9vcGVyYXRpb25fbW9kZSAmIElFRUU4MDIxMV9IVF9PUF9NT0RFX05PTl9HRl9TVEFf
UFJTTlQpCiAJCWhpZl9kdWFsX2N0c19wcm90ZWN0aW9uKHd2aWYsIHRydWUpOwpAQCAtMTIyNCw3
ICsxMjEzLDYgQEAgaW50IHdmeF9hc3NpZ25fdmlmX2NoYW5jdHgoc3RydWN0IGllZWU4MDIxMV9o
dyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsCiAKIAlXQVJOKHd2aWYtPmNoYW5uZWws
ICJjaGFubmVsIG92ZXJ3cml0ZSIpOwogCXd2aWYtPmNoYW5uZWwgPSBjaDsKLQl3dmlmLT5odF9p
bmZvLmNoYW5uZWxfdHlwZSA9IGNmZzgwMjExX2dldF9jaGFuZGVmX3R5cGUoJmNvbmYtPmRlZik7
CiAKIAlyZXR1cm4gMDsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmgg
Yi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5oCmluZGV4IGI1ZDhkNjQ5NDE1Ny4uZTBiNTQzMzJl
OThhIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5oCisrKyBiL2RyaXZlcnMv
c3RhZ2luZy93Zngvc3RhLmgKQEAgLTIzLDEyICsyMyw2IEBAIGVudW0gd2Z4X3N0YXRlIHsKIAlX
RlhfU1RBVEVfQVAsCiB9OwogCi1zdHJ1Y3Qgd2Z4X2h0X2luZm8gewotCXN0cnVjdCBpZWVlODAy
MTFfc3RhX2h0X2NhcCBodF9jYXA7Ci0JZW51bSBubDgwMjExX2NoYW5uZWxfdHlwZSBjaGFubmVs
X3R5cGU7Ci0JdTE2IG9wZXJhdGlvbl9tb2RlOwotfTsKLQogc3RydWN0IHdmeF9oaWZfZXZlbnQg
ewogCXN0cnVjdCBsaXN0X2hlYWQgbGluazsKIAlzdHJ1Y3QgaGlmX2luZF9ldmVudCBldnQ7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oIGIvZHJpdmVycy9zdGFnaW5nL3dm
eC93ZnguaAppbmRleCAwYTNkZjM4MmFmMDMuLmJhNmUwZTkyM2Y0YiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9zdGFnaW5nL3dmeC93ZnguaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oCkBA
IC0xMTMsNyArMTEzLDYgQEAgc3RydWN0IHdmeF92aWYgewogCXUzMgkJCWVycF9pbmZvOwogCWlu
dAkJCWNxbV9yc3NpX3Rob2xkOwogCWJvb2wJCQlzZXRic3NwYXJhbXNfZG9uZTsKLQlzdHJ1Y3Qg
d2Z4X2h0X2luZm8JaHRfaW5mbzsKIAl1bnNpZ25lZCBsb25nCQl1YXBzZF9tYXNrOwogCXN0cnVj
dCBpZWVlODAyMTFfdHhfcXVldWVfcGFyYW1zIGVkY2FfcGFyYW1zW0lFRUU4MDIxMV9OVU1fQUNT
XTsKIAlzdHJ1Y3QgaGlmX3JlcV9zZXRfYnNzX3BhcmFtcyBic3NfcGFyYW1zOwotLSAKMi4yNS4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
