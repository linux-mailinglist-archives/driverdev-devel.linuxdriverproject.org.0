Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CBD2B5D9
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 May 2019 14:56:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECDD0252A8;
	Mon, 27 May 2019 12:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LDf-oVgivgpI; Mon, 27 May 2019 12:56:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1BF6324B59;
	Mon, 27 May 2019 12:56:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 963261BF3C0
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 12:56:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9291B85B4D
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 12:56:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-TS4O0rADYd for <devel@linuxdriverproject.org>;
 Mon, 27 May 2019 12:56:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
 (mail-eopbgr810058.outbound.protection.outlook.com [40.107.81.58])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AAB5C85AA1
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 12:56:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c7Px++6zObfKo6Q0xm7HxH3xMQ3lo45Lz3O7Sn4UmhE=;
 b=O6clW+EoH5Qdpa2s26yotTyMU5Q/BWaY1AGUyXHuI6p6xdm0Wt86UBltTR90ClBDHUudWnPXWe5IlT4vd+VlrC7Uc+0+ryidM8n3cY83c5epeVr62JXNXrEyX3Zb2FcMDiAft3NaLXhweqlbSC0eM7vT3oKVcF8Hi8zrPOHKbag=
Received: from BN3PR03CA0112.namprd03.prod.outlook.com (2603:10b6:400:4::30)
 by BN3PR03MB2259.namprd03.prod.outlook.com (2a01:111:e400:7bba::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.21; Mon, 27 May
 2019 12:56:43 +0000
Received: from BL2NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by BN3PR03CA0112.outlook.office365.com
 (2603:10b6:400:4::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.16 via Frontend
 Transport; Mon, 27 May 2019 12:56:42 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; gmx.de; dkim=none (message not signed)
 header.d=none; gmx.de; dmarc=bestguesspass action=none header.from=analog.com; 
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 BL2NAM02FT028.mail.protection.outlook.com (10.152.77.165) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1922.16
 via Frontend Transport; Mon, 27 May 2019 12:56:42 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x4RCugng022647
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Mon, 27 May 2019 05:56:42 -0700
Received: from ben-Latitude-E6540.analog.com (10.50.1.100) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Mon, 27 May 2019 08:56:41 -0400
From: Beniamin Bia <beniamin.bia@analog.com>
To: <jic23@kernel.org>
Subject: [PATCH v2 3/4] iio: adc: ad7606: Add support for software mode for
 ad7616
Date: Mon, 27 May 2019 15:56:49 +0300
Message-ID: <20190527125650.2405-3-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527125650.2405-1-beniamin.bia@analog.com>
References: <20190527125650.2405-1-beniamin.bia@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(376002)(396003)(39860400002)(136003)(2980300002)(189003)(199004)(5820100001)(44832011)(107886003)(36756003)(126002)(486006)(26005)(476003)(2616005)(446003)(11346002)(77096007)(356004)(50466002)(70586007)(70206006)(316002)(426003)(186003)(336012)(7416002)(2870700001)(106002)(54906003)(1076003)(7696005)(47776003)(2906002)(23676004)(5660300002)(8676002)(72206003)(8936002)(76176011)(478600001)(50226002)(2351001)(53416004)(7636002)(6916009)(86362001)(14444005)(305945005)(4326008)(246002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN3PR03MB2259; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6dae9c85-f5b8-4b8f-6ece-08d6e2a2c469
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709054)(1401327)(2017052603328);
 SRVR:BN3PR03MB2259; 
X-MS-TrafficTypeDiagnostic: BN3PR03MB2259:
X-Microsoft-Antispam-PRVS: <BN3PR03MB22591861D5863546726FEE54F01D0@BN3PR03MB2259.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0050CEFE70
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: I3YQBHN2k1EiBCJ0J1NitTqAQg1XG8mx64K0uA3CX0YRVW8EoXwcCM+w9DC5uypapkhr35Bz0uu7Dzoq2dT2A/SA/Cl6PKMPQvHefpaua6e0awnxJjyEWJMJtCrC98nv8EaCkkot8Z3JxjAObxC5n87JlCyBEviXxo1mZXbGo5o/Cu1YJBnQMzrm4GbLVWYRYWUK5IH59r8pm9gNe2t0nL1zCJE532ZEcp7P2sig5jNFv7ecYq99kK9ATHlDTMciCSYUoIBUBVdZjf8f8rmNoSK5SXII2mjes1SvVqAVOupWi4O8EC5bQYhOra7HwSf81CDcanm0w6vSriWUkeZcO0gb4dYnn8PBLahNa+2ZE1CdVvATydcu0qMQbRADLeUK8buPgdp+wawkTtq2QEBwOlat4BvGfCKpNZlfyjO3jRM=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2019 12:56:42.6316 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dae9c85-f5b8-4b8f-6ece-08d6e2a2c469
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB2259
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, Beniamin Bia <beniamin.bia@analog.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

U3VwcG9ydCBmb3IgYWQ3NjE2IHJ1bm5pbmcgaW4gc29mdHdhcmUgd2FzIGFkZGVkLiBJbiBvcmRl
cgp0byBhY3RpdmF0ZSB0aGUgc29mdHdhcmUgbW9kZSwgSFdfUk5HU0VMIHBpbnMgbXVzdCBiZSBw
dWxsZWQgbG93LgpPdmVyc2FtcGxpbmcgYW5kIGlucHV0IHJhbmdlcyBhcmUgbm93IGNvbmZpZ3Vy
ZWQgaW4gY29ycmVzcG9uZGluZwpyZWdpc3RlcnMuIEFkNzYxNiBoYXMgbXVsdGlwbGUgc2NhbGUg
b3B0aW9ucyB3aGVuIGl0IGlzIGNvbmZpZ3VyZWQKaW4gc29mdHdhcmUgbW9kZS4KQWxzbywgaW4g
b3JkZXIgdG8gc3VwcG9ydCBtdWx0aXBsZSBkZXZpY2VzIGluIHNvZnR3YXJlIG1vZGUsIHRoZSBz
cGkKdGhlIGNhbGN1bGF0aW9uIG9mIHJlZ2lzdGVycyBhZGRyZXNzIG11c3QgYmUgZ2VuZXJpYy4g
QmVjYXVzZQp0aGUgbGVuZ3RoIG9mIGFkZHJlc3MgYW5kIGJpdCB3aGljaCBzcGVjaWZpZXMgdGhl
IHJlYWQvd3JpdGUgb3BlcmF0aW9uIGlzCmRpZmZlcmVudCBmb3IgZXZlcnkgZGV2aWNlLCBjYWxj
dWxhdGlvbiBvZiBhZGRyZXNzIHdhcyBtYWRlIGdlbmVyaWMuCgpTaWduZWQtb2ZmLWJ5OiBCZW5p
YW1pbiBCaWEgPGJlbmlhbWluLmJpYUBhbmFsb2cuY29tPgotLS0KQ2hhbmdlcyBpbiB2MjoKLXNx
dWFzaGVkIHdpdGggdGhlIHBhdGNoIHdoaWNoIGludHJvZHVjZXMgdGhlIHJlZyBhY2Nlc3MgZnVu
Y3Rpb24uCi1zb21lIGNhc3Rpbmcgd2FybmluZ3Mgd2VyZSBmaXhlZC4KCiBkcml2ZXJzL2lpby9h
ZGMvYWQ3NjA2LmMgfCAxNzEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0t
CiBkcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmggfCAgIDQgKwogMiBmaWxlcyBjaGFuZ2VkLCAxNjcg
aW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9h
ZGMvYWQ3NjA2LmMgYi9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMKaW5kZXggYWJhMGZkMTIzYTUx
Li44ZTA5YWQ0YmI3MmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYworKysg
Yi9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMKQEAgLTI1LDggKzI1LDI0IEBACiAjaW5jbHVkZSA8
bGludXgvaWlvL3RyaWdnZXJlZF9idWZmZXIuaD4KICNpbmNsdWRlIDxsaW51eC9paW8vdHJpZ2dl
cl9jb25zdW1lci5oPgogCisjaW5jbHVkZSA8bGludXgvc3BpL3NwaS5oPgorCiAjaW5jbHVkZSAi
YWQ3NjA2LmgiCiAKKyNkZWZpbmUgQUQ3NjA2X1JBTkdFX0NIX0FERFIoY2gpCSgweDAzICsgKChj
aCkgPj4gMSkpCisjZGVmaW5lIEFENzYwNl9PU19NT0RFCQkJMHgwOAorCisjZGVmaW5lIEFENzYx
Nl9DT05GSUdVUkFUSU9OX1JFR0lTVEVSCTB4MDIKKyNkZWZpbmUgQUQ3NjE2X09TX01BU0sJCQlH
RU5NQVNLKDQsICAyKQorI2RlZmluZSBBRDc2MTZfQlVSU1RfTU9ERQkJQklUKDYpCisjZGVmaW5l
IEFENzYxNl9TRVFFTl9NT0RFCQlCSVQoNSkKKyNkZWZpbmUgQUQ3NjE2X1JBTkdFX0NIX0FERFJf
T0ZGCTB4MDQKKyNkZWZpbmUgQUQ3NjE2X1JBTkdFX0NIX0FERFIoY2gpCSgoKChjaCkgJiAweDEp
IDw8IDEpICsgKChjaCkgPj4gMykpCisjZGVmaW5lIEFENzYxNl9SQU5HRV9DSF9NU0soY2gpCQko
R0VOTUFTSygxLCAwKSA8PCAoKGNoKSAmIDB4NikpCisjZGVmaW5lIEFENzYxNl9SQU5HRV9DSF9N
T0RFKGNoLCBtb2RlKQkoKG1vZGUpIDw8IChjaCAmIEdFTk1BU0soMiwgMSkpKQorCitzdGF0aWMg
aW50IGFkNzYxNl9zd19tb2RlX2NvbmZpZyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2KTsKKwog
LyoKICAqIFNjYWxlcyBhcmUgY29tcHV0ZWQgYXMgNTAwMC8zMjc2OCBhbmQgMTAwMDAvMzI3Njgg
cmVzcGVjdGl2ZWx5LAogICogc28gdGhhdCB3aGVuIGFwcGxpZWQgdG8gdGhlIHJhdyB2YWx1ZXMg
dGhleSBwcm92aWRlIG1WIHZhbHVlcwpAQCAtMzUsNiArNTEsMTEgQEAgc3RhdGljIGNvbnN0IHVu
c2lnbmVkIGludCBhZDc2MDZfc2NhbGVfYXZhaWxbMl0gPSB7CiAJMTUyNTg4LCAzMDUxNzYKIH07
CiAKKworc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBhZDc2MTZfc3dfc2NhbGVfYXZhaWxbM10g
PSB7CisJNzYyOTMsIDE1MjU4OCwgMzA1MTc2Cit9OworCiBzdGF0aWMgY29uc3QgdW5zaWduZWQg
aW50IGFkNzYwNl9vdmVyc2FtcGxpbmdfYXZhaWxbN10gPSB7CiAJMSwgMiwgNCwgOCwgMTYsIDMy
LCA2NCwKIH07CkBAIC00Myw2ICs2NCwxMSBAQCBzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IGFk
NzYxNl9vdmVyc2FtcGxpbmdfYXZhaWxbOF0gPSB7CiAJMSwgMiwgNCwgOCwgMTYsIDMyLCA2NCwg
MTI4LAogfTsKIAorc3RhdGljIHUxNiBhZDc2MTZfc3BpX3JkX3dyX2NtZChpbnQgYWRkciwgY2hh
ciBpc1dyaXRlT3ApCit7CisJcmV0dXJuICgoYWRkciAmIDB4N0YpIDw8IDEpIHwgKChpc1dyaXRl
T3AgJiAweDEpIDw8IDcpOworfQorCiBzdGF0aWMgaW50IGFkNzYwNl9yZXNldChzdHJ1Y3QgYWQ3
NjA2X3N0YXRlICpzdCkKIHsKIAlpZiAoc3QtPmdwaW9fcmVzZXQpIHsKQEAgLTU1LDYgKzgxLDU5
IEBAIHN0YXRpYyBpbnQgYWQ3NjA2X3Jlc2V0KHN0cnVjdCBhZDc2MDZfc3RhdGUgKnN0KQogCXJl
dHVybiAtRU5PREVWOwogfQogCitzdGF0aWMgaW50IGFkNzYwNl9zcGlfcmVnX3JlYWQoc3RydWN0
IGFkNzYwNl9zdGF0ZSAqc3QsIHVuc2lnbmVkIGludCBhZGRyKQoreworCXN0cnVjdCBzcGlfZGV2
aWNlICpzcGkgPSB0b19zcGlfZGV2aWNlKHN0LT5kZXYpOworCXN0cnVjdCBzcGlfdHJhbnNmZXIg
dFtdID0geworCQl7CisJCQkudHhfYnVmID0gJnN0LT5kMTZbMF0sCisJCQkubGVuID0gMiwKKwkJ
CS5jc19jaGFuZ2UgPSAwLAorCQl9LCB7CisJCQkucnhfYnVmID0gJnN0LT5kMTZbMV0sCisJCQku
bGVuID0gMiwKKwkJfSwKKwl9OworCWludCByZXQ7CisKKwlzdC0+ZDE2WzBdID0gY3B1X3RvX2Jl
MTYoc3QtPmNoaXBfaW5mby0+c3BpX3JkX3dyX2NtZChhZGRyLCAwKSA8PCA4KTsKKworCXJldCA9
IHNwaV9zeW5jX3RyYW5zZmVyKHNwaSwgdCwgQVJSQVlfU0laRSh0KSk7CisJaWYgKHJldCA8IDAp
CisJCXJldHVybiByZXQ7CisKKwlyZXR1cm4gYmUxNl90b19jcHUoc3QtPmQxNlsxXSk7Cit9CisK
K3N0YXRpYyBpbnQgYWQ3NjA2X3NwaV9yZWdfd3JpdGUoc3RydWN0IGFkNzYwNl9zdGF0ZSAqc3Qs
CisJCQkJdW5zaWduZWQgaW50IGFkZHIsCisJCQkJdW5zaWduZWQgaW50IHZhbCkKK3sKKwlzdHJ1
Y3Qgc3BpX2RldmljZSAqc3BpID0gdG9fc3BpX2RldmljZShzdC0+ZGV2KTsKKworCXN0LT5kMTZb
MF0gPSBjcHVfdG9fYmUxNigoc3QtPmNoaXBfaW5mby0+c3BpX3JkX3dyX2NtZChhZGRyLCAxKSA8
PCA4KSB8CisJCQkJICAodmFsICYgMHgxRkYpKTsKKworCXJldHVybiBzcGlfd3JpdGUoc3BpLCAm
c3QtPmQxNlswXSwgc2l6ZW9mKHN0LT5kMTZbMF0pKTsKK30KKworc3RhdGljIGludCBhZDc2MDZf
c3BpX3dyaXRlX21hc2soc3RydWN0IGFkNzYwNl9zdGF0ZSAqc3QsCisJCQkJIHVuc2lnbmVkIGlu
dCBhZGRyLAorCQkJCSB1bnNpZ25lZCBsb25nIG1hc2ssCisJCQkJIHVuc2lnbmVkIGludCB2YWwp
Cit7CisJaW50IHJlYWR2YWw7CisKKwlyZWFkdmFsID0gYWQ3NjA2X3NwaV9yZWdfcmVhZChzdCwg
YWRkcik7CisJaWYgKHJlYWR2YWwgPCAwKQorCQlyZXR1cm4gcmVhZHZhbDsKKworCXJlYWR2YWwg
Jj0gfm1hc2s7CisJcmVhZHZhbCB8PSB2YWw7CisKKwlyZXR1cm4gYWQ3NjA2X3NwaV9yZWdfd3Jp
dGUoc3QsIGFkZHIsIHJlYWR2YWwpOworfQorCiBzdGF0aWMgaW50IGFkNzYwNl9yZWFkX3NhbXBs
ZXMoc3RydWN0IGFkNzYwNl9zdGF0ZSAqc3QpCiB7CiAJdW5zaWduZWQgaW50IG51bSA9IHN0LT5j
aGlwX2luZm8tPm51bV9jaGFubmVsczsKQEAgLTIyMiw2ICszMDEsMjYgQEAgc3RhdGljIGludCBh
ZDc2MDZfd3JpdGVfb3NfaHcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldiwgaW50IHZhbCkKIAly
ZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCBhZDc2MTZfd3JpdGVfc2NhbGVfc3coc3RydWN0IGlp
b19kZXYgKmluZGlvX2RldiwgaW50IGNoLCBpbnQgdmFsKQoreworCXN0cnVjdCBhZDc2MDZfc3Rh
dGUgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKKwl1bnNpZ25lZCBpbnQgY2hfYWRkciwgbW9k
ZTsKKworCWNoX2FkZHIgPSBBRDc2MTZfUkFOR0VfQ0hfQUREUl9PRkYgKyBBRDc2MTZfUkFOR0Vf
Q0hfQUREUihjaCk7CisJbW9kZSA9IEFENzYxNl9SQU5HRV9DSF9NT0RFKGNoLCAoKHZhbCArIDEp
ICYgMHgzKSk7CisKKwlyZXR1cm4gYWQ3NjA2X3NwaV93cml0ZV9tYXNrKHN0LCBjaF9hZGRyLCBB
RDc2MTZfUkFOR0VfQ0hfTVNLKGNoKSwKKwkJCQkgICAgIG1vZGUpOworfQorCitzdGF0aWMgaW50
IGFkNzYxNl93cml0ZV9vc19zdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LCBpbnQgdmFsKQor
eworCXN0cnVjdCBhZDc2MDZfc3RhdGUgKnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKKworCXJl
dHVybiBhZDc2MDZfc3BpX3dyaXRlX21hc2soc3QsIEFENzYxNl9DT05GSUdVUkFUSU9OX1JFR0lT
VEVSLAorCQkJCSAgICAgQUQ3NjE2X09TX01BU0ssIHZhbCA8PCAyKTsKK30KKwogc3RhdGljIGlu
dCBhZDc2MDZfd3JpdGVfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJCQkgICAgc3Ry
dWN0IGlpb19jaGFuX3NwZWMgY29uc3QgKmNoYW4sCiAJCQkgICAgaW50IHZhbCwKQEAgLTMwOCwx
NCArNDA3LDE0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYXR0cmlidXRlX2dyb3VwIGFkNzYwNl9h
dHRyaWJ1dGVfZ3JvdXBfcmFuZ2UgPSB7CiAJLmF0dHJzID0gYWQ3NjA2X2F0dHJpYnV0ZXNfcmFu
Z2UsCiB9OwogCi0jZGVmaW5lIEFENzYwWF9DSEFOTkVMKG51bSwgbWFzaykgewkJCQlcCisjZGVm
aW5lIEFENzYwWF9DSEFOTkVMKG51bSwgbWFza19zZXAsIG1hc2tfdHlwZSwgbWFza19hbGwpIHsJ
XAogCQkudHlwZSA9IElJT19WT0xUQUdFLAkJCQlcCiAJCS5pbmRleGVkID0gMSwJCQkJCVwKIAkJ
LmNoYW5uZWwgPSBudW0sCQkJCQlcCiAJCS5hZGRyZXNzID0gbnVtLAkJCQkJXAotCQkuaW5mb19t
YXNrX3NlcGFyYXRlID0gQklUKElJT19DSEFOX0lORk9fUkFXKSwJXAotCQkuaW5mb19tYXNrX3No
YXJlZF9ieV90eXBlID0gQklUKElJT19DSEFOX0lORk9fU0NBTEUpLFwKLQkJLmluZm9fbWFza19z
aGFyZWRfYnlfYWxsID0gbWFzaywJCVwKKwkJLmluZm9fbWFza19zZXBhcmF0ZSA9IG1hc2tfc2Vw
LAkJCVwKKwkJLmluZm9fbWFza19zaGFyZWRfYnlfdHlwZSA9IG1hc2tfdHlwZSwJCVwKKwkJLmlu
Zm9fbWFza19zaGFyZWRfYnlfYWxsID0gbWFza19hbGwsCQlcCiAJCS5zY2FuX2luZGV4ID0gbnVt
LAkJCQlcCiAJCS5zY2FuX3R5cGUgPSB7CQkJCQlcCiAJCQkuc2lnbiA9ICdzJywJCQkJXApAQCAt
MzI1LDExICs0MjQsMTggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdHRyaWJ1dGVfZ3JvdXAgYWQ3
NjA2X2F0dHJpYnV0ZV9ncm91cF9yYW5nZSA9IHsKIAkJfSwJCQkJCQlcCiB9CiAKLSNkZWZpbmUg
QUQ3NjA1X0NIQU5ORUwobnVtKQlcCi0JQUQ3NjBYX0NIQU5ORUwobnVtLCAwKQorI2RlZmluZSBB
RDc2MDVfQ0hBTk5FTChudW0pCQkJCVwKKwlBRDc2MFhfQ0hBTk5FTChudW0sIEJJVChJSU9fQ0hB
Tl9JTkZPX1JBVyksCVwKKwkJQklUKElJT19DSEFOX0lORk9fU0NBTEUpLCAwKQorCisjZGVmaW5l
IEFENzYwNl9DSEFOTkVMKG51bSkJCQkJXAorCUFENzYwWF9DSEFOTkVMKG51bSwgQklUKElJT19D
SEFOX0lORk9fUkFXKSwJXAorCQlCSVQoSUlPX0NIQU5fSU5GT19TQ0FMRSksCQlcCisJCUJJVChJ
SU9fQ0hBTl9JTkZPX09WRVJTQU1QTElOR19SQVRJTykpCiAKLSNkZWZpbmUgQUQ3NjA2X0NIQU5O
RUwobnVtKQlcCi0JQUQ3NjBYX0NIQU5ORUwobnVtLCBCSVQoSUlPX0NIQU5fSU5GT19PVkVSU0FN
UExJTkdfUkFUSU8pKQorI2RlZmluZSBBRDc2MTZfQ0hBTk5FTChudW0pCVwKKwlBRDc2MFhfQ0hB
Tk5FTChudW0sIEJJVChJSU9fQ0hBTl9JTkZPX1JBVykgfCBCSVQoSUlPX0NIQU5fSU5GT19TQ0FM
RSksXAorCQkwLCBCSVQoSUlPX0NIQU5fSU5GT19PVkVSU0FNUExJTkdfUkFUSU8pKQogCiBzdGF0
aWMgY29uc3Qgc3RydWN0IGlpb19jaGFuX3NwZWMgYWQ3NjA1X2NoYW5uZWxzW10gPSB7CiAJSUlP
X0NIQU5fU09GVF9USU1FU1RBTVAoNCksCkBAIC0zODEsNiArNDg3LDI2IEBAIHN0YXRpYyBjb25z
dCBzdHJ1Y3QgaWlvX2NoYW5fc3BlYyBhZDc2MTZfY2hhbm5lbHNbXSA9IHsKIAlBRDc2MDZfQ0hB
Tk5FTCgxNSksCiB9OwogCitzdGF0aWMgY29uc3Qgc3RydWN0IGlpb19jaGFuX3NwZWMgYWQ3NjE2
X3N3X2NoYW5uZWxzW10gPSB7CisJSUlPX0NIQU5fU09GVF9USU1FU1RBTVAoMTYpLAorCUFENzYx
Nl9DSEFOTkVMKDApLAorCUFENzYxNl9DSEFOTkVMKDEpLAorCUFENzYxNl9DSEFOTkVMKDIpLAor
CUFENzYxNl9DSEFOTkVMKDMpLAorCUFENzYxNl9DSEFOTkVMKDQpLAorCUFENzYxNl9DSEFOTkVM
KDUpLAorCUFENzYxNl9DSEFOTkVMKDYpLAorCUFENzYxNl9DSEFOTkVMKDcpLAorCUFENzYxNl9D
SEFOTkVMKDgpLAorCUFENzYxNl9DSEFOTkVMKDkpLAorCUFENzYxNl9DSEFOTkVMKDEwKSwKKwlB
RDc2MTZfQ0hBTk5FTCgxMSksCisJQUQ3NjE2X0NIQU5ORUwoMTIpLAorCUFENzYxNl9DSEFOTkVM
KDEzKSwKKwlBRDc2MTZfQ0hBTk5FTCgxNCksCisJQUQ3NjE2X0NIQU5ORUwoMTUpLAorfTsKKwog
c3RhdGljIGNvbnN0IHN0cnVjdCBhZDc2MDZfY2hpcF9pbmZvIGFkNzYwNl9jaGlwX2luZm9fdGJs
W10gPSB7CiAJLyogTW9yZSBkZXZpY2VzIGFkZGVkIGluIGZ1dHVyZSAqLwogCVtJRF9BRDc2MDVf
NF0gPSB7CkBAIC00MDgsOSArNTM0LDEzIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgYWQ3NjA2X2No
aXBfaW5mbyBhZDc2MDZfY2hpcF9pbmZvX3RibFtdID0gewogCVtJRF9BRDc2MTZdID0gewogCQku
Y2hhbm5lbHMgPSBhZDc2MTZfY2hhbm5lbHMsCiAJCS5udW1fY2hhbm5lbHMgPSAxNywKKwkJLnN3
X21vZGVfY29uZmlnID0gYWQ3NjE2X3N3X21vZGVfY29uZmlnLAogCQkub3ZlcnNhbXBsaW5nX2F2
YWlsID0gYWQ3NjE2X292ZXJzYW1wbGluZ19hdmFpbCwKIAkJLm92ZXJzYW1wbGluZ19udW0gPSBB
UlJBWV9TSVpFKGFkNzYxNl9vdmVyc2FtcGxpbmdfYXZhaWwpLAogCQkub3NfcmVxX3Jlc2V0ID0g
dHJ1ZSwKKwkJLnNwaV9yZF93cl9jbWQgPSBhZDc2MTZfc3BpX3JkX3dyX2NtZCwKKwkJLndyaXRl
X3NjYWxlX3N3ID0gYWQ3NjE2X3dyaXRlX3NjYWxlX3N3LAorCQkud3JpdGVfb3Nfc3cgPSBhZDc2
MTZfd3JpdGVfb3Nfc3csCiAJfSwKIH07CiAKQEAgLTU0NCw2ICs2NzQsMjMgQEAgc3RhdGljIHZv
aWQgYWQ3NjA2X3JlZ3VsYXRvcl9kaXNhYmxlKHZvaWQgKmRhdGEpCiAJcmVndWxhdG9yX2Rpc2Fi
bGUoc3QtPnJlZyk7CiB9CiAKK3N0YXRpYyBpbnQgYWQ3NjE2X3N3X21vZGVfY29uZmlnKHN0cnVj
dCBpaW9fZGV2ICppbmRpb19kZXYpCit7CisJc3RydWN0IGFkNzYwNl9zdGF0ZSAqc3QgPSBpaW9f
cHJpdihpbmRpb19kZXYpOworCisJLyoKKwkgKiBTY2FsZSBjYW4gYmUgY29uZmlndXJlZCBpbmRp
dmlkdWFsbHkgZm9yIGVhY2ggY2hhbm5lbAorCSAqIGluIHNvZnR3YXJlIG1vZGUuCisJICovCisJ
aW5kaW9fZGV2LT5jaGFubmVscyA9IGFkNzYxNl9zd19jaGFubmVsczsKKworCS8qIEFjdGl2YXRl
IEJ1cnN0IG1vZGUgYW5kIFNFUUVOIE1PREUgKi8KKwlyZXR1cm4gYWQ3NjA2X3NwaV93cml0ZV9t
YXNrKHN0LAorCQkJICAgICAgQUQ3NjE2X0NPTkZJR1VSQVRJT05fUkVHSVNURVIsCisJCQkgICAg
ICBBRDc2MTZfQlVSU1RfTU9ERSB8IEFENzYxNl9TRVFFTl9NT0RFLAorCQkJICAgICAgQUQ3NjE2
X0JVUlNUX01PREUgfCBBRDc2MTZfU0VRRU5fTU9ERSk7Cit9CisKIGludCBhZDc2MDZfcHJvYmUo
c3RydWN0IGRldmljZSAqZGV2LCBpbnQgaXJxLCB2b2lkIF9faW9tZW0gKmJhc2VfYWRkcmVzcywK
IAkJIGNvbnN0IGNoYXIgKm5hbWUsIHVuc2lnbmVkIGludCBpZCwKIAkJIGNvbnN0IHN0cnVjdCBh
ZDc2MDZfYnVzX29wcyAqYm9wcykKQEAgLTYxNyw2ICs3NjQsMTAgQEAgaW50IGFkNzYwNl9wcm9i
ZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGludCBpcnEsIHZvaWQgX19pb21lbSAqYmFzZV9hZGRyZXNz
LAogCWlmIChyZXQpCiAJCWRldl93YXJuKHN0LT5kZXYsICJmYWlsZWQgdG8gUkVTRVQ6IG5vIFJF
U0VUIEdQSU8gc3BlY2lmaWVkXG4iKTsKIAorCS8qIEFENzYxNiByZXF1aXJlcyBhbCBsZWFzdCAx
NW1zIHRvIHJlY29uZmlndXJlIGFmdGVyIGEgcmVzZXQgKi8KKwlpZiAobXNsZWVwX2ludGVycnVw
dGlibGUoMTUpKQorCQlyZXR1cm4gLUVSRVNUQVJUU1lTOworCiAJc3QtPndyaXRlX3NjYWxlID0g
YWQ3NjA2X3dyaXRlX3NjYWxlX2h3OwogCXN0LT53cml0ZV9vcyA9IGFkNzYwNl93cml0ZV9vc19o
dzsKIApAQCAtNjI1LDYgKzc3NiwxMCBAQCBpbnQgYWQ3NjA2X3Byb2JlKHN0cnVjdCBkZXZpY2Ug
KmRldiwgaW50IGlycSwgdm9pZCBfX2lvbWVtICpiYXNlX2FkZHJlc3MsCiAJCQkJCQkJICJhZGks
c3ctbW9kZSIpOwogCiAJaWYgKHN0LT5zd19tb2RlX2VuKSB7CisJCS8qIFNjYWxlIG9mIDAuMDc2
MjkzIGlzIG9ubHkgYXZhaWxhYmxlIGluIHN3IG1vZGUgKi8KKwkJc3QtPnNjYWxlX2F2YWlsID0g
YWQ3NjE2X3N3X3NjYWxlX2F2YWlsOworCQlzdC0+bnVtX3NjYWxlcyA9IEFSUkFZX1NJWkUoYWQ3
NjE2X3N3X3NjYWxlX2F2YWlsKTsKKwogCQkvKiBBZnRlciByZXNldCwgaW4gc29mdHdhcmUgbW9k
ZSwgwrExMCBWIGlzIHNldCBieSBkZWZhdWx0ICovCiAJCW1lbXNldDMyKHN0LT5yYW5nZSwgMiwg
QVJSQVlfU0laRShzdC0+cmFuZ2UpKTsKIAkJaW5kaW9fZGV2LT5pbmZvID0gJmFkNzYwNl9pbmZv
X29zX2FuZF9yYW5nZTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuaCBiL2Ry
aXZlcnMvaWlvL2FkYy9hZDc2MDYuaAppbmRleCBkOGE1MDljMmM0MjguLjE1NGRjNWQxYTBjZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5oCisrKyBiL2RyaXZlcnMvaWlvL2Fk
Yy9hZDc2MDYuaApAQCAtMTYsNiArMTYsNyBAQAogICoJCQlvdmVyc2FtcGxpbmcgcmF0aW9zLgog
ICogQG92ZXJzYW1wbGluZ19udW0JbnVtYmVyIG9mIGVsZW1lbnRzIHN0b3JlZCBpbiBvdmVyc2Ft
cGxpbmdfYXZhaWwgYXJyYXkKICAqIEBvc19yZXFfcmVzZXQJc29tZSBkZXZpY2VzIHJlcXVpcmUg
YSByZXNldCB0byB1cGRhdGUgb3ZlcnNhbXBsaW5nCisgKiBAc3BpX3JkX3dyX2NtZAlwb2ludGVy
IHRvIHRoZSBmdW5jdGlvbiB3aGljaCBjYWxjdWxhdGVzIHRoZSBzcGkgYWRkcmVzcwogICogQHdy
aXRlX3NjYWxlX3N3CXBvaW50ZXIgdG8gdGhlIGZ1bmN0aW9uIHdoaWNoIHdyaXRlcyB0aGUgc2Nh
bGUgdmlhIHNwaQogCQkJaW4gc29mdHdhcmUgbW9kZQogICogQHdyaXRlX29zX3N3CQlwb2ludGVy
IHRvIHRoZSBmdW5jdGlvbiB3aGljaCB3cml0ZXMgdGhlIG9zIHZpYSBzcGkKQEAgLTI5LDYgKzMw
LDcgQEAgc3RydWN0IGFkNzYwNl9jaGlwX2luZm8gewogCWNvbnN0IHVuc2lnbmVkIGludAkJKm92
ZXJzYW1wbGluZ19hdmFpbDsKIAl1bnNpZ25lZCBpbnQJCQlvdmVyc2FtcGxpbmdfbnVtOwogCWJv
b2wJCQkJb3NfcmVxX3Jlc2V0OworCXUxNiAoKnNwaV9yZF93cl9jbWQpKGludCBhZGRyLCBjaGFy
IGlzV3JpdGVPcCk7CiAJaW50ICgqd3JpdGVfc2NhbGVfc3cpKHN0cnVjdCBpaW9fZGV2ICppbmRp
b19kZXYsIGludCBjaCwgaW50IHZhbCk7CiAJaW50ICgqd3JpdGVfb3Nfc3cpKHN0cnVjdCBpaW9f
ZGV2ICppbmRpb19kZXYsIGludCB2YWwpOwogCWludCAoKnN3X21vZGVfY29uZmlnKShzdHJ1Y3Qg
aWlvX2RldiAqaW5kaW9fZGV2KTsKQEAgLTYzLDYgKzY1LDcgQEAgc3RydWN0IGFkNzYwNl9jaGlw
X2luZm8gewogICogQGNvbXBsZXRlCQljb21wbGV0aW9uIHRvIGluZGljYXRlIGVuZCBvZiBjb252
ZXJzaW9uCiAgKiBAdHJpZwkJVGhlIElJTyB0cmlnZ2VyIGFzc29jaWF0ZWQgd2l0aCB0aGUgZGV2
aWNlLgogICogQGRhdGEJCWJ1ZmZlciBmb3IgcmVhZGluZyBkYXRhIGZyb20gdGhlIGRldmljZQor
ICogQGQxNgkJCWJlMTYgYnVmZmVyIGZvciByZWFkaW5nIGRhdGEgZnJvbSB0aGUgZGV2aWNlCiAg
Ki8KIHN0cnVjdCBhZDc2MDZfc3RhdGUgewogCXN0cnVjdCBkZXZpY2UJCQkqZGV2OwpAQCAtOTYs
NiArOTksNyBAQCBzdHJ1Y3QgYWQ3NjA2X3N0YXRlIHsKIAkgKiAxNiAqIDE2LWJpdCBzYW1wbGVz
ICsgNjQtYml0IHRpbWVzdGFtcAogCSAqLwogCXVuc2lnbmVkIHNob3J0CQkJZGF0YVsyMF0gX19f
X2NhY2hlbGluZV9hbGlnbmVkOworCV9fYmUxNgkJCQlkMTZbMl07CiB9OwogCiAvKioKLS0gCjIu
MTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
