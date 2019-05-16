Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E329A209B5
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 May 2019 16:31:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A53F312CF;
	Thu, 16 May 2019 14:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Spbiw0TUnMo1; Thu, 16 May 2019 14:31:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 2B46F3103E;
	Thu, 16 May 2019 14:31:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 468CE1BF3BB
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 14:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D98186699
 for <devel@linuxdriverproject.org>; Thu, 16 May 2019 14:31:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r2M-wILHuoN8 for <devel@linuxdriverproject.org>;
 Thu, 16 May 2019 14:31:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr720064.outbound.protection.outlook.com [40.107.72.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E0793855DF
 for <devel@driverdev.osuosl.org>; Thu, 16 May 2019 14:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=analog.onmicrosoft.com; s=selector1-analog-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/SGi4KzXxybIE2deu2WtQJI7ZoGuqAfdrEzycFR5+SU=;
 b=IRiN6M2+r4Z5qg2iWpXszVb3idjm6PfVAaTw3Y+LzbS3rSagpelVsottg8DCZATKrPau3ZWrC3C7l9y40rDrvBr6edhBZpjEBthpnSAJkv7E9c7+Uaun9BcDiMyWVtUg/pxFR0397Lxujc/O1wL9zAlL7NNmi8FtPJXPGPBBxrE=
Received: from MWHPR03CA0053.namprd03.prod.outlook.com (2603:10b6:301:3b::42)
 by BN3PR03MB2260.namprd03.prod.outlook.com (2a01:111:e400:7bb9::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1878.24; Thu, 16 May
 2019 14:31:46 +0000
Received: from BL2NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::209) by MWHPR03CA0053.outlook.office365.com
 (2603:10b6:301:3b::42) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1900.16 via Frontend
 Transport; Thu, 16 May 2019 14:31:45 +0000
Authentication-Results: spf=pass (sender IP is 137.71.25.55)
 smtp.mailfrom=analog.com; gmx.de; dkim=none (message not signed)
 header.d=none; gmx.de; dmarc=bestguesspass action=none header.from=analog.com; 
Received-SPF: Pass (protection.outlook.com: domain of analog.com designates
 137.71.25.55 as permitted sender) receiver=protection.outlook.com;
 client-ip=137.71.25.55; helo=nwd2mta1.analog.com;
Received: from nwd2mta1.analog.com (137.71.25.55) by
 BL2NAM02FT017.mail.protection.outlook.com (10.152.77.174) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1856.11
 via Frontend Transport; Thu, 16 May 2019 14:31:45 +0000
Received: from NWD2HUBCAS7.ad.analog.com (nwd2hubcas7.ad.analog.com
 [10.64.69.107])
 by nwd2mta1.analog.com (8.13.8/8.13.8) with ESMTP id x4GEVihC027556
 (version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=OK);
 Thu, 16 May 2019 07:31:44 -0700
Received: from ben-Latitude-E6540.analog.com (10.50.1.133) by
 NWD2HUBCAS7.ad.analog.com (10.64.69.107) with Microsoft SMTP Server id
 14.3.408.0; Thu, 16 May 2019 10:31:44 -0400
From: Beniamin Bia <beniamin.bia@analog.com>
To: <jic23@kernel.org>
Subject: [PATCH 2/5] iio: adc: ad7606: Add software configuration
Date: Thu, 16 May 2019 17:32:05 +0300
Message-ID: <20190516143208.19294-2-beniamin.bia@analog.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190516143208.19294-1-beniamin.bia@analog.com>
References: <20190516143208.19294-1-beniamin.bia@analog.com>
MIME-Version: 1.0
X-ADIRoutedOnPrem: True
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:137.71.25.55; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(136003)(396003)(376002)(346002)(39860400002)(2980300002)(189003)(199004)(2616005)(446003)(426003)(36756003)(476003)(126002)(7416002)(486006)(11346002)(186003)(26005)(2351001)(76176011)(7636002)(6916009)(47776003)(86362001)(336012)(2906002)(7696005)(23676004)(246002)(8936002)(478600001)(5820100001)(72206003)(50466002)(77096007)(2870700001)(44832011)(53416004)(8676002)(70206006)(106002)(6666004)(54906003)(70586007)(14444005)(356004)(107886003)(1076003)(316002)(4326008)(5660300002)(50226002)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN3PR03MB2260; H:nwd2mta1.analog.com; FPR:;
 SPF:Pass; LANG:en; PTR:nwd2mail10.analog.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6bf7b98c-f5ec-4b19-7bdd-08d6da0b38df
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4709054)(2017052603328);
 SRVR:BN3PR03MB2260; 
