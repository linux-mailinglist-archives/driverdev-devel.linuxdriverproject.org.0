Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAC613C3F4
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:55:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EED682052A;
	Wed, 15 Jan 2020 13:55:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q7raP4+28IjG; Wed, 15 Jan 2020 13:55:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 37472204B0;
	Wed, 15 Jan 2020 13:55:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 571341BF573
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2EC6285F4C
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cLIvr5rdDSfh for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:55:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770072.outbound.protection.outlook.com [40.107.77.72])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4F70885F32
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:55:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XozFP+K0pmBGntJV0QAOb7fHYEJQSWod35N8+4/w11Yp2GU3h62M+kpqYsNAuSvNUrNIzbsYPEVRAXiXtdLWG+VU9k2wKX8n/RWNhhzTJpUwcFOefmTTngPY5Q3zYT43ReLeYyBLBt1P0zr3d1nXNgeJ7aRch2ZCqzUuShMzbVAEIvXiZYMOGMUY3o8LTgO0DLT4cLDSiw9J4Js9FW4tl4dOdoGLH6g0SEhZ40MJLDVhujKEZHrG6HuSFrTlivn/b71NL7bap1JjFyUkVKrijDG9ceziMTO/+7Nuz64e5bDswfdYcEck1UU51OQUBqkx676OnNatideHfN6jcMDhEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bwh7lWsf/cwWs0AEW/3avuQIgItjw4kHtgAkBvBt6+k=;
 b=me5NHcqL0N1mP3L+pnBxrkIAvdllEXcSCED7Mtd0uy5tlL/ZQAzvMUF/s4xZLd0S6Jvyre4+ayFI+v5zQphiXjtUa1kCzBo4iiJLsmIYyb0DJz4dgJnv1sWZlGwaOAM+I9xje3kFxHAlQof0hFMh/jDI7bHkpJcHxWd+5MkTzoEWAZ2jtrtSMlhszwip/K9iJBgA20yEAfBN63Gyman1xGhGtdxdUxZNhhhGEWFdegjwpjP0bSdwV+Skh6SQAWqwqBPasN+mAr3bPIwOVb3Ax/H+kzooAAk7PwAC/hOqjiPtk7lcCrZyq51mx5DiIlWD5QQXAZmTFIgy+pUZDNIEgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bwh7lWsf/cwWs0AEW/3avuQIgItjw4kHtgAkBvBt6+k=;
 b=QSp0W05RFK147S5doTITtYYBj9+dEPISSniNwDXE69JLTPbFRrfR3oQ8+ND2fYBW5LLyOKjU9PRhlehJCN9JvDOruir8M81L6oKAZ4wh5YA8HFdgrvjLzrPkMzBEDwzNv9U/ei1NcRBAwuHTNlUGqDYZiv1Ffh6XwM3z+HKwkO8=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3661.namprd11.prod.outlook.com (20.178.252.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 15 Jan 2020 13:55:24 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:55:24 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:55:08 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 46/65] staging: wfx: relocate "buffered" information to
 sta_priv
Thread-Topic: [PATCH v2 46/65] staging: wfx: relocate "buffered" information
 to sta_priv
