Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7810713C0D5
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:27:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD1348614D;
	Wed, 15 Jan 2020 12:27:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C-mATQrF9bAM; Wed, 15 Jan 2020 12:27:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A7C9086239;
	Wed, 15 Jan 2020 12:27:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1BCA1BF5A0
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:27:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9E0FE87A56
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:27:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dbAy8VOt1LI5 for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:27:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2041.outbound.protection.outlook.com [40.107.220.41])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B850D8523B
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 12:27:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ggxraxOI1OMjINjkuWjebk69nYB+QiBSJgycxNSC2Dt09WfW95R+0+LK4HxBUaplmx3i0zcG12rnedjtZdMP/AhQsk2pPE10baM6WP60HFixiSajeX7T7QDGMFsAAR3Kgj+HhQKgUmEFpDp36QugXLagd0rIYXOndqzowGRUsyHgyATdU3A7Ia1Sn6U/a4hzTfGquaPnAazDn3+LHqJPqz7c1OcuzMmqj+htEsecK7XjKnq1f5iXw4K2haMbEaoxZB8pqKjeriJQORiDNDPbh70kKvOQju2KGzp769SJVp6WGC8tHuw+FYujjvwNoadXPxMaPzvGldPBTvoDT2KwWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bwh7lWsf/cwWs0AEW/3avuQIgItjw4kHtgAkBvBt6+k=;
 b=L6zMtreKOzVaNQB5qFuvcLPIi3tOt5b78A79PTy34Qf33CHKsbVJIP3Fw98hSeJGYbBB1LHw73HEhN1c2AZnlrd1WDMomlp+WRwhW/rpFvEaUWzI9X2O7/B46J+40Gmb+nl43Zmw0iIH0bnKuInYSVsxN3gwU3Ay+TRXCT+qUqf5Mv+Qd0HxOZpt4dsQ47jgkjIEUctwBCORMyDoYyDxXkZrAiAaYwRjM5gmfm4NsyQ2ccmwxfROGlygwqNJUlO60Iq/ZhLR+LaMqdfdMFzTWztSMBl7JlKD75tT2E6T3CxsGCTET6B7Q74K2LqDlt7eVfB9nfkruTZd8D9PFnex/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Bwh7lWsf/cwWs0AEW/3avuQIgItjw4kHtgAkBvBt6+k=;
 b=loWejBgfNvra6ax5zN/EEMgefsrE0ZNNIvrTlctaAaX3gqGQl9yPwVaZ5RyDo4XQqJzKKVqzShQ3I/SKoGJLRwDH/7J4PBXhppeePqyG5P0mxbeKrJM4qCKcv+FLbvUToesElWgFNlIIlw6kltJKKo1rcBnS2VQbp7b3T/pFFpg=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3934.namprd11.prod.outlook.com (10.255.180.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.20; Wed, 15 Jan 2020 12:13:29 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 12:13:29 +0000
Received: from pc-42.silabs.com (37.71.187.125) by
 PR2PR09CA0009.eurprd09.prod.outlook.com (2603:10a6:101:16::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 12:13:09 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 46/65] staging: wfx: relocate "buffered" information to
 sta_priv
Thread-Topic: [PATCH 46/65] staging: wfx: relocate "buffered" information to
 sta_priv
Thread-Index: AQHVy50niFufYYhXXUi7ur01UA/VBg==
Date: Wed, 15 Jan 2020 12:13:10 +0000
Message-ID: <20200115121041.10863-47-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 00a05abf-aa9a-40c5-1d03-08d799b44977
x-ms-traffictypediagnostic: MN2PR11MB3934:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB393425C7A845CF4F7825244293370@MN2PR11MB3934.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(366004)(346002)(199004)(189003)(54906003)(110136005)(86362001)(956004)(107886003)(2616005)(316002)(36756003)(71200400001)(52116002)(7696005)(478600001)(8936002)(81156014)(8676002)(4326008)(81166006)(6486002)(2906002)(26005)(66946007)(16526019)(186003)(5660300002)(66574012)(1076003)(66556008)(64756008)(66446008)(6666004)(85182001)(66476007)(85202003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3934;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ugP1FkdkT4V8cz6cnMyIEh24Ju9StnQbwvTHfcm0lOfnYgJm7kvR99GUooFJ0SNc4vIhQYGnvdkR//dEGQFcHJLeuN2UNUIKmfqA+YmJXXJ1BkLbFA81UjfTGyPsevmPTIIMuPW4N7+Z+Za2qD7QkQtYIZPe9ErJX/Eeg0AfNh0y+hzD3IrshQzpBNPN/w9s+0Rav55zLvXjzPko/Q2nZ+4uY9sKtEK0p8OKnZV9Vviy9Z/A6Umri95hMnFZqYbi7ikeaaoPt/+kN8ylGyaiZhQeNEV+qvMDxLa9dKkFagYLV8Jg1Tb5TWL+0Dv1ieAMPOUsmYKoL42FO2WJTRVal8vAm7G+6T3CyO8GzLZXRiCh5y9v8z38klzBsv1RNBFekzdW5MBdLHpyM1wYqZiSvM0AaH7IL1lLZykIYFaYMEuWHOOaNfsEAort8Xrt17Va
Content-ID: <55EF408303BCF94AAF076682E458552B@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 00a05abf-aa9a-40c5-1d03-08d799b44977
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 12:13:10.3719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kDcftgAokO2QqtXl6ZP5OklzBIlLLfjmqNQ002C4mxVc16ztoisKrmBPkjgEIeQLR6tH2WD3LPFNpsbmkUKtKQ==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSXQg
c2ltcGxpZnkgdGhlIGNvZGUgaWYgZmllbGQgYnVmZmVyZWQgaXMgaG9zdGVkIGluIHRoZSBzdHJ1
Y3Qgc3RhX3ByaXYKaW5zdGVhZCBvZiBpbiB0aGUgc3RydWN0IHdmeF9saW5rX2VudHJ5LiBNb3Jl
IGdsb2JhbGx5LCBzdHJ1Y3QKd2Z4X2xpbmtfZW50cnkgaGFzIG5vIHJlYWwgcmVhc29ucyB0byBl
eGlzdCBhbmQgc2hvdWxkIGJlIGRyb3BwZWQgc29vbi4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1l
IFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdp
bmcvd2Z4L2RhdGFfdHguYyB8IDUwICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0t
CiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguaCB8ICA0IC0tLQogZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuYyAgICAgfCAgMSArCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5oICAgICB8ICA2
ICsrKysrCiA0IGZpbGVzIGNoYW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDMxIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9kYXRhX3R4LmMKaW5kZXggZTY2OWZjNDQ4NWU2Li45MzEzYzhmNWQ0ZDggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvZGF0YV90eC5jCkBAIC0yOTEsNyArMjkxLDYgQEAgc3RhdGljIGludCB3ZnhfYWxs
b2NfbGlua19pZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29uc3QgdTggKm1hYykKIAogCQllbnRy
eS0+c3RhdHVzID0gV0ZYX0xJTktfUkVTRVJWRTsKIAkJZXRoZXJfYWRkcl9jb3B5KGVudHJ5LT5t
YWMsIG1hYyk7Ci0JCW1lbXNldCgmZW50cnktPmJ1ZmZlcmVkLCAwLCBXRlhfTUFYX1RJRCk7CiAJ
CXdmeF90eF9sb2NrKHd2aWYtPndkZXYpOwogCiAJCWlmICghc2NoZWR1bGVfd29yaygmd3ZpZi0+
bGlua19pZF93b3JrKSkKQEAgLTQzNCw2ICs0MzMsNyBAQCBzdGF0aWMgdm9pZCB3ZnhfdHhfbWFu
YWdlX3BtKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVlZTgwMjExX2hkciAqaGRyLAog
CQkJICAgICBzdHJ1Y3QgaWVlZTgwMjExX3N0YSAqc3RhKQogewogCXUzMiBtYXNrID0gfkJJVCh0
eF9wcml2LT5yYXdfbGlua19pZCk7CisJc3RydWN0IHdmeF9zdGFfcHJpdiAqc3RhX3ByaXY7CiAK
IAlzcGluX2xvY2tfYmgoJnd2aWYtPnBzX3N0YXRlX2xvY2spOwogCWlmIChpZWVlODAyMTFfaXNf
YXV0aChoZHItPmZyYW1lX2NvbnRyb2wpKSB7CkBAIC00NDgsMTUgKzQ0OCwxNyBAQCBzdGF0aWMg
dm9pZCB3ZnhfdHhfbWFuYWdlX3BtKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVlZTgw
MjExX2hkciAqaGRyLAogCQkJc2NoZWR1bGVfd29yaygmd3ZpZi0+bWNhc3Rfc3RhcnRfd29yayk7
CiAJfQogCi0JaWYgKHR4X3ByaXYtPnJhd19saW5rX2lkKSB7CisJaWYgKHR4X3ByaXYtPnJhd19s
aW5rX2lkKQogCQl3dmlmLT5saW5rX2lkX2RiW3R4X3ByaXYtPnJhd19saW5rX2lkIC0gMV0udGlt
ZXN0YW1wID0gamlmZmllczsKLQkJaWYgKHR4X3ByaXYtPnRpZCA8IFdGWF9NQVhfVElEKQotCQkJ
d3ZpZi0+bGlua19pZF9kYlt0eF9wcml2LT5yYXdfbGlua19pZCAtIDFdLmJ1ZmZlcmVkW3R4X3By
aXYtPnRpZF0rKzsKLQl9CiAJc3Bpbl91bmxvY2tfYmgoJnd2aWYtPnBzX3N0YXRlX2xvY2spOwog
Ci0JaWYgKHN0YSkKKwlpZiAoc3RhICYmIHR4X3ByaXYtPnRpZCA8IFdGWF9NQVhfVElEKSB7CisJ
CXN0YV9wcml2ID0gKHN0cnVjdCB3Znhfc3RhX3ByaXYgKikmc3RhLT5kcnZfcHJpdjsKKwkJc3Bp
bl9sb2NrX2JoKCZzdGFfcHJpdi0+bG9jayk7CisJCXN0YV9wcml2LT5idWZmZXJlZFt0eF9wcml2
LT50aWRdKys7CiAJCWllZWU4MDIxMV9zdGFfc2V0X2J1ZmZlcmVkKHN0YSwgdHhfcHJpdi0+dGlk
LCB0cnVlKTsKKwkJc3Bpbl91bmxvY2tfYmgoJnN0YV9wcml2LT5sb2NrKTsKKwl9CiB9CiAKIHN0
YXRpYyB1OCB3ZnhfdHhfZ2V0X3Jhd19saW5rX2lkKHN0cnVjdCB3ZnhfdmlmICp3dmlmLApAQCAt
Nzg5LDMxICs3OTEsMjUgQEAgdm9pZCB3ZnhfdHhfY29uZmlybV9jYihzdHJ1Y3Qgd2Z4X3ZpZiAq
d3ZpZiwgY29uc3Qgc3RydWN0IGhpZl9jbmZfdHggKmFyZykKIAl3ZnhfcGVuZGluZ19yZW1vdmUo
d3ZpZi0+d2Rldiwgc2tiKTsKIH0KIAotc3RhdGljIHZvaWQgd2Z4X25vdGlmeV9idWZmZXJlZF90
eChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IHNrX2J1ZmYgKnNrYiwKLQkJCQkgICBzdHJ1
Y3QgaGlmX3JlcV90eCAqcmVxKQorc3RhdGljIHZvaWQgd2Z4X25vdGlmeV9idWZmZXJlZF90eChz
dHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IHNrX2J1ZmYgKnNrYikKIHsKKwlzdHJ1Y3QgaWVl
ZTgwMjExX2hkciAqaGRyID0gKHN0cnVjdCBpZWVlODAyMTFfaGRyICopc2tiLT5kYXRhOwogCXN0
cnVjdCBpZWVlODAyMTFfc3RhICpzdGE7Ci0Jc3RydWN0IGllZWU4MDIxMV9oZHIgKmhkciA9IChz
dHJ1Y3QgaWVlZTgwMjExX2hkciAqKXNrYi0+ZGF0YTsKKwlzdHJ1Y3Qgd2Z4X3N0YV9wcml2ICpz
dGFfcHJpdjsKIAlpbnQgdGlkID0gd2Z4X3R4X2dldF90aWQoaGRyKTsKLQlpbnQgcmF3X2xpbmtf
aWQgPSByZXEtPnF1ZXVlX2lkLnBlZXJfc3RhX2lkOwotCXU4ICpidWZmZXJlZDsKIAotCWlmIChy
YXdfbGlua19pZCAmJiB0aWQgPCBXRlhfTUFYX1RJRCkgewotCQlidWZmZXJlZCA9IHd2aWYtPmxp
bmtfaWRfZGJbcmF3X2xpbmtfaWQgLSAxXS5idWZmZXJlZDsKLQotCQlzcGluX2xvY2tfYmgoJnd2
aWYtPnBzX3N0YXRlX2xvY2spOwotCQlXQVJOKCFidWZmZXJlZFt0aWRdLCAiaW5jb25zaXN0ZW50
IG5vdGlmaWNhdGlvbiIpOwotCQlidWZmZXJlZFt0aWRdLS07Ci0JCXNwaW5fdW5sb2NrX2JoKCZ3
dmlmLT5wc19zdGF0ZV9sb2NrKTsKLQotCQlpZiAoIWJ1ZmZlcmVkW3RpZF0pIHsKLQkJCXJjdV9y
ZWFkX2xvY2soKTsKLQkJCXN0YSA9IGllZWU4MDIxMV9maW5kX3N0YSh3dmlmLT52aWYsIGhkci0+
YWRkcjEpOwotCQkJaWYgKHN0YSkKLQkJCQlpZWVlODAyMTFfc3RhX3NldF9idWZmZXJlZChzdGEs
IHRpZCwgZmFsc2UpOwotCQkJcmN1X3JlYWRfdW5sb2NrKCk7Ci0JCX0KKwlyY3VfcmVhZF9sb2Nr
KCk7IC8vIHByb3RlY3Qgc3RhCisJc3RhID0gaWVlZTgwMjExX2ZpbmRfc3RhKHd2aWYtPnZpZiwg
aGRyLT5hZGRyMSk7CisJaWYgKHN0YSAmJiB0aWQgPCBXRlhfTUFYX1RJRCkgeworCQlzdGFfcHJp
diA9IChzdHJ1Y3Qgd2Z4X3N0YV9wcml2ICopJnN0YS0+ZHJ2X3ByaXY7CisJCXNwaW5fbG9ja19i
aCgmc3RhX3ByaXYtPmxvY2spOworCQlXQVJOKCFzdGFfcHJpdi0+YnVmZmVyZWRbdGlkXSwgImlu
Y29uc2lzdGVudCBub3RpZmljYXRpb24iKTsKKwkJc3RhX3ByaXYtPmJ1ZmZlcmVkW3RpZF0tLTsK
KwkJaWYgKCFzdGFfcHJpdi0+YnVmZmVyZWRbdGlkXSkKKwkJCWllZWU4MDIxMV9zdGFfc2V0X2J1
ZmZlcmVkKHN0YSwgdGlkLCBmYWxzZSk7CisJCXNwaW5fdW5sb2NrX2JoKCZzdGFfcHJpdi0+bG9j
ayk7CiAJfQorCXJjdV9yZWFkX3VubG9jaygpOwogfQogCiB2b2lkIHdmeF9za2JfZHRvcihzdHJ1
Y3Qgd2Z4X2RldiAqd2Rldiwgc3RydWN0IHNrX2J1ZmYgKnNrYikKQEAgLTgyNyw3ICs4MjMsNyBA
QCB2b2lkIHdmeF9za2JfZHRvcihzdHJ1Y3Qgd2Z4X2RldiAqd2Rldiwgc3RydWN0IHNrX2J1ZmYg
KnNrYikKIAogCVdBUk5fT04oIXd2aWYpOwogCXNrYl9wdWxsKHNrYiwgb2Zmc2V0KTsKLQl3Znhf
bm90aWZ5X2J1ZmZlcmVkX3R4KHd2aWYsIHNrYiwgcmVxKTsKKwl3Znhfbm90aWZ5X2J1ZmZlcmVk
X3R4KHd2aWYsIHNrYik7CiAJd2Z4X3R4X3BvbGljeV9wdXQod3ZpZiwgcmVxLT50eF9mbGFncy5y
ZXRyeV9wb2xpY3lfaW5kZXgpOwogCWllZWU4MDIxMV90eF9zdGF0dXNfaXJxc2FmZSh3ZGV2LT5o
dywgc2tiKTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5oIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmgKaW5kZXggNTQ3MzhjMmUzZWFjLi5kMDJhN2Iz
MjViMjcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5oCisrKyBiL2Ry
aXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5oCkBAIC0xNCw5ICsxNCw2IEBACiAjaW5jbHVkZSAi
aGlmX2FwaV9jbWQuaCIKICNpbmNsdWRlICJoaWZfYXBpX21pYi5oIgogCi0vLyBGSVhNRTogdXNl
IElFRUU4MDIxMV9OVU1fVElEUwotI2RlZmluZSBXRlhfTUFYX1RJRCAgICAgICAgICAgICAgIDgK
LQogc3RydWN0IHdmeF90eF9wcml2Owogc3RydWN0IHdmeF9kZXY7CiBzdHJ1Y3Qgd2Z4X3ZpZjsK
QEAgLTMzLDcgKzMwLDYgQEAgc3RydWN0IHdmeF9saW5rX2VudHJ5IHsKIAllbnVtIHdmeF9saW5r
X3N0YXR1cwlzdGF0dXM7CiAJdTgJCQltYWNbRVRIX0FMRU5dOwogCXU4CQkJb2xkX21hY1tFVEhf
QUxFTl07Ci0JdTgJCQlidWZmZXJlZFtXRlhfTUFYX1RJRF07CiB9OwogCiBzdHJ1Y3QgdHhfcG9s
aWN5IHsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3N0YS5jCmluZGV4IDRhNDRkNzJmMGRiMS4uYWViY2U5NmRjZDRhIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
c3RhLmMKQEAgLTU3Miw2ICs1NzIsNyBAQCBpbnQgd2Z4X3N0YV9hZGQoc3RydWN0IGllZWU4MDIx
MV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsCiAJc3RydWN0IHdmeF9zdGFfcHJp
diAqc3RhX3ByaXYgPSAoc3RydWN0IHdmeF9zdGFfcHJpdiAqKSAmc3RhLT5kcnZfcHJpdjsKIAlz
dHJ1Y3Qgd2Z4X2xpbmtfZW50cnkgKmVudHJ5OwogCisJc3Bpbl9sb2NrX2luaXQoJnN0YV9wcml2
LT5sb2NrKTsKIAlpZiAod3ZpZi0+dmlmLT50eXBlICE9IE5MODAyMTFfSUZUWVBFX0FQKQogCQly
ZXR1cm4gMDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaCBiL2RyaXZl
cnMvc3RhZ2luZy93Zngvc3RhLmgKaW5kZXggZTBiNTQzMzJlOThhLi40N2Q5NGQ2Yjg1OTAgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmgKKysrIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9zdGEuaApAQCAtMTIsNiArMTIsOSBAQAogCiAjaW5jbHVkZSAiaGlmX2FwaV9jbWQuaCIK
IAorLy8gRklYTUU6IHVzZSBJRUVFODAyMTFfTlVNX1RJRFMKKyNkZWZpbmUgV0ZYX01BWF9USUQg
ICAgICAgICAgICAgICA4CisKIHN0cnVjdCB3ZnhfZGV2Owogc3RydWN0IHdmeF92aWY7CiAKQEAg
LTM3LDYgKzQwLDkgQEAgc3RydWN0IHdmeF9ncnBfYWRkcl90YWJsZSB7CiBzdHJ1Y3Qgd2Z4X3N0
YV9wcml2IHsKIAlpbnQgbGlua19pZDsKIAlpbnQgdmlmX2lkOworCXU4IGJ1ZmZlcmVkW1dGWF9N
QVhfVElEXTsKKwkvLyBFbnN1cmUgYXRvbWljaXR5IG9mICJidWZmZXJlZCIgYW5kIGNhbGxzIHRv
IGllZWU4MDIxMV9zdGFfc2V0X2J1ZmZlcmVkKCkKKwlzcGlubG9ja190IGxvY2s7CiB9OwogCiAv
LyBtYWM4MDIxMSBpbnRlcmZhY2UKLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
