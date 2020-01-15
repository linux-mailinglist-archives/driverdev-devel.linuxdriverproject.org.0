Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8902513BF84
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:14:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 32DF520524;
	Wed, 15 Jan 2020 12:14:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id toM8tIk5tlrK; Wed, 15 Jan 2020 12:14:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 726952051D;
	Wed, 15 Jan 2020 12:14:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 25EAF1BF5A0
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:14:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F46F814E9
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:14:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sRDKXTGuJSII for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:14:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2056.outbound.protection.outlook.com [40.107.92.56])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D0408815E8
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 12:14:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N5exO7vYm2/zjjKRDMMti+bgaSS8fMGzGjYMv3fTAo6Yt7iZwDpIt+Czx+LYHBWHLNk8D+li2OLxtylMoOaEvhUAJXrfRRue4TSgQX12NB8x8BFiLBuBwjan6Xt7qqwc/ejToeGR14YwGWIZdN+/jP8akMW2pgYdvTL4xB7MluudfNftJoo33e8+fr6wtRbpq/qUmyq8hWL29cxhHkyiM8UzEX7qb0LxURBtDLyt9zTlZgOl1aUlOe9ONAl4XBziEjvS0N3lT072cfRl1xXnY/7AVj2WDM3XqLv5+yjno7eIuLS3iWRCwuS1rqijFIrOcz3fq/kniPGwv3/F9RaHBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luKP9pYxXrpl3mvhVrHrZpccjgG6OVYJbBR4szwSZPY=;
 b=Q9W63Og/3G0SyCZOAPEEPUdV9ZJbst2G+RxxZ0kxgxPgWEOTVmcRL9YLp5NpFksJVg7KQFyCRQ5em75z4Dk3CgOCpSx9Q8J1l3eEK1gHwbdfUt6x0uzLS1A0x4wzOyT3uDSZWILx1IiOennmkQEC0sNdbXd68KizD2KWaTu/NzWhCB3DkNzYqOI9RMpQb8Gzxd9QinfYwTaUEGWiOblxVEEPUvy/phl5VKnFeIXTHOLS/mAQcX2sYfOudRXWcH/gwoOBbK7J/21qBwgzpOfAwUA7LWxttQUj9yx5mKHCS3BRSv6xKA9xXvU7OyPPAtgjxYDT8mUBAY5I+dh6U13Fmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=luKP9pYxXrpl3mvhVrHrZpccjgG6OVYJbBR4szwSZPY=;
 b=G9mD9jgSHLFgtdB8AERT6quvBvnjKMNdNhcKrQaTMtGIZ3HdQzq6Lr42Bf6vYvOulhEmykONdqSyNdfkWF9+0XMbLrS/FrTbMbjZnSROi9z5oRW3NRp8V1kmvAaikH6O7S51XcD8MoWvbkxh96OSDfruaUCvrWUTDMUgWgmkAPc=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3934.namprd11.prod.outlook.com (10.255.180.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Wed, 15 Jan 2020 12:14:08 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 12:14:08 +0000
Received: from pc-42.silabs.com (37.71.187.125) by
 PR2PR09CA0009.eurprd09.prod.outlook.com (2603:10a6:101:16::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 12:13:28 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 60/65] staging: wfx: remove unused do_probe
Thread-Topic: [PATCH 60/65] staging: wfx: remove unused do_probe
Thread-Index: AQHVy50yZCDG14x/QEqvO443wPtmqA==
Date: Wed, 15 Jan 2020 12:13:29 +0000
Message-ID: <20200115121041.10863-61-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 52bed07b-b07f-4dba-1384-08d799b454b7
x-ms-traffictypediagnostic: MN2PR11MB3934:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB393493F3BBFA1A6AD70CE10793370@MN2PR11MB3934.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:457;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(396003)(136003)(376002)(366004)(346002)(199004)(189003)(54906003)(110136005)(86362001)(956004)(107886003)(2616005)(316002)(36756003)(71200400001)(52116002)(7696005)(478600001)(8936002)(81156014)(8676002)(4326008)(81166006)(6486002)(2906002)(26005)(66946007)(16526019)(186003)(5660300002)(66574012)(1076003)(66556008)(64756008)(66446008)(4744005)(85182001)(66476007)(85202003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3934;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tIPToy6PUNN5DL0B0xUzYZGG5ofgGVBXVjc7DxZGKl+fPW2GGMc25pH7aaF4h0pYp4pPWUn1OR1BmzANuPGBq2mACYqU4b5O+mH2Bpws/QXwkqE7etEoh4MrNpq+AOuxgXbRWz3eris0DoU3CiZWeeNcVZLS7RyLBx4HU1c6I49Ku3c2iaqigayMnaB8M3XBi0I/Gsq7eVRpXEq99SMVlTvgU7tK2k/lKAVbsrDDPqlEw0tAIrCllNhZ936mDktgKXBiArsjjz2s7F7SqNvNs2S2pK006nF3xqsG8Pqwl1dz/fmwbSlrhCkz+dfttrmX6LOA6MUhLzg/d5FRS/f6uonq5BZDP3gEULS62LQw//D9GDvO3qoTWP/xTMFDu1F6hjX3VMKVBab3bHAH2H0fipEPkDDWTYSBkEXW7kiaHrsSk71LmT55E+xh3nE2ALUe
Content-ID: <EF4F855590152B4FA290A1BECD4A38A5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52bed07b-b07f-4dba-1384-08d799b454b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 12:13:29.3859 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tZH5YHYabW5lW0J4Ju6M901ciwnsTGSbz+aHD596/EohdbqE1TIz6WObVigJ7iXztDg2kM9wXI4gQKGKitSiyw==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IGlkZW50aWZpZXIgZG9fcHJvYmUgaXMgdW51c2VkIHNpbmNlICJzdGFnaW5nOiB3Zng6IHJlbW92
ZSB3b3JrYXJvdW5kCnRvIHNlbmQgcHJvYmUgcmVxdWVzdHMiCgpTaWduZWQtb2ZmLWJ5OiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9z
dGFnaW5nL3dmeC9xdWV1ZS5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYyBiL2RyaXZlcnMvc3RhZ2lu
Zy93ZngvcXVldWUuYwppbmRleCBlYzExYTYzYTJmZjkuLmM4N2Q2NGZiYjg4ZiAxMDA2NDQKLS0t
IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
cXVldWUuYwpAQCAtMzY1LDcgKzM2NSw2IEBAIHN0YXRpYyBib29sIGhpZl9oYW5kbGVfdHhfZGF0
YShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IHNrX2J1ZmYgKnNrYiwKIAlzdHJ1Y3QgaWVl
ZTgwMjExX2hkciAqZnJhbWUgPSAoc3RydWN0IGllZWU4MDIxMV9oZHIgKikgKHJlcS0+ZnJhbWUg
KyByZXEtPmRhdGFfZmxhZ3MuZmNfb2Zmc2V0KTsKIAogCWVudW0gewotCQlkb19wcm9iZSwKIAkJ
ZG9fZHJvcCwKIAkJZG9fd2VwLAogCQlkb190eCwKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
