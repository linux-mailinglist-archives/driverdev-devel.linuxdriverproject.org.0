Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 876FFDA87D
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 11:40:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D925788629;
	Thu, 17 Oct 2019 09:40:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5vxbL8oDWoPV; Thu, 17 Oct 2019 09:40:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E658885FB;
	Thu, 17 Oct 2019 09:40:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7AC9F1BF2CF
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 72E4423C58
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K8MRNMrOq0Xn for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 09:40:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770071.outbound.protection.outlook.com [40.107.77.71])
 by silver.osuosl.org (Postfix) with ESMTPS id B585A20368
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 09:40:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jfsgC0vAI6IkLGmr5U6rVtoFWmcqa5t3nSGOUMxBnNX/7kMZ4QKdO92s6gEU2ElNsVifxxRsUZ2Y/GxeRZm4yUiNFL+lr9Qpao7/jyi73jeri1n/pGLVTD2zUk2sRlz+p/uelaooCNxAX/x8AoeSha351X14RIPH6Hgj9XSTHscVkLqjfBZMNmpcEWYOrulNVJP7k2MY8QO54UgmgByi+4BTD2vkybcCQWIXO1zdI8MXds6zVo64OUjuI+eYHyvviOpsjiRbtlqUrTDt2IMh9hkCUBeZBo1mPHxImkXV01YfHFahNwQxxx55+9JcQrDRcdRv/rxJn8A7wHPxxDQKAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/1wWnsCyhZUDAxOYX9Ja4ycDlwBmWE6oF1VoNnprKA=;
 b=l6EWUtC3UpgCjmcqesisbJXdI+HmtGTCae07AHlTCBT5h5C0Uyz766sxJuS8JO7aOaPHKhWLCbCcF1N7iEziYSQIAOe6GzMnrlmEgad38WWTfy8Y/mMqcCfWA58vvw9X+sv4/4+r+pVYfOnPOx8h2xVin1xhmWS7nhKHuDPuFFo4wgOIxnxJI9uTzGT7c8qNQFNfxOLkWqCIRMID0xS5N0wzbWDY+5waBfnAYRE/4wMuRhYnLRgoBV7nYqCqvZ33qvZbYXVrrKiVAlX+XZZWnmEwglsHQUNXfl+/vxqPcRediEPqYNhsu/98LpwgYy5ci6jIwpKBlrMR0O2M290JLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/1wWnsCyhZUDAxOYX9Ja4ycDlwBmWE6oF1VoNnprKA=;
 b=lICelXh9AuXJmv1Eu+lTYpipBgrCQWMQpRcR5J1U+nrhZcuaQiLhyaXDWqNY/hBSHJiFmkIK//b5PkO9GCc4aArSz1sxvLuJZsSKf0e3+Wtyh6KdOMMOBSRJEVmM3HLnJnxD2FQdg87hpCb5ZSU398TB+oBz1BJ/2MjUz9sN7Q8=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4254.namprd11.prod.outlook.com (52.135.38.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Thu, 17 Oct 2019 09:40:05 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.023; Thu, 17 Oct 2019
 09:40:05 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 1/6] staging: wfx: drop module version
