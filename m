Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF6ACF6D7
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 12:17:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC78C87653;
	Tue,  8 Oct 2019 10:17:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xdFQrE3LMEwp; Tue,  8 Oct 2019 10:17:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D816386138;
	Tue,  8 Oct 2019 10:17:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4B0371BF857
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:17:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 470E786138
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 10:17:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nxvSL-OED8Df for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 10:17:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690089.outbound.protection.outlook.com [40.107.69.89])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 59D0E860D6
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 10:17:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CueTQgWm1RpQ47DFRlBsZ7fZOFTsHE4q9agBU3MxobhnejG4LGTo3VgYKLcTL+NquKah9xQgHfC15YP2YQYM9YmcKF+mRjk31v74IXiWuUNpMngvOtls6FD89TX2Y9H0IfRKXv+A6gb7LD2tpIS9Pfj4s7J3RTLBJ6NrpO/nqyEKf/muyAO70UyZOkK8WyIXj5jl00Lgar4a9PithvmvIm7y5KPRtYlPkqS/CTeP/X1etBbana5qMhiPeP1TsFiiVtYTFKAjmrZFyt79A2nD/S0yxal8MCFfyj/kDgrjlWIjenOfKS/pXzjFc1PewylPTN0CWDlBec4AVq+ur507/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LoQzjU6YOT8EjgWMgR3QW4SSE1YYi6nX+u9IJqmElJo=;
 b=DbtGnhDvn/WS759qaZnw/3cGx81dLk7U7eArTouH5IdRd3FMDjKLwhqt35cjMRpMFjAuSzVWABli9jviPP0bltM6YDaxUngMRwa+yVqrz01fbhjLvh5m3MM4KNSPAzA+I/9/mRt8dcLRIn6xIGbhSoOWSVfSwkAmK+v32m7z9apQYU1YLdXtpWjypNr62Ez2lKQ6NXsYbCP4ScX8IksWH61lixebq3U9tCEQGlRd9Pj5WVXlyBXnhdZapPpOT29V8SiPRHlC/Pnoxvi38+bmI8vJcNjW3HyU8SXRGLUQ8WKRKgAqmtWUbeUzZbxZATcGpLfcfyni0EOZ5i5qhggz6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LoQzjU6YOT8EjgWMgR3QW4SSE1YYi6nX+u9IJqmElJo=;
 b=NdNQl0v8Eu3XpVBxMHJ8qOLSy5cgLVyF3IrLcT8i1lznQTSFhYknk5x0xuowCMaGLdJrW5mbbanua2/jZ6uwc0Z1bCFZXa8cPjLQSDjbAiit2oXdBJ8Eky03BSfY9iRHk/8nmKBg0EC0pun7hjSMgeF+/LL1PwEAQgkiY3P8BGM=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4333.namprd11.prod.outlook.com (10.255.90.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.16; Tue, 8 Oct 2019 09:43:00 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ac8c:fc55:d1e2:465f%5]) with mapi id 15.20.2347.016; Tue, 8 Oct 2019
 09:43:00 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Subject: [PATCH 3/7] staging: wfx: le16_to_cpus() takes a reference as
 parameter
Thread-Topic: [PATCH 3/7] staging: wfx: le16_to_cpus() takes a reference as
 parameter
