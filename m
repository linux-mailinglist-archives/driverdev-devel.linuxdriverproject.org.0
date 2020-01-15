Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D9BC13C402
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:56:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 190678670F;
	Wed, 15 Jan 2020 13:55:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3+JPzoiKcgcF; Wed, 15 Jan 2020 13:55:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76521864C5;
	Wed, 15 Jan 2020 13:55:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC7C81BF573
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B5A5B840B8
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:55:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MkR6N4OlXqUx for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:55:24 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770072.outbound.protection.outlook.com [40.107.77.72])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B84AB84076
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:55:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A89kW6f8H4kKYTvWn2p6NT1TbgdqwUIQ4MpCxwvyB0Pb9rkeftL+uh6iIGPiwaoaYr3cFBjEywecrVikPzH6aTPYCHYpvPqtgLxXFaAYIBQbf/8LDO/78wuOrhUf8K+dRCvbsbSrfpdLGEukKg9y8mutPRrq43Y4H2UhzpoBypCwOmDw8wpv5ysIZxPPoKBWrCmr2KazSk/SHsPxIZ6RzNJ+wMv0wNTbv41x73od57JcJD/eyNdHkFhJ3+GKEbW/MInhwh5Rwzd3vFlHXQCFKkpIB6nyURv6k9nYH49ZlxZWtksZF6sQT6UO7vj4/tA4GYI0G9NQfy9yNiJAeGn9KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4OQhlUt+sYJ/eiAbIL8ycTks4MYvs5U6ohNWOamkvK4=;
 b=hZssF4Ty2nuS1TnB/wpEYiJh8+BAZR52/JAFbq9m5E84jcMzfc4OLKqdetAQerSFZoORNM3t/deFo46g1JcxcbMq2utoa+CNmdZukxt7BkQY1bSkxQFEvhKadcIDg+BgruAQ6azgjXuEcSuXGZ/QMljOzqsk8MmVUfcRv9UQB5UyfxhZcVrjRvYQrGkCUL4zV3ZZ/RBNZU0T6PcVB7ny1PoaHK3lDZiYxT1rpJrRd3GYRQWSZeinEjKDMlSiq9eBl1o+dQOiCSq7R4mScslvm+05ziOiFLnpt+YlkfQRvkzSyHzB3YmiqtoInnlTXj8YFDlyEKwJUWrfavcE+TxVsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4OQhlUt+sYJ/eiAbIL8ycTks4MYvs5U6ohNWOamkvK4=;
 b=oPrEHeWy6js7Y7KxPJObYzHEAWLcJZGJwu92xrTRsx1OrrOugHOIwH3KycEn7/NaC9SKVIbI5AxcI6JH+f31IwdXJsi+KTEbeQQ9yoQ4N+9MUAFTu628T/c/9pFIoOTi45A1kZb1Qmg1U56VdQ/xWUpfA6n1lo8r6dc+Uc8q9LA=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3661.namprd11.prod.outlook.com (20.178.252.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 15 Jan 2020 13:55:23 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:55:23 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:55:05 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 44/65] staging: wfx: fix possible overflow on jiffies
 comparaison
Thread-Topic: [PATCH v2 44/65] staging: wfx: fix possible overflow on jiffies
 comparaison
