Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31D613C0FC
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:30:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2ECE087AFA;
	Wed, 15 Jan 2020 12:30:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qTgtUxG-hLk1; Wed, 15 Jan 2020 12:30:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E9D0C87ACE;
	Wed, 15 Jan 2020 12:29:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBE0F1BF5A0
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D24CF87A96
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:29:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6B8wwdPdH5Ok for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:29:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2053.outbound.protection.outlook.com [40.107.220.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA09587A52
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 12:29:48 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IVwvLh6+UjY6cNClOasG3tk5BZNz/P1XTQ/aDl42WJKG8cZitL7/d2XoTbq3NvH5sD8tjrcaREZ6/U0npt5kzJSsvinQLF011pUmNACdT33kGnX0cUEzbjQZFXvulY2PyXqMWpqmydFch4qB4AEmF7I0PrghXElxnEuuNq8ybpoXd1a9DjA+gmAjMYqGk6jZAfLg9eOoLTDgOzq8ffCQvDsVxQ+O3h7vu4jFesVTZKlLOE3yfNKSZVkLmeabtKzQ6w0wcJ1PWw4xPs5rsRABP7/Bsmrj5daD8mOopWcU0UkN7Aj7RvKmL/AfXQ0QRt+2ctl+thvHbVFnvfoOtThHiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ro9I2rSIp0iul/hKKxPII0gO0+PaKdaAxCdGr0ktzNc=;
 b=TCozFyTEuKF5pjoefDduA/ntQCK2+2zS/EjnVIV4st0m3D1lTNOLFh7MWXTXtIuCpEo5R/bU5j1oW38sIDZUaIo5y+zZOuhfyEJahjBdp25PPg67baJ74tGiK60ArqfTsrMSEgbvy4x7uo4DYcsYnzPPaguNxZXy8yFjamVufiSlZwuBijLiLnJGlWRXTrjbBijzogrfkCpGH6zMw6cVjSD3Lw/7t5/JlAD6BYObvcvFAGoCncdVaDEH2K/bVImtG1bXx5RQGjegncaOi7FoShGlR3ZXwdvoJ9BtNbL3sBsLkvUQrXek3hk/ZPZJUyAgwlTR2t5mypa0TihmJWTnhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ro9I2rSIp0iul/hKKxPII0gO0+PaKdaAxCdGr0ktzNc=;
 b=JlEOMjuE6h/f+n6NbKKGSw95/1ikg0tn1pO/1x0Q3vf7OzTojSMlwXA9syshGN9AOWWJCxFLTeJ45WSCdV8CjCYFWut4Qig+loj0h++sGCG8zlGeB1vxfDebIRKn6DpDzr8RVWW+E3Cid/3XPPrxlGo5/s0BgbfQiyIcayn0Qso=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3934.namprd11.prod.outlook.com (10.255.180.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Wed, 15 Jan 2020 12:14:10 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 12:14:10 +0000
Received: from pc-42.silabs.com (37.71.187.125) by
 PR2PR09CA0009.eurprd09.prod.outlook.com (2603:10a6:101:16::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 12:13:32 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 63/65] staging: wfx: simplify wfx_tx_queue_get_num_queued()
Thread-Topic: [PATCH 63/65] staging: wfx: simplify
 wfx_tx_queue_get_num_queued()
Thread-Index: AQHVy500cBdLiMxjj0yOc+OxlTaMWQ==
Date: Wed, 15 Jan 2020 12:13:33 +0000
Message-ID: <20200115121041.10863-64-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: bd7060b7-2ef7-40db-cefb-08d799b4574a
x-ms-traffictypediagnostic: MN2PR11MB3934:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB39349ED44FAB26E560E02E6693370@MN2PR11MB3934.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(396003)(136003)(376002)(366004)(346002)(199004)(189003)(54906003)(110136005)(86362001)(956004)(107886003)(2616005)(316002)(36756003)(71200400001)(52116002)(7696005)(478600001)(8936002)(81156014)(8676002)(4326008)(81166006)(6486002)(2906002)(26005)(66946007)(16526019)(186003)(5660300002)(66574012)(1076003)(66556008)(64756008)(66446008)(85182001)(66476007)(85202003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3934;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: H5Vac0nH6cbXeksLaV+Bn2jae/g+nU8b9jrVNjNRfQNnfehvvNeP1fFfF90+pjegiuH1o9EUgxaT6U4E2CeJUExYHuONVuT9cbLmmoQufPdDrq+aZITEX7BVVHyaWP/uWGiNf2L5YCSRvhJbaNI9D/9oYOtG6EbZj3NfgeupX0ThcwiqDXURJu1TjTqgnQjHLp3Wr6RJFpx6F1Vw0Sa51IGGQTX+7KztEaDJKaIbmmm+ZjGNldSLwHXU4Dx8WoyeWykbWkWAI0QHBmbhVaqSBEJJDUNtUxOIJrOQ9hN9RU+3wjeG/E8d1Nmo2OdatdpDA5ll7jJoEj41eT3G4ccaz30TFiU9bstDMbUN+/+PYKXy1jbPNuTnwa8TvRBHVVa5WgFhjV6vhbZKg7ToNhp7UUShbz9SYi+UuJubwGXJpKRddZYEkmXR8l1QN6wKLVQS
Content-ID: <97CF986C7242434BA321724AE2F96DFA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd7060b7-2ef7-40db-cefb-08d799b4574a
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 12:13:33.5806 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 43jk542TTATfS4nuBvrD2lBhNm6HzBBpJYrrEY6+XJiRarXMPBPS8r+ix5A7y6j8OxO9IhS76MPEp8G/IIOQhA==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKd2Z4
X3R4X3F1ZXVlX2dldF9udW1fcXVldWVkKCkgY2FuIHRha2UgYWR2YW50YWdlIG9mIEJJVCgpIGlu
c3RlYWQgb2YKbWFpbnRhaW5pbmcgb25lIHZhcmlhYmxlIGZvciBhIGNvdW50ZXIgYW5kIGFub3Ro
ZXIgZm9yIGEgbWFzay4KCkluIGFkZCwgd2Z4X3R4X3F1ZXVlX2dldF9udW1fcXVldWVkKCkgaGFz
IG5vIHJlYWwgcmVhc29uIHRvIHJldHVybiBhCnNpemVfdCBpbnN0ZWFkIG9mIGFuIGludC4KClNp
Z25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNv
bT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMgfCAxNCArKysrKy0tLS0tLS0tLQog
ZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5oIHwgIDIgKy0KIDIgZmlsZXMgY2hhbmdlZCwgNiBp
bnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvd2Z4L3F1ZXVlLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMKaW5kZXggMDI0NDk3
ZWIxOWFjLi4wYmNjNjFmZWVlMWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVl
dWUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMKQEAgLTE3NSwxMSArMTc1LDkg
QEAgdm9pZCB3ZnhfdHhfcXVldWVzX2RlaW5pdChzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKIAl3Znhf
dHhfcXVldWVzX2NsZWFyKHdkZXYpOwogfQogCi1zaXplX3Qgd2Z4X3R4X3F1ZXVlX2dldF9udW1f
cXVldWVkKHN0cnVjdCB3ZnhfcXVldWUgKnF1ZXVlLAotCQkJCSAgIHUzMiBsaW5rX2lkX21hcCkK
K2ludCB3ZnhfdHhfcXVldWVfZ2V0X251bV9xdWV1ZWQoc3RydWN0IHdmeF9xdWV1ZSAqcXVldWUs
IHUzMiBsaW5rX2lkX21hcCkKIHsKLQlzaXplX3QgcmV0OwotCWludCBpLCBiaXQ7CisJaW50IHJl
dCwgaTsKIAogCWlmICghbGlua19pZF9tYXApCiAJCXJldHVybiAwOwpAQCAtMTg5LDExICsxODcs
OSBAQCBzaXplX3Qgd2Z4X3R4X3F1ZXVlX2dldF9udW1fcXVldWVkKHN0cnVjdCB3ZnhfcXVldWUg
KnF1ZXVlLAogCQlyZXQgPSBza2JfcXVldWVfbGVuKCZxdWV1ZS0+cXVldWUpOwogCX0gZWxzZSB7
CiAJCXJldCA9IDA7Ci0JCWZvciAoaSA9IDAsIGJpdCA9IDE7IGkgPCBBUlJBWV9TSVpFKHF1ZXVl
LT5saW5rX21hcF9jYWNoZSk7Ci0JCSAgICAgKytpLCBiaXQgPDw9IDEpIHsKLQkJCWlmIChsaW5r
X2lkX21hcCAmIGJpdCkKKwkJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUocXVldWUtPmxpbmtf
bWFwX2NhY2hlKTsgaSsrKQorCQkJaWYgKGxpbmtfaWRfbWFwICYgQklUKGkpKQogCQkJCXJldCAr
PSBxdWV1ZS0+bGlua19tYXBfY2FjaGVbaV07Ci0JCX0KIAl9CiAJc3Bpbl91bmxvY2tfYmgoJnF1
ZXVlLT5xdWV1ZS5sb2NrKTsKIAlyZXR1cm4gcmV0OwpAQCAtNTU1LDcgKzU1MSw3IEBAIHN0cnVj
dCBoaWZfbXNnICp3ZnhfdHhfcXVldWVzX2dldChzdHJ1Y3Qgd2Z4X2RldiAqd2RldikKIAogCQkv
KiBhbGxvdyBidXJzdGluZyBpZiB0eG9wIGlzIHNldCAqLwogCQlpZiAod3ZpZi0+ZWRjYV9wYXJh
bXNbcXVldWVfbnVtXS50eG9wKQotCQkJYnVyc3QgPSAoaW50KXdmeF90eF9xdWV1ZV9nZXRfbnVt
X3F1ZXVlZChxdWV1ZSwgdHhfYWxsb3dlZF9tYXNrKSArIDE7CisJCQlidXJzdCA9IHdmeF90eF9x
dWV1ZV9nZXRfbnVtX3F1ZXVlZChxdWV1ZSwgdHhfYWxsb3dlZF9tYXNrKSArIDE7CiAJCWVsc2UK
IAkJCWJ1cnN0ID0gMTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5o
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5oCmluZGV4IDA5NmFlODYxMzVjYy4uOTBiYjA2
MGQxMjA0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmgKKysrIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9xdWV1ZS5oCkBAIC01MSw3ICs1MSw3IEBAIHN0cnVjdCBoaWZfbXNn
ICp3ZnhfdHhfcXVldWVzX2dldF9hZnRlcl9kdGltKHN0cnVjdCB3ZnhfdmlmICp3dmlmKTsKIAog
dm9pZCB3ZnhfdHhfcXVldWVfcHV0KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3Qgd2Z4X3F1
ZXVlICpxdWV1ZSwKIAkJICAgICAgc3RydWN0IHNrX2J1ZmYgKnNrYik7Ci1zaXplX3Qgd2Z4X3R4
X3F1ZXVlX2dldF9udW1fcXVldWVkKHN0cnVjdCB3ZnhfcXVldWUgKnF1ZXVlLCB1MzIgbGlua19p
ZF9tYXApOworaW50IHdmeF90eF9xdWV1ZV9nZXRfbnVtX3F1ZXVlZChzdHJ1Y3Qgd2Z4X3F1ZXVl
ICpxdWV1ZSwgdTMyIGxpbmtfaWRfbWFwKTsKIAogc3RydWN0IHNrX2J1ZmYgKndmeF9wZW5kaW5n
X2dldChzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIHBhY2tldF9pZCk7CiBpbnQgd2Z4X3BlbmRp
bmdfcmVtb3ZlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiKTsKLS0g
CjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
