Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B35DA880
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Oct 2019 11:40:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0AB5386D04;
	Thu, 17 Oct 2019 09:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FkbyyWdw6v0O; Thu, 17 Oct 2019 09:40:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C263F86AEC;
	Thu, 17 Oct 2019 09:40:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 41C8B1BF9C8
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3D69D20368
 for <devel@linuxdriverproject.org>; Thu, 17 Oct 2019 09:40:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vw3dGkWxqdrz for <devel@linuxdriverproject.org>;
 Thu, 17 Oct 2019 09:40:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770071.outbound.protection.outlook.com [40.107.77.71])
 by silver.osuosl.org (Postfix) with ESMTPS id E5EC7204EB
 for <devel@driverdev.osuosl.org>; Thu, 17 Oct 2019 09:40:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=etJD0pZoNVUB1m1DVBYP6+n3bvHG6p2BerSUNalD5aE+cZihLmjcFGGYkt2+3Sx3/ijYk0mlawwI00dl+gW8XtDTBJ03diA1dqAB+WDk0JnXK/ehGnr4fNTG5wrnI5jKiNSVsQT8xJD3E8dTr4ATf17Feibj6RTGkP8YplD/0gmv8nWb3sa5gT/APgd5iBuyIXgnPncmWi2WhDpq/NuHlylALZJpJoxiPkz1GheKOBEnEgOIDHC9HbFIb2hze0+iPTMqtZEHIZZqjHLQathqyG1prNiITF+0CaF7IoCpRW5BBYkb9CDvi+hV+KopMzFGqZQ8U/NWh5IIelSdGreoQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sBfu57JjS8nFaunujv25TmdDZE1MWzqoxvIUIPXSe6w=;
 b=M2VzC4rAu3SPRxVG7Qd3iP6SpAgr0gtfPKSlDoDoTQS/Bv1ChiveaWUIYthGCmt1jxTXzsMHQmHD48S3EIwYG9aC9XY30FHBuksfgQdXfelS6BrC+tQRScHRmdkZ7RBbWhPYH8HvoxRxbr7UyTys1DTzmnQdnTTKv1qX2PNnUEowrtDAahlUzwns5vLobM+R3Z/nMPQlJb3QzxhoTlwzdWM0mMcEautpo0t9533BFjlyIariu9b6shd2BOZaFfrBHE2YEulk7Hr97qsuCD8ZwPyrIHO/6U1nQ9w/9sxzsiukKFHO/2WjEbCGrd9biPoEA5d26+mwyaWKShW0OxaYAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sBfu57JjS8nFaunujv25TmdDZE1MWzqoxvIUIPXSe6w=;
 b=UNxKg8mBPnR/pcN95mJvq85MIX3oSpElT477RwfW75BTMsZ153/La1AyGTG9soXAwTekbUspCrPv3EwhM57puQBtQ8eNZTQX7tKuo0ecHgldTMFn8Qm/D1ogs855QC+k3MqDYDMHDa2vmPw3tVrW3HOIi4dxiRt8zBtwcGfs67E=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4254.namprd11.prod.outlook.com (52.135.38.157) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.19; Thu, 17 Oct 2019 09:40:08 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.023; Thu, 17 Oct 2019
 09:40:08 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 5/6] staging: wfx: fix setting MAC address from DT
