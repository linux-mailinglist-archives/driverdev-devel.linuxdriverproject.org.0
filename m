Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8141A13C3CD
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:55:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 22A758649A;
	Wed, 15 Jan 2020 13:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b-CYYGatikSY; Wed, 15 Jan 2020 13:54:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2D849864B8;
	Wed, 15 Jan 2020 13:54:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 138D71BF573
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:54:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0CF348798F
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:54:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pSTI96Ea1M8A for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:54:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2044.outbound.protection.outlook.com [40.107.223.44])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 99CB387935
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:54:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MsA27Mj2gGjCfX2OkRZn9R/J3ze+nlVWvKLL5GmUxoJDs3rc1Me+Qh8kgTznh6Mho5rmtAw2P8Oyjb4qW/j+11w7+CPCKMSSfM7tN+Nl08KFOXL9Cx/c3xR4v0OgL84LNDvOelhKIITXcL/ShQJF4adaNGABfA/vKzqoH0wLf4oT5ViWGqrzKAFvnFm7lBx7LIjBG/PfU7njQPE7/oXfT5OgkwkZb24Noqstof4qsVPFPVj84YIebS0WfvJcur2vtXqu9RktsVsQJK3qeob1j0JfCSJIUeLZi/gv0fEQFyQz5pTPT443vM1wnmbqapon3iT6oqlY6AHvZBqWha7H2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b50yWk0WdKoZEN9INKqfong0gAhkN4IuUW7QgFNvUOc=;
 b=MC8CgSYfLmJgwo5jNz5I+o3MNV6nBF1vsrUiYi/08jljSA2QmnxWo2NIgADk7XMulZUOi9XxSgPdnZu+m/y5mOig5XefXNwq/TDOCRjhe4sxwWWzkeSwL9jhOCXye4TSqJ7Z5zCpjSylVUTKOMRoJqi50E9XuZXIWy0HPwQH7UkmgFPksyv/vNcUUseXTODs3xNLDDHrXHvUCZrWQGNrN6UINRTYx32HGvpeBRMhl+XntCAvWfctOmw2Bpxm7pNeR0S0fcxHJOffyPfxyuqvb5KonzLh4oeTctPYWhcuLGoIBX0b+Iq37skzPH2YiUnJMCwzQc+p/Ruf6r9X4UqiAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b50yWk0WdKoZEN9INKqfong0gAhkN4IuUW7QgFNvUOc=;
 b=gpgVTPtwtsBP42p0qdNfu8AwN020tC8b+q7JfusXBQYnR9sNWsfOQETTWPN9I4IOfqsLxp47+3XTXKT8Dh9sFKBKmH38SXAA/AOI7+5Sw4MsSIp7C9ySF2OBrBy07EiwA4UqOpuUr9KUrqB7rV+u57z6W15esLrS1uodLWY1h+c=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4094.namprd11.prod.outlook.com (10.255.180.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Wed, 15 Jan 2020 13:54:34 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:54:34 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:54:33 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 22/65] staging: wfx: drop wvif->dtim_period
