Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D651AAD15
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 18:13:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8F02686126;
	Wed, 15 Apr 2020 16:13:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UTXhhz00lRvP; Wed, 15 Apr 2020 16:13:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C6DC860F9;
	Wed, 15 Apr 2020 16:13:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id ED80F1BF326
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E48F82013C
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i8MOVTM3-72K for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 16:12:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2082.outbound.protection.outlook.com [40.107.237.82])
 by silver.osuosl.org (Postfix) with ESMTPS id 008332094B
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 16:12:57 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gRhExUrctMZxxmugiV57+YkvEAV8rFGVWXsb7NcmOjOwdIzDBo0R5E8E/F2wCQcqWwjrQav1+2LjEErRMWC9q+A5hWOYkN1blLd3HeJmDF1312xODFoYQv4pYPTz1M+5HUpUnT4eqVdruR6v6K0YBb71aziWRjRxmmb8bm0xgPVmvFoB//D9KwxwQNWHLY2oeHDBpmAKRUzO1Zwwnj//FnXYYxTANiRaW61D6Dx43C8+Zhv/zozOAyB2PwaF6+SCtFGh9boYcppUakoo8veHxIpfJed+hrYKpETa9e7jiC2agLcdAlR2ilcyBa8ZEgFwWeXWvqv136xCYKZI1jxg8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PsLs1OxEeKp373acEswvEzW2lwt+yt9ZoQQ9xvugGxc=;
 b=CErpnoB3ydnf5AwfRodH6hQ9idkEY9vP9eN6RjrpLGOdSGH8Oe0H68jA+mf1ourRDcHBaLj8n/ljrl8dwNsmlLi1md2hky8yvXJFhKaQfT0hRdYHl5IlSZd182KyDLvhuQjvDhF1iZHhDp9IzuMzUXjCvM+9E2Yz+ZyFvIdMIv9687Tv6uK9z2mutVVQRe/eDQTOofSAFMysZ9Dob6APLiZS4A+rYJGKI0qXTLvZi75RCtz/FajPYDrTJvXlr+zT6rMEIrgbf933PRDBtK7UbZe5iWHQ9nUHh2c0uH4RMe2aE5vwhJv8GHNdLM9xT+K/F4dbBM77BT3nsD/vBKZyzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PsLs1OxEeKp373acEswvEzW2lwt+yt9ZoQQ9xvugGxc=;
 b=frVDpIDi/GshSU3iwaa3n/84W7bQyYS4otzWPuPP3PrU0kNNwdyJKUGczHMSPmFx6Kf+zjxLAQV3lO+qQCMVAq51TMab3y0XC7Qgg6aR8sYNTMwtaSMBheAgHJE0nOlsPZNoDxvzTsiPxBH1T+8boeqzPcIMEZFQ3ilxXxL55dg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1327.namprd11.prod.outlook.com (2603:10b6:300:2a::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Wed, 15 Apr
 2020 16:12:56 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2921.024; Wed, 15 Apr
 2020 16:12:56 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 17/20] staging: wfx: split out wfx_filter_beacon()
