Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E3112314E
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:14:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1B74886BBD;
	Tue, 17 Dec 2019 16:14:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6mE0K1lHmBmR; Tue, 17 Dec 2019 16:14:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40F6E86ACB;
	Tue, 17 Dec 2019 16:14:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E2DED1BF2B3
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DD5598582C
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wEh5rHjGlEwi for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:14:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770087.outbound.protection.outlook.com [40.107.77.87])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AD5A48619A
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:14:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R0xtDj1/ouMCxEWPsZLiGKaitYjL0uGVfGilhnP9yq1XBVE3oX9iZgsK41i4gLwYsodu8HIxtjpKUJishQvZhbkP0Zb9VuWsGInsswdL3pjgO4mQx5/yWTov/ZWCrenZVZUPB0bpArXbf8zV7EP2MGi0NQqSe8w9W2PR5442hbK4CEN/hOBY7OQv8y8B5Pu9UoYDzcO0bQw2RvW2CruqpqDvKRldDOYVWVrRucLVGcvLjGfP8HZJ4mG9xU1vDSlEPYMWrw9jHRL5sE3ochzTZqMXS0XHhAvlARDhgAHK5yAljvZuvTBDKyoZjiP8ZAvx7OFJ55fo/sMMvVGr+zrpXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UXO891/8R6v+gO7K16xmZhP1Ik0gLvhGwJ1VwG/esPs=;
 b=IYCi8a5oRog1hb4/0Qxorz2OQ+0xJhDjYHV182bn+juVPyqJyy6a3IzbC24T6/tMbprUURMUKxIoXwxUvBS5Z0Iostm4nOwKmI6ZLZKDyHcSoxG8xRgZYd3cOKcbCGB9n8nDurVAVIsJCHYZm3Dqe+L2rYTeHQ0+puxtEVXKm3TJ5YJVj2Prk0nv78lxEgV2hfcQ5yWfeALS6Gw6QXkWlDoeUnMvRWJM2x7JIclMOeCVe26VJdUdr0/adWOz2uQNa5cyf4q6IK7LOoPcuRCvZm83WbSf15T6NXmTJhkuxMqRXiBpV9SiNLMO1Se/mvr1NscWRmw1tntf9PcBOi5dOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UXO891/8R6v+gO7K16xmZhP1Ik0gLvhGwJ1VwG/esPs=;
 b=h6JFMIwsMOSC5w/m+nGn6o7HGVy1aBSIbWJMqI+KkgMepSSCLvdLFF5Ox2w2bS0r9ch1JQ7y+LUdyYpdP01rOYnRGZnkW9rLPTuWwo6jhcQgVhrX6pVxF2TMG1nUDXuNtgryYGXZWH2rlv1cr6T+LOIuSo2TD707I6nQSSxgpvU=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.254.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Tue, 17 Dec 2019 16:14:37 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:14:37 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 08/55] staging: wfx: detect race condition in WEP
 authentication
Thread-Topic: [PATCH v2 08/55] staging: wfx: detect race condition in WEP
 authentication
Thread-Index: AQHVtPUUqkxVBx5Uz0+0nJd0TGy/gg==
Date: Tue, 17 Dec 2019 16:14:37 +0000
Message-ID: <20191217161318.31402-9-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: be061756-d915-4535-bda4-08d7830c3662
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3678510037DFB8ABB74A72FD93500@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39840400004)(366004)(136003)(199004)(189003)(6512007)(66574012)(1076003)(4744005)(478600001)(86362001)(8936002)(110136005)(316002)(2616005)(26005)(6506007)(5660300002)(36756003)(6486002)(66946007)(66476007)(66556008)(64756008)(66446008)(71200400001)(52116002)(85182001)(81166006)(81156014)(8676002)(54906003)(107886003)(2906002)(4326008)(186003)(85202003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5J99McFCkM/3lJGPAE31UgSTwvUXZZHQ4JJ6osOtGPZkHR+ufJJIAKvW6NVcZKkKpv+V0RkFCdehFPdTiQc9f283Q+EJq38c6SYM25gzXNCkfHMnKzKfxd/oZk9BpmkRK1jlXWzd8ZYwIaK/Bgrg4f9YRkWLKWkuAA/RFcBhIOw7hr+AhvbL2dKVmkTp841yofM8yKR2MVBU4CwyXeyKRGag0AB0L0u51yOet/cUO9K6bS4is9qY0bpSCs6E6zddl+u+MvCGQVP0adHMBCDzCTUrJ9LCeRLR8Oz+UK8umYnc2XsYYHjxbBCK/Ky3Plx+CN8GGFUuCa902q3WW/b+g+22SnSKFxS1fH/qY9CtMrMVAFmbfCOW2gVL4zb3SUfhKqwhInVNWFQpsOn6nowGdDyQRFythALo62rgQndU79IVq8NYQ2Ooe149jpArtS4Q
Content-ID: <693C21275C1F0D4C888A47C0E60BF702@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be061756-d915-4535-bda4-08d7830c3662
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:14:37.4150 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K/bSdzY8krrCHYrzgW1nJKRDiypUZPEs9DSNjvie5muyT9+4ZyD164t4+p7B+kgv9x5vIWKY5umKKgcAUcXkyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3678
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
cmVudCBjb2RlIGhhcyBhIHNwZWNpYWwgY2FzZSB0byBoYW5kbGUgYXNzb2NpYXRpb24gd2l0aCBX
RVAuIEJlZm9yZQp0byByZXdvcmsgdGhlIHR4IGRhdGEgaGFuZGxpbmcsIGxldCdzIHRyeSB0byBk
ZXRlY3QgYW55IHBvc3NpYmxlIG1pc3VzZQpvZiB0aGlzIGNvZGUuCgpTaWduZWQtb2ZmLWJ5OiBK
w6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVy
cy9zdGFnaW5nL3dmeC9xdWV1ZS5jIHwgMSArCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24o
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3F1ZXVlLmMgYi9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3F1ZXVlLmMKaW5kZXggYzdlZTkwODg4ZjY5Li42ODBmZWQzMWNlZmIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvcXVldWUuYworKysgYi9kcml2ZXJzL3N0YWdpbmcv
d2Z4L3F1ZXVlLmMKQEAgLTQyMiw2ICs0MjIsNyBAQCBzdGF0aWMgYm9vbCBoaWZfaGFuZGxlX3R4
X2RhdGEoc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBza19idWZmICpza2IsCiAJCWJyZWFr
OwogCWNhc2UgZG9fd2VwOgogCQl3ZnhfdHhfbG9jayh3dmlmLT53ZGV2KTsKKwkJV0FSTl9PTih3
dmlmLT53ZXBfcGVuZGluZ19za2IpOwogCQl3dmlmLT53ZXBfZGVmYXVsdF9rZXlfaWQgPSB0eF9w
cml2LT5od19rZXktPmtleWlkeDsKIAkJd3ZpZi0+d2VwX3BlbmRpbmdfc2tiID0gc2tiOwogCQlp
ZiAoIXNjaGVkdWxlX3dvcmsoJnd2aWYtPndlcF9rZXlfd29yaykpCi0tIAoyLjI0LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcg
bGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhk
cml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
