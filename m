Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27880123188
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:16:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D043687D8C;
	Tue, 17 Dec 2019 16:16:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jto-e3EVWeqG; Tue, 17 Dec 2019 16:16:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 122BC87D46;
	Tue, 17 Dec 2019 16:16:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EB7A1BF2B3
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1F73586AA1
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PRiw6LkQ7m3H for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:15:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2067.outbound.protection.outlook.com [40.107.92.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2C4E18582C
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:15:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PJW3WyGdL3SSh6zdPjFy/Oe7EgKzYIYJxWnITkVOFzUSRFbIkTli5eoVZFW3PZv+p2AoAjuAxIshwjxE7HcaaXzrgVPdmNqcH/UCGvWqsiy0Xeu1FfZK23vf2L1Ufoi7u6yogp+nTZHft9pBQY47PKnTxBfc9X7AgArRoofg3CWwcsVNpTcKFb8QzcL1ghl3+1Koxff+5TjU5UdADJFZZo3M/xw1n/gHdy98DVB0kduyG2x2WlG6Oe2oKqvULu8fSPf2TaHqfEctlfrdexWpsrNe8Sw/iQ0/zGTl78A+a2ga01lDnUBERsJyVuCjqKbGjqi2QMBGvyraNqHnb2Zmug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LsYEN3xCNjMITk1ynv6bBic/C8RRN8e9RiyMJczZy8A=;
 b=jsp6naKKODLakAahNv/rdiekS035airqPrBnmNm/+tAU/LMumWpoAfMCHG4SMuMiZ3VInwpJejMMck4/soWCSdYz+N1227vVWI847ApFYQkL44iyRQo5cfyMir8EJCgYALpiHYViOOUehQFK5lOqKxPVR84Xxv4+omTGvpRSAHQ2b+wbkd0Im4UHj50FSQLyfFGIhvFx6LYTdiVwhUQT9wVvlCZ8xBkasbFn+24k35AcPK9wRTnjRi8WZLhHe0hYm5HzDiPphVN8A7kos01RMou/c7vCksk0GTBD5UfxdVu8mhficVzHqzeogT8dZqHTcVJGCueG8llXkzbkrqRZyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LsYEN3xCNjMITk1ynv6bBic/C8RRN8e9RiyMJczZy8A=;
 b=Fl4yxAJfBN3meDnMTJCq+gFdOVF6NmPVgK542UwpWqgZ6+R2TRKi48A5pMpZ/PnYo+NtW5iQQ1lhougv23aLcrWpyoRAy2riAoUrgeRdl+Vxqom+OfxGS+NoR+i+cwnaSVQLgCuHNDLq8hb9OeBTCXrIJFPEDYneaE0BDaK/WFg=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4208.namprd11.prod.outlook.com (52.135.36.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.20; Tue, 17 Dec 2019 16:15:42 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:15:42 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 35/55] staging: wfx: do not try to save call to hif_set_pm()
Thread-Topic: [PATCH v2 35/55] staging: wfx: do not try to save call to
 hif_set_pm()
Thread-Index: AQHVtPUriD2tbdCv5kG06TO5hzkHMg==
Date: Tue, 17 Dec 2019 16:15:16 +0000
Message-ID: <20191217161318.31402-36-Jerome.Pouiller@silabs.com>
References: <20191217161318.31402-1-Jerome.Pouiller@silabs.com>
In-Reply-To: <20191217161318.31402-1-Jerome.Pouiller@silabs.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0174.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1c::18) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.0
x-originating-ip: [37.71.187.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4439483-8024-40f5-8c54-08d7830c4dc0
x-ms-traffictypediagnostic: MN2PR11MB4208:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4208EF090BB1AA0E4584D99393500@MN2PR11MB4208.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(396003)(366004)(136003)(376002)(346002)(199004)(189003)(5660300002)(316002)(6506007)(85182001)(478600001)(71200400001)(2906002)(36756003)(186003)(26005)(81166006)(54906003)(1076003)(110136005)(66574012)(4326008)(8676002)(86362001)(6486002)(6666004)(52116002)(6512007)(64756008)(85202003)(66946007)(66476007)(66446008)(66556008)(8936002)(107886003)(2616005)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4208;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oJmg0mNijgUFeAC7jq8UQlPXhK/Wrttw+QdeGl5z+OSwtFJb1Sa1h3sX/VA3B9tjHnbn3owficNr1A7iRpziZrDW1XunvseUhiw5JjmD4rWGKDI4RUDx0QIjLFlpMJDyE429uiK1a5LL5UpAvEosC8HcJGDQJVvQ0GaX+S6OV9+HKFwyPkH9IzQ8SQUixfSpOMAIzgQPaXXTumkJL4Uswi0xHVmLNaVti2jLwmZBgvywj5k/gqFaY46ensyWClwGqKHTK1CsOdW4fOKjDVMgoYNjoYJoccVSQLCeBEG2rRKtiV5aWI/wxGRTnhGDV89fmFMF2x1cM4/oMNqM2YBzPJMXvfFO3UWpnkfI/vO618uk+XydD253i9Vza8jJmbTrE/CsduZO5iOLIBMdww9GcqgAgmq5bnZO6OEOHFZqiFygeBMX8bvStY1FH3tGyBIE
Content-ID: <F06DDCE0A3DD7E448EC09AC0C1FB232F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4439483-8024-40f5-8c54-08d7830c4dc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:15:16.5284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YaO2E8bSZXFheEKAEh0bsLcAPhT2yQxCt4Bc3GPBaNxfnWxjCvVxcsbPmxDRCCGkcCZrlP1J79mIWup70WZBKQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4208
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQ3Vy
cmVudCBjb2RlIHRyeSB0byBub3QgZXhjaGFuZ2UgZGF0YSB3aXRoIGRldmljZSBpZiBpdCBpcyBu
b3QKbmVjZXNzYXJ5LiBIb3dldmVyLCBpdCBzZWVtcyB0aGF0IHRoZSBhZGRpdGlvbmFsIGNvZGUg
ZG9lcyBub3QgcHJvdmlkZQphbnkgZ2Fpbi4gU28sIHdlIHByZWZlciB0byBrZWVwIGEgc2ltcGxl
ciBjb2RlLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxl
ckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgfCA3ICstLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEu
YwppbmRleCBjNTcxMzVmNzc1NzIuLmRjYjQ2OTNlYzk4MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9z
dGFnaW5nL3dmeC9zdGEuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCkBAIC0zNzEs
MTQgKzM3MSwxMSBAQCBpbnQgd2Z4X2NvbmZfdHgoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHN0
cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsCiAJc3RydWN0IHdmeF9kZXYgKndkZXYgPSBody0+cHJp
djsKIAlzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiA9IChzdHJ1Y3Qgd2Z4X3ZpZiAqKSB2aWYtPmRydl9w
cml2OwogCWludCByZXQgPSAwOwotCS8qIFRvIHByZXZlbnQgcmUtYXBwbHlpbmcgUE0gcmVxdWVz
dCBPSUQgYWdhaW4gYW5kIGFnYWluKi8KLQl1MTYgb2xkX3VhcHNkX2ZsYWdzLCBuZXdfdWFwc2Rf
ZmxhZ3M7CiAJc3RydWN0IGhpZl9yZXFfZWRjYV9xdWV1ZV9wYXJhbXMgKmVkY2E7CiAKIAltdXRl
eF9sb2NrKCZ3ZGV2LT5jb25mX211dGV4KTsKIAogCWlmIChxdWV1ZSA8IGh3LT5xdWV1ZXMpIHsK
LQkJb2xkX3VhcHNkX2ZsYWdzID0gKigodTE2ICopICZ3dmlmLT51YXBzZF9pbmZvKTsKIAkJZWRj
YSA9ICZ3dmlmLT5lZGNhLnBhcmFtc1txdWV1ZV07CiAKIAkJd3ZpZi0+ZWRjYS51YXBzZF9lbmFi
bGVbcXVldWVdID0gcGFyYW1zLT51YXBzZDsKQEAgLTM5NSwxMCArMzkyLDggQEAgaW50IHdmeF9j
b25mX3R4KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlm
LAogCiAJCWlmICh3dmlmLT52aWYtPnR5cGUgPT0gTkw4MDIxMV9JRlRZUEVfU1RBVElPTikgewog
CQkJcmV0ID0gd2Z4X3NldF91YXBzZF9wYXJhbSh3dmlmLCAmd3ZpZi0+ZWRjYSk7Ci0JCQluZXdf
dWFwc2RfZmxhZ3MgPSAqKCh1MTYgKikgJnd2aWYtPnVhcHNkX2luZm8pOwogCQkJaWYgKCFyZXQg
JiYgd3ZpZi0+c2V0YnNzcGFyYW1zX2RvbmUgJiYKLQkJCSAgICB3dmlmLT5zdGF0ZSA9PSBXRlhf
U1RBVEVfU1RBICYmCi0JCQkgICAgb2xkX3VhcHNkX2ZsYWdzICE9IG5ld191YXBzZF9mbGFncykK
KwkJCSAgICB3dmlmLT5zdGF0ZSA9PSBXRlhfU1RBVEVfU1RBKQogCQkJCXJldCA9IHdmeF91cGRh
dGVfcG0od3ZpZik7CiAJCX0KIAl9IGVsc2UgewotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxA
bGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVj
dC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