Date: Wed, 15 Apr 2020 18:11:44 +0200
Message-Id: <20200415161147.69738-18-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415161147.69738-1-Jerome.Pouiller@silabs.com>
References: <20200415161147.69738-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR1PR01CA0027.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::40) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 PR1PR01CA0027.eurprd01.prod.exchangelabs.com (2603:10a6:102::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Wed, 15 Apr 2020 16:12:53 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea04f042-a629-4c60-e80a-08d7e157db9d
X-MS-TrafficTypeDiagnostic: MWHPR11MB1327:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1327B66645333A056C23866F93DB0@MWHPR11MB1327.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39850400004)(136003)(346002)(366004)(376002)(396003)(4326008)(81156014)(107886003)(52116002)(54906003)(8676002)(478600001)(8936002)(6506007)(5660300002)(6512007)(36756003)(8886007)(86362001)(316002)(6486002)(1076003)(2616005)(186003)(2906002)(66574012)(6666004)(66556008)(16526019)(66946007)(66476007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O2Lp7+U/OT/rMJQBeD0/iBf8c2b/yhzRtiCQNs+i48TsH3kW3V4lGONUcI8DosZPexZKXibdizDt6QyxBvMQBQZlxP3B/LZlhSY1BgDUSibI1ExNxo1dS+E5CCkfBBS1OW/i+MsgrH4UbE37CYm/ESlfN0w0tQSqaM4YYcDLpP9GONWUvoF2UEfSj6RKWsesVQsrZsbr0yd+OZfR8MpW6FGpLy3GAZ+jw94UuJHlIVavP4dsn4PxM/1UcrpdM5kTozJRXtvJ1jLtBxKINWlOgXxelbwsjnY1kZZzhcJTaCr17Ix0KkvbJ0PxK9teYFreYNdoCtaR5pompl+Vg1D0B4Eo0xtePjL4HBpIzaYZZdHRaxhKCRh36XG+YmOZccWV5yLW8EXovjpY+OYjTBZYyAb0jDq70jnb/XX+HDHLwUnP9gbRNzFCjH6PiMRSNjcY
X-MS-Exchange-AntiSpam-MessageData: 05Osgtzraxa5JC0PyCJDDxDkke/AGxh74JWqKTJRwrdYsv3urwAdvrYes4v8gcVU3Ee7T2MwucWTmg/nmOZGLA5mYV8vqzTdf1/2xGe8RIYq4mwpXNfJiclDXt5bDxT/nZ8Mn4ihRVDEAQSR6md0J/u+4KJGHVI7dVvWPXPpA9kEGbYBUp8p8b7oU504quxt3T6QwBEYOAxwuncruHlidg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea04f042-a629-4c60-e80a-08d7e157db9d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 16:12:56.2256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: isU5zsJC5pe/1+Sc0h0ujkpKofWmY/dSbC0oxiA5pvJOOQl9z0YXYmmzKej6I/xELhKERMCrn3SYON0xN7MH2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1327
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQ3Vy
cmVudGx5LCB3ZnhfdXBkYXRlX2ZpbHRlcmluZygpIGlzIHNvbWV0aW1lIGNhbGxlZCBvbmx5IHRv
IGFwcGx5IHRoZQp2YWx1ZSBvZiB3dmlmLT5maWx0ZXJfYmVhY29uIHRvIHRoZSBoYXJkd2FyZS4g
SXQgaXMgbmljZXIgdG8gaGF2ZSBhCnNwZWNpZmljIGZ1bmN0aW9uIGZvciBiZWFjb24gZmlsdGVy
aW5nLgoKSW4gYWRkLCBhbiBhdHRlbnRpdmUgcmVhZGVyIHdvdWxkIG5vdGUgdGhhdCB3ZnhfdXBk
YXRlX2ZpbHRlcmluZygpIGlzCmFsd2F5cyBjYWxsZWQgYWZ0ZXIgY2hhbmdlIG9mIHd2aWYtPmZp
bHRlcl9iZWFjb24uIFRodXMsIGl0IG5vdApuZWNlc3NhcnkgdG8gc3RvcmUgZmlsdGVyX2JlYWNv
biBpbiB0aGUgc3RydWN0IHdmeF92aWYuIFdlIGNhbiBqdXN0IHBhc3MKaXQgYXMgcGFyYW1ldGVy
LgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxh
YnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgfCAyMyArKysrKysrKysrKysr
LS0tLS0tLS0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaCB8ICAxIC0KIDIgZmlsZXMgY2hh
bmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKaW5kZXgg
YTkyNjFlZjRiNGM1Li4xY2NkNDBhMzMyMmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93
Zngvc3RhLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtMTEzLDkgKzExMyw4
IEBAIHZvaWQgd2Z4X2NxbV9ic3Nsb3NzX3NtKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgaW5p
dCwgaW50IGdvb2QsIGludCBiYWQpCiAJbXV0ZXhfdW5sb2NrKCZ3dmlmLT5ic3NfbG9zc19sb2Nr
KTsKIH0KIAotdm9pZCB3ZnhfdXBkYXRlX2ZpbHRlcmluZyhzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikK
K3N0YXRpYyB2b2lkIHdmeF9maWx0ZXJfYmVhY29uKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBib29s
IGZpbHRlcl9iZWFjb24pCiB7Ci0JaW50IGk7CiAJY29uc3Qgc3RydWN0IGhpZl9pZV90YWJsZV9l
bnRyeSBmaWx0ZXJfaWVzW10gPSB7CiAJCXsKIAkJCS5pZV9pZCAgICAgICAgPSBXTEFOX0VJRF9W
RU5ET1JfU1BFQ0lGSUMsCkBAIC0xMzYsMTMgKzEzNSwxOCBAQCB2b2lkIHdmeF91cGRhdGVfZmls
dGVyaW5nKHN0cnVjdCB3ZnhfdmlmICp3dmlmKQogCQl9CiAJfTsKIAotCWlmICghd3ZpZi0+Zmls
dGVyX2JlYWNvbikgeworCWlmICghZmlsdGVyX2JlYWNvbikgewogCQloaWZfc2V0X2JlYWNvbl9m
aWx0ZXJfdGFibGUod3ZpZiwgMCwgTlVMTCk7CiAJCWhpZl9iZWFjb25fZmlsdGVyX2NvbnRyb2wo
d3ZpZiwgMCwgMSk7CiAJfSBlbHNlIHsKIAkJaGlmX3NldF9iZWFjb25fZmlsdGVyX3RhYmxlKHd2
aWYsIDMsIGZpbHRlcl9pZXMpOwogCQloaWZfYmVhY29uX2ZpbHRlcl9jb250cm9sKHd2aWYsIEhJ
Rl9CRUFDT05fRklMVEVSX0VOQUJMRSwgMCk7CiAJfQorfQorCit2b2lkIHdmeF91cGRhdGVfZmls
dGVyaW5nKHN0cnVjdCB3ZnhfdmlmICp3dmlmKQoreworCWludCBpOwogCiAJLy8gVGVtcG9yYXJ5
IHdvcmthcm91bmQgZm9yIGZpbHRlcnMKIAloaWZfc2V0X2RhdGFfZmlsdGVyaW5nKHd2aWYsIGZh
bHNlLCB0cnVlKTsKQEAgLTE5NCw3ICsxOTgsNyBAQCB2b2lkIHdmeF9jb25maWd1cmVfZmlsdGVy
KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogewogCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gTlVM
TDsKIAlzdHJ1Y3Qgd2Z4X2RldiAqd2RldiA9IGh3LT5wcml2OwotCWJvb2wgZmlsdGVyX2Jzc2lk
LCBmaWx0ZXJfcHJicmVxOworCWJvb2wgZmlsdGVyX2Jzc2lkLCBmaWx0ZXJfcHJicmVxLCBmaWx0
ZXJfYmVhY29uOwogCiAJLy8gTm90ZXM6CiAJLy8gICAtIFByb2JlIHJlc3BvbnNlcyAoRklGX0JD
Tl9QUkJSRVNQX1BST01JU0MpIGFyZSBuZXZlciBmaWx0ZXJlZApAQCAtMjEzLDkgKzIxNywxMCBA
QCB2b2lkIHdmeF9jb25maWd1cmVfZmlsdGVyKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCQkv
LyBOb3RlOiBGSUZfQkNOX1BSQlJFU1BfUFJPTUlTQyBjb3ZlcnMgcHJvYmUgcmVzcG9uc2UgYW5k
CiAJCS8vIGJlYWNvbnMgZnJvbSBvdGhlciBCU1MKIAkJaWYgKCp0b3RhbF9mbGFncyAmIEZJRl9C
Q05fUFJCUkVTUF9QUk9NSVNDKQotCQkJd3ZpZi0+ZmlsdGVyX2JlYWNvbiA9IGZhbHNlOworCQkJ
ZmlsdGVyX2JlYWNvbiA9IGZhbHNlOwogCQllbHNlCi0JCQl3dmlmLT5maWx0ZXJfYmVhY29uID0g
dHJ1ZTsKKwkJCWZpbHRlcl9iZWFjb24gPSB0cnVlOworCQl3ZnhfZmlsdGVyX2JlYWNvbih3dmlm
LCBmaWx0ZXJfYmVhY29uKTsKIAogCQlpZiAoKnRvdGFsX2ZsYWdzICYgRklGX0FMTE1VTFRJKSB7
CiAJCQl3dmlmLT5maWx0ZXJfbWNhc3QgPSBmYWxzZTsKQEAgLTUwMSw4ICs1MDYsNyBAQCBzdGF0
aWMgdm9pZCB3ZnhfZG9fam9pbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAkJICogRGlzYWJsZSBm
aWx0ZXJpbmcgdGVtcG9yYXJ5IHRvIG1ha2Ugc3VyZSB0aGUgc3RhY2sKIAkJICogcmVjZWl2ZXMg
YXQgbGVhc3Qgb25lCiAJCSAqLwotCQl3dmlmLT5maWx0ZXJfYmVhY29uID0gZmFsc2U7Ci0JCXdm
eF91cGRhdGVfZmlsdGVyaW5nKHd2aWYpOworCQl3ZnhfZmlsdGVyX2JlYWNvbih3dmlmLCBmYWxz
ZSk7CiAJfQogCXdmeF90eF91bmxvY2sod3ZpZi0+d2Rldik7CiB9CkBAIC03MDMsOCArNzA3LDcg
QEAgdm9pZCB3ZnhfYnNzX2luZm9fY2hhbmdlZChzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAkJ
CQkJICAgICBpbmZvLT5kdGltX3BlcmlvZCk7CiAJCS8vIFdlIHRlbXBvcmFyeSBmb3J3YXJkZWQg
YmVhY29uIGZvciBqb2luIHByb2Nlc3MuIEl0IGlzIG5vdyBubwogCQkvLyBtb3JlIG5lY2Vzc2Fy
eS4KLQkJd3ZpZi0+ZmlsdGVyX2JlYWNvbiA9IHRydWU7Ci0JCXdmeF91cGRhdGVfZmlsdGVyaW5n
KHd2aWYpOworCQl3ZnhfZmlsdGVyX2JlYWNvbih3dmlmLCB0cnVlKTsKIAl9CiAKIAkvKiBhc3Nv
Yy9kaXNhc3NvYywgb3IgbWF5YmUgQUlEIGNoYW5nZWQgKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy93Zngvd2Z4LmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oCmluZGV4IDMxMGQ5
NTQ3ODgyNC4uYzMwZTY5ODRhZWMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dm
eC5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmgKQEAgLTkwLDcgKzkwLDYgQEAgc3Ry
dWN0IHdmeF92aWYgewogCWludAkJCWZpbHRlcl9tY2FzdF9jb3VudDsKIAl1OAkJCWZpbHRlcl9t
Y2FzdF9hZGRyWzhdW0VUSF9BTEVOXTsKIAlib29sCQkJZmlsdGVyX21jYXN0OwotCWJvb2wJCQlm
aWx0ZXJfYmVhY29uOwogCiAJdW5zaWduZWQgbG9uZwkJdWFwc2RfbWFzazsKIAlzdHJ1Y3QgaGlm
X3JlcV9zZXRfYnNzX3BhcmFtcyBic3NfcGFyYW1zOwotLSAKMi4yNS4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
