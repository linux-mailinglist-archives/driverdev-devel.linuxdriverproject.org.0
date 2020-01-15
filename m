Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADD213C38D
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:50:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 289A78798A;
	Wed, 15 Jan 2020 13:50:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 46VEGkt-32yo; Wed, 15 Jan 2020 13:50:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 22AF887937;
	Wed, 15 Jan 2020 13:50:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 856821BF573
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7CDFB1FFFF
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jdI5U5tVI8bp for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:50:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2087.outbound.protection.outlook.com [40.107.237.87])
 by silver.osuosl.org (Postfix) with ESMTPS id 993E31FEDF
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:50:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EFfI+mKs1dQVk4p+Od5bBmXwhT174d+ByPGvL/VG7HG2+Vx7QlFZ64PsjCJ4GspIbrgJ9d9VLosRx4Cqp87potMACyChMJBkFoEfFoSNxrJ8f5r5mOV2NlxJG/gDZdVs9HL5klR/V8l21P3XXr2OpBTL11Y0s7SmVt9AZ94+31IJse6bzYxj48d9n6DnsZi/wtuFHRCtjfnQNMt01nZUIfpbPtMknJN9bzrp8ueBHLUOquzuyZQCZPlxTmIRlmVMwQHVOi65fchb+6LE4lRvbY8FbNpGcgZzcBPeNU4rxfQyBRrEK+jF7u4YdaeMNiwtJzYbdUtWnxV5i4lIVIOBsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7bOxhiMhmGYS6VtBYLzJsmHnfyt1DESIh9ZOtIgfr44=;
 b=Zhdc3URu6cNzj6dEOtXwu7zVfTRAffmVEVRdpB6Mzvu5bRPQx9JZMc54d+ZxTdrOrPAMl8YAQYQRzip3cAx2PTF9+lKTFzOcjQ6Y0alk1wiHFFDbNN+2MqeKtJPfMsLsPdmH2sYNSvqqWniehWeHduuE+TYByOdr/e8eIoj4XO25l4EhomslVaLh9rReD+oc7+abDTavlGmOBm2P3bvyyCTJuhXpXt3XWva8W7dcNuRRDvNwlskzgafr6m0TORSFEaApPB6ov4vsjByG/upzbIzpBEbaAtz/uns9uvjrPLPu9In3SgQ3GAkFqwvHlag7XdjaP+MczJiO9dl/AW2myA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7bOxhiMhmGYS6VtBYLzJsmHnfyt1DESIh9ZOtIgfr44=;
 b=HANPR6FeTt4W7xVbKEk2GYiGXqOCyS9qapE9AD9bRzTJeCxBcYG9gv9KkRmuK4sw/wps2gaHSGN+OcBEUMvIBmoVz0MkPvCdeWs6KNk6xFmJBD//2W1mBEV4qSTqF5P2S0l8cTZm2NdYHV+OWI3DyuN0ntoLrpyKNGKg550dBvQ=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Wed, 15 Jan 2020 13:50:38 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:50:38 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 00/65] Simplify and improve the wfx driver
Thread-Topic: [PATCH 00/65] Simplify and improve the wfx driver
Thread-Index: AQHVy50BYfh2z0UfGE+rivOPHKtpUafru2IAgAAC6gA=
Date: Wed, 15 Jan 2020 13:50:38 +0000
Message-ID: <1695643.cGmOzgRFCN@pc-42>
References: <20200115121041.10863-1-Jerome.Pouiller@silabs.com>
 <20200115134010.GA3555935@kroah.com>