Thread-Topic: [PATCH v2 22/65] staging: wfx: drop wvif->dtim_period
Thread-Index: AQHVy6tRXiQhHkgk/kySOKZC3y8L1Q==
Date: Wed, 15 Jan 2020 13:54:34 +0000
Message-ID: <20200115135338.14374-23-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 0358933f-ed49-4b83-c330-08d799c273a7
x-ms-traffictypediagnostic: MN2PR11MB4094:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4094424CD769682B64147B1593370@MN2PR11MB4094.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(366004)(396003)(346002)(136003)(376002)(189003)(199004)(316002)(110136005)(54906003)(85202003)(81156014)(5660300002)(8676002)(71200400001)(8936002)(81166006)(186003)(6506007)(86362001)(66946007)(66446008)(66476007)(66556008)(2906002)(64756008)(478600001)(6512007)(52116002)(66574012)(6486002)(1076003)(16526019)(4326008)(85182001)(107886003)(36756003)(8886007)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4094;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9+39egR8hf7JvpSHrlNgQmkydaGAl08sfgQH2Bs7ZHVb1Sq5p5vNVEUn8+m99xdqoKbceDIGusG29L3fgOYTdb6/OAanYcJxnyyLgdqw0y/6StzWMC0MUMJpVy1VacaF+SeKOqLRY87/XfoVPsfMmXbVCEKwkW/7ubzDDCELDi3sO8YRkn2+JXdXhnzp98US+tKHENZQASBjN8T6tkIn3YRndnc1LWWrl/5R3qxNgVRWTcE314w/9ErfxvD2izVCbC/CFQMLs7jxWslLs9hTbRW1ZhZBQacl5ZwRGYtsj8rVK6rQk0N1/N8P5jkDi1o7cqJ1deB0azuqbVQCuvvX0GkA3/N5b893vAT/0l6cBzss/JXSUwW3lHdpFiZ9W3L8tVVTmG+C1l6WVyEbxvqp13aj3ub87n1XppxxOY0ShyYFVC+AIH1VBtqN8kf4mjYh
Content-ID: <058DBEBA09D46E45914367B87825C030@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0358933f-ed49-4b83-c330-08d799c273a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:54:34.2612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zQz1pvtwBzxkCQ0QfGKWJ3OkCxm5t4ATj16kCN98S7ZxcfzgJ9IzuLceWPAqOC38vELaep4lh+8CkW+fLUnNBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4094
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
aXMgbm90IG5lY2Vzc2FyeSB0byBrZWVwIGEgY29weSBvZiBkdGltX3BlcmlvZCBpbiB3Znhfdmlm
LiBQcmVmZXIgdG8KanVzdCByZWx5IG9uIGJzc19jb25mLT5kdGltX3BlcmlvZC4KClNpZ25lZC1v
ZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0t
CiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIHwgMjAgKysrKy0tLS0tLS0tLS0tLS0tLS0KIGRy
aXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggfCAgMSAtCiAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKaW5kZXggMWFmOTliNzkzMGY0Li4z
NzY0NTE0MzNlOWUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKKysrIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtNDY0LDcgKzQ2NCw2IEBAIHN0YXRpYyB2b2lk
IHdmeF9kb191bmpvaW4oc3RydWN0IHdmeF92aWYgKnd2aWYpCiAJaGlmX2tlZXBfYWxpdmVfcGVy
aW9kKHd2aWYsIDApOwogCWhpZl9yZXNldCh3dmlmLCBmYWxzZSk7CiAJd2Z4X3R4X3BvbGljeV9p
bml0KHd2aWYpOwotCXd2aWYtPmR0aW1fcGVyaW9kID0gMDsKIAloaWZfc2V0X21hY2FkZHIod3Zp
Ziwgd3ZpZi0+dmlmLT5hZGRyKTsKIAl3ZnhfZnJlZV9ldmVudF9xdWV1ZSh3dmlmKTsKIAljYW5j
ZWxfd29ya19zeW5jKCZ3dmlmLT5ldmVudF9oYW5kbGVyX3dvcmspOwpAQCAtNTU3LDEwICs1NTYs
NiBAQCBzdGF0aWMgdm9pZCB3ZnhfZG9fam9pbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAkJd3Zp
Zi0+YmVhY29uX2ludCA9IDE7CiAKIAlqb2luLmJlYWNvbl9pbnRlcnZhbCA9IHd2aWYtPmJlYWNv
bl9pbnQ7Ci0KLQkvLyBEVElNIHBlcmlvZCB3aWxsIGJlIHNldCBvbiBmaXJzdCBCZWFjb24KLQl3
dmlmLT5kdGltX3BlcmlvZCA9IDA7Ci0KIAlqb2luLmNoYW5uZWxfbnVtYmVyID0gd3ZpZi0+Y2hh
bm5lbC0+aHdfdmFsdWU7CiAJbWVtY3B5KGpvaW4uYnNzaWQsIGJzc2lkLCBzaXplb2Yoam9pbi5i
c3NpZCkpOwogCkBAIC03MDEsOCArNjk2LDYgQEAgc3RhdGljIGludCB3Znhfc3RhcnRfYXAoc3Ry
dWN0IHdmeF92aWYgKnd2aWYpCiAJaW50IHJldDsKIAogCXd2aWYtPmJlYWNvbl9pbnQgPSB3dmlm
LT52aWYtPmJzc19jb25mLmJlYWNvbl9pbnQ7Ci0Jd3ZpZi0+ZHRpbV9wZXJpb2QgPSB3dmlmLT52
aWYtPmJzc19jb25mLmR0aW1fcGVyaW9kOwotCiAJbWVtc2V0KCZ3dmlmLT5saW5rX2lkX2RiLCAw
LCBzaXplb2Yod3ZpZi0+bGlua19pZF9kYikpOwogCiAJd3ZpZi0+d2Rldi0+dHhfYnVyc3RfaWR4
ID0gLTE7CkBAIC03NjYsMTAgKzc1OSw3IEBAIHN0YXRpYyB2b2lkIHdmeF9qb2luX2ZpbmFsaXpl
KHN0cnVjdCB3ZnhfdmlmICp3dmlmLAogCXN0cnVjdCBpZWVlODAyMTFfc3RhICpzdGEgPSBOVUxM
OwogCXN0cnVjdCBoaWZfbWliX3NldF9hc3NvY2lhdGlvbl9tb2RlIGFzc29jaWF0aW9uX21vZGUg
PSB7IH07CiAKLQlpZiAoaW5mby0+ZHRpbV9wZXJpb2QpCi0JCXd2aWYtPmR0aW1fcGVyaW9kID0g
aW5mby0+ZHRpbV9wZXJpb2Q7CiAJd3ZpZi0+YmVhY29uX2ludCA9IGluZm8tPmJlYWNvbl9pbnQ7
Ci0KIAlyY3VfcmVhZF9sb2NrKCk7CiAJaWYgKGluZm8tPmJzc2lkICYmICFpbmZvLT5pYnNzX2pv
aW5lZCkKIAkJc3RhID0gaWVlZTgwMjExX2ZpbmRfc3RhKHd2aWYtPnZpZiwgaW5mby0+YnNzaWQp
OwpAQCAtODA0LDkgKzc5NCw2IEBAIHN0YXRpYyB2b2lkIHdmeF9qb2luX2ZpbmFsaXplKHN0cnVj
dCB3ZnhfdmlmICp3dmlmLAogCXd2aWYtPmJzc19wYXJhbXMuYmVhY29uX2xvc3RfY291bnQgPSAy
MDsKIAl3dmlmLT5ic3NfcGFyYW1zLmFpZCA9IGluZm8tPmFpZDsKIAotCWlmICh3dmlmLT5kdGlt
X3BlcmlvZCA8IDEpCi0JCXd2aWYtPmR0aW1fcGVyaW9kID0gMTsKLQogCWhpZl9zZXRfYXNzb2Np
YXRpb25fbW9kZSh3dmlmLCAmYXNzb2NpYXRpb25fbW9kZSk7CiAKIAlpZiAoIWluZm8tPmlic3Nf
am9pbmVkKSB7CkBAIC0xMDU1LDkgKzEwNDIsMTAgQEAgaW50IHdmeF9zZXRfdGltKHN0cnVjdCBp
ZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3N0YSAqc3RhLCBib29sIHNldCkKIAog
c3RhdGljIHZvaWQgd2Z4X21jYXN0X3N0YXJ0X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3Jr
KQogewotCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCB3
ZnhfdmlmLAotCQkJCQkgICAgbWNhc3Rfc3RhcnRfd29yayk7Ci0JbG9uZyB0bW8gPSB3dmlmLT5k
dGltX3BlcmlvZCAqIFRVX1RPX0pJRkZJRVMod3ZpZi0+YmVhY29uX2ludCArIDIwKTsKKwlzdHJ1
Y3Qgd2Z4X3ZpZiAqd3ZpZiA9CisJCWNvbnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3Qgd2Z4X3ZpZiwg
bWNhc3Rfc3RhcnRfd29yayk7CisJc3RydWN0IGllZWU4MDIxMV9ic3NfY29uZiAqY29uZiA9ICZ3
dmlmLT52aWYtPmJzc19jb25mOworCWxvbmcgdG1vID0gY29uZi0+ZHRpbV9wZXJpb2QgKiBUVV9U
T19KSUZGSUVTKHd2aWYtPmJlYWNvbl9pbnQgKyAyMCk7CiAKIAljYW5jZWxfd29ya19zeW5jKCZ3
dmlmLT5tY2FzdF9zdG9wX3dvcmspOwogCWlmICghd3ZpZi0+YWlkMF9iaXRfc2V0KSB7CmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC93
ZnguaAppbmRleCBkMjAxY2NlZWMxYWIuLmJkNGI1NWUwN2M3MyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL3dmeC93ZnguaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oCkBAIC05
OCw3ICs5OCw2IEBAIHN0cnVjdCB3ZnhfdmlmIHsKIAlzcGlubG9ja190CQlwc19zdGF0ZV9sb2Nr
OwogCXN0cnVjdCB3b3JrX3N0cnVjdAlzZXRfdGltX3dvcms7CiAKLQlpbnQJCQlkdGltX3Blcmlv
ZDsKIAlpbnQJCQliZWFjb25faW50OwogCWJvb2wJCQllbmFibGVfYmVhY29uOwogCWJvb2wJCQlm
aWx0ZXJfYnNzaWQ7Ci0tIAoyLjI1LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2pl
Y3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
