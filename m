Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1CE1211F6
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Dec 2019 18:40:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B257A86966;
	Mon, 16 Dec 2019 17:40:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tvq2mAP8iZkA; Mon, 16 Dec 2019 17:40:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DAE0186943;
	Mon, 16 Dec 2019 17:40:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B6E081BF40E
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:40:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A163886937
 for <devel@linuxdriverproject.org>; Mon, 16 Dec 2019 17:40:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zbkfabm7XAyM for <devel@linuxdriverproject.org>;
 Mon, 16 Dec 2019 17:40:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr700048.outbound.protection.outlook.com [40.107.70.48])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 398DC86936
 for <devel@driverdev.osuosl.org>; Mon, 16 Dec 2019 17:40:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N4MRK/p+vggI0XSBfcbZ6R2bSeyiDW63j2E9hlH/Gc1JhJFD3HXh5lXtM+FjEPxkMxdgs4+ItTzN2Tk2Bn6UdG3XXxoxGQLmJgnP8qBBR4/B4wJugqEhHminu3WqxmZ1Hu61TdLnAHGvNimGx2+HHkOBRnUDk+VkVVu1bwoKXkxH/VagMvMm9JH4AbMlbFAIn9kXNexOQy57XDe7cn8jobESEZ7y7sWe+9FlZ+w0MYGWMrtn24mnDdrfBcPcNun67cvnd08R4MIc+j0s3L1DHseQyWv0KR4BqGFsmxsuLlHqUjd0SWzzZwrptd5VTCtkQEpYjreiGoBlhQuvlimOXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XBmTF54IXQismnM9J8cO9ubA617V2LGtGi2MGRDTsno=;
 b=fTAdnH806nKRP4//9K7VTAKPXHk95JSEK4UOIWKfuiYn7BtP/JOS9ePdI5Rq4Cxylsxk+YTiVZRwFC+A2J/e2CPzzTHYY9fsoYsDRxqce9fEqC/yC8xjRtFyVabeaURUuzGCJr9lo03aIWtxaAsS1ejmknmtc1ucKxFTcsYpu6cUABV2I8iuJo3i386iMlHaiDhJ6xiWE5kWS/jFaZMc8Y+maVf6zcqIZNVeaE3icOZgigbOTyDaNpiYwTwMDgrIjn8+coQfqQZxDl8QeyMfUfUZO8GdtcbXlNYtLe/4uYi14kfiuRPxnqDpcK/1SeBxV90gYPADBSN9P0MfpU8dwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XBmTF54IXQismnM9J8cO9ubA617V2LGtGi2MGRDTsno=;
 b=BnTYjfbgOhPJhiASZ5UDBswKV/ItZbvLrq+UB5lafXk4dGDVmpgOP9eCBl1s1VhukmLZ8OdGoGSUNwuq/f6hNXwtGt1GOEJkQQpz1zxkn8RORRVy8owRPxO+3DPwodROlqRIuCXkER8y/Ry/K/9yLnURKtpopoVPUFV32nx+ehM=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4445.namprd11.prod.outlook.com (52.135.37.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Mon, 16 Dec 2019 17:06:49 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 17:06:49 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 51/55] staging: wfx: workaround bug with "iw scan"