In-Reply-To: <20200115134010.GA3555935@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [88.191.86.106]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3264dbf8-b4ff-4b62-e138-08d799c1e72a
x-ms-traffictypediagnostic: MN2PR11MB4063:
x-microsoft-antispam-prvs: <MN2PR11MB40637EF131401A4FF50E575C93370@MN2PR11MB4063.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:446;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(7916004)(346002)(39860400002)(376002)(136003)(396003)(366004)(199004)(189003)(6916009)(54906003)(85202003)(71200400001)(5660300002)(85182001)(316002)(9686003)(6512007)(478600001)(6486002)(33716001)(66556008)(66946007)(66446008)(76116006)(66476007)(91956017)(4326008)(64756008)(66574012)(8936002)(81166006)(186003)(8676002)(2906002)(26005)(81156014)(4744005)(6506007)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4063;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U6ael/bmnFFu5NgfxyShvlReERdwtnlvrnWzXn1Uuog4XuZTsOepDXhWjH9O4L0s+FJLSU+eoMmjQuSpaYdKo3OXZEQvabQp8VXAaarowZON825rLyHVeZu32/+utr6gLBWimZKDUd4SMf+RWlyhtbo5DzCN0cKHRrzDRLIdxmf5GHnwT9cRSFGiupsRC2GG1qScWOQ8WlG5ThEA5t9+vkmL1cuFlya/v7Cf0AMxauJ0/3hVD5lueFrVC/vSrbofyiYyAUAAx8r5Jne8VUwXhtvC3gwMR4mIO5rmJ2FJ6fC784D6cDHHqieY5013IgFFiXEZoEwT6EzrQ36vLFjfXNSdS31g3Mu7fEKucTTVfMc8EmDDCj1671VO19AzcJWoC93q0AiH63vk1/pL1yc93Ah3jim750yBahyqOyA3K3Abhl1wKK6nLIrybRMVqyDp
x-ms-exchange-transport-forked: True
Content-ID: <2F15E785480E7C49A7D886BDC35CA124@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3264dbf8-b4ff-4b62-e138-08d799c1e72a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:50:38.0680 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5Yyd6wIwL/9XyvkpCYXpZyHgrDNnCaDHw56+/fIvVaFICGe3cERdG9Ue3lB6lpWQgQdDelkWRjBaJtOqrHZ3+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4063
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David S .
 Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkbmVzZGF5IDE1IEphbnVhcnkgMjAyMCAxNDo0MDoxMCBDRVQgR3JlZyBLcm9haC1IYXJ0
bWFuIHdyb3RlOg0KPiBPbiBXZWQsIEphbiAxNSwgMjAyMCBhdCAxMjoxMjowN1BNICswMDAwLCBK
w6lyw7RtZSBQb3VpbGxlciB3cm90ZToNCj4gPiBGcm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVy
b21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQo+ID4NCj4gPiBIZWxsbyBhbGwsDQo+ID4NCj4gPiBU
aGlzIHB1bGwgcmVxdWVzdCBpcyBmaW5hbGx5IGJpZ2dlciB0aGFuIEkgZXhwZWN0ZWQsIHNvcnJ5
Lg0KPiANCj4gQWZ0ZXIgYXBwbHlpbmcgdGhpcyBzZXJpZXMsIEkgZ2V0IHRoaXMgYnVpbGQgZXJy
b3I6DQo+IA0KPiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jOiBJbiBmdW5jdGlvbiDigJh3Znhf
Y3FtX2Jzc2xvc3Nfc23igJk6DQo+IGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmM6OTE6Mjg6IGVy
cm9yOiBleHBlY3RlZCDigJg74oCZIGJlZm9yZSDigJhzdHJ1Y3TigJkNCj4gICAgOTEgfCAgIHN0
cnVjdCBpZWVlODAyMTFfaGRyICpoZHINCj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBeDQo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgOw0KPiAgICA5MiB8
ICAgc3RydWN0IGllZWU4MDIxMV90eF9jb250cm9sIGNvbnRyb2wgPSB7IH07DQo+ICAgICAgIHwg
ICB+fn5+fn4NCj4gZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYzo5OTozOiBlcnJvcjog4oCYaGRy
4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlvdSBtZWFu
IOKAmGlkcuKAmT8NCj4gICAgOTkgfCAgIGhkciA9IChzdHJ1Y3QgaWVlZTgwMjExX2hkciAqKXNr
Yi0+ZGF0YTsNCj4gICAgICAgfCAgIF5+fg0KPiAgICAgICB8ICAgaWRyDQo+IA0KPiBEaWQgeW91
IGV2ZW4gdGVzdC1idWlsZCB0aGlzPw0KDQpBcmYsIEkgaGF2ZSBub3QgdHJpZWQgdG8gYnVpbHQg
YWZ0ZXIgaGF2aW5nIGZpeGVkIHdhcm5pbmdzIGZyb20NCmNoZWNrcGF0Y2guIFNoYW1lIG9uIG1l
Lg0KDQoNCi0tIA0KSsOpcsO0bWUgUG91aWxsZXINCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
