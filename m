Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B8213C3B7
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Jan 2020 14:54:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FAB081D08;
	Wed, 15 Jan 2020 13:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Be9gTWxEiqAf; Wed, 15 Jan 2020 13:54:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7418E81D7E;
	Wed, 15 Jan 2020 13:54:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0EB861BF573
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:54:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 09C858147D
 for <devel@linuxdriverproject.org>; Wed, 15 Jan 2020 13:54:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LifbpfmSMhes for <devel@linuxdriverproject.org>;
 Wed, 15 Jan 2020 13:54:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770059.outbound.protection.outlook.com [40.107.77.59])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB51D81724
 for <devel@driverdev.osuosl.org>; Wed, 15 Jan 2020 13:54:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i73oIta3UIL0Il+YFi/E86afFY9P4mOqydf9OmYlEo08WcbmvAsvz8ES1zk7sISVtByVKj72tXZI341UgrrFDHY3HNE79VwcaVJIJxKz+q+lQRa+QJ/+6WIcvSDf/Pl20QNyUuBB7xqPgFWefGSQStpZ9WwCYas8LFqcVjhw2VJxfSNyKjHJepZkS4ZSzbtvWiUgKou+/auuLYvrmHc14WkT6G2U/k0N0ceZLgwXXJWZCWfGszEhQROOawDUwXKW3WUY5+8VoFkup+Uj2+O38pg3mgys2d/L/yOomtGv3sPPC+4zMhmdxWpYY2jnfRaKrlbYQBVfYPFZyJxzEgPm1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tz6rRPqYovKmS4+0y3NaPK/jPsF16HaTkAo8p/CyYzE=;
 b=W1O7K5iRuCTL+Qresi4Z25XCtCPn4x2FLlCSmr+CNuzQofvPV9K9K4LNgKVhUe7fy4H+F500dSeMTCf+o5KGbiKe9EzgmX8IKlmIgMzzKL+CBlH1FaRxDsoDHfM5uSRvkyxerx+f3GFqj+fMO+2LxM8AQVsvh5d+6D7dQNbABwIQ9QasYzHBPD/vR3V7dYHWCckfK+1PHvK4wMT1MPIFnVd42eyjkpWzs2d8ey4fcC2Be1BKKr/Mc4lgzvB3/dcaOUFOxKVRoFD6rnRSUDoOeiLSPpLMzaCtj53Jk22ZMbprA40WIY0wjTTHF1fyYnCBXJAr+JEkSGyRkB2cyfo+4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tz6rRPqYovKmS4+0y3NaPK/jPsF16HaTkAo8p/CyYzE=;
 b=mmuPg/nLCez01hEmo4ZcRwVoRKzQPV7o4avaS4hmGuVK97MQRPmWgjodiyAZxiB4aYb3YBPDH7mrorqG82jpRjt8+FIjkeHTY6AqBGCDmdhjf03GQu54iuJW1ovHT6E/GhCM6lq/Dz871FcfbPcvy30ZtDo9gHl3WXBEw9LMPSI=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3661.namprd11.prod.outlook.com (20.178.252.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Wed, 15 Jan 2020 13:54:15 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2623.018; Wed, 15 Jan 2020
 13:54:14 +0000
Received: from pc-42.home (2a01:e35:8bf5:66a0:3dbe:4cb5:6059:a948) by
 PR2P264CA0008.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Wed, 15 Jan 2020 13:54:13 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 09/65] staging: wfx: simplify hif_start() usage