Thread-Index: AQHVy6tm4JGe3+qchECT4G6SL0M87w==
Date: Wed, 15 Jan 2020 13:55:09 +0000
Message-ID: <20200115135338.14374-47-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: f8354f39-d3af-42ab-f250-08d799c288bf
x-ms-traffictypediagnostic: MN2PR11MB3661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB36616C9A44F4A43C7CC6AB1F93370@MN2PR11MB3661.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
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
x-microsoft-antispam-message-info: T1qyIWEd3/AvDotyw+mNpCTwbLbPYkr8R9Vjodzp8YCltkcZCLOHCk4ke9/8ELfwH5zB0i25evXe3Ef5rR3oryBNEXtqnBIMq2uwY6z9IKNbKSAs/7li2LO2xzWNhfBBxpdFuqAM2iOM0WhtKE4fFFYKU07AlrZXEpQePcdwXbDt0qF1Y15+52fBHVZfW2GTD5NX2tcgvC2xdr+eee6xCQiozTKbEBZvbOOq6uO679CMB4l+gn3D4Fdawq5F4emQbSVJirs/V3L4JZ/nmYSP1oVI7W5aEEquDfAhi09qMga429YHtabEEx8o+S0eTj/g3mpYwzOY1O2tlDUzUTccAR+F1Rv4O2OPphSY38X99VEXFDkD5NHxIvN5ZubwGzcF2PZhfsKEuGve3YTRHVWdbqo/sYnfiuMGGwfal/2uCWA5TdyiP+fFD0jWB0VAnzAM
Content-ID: <D966BA4DF2C8A34D99A4EDCC46C2D926@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8354f39-d3af-42ab-f250-08d799c288bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:55:09.5039 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jBEh5aDgNxD2H1tDJYOYHXdeOo7PBr/qeRfU+h0ASXRXYKqumzVBcETXQCV9ccwMYPRukqYlM+DAor9U00P3VQ==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSXQg
c2ltcGxpZnkgdGhlIGNvZGUgaWYgZmllbGQgYnVmZmVyZWQgaXMgaG9zdGVkIGluIHRoZSBzdHJ1
Y3Qgc3RhX3ByaXYKaW5zdGVhZCBvZiBpbiB0aGUgc3RydWN0IHdmeF9saW5rX2VudHJ5LiBNb3Jl
IGdsb2JhbGx5LCBzdHJ1Y3QKd2Z4X2xpbmtfZW50cnkgaGFzIG5vIHJlYWwgcmVhc29ucyB0byBl
eGlzdCBhbmQgc2hvdWxkIGJlIGRyb3BwZWQgc29vbi4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1l
IFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvd2Z4L2RhdGFfdHguYyB8IDUwICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0t
CiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguaCB8ICA0IC0tLQogZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuYyAgICAgfCAgMSArCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5oICAgICB8ICA2
ICsrKysrCiA0IGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9kYXRhX3R4LmMKaW5kZXggZTY2OWZjNDQ4NWU2Li45MzEzYzhmNWQ0ZDggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvZGF0YV90eC5jCkBAIC0yOTEsNyArMjkxLDYgQEAgc3RhdGljIGludCB3ZnhfYWxs
b2NfbGlua19pZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29uc3QgdTggKm1hYykKIAogCQllbnRy
eS0+c3RhdHVzID0gV0ZYX0xJTktfUkVTRVJWRTsKIAkJZXRoZXJfYWRkcl9jb3B5KGVudHJ5LT5t
YWMsIG1hYyk7Ci0JCW1lbXNldCgmZW50cnktPmJ1ZmZlcmVkLCAwLCBXRlhfTUFYX1RJRCk7CiAJ
CXdmeF90eF9sb2NrKHd2aWYtPndkZXYpOwogCiAJCWlmICghc2NoZWR1bGVfd29yaygmd3ZpZi0+
bGlua19pZF93b3JrKSkKQEAgLTQzNCw2ICs0MzMsNyBAQCBzdGF0aWMgdm9pZCB3ZnhfdHhfbWFu
YWdlX3BtKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVlZTgwMjExX2hkciAqaGRyLAog
CQkJICAgICBzdHJ1Y3QgaWVlZTgwMjExX3N0YSAqc3RhKQogewogCXUzMiBtYXNrID0gfkJJVCh0
eF9wcml2LT5yYXdfbGlua19pZCk7CisJc3RydWN0IHdmeF9zdGFfcHJpdiAqc3RhX3ByaXY7CiAK
IAlzcGluX2xvY2tfYmgoJnd2aWYtPnBzX3N0YXRlX2xvY2spOwogCWlmIChpZWVlODAyMTFfaXNf
YXV0aChoZHItPmZyYW1lX2NvbnRyb2wpKSB7CkBAIC00NDgsMTUgKzQ0OCwxNyBAQCBzdGF0aWMg
dm9pZCB3ZnhfdHhfbWFuYWdlX3BtKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVlZTgw
MjExX2hkciAqaGRyLAogCQkJc2NoZWR1bGVfd29yaygmd3ZpZi0+bWNhc3Rfc3RhcnRfd29yayk7
CiAJfQogCi0JaWYgKHR4X3ByaXYtPnJhd19saW5rX2lkKSB7CisJaWYgKHR4X3ByaXYtPnJhd19s
aW5rX2lkKQogCQl3dmlmLT5saW5rX2lkX2RiW3R4X3ByaXYtPnJhd19saW5rX2lkIC0gMV0udGlt
ZXN0YW1wID0gamlmZmllczsKLQkJaWYgKHR4X3ByaXYtPnRpZCA8IFdGWF9NQVhfVElEKQotCQkJ
d3ZpZi0+bGlua19pZF9kYlt0eF9wcml2LT5yYXdfbGlua19pZCAtIDFdLmJ1ZmZlcmVkW3R4X3By
aXYtPnRpZF0rKzsKLQl9CiAJc3Bpbl91bmxvY2tfYmgoJnd2aWYtPnBzX3N0YXRlX2xvY2spOwog
Ci0JaWYgKHN0YSkKKwlpZiAoc3RhICYmIHR4X3ByaXYtPnRpZCA8IFdGWF9NQVhfVElEKSB7CisJ
CXN0YV9wcml2ID0gKHN0cnVjdCB3Znhfc3RhX3ByaXYgKikmc3RhLT5kcnZfcHJpdjsKKwkJc3Bp
bl9sb2NrX2JoKCZzdGFfcHJpdi0+bG9jayk7CisJCXN0YV9wcml2LT5idWZmZXJlZFt0eF9wcml2
LT50aWRdKys7CiAJCWllZWU4MDIxMV9zdGFfc2V0X2J1ZmZlcmVkKHN0YSwgdHhfcHJpdi0+dGlk
LCB0cnVlKTsKKwkJc3Bpbl91bmxvY2tfYmgoJnN0YV9wcml2LT5sb2NrKTsKKwl9CiB9CiAKIHN0
YXRpYyB1OCB3ZnhfdHhfZ2V0X3Jhd19saW5rX2lkKHN0cnVjdCB3ZnhfdmlmICp3dmlmLApAQCAt
Nzg5LDMxICs3OTEsMjUgQEAgdm9pZCB3ZnhfdHhfY29uZmlybV9jYihzdHJ1Y3Qgd2Z4X3ZpZiAq
d3ZpZiwgY29uc3Qgc3RydWN0IGhpZl9jbmZfdHggKmFyZykKIAl3ZnhfcGVuZGluZ19yZW1vdmUo
d3ZpZi0+d2Rldiwgc2tiKTsKIH0KIAotc3RhdGljIHZvaWQgd2Z4X25vdGlmeV9idWZmZXJlZF90
eChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IHNrX2J1ZmYgKnNrYiwKLQkJCQkgICBzdHJ1
Y3QgaGlmX3JlcV90eCAqcmVxKQorc3RhdGljIHZvaWQgd2Z4X25vdGlmeV9idWZmZXJlZF90eChz
dHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IHNrX2J1ZmYgKnNrYikKIHsKKwlzdHJ1Y3QgaWVl
ZTgwMjExX2hkciAqaGRyID0gKHN0cnVjdCBpZWVlODAyMTFfaGRyICopc2tiLT5kYXRhOwogCXN0
cnVjdCBpZWVlODAyMTFfc3RhICpzdGE7Ci0Jc3RydWN0IGllZWU4MDIxMV9oZHIgKmhkciA9IChz
dHJ1Y3QgaWVlZTgwMjExX2hkciAqKXNrYi0+ZGF0YTsKKwlzdHJ1Y3Qgd2Z4X3N0YV9wcml2ICpz
dGFfcHJpdjsKIAlpbnQgdGlkID0gd2Z4X3R4X2dldF90aWQoaGRyKTsKLQlpbnQgcmF3X2xpbmtf
aWQgPSByZXEtPnF1ZXVlX2lkLnBlZXJfc3RhX2lkOwotCXU4ICpidWZmZXJlZDsKIAotCWlmIChy
YXdfbGlua19pZCAmJiB0aWQgPCBXRlhfTUFYX1RJRCkgewotCQlidWZmZXJlZCA9IHd2aWYtPmxp
bmtfaWRfZGJbcmF3X2xpbmtfaWQgLSAxXS5idWZmZXJlZDsKLQotCQlzcGluX2xvY2tfYmgoJnd2
aWYtPnBzX3N0YXRlX2xvY2spOwotCQlXQVJOKCFidWZmZXJlZFt0aWRdLCAiaW5jb25zaXN0ZW50
IG5vdGlmaWNhdGlvbiIpOwotCQlidWZmZXJlZFt0aWRdLS07Ci0JCXNwaW5fdW5sb2NrX2JoKCZ3
dmlmLT5wc19zdGF0ZV9sb2NrKTsKLQotCQlpZiAoIWJ1ZmZlcmVkW3RpZF0pIHsKLQkJCXJjdV9y
ZWFkX2xvY2soKTsKLQkJCXN0YSA9IGllZWU4MDIxMV9maW5kX3N0YSh3dmlmLT52aWYsIGhkci0+
YWRkcjEpOwotCQkJaWYgKHN0YSkKLQkJCQlpZWVlODAyMTFfc3RhX3NldF9idWZmZXJlZChzdGEs
IHRpZCwgZmFsc2UpOwotCQkJcmN1X3JlYWRfdW5sb2NrKCk7Ci0JCX0KKwlyY3VfcmVhZF9sb2Nr
KCk7IC8vIHByb3RlY3Qgc3RhCisJc3RhID0gaWVlZTgwMjExX2ZpbmRfc3RhKHd2aWYtPnZpZiwg
aGRyLT5hZGRyMSk7CisJaWYgKHN0YSAmJiB0aWQgPCBXRlhfTUFYX1RJRCkgeworCQlzdGFfcHJp
diA9IChzdHJ1Y3Qgd2Z4X3N0YV9wcml2ICopJnN0YS0+ZHJ2X3ByaXY7CisJCXNwaW5fbG9ja19i
aCgmc3RhX3ByaXYtPmxvY2spOworCQlXQVJOKCFzdGFfcHJpdi0+YnVmZmVyZWRbdGlkXSwgImlu
Y29uc2lzdGVudCBub3RpZmljYXRpb24iKTsKKwkJc3RhX3ByaXYtPmJ1ZmZlcmVkW3RpZF0tLTsK
KwkJaWYgKCFzdGFfcHJpdi0+YnVmZmVyZWRbdGlkXSkKKwkJCWllZWU4MDIxMV9zdGFfc2V0X2J1
ZmZlcmVkKHN0YSwgdGlkLCBmYWxzZSk7CisJCXNwaW5fdW5sb2NrX2JoKCZzdGFfcHJpdi0+bG9j
ayk7CiAJfQorCXJjdV9yZWFkX3VubG9jaygpOwogfQogCiB2b2lkIHdmeF9za2JfZHRvcihzdHJ1
Y3Qgd2Z4X2RldiAqd2Rldiwgc3RydWN0IHNrX2J1ZmYgKnNrYikKQEAgLTgyNyw3ICs4MjMsNyBA
QCB2b2lkIHdmeF9za2JfZHRvcihzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwgc3RydWN0IHNrX2J1ZmYg
KnNrYikKIAogCVdBUk5fT04oIXd2aWYpOwogCXNrYl9wdWxsKHNrYiwgb2Zmc2V0KTsKLQl3Znhf
bm90aWZ5X2J1ZmZlcmVkX3R4KHd2aWYsIHNrYiwgcmVxKTsKKwl3Znhfbm90aWZ5X2J1ZmZlcmVk
X3R4KHd2aWYsIHNrYik7CiAJd2Z4X3R4X3BvbGljeV9wdXQod3ZpZiwgcmVxLT50eF9mbGFncy5y
ZXRyeV9wb2xpY3lfaW5kZXgpOwogCWllZWU4MDIxMV90eF9zdGF0dXNfaXJxc2FmZSh3ZGV2LT5o
dywgc2tiKTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5oIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmgKaW5kZXggNTQ3MzhjMmUzZWFjLi5kMDJhN2Iz
MjViMjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5oCisrKyBiL2Ry
aXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5oCkBAIC0xNCw5ICsxNCw2IEBACiAjaW5jbHVkZSAi
aGlmX2FwaV9jbWQuaCIKICNpbmNsdWRlICJoaWZfYXBpX21pYi5oIgogCi0vLyBGSVhNRTogdXNl
IElFRUU4MDIxMV9OVU1fVElEUwotI2RlZmluZSBXRlhfTUFYX1RJRCAgICAgICAgICAgICAgIDgK
LQogc3RydWN0IHdmeF90eF9wcml2Owogc3RydWN0IHdmeF9kZXY7CiBzdHJ1Y3Qgd2Z4X3ZpZjsK
QEAgLTMzLDcgKzMwLDYgQEAgc3RydWN0IHdmeF9saW5rX2VudHJ5IHsKIAllbnVtIHdmeF9saW5r
X3N0YXR1cwlzdGF0dXM7CiAJdTgJCQltYWNbRVRIX0FMRU5dOwogCXU4CQkJb2xkX21hY1tFVEhf
QUxFTl07Ci0JdTgJCQlidWZmZXJlZFtXRlhfTUFYX1RJRF07CiB9OwogCiBzdHJ1Y3QgdHhfcG9s
aWN5IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3N0YS5jCmluZGV4IDRhNDRkNzJmMGRiMS4uYWViY2U5NmRjZDRhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
c3RhLmMKQEAgLTU3Miw2ICs1NzIsNyBAQCBpbnQgd2Z4X3N0YV9hZGQoc3RydWN0IGllZWU4MDIx
MV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsCiAJc3RydWN0IHdmeF9zdGFfcHJp
diAqc3RhX3ByaXYgPSAoc3RydWN0IHdmeF9zdGFfcHJpdiAqKSAmc3RhLT5kcnZfcHJpdjsKIAlz
dHJ1Y3Qgd2Z4X2xpbmtfZW50cnkgKmVudHJ5OwogCisJc3Bpbl9sb2NrX2luaXQoJnN0YV9wcml2
LT5sb2NrKTsKIAlpZiAod3ZpZi0+dmlmLT50eXBlICE9IE5MODAyMTFfSUZUWVBFX0FQKQogCQly
ZXR1cm4gMDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaCBiL2RyaXZl
cnMvc3RhZ2luZy93Zngvc3RhLmgKaW5kZXggZTBiNTQzMzJlOThhLi40N2Q5NGQ2Yjg1OTAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmgKKysrIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuaApAQCAtMTIsNiArMTIsOSBAQAogCiAjaW5jbHVkZSAiaGlmX2FwaV9jbWQuaCIK
IAorLy8gRklYTUU6IHVzZSBJRUVFODAyMTFfTlVNX1RJRFMKKyNkZWZpbmUgV0ZYX01BWF9USUQg
ICAgICAgICAgICAgICA4CisKIHN0cnVjdCB3ZnhfZGV2Owogc3RydWN0IHdmeF92aWY7CiAKQEAg
LTM3LDYgKzQwLDkgQEAgc3RydWN0IHdmeF9ncnBfYWRkcl90YWJsZSB7CiBzdHJ1Y3Qgd2Z4X3N0
YV9wcml2IHsKIAlpbnQgbGlua19pZDsKIAlpbnQgdmlmX2lkOworCXU4IGJ1ZmZlcmVkW1dGWF9N
QVhfVElEXTsKKwkvLyBFbnN1cmUgYXRvbWljaXR5IG9mICJidWZmZXJlZCIgYW5kIGNhbGxzIHRv
IGllZWU4MDIxMV9zdGFfc2V0X2J1ZmZlcmVkKCkKKwlzcGlubG9ja190IGxvY2s7CiB9OwogCiAv
LyBtYWM4MDIxMSBpbnRlcmZhY2UKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
