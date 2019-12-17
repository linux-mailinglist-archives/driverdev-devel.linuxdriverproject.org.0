Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B33AC12316D
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:15:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 603578605E;
	Tue, 17 Dec 2019 16:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id boq2awZerS7i; Tue, 17 Dec 2019 16:15:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 573ED85F54;
	Tue, 17 Dec 2019 16:15:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9BF8E1BF2B3
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:15:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8F5B485F79
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OTzpj_r78td5 for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:15:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2062.outbound.protection.outlook.com [40.107.92.62])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC54D85F67
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:15:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U9Ltf9VScfQutYQq9FVdzwHeAbuuWZjZNac3L9i43+O/0r5o6YdlOQ40wRcbeJTePMtBpYhQrlYGtYmVUEcW3Y7PuG25to59IEmFlx1IKVZudgh25OR4halP8fnhJKh7hUgCLoidUEs7mZ0jnwnn1TOmm9+jXK0A+aPQKS6FNaVhMwnGj1RlERa8kLAXCLtqtvmYgg3H7NuAp1iDp2yiuz47yJS6fA+hYgR7h/38UcAMOWaDRUmbhoy8sOEq280zNAx1QwquIdsxAPihCbT+AK/dilpbsKZCO7dYaEEgFGCYdBj94lakcO/Z66QwYqwagixe+ngEYYh9f6vWkarfSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rzqXR4OSD6Tjju7AAqCftCCo3sqtHwOS4ZKeJqhwSrE=;
 b=EK13J/slWFx1gU0dW20lMl1KXlj8pO2jyyzrP37Tev9KQ077EupWK929DjFSzSgcQb7R66SNmwD/6bv0JO+LaCh9r18+wGBJV3AjGE5UilfGhRW4VP6/drzWYPaUsQo8j05A1DiVQRFu4K/ZRlwxdwE3cyZS/ku36bXR5Y+pNssklJyPkQVp7gEN7fDaKahgUJvAjNclhXkS8MTEjDKZZHI9729OGnXGv8sWUR00S0teA9XAQsnz2fZE7Q9haqe7poSd4obn8/KMDtspZs/LZQeC+PLQVVZV+GU/bDCjcBfvTvdVKZNEJJ7+ByXEMGRAcHIbIOZfnYCvd1IJWgFJkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rzqXR4OSD6Tjju7AAqCftCCo3sqtHwOS4ZKeJqhwSrE=;
 b=PcmI1SAQVRlY1EDwcTPJC8fsPJmKK5DBsIZaWVJPs1hQoWalA2Texyt+jcq9Gt0yAYTFWaVcE1Ijqpz6D3PByYN/YPBi8p5hMc4VqALQI/ceHCDOrNmAAJwMIRtLltGrGvh8vxaBOn0rYQ+YMjJVRKjG/pHAFmKv4VyuiR/U1a0=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4208.namprd11.prod.outlook.com (52.135.36.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.20; Tue, 17 Dec 2019 16:15:03 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:15:03 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 25/55] staging: wfx: fix name of struct
 hif_req_start_scan_alt
Thread-Topic: [PATCH v2 25/55] staging: wfx: fix name of struct
 hif_req_start_scan_alt
Thread-Index: AQHVtPUjcdBK6IlpOEisv8L/VkdNZg==
Date: Tue, 17 Dec 2019 16:15:03 +0000
Message-ID: <20191217161318.31402-26-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: a4941d4d-0f00-4735-c5f1-08d7830c45de
x-ms-traffictypediagnostic: MN2PR11MB4208:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4208ABCFE015FF2703A9F95793500@MN2PR11MB4208.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:873;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(396003)(366004)(136003)(376002)(346002)(199004)(189003)(5660300002)(316002)(6506007)(85182001)(478600001)(71200400001)(2906002)(36756003)(186003)(26005)(81166006)(54906003)(1076003)(110136005)(66574012)(4326008)(8676002)(86362001)(6486002)(52116002)(6512007)(64756008)(85202003)(66946007)(66476007)(66446008)(66556008)(8936002)(107886003)(2616005)(4744005)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4208;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6gCkb7ZhQEl/H2efPmuOiwqpcCkWaxOn0kaglDmjpxy9R/XhvP22tcQ+gVxiKWq+e4I1y45JRCZZSCa1nSmiKHYFZ0yHLyWnxzuitnEjLX2e73Z8PbB0e198VMSIf6czG0MeJrN9Sz0F6LV+43lkRUOwclw8SziBRXT0IN0BNIpcIaCw2tEfoZ4t9s9LCBdnT5sbQPbTKhbhv/xf9A2VUEQlonfuLrTC1G5/SGNX5guLSM383Q1TargPsB2i02cok6KpkRyCD1IgGfvnXU3aXCUaUAwl0ttu1GSrbvRTRzGnhUI9Ntt99dZup/Im1QosdCraAvM/RGtC2/tdSNkV9h7zqpGwNFmOsfAHn3x8ndTYm/cJ73/0AwvpJ7mQbycEpVKH4C5qtpO7u2XNaCIgfvAXQQT2GHStwlTLx8+emlmcTvK2PGbWa1r/je7g2/1T
Content-ID: <DDF88EB0E042914EAE4D131E44B8CC96@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4941d4d-0f00-4735-c5f1-08d7830c45de
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:15:03.4006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H0zMjQ6X6RjDV24rloizsOSZZW2l3ZrUEwIFBZB3ygfAm9TttJUlNt/hACHVbWOR9eAsnLOllacfZMCaDoldHw==
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
IG9yaWdpbmFsIG5hbWUgZGlkIG5vdCBtYWtlIGFueSBzZW5zZS4KClNpZ25lZC1vZmYtYnk6IErD
qXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJz
L3N0YWdpbmcvd2Z4L2hpZl9hcGlfY21kLmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2hpZl9hcGlfY21kLmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfY21kLmgKaW5kZXgg
M2U3N2ZiZTNkNWZmLi40Y2UzYmI1MWNmMDQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvaGlmX2FwaV9jbWQuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfY21kLmgK
QEAgLTE4OCw3ICsxODgsNyBAQCBzdHJ1Y3QgaGlmX3JlcV9zdGFydF9zY2FuIHsKIAl1OCAgICBz
c2lkX2FuZF9jaGFubmVsX2xpc3RzW107CiB9IF9fcGFja2VkOwogCi1zdHJ1Y3QgaGlmX3N0YXJ0
X3NjYW5fcmVxX2NzdG5ic3NpZF9ib2R5IHsKK3N0cnVjdCBoaWZfcmVxX3N0YXJ0X3NjYW5fYWx0
IHsKIAl1OCAgICBiYW5kOwogCXN0cnVjdCBoaWZfc2Nhbl90eXBlIHNjYW5fdHlwZTsKIAlzdHJ1
Y3QgaGlmX3NjYW5fZmxhZ3Mgc2Nhbl9mbGFnczsKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVs
QGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2pl
Y3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
