Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5CA1211D6
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:37:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 392678826F;
	Mon, 16 Dec 2019 17:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FEhKtTw+k6AI; Mon, 16 Dec 2019 17:37:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 91AA188187;
	Mon, 16 Dec 2019 17:37:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13A111BF40E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10449881C8
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pmXl6vOVIeNx for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:37:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2058.outbound.protection.outlook.com [40.107.243.58])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7CC188187
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:37:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZTAo/LEjQWEfXacyUS6J+cCVZQfnYh65mP/wExnSHWd/4jZpEUwnMD7YGezUb3VeiN7v/W3y2lrib/BzMDxILVTbga/BMBxz9jfbWmIFy4Pu2LuDQ9+vt3MGjNQc/jaChCCn9zYiR8puGvB69UyDtMpXOEKnHcg2oKDfX1TjKOa7kCm+qxX2wDqGMjO84bM2x3ktKYbPcKFRTRaqBxRGTVXgPJfpk5TsXBDwnBUTVckTE4H1/0hL5rsVymVXp6zfjfSVKA3Fj5IXGWLwXaVfK8uLKiC8egvPp+1n+hdQCNly1vpmnrAr6gH0e/lcUk7TLUVMDuXyxuGjjeT1xWjVOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wDXzS1wnUOS9jXARYXqk0G1y1U7273hCzGnbdKeTfs=;
 b=m/PfVRgDyxvxRNmIGGNR7hO8sUrdMDFZ0DT7Z2MSXJD6q8+aphed5rYp73aJ2cwDq2CNc2DlPYmvnL/yw9jSN1MJGcZl9JxtXFixMH6iWHIhuj21qVla7+jxy/T7C2FoZ9wGaDCgqvUGnz1J3sV4Va8oHBcd8B3AauZrCR5BE7TRJk6OQbZXCQCBC4A5YpqyNh032ipmXGD5HOkyDyAkyjSH9H0aw90GJUfodcZSFGJ18JDkxkgBMlYdlUlcD+3Ygfq8qyseuIyXpKhcgquhmHXggtc2th/E+yTZdclNKjkfw/t+9UDq9nI8w7fLe2K4epqfSjlaOfP5nGnvzZy0Rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6wDXzS1wnUOS9jXARYXqk0G1y1U7273hCzGnbdKeTfs=;
 b=oSuaK0e2+/3D7AYhF07Ku87giLB3x0FDbdKuKm4aUrFXvDD9LzRwhWIob5w5nIbKRy0xGMRm0HWeK5sfqbrYfU4PjfSa61qaPLG6kE2YfopC066ayj9EGtMB2pk4Mvxyb0SDiKNjYLvldljvPI5hvrI+JIjLc6r/7yGIgKvELTQ=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3838.namprd11.prod.outlook.com (20.178.252.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Mon, 16 Dec 2019 17:03:44 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:03:44 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 08/55] staging: wfx: detect race condition in WEP
 authentication
Thread-Topic: [PATCH 08/55] staging: wfx: detect race condition in WEP
 authentication
Thread-Index: AQHVtDLBG/NDZpdpMkuP9QWA66ue4w==
Date: Mon, 16 Dec 2019 17:03:37 +0000
Message-ID: <20191216170302.29543-9-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 578197b9-dd56-4469-a355-08d78249e8a0
x-ms-traffictypediagnostic: MN2PR11MB3838:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB383809030DC6B01D551CA17293510@MN2PR11MB3838.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(39860400002)(396003)(366004)(189003)(199004)(85202003)(8936002)(4744005)(81166006)(8676002)(54906003)(110136005)(316002)(85182001)(6506007)(186003)(2906002)(5660300002)(6512007)(26005)(107886003)(81156014)(36756003)(4326008)(6666004)(2616005)(76116006)(91956017)(64756008)(66556008)(66476007)(66946007)(71200400001)(86362001)(66446008)(6486002)(478600001)(1076003)(66574012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3838;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uaskQuARV4OLxeMhtZbc7oh0QoZx68CbcrXqQPQHBDIPWDBQf8fwx3KOy9Qs5jXYbyI0RyjqF/EMTdiJRl3h36IfNdM+Ph7IzQ5vOwDK1QpVgfWpA72UhGAP9dPrl6BCvm3QgWupIOxZu2xvtMreabsdDPOMZDHvUDZgKkw7V0jk49uYYaqF0h4C3lQHEQ5A15Q1i9Nv66xeBQSzjbKOqoKKd6fVl/9IT3OaadrVNjslrawifbn/yL/jaHtsgNDSA6VayqjjgCTErUr8VWugNcNDJ6KBvpYWuQThXs0unhD/UI/dvybvxB8rOTBRfU3I1nx2ZyRlEhdWRvK9lP505sViTKfSQpZGJSlgetagRdg1ghatM5sESId1BTKgPJBneNGQJ+tiuFuGLAitIo8KPPvl1bwAIa4DMQIea8sU4FvpFeewRYVY3q4bsofHsgyP
Content-ID: <ABFF87B9590548479D28802E1281C886@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 578197b9-dd56-4469-a355-08d78249e8a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:37.3219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zo6S75+WcTuXRuqcyqz+4UqnAB1xh/PKrXFjHnZ/Z3Ds9nv4MLmyFgnvofcDhwCrep5g0A4AMB+Iiv3c+y5lQQ==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpD
dXJyZW50IGNvZGUgaGFzIGEgc3BlY2lhbCBjYXNlIHRvIGhhbmRsZSBhc3NvY2lhdGlvbiB3aXRo
IFdFUC4gQmVmb3JlDQp0byByZXdvcmsgdGhlIHR4IGRhdGEgaGFuZGxpbmcsIGxldCdzIHRyeSB0
byBkZXRlY3QgYW55IHBvc3NpYmxlIG1pc3VzZQ0Kb2YgdGhpcyBjb2RlLg0KDQpTaWduZWQtb2Zm
LWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQotLS0N
CiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMgfCAxICsNCiAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKykNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYyBi
L2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYw0KaW5kZXggYzdlZTkwODg4ZjY5Li42ODBmZWQz
MWNlZmIgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMNCisrKyBiL2Ry
aXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYw0KQEAgLTQyMiw2ICs0MjIsNyBAQCBzdGF0aWMgYm9v
bCBoaWZfaGFuZGxlX3R4X2RhdGEoc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBza19idWZm
ICpza2IsDQogCQlicmVhazsNCiAJY2FzZSBkb193ZXA6DQogCQl3ZnhfdHhfbG9jayh3dmlmLT53
ZGV2KTsNCisJCVdBUk5fT04od3ZpZi0+d2VwX3BlbmRpbmdfc2tiKTsNCiAJCXd2aWYtPndlcF9k
ZWZhdWx0X2tleV9pZCA9IHR4X3ByaXYtPmh3X2tleS0+a2V5aWR4Ow0KIAkJd3ZpZi0+d2VwX3Bl
bmRpbmdfc2tiID0gc2tiOw0KIAkJaWYgKCFzY2hlZHVsZV93b3JrKCZ3dmlmLT53ZXBfa2V5X3dv
cmspKQ0KLS0gDQoyLjIwLjENCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
