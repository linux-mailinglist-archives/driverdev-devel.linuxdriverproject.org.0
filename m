Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93BEF123278
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Dec 2019 17:30:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC56186D6F;
	Tue, 17 Dec 2019 16:30:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z87cq-j+IzH9; Tue, 17 Dec 2019 16:30:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 56C4286AFF;
	Tue, 17 Dec 2019 16:30:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8D21B1BF2B3
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:30:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8381B86B3B
 for <devel@linuxdriverproject.org>; Tue, 17 Dec 2019 16:30:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6zuqQcmApPlv for <devel@linuxdriverproject.org>;
 Tue, 17 Dec 2019 16:30:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2054.outbound.protection.outlook.com [40.107.243.54])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A9A7686AFF
 for <devel@driverdev.osuosl.org>; Tue, 17 Dec 2019 16:30:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k7qc12X7GSOUBvetG+6GZPzWCKT/3xxx78OJrjWcPibud0gBNBMAPVmqVGqruAJodXEMi84lXizHxP/uca3tB5W0dBpMg1zAxmejw6zt9F4F1DPUkYDFpsDEAzddYSwpOf53m10sGEbLxX+tYba4p4YgL6dgrMdaQFTLFteOk32oeS4YVo489s2uFNjGoOKQyy4CZGmPdm31bS3h43rm3qGltXkFuzb7zfZjAROusqzbhgcFYcWW+Fjp06k70SS+IdEKViezfos4a2OJ5Ww2Bf2P8ex93xEeN5evIO/IZ18zHk1dQCvjKYj70Tp5vJsqK3akFyrs23lKjiDQTN5swA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qSt5Bj9pM1rKsJLNKstOG6EMbm9bl0x5ZrOupIor3mU=;
 b=dbM57SeNbKEDFqm9y8Bnaa8FxjXDCR7Sscheu1Mm804QgRFB/0+hb/Wp3/kXojGbmBMEVE57SLxmEelsJqKEIMw1mn4G+fL3LXqka3ln/zbE8T2VDvOWAJ/254WksjwamYDB/wp30hSIEegSHuz9WtLfb4aSrap53xu/VktpQzoPEYKCfyesdXwfUVYDYyvUomLxqfCGKWee+BoKtcbvl98w9g3eFHrZYQ9KLXzbfKucie7T80Y2qrnQ+2DHD1wszpMfeOe/5zgRgrEKrhjHZr4OquorhiualXQoJuR/v2F/UX2T0iEy8GzU/Jt2oUBf8ruK48IoVwMBs0U8I1NAOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qSt5Bj9pM1rKsJLNKstOG6EMbm9bl0x5ZrOupIor3mU=;
 b=mroMfKXpb/mAD6ea6kpM3oEXOo7Kd1hAiEXHSkCkzqgqHevIDPano0mzaqGXjwsybljm4tKMODk7QE6U5PY9EPKuWw/HT3vLluXIv9HnyTIclAYbVg2CA6GX51gQlE3758LpsjlJUxsDpENS82qxfy7bWXhJDQq5gZEDFBdwpt4=
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (10.255.180.22) by
 MN2PR11MB3678.namprd11.prod.outlook.com (20.178.254.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Tue, 17 Dec 2019 16:14:53 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::f46c:e5b4:2a85:f0bf%4]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 16:14:53 +0000
From: =?utf-8?B?SsOpcsO0bWUgUG91aWxsZXI=?= <Jerome.Pouiller@silabs.com>
To: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>
Subject: [PATCH v2 17/55] staging: wfx: use meaningful names for
 CFG_BYTE_ORDER_*
Thread-Topic: [PATCH v2 17/55] staging: wfx: use meaningful names for
 CFG_BYTE_ORDER_*
