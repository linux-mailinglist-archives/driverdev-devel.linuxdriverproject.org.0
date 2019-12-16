Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1B812105B
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:04:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F8DA868BD;
	Mon, 16 Dec 2019 17:03:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iGRpOoQUvMK1; Mon, 16 Dec 2019 17:03:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 12D1086890;
	Mon, 16 Dec 2019 17:03:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 766421BF989
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:03:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6EF8388146
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:03:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2lV4xD7a2ova for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:03:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690072.outbound.protection.outlook.com [40.107.69.72])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6ECF6880C5
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:03:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=klxwH+Z/9Jg9N/X3BD03cHvtUg1/ruHUBZ/4wRQdtv192tdpUmmxced0hEvFKCKFSNQWMRPUkwstInLC1jrD+1A9IVHXEF+cP8gesSAKjf1sfjdVsmphEG9emWiaQQXJVCPH9Sv8OcfjF37d3JJCy4rDHynvJFOMJF0XbBcN00siL/pZ+RorDZmG1xhhNFPMYnomgSOhqwrGaOcJbygBdNYDSnARCvw9i+8ALVk5+gnT0KouPCgSKsDVUeFHfD9ns6WRsz9yO04SftUFjLqXfSZCXucRrtP8Yxp4AQknKlEZ1KXouAkHKwY8MBX1MucxBhPPcaquAtzDqO3X7gmaRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=67bz19hvec/sWmsh3LHft/L/nxeL7H9xihEyTUIhq+M=;
 b=WL24UlQz5D8Xaithxa7+eVQL7G+qDd96pmUkWFhUPLxy2F18L9ZulXJ/+x8+EVP3og/bHG8azchPEWgQYNHQg9owfFLk0p2Y/DMXSGGqc8/OboC1L3socy4y3zPern4mRnF+Tdyp9RVn9K7T4CURX10nkKPXNysBOmdsvk4dfzZkvSeQ/QSpSFnGhnPXa4A7/cA0YnyHsq9IUXJD0zvtF+ils6bcSqYbXw4tibv8GUlS/sHZGhilsbDRda6+lJIe+nZ4BIvsKq6VCs+ue6o/kPqDPYknl/GUQeFsElgoLwvhsfBqjob2A6g2WmvDsDKZ98W6Ufh5CyAFTff9XASdjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=67bz19hvec/sWmsh3LHft/L/nxeL7H9xihEyTUIhq+M=;
 b=C5puRMO52l63SbzkxMhy0wXkF3Kju+vY8sgj3cWShie41xccAr6mc3td/3eRlO7I1HLrEis5j9xho1OJEAjav/EvT2C/eMgIN4OXAXw7G2IQ9vsWND4BcHaODdpL4W1WidaWzEsA/9Wuis+iIZdid1DbwucSgmrsRm8Va4xSBJ8=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4351.namprd11.prod.outlook.com (52.135.39.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:03:48 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:03:48 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 14/55] staging: wfx: improve error message on unexpected
 confirmation
Thread-Topic: [PATCH 14/55] staging: wfx: improve error message on unexpected
 confirmation
Thread-Index: AQHVtDLE+xoe8CLn00OEKD99LLG3EA==
Date: Mon, 16 Dec 2019 17:03:40 +0000
Message-ID: <20191216170302.29543-15-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 88ede603-5a32-4c51-e3cf-08d78249eb4e
x-ms-traffictypediagnostic: MN2PR11MB4351:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB435158E918799C3A53094CE493510@MN2PR11MB4351.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(366004)(376002)(346002)(396003)(39860400002)(199004)(189003)(66556008)(66446008)(64756008)(66476007)(76116006)(85202003)(91956017)(66946007)(4744005)(54906003)(107886003)(4326008)(478600001)(110136005)(71200400001)(6512007)(81156014)(8676002)(81166006)(186003)(36756003)(2906002)(85182001)(6666004)(66574012)(15650500001)(1076003)(316002)(6506007)(5660300002)(86362001)(26005)(2616005)(6486002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4351;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hG17I1SL6uZ3tOCXdHzH9t/jmSLl4518c22l9FaEn4AMsIazS7TDP/NgylNgUtRMG3r089LTFJ8SU3br3NSp794HVS67YNfSm4DIjxzIS/WsVVtIJrLdvOTSHXOmEZkzHyx4QWYOnWxTFEi1B0gLEYl8VjM505SaihzVy+yD7QCYpR7i9lGEm8WnZb6cBTvtCWGJI55iMzs1vHulWacpx2nqSp61YKmFqqcM7tRV+DFIVPwmifSXfhRwum/xV34/Nat8ASvfj0e4Ew97GzKDcVcSYADKlXANylbmf8TkfF31hfEHbWFk3gWW2iubLe+GnAnOxO142eORPE1f/BbuhUPiiNFmMvOunAb0tlV/GZqouZBHkqxVSKcqKkBnsti1AoWG/BCB5nUz3AD/gZEfdFx2Sg8NTh48H/9V5IV+GNISBW/bKke7RVPwXYaGTMzm
Content-ID: <3C738A4F8126AA46857EE80D794F98BA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88ede603-5a32-4c51-e3cf-08d78249eb4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:40.9369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vYr2C1bXivClXvKubH35gJW17viAAb47zK+QfDwxcX2uu9G6iZtPTEHmHIR6qv5xUQ9+8MCFlDAhg6DSobHZ4A==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpX
aGVuIGRyaXZlciByZWNlaXZlcyBhbiB1bmV4cGVjdGVkIGFuc3dlciBmcm9tIHRoZSBkZXZpY2Us
IGl0IHNob3dzDQoidW5zdXBwb3J0ZWQgSElGIElEIi4gVGhhdCBtZXNzYWdlIGRvZXMgbm90IHJl
cHJlc2VudCB0aGUgcmVhbCBlcnJvci4NCg0KU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxs
ZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KLS0tDQogZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfcnguYyB8IDcgKysrKysrLQ0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4
LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jDQppbmRleCA4MjBkZTIxNmJlMGMuLjE0
OTRhZDVhNTA3YiAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMNCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMNCkBAIC0zNTgsNyArMzU4LDEyIEBAIHZv
aWQgd2Z4X2hhbmRsZV9yeChzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwgc3RydWN0IHNrX2J1ZmYgKnNr
YikNCiAJCQlnb3RvIGZyZWU7DQogCQl9DQogCX0NCi0JZGV2X2Vycih3ZGV2LT5kZXYsICJ1bnN1
cHBvcnRlZCBISUYgSUQgJTAyeFxuIiwgaGlmX2lkKTsNCisJaWYgKGhpZl9pZCAmIDB4ODApDQor
CQlkZXZfZXJyKHdkZXYtPmRldiwgInVuc3VwcG9ydGVkIEhJRiBpbmRpY2F0aW9uOiBJRCAlMDJ4
XG4iLA0KKwkJCWhpZl9pZCk7DQorCWVsc2UNCisJCWRldl9lcnIod2Rldi0+ZGV2LCAidW5leHBl
Y3RlZCBISUYgY29uZmlybWF0aW9uOiBJRCAlMDJ4XG4iLA0KKwkJCWhpZl9pZCk7DQogZnJlZToN
CiAJZGV2X2tmcmVlX3NrYihza2IpOw0KIH0NCi0tIA0KMi4yMC4xDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
