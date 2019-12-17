Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 380EE123282
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:31:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 63E90203F1;
	Tue, 17 Dec 2019 16:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fyhLOR5saEFc; Tue, 17 Dec 2019 16:31:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D71B120785;
	Tue, 17 Dec 2019 16:31:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7170E1BF2B3
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 671EA87D94
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UYFhYu-NR51p for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:31:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770075.outbound.protection.outlook.com [40.107.77.75])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B19AB87D86
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:31:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oD5f2GYKWBs4eB01On7O+YEzhiXF3e88GKvLkuenBy87+M/xTJqgVzgBBDoj+tjfUesJBia+IpVVr71ithPw71OxnK3McD3ibaJPZJkW1Ys+YyFa6Jcg4JJo8cYvv+rjEc3ao1LIZuFDh12j/CjMKNYY+2iGBFSfBwLKsz7jePSyWu6VGMroceMva5ECWFP6HCY5KgQvuH3hQtmwnMkLKwLpGSApAcXFOOolOgrCOIoEumP+aTQxtzUkGnoI2fi42w3vvMRGFOaXc2yFDB/UWadEvWWcfbhx10D31HYPgovDOzVd5DstxsB8G9Xbye6svIwlwgCW/cS10OMqhFyy9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y33ignvCp+2GinP/MWfVexEnxeePITEC0OtPfj23pfw=;
 b=ikDeA878PmNNWxj7PD/YiovbQ5n7f670H1k/MrWTo1FEd9//WejDuP6elRfnk7jdEg8nPIMNCJjwlZYj6+tJq9C6hUk24+n50qR8yqe7cBoRYI29cDP/KWJyx3iQEAkp8w1WVbIVAWGfwFuFVEoBRKQHm+Q5LaAMW59Qusk9sRqDH1fwnwGzSEpXjOaZ2YujlmbxSTdFarw/r9L5Jdbgt4Z9ZcxMgi3Pt9FfWa/wPBxVN0r66V2Y0t0vgp1BEL7CZaH4o+Wck9CrVpLzrJ+fswGI3fxhQpy0dS3aYwqOkjfLYgWbQhhHohAB2cqxJyTIj8PJScTAbxx+qPPzDe9RsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y33ignvCp+2GinP/MWfVexEnxeePITEC0OtPfj23pfw=;
 b=e2ZQLv3dUPXKMz4/PGLNas+UUVp+jyzvH8NwrOZAgF0FAO0H+R9FG0cPjuBi/nRRlTPOl4k5nNkANZRJ3/Di+TMewmVaV/Aj7PtE4Ab5zXD3eaEgL59KFypd90JMUUBNQ5ZK/CIQNSoI5Pp/12KpB9E+Xi3BQS83MSGGaZ9GOko=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4208.namprd11.prod.outlook.com (52.135.36.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.20; Tue, 17 Dec 2019 16:16:04 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:16:04 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 54/55] staging: wfx: implement cancel_hw_scan()