Thread-Index: AQHVtPUdMqjBxa9920eBAwh9rliraA==
Date: Tue, 17 Dec 2019 16:14:52 +0000
Message-ID: <20191217161318.31402-18-Jerome.Pouiller@silabs.com>
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
x-ms-office365-filtering-correlation-id: cda2db70-e93a-4419-3de9-08d7830c3fb0
x-ms-traffictypediagnostic: MN2PR11MB3678:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB3678C2C3122F636B21D6A67093500@MN2PR11MB3678.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2150;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(366004)(39860400002)(136003)(199004)(189003)(6512007)(66574012)(1076003)(478600001)(86362001)(8936002)(110136005)(316002)(2616005)(26005)(6506007)(5660300002)(36756003)(6486002)(66946007)(66476007)(66556008)(64756008)(66446008)(71200400001)(52116002)(85182001)(81166006)(81156014)(8676002)(54906003)(107886003)(2906002)(4326008)(186003)(85202003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB3678;
 H:MN2PR11MB4063.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WFTMkEmbXnKP+iWb/R45yfuJaz2xPzS0MbbaPTYKrazTxOY3CDRTwjYe+pYhn0Xj9FBjrNAnqDw4JFF4VOgI2VVch/1OjzbiQ0tzwv4Cdw4jkKxKzFfFMtPevgXU21wiW2vVfUvkdGp62B3c2wRXZjnIqFMzA7nUaiOtP2//1QhSJpBFkZY8OLDCdPtfr4AJ4sYUDWLo7eC94x1/JvFeynRp5bMEq5gEFQGk0kuwuiqOraWPfF9GQ1d6UdKLihyFFfLW2A3dHwfW55W5DJ2ki6wMc1dA4gaUm6ea9m+3fVLKFpWeyjYro6gPgtcoUPMBIgKQ9GrnOVlOX6bZOIvpz5qK0omSG7Gzu4J53k5MEoHWJ095NdaV+4h+DexvhV7d+G9YIfftaYN0dP4M2fTkCHxsZij3Li85yuYrDXi1c8+gN7mLJBxV5ap6YekLqOfB
Content-ID: <E5123E2B2D594445B20D17B159E7748C@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cda2db70-e93a-4419-3de9-08d7830c3fb0
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 16:14:52.9224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sCyQfBFUExA8ieK/HqEwJHwcay4Cr31yr7THbEQ4Ao3jfEf42S0Gim9DUAd3Tw3Ja4HwiAg7QT/SusKDSpto1Q==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhp
cyBuZXcgbmFtaW5nIGFsbG93cyB0byBzYXZlIGEgY29tbWVudC4KClNpZ25lZC1vZmYtYnk6IErD
qXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJz
L3N0YWdpbmcvd2Z4L2J1c19zcGkuYyB8ICAyICsrCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8u
YyAgICB8ICAyICstCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2h3aW8uaCAgICB8IDE1ICsrKysrLS0t
LS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9idXNfc3BpLmMKaW5kZXggMGEwNTVjNDA0MWFmLi40MGJjMzMwMzVkZTIgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvYnVzX3NwaS5jCkBAIC0xMDcsNiArMTA3LDggQEAgc3RhdGljIGludCB3Znhfc3Bp
X2NvcHlfdG9faW8odm9pZCAqcHJpdiwgdW5zaWduZWQgaW50IGFkZHIsCiAKIAljcHVfdG9fbGUx
NnMoJnJlZ2FkZHIpOwogCisJLy8gUmVnaXN0ZXIgYWRkcmVzcyBhbmQgQ09ORklHIGNvbnRlbnQg
YWx3YXlzIHVzZSAxNmJpdCBiaWcgZW5kaWFuCisJLy8gKCJCQURDIiBvcmRlcikKIAlpZiAoYnVz
LT5uZWVkX3N3YWIpCiAJCXN3YWIxNnMoJnJlZ2FkZHIpOwogCWlmIChidXMtPm5lZWRfc3dhYiAm
JiBhZGRyID09IFdGWF9SRUdfQ09ORklHKQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9md2lvLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYwppbmRleCA0N2U2MjdiZjBmOGUu
LjlkNjEwODJjMWU2YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9md2lvLmMKKysr
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9md2lvLmMKQEAgLTMzOSw3ICszMzksNyBAQCBpbnQgd2Z4
X2luaXRfZGV2aWNlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQogCWt0aW1lX3Qgbm93LCBzdGFydDsK
IAl1MzIgcmVnOwogCi0JcmVnID0gQ0ZHX0RJUkVDVF9BQ0NFU1NfTU9ERSB8IENGR19DUFVfUkVT
RVQgfCBDRkdfV09SRF9NT0RFMjsKKwlyZWcgPSBDRkdfRElSRUNUX0FDQ0VTU19NT0RFIHwgQ0ZH
X0NQVV9SRVNFVCB8IENGR19CWVRFX09SREVSX0FCQ0Q7CiAJaWYgKHdkZXYtPnBkYXRhLnVzZV9y
aXNpbmdfY2xrKQogCQlyZWcgfD0gQ0ZHX0NMS19SSVNFX0VER0U7CiAJcmV0ID0gY29uZmlnX3Jl
Z193cml0ZSh3ZGV2LCByZWcpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9od2lv
LmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2h3aW8uaAppbmRleCBiMmMxYTY2ZGU5NjMuLjRiNmVm
MDYxYjQwYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9od2lvLmgKKysrIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9od2lvLmgKQEAgLTM3LDE2ICszNywxMSBAQCBpbnQgYWhiX3JlZ193
cml0ZShzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGFkZHIsIHUzMiB2YWwpOwogI2RlZmluZSBD
RkdfRVJSX0hPU1RfTk9fSU5fUVVFVUUgICAweDAwMDAwMDQwCiAjZGVmaW5lIENGR19FUlJfSE9T
VF9DUkNfTUlTUyAgICAgIDB4MDAwMDAwODAgLy8gb25seSB3aXRoIFNESU8KICNkZWZpbmUgQ0ZH
X1NQSV9JR05PUkVfQ1MgICAgICAgICAgMHgwMDAwMDA4MCAvLyBvbmx5IHdpdGggU1BJCi0vKiBC
eXRlcyBvcmRlcmluZyAob25seSB3cml0YWJsZSBpbiBTUEkpOiAqLwotI2RlZmluZSBDRkdfV09S
RF9NT0RFX01BU0sgICAgICAgICAweDAwMDAwMzAwCi0vKgotICogQjEsQjAsQjMsQjIgKEluIFNQ
SSwgcmVnaXN0ZXIgYWRkcmVzcyBhbmQKLSAqIENPTkZJRyBkYXRhIGFsd2F5cyB1c2UgdGhpcyBt
b2RlKQotICovCi0jZGVmaW5lICAgICBDRkdfV09SRF9NT0RFMCAgICAgICAgIDB4MDAwMDAwMDAK
LSNkZWZpbmUgICAgIENGR19XT1JEX01PREUxICAgICAgICAgMHgwMDAwMDEwMCAvLyAgIEIzLEIy
LEIxLEIwCi0jZGVmaW5lICAgICBDRkdfV09SRF9NT0RFMiAgICAgICAgIDB4MDAwMDAyMDAgLy8g
ICBCMCxCMSxCMixCMyAoU0RJTykKLSNkZWZpbmUgQ0ZHX0RJUkVDVF9BQ0NFU1NfTU9ERSAgICAg
MHgwMDAwMDQwMCAvLyBEaXJlY3Qgb3IgcXVldWUgYWNjZXNzIG1vZGUKKyNkZWZpbmUgQ0ZHX0JZ
VEVfT1JERVJfTUFTSyAgICAgICAgMHgwMDAwMDMwMCAvLyBvbmx5IHdyaXRhYmxlIHdpdGggU1BJ
CisjZGVmaW5lICAgICBDRkdfQllURV9PUkRFUl9CQURDICAgIDB4MDAwMDAwMDAKKyNkZWZpbmUg
ICAgIENGR19CWVRFX09SREVSX0RDQkEgICAgMHgwMDAwMDEwMAorI2RlZmluZSAgICAgQ0ZHX0JZ
VEVfT1JERVJfQUJDRCAgICAweDAwMDAwMjAwIC8vIFNESU8gYWx3YXlzIHVzZSB0aGlzIHZhbHVl
CisjZGVmaW5lIENGR19ESVJFQ1RfQUNDRVNTX01PREUgICAgIDB4MDAwMDA0MDAKICNkZWZpbmUg
Q0ZHX1BSRUZFVENIX0FIQiAgICAgICAgICAgMHgwMDAwMDgwMAogI2RlZmluZSBDRkdfRElTQUJM
RV9DUFVfQ0xLICAgICAgICAweDAwMDAxMDAwCiAjZGVmaW5lIENGR19QUkVGRVRDSF9TUkFNICAg
ICAgICAgIDB4MDAwMDIwMDAKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxt
YW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
