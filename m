Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A35DCF6D3
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 12:15:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 177768604A;
	Tue,  8 Oct 2019 10:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oo0qKKhxmSu9; Tue,  8 Oct 2019 10:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E1B278584A;
	Tue,  8 Oct 2019 10:15:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8AD3D1BF857
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:15:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6F36A22658
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:15:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qpqh+IDnoYfP for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 10:15:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690065.outbound.protection.outlook.com [40.107.69.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 06219203FA
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 10:15:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gmy1VrT60FixbYua/cmysYPPszJQ4C6UMX+RYDWzW42g0XRsixZz1zTLijkE2lS34580h0tcOxe/icF2njbFWyW21kIwUKQfqSZ5b0jxW+uyPjaNQN+fhy/g7oauAZbkKW6o746Is9wbwnOvaA14J0PeQErQjuUcPAQd2hsgYr8sYj9psoTxaNfIcrrSMRXKe4eZtJBHnEjAQ/FIiGXWGAEjyqlv54qOHHA9SANAnfG3ooOAZlszbKHESnB9VJShbTyaP4nEr5zQoZfB7ILpsmXRMfQ/sD0qh3eIiXVLeQzcvqeuR5RJDD2Q5h3Lll2oJuSdfbwT+00FyWi2JiAOpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15FcfeuOF4glz7gzDnh3veedEupIGt25Ilb3JT1kAII=;
 b=NO72odCaE0pk8A2cZp2t6JGMJf09Z+8f2x7GSynqyp53DJ9CPb3FWvZI+ZFYqR5XM44nJ0MhGqFQAAYUUpqyaoQU5jLFgrWb1Ur42CV9e8lBfCGnNC94jF4AOGqpQ5ffc6FZuraqpgpUJgpzpQm6TIor5siPdQ6+cTW0vHKwDybDfRmT8c7pSbMFt29l2wcd55eR/cwQyqlCskyaHOzc+s7FwS+pqXDmHYHH3XmEt+9FfyOf8I3vtbDV8UNWlZUCSJiZnS/ZH3wLh9g5LG/AzyUsdrOeMar8sTm6kzAXnxHcz5m/P/iBz79Nh5/w4rOvtO2g75kAQfWZjp+N87BQpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15FcfeuOF4glz7gzDnh3veedEupIGt25Ilb3JT1kAII=;
 b=Fit46zIXcG0mRNhHqmjWiz5N140IMl2LUeaR98JvHx2hNZtVgbyRNGMa/q3oIAUjon6Xg9/oUn+Mu5p3oNnPzckXA6YbaXBgMqSDVrteTmtN54QbWKQclgDjclv0BSintM8tUc5SvnLUJL05CjGRW0QjxhGs1ldIy2M3/K8QDIE=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4333.namprd11.prod.outlook.com (10.255.90.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 8 Oct 2019 09:43:01 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Tue, 8 Oct 2019
 09:43:01 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 4/7] staging: wfx: correctly cast data on big-endian targets
Thread-Topic: [PATCH 4/7] staging: wfx: correctly cast data on big-endian
 targets
Thread-Index: AQHVfbzFUz8Wa5TEUkOVv4ArnuYJvw==
Date: Tue, 8 Oct 2019 09:43:00 +0000
Message-ID: <20191008094232.10014-5-Jerome.Pouiller@silabs.com>
References: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20191008094232.10014-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 357251a1-d2a0-47d4-a956-08d74bd3e8b0
x-ms-traffictypediagnostic: MN2PR11MB4333:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4333F56CCDEC708EBAE2217D939A0@MN2PR11MB4333.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(366004)(346002)(39850400004)(199004)(189003)(54906003)(66574012)(1076003)(6436002)(6512007)(5640700003)(25786009)(305945005)(66066001)(4744005)(316002)(7736002)(99286004)(76176011)(2351001)(6506007)(8936002)(86362001)(2501003)(71200400001)(71190400001)(102836004)(6486002)(14454004)(8676002)(6916009)(81166006)(81156014)(478600001)(1730700003)(4326008)(76116006)(26005)(446003)(14444005)(64756008)(66556008)(476003)(256004)(66476007)(66446008)(186003)(3846002)(66946007)(2616005)(6116002)(486006)(11346002)(2906002)(36756003)(91956017)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4333;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FoSb4621f3YwsUZkkDKNFQgsRj26bQ1+9BoXvxcs5E1cOlOiCbDmBUUurOM/I76ydRQDaidhQEFFZmMJUjYVQKg2C5MCea2EFvguPY8WsVY+5dTPHYT2/fGiiJD5hZ2wv6bYPh/3zfO68wccTETvSvgg9KzjuRLsqL2k/i+5Ge4sDeyYl3yaCTmj9VPQfr0Y0aYWRIrT9e80pKYSoMBlf2+RBYDKCnFBxMQaGXLvOliXIpj0j0MoTrZMDi5kV9a71u5v2AurIcXHp3oEM6ShPXqJPSABBUM5HLoVsORmfUHtaF7sKSD03DFpaq1RByLGyJObkLS6VN4d44kDNOYObbwKUtThRij+B8rR2uVoT1T98d6cYjhyBPWjPW1qNKGPkgVywh+hFYIKz91yhLRwJewzy6W/hgwNk3kqM1JFZNA=
Content-ID: <8148D795E6D66242A56A27310962EBC9@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 357251a1-d2a0-47d4-a956-08d74bd3e8b0
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 09:43:00.2053 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nv22A6I7nXa4x/Yu4uqkVmenBDVnNE12IExS7csmcacEarWCGC+6lLX0Tee9PjbGtmnhXOSgB26qLUmivrJTPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4333
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
 Stephen Rothwell <sfr@canb.auug.org.au>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpX
aGVuIGJ1aWx0IGZvciBhIGJpZy1lbmRpYW4gdGFyZ2V0LCBvcmlnaW5hbCBjb2RlIGNhdXNlZCBl
cnJvcjoNCg0KICAgIGluY2x1ZGUvdWFwaS9saW51eC9zd2FiLmg6MjQyOjI5OiBub3RlOiBleHBl
Y3RlZCAnX191MzIgKiB7YWthIHVuc2lnbmVkIGludCAqfScgYnV0IGFyZ3VtZW50IGlzIG9mIHR5
cGUgJ3N0cnVjdCBoaWZfbWliX3Byb3RlY3RlZF9tZ210X3BvbGljeSAqJw0KDQpGaXhlczogZjk1
YTI5ZDQwNzgyICgic3RhZ2luZzogd2Z4OiBhZGQgSElGIGNvbW1hbmRzIGhlbHBlcnMiKQ0KUmVw
b3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPg0KUmVwb3J0ZWQtYnk6
IFN0ZXBoZW4gUm90aHdlbGwgPHNmckBjYW5iLmF1dWcub3JnLmF1Pg0KU2lnbmVkLW9mZi1ieTog
SsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KLS0tDQogZHJp
dmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmggfCAyICstDQogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2hpZl90eF9taWIuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4X21pYi5oDQpp
bmRleCAxNjdjNWRlYzAwOWYuLjRmMTMyMzQ4ZjVmYSAxMDA2NDQNCi0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy93ZngvaGlmX3R4X21pYi5oDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eF9t
aWIuaA0KQEAgLTE0NSw3ICsxNDUsNyBAQCBzdGF0aWMgaW5saW5lIGludCBoaWZfc2V0X21mcChz
dHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgYm9vbCBjYXBhYmxlLCBib29sIHJlcXVpcmVkKQ0KIAl9DQog
CWlmICghcmVxdWlyZWQpDQogCQl2YWwudW5wbWZfYWxsb3dlZCA9IDE7DQotCWNwdV90b19sZTMy
cygmdmFsKTsNCisJY3B1X3RvX2xlMzJzKCh1aW50MzJfdCAqKSAmdmFsKTsNCiAJcmV0dXJuIGhp
Zl93cml0ZV9taWIod3ZpZi0+d2Rldiwgd3ZpZi0+aWQsDQogCQkJICAgICBISUZfTUlCX0lEX1BS
T1RFQ1RFRF9NR01UX1BPTElDWSwNCiAJCQkgICAgICZ2YWwsIHNpemVvZih2YWwpKTsNCi0tIA0K
Mi4yMC4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
