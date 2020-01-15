Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1372113BF69
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 13:13:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9226786B58;
	Wed, 15 Jan 2020 12:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-0GwMx-1jnZ; Wed, 15 Jan 2020 12:13:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6608587985;
	Wed, 15 Jan 2020 12:13:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F19761BF983
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:13:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EE51E822AE
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 12:13:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VANsrdbsTn5j for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 12:13:23 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2059.outbound.protection.outlook.com [40.107.92.59])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 26F67836CE
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 12:13:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aFK9ROY0PS+SvG7EqAqp758RS6nVR2ki8BOAz7JjGQ8iWFqEcp4erBvPjXhEQFbkx6cNpoiZNY0VfBlFLRUpckNz2Rhzhm81po+tSyN2/+64kWCDSY5pyrJy7+Gfcg6At+iexqi7CmrU+9lKHQJowFr3CKMBKwUqPwcFyAKo6q7BzBbvbYwtR+SuMVOTEYD47aMszRYa3CyGZ+c4MTiZPZ+eFsXvbkt8PRiFcDNg0089TzWFFXrXntJCLfCLG/j/HF3bVZNS3GrgAw5aEXJqtZY8uNIyCYY/fWYk0l0OowNLX0WWS/bsx+R/Vpj4eo4X/acgcqzVB2o9vGAZyDPOqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJqXurW4/VAnWUE+JXZ5tJhNqqZRExJP6P/RNttxtCI=;
 b=KM9ZuhHzVcjsbyyyjYXdlsa84udx8dAqjwcjYURwueCQ9ANnblDN8puAhu0uibKuE6Sk04t4QFehLpjZS0oeXQOD2gmsOWvGy+3OkJvDhNPEi2dGPkAIsNnZSEc66ikcC7uKKs6hx1518xRdl6zJjaChlj04j4gj3T4eHZT92cVWz5880sfgN7h7Peb/VDCp+ITT1hih0L49WsBDPapp7HeIeSR6yUw7VEisUke0HS+2eH6DkrAjgGQOFuU6O5gGMluFYlzrj74J93YXnDiT810D9XqanxGy2jLi7ztp0ysxlT+/tpF++nM2ZlWX8u1nJyetLJNUxg1pP2mIcftisg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XJqXurW4/VAnWUE+JXZ5tJhNqqZRExJP6P/RNttxtCI=;
 b=k+I/s/OXgFSduMWtpN3G/hM1gmaKbMzvbPlCgGBYnFpNUwJe9NxgQzwuCWuKTV3xYE5Wig+PHE4r7x9c0y9SmtGu3rUnSfUyNUIWAcW4A291tggO5Mec1GGOHjm0cWOrwIPO4Itsd5z5o1vp0hceITUGx3BXlEI/YHsfWRg5d78=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4096.namprd11.prod.outlook.com (20.179.150.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Wed, 15 Jan 2020 12:13:22 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 12:13:22 +0000
Received: from pc-42.silabs.com (37.71.187.125) by
 PR2PR09CA0009.eurprd09.prod.outlook.com (2603:10a6:101:16::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 12:12:53 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH 34/65] staging: wfx: simplify hif_set_data_filtering()
Thread-Topic: [PATCH 34/65] staging: wfx: simplify hif_set_data_filtering()
Thread-Index: AQHVy50dtm/2WXbjVk+wIXdMzUynWQ==
Date: Wed, 15 Jan 2020 12:12:54 +0000
Message-ID: <20200115121041.10863-35-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 697bbd7f-0ea5-435c-2cfd-08d799b44002
x-ms-traffictypediagnostic: MN2PR11MB4096:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4096F7546E1261A162B0A68893370@MN2PR11MB4096.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(39860400002)(366004)(376002)(136003)(199004)(189003)(85202003)(66946007)(66446008)(66476007)(2906002)(107886003)(66556008)(1076003)(66574012)(64756008)(5660300002)(8936002)(6486002)(186003)(26005)(8676002)(316002)(81156014)(36756003)(52116002)(2616005)(7696005)(478600001)(16526019)(956004)(54906003)(110136005)(86362001)(71200400001)(85182001)(4326008)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4096;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O/mPZ3zGSbBvzozCU1+zOucP5TPNcdi9FL92jAlusUnj8FWuiq5Yfyqun6XzztkwvAhoNGMKQOrg7PVLXJdgIvkOrn3Uz1RQ2eEZIQKv/xw3HFXbVLfVXeyOapm5/9dGcqRomEr3GaCcQiO8ueoQF30jPmW5aZ768v0Owr7P7/gaEq8Tbsqngsw4oJ6xpuTY1l46DrFyVm5JehZ6sQHhhZ6h/bhOAB6/Rp054Qyo7yemXSdvhVrjfNkODP3JQYXwfGcKI6EQ/UKBty1dALQxzoGjlZVDotLPJC3A1XAg4vMSjG9DMPYipeQK0tk8STFC8Ol8v2uzylOEwjIywBCq0tUhVL01F7Qp48pzHA5zlVYT+p49JYKcAHo1GG5gWrs5jXkbgrZ4pcU7qYEYCSHfPJxSdG7a72mifE5vyRKn3V3drz1Rh2f9Ql9ypjlil5/r
Content-ID: <5460FBAB1ECD934A8B0A172B9051A55D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 697bbd7f-0ea5-435c-2cfd-08d799b44002
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 12:12:54.4950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KZP+shmyT5vyf/6x1Fnx/dkC9fMuz3Rn+2y8tPaVmgWcF5dH5WKB5OQ5aYUYEEgoAsa0b6T+q14+gxtd3tLbxg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4096
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHN0cnVjdHVyZSBoaWZfbWliX3NldF9kYXRhX2ZpbHRlcmluZyBjb21lIGZyb20gaGFyZHdhcmUg
QVBJLiBJdCBpcwpub3QgaW50ZW5kZWQgdG8gYmUgbWFuaXB1bGF0ZWQgaW4gdXBwZXIgbGF5ZXJz
IG9mIHRoZSBkcml2ZXIuCgpJbiBhZGQsIGN1cnJlbnQgY29kZSBmb3IgaGlmX3NldF9kYXRhX2Zp
bHRlcmluZygpIGlzIHRvbyBkdW1iLiBJdCBzaG91bGQKcGFjayBkYXRhIHdpdGggaGFyZHdhcmUg
cmVwcmVzZW50YXRpb24gaW5zdGVhZCBvZiBsZWF2aW5nIGFsbCB3b3JrIHRvCnRoZSBjYWxsZXIu
CgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFi
cy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmggfCAgOSArKysrKysr
LS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgICAgICAgIHwgMTMgKysrKy0tLS0tLS0tLQog
MiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuaCBiL2RyaXZlcnMvc3RhZ2lu
Zy93ZngvaGlmX3R4X21pYi5oCmluZGV4IDZlOGIwNTBjYmMyNS4uZWUyMmM3MTY5ZmFiIDEwMDY0
NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuaAorKysgYi9kcml2ZXJzL3N0
YWdpbmcvd2Z4L2hpZl90eF9taWIuaApAQCAtMjY3LDEwICsyNjcsMTUgQEAgc3RhdGljIGlubGlu
ZSBpbnQgaGlmX3NldF9jb25maWdfZGF0YV9maWx0ZXIoc3RydWN0IHdmeF92aWYgKnd2aWYsCiB9
CiAKIHN0YXRpYyBpbmxpbmUgaW50IGhpZl9zZXRfZGF0YV9maWx0ZXJpbmcoc3RydWN0IHdmeF92
aWYgKnd2aWYsCi0JCQkJCSBzdHJ1Y3QgaGlmX21pYl9zZXRfZGF0YV9maWx0ZXJpbmcgKmFyZykK
KwkJCQkJIGJvb2wgZW5hYmxlLCBib29sIGludmVydCkKIHsKKwlzdHJ1Y3QgaGlmX21pYl9zZXRf
ZGF0YV9maWx0ZXJpbmcgdmFsID0geworCQkuZW5hYmxlID0gZW5hYmxlLAorCQkuaW52ZXJ0X21h
dGNoaW5nID0gaW52ZXJ0LAorCX07CisKIAlyZXR1cm4gaGlmX3dyaXRlX21pYih3dmlmLT53ZGV2
LCB3dmlmLT5pZCwKLQkJCSAgICAgSElGX01JQl9JRF9TRVRfREFUQV9GSUxURVJJTkcsIGFyZywg
c2l6ZW9mKCphcmcpKTsKKwkJCSAgICAgSElGX01JQl9JRF9TRVRfREFUQV9GSUxURVJJTkcsICZ2
YWwsIHNpemVvZih2YWwpKTsKIH0KIAogc3RhdGljIGlubGluZSBpbnQgaGlmX2tlZXBfYWxpdmVf
cGVyaW9kKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgcGVyaW9kKQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKaW5kZXgg
MjcyNDhlYTYyYWVhLi41ODgwOTQ0ODZhN2EgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93
Zngvc3RhLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtMTE4LDE2ICsxMTgs
MTMgQEAgc3RhdGljIGludCB3Znhfc2V0X21jYXN0X2ZpbHRlcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3Zp
ZiwKIHsKIAlpbnQgaSwgcmV0OwogCXN0cnVjdCBoaWZfbWliX2NvbmZpZ19kYXRhX2ZpbHRlciBj
b25maWcgPSB7IH07Ci0Jc3RydWN0IGhpZl9taWJfc2V0X2RhdGFfZmlsdGVyaW5nIGZpbHRlcl9k
YXRhID0geyB9OwogCXN0cnVjdCBoaWZfbWliX21hY19hZGRyX2RhdGFfZnJhbWVfY29uZGl0aW9u
IGZpbHRlcl9hZGRyX3ZhbCA9IHsgfTsKIAogCS8vIFRlbXBvcmFyeSB3b3JrYXJvdW5kIGZvciBm
aWx0ZXJzCi0JcmV0dXJuIGhpZl9zZXRfZGF0YV9maWx0ZXJpbmcod3ZpZiwgJmZpbHRlcl9kYXRh
KTsKKwlyZXR1cm4gaGlmX3NldF9kYXRhX2ZpbHRlcmluZyh3dmlmLCBmYWxzZSwgdHJ1ZSk7CiAK
LQlpZiAoIWZwLT5lbmFibGUpIHsKLQkJZmlsdGVyX2RhdGEuZW5hYmxlID0gMDsKLQkJcmV0dXJu
IGhpZl9zZXRfZGF0YV9maWx0ZXJpbmcod3ZpZiwgJmZpbHRlcl9kYXRhKTsKLQl9CisJaWYgKCFm
cC0+ZW5hYmxlKQorCQlyZXR1cm4gaGlmX3NldF9kYXRhX2ZpbHRlcmluZyh3dmlmLCBmYWxzZSwg
dHJ1ZSk7CiAKIAkvLyBBMSBBZGRyZXNzIG1hdGNoIG9uIGxpc3QKIAlmb3IgKGkgPSAwOyBpIDwg
ZnAtPm51bV9hZGRyZXNzZXM7IGkrKykgewpAQCAtMTU0LDkgKzE1MSw3IEBAIHN0YXRpYyBpbnQg
d2Z4X3NldF9tY2FzdF9maWx0ZXIoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJaWYgKHJldCkKIAkJ
cmV0dXJuIHJldDsKIAotCWZpbHRlcl9kYXRhLmVuYWJsZSA9IDE7Ci0JZmlsdGVyX2RhdGEuaW52
ZXJ0X21hdGNoaW5nID0gMTsgLy8gZGlzY2FyZCBhbGwgYnV0IG1hdGNoaW5nIGZyYW1lcwotCXJl
dCA9IGhpZl9zZXRfZGF0YV9maWx0ZXJpbmcod3ZpZiwgJmZpbHRlcl9kYXRhKTsKKwlyZXQgPSBo
aWZfc2V0X2RhdGFfZmlsdGVyaW5nKHd2aWYsIHRydWUsIHRydWUpOwogCiAJcmV0dXJuIHJldDsK
IH0KLS0gCjIuMjUuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
