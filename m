Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CAB2B611
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 May 2019 15:12:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A990A85C63;
	Mon, 27 May 2019 13:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eFZ3buzCR-fz; Mon, 27 May 2019 13:12:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A04F185A00;
	Mon, 27 May 2019 13:12:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4AF9A1BF35C
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 13:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4598722879
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 13:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XE+hPe+1pdYF for <devel@linuxdriverproject.org>;
 Mon, 27 May 2019 13:12:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790082.outbound.protection.outlook.com [40.107.79.82])
 by silver.osuosl.org (Postfix) with ESMTPS id 0474922225
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 13:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1UIne8oV6ctAJDfGI3Gf8dcmfomCDrrAEN7ww+V4D9g=;
 b=BDUgfMbnj83i3V393eH5f36JPGTLJu1I7HU7OgVzeNt38WKRi4qrmvqNkxsZpBU259xr0yty7XmExZW2TUti9tO0pOC/PHhwGrQabal+jE6bhPeh+De6/B6AUMZ5iXIpb0NcIxr8HYsrO91vvNvkpvagYIBA+CBXHKTQ5eotq44=
Received: from MWHPR03CA0020.namprd03.prod.outlook.com (2603:10b6:300:117::30)
 by BY2PR03MB555.namprd03.prod.outlook.com (2a01:111:e400:2c37::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.20; Mon, 27 May
 2019 12:56:33 +0000
Received: from SN1NAM02FT026.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by MWHPR03CA0020.outlook.office365.com
 (2603:10b6:300:117::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.18 via Frontend
 Transport; Mon, 27 May 2019 12:56:32 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.57)
 smtp.mailfrom=analog.com; gmx.de; dkim=none (message not signed)
 header.d=none; gmx.de; dmarc=bestguesspass action=none header.from=analog.com; 
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.57; helo=nwd2mta2.analog.com;
Received: from nwd2mta2.analog.com (137.71.25.57) by
 SN1NAM02FT026.mail.protection.outlook.com (10.152.72.97) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1922.16
 via Frontend Transport; Mon, 27 May 2019 12:56:32 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta2.analog.com (8.13.8/8.13.8) with ESMTP id x4RCuVgo022618
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Mon, 27 May 2019 05:56:31 -0700
Received: from ben-Latitude-E6540.analog.com (10.50.1.100) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Mon, 27 May 2019 08:56:30 -0400
From: Beniamin Bia <beniamin.bia@analog.com>
To: <jic23@kernel.org>
Subject: [PATCH v2 2/4] iio: adc: ad7606: Add software configuration
Date: Mon, 27 May 2019 15:56:48 +0300
Message-ID: <20190527125650.2405-2-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527125650.2405-1-beniamin.bia@analog.com>
References: <20190527125650.2405-1-beniamin.bia@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.57; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(346002)(136003)(376002)(396003)(39860400002)(2980300002)(199004)(189003)(36756003)(4326008)(316002)(7636002)(7696005)(77096007)(50466002)(23676004)(246002)(14444005)(54906003)(76176011)(186003)(7416002)(5660300002)(26005)(486006)(6916009)(5820100001)(126002)(107886003)(44832011)(1076003)(2870700001)(6666004)(356004)(478600001)(72206003)(106002)(336012)(476003)(305945005)(86362001)(53416004)(47776003)(11346002)(446003)(2616005)(2906002)(50226002)(426003)(2351001)(70206006)(70586007)(8676002)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY2PR03MB555; H:nwd2mta2.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail11.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9b3e6ea8-edfd-4cf1-fc1c-08d6e2a2be6f
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(4709054)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:BY2PR03MB555; 
X-MS-TrafficTypeDiagnostic: BY2PR03MB555:
X-Microsoft-Antispam-PRVS: <BY2PR03MB555FB485D4D8033B0EF66E2F01D0@BY2PR03MB555.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0050CEFE70
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: HCOTY/YSEQy5WZUOrtWhmVk0FXIlc4r5DQca5sUMOxoih6z2uTCx3Kw6M0E8Hv8QhR85R1sV5npGbUuvnGKNSz2JIwJD0MZH+pMXdOLEy8zdn/YfVr3GWcCvZEDxP4OVMNmjaikMeF70RrdVbMoq2Tx6chiMYr8qH0A/oaEeyL/3VL0pzSDIXBPNrz/aqK2PKwz8Cj0WRCaKU0Uw2jE+nvkBRokS1WJCv2Qt8Uwovxfkpt/9giuTEAF5/ExA4ST2x/sU3rmtTsYB/TvXW93AEXdmZoTt4a/NxNoh16V6kdjH3wGPYWp+6nqEnSPKbHF51fX+/i/jACkcA1VRVZPJHbJUwqQKauKJRQ5zOgQwVz60EUcTkcYNTYrxx1OpYYWNzKfNwevNsWuNMMjIRUvJuOzjBKpAq7lyuQBajaf7eq8=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2019 12:56:32.2219 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b3e6ea8-edfd-4cf1-fc1c-08d6e2a2be6f
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.57];
 Helo=[nwd2mta2.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2PR03MB555
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, Beniamin Bia <beniamin.bia@analog.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QmVjYXVzZSB0aGlzIGRyaXZlciB3aWxsIHN1cHBvcnQgbXVsdGlwbGUgY29uZmlndXJhdGlvbnMg
Zm9yIHNvZnR3YXJlLAp0aGUgc29mdHdhcmUgY29uZmlndXJhdGlvbiB3YXMgbWFkZSBnZW5lcmlj
LgoKU2lnbmVkLW9mZi1ieTogQmVuaWFtaW4gQmlhIDxiZW5pYW1pbi5iaWFAYW5hbG9nLmNvbT4K
QWNrZWQtYnk6IEpvbmF0aGFuIENhbWVyb24gPGppYzIzQGtlcm5lbC5vcmc+Ci0tLQpDaGFuZ2Vz
IGluIHYyOgotbm90aGluZyBjaGFuZ2VkCgogZHJpdmVycy9paW8vYWRjL2FkNzYwNi5jIHwgNDAg
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKy0tLQogZHJpdmVycy9paW8vYWRj
L2FkNzYwNi5oIHwgIDIgKysKIDIgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMgYi9kcml2
ZXJzL2lpby9hZGMvYWQ3NjA2LmMKaW5kZXggYzY2ZmYyMmYzMmQyLi5hYmEwZmQxMjNhNTEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYworKysgYi9kcml2ZXJzL2lpby9hZGMv
YWQ3NjA2LmMKQEAgLTE0MCw3ICsxNDAsNyBAQCBzdGF0aWMgaW50IGFkNzYwNl9yZWFkX3Jhdyhz
dHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LAogCQkJICAgaW50ICp2YWwyLAogCQkJICAgbG9uZyBt
KQogewotCWludCByZXQ7CisJaW50IHJldCwgY2ggPSAwOwogCXN0cnVjdCBhZDc2MDZfc3RhdGUg
KnN0ID0gaWlvX3ByaXYoaW5kaW9fZGV2KTsKIAogCXN3aXRjaCAobSkgewpAQCAtMTU3LDggKzE1
NywxMCBAQCBzdGF0aWMgaW50IGFkNzYwNl9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9f
ZGV2LAogCQkqdmFsID0gKHNob3J0KXJldDsKIAkJcmV0dXJuIElJT19WQUxfSU5UOwogCWNhc2Ug
SUlPX0NIQU5fSU5GT19TQ0FMRToKKwkJaWYgKHN0LT5zd19tb2RlX2VuKQorCQkJY2ggPSBjaGFu
LT5hZGRyZXNzOwogCQkqdmFsID0gMDsKLQkJKnZhbDIgPSBzdC0+c2NhbGVfYXZhaWxbc3QtPnJh
bmdlWzBdXTsKKwkJKnZhbDIgPSBzdC0+c2NhbGVfYXZhaWxbc3QtPnJhbmdlW2NoXV07CiAJCXJl
dHVybiBJSU9fVkFMX0lOVF9QTFVTX01JQ1JPOwogCWNhc2UgSUlPX0NIQU5fSU5GT19PVkVSU0FN
UExJTkdfUkFUSU86CiAJCSp2YWwgPSBzdC0+b3ZlcnNhbXBsaW5nOwpAQCAtMjMzLDcgKzIzNSw5
IEBAIHN0YXRpYyBpbnQgYWQ3NjA2X3dyaXRlX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2
LAogCWNhc2UgSUlPX0NIQU5fSU5GT19TQ0FMRToKIAkJbXV0ZXhfbG9jaygmc3QtPmxvY2spOwog
CQlpID0gZmluZF9jbG9zZXN0KHZhbDIsIHN0LT5zY2FsZV9hdmFpbCwgc3QtPm51bV9zY2FsZXMp
OwotCQlyZXQgPSBzdC0+d3JpdGVfc2NhbGUoaW5kaW9fZGV2LCBjaGFuLT5hZGRyZXNzLCBpKTsK
KwkJaWYgKHN0LT5zd19tb2RlX2VuKQorCQkJY2ggPSBjaGFuLT5hZGRyZXNzOworCQlyZXQgPSBz
dC0+d3JpdGVfc2NhbGUoaW5kaW9fZGV2LCBjaCwgaSk7CiAJCWlmIChyZXQgPCAwKSB7CiAJCQlt
dXRleF91bmxvY2soJnN0LT5sb2NrKTsKIAkJCXJldHVybiByZXQ7CkBAIC02MTYsNiArNjIwLDM2
IEBAIGludCBhZDc2MDZfcHJvYmUoc3RydWN0IGRldmljZSAqZGV2LCBpbnQgaXJxLCB2b2lkIF9f
aW9tZW0gKmJhc2VfYWRkcmVzcywKIAlzdC0+d3JpdGVfc2NhbGUgPSBhZDc2MDZfd3JpdGVfc2Nh
bGVfaHc7CiAJc3QtPndyaXRlX29zID0gYWQ3NjA2X3dyaXRlX29zX2h3OwogCisJaWYgKHN0LT5j
aGlwX2luZm8tPnN3X21vZGVfY29uZmlnKQorCQlzdC0+c3dfbW9kZV9lbiA9IGRldmljZV9wcm9w
ZXJ0eV9wcmVzZW50KHN0LT5kZXYsCisJCQkJCQkJICJhZGksc3ctbW9kZSIpOworCisJaWYgKHN0
LT5zd19tb2RlX2VuKSB7CisJCS8qIEFmdGVyIHJlc2V0LCBpbiBzb2Z0d2FyZSBtb2RlLCDCsTEw
IFYgaXMgc2V0IGJ5IGRlZmF1bHQgKi8KKwkJbWVtc2V0MzIoc3QtPnJhbmdlLCAyLCBBUlJBWV9T
SVpFKHN0LT5yYW5nZSkpOworCQlpbmRpb19kZXYtPmluZm8gPSAmYWQ3NjA2X2luZm9fb3NfYW5k
X3JhbmdlOworCisJCS8qCisJCSAqIEluIHNvZnR3YXJlIG1vZGUsIHRoZSByYW5nZSBncGlvIGhh
cyBubyBsb25nZXIgaXRzIGZ1bmN0aW9uLgorCQkgKiBJbnN0ZWFkLCB0aGUgc2NhbGUgY2FuIGJl
IGNvbmZpZ3VyZWQgaW5kaXZpZHVhbGx5IGZvciBlYWNoCisJCSAqIGNoYW5uZWwgZnJvbSB0aGUg
cmFuZ2UgcmVnaXN0ZXJzLgorCQkgKi8KKwkJaWYgKHN0LT5jaGlwX2luZm8tPndyaXRlX3NjYWxl
X3N3KQorCQkJc3QtPndyaXRlX3NjYWxlID0gc3QtPmNoaXBfaW5mby0+d3JpdGVfc2NhbGVfc3c7
CisKKwkJLyoKKwkJICogSW4gc29mdHdhcmUgbW9kZSwgdGhlIG92ZXJzYW1wbGluZyBpcyBubyBs
b25nZXIgY29uZmlndXJlZAorCQkgKiB3aXRoIEdQSU8gcGlucy4gSW5zdGVhZCwgdGhlIG92ZXJz
YW1wbGluZyBjYW4gYmUgY29uZmlndXJlZAorCQkgKiBpbiBjb25maWd1cmF0aWlvbiByZWdpc3Rl
ci4KKwkJICovCisJCWlmIChzdC0+Y2hpcF9pbmZvLT53cml0ZV9vc19zdykKKwkJCXN0LT53cml0
ZV9vcyA9IHN0LT5jaGlwX2luZm8tPndyaXRlX29zX3N3OworCisJCXJldCA9IHN0LT5jaGlwX2lu
Zm8tPnN3X21vZGVfY29uZmlnKGluZGlvX2Rldik7CisJCWlmIChyZXQgPCAwKQorCQkJcmV0dXJu
IHJldDsKKwl9CisKIAlzdC0+dHJpZyA9IGRldm1faWlvX3RyaWdnZXJfYWxsb2MoZGV2LCAiJXMt
ZGV2JWQiLAogCQkJCQkgIGluZGlvX2Rldi0+bmFtZSwgaW5kaW9fZGV2LT5pZCk7CiAJaWYgKCFz
dC0+dHJpZykKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuaCBiL2RyaXZlcnMv
aWlvL2FkYy9hZDc2MDYuaAppbmRleCAxNDNjMzAxNjNkZjkuLmQ4YTUwOWMyYzQyOCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5oCisrKyBiL2RyaXZlcnMvaWlvL2FkYy9hZDc2
MDYuaApAQCAtNDMsNiArNDMsNyBAQCBzdHJ1Y3QgYWQ3NjA2X2NoaXBfaW5mbyB7CiAgKiBAcmFu
Z2UJCXZvbHRhZ2UgcmFuZ2Ugc2VsZWN0aW9uLCBzZWxlY3RzIHdoaWNoIHNjYWxlIHRvIGFwcGx5
CiAgKiBAb3ZlcnNhbXBsaW5nCW92ZXJzYW1wbGluZyBzZWxlY3Rpb24KICAqIEBiYXNlX2FkZHJl
c3MJYWRkcmVzcyBmcm9tIHdoZXJlIHRvIHJlYWQgZGF0YSBpbiBwYXJhbGxlbCBvcGVyYXRpb24K
KyAqIEBzd19tb2RlX2VuCQlzb2Z0d2FyZSBtb2RlIGVuYWJsZWQKICAqIEBzY2FsZV9hdmFpbAkJ
cG9pbnRlciB0byB0aGUgYXJyYXkgd2hpY2ggc3RvcmVzIHRoZSBhdmFpbGFibGUgc2NhbGVzCiAg
KiBAbnVtX3NjYWxlcwkJbnVtYmVyIG9mIGVsZW1lbnRzIHN0b3JlZCBpbiB0aGUgc2NhbGVfYXZh
aWwgYXJyYXkKICAqIEBvdmVyc2FtcGxpbmdfYXZhaWwJcG9pbnRlciB0byB0aGUgYXJyYXkgd2hp
Y2ggc3RvcmVzIHRoZSBhdmFpbGFibGUKQEAgLTcxLDYgKzcyLDcgQEAgc3RydWN0IGFkNzYwNl9z
dGF0ZSB7CiAJdW5zaWduZWQgaW50CQkJcmFuZ2VbMTZdOwogCXVuc2lnbmVkIGludAkJCW92ZXJz
YW1wbGluZzsKIAl2b2lkIF9faW9tZW0JCQkqYmFzZV9hZGRyZXNzOworCWJvb2wJCQkJc3dfbW9k
ZV9lbjsKIAljb25zdCB1bnNpZ25lZCBpbnQJCSpzY2FsZV9hdmFpbDsKIAl1bnNpZ25lZCBpbnQJ
CQludW1fc2NhbGVzOwogCWNvbnN0IHVuc2lnbmVkIGludAkJKm92ZXJzYW1wbGluZ19hdmFpbDsK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDov
L2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVy
ZGV2LWRldmVsCg==