Thread-Topic: [PATCH 51/55] staging: wfx: workaround bug with "iw scan"
Thread-Index: AQHVtDLPeVDVbzcyeU22pDnDrXDn9A==
Date: Mon, 16 Dec 2019 17:03:59 +0000
Message-ID: <20191216170302.29543-52-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 18e2aae6-1ef3-45ed-2313-08d7824a571e
x-ms-traffictypediagnostic: MN2PR11MB4445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB44451A18B7A2A6E29636A74193510@MN2PR11MB4445.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(39850400004)(396003)(136003)(189003)(199004)(110136005)(6486002)(107886003)(36756003)(186003)(316002)(66946007)(54906003)(5660300002)(66574012)(66446008)(66556008)(85182001)(66476007)(76116006)(91956017)(64756008)(2616005)(6506007)(85202003)(2906002)(26005)(71200400001)(6512007)(4326008)(8936002)(81166006)(1076003)(478600001)(86362001)(81156014)(6666004)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4445;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z0xeBTeg+Rz5B2T5TuONgJKpiu/sljm/mS0jKnc8/Uhqo7jr200RL+68WyDHik025SmBeV2o3YWDEuVkPejHeLsPDRk36RlaHNV3tEqTR34XTxLunczw5J7WPagpyjkKUn6sv3CuJFREpZzE2jtRUFQO8ocW4dtgPndhhKmvtyNMMD+YrEC7450dpotggMIUmYSFSk4Qv0c4/eLN0aofgViysZ7y5SSykefKQihxMR7lGCZrIQNFpQcdVcBT4jv9JLXpmreLO9vieiFOBlwlMeFju9e/m8PgQfgjbdUF5VUO6t2IxalEcB3CyxevVfzGG6Uq03viUxudfFg35nQDpfx7pVBOMgi7EEdMo5rVHb9Wwjo1bYB6w0si2i/+GnZ3lhjf8ByWhG5S6cT6p0Nplwn+WNG0MKk70bhBlt+v6gdroNbhjdMLYfqDs1X2pNdF
Content-ID: <45C1EA37BD8C434482D2028C9998FC5B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18e2aae6-1ef3-45ed-2313-08d7824a571e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 17:03:59.4502 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Un5D3uwThHU9cGtznZaQqt0jYxcpSglNbq1Sz78NgFrVxVmf+tZQDriLB/c6Efn+PY1wGJrgSrumQeezYFE5Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4445
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpt
YWM4MDIxMSBzcGVjaWZpY2F0aW9uIGRvZXMgbm90IGZvcmJpZCBod19zY2FuKCkgdG8gY2FsbA0K
aWVlZTgwMjExX3NjYW5fY29tcGxldGVkKCkuIEhvd2V2ZXIsIGZyb20gdXNlcnNwYWNlIHBvaW50
IG9mIHZpZXcsIG5vdA0KYWxsIGFwcGxpY2F0aW9ucyBzdXBwb3J0IHRoaXMgYmVoYXZpb3IuIElu
IHBhcnRpY3VsYXIsIHRoZSBjb2RlIG9mIGl3DQpjb250YWlucyBhIGJpZyBmYXQgd2FybmluZzoN
Cg0KICAgLyoNCiAgICAqIFRoaXMgY29kZSBoYXMgYSBidWcsIHdoaWNoIHJlcXVpcmVzIGNyZWF0
aW5nIGEgc2VwYXJhdGUNCiAgICAqIG5sODAyMTEgc29ja2V0IHRvIGZpeDoNCiAgICAqIEl0IGlz
IHBvc3NpYmxlIGZvciBhIE5MODAyMTFfQ01EX05FV19TQ0FOX1JFU1VMVFMgb3INCiAgICAqIE5M
ODAyMTFfQ01EX1NDQU5fQUJPUlRFRCBtZXNzYWdlIHRvIGJlIHNlbnQgYnkgdGhlIGtlcm5lbA0K
ICAgICogYmVmb3JlICghKSB3ZSBsaXN0ZW4gdG8gaXQsIGJlY2F1c2Ugd2Ugb25seSBzdGFydCBs
aXN0ZW5pbmcNCiAgICAqIGFmdGVyIHdlIHNlbmQgb3VyIHNjYW4gcmVxdWVzdC4NCiAgICBbLi4u
XQ0KICAgICogQWxhcywgdGhlIGtlcm5lbCBkb2Vzbid0IGRvIHRoYXQgKHlldCkuDQogICAgKi8N
Cg0KU28sIHdlIGhhdmUgdG8gYXZvaWQgdG8gY2FsbCBpZWVlODAyMTFfc2Nhbl9jb21wbGV0ZWQo
KSBmcm9tIGh3X3NjYW4oKQ0KKGl0J3MgYSBraW5kIG9mIHVud3JpdHRlbiBydWxlKS4NCg0KVGhp
cyBwYXRjaCByZWxvY2F0ZXMgdGhlIGh3X3NjYW4oKSBwcm9jZXNzIHRvIGEgd29ya19zdHJ1Y3Qg
dG8gZml4IHRoZQ0KcHJvYmxlbS4NCg0KU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIg
PGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KLS0tDQogZHJpdmVycy9zdGFnaW5nL3dmeC9z
Y2FuLmMgfCA0NyArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQ0KIGRyaXZl
cnMvc3RhZ2luZy93Zngvc2Nhbi5oIHwgIDEgKw0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMg
IHwgIDEgKw0KIGRyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggIHwgIDIgKysNCiA0IGZpbGVzIGNo
YW5nZWQsIDM0IGluc2VydGlvbnMoKyksIDE3IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9zY2FuLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uYw0K
aW5kZXggYjczZTYxZThkYTQ2Li41NDAwMDliNzIyNDAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3NjYW4uYw0KKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zY2FuLmMNCkBAIC03
MSwyMyArNzEsMTkgQEAgc3RhdGljIGludCBzZW5kX3NjYW5fcmVxKHN0cnVjdCB3ZnhfdmlmICp3
dmlmLA0KIAlyZXR1cm4gaSAtIHN0YXJ0X2lkeDsNCiB9DQogDQotaW50IHdmeF9od19zY2FuKHN0
cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmLA0KLQkJc3Ry
dWN0IGllZWU4MDIxMV9zY2FuX3JlcXVlc3QgKmh3X3JlcSkNCisvKg0KKyAqIEl0IGlzIG5vdCBy
ZWFsbHkgbmVjZXNzYXJ5IHRvIHJ1biBzY2FuIHJlcXVlc3QgYXN5bmNocm9ub3VzbHkuIEhvd2V2
ZXIsDQorICogdGhlcmUgaXMgYSBidWcgaW4gIml3IHNjYW4iIHdoZW4gaWVlZTgwMjExX3NjYW5f
Y29tcGxldGVkKCkgaXMgY2FsbGVkIGJlZm9yZQ0KKyAqIHdmeF9od19zY2FuKCkgcmV0dXJuDQor
ICovDQordm9pZCB3ZnhfaHdfc2Nhbl93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCiB7
DQotCXN0cnVjdCB3ZnhfZGV2ICp3ZGV2ID0gaHctPnByaXY7DQotCXN0cnVjdCB3ZnhfdmlmICp3
dmlmID0gKHN0cnVjdCB3ZnhfdmlmICopIHZpZi0+ZHJ2X3ByaXY7DQorCXN0cnVjdCB3Znhfdmlm
ICp3dmlmID0gY29udGFpbmVyX29mKHdvcmssIHN0cnVjdCB3ZnhfdmlmLCBzY2FuX3dvcmspOw0K
KwlzdHJ1Y3QgaWVlZTgwMjExX3NjYW5fcmVxdWVzdCAqaHdfcmVxID0gd3ZpZi0+c2Nhbl9yZXE7
DQogCWludCBjaGFuX2N1ciwgcmV0Ow0KIA0KLQlXQVJOX09OKGh3X3JlcS0+cmVxLm5fY2hhbm5l
bHMgPiBISUZfQVBJX01BWF9OQl9DSEFOTkVMUyk7DQotDQotCWlmICh2aWYtPnR5cGUgPT0gTkw4
MDIxMV9JRlRZUEVfQVApDQotCQlyZXR1cm4gLUVPUE5PVFNVUFA7DQotDQotCWlmICh3dmlmLT5z
dGF0ZSA9PSBXRlhfU1RBVEVfUFJFX1NUQSkNCi0JCXJldHVybiAtRUJVU1k7DQotDQogCW11dGV4
X2xvY2soJnd2aWYtPnNjYW5fbG9jayk7DQotCW11dGV4X2xvY2soJndkZXYtPmNvbmZfbXV0ZXgp
Ow0KKwltdXRleF9sb2NrKCZ3dmlmLT53ZGV2LT5jb25mX211dGV4KTsNCiAJdXBkYXRlX3Byb2Jl
X3RtcGwod3ZpZiwgJmh3X3JlcS0+cmVxKTsNCiAJd2Z4X2Z3ZF9wcm9iZV9yZXEod3ZpZiwgdHJ1
ZSk7DQogCWNoYW5fY3VyID0gMDsNCkBAIC05NiwxOCArOTIsMzUgQEAgaW50IHdmeF9od19zY2Fu
KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmLA0KIAkJ
aWYgKHJldCA+IDApDQogCQkJY2hhbl9jdXIgKz0gcmV0Ow0KIAl9IHdoaWxlIChyZXQgPiAwICYm
IGNoYW5fY3VyIDwgaHdfcmVxLT5yZXEubl9jaGFubmVscyk7DQotCV9faWVlZTgwMjExX3NjYW5f
Y29tcGxldGVkX2NvbXBhdChodywgcmV0IDwgMCk7DQotCW11dGV4X3VubG9jaygmd2Rldi0+Y29u
Zl9tdXRleCk7DQorCW11dGV4X3VubG9jaygmd3ZpZi0+d2Rldi0+Y29uZl9tdXRleCk7DQogCW11
dGV4X3VubG9jaygmd3ZpZi0+c2Nhbl9sb2NrKTsNCisJX19pZWVlODAyMTFfc2Nhbl9jb21wbGV0
ZWRfY29tcGF0KHd2aWYtPndkZXYtPmh3LCByZXQgPCAwKTsNCiAJaWYgKHd2aWYtPmRlbGF5ZWRf
dW5qb2luKSB7DQogCQl3dmlmLT5kZWxheWVkX3Vuam9pbiA9IGZhbHNlOw0KLQkJd2Z4X3R4X2xv
Y2sod2Rldik7DQorCQl3ZnhfdHhfbG9jayh3dmlmLT53ZGV2KTsNCiAJCWlmICghc2NoZWR1bGVf
d29yaygmd3ZpZi0+dW5qb2luX3dvcmspKQ0KLQkJCXdmeF90eF91bmxvY2sod2Rldik7DQorCQkJ
d2Z4X3R4X3VubG9jayh3dmlmLT53ZGV2KTsNCiAJfSBlbHNlIGlmICh3dmlmLT5kZWxheWVkX2xp
bmtfbG9zcykgew0KIAkJd3ZpZi0+ZGVsYXllZF9saW5rX2xvc3MgPSBmYWxzZTsNCiAJCXdmeF9j
cW1fYnNzbG9zc19zbSh3dmlmLCAxLCAwLCAwKTsNCiAJfQ0KK30NCisNCitpbnQgd2Z4X2h3X3Nj
YW4oc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsDQor
CQlzdHJ1Y3QgaWVlZTgwMjExX3NjYW5fcmVxdWVzdCAqaHdfcmVxKQ0KK3sNCisJc3RydWN0IHdm
eF92aWYgKnd2aWYgPSAoc3RydWN0IHdmeF92aWYgKil2aWYtPmRydl9wcml2Ow0KKw0KKwlXQVJO
X09OKGh3X3JlcS0+cmVxLm5fY2hhbm5lbHMgPiBISUZfQVBJX01BWF9OQl9DSEFOTkVMUyk7DQor
DQorCWlmICh2aWYtPnR5cGUgPT0gTkw4MDIxMV9JRlRZUEVfQVApDQorCQlyZXR1cm4gLUVPUE5P
VFNVUFA7DQorDQorCWlmICh3dmlmLT5zdGF0ZSA9PSBXRlhfU1RBVEVfUFJFX1NUQSkNCisJCXJl
dHVybiAtRUJVU1k7DQorDQorCXd2aWYtPnNjYW5fcmVxID0gaHdfcmVxOw0KKwlzY2hlZHVsZV93
b3JrKCZ3dmlmLT5zY2FuX3dvcmspOw0KIAlyZXR1cm4gMDsNCiB9DQogDQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9zY2FuLmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uaA0K
aW5kZXggMDNiYzZjN2U1NjJkLi5iNTQ3ZjE5MjdkNzIgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3NjYW4uaA0KKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zY2FuLmgNCkBAIC0x
NSw2ICsxNSw3IEBADQogc3RydWN0IHdmeF9kZXY7DQogc3RydWN0IHdmeF92aWY7DQogDQordm9p
ZCB3ZnhfaHdfc2Nhbl93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yayk7DQogaW50IHdmeF9o
d19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlm
LA0KIAkJc3RydWN0IGllZWU4MDIxMV9zY2FuX3JlcXVlc3QgKnJlcSk7DQogdm9pZCB3Znhfc2Nh
bl9jb21wbGV0ZShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwNCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3N0YS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYw0KaW5kZXggMTZmNWRi
ODczMjc1Li40MzU0YmI4MDgxYzUgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0
YS5jDQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jDQpAQCAtMTQyNyw2ICsxNDI3LDcg
QEAgaW50IHdmeF9hZGRfaW50ZXJmYWNlKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3Qg
aWVlZTgwMjExX3ZpZiAqdmlmKQ0KIA0KIAltdXRleF9pbml0KCZ3dmlmLT5zY2FuX2xvY2spOw0K
IAlpbml0X2NvbXBsZXRpb24oJnd2aWYtPnNjYW5fY29tcGxldGUpOw0KKwlJTklUX1dPUksoJnd2
aWYtPnNjYW5fd29yaywgd2Z4X2h3X3NjYW5fd29yayk7DQogDQogCW11dGV4X3VubG9jaygmd2Rl
di0+Y29uZl9tdXRleCk7DQogDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC93Zngu
aCBiL2RyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmgNCmluZGV4IDMzNTZkMGNiZjdhZi4uYjVmNzYz
YzNmYWM3IDEwMDY0NA0KLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaA0KKysrIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC93ZnguaA0KQEAgLTEyNyw3ICsxMjcsOSBAQCBzdHJ1Y3Qgd2Z4X3Zp
ZiB7DQogDQogCS8qIGF2b2lkIHNvbWUgb3BlcmF0aW9ucyBpbiBwYXJhbGxlbCB3aXRoIHNjYW4g
Ki8NCiAJc3RydWN0IG11dGV4CQlzY2FuX2xvY2s7DQorCXN0cnVjdCB3b3JrX3N0cnVjdAlzY2Fu
X3dvcms7DQogCXN0cnVjdCBjb21wbGV0aW9uCXNjYW5fY29tcGxldGU7DQorCXN0cnVjdCBpZWVl
ODAyMTFfc2Nhbl9yZXF1ZXN0ICpzY2FuX3JlcTsNCiANCiAJc3RydWN0IGNvbXBsZXRpb24Jc2V0
X3BtX21vZGVfY29tcGxldGU7DQogDQotLSANCjIuMjAuMQ0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
