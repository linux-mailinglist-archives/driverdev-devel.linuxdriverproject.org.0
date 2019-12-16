Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E52B6121191
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:18:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 771F0877F1;
	Mon, 16 Dec 2019 17:18:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PZD0ZbwJqIre; Mon, 16 Dec 2019 17:18:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 257D5877BF;
	Mon, 16 Dec 2019 17:18:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E7B31BF40E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:18:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B0E7865C7
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SpocMiJjLeSb for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:18:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2043.outbound.protection.outlook.com [40.107.223.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DA26A863A8
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:18:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E2ttkfxMVIUJ1EZ9QeR/59JY6ZplWNXLRNT8k68//3dYia7p+IQGDAwMFrnTYcIJbqzYUDO7bjLBM1A549oq+hzRIB0Lz1Xj6scjLFHaTafuK2ozvH2wJZ+nktjt/VKPAtLBQjKRSteZTT6Wvl4XRA7detgPK8dhdq1oocGmqswlLCzPJ/lM617f8hJfhQLiN9s/SM06Fl9UXrAMOKYkVvoGwz6mmGH+tmfh8h4zqn2v785pYiyIl281aK5ktUCrSxe2HUb/F9j5tcN7+KzBFR8HaDv94V31VTDGbyRsy5OBqrDqkHlz+ktTMDWxNAYlrxoWomTWyaNbzfwvY81YLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ok6tosLI3CrLoEK8kYwUvELZAFlrlOzOv19vPj4z7Bk=;
 b=Xgj7slbuj7UUtgcNbeJycA/8gRJJ/YEd9MbXn0qhQIbMHqUq2qcccNpREtzCNMzSc1ZKABy9SWmJm1qV0v0Sn05pt40erBsMCY6byrZpp6RnSxOItq4zUf7kwQRvp2J7AjkjW0lK7Ecd0jgY1kcmC74HrSyXeT3T8bQuSButBx1/MYjLDPumMGNoINo9xqzEChHoghJhy2WuvPmujA9F9Z53lxjfG6U2njLEBrnugBaWQuQoK4fJP8cp3tStZnrNop8z1fEQ+cewO1co+U/Pz+zw1LjCIlCKOzcOXMaXNApWDUf3UgMuWvHzYb2tM27Z2HeoWuhh1fZjiIKZQPS2MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ok6tosLI3CrLoEK8kYwUvELZAFlrlOzOv19vPj4z7Bk=;
 b=h5NiVSfQWly3VivN186Hmqhjz/yE7ZkJk5r0qKbmwsPjZ2dMsCQ6MWh/EJBlQUIS/x8x+6ZmRoFwePAlX1mXUNkrswDg8eDEY0+agqpc0g4iLLjRIsBSY3uvYUoTHu75bvD9oPcu0nqTsj/EtDeD9Esn9OB4s1GtzsYjp8AGMxY=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3838.namprd11.prod.outlook.com (20.178.252.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:03:35 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:03:35 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 03/55] staging: wfx: fix counter overflow
Thread-Topic: [PATCH 03/55] staging: wfx: fix counter overflow
Thread-Index: AQHVtDLAm4rb7my/j0+AmTYMmsYTQw==
Date: Mon, 16 Dec 2019 17:03:34 +0000
Message-ID: <20191216170302.29543-4-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 0d9b0a57-79ae-420b-a4df-08d78249e33e
x-ms-traffictypediagnostic: MN2PR11MB3838:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3838F97EE2408757140594FB93510@MN2PR11MB3838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:510;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(396003)(366004)(189003)(199004)(85202003)(8936002)(4744005)(81166006)(8676002)(54906003)(110136005)(316002)(85182001)(6506007)(186003)(2906002)(5660300002)(6512007)(26005)(107886003)(81156014)(36756003)(4326008)(2616005)(76116006)(91956017)(64756008)(66556008)(66476007)(66946007)(71200400001)(86362001)(66446008)(6486002)(478600001)(1076003)(66574012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3838;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MGQZg5gu5mTiJrUeUF7daVammFcxi95GTd5hXNFCwcsxWFg/7FHbrKBo8VwaP6+Ou0kp3pflmKyJQlQpHAU7YKgVBab+42m7Qy5WyOj0IUXFXOhwYqIX+oTPmS30b49WgwgpIlxuPusVcrIEhj8cBcaX0eA7f4dieSUcXzHdF5ZcrDhXAYz1rkaAeXyJjXn+w94Kpfrm66wBAHZk1ieOiJGW3P3+LrZhBeiBjh5cIA7d4pahuJEpnGUgghlra1/x/frljfuLVz8qKwWirQT3M7N7qlGGTmYBDQNglfxlYUEXByFVj7iVhV99VgE+NYGn0cIwsS6pnlZaSy0u0e+eogDjEf6HpIqVpFOfXt0N9FXCjQ7pQt8OJ7vehDKNwJ0nlZ72xDtCdBfitTAL4EfKQ08FQG8bE3M0xZar+rn53Sa6ZCLVtNMg/oE560AcPb/1
Content-ID: <9AF0E0E9B9F7324D9E65B98E35F9400B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d9b0a57-79ae-420b-a4df-08d78249e33e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:34.6495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lAJ2XKdKMhKKAPlLbL6SFtSmdTVUaD2d/TBN+joDXQaM8acZomqVGt+ylVSGgEn4bhxXzTkz+54XTDmn6bX9yA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3838
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpT
b21lIHdlaXJkIGJlaGF2aW9ycyB3ZXJlIG9ic2VydmVkIHdoZW4gY29ubmVjdGlvbiBpcyByZWFs
bHkgZ29vZCBhbmQNCnBhY2tldHMgYXJlIHNtYWxsLiBJdCBhcHBlYXJzIHRoYXQgc29tZXRpbWUs
IG51bWJlciBvZiBwYWNrZXRzIGluIHF1ZXVlcw0KY2FuIGV4Y2VlZCAyNTUgYW5kIGdlbmVyYXRl
IGFuIG92ZXJmbG93IGluIGZpZWxkIHVzYWdlX2NvdW50Lg0KDQpTaWduZWQtb2ZmLWJ5OiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQotLS0NCiBkcml2ZXJz
L3N0YWdpbmcvd2Z4L2RhdGFfdHguaCB8IDIgKy0NCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
ZGF0YV90eC5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmgNCmluZGV4IGEwZjlhZTY5
YmFmNS4uZjYzZTVkOGNmOTI5IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRh
X3R4LmgNCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5oDQpAQCAtMzksOCArMzks
OCBAQCBzdHJ1Y3Qgd2Z4X2xpbmtfZW50cnkgew0KIA0KIHN0cnVjdCB0eF9wb2xpY3kgew0KIAlz
dHJ1Y3QgbGlzdF9oZWFkIGxpbms7DQorCWludCB1c2FnZV9jb3VudDsNCiAJdTggcmF0ZXNbMTJd
Ow0KLQl1OCB1c2FnZV9jb3VudDsNCiAJdTggdXBsb2FkZWQ7DQogfTsNCiANCi0tIA0KMi4yMC4x
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
