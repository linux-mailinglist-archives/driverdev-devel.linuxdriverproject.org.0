Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6F0123185
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:16:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45ADF86C4A;
	Tue, 17 Dec 2019 16:16:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KFI89amokOeB; Tue, 17 Dec 2019 16:16:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6BAA86BE1;
	Tue, 17 Dec 2019 16:16:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EA8A61BF95F
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CAFA285F90
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m2jatPZsb7rp for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:15:43 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2074.outbound.protection.outlook.com [40.107.92.74])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 551B285F67
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:15:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CeSLagWoXLcS4dkhIJVnT0VPJsfqkwYXYVukBb36GYYe7q7yHVownaKn5SAUv454ySF9oTuY/mCXMygcdgV2wIRi/DvfUB1DKuO/huTjKz6HI0J8uDbBJQgIdmNE8pu1wxEZELUPGTozNCDmlutha4/uWJucDIMu2+w9bVYF+qcAx4xfqSlq4x0/IhDGgOrmdA+DDPhpeMKveNDNDwcvMMKjSJVN7Cbcbmvxq+9moiDSVGvXuyPHFe6Es5VKT3b1izaIF6MC0o5lKJ8WEusZR8x4Y7FEgb48oEycI2i/Eov7uy6UhsOZabJtFYzXIIQuHT7FhpMcZvnKGpPPN3xtDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qhyO1ai0BtzecUTGvSrEJr/1df5UB7nIlo07n7R6xAs=;
 b=bc3suMsD4ler8U2gM2OUd+ou3IVhTNg9gIFRIYsKhW5XnzqqewaroAs0ehsRJIB9elabcOpwQljoFYtJi+Nnf8CrDFmrNt9KLGH7ST7IcsXPj/Vyss4tGsys1rfUULNGgsdJkVjjZ9lpCNDFjO3oLiBZOjYfUARR4DrIWvw0ByWM8ziKoPe57yJyuy5SnSRfQT+G5EPKDLqAjRxAxnMTUDM22PHVTCDSXdMpd4Wglo1+lAV1ncPUV43Yt0n+KwRGd2H2F1FYBuV4hLpE6AxqqNzAri+rdlsYwjyzpwxFzSskHLRwzAxGguNQI/gXWkLkFJSBqtzEmbB5dlWmnL9IXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qhyO1ai0BtzecUTGvSrEJr/1df5UB7nIlo07n7R6xAs=;
 b=LYnpbL/7211wweAg+8MvunFAJA/PoCGqpJQ4FRON2vKxCVNonxQpO1ijLyDSZ4r+iIfBne3r9gFCn9bYbmW5AMDWDlnaUCOe9e04T+ga1pgCZlvEMr4fVlZW9t2itzY2yzc5gWG0PAAus617VtPUZagrxVHLJ0TJTSqcWHzVvuU=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB4477.namprd11.prod.outlook.com (52.135.36.93) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Tue, 17 Dec 2019 16:15:41 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:15:41 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 33/55] staging: wfx: remove redundant test while calling
 wfx_update_pm()
Thread-Topic: [PATCH v2 33/55] staging: wfx: remove redundant test while
 calling wfx_update_pm()
Thread-Index: AQHVtPUp5AxRS0f8bk6v6H5krKe7aw==
Date: Tue, 17 Dec 2019 16:15:13 +0000
Message-ID: <20191217161318.31402-34-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: 8a173258-b71b-4d2b-319b-08d7830c4c2b
x-ms-traffictypediagnostic: MN2PR11MB4477:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4477D9998B5B5AEF3ACBD06993500@MN2PR11MB4477.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:785;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(136003)(366004)(39860400002)(199004)(189003)(1076003)(66574012)(186003)(107886003)(8676002)(4744005)(6506007)(86362001)(478600001)(85182001)(5660300002)(81156014)(26005)(4326008)(6486002)(8936002)(316002)(110136005)(54906003)(64756008)(66446008)(66946007)(2616005)(66556008)(66476007)(85202003)(36756003)(6512007)(2906002)(52116002)(6666004)(71200400001)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4477;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KZobTmjnh2m6hUhfk6abJn9tJyHuQ4ii8n5KMGyniOSgm4c0bqklqeQzaj8R/kigrHi91tJSIUcf+XB9HZ+i722EfygHdeHY7X1QvJSwKm2ReO6eDb6XpfvSBLNoZmLlOhzkQjWI3irkCYiCkFYCX6ytMgrjRSLgbIdvbnusgHyBP58Al8DfUAOv788f9i5FJwl6p00ZAlG+SzQhtQOpvqohrOcPEbKS75WiK9vef4tcoVtEhvhyomZEqb1Ue/47rFPHa56TD5Cqhe/N+zCfbTyaPHWBwIp33h96SDt9DUIMBDBuBHfW60vwVdbx6fWF+qzHs0R1P6F2cvlk8ekoagZV6grLzvzcZDaLzyFWVoDMHkFjuTv6pTSXVA2xYmQRPNKuSXR4qTeobUN90wJbI61H/I7bQlnlU6KoDOQVlVtVgp1ThhDShq2i5I8tU0SP
Content-ID: <628F67FF3ED5EA409F89810D2DC7E635@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a173258-b71b-4d2b-319b-08d7830c4c2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:15:13.9858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6elWPhr+K4ni/C3Vji995rhJddkrp//R58MTtdBC1Qiqr8/pOWXCfyIR5RYeySJwMgg10OKS7fvCKWnxiQEsrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4477
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQ29u
ZGl0aW9uIGFib3V0IHd2aWYtPnN0YXRlIGFuZCB3dmlmLT5ic3NfcGFyYW1zLmFpZCBpcyBhbHJl
YWR5IGNoZWNrZWQKYXQgYmVnaW5uaW5nIG9mIHdmeF91cGRhdGVfcG0oKS4KClNpZ25lZC1vZmYt
Ynk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBk
cml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIHwgMyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L3N0YS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwppbmRleCBlZTFiMTU5NTAzODkuLjkx
ZmE0ZDhhYTM3ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYworKysgYi9k
cml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCkBAIC0xNDQ4LDggKzE0NDgsNyBAQCBpbnQgd2Z4X2Nv
bmZpZyhzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgdTMyIGNoYW5nZWQpCiAJCQkJCQkgICAgMiwg
MjU1KTsKIAkJCQl9CiAJCQl9Ci0JCQlpZiAod3ZpZi0+c3RhdGUgPT0gV0ZYX1NUQVRFX1NUQSAm
JiB3dmlmLT5ic3NfcGFyYW1zLmFpZCkKLQkJCQl3ZnhfdXBkYXRlX3BtKHd2aWYpOworCQkJd2Z4
X3VwZGF0ZV9wbSh3dmlmKTsKIAkJfQogCQl3dmlmID0gd2Rldl90b193dmlmKHdkZXYsIDApOwog
CX0KLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0
cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJp
dmVyZGV2LWRldmVsCg==