Thread-Topic: [PATCH v2 09/65] staging: wfx: simplify hif_start() usage
Thread-Index: AQHVy6tFUukb1+gu7kK1xSJ1YvHhDA==
Date: Wed, 15 Jan 2020 13:54:14 +0000
Message-ID: <20200115135338.14374-10-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: c9ee73ae-bb0a-4262-5a91-08d799c26831
x-ms-traffictypediagnostic: MN2PR11MB3661:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3661B2FBD627623CB111FDE893370@MN2PR11MB3661.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 02830F0362
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(376002)(396003)(136003)(346002)(366004)(199004)(189003)(8886007)(6486002)(316002)(54906003)(71200400001)(36756003)(6506007)(66476007)(66446008)(66946007)(110136005)(8676002)(81166006)(81156014)(478600001)(86362001)(2616005)(4326008)(66574012)(2906002)(107886003)(1076003)(16526019)(186003)(85202003)(5660300002)(6512007)(52116002)(64756008)(66556008)(85182001)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3661;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 89YiUnu7EjR+VMC+Fot+QCgnrB3p8+2eOW0NeJPwwZw2TS1mFUpZX29xNDw8+dKJdWyEb6JkNVpsuqOGGXmzkHRD72HTRi/sxwGCgrdyPyFATySY3DLzwu9aKUI9ERBD5w7jq/H8+W+3vOlFW7+RXcD4f63RC+x2bg/9WUtgCmq1Wx851G31mHMsgC+YZoeYH0AOSRQcfY8Kv7U9V+3OqRjIiFsSsydg4lgveGRbVRyGYc2FYmrtjvTPoUZcqaZkWGxjs4Fkc9Y1kJo0XskchItavTXfPGA4m48mZcADdDOzHZesysYzJu56G+5NuLv230ZDF7IbxeWjsgNqhAlH9QFGbC/b74M+fYSgU36j/dFy8Q30vZPW9peU5122M21JXSeC8leMe3UtyChFL9s2qXagrJosYk18KtvPGgca+sOC2HcfH4OlLKFilu86mcac
Content-ID: <D430310C15B04E4F8D205CEB044CB739@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9ee73ae-bb0a-4262-5a91-08d799c26831
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jan 2020 13:54:14.8683 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: egYkPwFzzLIB7XZYzchzLtN+LNQmJWQMa1Yb3bXwzPWt3uvqfVk5wNJulfL/JHzRElUkKJegP77bMSpNq1FhwA==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHN0cnVjdHVyZSBoaWZfcmVxX3N0YXJ0IGNvbWUgZnJvbSBoYXJkd2FyZSBBUEkuIEl0IGlzIG5v
dCBpbnRlbmRlZAp0byBiZSBtYW5pcHVsYXRlZCBpbiB1cHBlciBsYXllcnMgb2YgdGhlIGRyaXZl
ci4KCkluIGFkZCwgY3VycmVudCBjb2RlIGZvciBoaWZfc3RhcnQoKSBpcyB0b28gZHVtYi4gSXQg
c2hvdWxkIHBhY2sgZGF0YQp3aXRoIGhhcmR3YXJlIHJlcHJlc2VudGF0aW9uIGluc3RlYWQgb2Yg
bGVhdmluZyBhbGwgd29yayB0byB0aGUgY2FsbGVyLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUg
UG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2lu
Zy93ZngvaGlmX3R4LmMgfCAxNyArKysrKysrKysrLS0tLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX3R4LmggfCAgNSArKysrLQogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyAgICB8IDQwICsr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAyOSBp
bnNlcnRpb25zKCspLCAzMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2hpZl90eC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguYwppbmRleCBkOGUx
NTk2NzBlYWUuLmJlMzEzODU5MGE0ZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9o
aWZfdHguYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jCkBAIC00MDksMTYgKzQw
OSwyMyBAQCBpbnQgaGlmX3NldF9wbShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgYm9vbCBwcywgaW50
IGR5bmFtaWNfcHNfdGltZW91dCkKIAlyZXR1cm4gcmV0OwogfQogCi1pbnQgaGlmX3N0YXJ0KHN0
cnVjdCB3ZnhfdmlmICp3dmlmLCBjb25zdCBzdHJ1Y3QgaGlmX3JlcV9zdGFydCAqYXJnKQoraW50
IGhpZl9zdGFydChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29uc3Qgc3RydWN0IGllZWU4MDIxMV9i
c3NfY29uZiAqY29uZiwKKwkgICAgICBjb25zdCBzdHJ1Y3QgaWVlZTgwMjExX2NoYW5uZWwgKmNo
YW5uZWwpCiB7CiAJaW50IHJldDsKIAlzdHJ1Y3QgaGlmX21zZyAqaGlmOwogCXN0cnVjdCBoaWZf
cmVxX3N0YXJ0ICpib2R5ID0gd2Z4X2FsbG9jX2hpZihzaXplb2YoKmJvZHkpLCAmaGlmKTsKIAot
CW1lbWNweShib2R5LCBhcmcsIHNpemVvZigqYm9keSkpOwotCWNwdV90b19sZTE2cygmYm9keS0+
Y2hhbm5lbF9udW1iZXIpOwotCWNwdV90b19sZTMycygmYm9keS0+YmVhY29uX2ludGVydmFsKTsK
LQljcHVfdG9fbGUzMnMoJmJvZHktPmJhc2ljX3JhdGVfc2V0KTsKKwlib2R5LT5kdGltX3Blcmlv
ZCA9IGNvbmYtPmR0aW1fcGVyaW9kLAorCWJvZHktPnNob3J0X3ByZWFtYmxlID0gY29uZi0+dXNl
X3Nob3J0X3ByZWFtYmxlLAorCWJvZHktPmNoYW5uZWxfbnVtYmVyID0gY3B1X3RvX2xlMTYoY2hh
bm5lbC0+aHdfdmFsdWUpLAorCWJvZHktPmJlYWNvbl9pbnRlcnZhbCA9IGNwdV90b19sZTMyKGNv
bmYtPmJlYWNvbl9pbnQpOworCWJvZHktPmJhc2ljX3JhdGVfc2V0ID0KKwkJY3B1X3RvX2xlMzIo
d2Z4X3JhdGVfbWFza190b19odyh3dmlmLT53ZGV2LCBjb25mLT5iYXNpY19yYXRlcykpOworCWlm
ICghY29uZi0+aGlkZGVuX3NzaWQpIHsKKwkJYm9keS0+c3NpZF9sZW5ndGggPSBjb25mLT5zc2lk
X2xlbjsKKwkJbWVtY3B5KGJvZHktPnNzaWQsIGNvbmYtPnNzaWQsIGNvbmYtPnNzaWRfbGVuKTsK
Kwl9CiAJd2Z4X2ZpbGxfaGVhZGVyKGhpZiwgd3ZpZi0+aWQsIEhJRl9SRVFfSURfU1RBUlQsIHNp
emVvZigqYm9keSkpOwogCXJldCA9IHdmeF9jbWRfc2VuZCh3dmlmLT53ZGV2LCBoaWYsIE5VTEws
IDAsIGZhbHNlKTsKIAlrZnJlZShoaWYpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfdHguaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmgKaW5kZXggZTg4NTVlYWQz
YTE4Li5mYmFlZDk5MWIxMTIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4
LmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguaApAQCAtMTIsNiArMTIsOCBAQAog
CiAjaW5jbHVkZSAiaGlmX2FwaV9jbWQuaCIKIAorc3RydWN0IGllZWU4MDIxMV9jaGFubmVsOwor
c3RydWN0IGllZWU4MDIxMV9ic3NfY29uZjsKIHN0cnVjdCBpZWVlODAyMTFfdHhfcXVldWVfcGFy
YW1zOwogc3RydWN0IGNmZzgwMjExX3NjYW5fcmVxdWVzdDsKIHN0cnVjdCB3ZnhfZGV2OwpAQCAt
NTEsNyArNTMsOCBAQCBpbnQgaGlmX2FkZF9rZXkoc3RydWN0IHdmeF9kZXYgKndkZXYsIGNvbnN0
IHN0cnVjdCBoaWZfcmVxX2FkZF9rZXkgKmFyZyk7CiBpbnQgaGlmX3JlbW92ZV9rZXkoc3RydWN0
IHdmeF9kZXYgKndkZXYsIGludCBpZHgpOwogaW50IGhpZl9zZXRfZWRjYV9xdWV1ZV9wYXJhbXMo
c3RydWN0IHdmeF92aWYgKnd2aWYsIHUxNiBxdWV1ZSwKIAkJCSAgICAgIGNvbnN0IHN0cnVjdCBp
ZWVlODAyMTFfdHhfcXVldWVfcGFyYW1zICphcmcpOwotaW50IGhpZl9zdGFydChzdHJ1Y3Qgd2Z4
X3ZpZiAqd3ZpZiwgY29uc3Qgc3RydWN0IGhpZl9yZXFfc3RhcnQgKmFyZyk7CitpbnQgaGlmX3N0
YXJ0KHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBjb25zdCBzdHJ1Y3QgaWVlZTgwMjExX2Jzc19jb25m
ICpjb25mLAorCSAgICAgIGNvbnN0IHN0cnVjdCBpZWVlODAyMTFfY2hhbm5lbCAqY2hhbm5lbCk7
CiBpbnQgaGlmX2JlYWNvbl90cmFuc21pdChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgYm9vbCBlbmFi
bGUpOwogaW50IGhpZl9tYXBfbGluayhzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgdTggKm1hY19hZGRy
LCBpbnQgZmxhZ3MsIGludCBzdGFfaWQpOwogaW50IGhpZl91cGRhdGVfaWUoc3RydWN0IHdmeF92
aWYgKnd2aWYsIGNvbnN0IHN0cnVjdCBoaWZfaWVfZmxhZ3MgKnRhcmdldF9mcmFtZSwKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0
YS5jCmluZGV4IDhjNTUwODliMWVhNC4uNjYwYTc1MDI0ZjRiIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKQEAgLTc0
MCwzOCArNzQwLDI0IEBAIHN0YXRpYyB2b2lkIHdmeF9zZXRfY3RzX3dvcmsoc3RydWN0IHdvcmtf
c3RydWN0ICp3b3JrKQogc3RhdGljIGludCB3Znhfc3RhcnRfYXAoc3RydWN0IHdmeF92aWYgKnd2
aWYpCiB7CiAJaW50IHJldDsKLQlzdHJ1Y3QgaWVlZTgwMjExX2Jzc19jb25mICpjb25mID0gJnd2
aWYtPnZpZi0+YnNzX2NvbmY7Ci0Jc3RydWN0IGhpZl9yZXFfc3RhcnQgc3RhcnQgPSB7Ci0JCS5j
aGFubmVsX251bWJlciA9IHd2aWYtPmNoYW5uZWwtPmh3X3ZhbHVlLAotCQkuYmVhY29uX2ludGVy
dmFsID0gY29uZi0+YmVhY29uX2ludCwKLQkJLmR0aW1fcGVyaW9kID0gY29uZi0+ZHRpbV9wZXJp
b2QsCi0JCS5zaG9ydF9wcmVhbWJsZSA9IGNvbmYtPnVzZV9zaG9ydF9wcmVhbWJsZSwKLQkJLmJh
c2ljX3JhdGVfc2V0ID0gd2Z4X3JhdGVfbWFza190b19odyh3dmlmLT53ZGV2LAotCQkJCQkJICAg
ICAgY29uZi0+YmFzaWNfcmF0ZXMpLAotCX07CiAKLQltZW1zZXQoc3RhcnQuc3NpZCwgMCwgc2l6
ZW9mKHN0YXJ0LnNzaWQpKTsKLQlpZiAoIWNvbmYtPmhpZGRlbl9zc2lkKSB7Ci0JCXN0YXJ0LnNz
aWRfbGVuZ3RoID0gY29uZi0+c3NpZF9sZW47Ci0JCW1lbWNweShzdGFydC5zc2lkLCBjb25mLT5z
c2lkLCBzdGFydC5zc2lkX2xlbmd0aCk7Ci0JfQotCi0Jd3ZpZi0+YmVhY29uX2ludCA9IGNvbmYt
PmJlYWNvbl9pbnQ7Ci0Jd3ZpZi0+ZHRpbV9wZXJpb2QgPSBjb25mLT5kdGltX3BlcmlvZDsKKwl3
dmlmLT5iZWFjb25faW50ID0gd3ZpZi0+dmlmLT5ic3NfY29uZi5iZWFjb25faW50OworCXd2aWYt
PmR0aW1fcGVyaW9kID0gd3ZpZi0+dmlmLT5ic3NfY29uZi5kdGltX3BlcmlvZDsKIAogCW1lbXNl
dCgmd3ZpZi0+bGlua19pZF9kYiwgMCwgc2l6ZW9mKHd2aWYtPmxpbmtfaWRfZGIpKTsKIAogCXd2
aWYtPndkZXYtPnR4X2J1cnN0X2lkeCA9IC0xOwotCXJldCA9IGhpZl9zdGFydCh3dmlmLCAmc3Rh
cnQpOwotCWlmICghcmV0KQotCQlyZXQgPSB3ZnhfdXBsb2FkX2tleXMod3ZpZik7Ci0JaWYgKCFy
ZXQpIHsKLQkJaWYgKHd2aWZfY291bnQod3ZpZi0+d2RldikgPD0gMSkKLQkJCWhpZl9zZXRfYmxv
Y2tfYWNrX3BvbGljeSh3dmlmLCAweEZGLCAweEZGKTsKLQkJd3ZpZi0+c3RhdGUgPSBXRlhfU1RB
VEVfQVA7Ci0JCXdmeF91cGRhdGVfZmlsdGVyaW5nKHd2aWYpOwotCX0KLQlyZXR1cm4gcmV0Owor
CXJldCA9IGhpZl9zdGFydCh3dmlmLCAmd3ZpZi0+dmlmLT5ic3NfY29uZiwgd3ZpZi0+Y2hhbm5l
bCk7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKwlyZXQgPSB3ZnhfdXBsb2FkX2tleXMod3Zp
Zik7CisJaWYgKHJldCkKKwkJcmV0dXJuIHJldDsKKwlpZiAod3ZpZl9jb3VudCh3dmlmLT53ZGV2
KSA8PSAxKQorCQloaWZfc2V0X2Jsb2NrX2Fja19wb2xpY3kod3ZpZiwgMHhGRiwgMHhGRik7CisJ
d3ZpZi0+c3RhdGUgPSBXRlhfU1RBVEVfQVA7CisJd2Z4X3VwZGF0ZV9maWx0ZXJpbmcod3ZpZik7
CisJcmV0dXJuIDA7CiB9CiAKIHN0YXRpYyBpbnQgd2Z4X3VwZGF0ZV9iZWFjb25pbmcoc3RydWN0
IHdmeF92aWYgKnd2aWYpCi0tIAoyLjI1LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