Thread-Topic: [PATCH 1/6] staging: wfx: drop module version
Thread-Index: AQHVhM7a48ZYfiejf0uP1IZCpGoCng==
Date: Thu, 17 Oct 2019 09:40:04 +0000
Message-ID: <20191017093954.657-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4b1e833e-7b32-46be-fac4-08d752e5fda5
x-ms-traffictypediagnostic: MN2PR11MB4254:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4254DB68B3D5A794918F3C6E936D0@MN2PR11MB4254.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(396003)(366004)(346002)(376002)(189003)(199004)(91956017)(76116006)(54906003)(71190400001)(66946007)(26005)(86362001)(186003)(305945005)(99286004)(66476007)(5660300002)(2501003)(64756008)(36756003)(14454004)(66574012)(66556008)(1076003)(7736002)(71200400001)(66066001)(66446008)(2906002)(2351001)(966005)(478600001)(6512007)(6116002)(3846002)(6506007)(14444005)(6916009)(256004)(316002)(2616005)(6486002)(25786009)(476003)(486006)(81156014)(1730700003)(107886003)(102836004)(81166006)(5640700003)(4326008)(6436002)(8676002)(6306002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4254;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M1Dcbon3nkcDXxrto1fWsTK6ZrsaWTSJSrU/+xPYbihEzxu52hpT3hpb/jfpv7VIr76/LR9TuemmVAjyhxOzZA3fchEc557DCTptskxOwGkukdn363MUfkrZB65Vi9EKcp+hWbYkPy3BViB3LqjumSJQ4TVE9uy0wk7NqeryoXFZFYuHrbo2OOBaxFYskaeXT4Z98JP6VtwnlVnXvmvTmIOjdBckdMLhAQYgYD/ukrZAMLL54U0bsEmGoTvKaiFOMant5K9mTvuvN8a0u8wfA9YKydFWGN628AKxNheaYP2ja8Vzgqfy1PXIaks15y+Pq+VUONajBpv4zsEFyKj6AF7Bff7Dx5RolORcWnhmWkra6jTIp68G4V7h+m2213LaNaxQjyJm36VQ+tmAAgUMT5XqiM020jhS+JjOEpcokKcFWKxWp06X1nFUd2zH7jLJL+cUgSHnX20IUS9ozvKOiQ==
Content-ID: <D5F481342280ED47B2CBB81762E285A0@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b1e833e-7b32-46be-fac4-08d752e5fda5
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 09:40:05.0417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qNWlcSckCcSu8GaSz9T1/SUASzbm0oABj7KADTlyNKTKL4SnbnIe07shDtT68N39ZGW55nthM1OTeVxFGsNcag==
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQp3
ZnhfdmVyc2lvbi5oIHNheXMgdGhhdCB0aGlzIGNvZGUgaXMgc2FtZSBzYW1lIHRoYW4gZHJpdmVy
IDIuMy4xIGhvc3RlZA0Kb24gZ2l0aHViOg0KDQogICAgaHR0cHM6Ly9naXRodWIuY29tL3NpbGlj
b25sYWJzL3dmeC1saW51eC1kcml2ZXIvdHJlZS8yLjMuMS1wdWJsaWMNCg0KSG93ZXZlciwgaXQg
aXMgaW5hY2N1cmF0ZSwgZHJpdmVyIGluLXRyZWUgY29udGFpbnMgbXVsdGlwbGUgc21hbGwNCnBh
dGNoZXMgYWhlYWQgMi4zLjEuDQoNCkkgcHJlZmVyIHRvIGRyb3AgdGhpcyBjb25mdXNpbmcgaW5m
b3JtYXRpb24uDQoNClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91
aWxsZXJAc2lsYWJzLmNvbT4NCi0tLQ0KIGRyaXZlcnMvc3RhZ2luZy93ZngvVE9ETyAgICAgICAg
ICB8IDMgLS0tDQogZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMgICAgICAgIHwgNCAtLS0tDQog
ZHJpdmVycy9zdGFnaW5nL3dmeC93ZnhfdmVyc2lvbi5oIHwgMyAtLS0NCiAzIGZpbGVzIGNoYW5n
ZWQsIDEwIGRlbGV0aW9ucygtKQ0KIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3N0YWdpbmcv
d2Z4L3dmeF92ZXJzaW9uLmgNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvVE9E
TyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvVE9ETw0KaW5kZXggYmU5OTBlOGYxOGIxLi5lNDQ3NzIy
ODlhZjggMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L1RPRE8NCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy93ZngvVE9ETw0KQEAgLTEsOSArMSw2IEBADQogVGhpcyBpcyBhIGxpc3Qgb2Yg
dGhpbmdzIHRoYXQgbmVlZCB0byBiZSBkb25lIHRvIGdldCB0aGlzIGRyaXZlciBvdXQgb2YgdGhl
DQogc3RhZ2luZyBkaXJlY3RvcnkuDQogDQotICAtIHdmeF92ZXJzaW9uLmggaXMgc3RpbGwgdGhl
cmUgaW4gb3JkZXIgdG8gZW5zdXJlIHN5bmNocm9uaXphdGlvbiB3aXRoIGdpdGh1Yi4NCi0gICAg
SXQgY2FuIGJlIGRyb3BwZWQgYXMgc29vbiBhcyBkZXZlbG9wbWVudCBpcyBlbnRpcmVseSBpbiBr
ZXJuZWwNCi0NCiAgIC0gSSBoYXZlIHRvIHRha2UgYSBkZWNpc2lvbiBhYm91dCBzZWN1cmUgbGlu
ayBzdXBwb3J0LiBJIGNhbjoNCiAgICAgICAtIGRyb3AgY29tcGxldGVseQ0KICAgICAgIC0ga2Vl
cCBpdCBpbiBhbiBleHRlcm5hbCBwYXRjaCAobXkgcHJlZmVycmVkIG9wdGlvbikNCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFp
bi5jDQppbmRleCBkMjUwOGJjOTUwZmEuLjE1N2UwZmMwMTA3ZSAxMDA2NDQNCi0tLSBhL2RyaXZl
cnMvc3RhZ2luZy93ZngvbWFpbi5jDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYw0K
QEAgLTMzLDE0ICszMywxMiBAQA0KICNpbmNsdWRlICJzZWN1cmVfbGluay5oIg0KICNpbmNsdWRl
ICJoaWZfdHhfbWliLmgiDQogI2luY2x1ZGUgImhpZl9hcGlfY21kLmgiDQotI2luY2x1ZGUgIndm
eF92ZXJzaW9uLmgiDQogDQogI2RlZmluZSBXRlhfUERTX01BWF9TSVpFIDE1MDANCiANCiBNT0RV
TEVfREVTQ1JJUFRJT04oIlNpbGljb24gTGFicyA4MDIuMTEgV2lyZWxlc3MgTEFOIGRyaXZlciBm
b3IgV0Z4Iik7DQogTU9EVUxFX0FVVEhPUigiSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3Vp
bGxlckBzaWxhYnMuY29tPiIpOw0KIE1PRFVMRV9MSUNFTlNFKCJHUEwiKTsNCi1NT0RVTEVfVkVS
U0lPTihXRlhfTEFCRUwpOw0KIA0KIHN0YXRpYyBpbnQgZ3Bpb193YWtldXAgPSAtMjsNCiBtb2R1
bGVfcGFyYW0oZ3Bpb193YWtldXAsIGludCwgMDY0NCk7DQpAQCAtNDgwLDggKzQ3OCw2IEBAIHN0
YXRpYyBpbnQgX19pbml0IHdmeF9jb3JlX2luaXQodm9pZCkNCiB7DQogCWludCByZXQgPSAwOw0K
IA0KLQlwcl9pbmZvKCJ3Zng6IFNpbGljb24gTGFicyAiIFdGWF9MQUJFTCAiXG4iKTsNCi0NCiAJ
aWYgKElTX0VOQUJMRUQoQ09ORklHX1NQSSkpDQogCQlyZXQgPSBzcGlfcmVnaXN0ZXJfZHJpdmVy
KCZ3Znhfc3BpX2RyaXZlcik7DQogCWlmIChJU19FTkFCTEVEKENPTkZJR19NTUMpICYmICFyZXQp
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnhfdmVyc2lvbi5oIGIvZHJpdmVy
cy9zdGFnaW5nL3dmeC93ZnhfdmVyc2lvbi5oDQpkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQNCmlu
ZGV4IDZlN2YzMDIwN2M3My4uMDAwMDAwMDAwMDAwDQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L3dmeF92ZXJzaW9uLmgNCisrKyAvZGV2L251bGwNCkBAIC0xLDMgKzAsMCBAQA0KLS8qIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8NCi0vKiBUSElTIEZJTEUgSVMgQVVU
T01BVElDQUxMWSBHRU5FUkFURUQuIERPIE5PVCBFRElUISAqLw0KLSNkZWZpbmUgV0ZYX0xBQkVM
ICIyLjMuMSINCi0tIA0KMi4yMC4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