Thread-Topic: [PATCH v2 54/55] staging: wfx: implement cancel_hw_scan()
Thread-Index: AQHVtPU6aYi057RR/UqffDEzXC3u2w==
Date: Tue, 17 Dec 2019 16:15:41 +0000
Message-ID: <20191217161318.31402-55-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 46645ccd-6e4b-4a56-d2bd-08d7830c5c70
x-ms-traffictypediagnostic: MN2PR11MB4208:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4208E0717DB879A86AF88B2293500@MN2PR11MB4208.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:372;
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
x-microsoft-antispam-message-info: GFpyxRl1haePDjD2mVDpiaW4SFulRfyqSreqStJDf1fvM1vmWv245Jumg9W1RPbaZl1Tj39yHplBSaTKreTV1y7Z+pH293suz+DcPcN0aB23kPXiXNtCj4FZKRb9iceimPKHAQIk74yOtdJB3FX2OdxzKFPpJdxoosQdMGAFeGaG02VMUx6MBFKhHLarSnsrkk7M3uHWpu9ZOpiHqUOz7SBJP2n8A51+R8Ad7bN2U5kKFO2sEOXxVGm4ySR3rzM/ubIMJiR1bLBBYLBWFzllw/Uc99ULp4KCkeA9wzCpfnTHKF32yv5s2ICzJ911TPj6gGn19bKV26rEQQvX2A52RJ0ir0Ka7FNxzalY59fgO0yTxQ7Mx3NFzMF0SSb/dudxTOoi2J5vZbQWI7XLEYJfVlR2kd+L5o18qRtenZEkB+hA6bb1tFb3MIdYrjo+A9rf
Content-ID: <BD3006864B93F74781C7533DB37AEF66@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46645ccd-6e4b-4a56-d2bd-08d7830c5c70
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:15:41.1977 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4qjIVPmUO53j+G9bYjYswiOTW5W6xtqUPu5fyEWQQpD91gygNiTR0JQK5A9OCUlpxyqvlFGdQqGOjXbzX0uIfQ==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IGRldmljZSBwcm92aWRlcyBhbiBBUEkgdG8gYWJvcnQgYSBzY2FuIHJlcXVlc3QuIEV4cG9zZSB0
aGlzIGZlYXR1cmUKdG8gbWFjODAyMTEuCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxl
ciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9t
YWluLmMgfCAgMSArCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uYyB8IDEzICsrKysrKysrKysr
KysKIGRyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5oIHwgIDEgKwogZHJpdmVycy9zdGFnaW5nL3dm
eC93ZnguaCAgfCAgMSArCiA0IGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
bWFpbi5jCmluZGV4IGNmNGJjYjE0YTEyZC4uNDVjOTkzOWI3ZTYyIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3N0YWdpbmcvd2Z4L21haW4uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYwpA
QCAtMTM1LDYgKzEzNSw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaWVlZTgwMjExX29wcyB3Znhf
b3BzID0gewogCS50eAkJCT0gd2Z4X3R4LAogCS5jb25mX3R4CQk9IHdmeF9jb25mX3R4LAogCS5o
d19zY2FuCQk9IHdmeF9od19zY2FuLAorCS5jYW5jZWxfaHdfc2NhbgkJPSB3ZnhfY2FuY2VsX2h3
X3NjYW4sCiAJLnN0YV9hZGQJCT0gd2Z4X3N0YV9hZGQsCiAJLnN0YV9yZW1vdmUJCT0gd2Z4X3N0
YV9yZW1vdmUsCiAJLnN0YV9ub3RpZnkJCT0gd2Z4X3N0YV9ub3RpZnksCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5jCmlu
ZGV4IGRkZTJmODg2ODE0Ny4uMjQwNjFkMDljNDA0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdp
bmcvd2Z4L3NjYW4uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uYwpAQCAtNTQsNiAr
NTQsNyBAQCBzdGF0aWMgaW50IHNlbmRfc2Nhbl9yZXEoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJ
CQlicmVhazsKIAl9CiAJd2Z4X3R4X2xvY2tfZmx1c2god3ZpZi0+d2Rldik7CisJd3ZpZi0+c2Nh
bl9hYm9ydCA9IGZhbHNlOwogCXJlaW5pdF9jb21wbGV0aW9uKCZ3dmlmLT5zY2FuX2NvbXBsZXRl
KTsKIAlyZXQgPSBoaWZfc2Nhbih3dmlmLCByZXEsIHN0YXJ0X2lkeCwgaSAtIHN0YXJ0X2lkeCk7
CiAJaWYgKHJldCA8IDApCkBAIC02OCw2ICs2OSwxMCBAQCBzdGF0aWMgaW50IHNlbmRfc2Nhbl9y
ZXEoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJCWhpZl9zdG9wX3NjYW4od3ZpZik7CiAJCXJldHVy
biAtRVRJTUVET1VUOwogCX0KKwlpZiAod3ZpZi0+c2Nhbl9hYm9ydCkgeworCQlkZXZfbm90aWNl
KHd2aWYtPndkZXYtPmRldiwgInNjYW4gYWJvcnRcbiIpOworCQlyZXR1cm4gLUVDT05OQUJPUlRF
RDsKKwl9CiAJcmV0dXJuIGkgLSBzdGFydF9pZHg7CiB9CiAKQEAgLTExNSw2ICsxMjAsMTQgQEAg
aW50IHdmeF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjEx
X3ZpZiAqdmlmLAogCXJldHVybiAwOwogfQogCit2b2lkIHdmeF9jYW5jZWxfaHdfc2NhbihzdHJ1
Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZikKK3sKKwlzdHJ1
Y3Qgd2Z4X3ZpZiAqd3ZpZiA9IChzdHJ1Y3Qgd2Z4X3ZpZiAqKXZpZi0+ZHJ2X3ByaXY7CisKKwl3
dmlmLT5zY2FuX2Fib3J0ID0gdHJ1ZTsKKwloaWZfc3RvcF9zY2FuKHd2aWYpOworfQorCiB2b2lk
IHdmeF9zY2FuX2NvbXBsZXRlKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAogCQkgICAgICAgY29uc3Qg
c3RydWN0IGhpZl9pbmRfc2Nhbl9jbXBsICphcmcpCiB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3NjYW4uaCBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5oCmluZGV4IGI1NDdm
MTkyN2Q3Mi4uYmJhOWYxNWE5ZmY1IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3Nj
YW4uaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3NjYW4uaApAQCAtMTgsNiArMTgsNyBAQCBz
dHJ1Y3Qgd2Z4X3ZpZjsKIHZvaWQgd2Z4X2h3X3NjYW5fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3Qg
KndvcmspOwogaW50IHdmeF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3Qg
aWVlZTgwMjExX3ZpZiAqdmlmLAogCQlzdHJ1Y3QgaWVlZTgwMjExX3NjYW5fcmVxdWVzdCAqcmVx
KTsKK3ZvaWQgd2Z4X2NhbmNlbF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1
Y3QgaWVlZTgwMjExX3ZpZiAqdmlmKTsKIHZvaWQgd2Z4X3NjYW5fY29tcGxldGUoc3RydWN0IHdm
eF92aWYgKnd2aWYsCiAJCSAgICAgICBjb25zdCBzdHJ1Y3QgaGlmX2luZF9zY2FuX2NtcGwgKmlu
ZCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggYi9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3dmeC5oCmluZGV4IGRiNDMzYmVlODdhZi4uMGEzZGYzODJhZjAzIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngv
d2Z4LmgKQEAgLTEyNyw2ICsxMjcsNyBAQCBzdHJ1Y3Qgd2Z4X3ZpZiB7CiAJc3RydWN0IG11dGV4
CQlzY2FuX2xvY2s7CiAJc3RydWN0IHdvcmtfc3RydWN0CXNjYW5fd29yazsKIAlzdHJ1Y3QgY29t
cGxldGlvbglzY2FuX2NvbXBsZXRlOworCWJvb2wJCQlzY2FuX2Fib3J0OwogCXN0cnVjdCBpZWVl
ODAyMTFfc2Nhbl9yZXF1ZXN0ICpzY2FuX3JlcTsKIAogCXN0cnVjdCBjb21wbGV0aW9uCXNldF9w
bV9tb2RlX2NvbXBsZXRlOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJw
cm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1h
bi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
