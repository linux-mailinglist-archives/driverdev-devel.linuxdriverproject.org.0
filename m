Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9F0CF6DC
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 12:17:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 57FF022668;
	Tue,  8 Oct 2019 10:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oj5KgjCCKyJC; Tue,  8 Oct 2019 10:17:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1BFDB2266F;
	Tue,  8 Oct 2019 10:17:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 284EB1BF857
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 254B087E43
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P91xxB+XQMdB for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 10:17:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690065.outbound.protection.outlook.com [40.107.69.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B46387E0B
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 10:17:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U5j1QZuvgoHi8eHs0ngKW6CkDYzsBtjQf0HfoDPdE5skpfDSN+zCuCuacBPogB3wbN4AOeyDjLoK4d+0JEmYsrAHEPhTMplMCnQi769yfRgR/SUOHoqj0MeFpm5m9hCCyEJGr0kR8xGQMggonMbLGVoLO+Kfn6Qw1iM/fGmZ1yIVWGHmjyLoHdsYkMTXIcOxXCzQ7TmtVnaSCW9iJ7nl3hgEE69h5fpeidXly+6MQrx9q+mJXgpMy/HHHQrCOH7ywmsSJyFM3HupTRueFxmw9343ujpQlnz+Iyw+ujC7W0l0fI/MoP4vX1TMlEV48oIuGE+mgV/PgwHnEc4GhFIc8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mnb/8aKmLzvjarGcDWtZvGBLV72KlXtGsp/K8NX4qFo=;
 b=ByaRLPl523dabQ8Y9hkr/vO8YyCkQs7E3Q/guW4l0aBLfiWBnh/uen12EFF3KlSmtCv2P3RWk8Y29yd5BK8ieqc1+AwrThfxycPhIXgIAUr+N+vJmSHgkR2WhyfHy6l1XQAqorxETC/Mx6UCfrK0BO3/iXqC/h3bpyAVByHil/Ot7Vvp7pGjFHan6WGInFu/vt1XsEDjRDY70v7Ec9jiZVTjSGDlMDUg7Xtw0jnvX6RhIMV8nS5i3XUy95lI3I+qgWzUtMWFU1fku2XSjQpUhfHZWCfHqLbmhQrawXiy6adejuCNEoLWBngvmD1YmwQ64XlFumP4IoX7L0GwceplFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mnb/8aKmLzvjarGcDWtZvGBLV72KlXtGsp/K8NX4qFo=;
 b=f6/UHCKqsv4JFiIF8/6fP8e3wCAEE7RXIOg/P1bkoL34ZB3J/l1UDlKl5jrUCCCPsECym1AOYrTw0JyxWqRXGED18rEtQfWYMtPMId5PUe0I/QmEK8dKe/qwupcapsMJylBwtBL7G78Tsr6lqGklcxoQ5L5RdMsimKo6NBrwJ9U=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4333.namprd11.prod.outlook.com (10.255.90.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 8 Oct 2019 09:43:02 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Tue, 8 Oct 2019
 09:43:02 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 5/7] staging: wfx: fix copy_{to,from}_user() usage
Thread-Topic: [PATCH 5/7] staging: wfx: fix copy_{to,from}_user() usage
Thread-Index: AQHVfbzFbsiwnHdwOkKbCmI6d62o4g==
Date: Tue, 8 Oct 2019 09:43:00 +0000
Message-ID: <20191008094232.10014-6-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 2861252f-6069-4020-7c06-08d74bd3e947
x-ms-traffictypediagnostic: MN2PR11MB4333:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB433381D194017A716D2E9892939A0@MN2PR11MB4333.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-forefront-prvs: 01842C458A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(396003)(366004)(346002)(39850400004)(199004)(189003)(54906003)(1076003)(6436002)(6512007)(5640700003)(25786009)(305945005)(66066001)(4744005)(316002)(7736002)(99286004)(76176011)(2351001)(6506007)(8936002)(86362001)(2501003)(71200400001)(71190400001)(102836004)(6486002)(14454004)(8676002)(6916009)(81166006)(81156014)(478600001)(1730700003)(4326008)(76116006)(26005)(446003)(64756008)(66556008)(476003)(256004)(66476007)(66446008)(186003)(3846002)(66946007)(2616005)(6116002)(486006)(11346002)(2906002)(36756003)(91956017)(5660300002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4333;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 35ShpJSrInEK1xgNPfOFs60OKGmYctazJoXtji2LWKW73khs+6AT9Wcr5d1k1V8FAiEtK8idHsL+HJmI3aOwo+UrL7yy6ZyFCBljcKKFjjzkbL6gtFaM4bPFKYC7QkQjXRBLm01Q9F4mVTAnylyxhBxpleXaUM16rjaFCruF+N/WvFAd8/dGtBacZumootb5n+7wsdmGzOg7a5hnWhqDo9XS12JDzTOxzPGnjx9uSH5ERsf6d49RgArNAxgfPintaEGJ+O+Bb3rvCXEAwnJlYXONTggG+anRrDdRsAhEDGz9URnOxBZB0k48i1taldKWTeRtBVASJBZ60+oeu9E6190yZypEh1N6HWkOMDfQQkzndzlFi5Vg/5KrdQqn1nvUG8B+K7Wc/G7aRJy5IbhwW2SDH6f3f1sEXu9/0AbGz6o=
Content-ID: <6FF90B245BA2444EA7447FD164E354AE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2861252f-6069-4020-7c06-08d74bd3e947
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 09:43:00.6071 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 80Bq+p1VHUAmRKFGmlqoRoSpyqtjEsr5L6BjD9D961+ykCtshSROw/KVaw1lzRhzUdVvdbO8cbfyoxu4ia4ZpA==
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpP
biBlcnJvciwgY29weV90b191c2VyKCkgcmV0dXJucyBudW1iZXIgb2YgYnl0ZXMgcmVtYWluaW5n
LiBEcml2ZXINCnNob3VsZCByZXR1cm4gLUVGQVVMVC4NCg0KRml4ZXM6IDRmOGI3ZmFiYjE1ZCAo
InN0YWdpbmc6IHdmeDogYWxsb3cgdG8gc2VuZCBjb21tYW5kcyB0byBjaGlwIikNClJlcG9ydGVk
LWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4NClJlcG9ydGVkLWJ5OiBEYW4g
Q2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+DQpTaWduZWQtb2ZmLWJ5OiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQotLS0NCiBkcml2ZXJz
L3N0YWdpbmcvd2Z4L2RlYnVnLmMgfCA1ICsrLS0tDQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvZGVidWcuYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGVidWcuYw0KaW5kZXggMzI2MWIyNjdj
Mzg1Li44ZGUxNmFkN2M3MTAgMTAwNjQ0DQotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVn
LmMNCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGVidWcuYw0KQEAgLTI1Niw5ICsyNTYsOCBA
QCBzdGF0aWMgc3NpemVfdCB3Znhfc2VuZF9oaWZfbXNnX3JlYWQoc3RydWN0IGZpbGUgKmZpbGUs
IGNoYXIgX191c2VyICp1c2VyX2J1ZiwNCiAJCXJldHVybiBjb250ZXh0LT5yZXQ7DQogCS8vIEJl
IGNhcmVmdWxsLCB3cml0ZSgpIGlzIHdhaXRpbmcgZm9yIGEgZnVsbCBtZXNzYWdlIHdoaWxlIHJl
YWQoKQ0KIAkvLyBvbmx5IHJldHVybiBhIHBheWxvYWQNCi0JcmV0ID0gY29weV90b191c2VyKHVz
ZXJfYnVmLCBjb250ZXh0LT5yZXBseSwgY291bnQpOw0KLQlpZiAocmV0KQ0KLQkJcmV0dXJuIHJl
dDsNCisJaWYgKGNvcHlfdG9fdXNlcih1c2VyX2J1ZiwgY29udGV4dC0+cmVwbHksIGNvdW50KSkN
CisJCXJldHVybiAtRUZBVUxUOw0KIA0KIAlyZXR1cm4gY291bnQ7DQogfQ0KLS0gDQoyLjIwLjEN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
