Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FE912315D
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:15:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9776E20522;
	Tue, 17 Dec 2019 16:15:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AHKrgHJK89FX; Tue, 17 Dec 2019 16:15:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 728BC204C0;
	Tue, 17 Dec 2019 16:15:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 279A71BF2B3
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D5D5204FE
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:14:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yj-LjinDuvDG for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:14:51 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr770059.outbound.protection.outlook.com [40.107.77.59])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A0D3204CE
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:14:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O9YyL0umP8eXsBm6DeKSmPSNwQaNP6/4LMuD6eck9nS6xrOoAIQJui8gICBVcB+fAcT3/mw3W6OonPqvIHdFeUNjeYuFOBTL/GHswLE+/f+Stsim7uvZKOCai4kXkIP8HxWvC5XkvdJkIGPc5O57IvjSToOL9DY7USttf4ZezcALmn7+NPNZyNGH9WiamCVqVk7AJI1UUhRHqhdF/3arzMlTS97eXP/oollo4KhyBGNSR9TQUgcBMix8P30l7HCtO046komsVKtmhJAAJulFghMKHBrOvhmRdCNxlNZ+k6GQx5JoalOtNcq/reTUJL4+JNZFo9QGluAJt0mshdQADg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTZ2mHQAOdzhtudBdg9k79F/qN3A9xgRWs5Gtagwc+o=;
 b=Apcv8yEXJ5clOcxl00VVz1pe07PtC5tNX87LLm3emCyzyd0yngIs4GQHL/WWQSAFErzrqHfYZIwydI/K00BDAnVemkcjGmUC/NKWldjlyYjkQGW0dkvGzrSdj9n2lEVTl0HdqUTyqf8VmU61XyZqprgYkDAd2AS1WZMbm6RzYU8XBoDkw1IPwEKEjgqkilcfLaXz+Sr3DlSZPSPNWC6OUvJbXLMqzz2cFyzdTXQkL3z2RqWjDtaqpXKY/Vosl/Ns50jB6636ugO5UvkmaBdUXdiFrMuWNowGxz6zBhX2ZCJznlLP0HcJI3xD+i+TKIJyP4i/X9lhiavH0UuYLOiwUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YTZ2mHQAOdzhtudBdg9k79F/qN3A9xgRWs5Gtagwc+o=;
 b=piWa2k2MOdZDWxbbFnW98taVevwWoHD8syzugx2ogpRwmDeJ3F1p56eioJrMcWZUBrv0ws/x/4pStHM+G/gA3VDUS5wiFOrTt4h78diMey6SpddYQD3D0yfG6kKr5tjlhcAG9OKvZarU+yakeP6mBsqWBvpW8FMt+joPv9uSORQ=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.254.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Tue, 17 Dec 2019 16:14:50 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:14:49 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 15/55] staging: wfx: take advantage of IS_ERR_OR_NULL()
Thread-Topic: [PATCH v2 15/55] staging: wfx: take advantage of IS_ERR_OR_NULL()
Thread-Index: AQHVtPUaVu3WG5LOh0qy2MRcQq8tLg==
Date: Tue, 17 Dec 2019 16:14:48 +0000
Message-ID: <20191217161318.31402-16-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: bbfdf93d-df18-4ed4-ca78-08d7830c3c70
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3678A516D3CB1EE3FFE2000193500@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:257;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(366004)(39860400002)(136003)(199004)(189003)(6512007)(66574012)(1076003)(4744005)(478600001)(86362001)(8936002)(110136005)(316002)(2616005)(26005)(6506007)(5660300002)(36756003)(6486002)(66946007)(66476007)(66556008)(64756008)(66446008)(71200400001)(52116002)(85182001)(81166006)(81156014)(8676002)(54906003)(107886003)(2906002)(4326008)(186003)(85202003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Fpdou2V8nGI1bBriUaUXEmHqtrjOrSCr9WF8qv2THZWElxfnFfUA1zmpLPN/zFlQEcSfqxbpFHdiFmODXDjwymo2xfcbGH0zGzDGQx7OeM56GDjLlmuEpH5i5ypbDcAivd05HC10G0aAMh5aXLUEfrCPqypM+aWFaAKopQhnk8HgC1L4kAhIzqgR2DZ7taODKD0CG8P8PJN4SI1K6LDgrEKYnGr6e4piW46AzIGiNKuCEamlDLHHtu+JNmS9HAYS6Tz4aTDjZH9XWXMF+GijkRUOp2rwj4UUVDIoyRc+8cFrvA6KRT+Vu+La7sWDUlxGuKlk32o0KgJ+DQXS0k0iQQr/RIDYNeXJ50O7s21AeMYytwQxGdPcWzSmrTntlWrlWpasoU2ujhaZ9JDSsJsi/CkK+5Ua50FVBgLr1c5z/a0IKHZ32J7f+akQ4UBA0+q2
Content-ID: <0E738CADD67D264EBBB70178CC175465@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbfdf93d-df18-4ed4-ca78-08d7830c3c70
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:14:49.0296 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qZg7BUnnSR73qQaL+duV7rxSMLP8+8ePOMyG4Xyqepqun8W/CXtp2vs7J3pSy1dIkPdiHFh7mqiKKP9xFDbw/Q==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKT2J2
aW91c2x5LCBjdXJyZW50IGNvZGUgY2FuIGJlIHJlcGxhY2VkIGJ5IElTX0VSUl9PUl9OVUxMKCku
CgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFi
cy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L21haW4uYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCmluZGV4IDNi
NDdiNmMyMWVhMS4uY2Y0YmNiMTRhMTJkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L21haW4uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYwpAQCAtMTgyLDcgKzE4Miw3
IEBAIHN0cnVjdCBncGlvX2Rlc2MgKndmeF9nZXRfZ3BpbyhzdHJ1Y3QgZGV2aWNlICpkZXYsIGlu
dCBvdmVycmlkZSwKIAl9IGVsc2UgewogCQlyZXQgPSBkZXZtX2dwaW9kX2dldChkZXYsIGxhYmVs
LCBHUElPRF9PVVRfTE9XKTsKIAl9Ci0JaWYgKElTX0VSUihyZXQpIHx8ICFyZXQpIHsKKwlpZiAo
SVNfRVJSX09SX05VTEwocmV0KSkgewogCQlpZiAoIXJldCB8fCBQVFJfRVJSKHJldCkgPT0gLUVO
T0VOVCkKIAkJCWRldl93YXJuKGRldiwgImdwaW8gJXMgaXMgbm90IGRlZmluZWRcbiIsIGxhYmVs
KTsKIAkJZWxzZQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
