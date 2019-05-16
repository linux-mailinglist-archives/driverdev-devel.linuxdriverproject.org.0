Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B610C20C61
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 18:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C89AF88260;
	Thu, 16 May 2019 16:05:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id irqZjy0mg9rn; Thu, 16 May 2019 16:05:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A73C8820C;
	Thu, 16 May 2019 16:05:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 19E751BF489
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 16:05:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1632887368
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 16:05:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jG1pp+UqtGcM for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 16:05:47 +0000 (UTC)
X-Greylist: delayed 01:33:52 by SQLgrey-1.7.6
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr790040.outbound.protection.outlook.com [40.107.79.40])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A62E887197
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 16:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tCdwOJmsrFRlbTkiAd/vYXJDOdpDWYHmoxWnhfQFdKQ=;
 b=qnB7plYhKWKURqIUlvvH3EH0JlS/7XyhfUPU5Y3NUAI922nst41B+DY9js9HX57mTRm03eePx3PDV4Swop1/Hs5C24ojtSCJh+RMBuIlRnP4xYWzZFXO0LJcDGANRG/+ub5jgNq0Frl+Eg58LKGBhqQGANOJGC9f/7KSP3wojy8=
Received: from CY4PR03CA0105.namprd03.prod.outlook.com (2603:10b6:910:4d::46)
 by CO2PR03MB2261.namprd03.prod.outlook.com (2603:10b6:102:13::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1900.17; Thu, 16 May
 2019 14:32:00 +0000
Received: from SN1NAM02FT019.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by CY4PR03CA0105.outlook.office365.com
 (2603:10b6:910:4d::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16 via Frontend
 Transport; Thu, 16 May 2019 14:31:59 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; gmx.de; dkim=none (message not signed)
 header.d=none; gmx.de; dmarc=bestguesspass action=none header.from=analog.com; 
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 SN1NAM02FT019.mail.protection.outlook.com (10.152.72.130) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1900.16
 via Frontend Transport; Thu, 16 May 2019 14:31:59 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x4GEVwxV027667
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 16 May 2019 07:31:58 -0700
Received: from ben-Latitude-E6540.analog.com (10.50.1.133) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 16 May 2019 10:31:57 -0400
From: Beniamin Bia <beniamin.bia@analog.com>
To: <jic23@kernel.org>
Subject: [PATCH 4/5] iio: adc: ad7606: Add support for software mode for ad7616
Date: Thu, 16 May 2019 17:32:07 +0300
Message-ID: <20190516143208.19294-4-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190516143208.19294-1-beniamin.bia@analog.com>
References: <20190516143208.19294-1-beniamin.bia@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(136003)(346002)(2980300002)(199004)(189003)(5820100001)(2906002)(2870700001)(14444005)(106002)(5660300002)(26005)(76176011)(6916009)(54906003)(426003)(316002)(47776003)(446003)(476003)(336012)(1076003)(186003)(305945005)(72206003)(77096007)(2616005)(8676002)(36756003)(356004)(2351001)(86362001)(246002)(70206006)(70586007)(478600001)(53416004)(50466002)(126002)(7636002)(11346002)(107886003)(486006)(7696005)(23676004)(50226002)(8936002)(7416002)(6666004)(44832011)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CO2PR03MB2261; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b0bccb3f-2a95-4658-61e8-08d6da0b4175
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:CO2PR03MB2261; 
X-MS-TrafficTypeDiagnostic: CO2PR03MB2261:
X-Microsoft-Antispam-PRVS: <CO2PR03MB2261BA9816295989908A9463F00A0@CO2PR03MB2261.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 0039C6E5C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: d1dro5xmMYYubz9tf3od8207rYpakSmX2SavWy9ETlj+05GFuVB3UpbsE+A7a9MxnKfsMqz6h10QO8vU2Evthmzlnq/TszuBeVL4UwamWvUrqZQPrKCQ+8xRaCXGkc2DRYWrr9MpNcd4WaDm89GD3zQJRNqlMB0aeCYT1ttyVPCYHW6nPbgMuvMkB3FNq1dPNl8qUpoJxN6jzAEMM3ocpMb2rfkg9Brc7gYnWZYA0C/Bhf8JhQSBN7r5t1YlypqKum0n9JLW2D0iSzl+BWLTyo20CkAxhap3c/mFSxSQvDLSIFO6jhxqN2yX1B3F+zglo4GGwi1/fFF2WkSswOH+UedmVxBtKOl1zP7fkkuxvU3cL2RirrZ6kA7M1Ojdwn6Lo3dhxlptm4RLkgC4RGyDxsb3NHorgQCMrfSlnl45SU4=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2019 14:31:59.1106 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b0bccb3f-2a95-4658-61e8-08d6da0b4175
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO2PR03MB2261
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

U3VwcG9ydCBmb3IgYWQ3NjE2IHJ1bm5pbmcgaW4gc29mdHdhcmUgd2FzIGFkZGVkLiBJbiBvcmRl
cgp0byBhY3RpdmF0ZSB0aGUgc29mdHdhcmUgbW9kZSwgSFdfUk5HU0VMIHBpbnMgbXVzdCBiZSBw
dWxsZWQgbG93LgpPdmVyc2FtcGxpbmcgYW5kIGlucHV0IHJhbmdlcyBhcmUgbm93IGNvbmZpZ3Vy
ZWQgaW4gY29ycmVzcG9uZGluZwpyZWdpc3RlcnMuIEFkNzYxNiBoYXMgbXVsdGlwbGUgc2NhbGUg
b3B0aW9ucyB3aGVuIGl0IGlzIGNvbmZpZ3VyZWQKaW4gc29mdHdhcmUgbW9kZS4KClNpZ25lZC1v
ZmYtYnk6IEJlbmlhbWluIEJpYSA8YmVuaWFtaW4uYmlhQGFuYWxvZy5jb20+Ci0tLQogZHJpdmVy
cy9paW8vYWRjL2FkNzYwNi5jIHwgMTExICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDEwMyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYyBiL2RyaXZlcnMvaWlvL2Fk
Yy9hZDc2MDYuYwppbmRleCA2ZGY4MTExN2NhY2MuLmY3N2RmM2VmZTQzZiAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9paW8vYWRjL2FkNzYwNi5jCisrKyBiL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYwpA
QCAtMjksNiArMjksMjAgQEAKIAogI2luY2x1ZGUgImFkNzYwNi5oIgogCisjZGVmaW5lIEFENzYw
Nl9SQU5HRV9DSF9BRERSKGNoKQkoMHgwMyArICgoY2gpID4+IDEpKQorI2RlZmluZSBBRDc2MDZf
T1NfTU9ERQkJCTB4MDgKKworI2RlZmluZSBBRDc2MTZfQ09ORklHVVJBVElPTl9SRUdJU1RFUgkw
eDAyCisjZGVmaW5lIEFENzYxNl9PU19NQVNLCQkJR0VOTUFTSyg0LCAgMikKKyNkZWZpbmUgQUQ3
NjE2X0JVUlNUX01PREUJCUJJVCg2KQorI2RlZmluZSBBRDc2MTZfU0VRRU5fTU9ERQkJQklUKDUp
CisjZGVmaW5lIEFENzYxNl9SQU5HRV9DSF9BRERSX09GRgkweDA0CisjZGVmaW5lIEFENzYxNl9S
QU5HRV9DSF9BRERSKGNoKQkoKCgoY2gpICYgMHgxKSA8PCAxKSArICgoY2gpID4+IDMpKQorI2Rl
ZmluZSBBRDc2MTZfUkFOR0VfQ0hfTVNLKGNoKQkJKEdFTk1BU0soMSwgMCkgPDwgKChjaCkgJiAw
eDYpKQorI2RlZmluZSBBRDc2MTZfUkFOR0VfQ0hfTU9ERShjaCwgbW9kZSkJKChtb2RlKSA8PCAo
Y2ggJiBHRU5NQVNLKDIsIDEpKSkKKworc3RhdGljIGludCBhZDc2MTZfc3dfbW9kZV9jb25maWco
c3RydWN0IGlpb19kZXYgKmluZGlvX2Rldik7CisKIC8qCiAgKiBTY2FsZXMgYXJlIGNvbXB1dGVk
IGFzIDUwMDAvMzI3NjggYW5kIDEwMDAwLzMyNzY4IHJlc3BlY3RpdmVseSwKICAqIHNvIHRoYXQg
d2hlbiBhcHBsaWVkIHRvIHRoZSByYXcgdmFsdWVzIHRoZXkgcHJvdmlkZSBtViB2YWx1ZXMKQEAg
LTM3LDYgKzUxLDExIEBAIHN0YXRpYyBjb25zdCB1bnNpZ25lZCBpbnQgYWQ3NjA2X3NjYWxlX2F2
YWlsWzJdID0gewogCTE1MjU4OCwgMzA1MTc2CiB9OwogCisKK3N0YXRpYyBjb25zdCB1bnNpZ25l
ZCBpbnQgYWQ3NjE2X3N3X3NjYWxlX2F2YWlsWzNdID0geworCTc2MjkzLCAxNTI1ODgsIDMwNTE3
NgorfTsKKwogc3RhdGljIGNvbnN0IHVuc2lnbmVkIGludCBhZDc2MDZfb3ZlcnNhbXBsaW5nX2F2
YWlsWzddID0gewogCTEsIDIsIDQsIDgsIDE2LCAzMiwgNjQsCiB9OwpAQCAtMjgyLDYgKzMwMSwy
NiBAQCBzdGF0aWMgaW50IGFkNzYwNl93cml0ZV9vc19odyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9f
ZGV2LCBpbnQgdmFsKQogCXJldHVybiAwOwogfQogCitzdGF0aWMgaW50IGFkNzYxNl93cml0ZV9z
Y2FsZV9zdyhzdHJ1Y3QgaWlvX2RldiAqaW5kaW9fZGV2LCBpbnQgY2gsIGludCB2YWwpCit7CisJ
c3RydWN0IGFkNzYwNl9zdGF0ZSAqc3QgPSBpaW9fcHJpdihpbmRpb19kZXYpOworCXVuc2lnbmVk
IGludCBjaF9hZGRyLCBtb2RlOworCisJY2hfYWRkciA9IEFENzYxNl9SQU5HRV9DSF9BRERSX09G
RiArIEFENzYxNl9SQU5HRV9DSF9BRERSKGNoKTsKKwltb2RlID0gQUQ3NjE2X1JBTkdFX0NIX01P
REUoY2gsICgodmFsICsgMSkgJiAweDMpKTsKKworCXJldHVybiBhZDc2MDZfc3BpX3dyaXRlX21h
c2soc3QsIGNoX2FkZHIsIEFENzYxNl9SQU5HRV9DSF9NU0soY2gpLAorCQkJCSAgICAgbW9kZSk7
Cit9CisKK3N0YXRpYyBpbnQgYWQ3NjE2X3dyaXRlX29zX3N3KHN0cnVjdCBpaW9fZGV2ICppbmRp
b19kZXYsIGludCB2YWwpCit7CisJc3RydWN0IGFkNzYwNl9zdGF0ZSAqc3QgPSBpaW9fcHJpdihp
bmRpb19kZXYpOworCisJcmV0dXJuIGFkNzYwNl9zcGlfd3JpdGVfbWFzayhzdCwgQUQ3NjE2X0NP
TkZJR1VSQVRJT05fUkVHSVNURVIsCisJCQkJICAgICBBRDc2MTZfT1NfTUFTSywgdmFsIDw8IDIp
OworfQorCiBzdGF0aWMgaW50IGFkNzYwNl93cml0ZV9yYXcoc3RydWN0IGlpb19kZXYgKmluZGlv
X2RldiwKIAkJCSAgICBzdHJ1Y3QgaWlvX2NoYW5fc3BlYyBjb25zdCAqY2hhbiwKIAkJCSAgICBp
bnQgdmFsLApAQCAtMzY4LDE0ICs0MDcsMTQgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBhdHRyaWJ1
dGVfZ3JvdXAgYWQ3NjA2X2F0dHJpYnV0ZV9ncm91cF9yYW5nZSA9IHsKIAkuYXR0cnMgPSBhZDc2
MDZfYXR0cmlidXRlc19yYW5nZSwKIH07CiAKLSNkZWZpbmUgQUQ3NjBYX0NIQU5ORUwobnVtLCBt
YXNrKSB7CQkJCVwKKyNkZWZpbmUgQUQ3NjBYX0NIQU5ORUwobnVtLCBtYXNrX3NlcCwgbWFza190
eXBlLCBtYXNrX2FsbCkgewlcCiAJCS50eXBlID0gSUlPX1ZPTFRBR0UsCQkJCVwKIAkJLmluZGV4
ZWQgPSAxLAkJCQkJXAogCQkuY2hhbm5lbCA9IG51bSwJCQkJCVwKIAkJLmFkZHJlc3MgPSBudW0s
CQkJCQlcCi0JCS5pbmZvX21hc2tfc2VwYXJhdGUgPSBCSVQoSUlPX0NIQU5fSU5GT19SQVcpLAlc
Ci0JCS5pbmZvX21hc2tfc2hhcmVkX2J5X3R5cGUgPSBCSVQoSUlPX0NIQU5fSU5GT19TQ0FMRSks
XAotCQkuaW5mb19tYXNrX3NoYXJlZF9ieV9hbGwgPSBtYXNrLAkJXAorCQkuaW5mb19tYXNrX3Nl
cGFyYXRlID0gbWFza19zZXAsCQkJXAorCQkuaW5mb19tYXNrX3NoYXJlZF9ieV90eXBlID0gbWFz
a190eXBlLAkJXAorCQkuaW5mb19tYXNrX3NoYXJlZF9ieV9hbGwgPSBtYXNrX2FsbCwJCVwKIAkJ
LnNjYW5faW5kZXggPSBudW0sCQkJCVwKIAkJLnNjYW5fdHlwZSA9IHsJCQkJCVwKIAkJCS5zaWdu
ID0gJ3MnLAkJCQlcCkBAIC0zODUsMTEgKzQyNCwxOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGF0
dHJpYnV0ZV9ncm91cCBhZDc2MDZfYXR0cmlidXRlX2dyb3VwX3JhbmdlID0gewogCQl9LAkJCQkJ
CVwKIH0KIAotI2RlZmluZSBBRDc2MDVfQ0hBTk5FTChudW0pCVwKLQlBRDc2MFhfQ0hBTk5FTChu
dW0sIDApCisjZGVmaW5lIEFENzYwNV9DSEFOTkVMKG51bSkJCQkJXAorCUFENzYwWF9DSEFOTkVM
KG51bSwgQklUKElJT19DSEFOX0lORk9fUkFXKSwJXAorCQlCSVQoSUlPX0NIQU5fSU5GT19TQ0FM
RSksIDApCisKKyNkZWZpbmUgQUQ3NjA2X0NIQU5ORUwobnVtKQkJCQlcCisJQUQ3NjBYX0NIQU5O
RUwobnVtLCBCSVQoSUlPX0NIQU5fSU5GT19SQVcpLAlcCisJCUJJVChJSU9fQ0hBTl9JTkZPX1ND
QUxFKSwJCVwKKwkJQklUKElJT19DSEFOX0lORk9fT1ZFUlNBTVBMSU5HX1JBVElPKSkKIAotI2Rl
ZmluZSBBRDc2MDZfQ0hBTk5FTChudW0pCVwKLQlBRDc2MFhfQ0hBTk5FTChudW0sIEJJVChJSU9f
Q0hBTl9JTkZPX09WRVJTQU1QTElOR19SQVRJTykpCisjZGVmaW5lIEFENzYxNl9DSEFOTkVMKG51
bSkJXAorCUFENzYwWF9DSEFOTkVMKG51bSwgQklUKElJT19DSEFOX0lORk9fUkFXKSB8IEJJVChJ
SU9fQ0hBTl9JTkZPX1NDQUxFKSxcCisJCTAsIEJJVChJSU9fQ0hBTl9JTkZPX09WRVJTQU1QTElO
R19SQVRJTykpCiAKIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaWlvX2NoYW5fc3BlYyBhZDc2MDVfY2hh
bm5lbHNbXSA9IHsKIAlJSU9fQ0hBTl9TT0ZUX1RJTUVTVEFNUCg0KSwKQEAgLTQ0MSw2ICs0ODcs
MjYgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBpaW9fY2hhbl9zcGVjIGFkNzYxNl9jaGFubmVsc1td
ID0gewogCUFENzYwNl9DSEFOTkVMKDE1KSwKIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaWlv
X2NoYW5fc3BlYyBhZDc2MTZfc3dfY2hhbm5lbHNbXSA9IHsKKwlJSU9fQ0hBTl9TT0ZUX1RJTUVT
VEFNUCgxNiksCisJQUQ3NjE2X0NIQU5ORUwoMCksCisJQUQ3NjE2X0NIQU5ORUwoMSksCisJQUQ3
NjE2X0NIQU5ORUwoMiksCisJQUQ3NjE2X0NIQU5ORUwoMyksCisJQUQ3NjE2X0NIQU5ORUwoNCks
CisJQUQ3NjE2X0NIQU5ORUwoNSksCisJQUQ3NjE2X0NIQU5ORUwoNiksCisJQUQ3NjE2X0NIQU5O
RUwoNyksCisJQUQ3NjE2X0NIQU5ORUwoOCksCisJQUQ3NjE2X0NIQU5ORUwoOSksCisJQUQ3NjE2
X0NIQU5ORUwoMTApLAorCUFENzYxNl9DSEFOTkVMKDExKSwKKwlBRDc2MTZfQ0hBTk5FTCgxMiks
CisJQUQ3NjE2X0NIQU5ORUwoMTMpLAorCUFENzYxNl9DSEFOTkVMKDE0KSwKKwlBRDc2MTZfQ0hB
Tk5FTCgxNSksCit9OworCiBzdGF0aWMgY29uc3Qgc3RydWN0IGFkNzYwNl9jaGlwX2luZm8gYWQ3
NjA2X2NoaXBfaW5mb190YmxbXSA9IHsKIAkvKiBNb3JlIGRldmljZXMgYWRkZWQgaW4gZnV0dXJl
ICovCiAJW0lEX0FENzYwNV80XSA9IHsKQEAgLTQ2OCw5ICs1MzQsMTMgQEAgc3RhdGljIGNvbnN0
IHN0cnVjdCBhZDc2MDZfY2hpcF9pbmZvIGFkNzYwNl9jaGlwX2luZm9fdGJsW10gPSB7CiAJW0lE
X0FENzYxNl0gPSB7CiAJCS5jaGFubmVscyA9IGFkNzYxNl9jaGFubmVscywKIAkJLm51bV9jaGFu
bmVscyA9IDE3LAorCQkuc3dfbW9kZV9jb25maWcgPSBhZDc2MTZfc3dfbW9kZV9jb25maWcsCiAJ
CS5vdmVyc2FtcGxpbmdfYXZhaWwgPSBhZDc2MTZfb3ZlcnNhbXBsaW5nX2F2YWlsLAogCQkub3Zl
cnNhbXBsaW5nX251bSA9IEFSUkFZX1NJWkUoYWQ3NjE2X292ZXJzYW1wbGluZ19hdmFpbCksCiAJ
CS5vc19yZXFfcmVzZXQgPSB0cnVlLAorCQkuc3BpX3JkX3dyX2NtZCA9IGFkNzYxNl9zcGlfcmRf
d3JfY21kLAorCQkud3JpdGVfc2NhbGVfc3cgPSBhZDc2MTZfd3JpdGVfc2NhbGVfc3csCisJCS53
cml0ZV9vc19zdyA9IGFkNzYxNl93cml0ZV9vc19zdywKIAl9LAogfTsKIApAQCAtNjA0LDYgKzY3
NCwyMyBAQCBzdGF0aWMgdm9pZCBhZDc2MDZfcmVndWxhdG9yX2Rpc2FibGUodm9pZCAqZGF0YSkK
IAlyZWd1bGF0b3JfZGlzYWJsZShzdC0+cmVnKTsKIH0KIAorc3RhdGljIGludCBhZDc2MTZfc3df
bW9kZV9jb25maWcoc3RydWN0IGlpb19kZXYgKmluZGlvX2RldikKK3sKKwlzdHJ1Y3QgYWQ3NjA2
X3N0YXRlICpzdCA9IGlpb19wcml2KGluZGlvX2Rldik7CisKKwkvKgorCSAqIFNjYWxlIGNhbiBi
ZSBjb25maWd1cmVkIGluZGl2aWR1YWxseSBmb3IgZWFjaCBjaGFubmVsCisJICogaW4gc29mdHdh
cmUgbW9kZS4KKwkgKi8KKwlpbmRpb19kZXYtPmNoYW5uZWxzID0gYWQ3NjE2X3N3X2NoYW5uZWxz
OworCisJLyogQWN0aXZhdGUgQnVyc3QgbW9kZSBhbmQgU0VRRU4gTU9ERSAqLworCXJldHVybiBh
ZDc2MDZfc3BpX3dyaXRlX21hc2soc3QsCisJCQkgICAgICBBRDc2MTZfQ09ORklHVVJBVElPTl9S
RUdJU1RFUiwKKwkJCSAgICAgIEFENzYxNl9CVVJTVF9NT0RFIHwgQUQ3NjE2X1NFUUVOX01PREUs
CisJCQkgICAgICBBRDc2MTZfQlVSU1RfTU9ERSB8IEFENzYxNl9TRVFFTl9NT0RFKTsKK30KKwog
aW50IGFkNzYwNl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGludCBpcnEsIHZvaWQgX19pb21l
bSAqYmFzZV9hZGRyZXNzLAogCQkgY29uc3QgY2hhciAqbmFtZSwgdW5zaWduZWQgaW50IGlkLAog
CQkgY29uc3Qgc3RydWN0IGFkNzYwNl9idXNfb3BzICpib3BzKQpAQCAtNjc3LDYgKzc2NCwxMCBA
QCBpbnQgYWQ3NjA2X3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwgaW50IGlycSwgdm9pZCBfX2lv
bWVtICpiYXNlX2FkZHJlc3MsCiAJaWYgKHJldCkKIAkJZGV2X3dhcm4oc3QtPmRldiwgImZhaWxl
ZCB0byBSRVNFVDogbm8gUkVTRVQgR1BJTyBzcGVjaWZpZWRcbiIpOwogCisJLyogQUQ3NjE2IHJl
cXVpcmVzIGFsIGxlYXN0IDE1bXMgdG8gcmVjb25maWd1cmUgYWZ0ZXIgYSByZXNldCAqLworCWlm
IChtc2xlZXBfaW50ZXJydXB0aWJsZSgxNSkpCisJCXJldHVybiAtRVJFU1RBUlRTWVM7CisKIAlz
dC0+d3JpdGVfc2NhbGUgPSBhZDc2MDZfd3JpdGVfc2NhbGVfaHc7CiAJc3QtPndyaXRlX29zID0g
YWQ3NjA2X3dyaXRlX29zX2h3OwogCkBAIC02ODUsNiArNzc2LDEwIEBAIGludCBhZDc2MDZfcHJv
YmUoc3RydWN0IGRldmljZSAqZGV2LCBpbnQgaXJxLCB2b2lkIF9faW9tZW0gKmJhc2VfYWRkcmVz
cywKIAkJCQkJCQkgImFkaSxzdy1tb2RlIik7CiAKIAlpZiAoc3QtPnN3X21vZGVfZW4pIHsKKwkJ
LyogU2NhbGUgb2YgMC4wNzYyOTMgaXMgb25seSBhdmFpbGFibGUgaW4gc3cgbW9kZSAqLworCQlz
dC0+c2NhbGVfYXZhaWwgPSBhZDc2MTZfc3dfc2NhbGVfYXZhaWw7CisJCXN0LT5udW1fc2NhbGVz
ID0gQVJSQVlfU0laRShhZDc2MTZfc3dfc2NhbGVfYXZhaWwpOworCiAJCS8qIEFmdGVyIHJlc2V0
LCBpbiBzb2Z0d2FyZSBtb2RlLCDCsTEwIFYgaXMgc2V0IGJ5IGRlZmF1bHQgKi8KIAkJbWVtc2V0
MzIoc3QtPnJhbmdlLCAyLCBBUlJBWV9TSVpFKHN0LT5yYW5nZSkpOwogCQlpbmRpb19kZXYtPmlu
Zm8gPSAmYWQ3NjA2X2luZm9fb3NfYW5kX3JhbmdlOwotLSAKMi4xNy4xCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