Thread-Topic: [PATCH 5/6] staging: wfx: fix setting MAC address from DT
Thread-Index: AQHVhM7cr0qswBTq+0aWlmB4+MVUXw==
Date: Thu, 17 Oct 2019 09:40:06 +0000
Message-ID: <20191017093954.657-5-Jerome.Pouiller@silabs.com>
References: <20191017093954.657-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20191017093954.657-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0d5abb27-36d4-4b89-497a-08d752e5ff48
x-ms-traffictypediagnostic: MN2PR11MB4254:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4254F9A6D6CC6DBE16E86572936D0@MN2PR11MB4254.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 01930B2BA8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(136003)(396003)(366004)(346002)(376002)(189003)(199004)(91956017)(76116006)(4744005)(54906003)(71190400001)(66946007)(26005)(86362001)(186003)(305945005)(99286004)(66476007)(5660300002)(2501003)(64756008)(36756003)(14454004)(66574012)(66556008)(1076003)(7736002)(71200400001)(66066001)(66446008)(2906002)(2351001)(478600001)(6512007)(76176011)(6116002)(3846002)(6506007)(14444005)(6916009)(256004)(316002)(446003)(11346002)(2616005)(6486002)(25786009)(476003)(486006)(81156014)(1730700003)(107886003)(102836004)(81166006)(5640700003)(4326008)(6436002)(8676002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4254;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: m6PjRn0rXrZXoXElITU/ty5E/RRnByNstRpCwZ0V9ij31vjYNpOx1IU6AIO4ylko2B28FrzxcV63wE1iGtl8teI1/PS9Eu+YMep+C5i59jMfe+j9LZJxruthOdoMF5PQvB++XA73ZXqTI56jrx0EL1T+ty6DWiSa336OfvycZReNNMVvPTa9v3isKfBXJmvi18Tdph2/CoF2Plr28KUc0duf6VsYju2BkBkkzAuzHS5zVAI7Osioq1kFpfzTl5jMNQolKF61lI9rf1RoOHX0IEDqOQfF+uVrG3USq70hMij05YlNzWPpTf4i2SFIaVm65KySxi3XFiPlSZGHo1HYpz8RNh9avk2aszZ+Y8YdLTSWC4J/CWrqmXHB01Rzz4mAt4phC3M8q23crlyQSZRSyrx6iC5AkJ9cLJAFyU+CkV0=
Content-ID: <8D6A557B7770C844800A72022B2ADD0C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d5abb27-36d4-4b89-497a-08d752e5ff48
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2019 09:40:06.7427 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EfJmRlkB/Uk6X7gpi9ogYori/F9JM0wm0aJGOnuzz7cUdEqSMzMG4sz9vJMSBN415snOPTJlcj942FORLqeWfA==
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
 Marc Dorval <Marc.Dorval@silabs.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpN
QUMgYWRkcmVzcyByZWFkIGZyb20gY2hpcCBpcyB1bmNvbmRpdGlvbmFsbHkgdXNlZCBldmVuIGlm
IGEgTUFDDQphZGRyZXNzIGlzIGNvbmZpZ3VyZWQgaW4gZGV2aWNlIHRyZWUuDQoNClJlcG9ydGVk
LWJ5OiBNYXJjIERvcnZhbCA8bWFyYy5kb3J2YWxAc2lsYWJzLmNvbT4NClNpZ25lZC1vZmYtYnk6
IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4NCi0tLQ0KIGRy
aXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jIHwgMyArKy0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L21haW4uYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jDQppbmRleCAyMDViNWJjODg3
MmUuLjE4ZjA3ZjdhZDM0NyAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5j
DQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYw0KQEAgLTQxMCw4ICs0MTAsOSBAQCBp
bnQgd2Z4X3Byb2JlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQ0KIAkJaWYgKCFJU19FUlJfT1JfTlVM
TChtYWNhZGRyKSkgew0KIAkJCWV0aGVyX2FkZHJfY29weSh3ZGV2LT5hZGRyZXNzZXNbaV0uYWRk
ciwgbWFjYWRkcik7DQogCQkJd2Rldi0+YWRkcmVzc2VzW2ldLmFkZHJbRVRIX0FMRU4gLSAxXSAr
PSBpOw0KKwkJfSBlbHNlIHsNCisJCQlldGhlcl9hZGRyX2NvcHkod2Rldi0+YWRkcmVzc2VzW2ld
LmFkZHIsIHdkZXYtPmh3X2NhcHMubWFjX2FkZHJbaV0pOw0KIAkJfQ0KLQkJZXRoZXJfYWRkcl9j
b3B5KHdkZXYtPmFkZHJlc3Nlc1tpXS5hZGRyLCB3ZGV2LT5od19jYXBzLm1hY19hZGRyW2ldKTsN
CiAJCWlmICghaXNfdmFsaWRfZXRoZXJfYWRkcih3ZGV2LT5hZGRyZXNzZXNbaV0uYWRkcikpIHsN
CiAJCQlkZXZfd2Fybih3ZGV2LT5kZXYsICJ1c2luZyByYW5kb20gTUFDIGFkZHJlc3NcbiIpOw0K
IAkJCWV0aF9yYW5kb21fYWRkcih3ZGV2LT5hZGRyZXNzZXNbaV0uYWRkcik7DQotLSANCjIuMjAu
MQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