Thread-Index: AQHVy6tknNoFdeHsHUyntutLYMezLg==
Date: Wed, 15 Jan 2020 13:55:06 +0000
Message-ID: <20200115135338.14374-45-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 67ef5be2-7b05-4e35-5561-08d799c2871d
x-ms-traffictypediagnostic: MN2PR11MB3661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB36614D2BC18BB3E784A86C6A93370@MN2PR11MB3661.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1332;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(136003)(346002)(366004)(199004)(189003)(8886007)(6486002)(316002)(54906003)(71200400001)(36756003)(6506007)(66476007)(66446008)(66946007)(110136005)(8676002)(81166006)(81156014)(478600001)(86362001)(2616005)(4326008)(66574012)(2906002)(107886003)(1076003)(16526019)(186003)(85202003)(5660300002)(6512007)(52116002)(64756008)(66556008)(85182001)(8936002)(16251815004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3661;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wbbuqLrOGE6C0JRBBhkr2yot0I3HShDupjfYTAv1NrHrcuvGz3h3II8tgzFRtozkV2i5bhgBBGwNqRn05fVdsg6/+nSH+1r87ZoEcGiGABt815E9F/O4QMRoZxlgls6gvdvZgsEcuGSXSUz+oXzBG2vHg0VFse6lCL92GSabrtDgUN9ePto2OJ6bKFzEqM6BQfFEmwcQLsNODlUWQ52NbhDAA7AKQZ/KB1ZO6LaPjDte6Khd+zsbqBqTkd/MeFZn22HxtL4MpputTDlTfsvuLgeqvUfGnT9NtQMlZlPecz1taorx2N2CI8N8ALQ601BuZForV0Ep+b6owjD2lshK7Qtl3V1utsqjFo8baaBCZNoZrTxDR+Jpl5iYpkohR5xTGuLkBNxvoehsNgSP+vGSytW86pgOOvPtHoo2HS4dQvjf5VFGs0UQf+b1o/UOVZEgLxfJFUXrzMM+vYfvaM32MzRQvMWCbwjAcoMlVghiZxWcQT4nP/YFAKhHUKJD17/j
Content-ID: <CA60FDC796C9FB46B21097576C37F471@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67ef5be2-7b05-4e35-5561-08d799c2871d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:55:06.7445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pXmP9f6DFfSvv+D3HRVAsVu3EMS9YAwv9twNNL2W3AtUtPw6+JAd0Jy9w7ilVCHPUanEwCZ8zyRTGGpUD73Sww==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKTUlN
RS1WZXJzaW9uOiAxLjAKQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PVVURi04CkNv
bnRlbnQtVHJhbnNmZXItRW5jb2Rpbmc6IDhiaXQKCkl0IGlzIHJlY29tbWVuZGVkIHRvIHVzZSBm
dW5jdGlvbiB0aW1lXyooKSB0byBjb21wYXJlIGppZmZpZXMuCgpTaWduZWQtb2ZmLWJ5OiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9z
dGFnaW5nL3dmeC9kYXRhX3R4LmMgfCAxNCArKysrKy0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDUgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvd2Z4L2RhdGFfdHguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCmluZGV4
IDYwNDU5Mjk5YTNhOS4uNzA0ZWJmZTFjZDA1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2RhdGFfdHguYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYwpAQCAtMjcw
LDggKzI3MCw3IEBAIHZvaWQgd2Z4X3R4X3BvbGljeV9pbml0KHN0cnVjdCB3ZnhfdmlmICp3dmlm
KQogc3RhdGljIGludCB3ZnhfYWxsb2NfbGlua19pZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29u
c3QgdTggKm1hYykKIHsKIAlpbnQgaSwgcmV0ID0gMDsKLQl1bnNpZ25lZCBsb25nIG1heF9pbmFj
dGl2aXR5ID0gMDsKLQl1bnNpZ25lZCBsb25nIG5vdyA9IGppZmZpZXM7CisJdW5zaWduZWQgbG9u
ZyBvbGRlc3Q7CiAKIAlzcGluX2xvY2tfYmgoJnd2aWYtPnBzX3N0YXRlX2xvY2spOwogCWZvciAo
aSA9IDA7IGkgPCBXRlhfTUFYX1NUQV9JTl9BUF9NT0RFOyArK2kpIHsKQEAgLTI4MCwxMyArMjc5
LDEwIEBAIHN0YXRpYyBpbnQgd2Z4X2FsbG9jX2xpbmtfaWQoc3RydWN0IHdmeF92aWYgKnd2aWYs
IGNvbnN0IHU4ICptYWMpCiAJCQlicmVhazsKIAkJfSBlbHNlIGlmICh3dmlmLT5saW5rX2lkX2Ri
W2ldLnN0YXR1cyAhPSBXRlhfTElOS19IQVJEICYmCiAJCQkgICAhd3ZpZi0+d2Rldi0+dHhfcXVl
dWVfc3RhdHMubGlua19tYXBfY2FjaGVbaSArIDFdKSB7Ci0JCQl1bnNpZ25lZCBsb25nIGluYWN0
aXZpdHkgPQotCQkJCW5vdyAtIHd2aWYtPmxpbmtfaWRfZGJbaV0udGltZXN0YW1wOwotCi0JCQlp
ZiAoaW5hY3Rpdml0eSA8IG1heF9pbmFjdGl2aXR5KQotCQkJCWNvbnRpbnVlOwotCQkJbWF4X2lu
YWN0aXZpdHkgPSBpbmFjdGl2aXR5OwotCQkJcmV0ID0gaSArIDE7CisJCQlpZiAoIXJldCB8fCB0
aW1lX2FmdGVyKG9sZGVzdCwgd3ZpZi0+bGlua19pZF9kYltpXS50aW1lc3RhbXApKSB7CisJCQkJ
b2xkZXN0ID0gd3ZpZi0+bGlua19pZF9kYltpXS50aW1lc3RhbXA7CisJCQkJcmV0ID0gaSArIDE7
CisJCQl9CiAJCX0KIAl9CiAKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