Thread-Index: AQHVfbzFjQSq6cS3Fk2I8eWM88IyZA==
Date: Tue, 8 Oct 2019 09:42:59 +0000
Message-ID: <20191008094232.10014-4-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: c03bf12a-f772-4eeb-8801-08d74bd3e85f
x-ms-traffictypediagnostic: MN2PR11MB4333:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB43336797543A4F6F7CA89324939A0@MN2PR11MB4333.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:565;
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
x-microsoft-antispam-message-info: hs6Y3inuGP1Yx747aTSS8O0beuIdNLk3yCj26LBEbRjoeJup+0+e4UoyE/cS4DEl+1qXHgJVrxL1Qh9peb5J3BcrVddTz+Btt1aEBS9C1xwEqMVxQeZ66Qy/ld35h41YXSCBqE4wNZL+hv0li54Z6+UiLq3ngGxLuH0LDsPLSb/28Ipg0HTdkD5TxzB23Rl/FpQnvgs10OSIbVbAs18odLLSvaxR33lYNEcGVEAV2hGKQ8K9EnTbYATZGVeKt4tQhf5IY2bi9wGd+FSPJh6I/pc5hGYMm7FBQnoDrHgqG1Z6jrqeXpHhVhupodQNzs4YAG7r5bmpVas1663a5k3H5qMYNu/sNOKHEu1Znul5CM4uxyDPiGWQx59Jn2TQxLtcap2mdilaNazC+MglNW/RQj7RpJBthNgYJp+kRFE8sro=
Content-ID: <BD26361C8380E540BB8283EF980EA5DE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c03bf12a-f772-4eeb-8801-08d74bd3e85f
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2019 09:42:59.8155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LiBzeQC8ft+BEEXVe2SQjSG5t7Q1rjgB1f2tGjB+uZ9qLhnlmal2uUc2X1Xr23Kki3CH1Dl4APgifl+zZxqAeQ==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPg0KDQpP
cmlnaW5hbCBjb2RlIGNhdXNlZCBhbiAoMTAwJSByZXByb2R1Y2libGUpIGludmFsaWQgbWVtb3J5
IGFjY2VzcyBvbg0KYmlnLWVuZGlhbiB0YXJnZXRzLg0KDQpGaXhlczogYjA5OThmMGMwNDBkICJz
dGFnaW5nOiB3Zng6IGFkZCBJUlEgaGFuZGxpbmciDQpSZXBvcnRlZC1ieToga2J1aWxkIHRlc3Qg
cm9ib3QgPGxrcEBpbnRlbC5jb20+DQpSZXBvcnRlZC1ieTogU3RlcGhlbiBSb3Rod2VsbCA8c2Zy
QGNhbmIuYXV1Zy5vcmcuYXU+DQpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVy
b21lLnBvdWlsbGVyQHNpbGFicy5jb20+DQotLS0NCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMg
fCA0ICsrLS0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQ0KDQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jIGIvZHJpdmVycy9zdGFn
aW5nL3dmeC9iaC5jDQppbmRleCA2MDAwYzAzYmI2NTguLjM3MTViYjE4YmQ3OCAxMDA2NDQNCi0t
LSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYmguYw0KKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9i
aC5jDQpAQCAtODMsMTIgKzgzLDEyIEBAIHN0YXRpYyBpbnQgcnhfaGVscGVyKHN0cnVjdCB3Znhf
ZGV2ICp3ZGV2LCBzaXplX3QgcmVhZF9sZW4sIGludCAqaXNfY25mKQ0KIAkJCS8vIHBpZ2d5YmFj
ayBpcyBwcm9iYWJseSBjb3JyZWN0Lg0KIAkJCXJldHVybiBwaWdneWJhY2s7DQogCQl9DQotCQls
ZTE2X3RvX2NwdXMoaGlmLT5sZW4pOw0KKwkJbGUxNl90b19jcHVzKCZoaWYtPmxlbik7DQogCQlj
b21wdXRlZF9sZW4gPSByb3VuZF91cChoaWYtPmxlbiAtIHNpemVvZihoaWYtPmxlbiksIDE2KQ0K
IAkJCSAgICAgICArIHNpemVvZihzdHJ1Y3QgaGlmX3NsX21zZykNCiAJCQkgICAgICAgKyBzaXpl
b2Yoc3RydWN0IGhpZl9zbF90YWcpOw0KIAl9IGVsc2Ugew0KLQkJbGUxNl90b19jcHVzKGhpZi0+
bGVuKTsNCisJCWxlMTZfdG9fY3B1cygmaGlmLT5sZW4pOw0KIAkJY29tcHV0ZWRfbGVuID0gcm91
bmRfdXAoaGlmLT5sZW4sIDIpOw0KIAl9DQogCWlmIChjb21wdXRlZF9sZW4gIT0gcmVhZF9sZW4p
IHsNCi0tIA0KMi4yMC4xDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpo
dHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9k
cml2ZXJkZXYtZGV2ZWwK
