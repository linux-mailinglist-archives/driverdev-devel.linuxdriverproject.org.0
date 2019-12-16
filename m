Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D0B121063
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:04:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA8218817F;
	Mon, 16 Dec 2019 17:04:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q1vfmQlh-tg6; Mon, 16 Dec 2019 17:04:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F0E48810B;
	Mon, 16 Dec 2019 17:04:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D06771BF349
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:03:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CD735880C8
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:03:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QsqgR3A70HdK for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:03:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690060.outbound.protection.outlook.com [40.107.69.60])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 416718810B
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:03:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c8DIPgVaE8WzOuaCyO+C8fdEB86jjRqiAVDneuHGSAvcOQqVhewL4uuOV9AjTauOUqW7HRSJ6HkpQh9X3vX8BCNRTHoJgn+oDFrK+JIGLqvgsRIIn78wOmWv60O2lNcJTLO5Ol2lSdoLeBavVz/vKhUTMsPZztMbjn1ImMW1CDVSdxBJyK9a4zW/ldXcASDoZSp3ZrEueUEVrdUtmUGxnvSY9bxxy1O3RtYj4jXOTwtk0rTwJdeGBXF4IAR2MejoF6ECxqPvBUeC8kNhQ2pdKBF8f/U59r1NeKu1ndjT3pyJxqrmz6MNSlLp9+nWQINoxyJAFGNozNcpqfXQA/rm+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5xaN6lS/0JF4AO44Psn9tMa0nXQqqKoQ7nOH0UXuqJ4=;
 b=IdWneQGIbj7eL0G7rekljkMgYpJN7SjU5CUyDMGH/T/6mQyXMyYkr4+t+VrafpBwBfRItHuv+/MFdPzB9sBh0wywOWRKEU+Fpx55E7JYKdKxf6lCUJL4VVp4pEiSjFn6TFQnk14uUnR5/Cxo7DFNlaFdhgNkse7Grt5ZEfs8tEVcyQOyF+cwVR37CV1GOOPgJIvbRnLlbyn1mytXnILJTTMN9yTrzqk/PN+Mal9G999oN/Z2/ACIOWyIgJCXB6R1fv2INk+I0hWhyUujhc8iWERLBGVnrLJbSWit3KDBQBXIWJ0ED+H4daXiawihQUcp1VHYXbBwJjW9E6Nf3v123g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5xaN6lS/0JF4AO44Psn9tMa0nXQqqKoQ7nOH0UXuqJ4=;
 b=MfR3xedQprn2xiKDDfQC0N/wEWYUfzj/7QiDxMU4flDboYHL+dTlo1RJHne5Fh3UzB/bK1zEBIl0BuDTECMpayKO7Y5cRhz1jS0dfRpghAcO1nxsH1CXI5Qi9pszrOHMgh1O64OsJ0Gek+VmQ7N05yFSnBmcPvk/KP49+jo0z1w=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4351.namprd11.prod.outlook.com (52.135.39.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:03:54 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:03:54 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 25/55] staging: wfx: fix name of struct hif_req_start_scan_alt
Thread-Topic: [PATCH 25/55] staging: wfx: fix name of struct
 hif_req_start_scan_alt
Thread-Index: AQHVtDLHrXJIw8KXhEKG+rORdR0cIg==
Date: Mon, 16 Dec 2019 17:03:46 +0000
Message-ID: <20191216170302.29543-26-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: b379eaf5-5058-4f53-3f48-08d78249ee6b
x-ms-traffictypediagnostic: MN2PR11MB4351:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB43514554AE624F6F5F4B3E2493510@MN2PR11MB4351.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(346002)(396003)(39860400002)(199004)(189003)(66556008)(66446008)(64756008)(66476007)(76116006)(85202003)(91956017)(66946007)(4744005)(54906003)(107886003)(4326008)(478600001)(110136005)(71200400001)(6512007)(81156014)(8676002)(81166006)(186003)(36756003)(2906002)(85182001)(6666004)(66574012)(1076003)(316002)(6506007)(5660300002)(86362001)(26005)(2616005)(6486002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4351;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5BxTByQiMjuSrBu7e478QT/VieGifHOKUOf+nBf3HF0O49MMNajJ9vEwZf0tYW0HozK1ywxkVQGq8eH4okk969Msxeek6gFlCuP9B/7BmfrkDHyK3v5BlGkwtiHf5LGito1Sm51T3rH/8vVUpB81PNtpcpnvEkCPaNIgQQh2OYAJrqcQVTEEwxkRURI+lNhJRijotS27E3eTl48qBat1EnHa97HVKhH1G/1+x+NYTlN/B4XxM73J0F35fHDfSP39XoxJnqweTk66XllFeeJQ9KsToYWYgd7RwlQpZrNiDO22KB3sCVuEYTFrSOWRCr740ga85pa7xXERoY2R92J3Y/X+75GFjkHvqb3FEBoEWmAQX9aBI/+Yh5pttnrCvx3+SvChMYyg5be4Y9dbOTw3JBs2FftMCqMnRnOKTZUbJ2Z57NJzBIgfYTxHwPW/pcrg
Content-ID: <1D973768F17781428B137589CBC45C6B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b379eaf5-5058-4f53-3f48-08d78249ee6b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:46.6776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: I/pI+cE9x1MBDTilI5MeC0qF1ssNR9gdATvm6mIwPWcXwwMoBuU1bZ5EmdDzaqCtYPCFtk2WLisGAMIcUVBpRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4351
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpU
aGUgb3JpZ2luYWwgbmFtZSBkaWQgbm90IG1ha2UgYW55IHNlbnNlLg0KDQpTaWduZWQtb2ZmLWJ5
OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQotLS0NCiBk
cml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfY21kLmggfCAyICstDQogMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvd2Z4L2hpZl9hcGlfY21kLmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfY21k
LmgNCmluZGV4IDNlNzdmYmUzZDVmZi4uNGNlM2JiNTFjZjA0IDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hp
Zl9hcGlfY21kLmgNCkBAIC0xODgsNyArMTg4LDcgQEAgc3RydWN0IGhpZl9yZXFfc3RhcnRfc2Nh
biB7DQogCXU4ICAgIHNzaWRfYW5kX2NoYW5uZWxfbGlzdHNbXTsNCiB9IF9fcGFja2VkOw0KIA0K
LXN0cnVjdCBoaWZfc3RhcnRfc2Nhbl9yZXFfY3N0bmJzc2lkX2JvZHkgew0KK3N0cnVjdCBoaWZf
cmVxX3N0YXJ0X3NjYW5fYWx0IHsNCiAJdTggICAgYmFuZDsNCiAJc3RydWN0IGhpZl9zY2FuX3R5
cGUgc2Nhbl90eXBlOw0KIAlzdHJ1Y3QgaGlmX3NjYW5fZmxhZ3Mgc2Nhbl9mbGFnczsNCi0tIA0K
Mi4yMC4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