X-MS-TrafficTypeDiagnostic: BN3PR03MB2260:
X-Microsoft-Antispam-PRVS: <BN3PR03MB22607F41D4954991C4F73FEAF00A0@BN3PR03MB2260.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0039C6E5C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: cP135MHxXNkn4i3XsCLSFOX/JdUsMsKDntD/9YRDhKRtiQe3judiZ0dUOosGlmNTA/aW1QQpV8q0yBIP4/MwK2VAamF636EdCM6Zo5unuSEWJ2wyuZ4UkONS6pZO2VSM9p54hThoVAwNfoFnAWZENKwBhAhH7aIyIQ9H6124klyT1lt6wCDZayhlUgSzsaa7n5wUDmYS8SDJjE1If15ZMKIw1804cZzxeic0tKhhJERTHuKSJGqijAcBoSOvo0/42hRMsZ/uZ+4L1kVcYCHA3QQPTnAG/ZprekgCMLyxlZNj4qlr7GAqJRqKOkcsyl2A2B6jGKTR9ozK6nUUSMAeXXpTtr3tnAdV+8S5SIVv8JjQitfg/iQ5GfiP2kc82ikTtP3TTeceGk9hGjpS8VaOqn7f8KL5Onwox8Ew7KTLJcA=
X-OriginatorOrg: analog.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2019 14:31:45.2018 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bf7b98c-f5ec-4b19-7bdd-08d6da0b38df
X-MS-Exchange-CrossTenant-Id: eaa689b4-8f87-40e0-9c6f-7228de4d754a
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=eaa689b4-8f87-40e0-9c6f-7228de4d754a; Ip=[137.71.25.55];
 Helo=[nwd2mta1.analog.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR03MB2260
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
LS0tCiBkcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmMgfCA0MCArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tCiBkcml2ZXJzL2lpby9hZGMvYWQ3NjA2LmggfCAgMiArKwogMiBm
aWxlcyBjaGFuZ2VkLCAzOSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYyBiL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYwpp
bmRleCBjNjZmZjIyZjMyZDIuLmFiYTBmZDEyM2E1MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9paW8v
YWRjL2FkNzYwNi5jCisrKyBiL2RyaXZlcnMvaWlvL2FkYy9hZDc2MDYuYwpAQCAtMTQwLDcgKzE0
MCw3IEBAIHN0YXRpYyBpbnQgYWQ3NjA2X3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19k
ZXYsCiAJCQkgICBpbnQgKnZhbDIsCiAJCQkgICBsb25nIG0pCiB7Ci0JaW50IHJldDsKKwlpbnQg
cmV0LCBjaCA9IDA7CiAJc3RydWN0IGFkNzYwNl9zdGF0ZSAqc3QgPSBpaW9fcHJpdihpbmRpb19k
ZXYpOwogCiAJc3dpdGNoIChtKSB7CkBAIC0xNTcsOCArMTU3LDEwIEBAIHN0YXRpYyBpbnQgYWQ3
NjA2X3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJCSp2YWwgPSAoc2hvcnQp
cmV0OwogCQlyZXR1cm4gSUlPX1ZBTF9JTlQ7CiAJY2FzZSBJSU9fQ0hBTl9JTkZPX1NDQUxFOgor
CQlpZiAoc3QtPnN3X21vZGVfZW4pCisJCQljaCA9IGNoYW4tPmFkZHJlc3M7CiAJCSp2YWwgPSAw
OwotCQkqdmFsMiA9IHN0LT5zY2FsZV9hdmFpbFtzdC0+cmFuZ2VbMF1dOworCQkqdmFsMiA9IHN0
LT5zY2FsZV9hdmFpbFtzdC0+cmFuZ2VbY2hdXTsKIAkJcmV0dXJuIElJT19WQUxfSU5UX1BMVVNf
TUlDUk87CiAJY2FzZSBJSU9fQ0hBTl9JTkZPX09WRVJTQU1QTElOR19SQVRJTzoKIAkJKnZhbCA9
IHN0LT5vdmVyc2FtcGxpbmc7CkBAIC0yMzMsNyArMjM1LDkgQEAgc3RhdGljIGludCBhZDc2MDZf
d3JpdGVfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCiAJY2FzZSBJSU9fQ0hBTl9JTkZP
X1NDQUxFOgogCQltdXRleF9sb2NrKCZzdC0+bG9jayk7CiAJCWkgPSBmaW5kX2Nsb3Nlc3QodmFs
Miwgc3QtPnNjYWxlX2F2YWlsLCBzdC0+bnVtX3NjYWxlcyk7Ci0JCXJldCA9IHN0LT53cml0ZV9z
Y2FsZShpbmRpb19kZXYsIGNoYW4tPmFkZHJlc3MsIGkpOworCQlpZiAoc3QtPnN3X21vZGVfZW4p
CisJCQljaCA9IGNoYW4tPmFkZHJlc3M7CisJCXJldCA9IHN0LT53cml0ZV9zY2FsZShpbmRpb19k
ZXYsIGNoLCBpKTsKIAkJaWYgKHJldCA8IDApIHsKIAkJCW11dGV4X3VubG9jaygmc3QtPmxvY2sp
OwogCQkJcmV0dXJuIHJldDsKQEAgLTYxNiw2ICs2MjAsMzYgQEAgaW50IGFkNzYwNl9wcm9iZShz
dHJ1Y3QgZGV2aWNlICpkZXYsIGludCBpcnEsIHZvaWQgX19pb21lbSAqYmFzZV9hZGRyZXNzLAog
CXN0LT53cml0ZV9zY2FsZSA9IGFkNzYwNl93cml0ZV9zY2FsZV9odzsKIAlzdC0+d3JpdGVfb3Mg
PSBhZDc2MDZfd3JpdGVfb3NfaHc7CiAKKwlpZiAoc3QtPmNoaXBfaW5mby0+c3dfbW9kZV9jb25m
aWcpCisJCXN0LT5zd19tb2RlX2VuID0gZGV2aWNlX3Byb3BlcnR5X3ByZXNlbnQoc3QtPmRldiwK
KwkJCQkJCQkgImFkaSxzdy1tb2RlIik7CisKKwlpZiAoc3QtPnN3X21vZGVfZW4pIHsKKwkJLyog
QWZ0ZXIgcmVzZXQsIGluIHNvZnR3YXJlIG1vZGUsIMKxMTAgViBpcyBzZXQgYnkgZGVmYXVsdCAq
LworCQltZW1zZXQzMihzdC0+cmFuZ2UsIDIsIEFSUkFZX1NJWkUoc3QtPnJhbmdlKSk7CisJCWlu
ZGlvX2Rldi0+aW5mbyA9ICZhZDc2MDZfaW5mb19vc19hbmRfcmFuZ2U7CisKKwkJLyoKKwkJICog
SW4gc29mdHdhcmUgbW9kZSwgdGhlIHJhbmdlIGdwaW8gaGFzIG5vIGxvbmdlciBpdHMgZnVuY3Rp
b24uCisJCSAqIEluc3RlYWQsIHRoZSBzY2FsZSBjYW4gYmUgY29uZmlndXJlZCBpbmRpdmlkdWFs
bHkgZm9yIGVhY2gKKwkJICogY2hhbm5lbCBmcm9tIHRoZSByYW5nZSByZWdpc3RlcnMuCisJCSAq
LworCQlpZiAoc3QtPmNoaXBfaW5mby0+d3JpdGVfc2NhbGVfc3cpCisJCQlzdC0+d3JpdGVfc2Nh
bGUgPSBzdC0+Y2hpcF9pbmZvLT53cml0ZV9zY2FsZV9zdzsKKworCQkvKgorCQkgKiBJbiBzb2Z0
d2FyZSBtb2RlLCB0aGUgb3ZlcnNhbXBsaW5nIGlzIG5vIGxvbmdlciBjb25maWd1cmVkCisJCSAq
IHdpdGggR1BJTyBwaW5zLiBJbnN0ZWFkLCB0aGUgb3ZlcnNhbXBsaW5nIGNhbiBiZSBjb25maWd1
cmVkCisJCSAqIGluIGNvbmZpZ3VyYXRpaW9uIHJlZ2lzdGVyLgorCQkgKi8KKwkJaWYgKHN0LT5j
aGlwX2luZm8tPndyaXRlX29zX3N3KQorCQkJc3QtPndyaXRlX29zID0gc3QtPmNoaXBfaW5mby0+
d3JpdGVfb3Nfc3c7CisKKwkJcmV0ID0gc3QtPmNoaXBfaW5mby0+c3dfbW9kZV9jb25maWcoaW5k
aW9fZGV2KTsKKwkJaWYgKHJldCA8IDApCisJCQlyZXR1cm4gcmV0OworCX0KKwogCXN0LT50cmln
ID0gZGV2bV9paW9fdHJpZ2dlcl9hbGxvYyhkZXYsICIlcy1kZXYlZCIsCiAJCQkJCSAgaW5kaW9f
ZGV2LT5uYW1lLCBpbmRpb19kZXYtPmlkKTsKIAlpZiAoIXN0LT50cmlnKQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9paW8vYWRjL2FkNzYwNi5oIGIvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5oCmluZGV4
IDE0M2MzMDE2M2RmOS4uZDhhNTA5YzJjNDI4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2lpby9hZGMv
YWQ3NjA2LmgKKysrIGIvZHJpdmVycy9paW8vYWRjL2FkNzYwNi5oCkBAIC00Myw2ICs0Myw3IEBA
IHN0cnVjdCBhZDc2MDZfY2hpcF9pbmZvIHsKICAqIEByYW5nZQkJdm9sdGFnZSByYW5nZSBzZWxl
Y3Rpb24sIHNlbGVjdHMgd2hpY2ggc2NhbGUgdG8gYXBwbHkKICAqIEBvdmVyc2FtcGxpbmcJb3Zl
cnNhbXBsaW5nIHNlbGVjdGlvbgogICogQGJhc2VfYWRkcmVzcwlhZGRyZXNzIGZyb20gd2hlcmUg
dG8gcmVhZCBkYXRhIGluIHBhcmFsbGVsIG9wZXJhdGlvbgorICogQHN3X21vZGVfZW4JCXNvZnR3
YXJlIG1vZGUgZW5hYmxlZAogICogQHNjYWxlX2F2YWlsCQlwb2ludGVyIHRvIHRoZSBhcnJheSB3
aGljaCBzdG9yZXMgdGhlIGF2YWlsYWJsZSBzY2FsZXMKICAqIEBudW1fc2NhbGVzCQludW1iZXIg
b2YgZWxlbWVudHMgc3RvcmVkIGluIHRoZSBzY2FsZV9hdmFpbCBhcnJheQogICogQG92ZXJzYW1w
bGluZ19hdmFpbAlwb2ludGVyIHRvIHRoZSBhcnJheSB3aGljaCBzdG9yZXMgdGhlIGF2YWlsYWJs
ZQpAQCAtNzEsNiArNzIsNyBAQCBzdHJ1Y3QgYWQ3NjA2X3N0YXRlIHsKIAl1bnNpZ25lZCBpbnQJ
CQlyYW5nZVsxNl07CiAJdW5zaWduZWQgaW50CQkJb3ZlcnNhbXBsaW5nOwogCXZvaWQgX19pb21l
bQkJCSpiYXNlX2FkZHJlc3M7CisJYm9vbAkJCQlzd19tb2RlX2VuOwogCWNvbnN0IHVuc2lnbmVk
IGludAkJKnNjYWxlX2F2YWlsOwogCXVuc2lnbmVkIGludAkJCW51bV9zY2FsZXM7CiAJY29uc3Qg
dW5zaWduZWQgaW50CQkqb3ZlcnNhbXBsaW5nX2F2YWlsOwotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
