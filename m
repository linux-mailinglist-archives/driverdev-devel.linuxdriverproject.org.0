Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 03FBCCF6D5
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 12:16:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9B186860D6;
	Tue,  8 Oct 2019 10:16:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1GaQPATX9zQO; Tue,  8 Oct 2019 10:16:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D26F78613C;
	Tue,  8 Oct 2019 10:16:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 78F921BF857
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:16:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 62900859CC
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:16:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QiiSuS4VURvq for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 10:16:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690080.outbound.protection.outlook.com [40.107.69.80])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 52C6085852
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 10:16:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BIxBnTkF9sBAnsW7TWZ0ZwuvlwsaFVMcYYobiHg0UUZRRRiUuXJQo8Uw5TyksFvp7tGapR+OvM8S0//+1+dmuefeeh4uOSrvZcECW0B6U54CvoKIXZFgVqnOUAuxVllSDkZ/szmB0ZbAAb0LNnnLB3RneexG5r6kqnXj1ZeS059QnyREFadV+ANy4zjHhZeCN/6wRLRQYwafLflqAduM6hSCVlzvuf09Y5TfzTF2ITC5ZLn7zY6jR9HYn9yI0JxotUcLBA+PGfhIWfezqNI8v4sm8BYlilQ3bUD1V7Ht3r9/SYPyttCHoYIJP5HHcAJJmbLxdVkrpAdoOncw6P+xKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VD99GuwKtMdAfF7ppC/0YxjpBlGsj6fLDqWAlNJBWiE=;
 b=BsOIeCWqZ+j35gzvbmmixkkItVHkkgd8XbLiZkMNZtaGs6gLSInhkRSKBgPr76s/X63FmDhyxxkO+7HpTeT+Ji6r9jiW3UoLsMut5otZwqCwdOHr3NSfeuj4+OZXYcbW/IbnAaWFvgyaeVfF7YN2Hj6lqa6ibtDCEkN9NYF2Nlz87ulFD7UfRLdFegd8FyfxK8UTEDV1hKoynfNZ7YszTl2TQTBulDYAxDXhw54/M89k0rAmeho2Gvc4wtOI9uiUglWOPE2IH3hXWZifOhKdzvvErayhrr6Z1mzFJBtXIQYUuyR4YFj/LEOXIAqZ0pJ1QYq0zMLXZAogapdqf3UqTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VD99GuwKtMdAfF7ppC/0YxjpBlGsj6fLDqWAlNJBWiE=;
 b=IVdJwXWdCFuOPdw4XyRTVpUIV5FgUpYhswtC+3iFxch3WX3lTXEqzLA8oCZZ5fV8JRtJx/KoW/HOSablRQHeQGVfny976HAF69p5Epv4OqpuFDVpfKvRznmNOfflmvKOdWcuzFtKhUM09vyd6b4hLFilGxKZEaVIKkjd4KRbIhE=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4333.namprd11.prod.outlook.com (10.255.90.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 8 Oct 2019 09:42:59 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Tue, 8 Oct 2019
 09:42:59 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 2/7] staging: wfx: remove misused call to cpu_to_le16()
Thread-Topic: [PATCH 2/7] staging: wfx: remove misused call to cpu_to_le16()
Thread-Index: AQHVfbzFCyv85Pij7EytLAPQ4KsdXw==
Date: Tue, 8 Oct 2019 09:42:59 +0000
Message-ID: <20191008094232.10014-3-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: b43dc61a-d4e5-4305-fb23-08d74bd3e800
x-ms-traffictypediagnostic: MN2PR11MB4333:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4333CFAC5341B5E13E19793A939A0@MN2PR11MB4333.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:549;
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
x-microsoft-antispam-message-info: jq9WPakKdwJ+AwOJloLvzHQvLXAgBrXPX82Cl+C7MEUNXOkphXhXxFWXUBNNxFTT/C73YUgw/VnBJtztHsO81gJMmIcFfnfWD+QGBR5yGWFWY+uWjVbGhvBA679a/zJYRcT2Izq80/3bgCuDLM/v31ug0BzzPPoKlAw0gef+nEtVyKfQbDUNly90sYOw4ZP1QuG6zk2jYMlKrbio8H8kECTQk93LpgjEQBkQPgu8lKHsiDPGqN9/gsrGVFS7VoS61PmAcLhvT6yRdtz1RA285rF/eJF4nvARD5l9ceWS91ByS7ldTEr7Q6mLFIxIPTahd68fIL02hKEfijPcA0+HPJ//73yIYeMSbKiS502IHZcevehcpuwbqlQuv8jviYvidGszQ/7Guqepi9HhB5vDgteT4GnUAwQSG/mm42SLa9g=
Content-ID: <93976F0EFAE52C4EA35BB0E8835AA3AB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b43dc61a-d4e5-4305-fb23-08d74bd3e800
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 09:42:59.3628 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o8l4EiGJzIUkqFmuwEuaYT4cuIo9PBSYSl17Qnw7qhmRMsdwiHcWTJZlfCu6rCZrrqGAeO1vOXQC+8ffBRiyLA==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpJ
bmRlZWQsIGhpZl9tc2ctPmlkIGlzIGEgdWludDhfdCwgc28gdXNlIG9mIGNwdV90b19sZTE2KCkg
aXMgYSBtYWRuZXNzLg0KDQpGaXhlczogOWJjYTQ1ZjNkNjkyICgic3RhZ2luZzogd2Z4OiBhbGxv
dyB0byBzZW5kIDgwMi4xMSBmcmFtZXMiKQ0KUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90
IDxsa3BAaW50ZWwuY29tPg0KUmVwb3J0ZWQtYnk6IFN0ZXBoZW4gUm90aHdlbGwgPHNmckBjYW5i
LmF1dWcub3JnLmF1Pg0KU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPg0KLS0tDQogZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMg
fCAyICstDQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQoN
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvZGF0YV90eC5jDQppbmRleCA3ZjI3OTlmYmRhZmUuLjE4OTFiY2FhZjlmYyAxMDA2
NDQNCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jDQorKysgYi9kcml2ZXJzL3N0
YWdpbmcvd2Z4L2RhdGFfdHguYw0KQEAgLTYyMCw3ICs2MjAsNyBAQCBzdGF0aWMgaW50IHdmeF90
eF9pbm5lcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwg
c3RydWN0DQogCW1lbXNldChza2ItPmRhdGEsIDAsIHdtc2dfbGVuKTsNCiAJaGlmX21zZyA9IChz
dHJ1Y3QgaGlmX21zZyAqKSBza2ItPmRhdGE7DQogCWhpZl9tc2ctPmxlbiA9IGNwdV90b19sZTE2
KHNrYi0+bGVuKTsNCi0JaGlmX21zZy0+aWQgPSBjcHVfdG9fbGUxNihISUZfUkVRX0lEX1RYKTsN
CisJaGlmX21zZy0+aWQgPSBISUZfUkVRX0lEX1RYOw0KIAloaWZfbXNnLT5pbnRlcmZhY2UgPSB3
dmlmLT5pZDsNCiAJaWYgKHNrYi0+bGVuID4gd3ZpZi0+d2Rldi0+aHdfY2Fwcy5zaXplX2lucF9j
aF9idWYpIHsNCiAJCWRldl93YXJuKHd2aWYtPndkZXYtPmRldiwgInJlcXVlc3RlZCBmcmFtZSBz
aXplICglZCkgaXMgbGFyZ2VyIHRoYW4gbWF4aW11bSBzdXBwb3J0ZWQgKCVkKVxuIiwNCi0tIA0K
Mi4yMC4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
