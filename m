Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6718D123190
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:16:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E26087D9D;
	Tue, 17 Dec 2019 16:16:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ukQILhevObWo; Tue, 17 Dec 2019 16:16:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6FF5F8782A;
	Tue, 17 Dec 2019 16:16:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 098F61BF95F
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 024C886AA1
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:15:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KVV6Hx0uxZ+h for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:15:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2067.outbound.protection.outlook.com [40.107.92.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7246B8619A
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:15:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cc5woHWIBU1vVGxoCPShMpjuvN+dZMDzVjG/UZOHnomc6FVk022YIkQoWMwV90w8BIq+Mzl8bI4mSoU/6z3bvJ6J7Vc0N/C0CYQPqBn7Pyj/GeKSq6PbAV8vEij+FZWlPp7fJDA2mT6eqeTt48gb03SBWutfoY8cShkND/oZCs5Kw1SoFYsNAmVFmm1a/x9TVyhwhaNMcr1jn+yuhn3O+JbgsXwMFZq0Ab7gVokOATX2GkebFvmgrM+48vXUw3XVCaG27UvX98hwS+fc0FLKpae5DCVOmNDrI8mPa0TkCTzmg3Wp9Nh2tip2Esl3/3f0Ns0LKTrl+qs7YGORhuJDaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fBtnj1bNQTnGGhOpk3jCRHj24nG0onADt+L/8QwqKtM=;
 b=WTrGBJD5fkei/w0qMvp7QqMXmzgat3iG5553q22oKs97DkvtffTlXZTFOn+f/w4ZDr6C6Q3Ix2lfaRidsZ6ZqddRyh/gl+4px3o3Rcw352NO1iaaai3Mp3LuE95oV+qqdBVa9otRxw56ezxm862/v+aLj5ZjTGlJHoC8jOEdM812GEPUhur1cYOaEi5qRTPON+5tyAy1Rj2MRAxO+NYPEMK6FXlreGDbLUnBu+rWbngljFzcqpThkMH/D2OGJ+UO8SBcNbG4fFPY0dgy5l7nKgzg3X6n0JSjTzJ2xd0RhzmbWlhGajGALyp/aoYQoOU7MvBJgm4I/FgvwsUYzpj8OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fBtnj1bNQTnGGhOpk3jCRHj24nG0onADt+L/8QwqKtM=;
 b=WftvVjyqZnei0p8O4OmcEjKk2S5ArJaLVkOa83oJ6/UbsX4OVKtd1rh8+vtvNHdgAo7JhRJlmS9Pe+J3STdJu03SqlfWucdH1/0Gelnt3Emv/Cn2nhPS/grexXd7SxRokyL/Xwph8lWtGPbAt/D75P9JNdqkDk4iNlg/ZC0nKFI=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4208.namprd11.prod.outlook.com (52.135.36.80) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.20; Tue, 17 Dec 2019 16:15:43 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:15:43 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 36/55] staging: wfx: fix pm_mode timeout
Thread-Topic: [PATCH v2 36/55] staging: wfx: fix pm_mode timeout
Thread-Index: AQHVtPUsDpz282pF+Eq5j4+Emd0k5w==
Date: Tue, 17 Dec 2019 16:15:17 +0000
Message-ID: <20191217161318.31402-37-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 61fabd90-d3f8-49cb-4329-08d7830c4e7e
x-ms-traffictypediagnostic: MN2PR11MB4208:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4208185799B768E2AF9C2D1393500@MN2PR11MB4208.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39850400004)(396003)(366004)(136003)(376002)(346002)(199004)(189003)(5660300002)(316002)(6506007)(85182001)(478600001)(71200400001)(2906002)(36756003)(186003)(26005)(81166006)(54906003)(1076003)(110136005)(66574012)(4326008)(8676002)(86362001)(6486002)(6666004)(52116002)(6512007)(64756008)(85202003)(66946007)(66476007)(66446008)(66556008)(8936002)(107886003)(2616005)(4744005)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4208;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ND5P8JeLMI8X8Ol8TjkyJW4dltFse2Bu/0KieFDyB5/4FCO+m0f83+S1LLU4t8FMVlLEhCf8AZSxvkgw2wzwjqK2Ub3JbmBPQv6YPkBTfCLe79h4UMTTiGKoHOmB7hMeydqigvKCI9s+Dit0WFBH6c03GZbz6900ADVZO15QapCRZ8nvVQgkt703tsrZxaaBkcmrm3Go7a14OkyQwERPqECF0+gNmoOtZGMKgGLZOUcOGTIS8jxXW3zpVs6o7LU6JsWkJeGX+nMTh6k29GNwI6FibT+r6u730NvaK95hDGgwSjX7a5eOFA4F7anqtyMpx3aAMerWLCl+7MJ98ea4PR1J8mQJX7chyHVyUYguUkfgnvUU7RLe4brhabs2SwMla3bUCUwYqjS9VO7IMDid6w1ElCNp4Iwj7pjo5mOg80oeZ/W27vhdgH0LhQETmv+N
Content-ID: <44BBF00B9B784E40BA7A13590F05A826@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61fabd90-d3f8-49cb-4329-08d7830c4e7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:15:17.8756 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AmDam+g1ibTXobGEfQ1M2c/dUYPXF8Ipp5ryuK6Xw/hICx2PBC8s6/x8MuUWwsUIV4F2wfNAHWzzhQ7RZRsVjg==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKTWF4
aW11bSByZXF1ZXN0IHRpbWUgKGhvdyBsb25nIGEgcmVxdWVzdCB3YWl0IGZvciB0aGUgbWVkaXVt
KSBpcyBzZXQgaW4KZmlybXdhcmUgdG8gNTEyVFUKClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBv
dWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L3N0YS5jIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0
aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMv
c3RhZ2luZy93Zngvc3RhLmMKaW5kZXggZGNiNDY5M2VjOTgwLi40MmIwZDAxZDg1Y2MgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dm
eC9zdGEuYwpAQCAtMzU5LDcgKzM1OSw3IEBAIHN0YXRpYyBpbnQgd2Z4X3VwZGF0ZV9wbShzdHJ1
Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAl9CiAKIAlpZiAoIXdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91
dCgmd3ZpZi0+c2V0X3BtX21vZGVfY29tcGxldGUsCi0JCQkJCSBtc2Vjc190b19qaWZmaWVzKDMw
MCkpKQorCQkJCQkgVFVfVE9fSklGRklFUyg1MTIpKSkKIAkJZGV2X3dhcm4od3ZpZi0+d2Rldi0+
ZGV2LAogCQkJICJ0aW1lb3V0IHdoaWxlIHdhaXRpbmcgb2Ygc2V0X3BtX21vZGVfY29tcGxldGVc
biIpOwogCXJldHVybiBoaWZfc2V0X3BtKHd2aWYsICZwbSk7Ci0tIAoyLjI0LjAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
