Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1C713C410
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:56:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 87ED420517;
	Wed, 15 Jan 2020 13:56:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lb+5gtTDoRCb; Wed, 15 Jan 2020 13:56:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0158C203C8;
	Wed, 15 Jan 2020 13:55:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5715C1BF988
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5004E85F49
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DE16qP7Nt1ai for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:55:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2069.outbound.protection.outlook.com [40.107.237.69])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB97585F44
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:55:32 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cE+s95htSBcGQwgdfnkuotuPbeHys7sEHPjKoVW7aCSY1H3fcFqkmfRzheTcniy/tyJBlJGhmBt1jfMqlI3dQhWzJW/D/TdeAQhPj4Mkt5l0i26P+aUV0RaPIs///gbBSsmym7OUc/LQO21Glm8Z1wqaNOU6/zdaU/o0MM3NpTEabNHE/IaKtx0aU99U8pSVmKo1SNv9eIMtuyP20ZSucvfXqSCHKfVqkdZ9WctATg5IhjWFCZ2DDjdhyq65srjm3wE7xe/eD3Uaf9CZMBiuW24dvUhiyHBZ/hsHGX2jD6rVuOT3AZciu6sM4Cs5qOH2V449sYAHOkw580naEeCD3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mu+qG//gBvr7FMjRPBL9jyX0ISunaS6iGeqd+pcW++k=;
 b=VKdIm4UtMIRAKnU87RxRcwdw5CsFCx8IJ4l1ExsW1sfO4rRbO0rUuoPdujL6Cz2DoTgLYtF/SHpb5B4R6SGS6DG/XPgJqwMbnStDiPZgMtVhUuSv0kHSm0zQ5/NXtnf5ueFO/yavcYDEsMe9xCXnfTj8Ff5O14V2DcXXeZ21glOOThTNtmXe4GhPkXi/joY31pa2LXVooZvrYBzIuiVaP82K/fr2bIiKjZ3ZoWQAouxaYuJPpu/NguI/+NlXnUMYopM458eEC3UHDfB7Gi9N3t1seNrqWyX3ziApHSpbUF2eHWDoZSqTftUJl50VyHoBKt7MAMLOIizOHGcYSR5ANA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mu+qG//gBvr7FMjRPBL9jyX0ISunaS6iGeqd+pcW++k=;
 b=ZqgBvA75g1utIqy2CrsGMh6pAvZ/hpQ8XwL2wV8AGY604JbhskzcJQkm1fKZnKARJR61mWpH8kfMAcLQisrMo2aHy66AWwfYZC8DB0WkrfhFwfEFVcClYMhYNyH/FnyLg5DPuqaMO3cPQkLT1LXZ6C5Ty2BxTUHZJ7G4knAHdaw=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3661.namprd11.prod.outlook.com (20.178.252.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 15 Jan 2020 13:55:31 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:55:31 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:55:24 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 57/65] staging: wfx: simplify handling of
 IEEE80211_TX_CTL_SEND_AFTER_DTIM
Thread-Topic: [PATCH v2 57/65] staging: wfx: simplify handling of
 IEEE80211_TX_CTL_SEND_AFTER_DTIM
Thread-Index: AQHVy6twtXbIGmYGL0SoZz5GU/tFlw==
Date: Wed, 15 Jan 2020 13:55:25 +0000
Message-ID: <20200115135338.14374-58-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: ea0debf1-582d-4a49-73b6-08d799c2925d
x-ms-traffictypediagnostic: MN2PR11MB3661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3661E03F7A8675A4FB4AC49693370@MN2PR11MB3661.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(136003)(346002)(366004)(199004)(189003)(8886007)(6486002)(316002)(54906003)(71200400001)(36756003)(6506007)(66476007)(66446008)(66946007)(110136005)(8676002)(81166006)(81156014)(478600001)(86362001)(2616005)(4326008)(66574012)(2906002)(107886003)(1076003)(16526019)(186003)(30864003)(85202003)(5660300002)(6512007)(52116002)(64756008)(66556008)(85182001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3661;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tytHxcCmgEw9SYVa2W2SuZ52X8J5wtIV59mBg7S9LIyF7KayE+aVFNPgITUvWlz59iQ5+JjasqXu79JUcTv9p2Iy/D/llgDUxdiIP49ljkkzwq5Uc0w2A7NqhPCYSf6Z1N4aC6tQ4AfakRSI8NKr4NgpeUKclmNlw4fXlvdLkdbqxlsQ82pnASd/EtaGWzOQ8vuMRuIwC0dA2gZT2j5uemrfSWnvU6UfHbPriSasomZhhnxrgSoERTE5iyQlIEY2SvKbQnTcPp+rCYesIm0PD57dILXv+inc1xd2i8sZHnisG4fckLbtobThLbsv/Hy8jzmnYBkG5oKcjsSLs6TNAxLnbV5a3anozb5IBRskD6uWc65k8h6FH7NkbMA6ebxNZBY3puMC3rMWkejrhBCpekUqHOOjWXKkth8IgLdlp9zrS6oH1rmMNMmsU9B6405t
Content-ID: <BB6BB977BE78D3429FA426BFB07CFD3C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea0debf1-582d-4a49-73b6-08d799c2925d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:55:25.6496 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EKPZPvPerdgj0hO0H00HYRHtnFvxl1E94X2FMw7l1bL/4ZqHoJ8giz2QPsHEoA4nxltHNoOyOmlFtqbm30+/ww==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKV2hl
biBtYWM4MDIxMSBhc2sgZm9yIGEgZnJhbWUgdG8gYmUgc2VudCBhZnRlciBhIERUSU0sIGRyaXZl
ciBzaG91bGQ6CiAgMS4gVXBkYXRlIFRJTSB3aXRoIG11bHRpY2FzdCBiaXQgc2V0ICh1c2luZyB1
cGRhdGVfaWUpLiBUaGlzIGZ1bmN0aW9uCiAgICAgY2FuIGJlIGNhbGxlZCB3aGVuZXZlci4KICAy
LiBLZWVwIGJ1ZmZlcmVkIGFsbCBmcmFtZXMgbWFya2VkICJhZnRlciBkdGltIgogIDMuIFdoZW4g
aXQgcmVjZWl2ZSBhIHN1c3BlbmRfcmVzdW1lIGluZGljYXRpb24gKHNlZQogICAgIHdmeF9zdXNw
ZW5kX3Jlc3VtZV9tYygpKSwgc2VuZCBhbGwgdGhlIGJ1ZmZlcmVkIGZyYW1lcy4gVGhpcwogICAg
IGluZGljYXRpb24gaXMgc2VudCBieSB0aGUgZmlybXdhcmUgNG1zIGJlZm9yZSB0aGUgZHRpbS4K
ICA0LiBJZiBvbmUgb2YgdGhlIGZyYW1lcyByZXR1cm5zIHN0YXR1cyAiUkVRVUVVRSIsIGl0IG1l
YW5zIHRoYXQgdGhlCiAgICAgRFRJTSBwZXJpb2Qgd2FzIGVuZGVkIGJlZm9yZSB0byBiZSBhYmxl
IHRvIHNlbmQgdGhlIGZyYW1lLgogIDUuIFdoZW4gYWxsIHRoZSBidWZmZXJlZCBmcmFtZXMgd2Vy
ZSBzZW50IG9yIGlmIERUSU0gcGVyaW9kIHdhcyBlbmRlZCwKICAgICBkcml2ZXIgc2hvdWxkIHVw
ZGF0ZSB0aGUgVElNIHdpdGggbXVsdGljYXN0IGJpdCByZXNldC4KCkFsbCB0aGUgbWVzcyB3aXRo
IHRoZSBhc3luY2hyb25vdXMgd29ya3MgY2FuIGJlIGRyb3BwZWQuCgpTaWduZWQtb2ZmLWJ5OiBK
w6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVy
cy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgICAgIHwgMTcgKysrLS0tCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl9hcGlfY21kLmggfCAgMyArLQogZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jICAg
ICAgIHwgOTggKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9zdGFnaW5n
L3dmeC9xdWV1ZS5oICAgICAgIHwgIDEgKwogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyAgICAg
ICAgIHwgNzggKystLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3dm
eC5oICAgICAgICAgfCAgNyArLS0KIDYgZmlsZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwg
MTM4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90
eC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKaW5kZXggODcxMDM4M2Y2NmU1Li5j
MzI5OTQ1NTM2MzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCkBAIC0yODgsMTMgKzI4OCw2IEBAIHN0
YXRpYyB2b2lkIHdmeF90eF9tYW5hZ2VfcG0oc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBp
ZWVlODAyMTFfaGRyICpoZHIsCiAJc3Bpbl9sb2NrX2JoKCZ3dmlmLT5wc19zdGF0ZV9sb2NrKTsK
IAlpZiAoaWVlZTgwMjExX2lzX2F1dGgoaGRyLT5mcmFtZV9jb250cm9sKSkKIAkJd3ZpZi0+c3Rh
X2FzbGVlcF9tYXNrICY9IG1hc2s7Ci0KLQlpZiAodHhfcHJpdi0+bGlua19pZCA9PSBXRlhfTElO
S19JRF9BRlRFUl9EVElNICYmCi0JICAgICF3dmlmLT5tY2FzdF9idWZmZXJlZCkgewotCQl3dmlm
LT5tY2FzdF9idWZmZXJlZCA9IHRydWU7Ci0JCWlmICh3dmlmLT5zdGFfYXNsZWVwX21hc2spCi0J
CQlzY2hlZHVsZV93b3JrKCZ3dmlmLT5tY2FzdF9zdGFydF93b3JrKTsKLQl9CiAJc3Bpbl91bmxv
Y2tfYmgoJnd2aWYtPnBzX3N0YXRlX2xvY2spOwogCiAJaWYgKHN0YSkgewpAQCAtNDc5LDYgKzQ3
Miw4IEBAIHN0YXRpYyBpbnQgd2Z4X3R4X2lubmVyKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1
Y3QgaWVlZTgwMjExX3N0YSAqc3RhLAogCXJlcS0+cGFja2V0X2lkID0gcXVldWVfaWQgPDwgMTYg
fAogCQkJIElFRUU4MDIxMV9TRVFfVE9fU04obGUxNl90b19jcHUoaGRyLT5zZXFfY3RybCkpOwog
CXJlcS0+ZGF0YV9mbGFncy5mY19vZmZzZXQgPSBvZmZzZXQ7CisJaWYgKHR4X2luZm8tPmZsYWdz
ICYgSUVFRTgwMjExX1RYX0NUTF9TRU5EX0FGVEVSX0RUSU0pCisJCXJlcS0+ZGF0YV9mbGFncy5h
ZnRlcl9kdGltID0gMTsKIAlyZXEtPnF1ZXVlX2lkLnBlZXJfc3RhX2lkID0gdHhfcHJpdi0+cmF3
X2xpbmtfaWQ7CiAJLy8gUXVldWUgaW5kZXggYXJlIGludmVydGVkIGJldHdlZW4gZmlybXdhcmUg
YW5kIExpbnV4CiAJcmVxLT5xdWV1ZV9pZC5xdWV1ZV9pZCA9IDMgLSBxdWV1ZV9pZDsKQEAgLTQ4
OCw2ICs0ODMsOCBAQCBzdGF0aWMgaW50IHdmeF90eF9pbm5lcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3Zp
Ziwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKIAkvLyBBdXhpbGlhcnkgb3BlcmF0aW9ucwog
CXdmeF90eF9tYW5hZ2VfcG0od3ZpZiwgaGRyLCB0eF9wcml2LCBzdGEpOwogCXdmeF90eF9xdWV1
ZV9wdXQod3ZpZi0+d2RldiwgJnd2aWYtPndkZXYtPnR4X3F1ZXVlW3F1ZXVlX2lkXSwgc2tiKTsK
KwlpZiAodHhfaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhfQ1RMX1NFTkRfQUZURVJfRFRJTSkK
KwkJc2NoZWR1bGVfd29yaygmd3ZpZi0+dXBkYXRlX3RpbV93b3JrKTsKIAl3ZnhfYmhfcmVxdWVz
dF90eCh3dmlmLT53ZGV2KTsKIAlyZXR1cm4gMDsKIH0KQEAgLTU5OSw5ICs1OTYsMTEgQEAgdm9p
ZCB3ZnhfdHhfY29uZmlybV9jYihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29uc3Qgc3RydWN0IGhp
Zl9jbmZfdHggKmFyZykKIAkJZWxzZQogCQkJdHhfaW5mby0+ZmxhZ3MgfD0gSUVFRTgwMjExX1RY
X1NUQVRfQUNLOwogCX0gZWxzZSBpZiAoYXJnLT5zdGF0dXMgPT0gSElGX1JFUVVFVUUpIHsKLQkJ
LyogIlJFUVVFVUUiIG1lYW5zICJpbXBsaWNpdCBzdXNwZW5kIiAqLwogCQlXQVJOKCFhcmctPnR4
X3Jlc3VsdF9mbGFncy5yZXF1ZXVlLCAiaW5jb2hlcmVudCBzdGF0dXMgYW5kIHJlc3VsdF9mbGFn
cyIpOwotCQl3Znhfc3VzcGVuZF9yZXN1bWVfbWMod3ZpZiwgU1RBX05PVElGWV9TTEVFUCk7CisJ
CWlmICh0eF9pbmZvLT5mbGFncyAmIElFRUU4MDIxMV9UWF9DVExfU0VORF9BRlRFUl9EVElNKSB7
CisJCQl3dmlmLT5hZnRlcl9kdGltX3R4X2FsbG93ZWQgPSBmYWxzZTsgLy8gRFRJTSBwZXJpb2Qg
ZWxhcHNlZAorCQkJc2NoZWR1bGVfd29yaygmd3ZpZi0+dXBkYXRlX3RpbV93b3JrKTsKKwkJfQog
CQl0eF9pbmZvLT5mbGFncyB8PSBJRUVFODAyMTFfVFhfU1RBVF9UWF9GSUxURVJFRDsKIAl9IGVs
c2UgewogCQlpZiAod3ZpZi0+YnNzX2xvc3Nfc3RhdGUgJiYKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvaGlmX2FwaV9jbWQuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9j
bWQuaAppbmRleCBmYzA3OGQ1NGJmYmYuLjU1NTRkNmVkZGJmMyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlm
X2FwaV9jbWQuaApAQCAtMjUzLDcgKzI1Myw4IEBAIHN0cnVjdCBoaWZfcXVldWUgewogc3RydWN0
IGhpZl9kYXRhX2ZsYWdzIHsKIAl1OCAgICBtb3JlOjE7CiAJdTggICAgZmNfb2Zmc2V0OjM7Ci0J
dTggICAgcmVzZXJ2ZWQ6NDsKKwl1OCAgICBhZnRlcl9kdGltOjE7CisJdTggICAgcmVzZXJ2ZWQ6
MzsKIH0gX19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZfdHhfZmxhZ3MgewpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jCmlu
ZGV4IDQyZDY0NTM0YzkyYy4uZWMxMWE2M2EyZmY5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdp
bmcvd2Z4L3F1ZXVlLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jCkBAIC0yMzUs
NyArMjM1LDYgQEAgc3RhdGljIHN0cnVjdCBza19idWZmICp3ZnhfdHhfcXVldWVfZ2V0KHN0cnVj
dCB3ZnhfZGV2ICp3ZGV2LAogCQkJYnJlYWs7CiAJCX0KIAl9Ci0JV0FSTl9PTighc2tiKTsKIAlp
ZiAoc2tiKSB7CiAJCXR4X3ByaXYgPSB3Znhfc2tiX3R4X3ByaXYoc2tiKTsKIAkJdHhfcHJpdi0+
eG1pdF90aW1lc3RhbXAgPSBrdGltZV9nZXQoKTsKQEAgLTQ3MywyMyArNDcyLDEyIEBAIHN0YXRp
YyBpbnQgd2Z4X2dldF9wcmlvX3F1ZXVlKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAogCiBzdGF0aWMg
aW50IHdmeF90eF9xdWV1ZV9tYXNrX2dldChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKIAkJCQkgICAg
IHN0cnVjdCB3ZnhfcXVldWUgKipxdWV1ZV9wLAotCQkJCSAgICAgdTMyICp0eF9hbGxvd2VkX21h
c2tfcCwKLQkJCQkgICAgIGJvb2wgKm1vcmUpCisJCQkJICAgICB1MzIgKnR4X2FsbG93ZWRfbWFz
a19wKQogewogCWludCBpZHg7CiAJdTMyIHR4X2FsbG93ZWRfbWFzazsKIAlpbnQgdG90YWwgPSAw
OwogCi0JLyogU2VhcmNoIGZvciBhIHF1ZXVlIHdpdGggbXVsdGljYXN0IGZyYW1lcyBidWZmZXJl
ZCAqLwotCWlmICh3dmlmLT5tY2FzdF90eCkgewotCQl0eF9hbGxvd2VkX21hc2sgPSBCSVQoV0ZY
X0xJTktfSURfQUZURVJfRFRJTSk7Ci0JCWlkeCA9IHdmeF9nZXRfcHJpb19xdWV1ZSh3dmlmLCB0
eF9hbGxvd2VkX21hc2ssICZ0b3RhbCk7Ci0JCWlmIChpZHggPj0gMCkgewotCQkJKm1vcmUgPSB0
b3RhbCA+IDE7Ci0JCQlnb3RvIGZvdW5kOwotCQl9Ci0JfQotCiAJLyogU2VhcmNoIGZvciB1bmlj
YXN0IHRyYWZmaWMgKi8KIAl0eF9hbGxvd2VkX21hc2sgPSB+d3ZpZi0+c3RhX2FzbGVlcF9tYXNr
OwogCXR4X2FsbG93ZWRfbWFzayB8PSBCSVQoV0ZYX0xJTktfSURfVUFQU0QpOwpAQCAtNTAxLDY0
ICs0ODksODMgQEAgc3RhdGljIGludCB3ZnhfdHhfcXVldWVfbWFza19nZXQoc3RydWN0IHdmeF92
aWYgKnd2aWYsCiAJaWYgKGlkeCA8IDApCiAJCXJldHVybiAtRU5PRU5UOwogCi1mb3VuZDoKIAkq
cXVldWVfcCA9ICZ3dmlmLT53ZGV2LT50eF9xdWV1ZVtpZHhdOwogCSp0eF9hbGxvd2VkX21hc2tf
cCA9IHR4X2FsbG93ZWRfbWFzazsKIAlyZXR1cm4gMDsKIH0KIAorc3RydWN0IGhpZl9tc2cgKndm
eF90eF9xdWV1ZXNfZ2V0X2FmdGVyX2R0aW0oc3RydWN0IHdmeF92aWYgKnd2aWYpCit7CisJc3Ry
dWN0IHdmeF9kZXYgKndkZXYgPSB3dmlmLT53ZGV2OworCXN0cnVjdCBpZWVlODAyMTFfdHhfaW5m
byAqdHhfaW5mbzsKKwlzdHJ1Y3QgaGlmX21zZyAqaGlmOworCXN0cnVjdCBza19idWZmICpza2I7
CisJaW50IGk7CisKKwlmb3IgKGkgPSAwOyBpIDwgSUVFRTgwMjExX05VTV9BQ1M7ICsraSkgewor
CQlza2JfcXVldWVfd2Fsaygmd2Rldi0+dHhfcXVldWVbaV0ucXVldWUsIHNrYikgeworCQkJdHhf
aW5mbyA9IElFRUU4MDIxMV9TS0JfQ0Ioc2tiKTsKKwkJCWhpZiA9IChzdHJ1Y3QgaGlmX21zZyAq
KXNrYi0+ZGF0YTsKKwkJCWlmICgodHhfaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhfQ1RMX1NF
TkRfQUZURVJfRFRJTSkgJiYKKwkJCSAgICAoaGlmLT5pbnRlcmZhY2UgPT0gd3ZpZi0+aWQpKQor
CQkJCXJldHVybiAoc3RydWN0IGhpZl9tc2cgKilza2ItPmRhdGE7CisJCX0KKwl9CisJcmV0dXJu
IE5VTEw7Cit9CisKIHN0cnVjdCBoaWZfbXNnICp3ZnhfdHhfcXVldWVzX2dldChzdHJ1Y3Qgd2Z4
X2RldiAqd2RldikKIHsKIAlzdHJ1Y3Qgc2tfYnVmZiAqc2tiOwogCXN0cnVjdCBoaWZfbXNnICpo
aWYgPSBOVUxMOwotCXN0cnVjdCBoaWZfcmVxX3R4ICpyZXEgPSBOVUxMOwogCXN0cnVjdCB3Znhf
cXVldWUgKnF1ZXVlID0gTlVMTDsKIAlzdHJ1Y3Qgd2Z4X3F1ZXVlICp2aWZfcXVldWUgPSBOVUxM
OwogCXUzMiB0eF9hbGxvd2VkX21hc2sgPSAwOwogCXUzMiB2aWZfdHhfYWxsb3dlZF9tYXNrID0g
MDsKIAljb25zdCBzdHJ1Y3Qgd2Z4X3R4X3ByaXYgKnR4X3ByaXYgPSBOVUxMOwogCXN0cnVjdCB3
ZnhfdmlmICp3dmlmOwotCS8qIE1vcmUgaXMgdXNlZCBvbmx5IGZvciBicm9hZGNhc3RzLiAqLwot
CWJvb2wgbW9yZSA9IGZhbHNlOwotCWJvb2wgdmlmX21vcmUgPSBmYWxzZTsKIAlpbnQgbm90X2Zv
dW5kOwogCWludCBidXJzdDsKKwlpbnQgaTsKKworCWlmIChhdG9taWNfcmVhZCgmd2Rldi0+dHhf
bG9jaykpCisJCXJldHVybiBOVUxMOworCisJd3ZpZiA9IE5VTEw7CisJd2hpbGUgKCh3dmlmID0g
d3ZpZl9pdGVyYXRlKHdkZXYsIHd2aWYpKSAhPSBOVUxMKSB7CisJCWlmICh3dmlmLT5hZnRlcl9k
dGltX3R4X2FsbG93ZWQpIHsKKwkJCWZvciAoaSA9IDA7IGkgPCBJRUVFODAyMTFfTlVNX0FDUzsg
KytpKSB7CisJCQkJc2tiID0gd2Z4X3R4X3F1ZXVlX2dldCh3dmlmLT53ZGV2LAorCQkJCQkJICAg
ICAgICZ3ZGV2LT50eF9xdWV1ZVtpXSwKKwkJCQkJCSAgICAgICBCSVQoV0ZYX0xJTktfSURfQUZU
RVJfRFRJTSkpOworCQkJCWlmIChza2IpIHsKKwkJCQkJaGlmID0gKHN0cnVjdCBoaWZfbXNnICop
c2tiLT5kYXRhOworCQkJCQkvLyBDYW5ub3QgaGFwcGVuIHNpbmNlIG9ubHkgb25lIHZpZiBjYW4K
KwkJCQkJLy8gYmUgQVAgYXQgdGltZQorCQkJCQlXQVJOX09OKHd2aWYtPmlkICE9IGhpZi0+aW50
ZXJmYWNlKTsKKwkJCQkJcmV0dXJuIGhpZjsKKwkJCQl9CisJCQl9CisJCQkvLyBObyBtb3JlIG11
bHRpY2FzdCB0byBzZW50CisJCQl3dmlmLT5hZnRlcl9kdGltX3R4X2FsbG93ZWQgPSBmYWxzZTsK
KwkJCXNjaGVkdWxlX3dvcmsoJnd2aWYtPnVwZGF0ZV90aW1fd29yayk7CisJCX0KKwl9CiAKIAlm
b3IgKDs7KSB7CiAJCWludCByZXQgPSAtRU5PRU5UOwogCQlpbnQgcXVldWVfbnVtOwotCQlzdHJ1
Y3QgaWVlZTgwMjExX2hkciAqaGRyOwotCi0JCWlmIChhdG9taWNfcmVhZCgmd2Rldi0+dHhfbG9j
aykpCi0JCQlyZXR1cm4gTlVMTDsKIAogCQl3dmlmID0gTlVMTDsKIAkJd2hpbGUgKCh3dmlmID0g
d3ZpZl9pdGVyYXRlKHdkZXYsIHd2aWYpKSAhPSBOVUxMKSB7CiAJCQlzcGluX2xvY2tfYmgoJnd2
aWYtPnBzX3N0YXRlX2xvY2spOwogCiAJCQlub3RfZm91bmQgPSB3ZnhfdHhfcXVldWVfbWFza19n
ZXQod3ZpZiwgJnZpZl9xdWV1ZSwKLQkJCQkJCQkgICZ2aWZfdHhfYWxsb3dlZF9tYXNrLAotCQkJ
CQkJCSAgJnZpZl9tb3JlKTsKLQotCQkJaWYgKHd2aWYtPm1jYXN0X2J1ZmZlcmVkICYmIChub3Rf
Zm91bmQgfHwgIXZpZl9tb3JlKSAmJgotCQkJCQkod3ZpZi0+bWNhc3RfdHggfHwKLQkJCQkJICF3
dmlmLT5zdGFfYXNsZWVwX21hc2spKSB7Ci0JCQkJd3ZpZi0+bWNhc3RfYnVmZmVyZWQgPSBmYWxz
ZTsKLQkJCQlpZiAod3ZpZi0+bWNhc3RfdHgpIHsKLQkJCQkJd3ZpZi0+bWNhc3RfdHggPSBmYWxz
ZTsKLQkJCQkJc2NoZWR1bGVfd29yaygmd3ZpZi0+bWNhc3Rfc3RvcF93b3JrKTsKLQkJCQl9Ci0J
CQl9CisJCQkJCQkJICAmdmlmX3R4X2FsbG93ZWRfbWFzayk7CiAKIAkJCXNwaW5fdW5sb2NrX2Jo
KCZ3dmlmLT5wc19zdGF0ZV9sb2NrKTsKIAotCQkJaWYgKHZpZl9tb3JlKSB7Ci0JCQkJbW9yZSA9
IHRydWU7Ci0JCQkJdHhfYWxsb3dlZF9tYXNrID0gdmlmX3R4X2FsbG93ZWRfbWFzazsKLQkJCQlx
dWV1ZSA9IHZpZl9xdWV1ZTsKLQkJCQlyZXQgPSAwOwotCQkJCWJyZWFrOwotCQkJfSBlbHNlIGlm
ICghbm90X2ZvdW5kKSB7CisJCQlpZiAoIW5vdF9mb3VuZCkgewogCQkJCWlmIChxdWV1ZSAmJiBx
dWV1ZSAhPSB2aWZfcXVldWUpCiAJCQkJCWRldl9pbmZvKHdkZXYtPmRldiwgInZpZnMgZGlzYWdy
ZWUgYWJvdXQgcXVldWUgcHJpb3JpdHlcbiIpOwogCQkJCXR4X2FsbG93ZWRfbWFzayB8PSB2aWZf
dHhfYWxsb3dlZF9tYXNrOwpAQCAtNTk1LDE1ICs2MDIsNiBAQCBzdHJ1Y3QgaGlmX21zZyAqd2Z4
X3R4X3F1ZXVlc19nZXQoc3RydWN0IHdmeF9kZXYgKndkZXYpCiAJCWVsc2UKIAkJCXdkZXYtPnR4
X2J1cnN0X2lkeCA9IC0xOwogCi0JCS8qIG1vcmUgYnVmZmVyZWQgbXVsdGljYXN0L2Jyb2FkY2Fz
dCBmcmFtZXMKLQkJICogID09PiBzZXQgTW9yZURhdGEgZmxhZyBpbiBJRUVFIDgwMi4xMSBoZWFk
ZXIKLQkJICogIHRvIGluZm9ybSBQUyBTVEFzCi0JCSAqLwotCQlpZiAobW9yZSkgewotCQkJcmVx
ID0gKHN0cnVjdCBoaWZfcmVxX3R4ICopIGhpZi0+Ym9keTsKLQkJCWhkciA9IChzdHJ1Y3QgaWVl
ZTgwMjExX2hkciAqKSAocmVxLT5mcmFtZSArIHJlcS0+ZGF0YV9mbGFncy5mY19vZmZzZXQpOwot
CQkJaGRyLT5mcmFtZV9jb250cm9sIHw9IGNwdV90b19sZTE2KElFRUU4MDIxMV9GQ1RMX01PUkVE
QVRBKTsKLQkJfQogCQlyZXR1cm4gaGlmOwogCX0KIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy93ZngvcXVldWUuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuaAppbmRleCA4MTNj
MmQwOWUwMzQuLjA5NmFlODYxMzVjYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9x
dWV1ZS5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuaApAQCAtNDcsNiArNDcsNyBA
QCB2b2lkIHdmeF90eF9xdWV1ZXNfY2xlYXIoc3RydWN0IHdmeF9kZXYgKndkZXYpOwogYm9vbCB3
ZnhfdHhfcXVldWVzX2lzX2VtcHR5KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KTsKIHZvaWQgd2Z4X3R4
X3F1ZXVlc193YWl0X2VtcHR5X3ZpZihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZik7CiBzdHJ1Y3QgaGlm
X21zZyAqd2Z4X3R4X3F1ZXVlc19nZXQoc3RydWN0IHdmeF9kZXYgKndkZXYpOworc3RydWN0IGhp
Zl9tc2cgKndmeF90eF9xdWV1ZXNfZ2V0X2FmdGVyX2R0aW0oc3RydWN0IHdmeF92aWYgKnd2aWYp
OwogCiB2b2lkIHdmeF90eF9xdWV1ZV9wdXQoc3RydWN0IHdmeF9kZXYgKndkZXYsIHN0cnVjdCB3
ZnhfcXVldWUgKnF1ZXVlLAogCQkgICAgICBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKTsKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5j
CmluZGV4IGJkYzE1NTU0OTU4Yy4uYTliNThlNGE5ZmEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKQEAgLTg1MSwx
NiArODUxLDEyIEBAIHN0YXRpYyB2b2lkIHdmeF9wc19ub3RpZnlfc3RhKHN0cnVjdCB3Znhfdmlm
ICp3dmlmLAogCXN3aXRjaCAobm90aWZ5X2NtZCkgewogCWNhc2UgU1RBX05PVElGWV9TTEVFUDoK
IAkJaWYgKCFwcmV2KSB7Ci0JCQlpZiAod3ZpZi0+bWNhc3RfYnVmZmVyZWQgJiYgIXd2aWYtPnN0
YV9hc2xlZXBfbWFzaykKLQkJCQlzY2hlZHVsZV93b3JrKCZ3dmlmLT5tY2FzdF9zdGFydF93b3Jr
KTsKIAkJCXd2aWYtPnN0YV9hc2xlZXBfbWFzayB8PSBiaXQ7CiAJCX0KIAkJYnJlYWs7CiAJY2Fz
ZSBTVEFfTk9USUZZX0FXQUtFOgogCQlpZiAocHJldikgewogCQkJd3ZpZi0+c3RhX2FzbGVlcF9t
YXNrICY9IH5iaXQ7Ci0JCQlpZiAoIXd2aWYtPnN0YV9hc2xlZXBfbWFzaykKLQkJCQlzY2hlZHVs
ZV93b3JrKCZ3dmlmLT5tY2FzdF9zdG9wX3dvcmspOwogCQkJd2Z4X2JoX3JlcXVlc3RfdHgod3Zp
Zi0+d2Rldik7CiAJCX0KIAkJYnJlYWs7CkBAIC04OTgsNyArODk0LDcgQEAgc3RhdGljIGludCB3
ZnhfdXBkYXRlX3RpbShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAkJdGltX3B0clsyXSA9IDA7CiAK
IAkJLyogU2V0L3Jlc2V0IGFpZDAgYml0ICovCi0JCWlmICh3dmlmLT5haWQwX2JpdF9zZXQpCisJ
CWlmICh3ZnhfdHhfcXVldWVzX2dldF9hZnRlcl9kdGltKHd2aWYpKQogCQkJdGltX3B0cls0XSB8
PSAxOwogCQllbHNlCiAJCQl0aW1fcHRyWzRdICY9IH4xOwpAQCAtOTI3LDQ3ICs5MjMsMTIgQEAg
aW50IHdmeF9zZXRfdGltKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjEx
X3N0YSAqc3RhLCBib29sIHNldCkKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIHZvaWQgd2Z4X21j
YXN0X3N0YXJ0X3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQordm9pZCB3Znhfc3VzcGVu
ZF9yZXN1bWVfbWMoc3RydWN0IHdmeF92aWYgKnd2aWYsIGVudW0gc3RhX25vdGlmeV9jbWQgbm90
aWZ5X2NtZCkKIHsKLQlzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiA9Ci0JCWNvbnRhaW5lcl9vZih3b3Jr
LCBzdHJ1Y3Qgd2Z4X3ZpZiwgbWNhc3Rfc3RhcnRfd29yayk7Ci0Jc3RydWN0IGllZWU4MDIxMV9i
c3NfY29uZiAqY29uZiA9ICZ3dmlmLT52aWYtPmJzc19jb25mOwotCWxvbmcgdG1vID0gY29uZi0+
ZHRpbV9wZXJpb2QgKiBUVV9UT19KSUZGSUVTKHd2aWYtPmJlYWNvbl9pbnQgKyAyMCk7Ci0KLQlj
YW5jZWxfd29ya19zeW5jKCZ3dmlmLT5tY2FzdF9zdG9wX3dvcmspOwotCWlmICghd3ZpZi0+YWlk
MF9iaXRfc2V0KSB7Ci0JCXdmeF90eF9sb2NrX2ZsdXNoKHd2aWYtPndkZXYpOwotCQl3dmlmLT5h
aWQwX2JpdF9zZXQgPSB0cnVlOwotCQl3ZnhfdXBkYXRlX3RpbSh3dmlmKTsKLQkJbW9kX3RpbWVy
KCZ3dmlmLT5tY2FzdF90aW1lb3V0LCBqaWZmaWVzICsgdG1vKTsKLQkJd2Z4X3R4X3VubG9jayh3
dmlmLT53ZGV2KTsKLQl9Ci19Ci0KLXN0YXRpYyB2b2lkIHdmeF9tY2FzdF9zdG9wX3dvcmsoc3Ry
dWN0IHdvcmtfc3RydWN0ICp3b3JrKQotewotCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0gY29udGFp
bmVyX29mKHdvcmssIHN0cnVjdCB3ZnhfdmlmLAotCQkJCQkgICAgbWNhc3Rfc3RvcF93b3JrKTsK
LQotCWlmICh3dmlmLT5haWQwX2JpdF9zZXQpIHsKLQkJZGVsX3RpbWVyX3N5bmMoJnd2aWYtPm1j
YXN0X3RpbWVvdXQpOwotCQl3ZnhfdHhfbG9ja19mbHVzaCh3dmlmLT53ZGV2KTsKLQkJd3ZpZi0+
YWlkMF9iaXRfc2V0ID0gZmFsc2U7Ci0JCXdmeF91cGRhdGVfdGltKHd2aWYpOwotCQl3ZnhfdHhf
dW5sb2NrKHd2aWYtPndkZXYpOwotCX0KLX0KLQotc3RhdGljIHZvaWQgd2Z4X21jYXN0X3RpbWVv
dXQoc3RydWN0IHRpbWVyX2xpc3QgKnQpCi17Ci0Jc3RydWN0IHdmeF92aWYgKnd2aWYgPSBmcm9t
X3RpbWVyKHd2aWYsIHQsIG1jYXN0X3RpbWVvdXQpOwotCi0JZGV2X3dhcm4od3ZpZi0+d2Rldi0+
ZGV2LCAibXVsdGljYXN0IGRlbGl2ZXJ5IHRpbWVvdXRcbiIpOwotCXNwaW5fbG9ja19iaCgmd3Zp
Zi0+cHNfc3RhdGVfbG9jayk7Ci0Jd3ZpZi0+bWNhc3RfdHggPSB3dmlmLT5haWQwX2JpdF9zZXQg
JiYgd3ZpZi0+bWNhc3RfYnVmZmVyZWQ7Ci0JaWYgKHd2aWYtPm1jYXN0X3R4KQotCQl3ZnhfYmhf
cmVxdWVzdF90eCh3dmlmLT53ZGV2KTsKLQlzcGluX3VubG9ja19iaCgmd3ZpZi0+cHNfc3RhdGVf
bG9jayk7CisJV0FSTighd2Z4X3R4X3F1ZXVlc19nZXRfYWZ0ZXJfZHRpbSh3dmlmKSwgImluY29y
cmVjdCBzZXF1ZW5jZSIpOworCVdBUk4od3ZpZi0+YWZ0ZXJfZHRpbV90eF9hbGxvd2VkLCAiaW5j
b3JyZWN0IHNlcXVlbmNlIik7CisJd3ZpZi0+YWZ0ZXJfZHRpbV90eF9hbGxvd2VkID0gdHJ1ZTsK
Kwl3ZnhfYmhfcmVxdWVzdF90eCh3dmlmLT53ZGV2KTsKIH0KIAogaW50IHdmeF9hbXBkdV9hY3Rp
b24oc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCkBAIC05ODUsMjUgKzk0Niw2IEBAIGludCB3Znhf
YW1wZHVfYWN0aW9uKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCXJldHVybiAtRU5PVFNVUFA7
CiB9CiAKLXZvaWQgd2Z4X3N1c3BlbmRfcmVzdW1lX21jKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBl
bnVtIHN0YV9ub3RpZnlfY21kIG5vdGlmeV9jbWQpCi17Ci0JYm9vbCBjYW5jZWxfdG1vID0gZmFs
c2U7Ci0KLQlzcGluX2xvY2tfYmgoJnd2aWYtPnBzX3N0YXRlX2xvY2spOwotCWlmIChub3RpZnlf
Y21kID09IFNUQV9OT1RJRllfU0xFRVApCi0JCXd2aWYtPm1jYXN0X3R4ID0gZmFsc2U7Ci0JZWxz
ZQotCQl3dmlmLT5tY2FzdF90eCA9IHd2aWYtPmFpZDBfYml0X3NldCAmJgotCQkJCSB3dmlmLT5t
Y2FzdF9idWZmZXJlZDsKLQlpZiAod3ZpZi0+bWNhc3RfdHgpIHsKLQkJY2FuY2VsX3RtbyA9IHRy
dWU7Ci0JCXdmeF9iaF9yZXF1ZXN0X3R4KHd2aWYtPndkZXYpOwotCX0KLQlzcGluX3VubG9ja19i
aCgmd3ZpZi0+cHNfc3RhdGVfbG9jayk7Ci0JaWYgKGNhbmNlbF90bW8pCi0JCWRlbF90aW1lcl9z
eW5jKCZ3dmlmLT5tY2FzdF90aW1lb3V0KTsKLX0KLQogaW50IHdmeF9hZGRfY2hhbmN0eChzdHJ1
Y3QgaWVlZTgwMjExX2h3ICpodywKIAkJICAgIHN0cnVjdCBpZWVlODAyMTFfY2hhbmN0eF9jb25m
ICpjb25mKQogewpAQCAtMTA5MCwxMCArMTAzMiw2IEBAIGludCB3ZnhfYWRkX2ludGVyZmFjZShz
dHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZikKIAlzcGlu
X2xvY2tfaW5pdCgmd3ZpZi0+cHNfc3RhdGVfbG9jayk7CiAJSU5JVF9XT1JLKCZ3dmlmLT51cGRh
dGVfdGltX3dvcmssIHdmeF91cGRhdGVfdGltX3dvcmspOwogCi0JSU5JVF9XT1JLKCZ3dmlmLT5t
Y2FzdF9zdGFydF93b3JrLCB3ZnhfbWNhc3Rfc3RhcnRfd29yayk7Ci0JSU5JVF9XT1JLKCZ3dmlm
LT5tY2FzdF9zdG9wX3dvcmssIHdmeF9tY2FzdF9zdG9wX3dvcmspOwotCXRpbWVyX3NldHVwKCZ3
dmlmLT5tY2FzdF90aW1lb3V0LCB3ZnhfbWNhc3RfdGltZW91dCwgMCk7Ci0KIAltZW1zZXQoJnd2
aWYtPmJzc19wYXJhbXMsIDAsIHNpemVvZih3dmlmLT5ic3NfcGFyYW1zKSk7CiAKIAltdXRleF9p
bml0KCZ3dmlmLT5ic3NfbG9zc19sb2NrKTsKQEAgLTExNTYsOSArMTA5NCw2IEBAIHZvaWQgd2Z4
X3JlbW92ZV9pbnRlcmZhY2Uoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsCiAJCWJyZWFrOwogCWNh
c2UgV0ZYX1NUQVRFX0FQOgogCQl3dmlmLT5zdGFfYXNsZWVwX21hc2sgPSAwOwotCQl3dmlmLT5t
Y2FzdF90eCA9IGZhbHNlOwotCQl3dmlmLT5haWQwX2JpdF9zZXQgPSBmYWxzZTsKLQkJd3ZpZi0+
bWNhc3RfYnVmZmVyZWQgPSBmYWxzZTsKIAkJLyogcmVzZXQubGlua19pZCA9IDA7ICovCiAJCWhp
Zl9yZXNldCh3dmlmLCBmYWxzZSk7CiAJCWJyZWFrOwpAQCAtMTE3NSw3ICsxMTEwLDYgQEAgdm9p
ZCB3ZnhfcmVtb3ZlX2ludGVyZmFjZShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAogCXdmeF9j
cW1fYnNzbG9zc19zbSh3dmlmLCAwLCAwLCAwKTsKIAljYW5jZWxfd29ya19zeW5jKCZ3dmlmLT51
bmpvaW5fd29yayk7Ci0JZGVsX3RpbWVyX3N5bmMoJnd2aWYtPm1jYXN0X3RpbWVvdXQpOwogCXdm
eF9mcmVlX2V2ZW50X3F1ZXVlKHd2aWYpOwogCiAJd2Rldi0+dmlmW3d2aWYtPmlkXSA9IE5VTEw7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC93ZnguaAppbmRleCA4NDkxZjA1MDQ3OGQuLjVkNjE5NDZlMzNlMCAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5o
CkBAIC03NSwxMyArNzUsOCBAQCBzdHJ1Y3Qgd2Z4X3ZpZiB7CiAKIAl1MzIJCQlsaW5rX2lkX21h
cDsKIAotCWJvb2wJCQlhaWQwX2JpdF9zZXQ7Ci0JYm9vbAkJCW1jYXN0X3R4OwotCWJvb2wJCQlt
Y2FzdF9idWZmZXJlZDsKKwlib29sCQkJYWZ0ZXJfZHRpbV90eF9hbGxvd2VkOwogCXN0cnVjdCB3
ZnhfZ3JwX2FkZHJfdGFibGUgbWNhc3RfZmlsdGVyOwotCXN0cnVjdCB0aW1lcl9saXN0CW1jYXN0
X3RpbWVvdXQ7Ci0Jc3RydWN0IHdvcmtfc3RydWN0CW1jYXN0X3N0YXJ0X3dvcms7Ci0Jc3RydWN0
IHdvcmtfc3RydWN0CW1jYXN0X3N0b3Bfd29yazsKIAogCXM4CQkJd2VwX2RlZmF1bHRfa2V5X2lk
OwogCXN0cnVjdCBza19idWZmCQkqd2VwX3BlbmRpbmdfc2tiOwotLSAKMi4yNS4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
