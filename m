Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 330452A6835
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 16:53:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BF279203F5;
	Wed,  4 Nov 2020 15:53:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yvVl4uttptes; Wed,  4 Nov 2020 15:53:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 253F020443;
	Wed,  4 Nov 2020 15:53:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A4D81BF846
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 15:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2D4FC20004
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 15:52:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QLLrc-OZl6qV for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 15:52:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2086.outbound.protection.outlook.com [40.107.223.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 2F1372038F
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 15:52:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDrQB11Hkg9NY5t1mQmXJTpclxzAivzfPIVHpXdBsUwqDBE8KtMA8nfHdsaczJZDo6iEpAHUhV49tHErcEAOvsUAjm//xj9bD89KePFH2cihvxMaPs6ELelHCsrOWWZ4SU3BfZWMB4SfSxveKXUtUVzsf5Kqy42gnXFenDvdE32V7T5JPTXxdEcH/eHKkwcGXHlM/2V4wCWtpxzoLi4INBM7/49H+F0CT0wuVjkl5ibq/o7MiDpxJ5axFo74Oai69rVCI2ywacyySQn/eMMm6Rf8p3IFiGhm/HrQ9qLDDnaM1+2pwRfJXRcj0c+YzTDgJAUn8+cD9Y9BTH8DtwxJnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUnsoPoplvHUt9Xza9j1HavLwuWmOnSVnZZ+2HeiqCQ=;
 b=kqO+2KeGFx3kCuO1EkMl+9/4Hk2Juwygs2ucK9KwT6SsQOyJOkTrykz6jBwAUObiy3Tuk3ekx9zq0iUnq2Y+/BTCdXNsjZN0yasniPwCCq4/JMoSGmXoOKLKJguUzWxkDfu3Ggyu782izsKoxxbnDUfRd4TqF1LsVLcx1ppz4a5qFJINjV4el5diFVI4LesiuhEx3sXqzduVgV+rKK3VOUz4YZ36qj0NYqtRAi25gTztywmEeX5ba6NlZcvnp6kEXvqaxB52ksPDn02Qk+6Idek7BYlEQdPKRFKekzjQjp0GyN0O7gTXxXRhtMwI4BCCbfM+2HQHm1gV7kDBTdCqhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUnsoPoplvHUt9Xza9j1HavLwuWmOnSVnZZ+2HeiqCQ=;
 b=pannGhmEpIbKU17rAkHqD6eDnZ0Luci6qb4bo906TxggxCn82r4Li71uHvbQS8gcYvkJjP2AacUBPH4oWZ9EVGzm1XWUIYm+IeSeCRRD7IcnYUarjBOL3ExvPjjxox/uwjaaTL+RaSo68jQ01t/ZziYaCVU4ii2z7n3nAnAdwN0=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.32; Wed, 4 Nov
 2020 15:52:53 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3499.032; Wed, 4 Nov 2020
 15:52:53 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v3 14/24] wfx: add key.c/key.h
Date: Wed,  4 Nov 2020 16:51:57 +0100
Message-Id: <20201104155207.128076-15-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
References: <20201104155207.128076-1-Jerome.Pouiller@silabs.com>
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: SN6PR01CA0032.prod.exchangelabs.com (2603:10b6:805:b6::45)
 To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (82.67.86.106) by
 SN6PR01CA0032.prod.exchangelabs.com (2603:10b6:805:b6::45) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3499.19 via Frontend Transport; Wed, 4 Nov 2020 15:52:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 01836fe3-0f84-406b-0f0a-08d880d9b0cc
X-MS-TrafficTypeDiagnostic: SN6PR11MB2718:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2718983559E106BBD242AF3D93EF0@SN6PR11MB2718.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:376;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F9jtMQkhAur1+BSY/dBgn+NpCFATHGYq8LqYzcuANYQqQE3Nkq3aCH8kGWPvR2h0hpJ+btnc1NmDJfn+OKjzaptEuNKLaM/Vv3Bsim8+G8aelq7Xg4Zv78H5cPt5El3yXY/llnRjpPdWgd1vYt/soXvShe/wCOYYU7RAxF3R7Yc6G+/btEi7hhD5B3wLEC2xO6nw6enf8OuMTbusivTtuKE6cuCEkqVOJUXEJ6Jbq2u5wNNbhn6XHBkGL31ET+OMYjkGt4ksZT464MnCheEdEk282xIOKKYAwQVP3UCusZPfBzKecUljiILJA3XoeG8j3FYIZy4aJELENNTl3JXncA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(376002)(39850400004)(136003)(396003)(8936002)(478600001)(186003)(16526019)(956004)(2616005)(6486002)(8676002)(66574015)(66476007)(66556008)(66946007)(316002)(7696005)(83380400001)(26005)(54906003)(107886003)(36756003)(52116002)(7416002)(4326008)(5660300002)(86362001)(1076003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: V7cvX3SG5seAYrg+HDJ4FYJYg4KTWblsYrHQlhSFYawesQbV5Xx7EWufbE89eFAuxlzB6sjyAyv/zdltRhYcmV2p71UFdVw0mqXDSBuFIc3kLySWM1OhZ7jIYaifT53UDyoCzWUQdczXMOwJbYQqNhdx1Eto72kECqgOkiI187PSTiS+1v58JnuTwYEwtS1jztykv+hUirLSeocoleWL+G50DnitvfEWud9x3gCk4DbP3clXYCwgXfX+5LyOm0fkZFKeZhHS9YjEEnClTtSkNCzLt7s7kpPwi4d3GaGb5tkQYq1x8TwDFb6VZtmiAwJj6hESzSAwkW7gKCmik0oGhnF47A2ujJfHpZXXZbMO5LaehQmbLEsBJgRpS7V/WiEsEyRlEOmdGCsXKUjGWDYPMwa6HfDMwfCxMMM2EJ3j3I5BkcnlV46tc4l4oaxvCE4FxjrAt/0lckRYUFzFdSEkK1DPpHWZlATKRsYfM3gc0oW+3w7KvH5JCRC0blmOsCh6J9lB8bGeWGKuiEugWIJYC8z+a0FtxYg/w9/3uYWBnomCp/tTrsu6umn40k+d7+JKPsptedbv/mNpNlY+3HdIJMRxGUgTpV7C4ZlSH4o+UO/o9X8isdGBHbFQ/9kcRjl7vSb6FSI31YeCLfJ8h/6fTg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01836fe3-0f84-406b-0f0a-08d880d9b0cc
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2020 15:52:53.7655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mKJQtg80jeVdc5/lBGYgM94cmwDlHBPrKKG+kZ6XXfT1xonXcXqippQTpff8QvRw6ZmmLJvtBcRcoVjSV7l6kQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2718
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngva2V5LmMgfCAyNDEgKysrKysr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngva2V5
LmggfCAgMjAgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDI2MSBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9rZXkuYwogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngva2V5LmgKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2tleS5jIGIvZHJpdmVycy9u
ZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9rZXkuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLjJhYjgyYmVkNGMxYgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL3NpbGFicy93Zngva2V5LmMKQEAgLTAsMCArMSwyNDEgQEAKKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8qCisgKiBLZXkgbWFuYWdlbWVudCByZWxh
dGVkIGZ1bmN0aW9ucy4KKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAyMCwgU2lsaWNvbiBM
YWJvcmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdodCAoYykgMjAxMCwgU1QtRXJpY3Nzb24KKyAq
LworI2luY2x1ZGUgPGxpbnV4L2V0aGVyZGV2aWNlLmg+CisjaW5jbHVkZSA8bmV0L21hYzgwMjEx
Lmg+CisKKyNpbmNsdWRlICJrZXkuaCIKKyNpbmNsdWRlICJ3ZnguaCIKKyNpbmNsdWRlICJoaWZf
dHhfbWliLmgiCisKK3N0YXRpYyBpbnQgd2Z4X2FsbG9jX2tleShzdHJ1Y3Qgd2Z4X2RldiAqd2Rl
dikKK3sKKwlpbnQgaWR4OworCisJaWR4ID0gZmZzKH53ZGV2LT5rZXlfbWFwKSAtIDE7CisJaWYg
KGlkeCA8IDAgfHwgaWR4ID49IE1BWF9LRVlfRU5UUklFUykKKwkJcmV0dXJuIC0xOworCisJd2Rl
di0+a2V5X21hcCB8PSBCSVQoaWR4KTsKKwlyZXR1cm4gaWR4OworfQorCitzdGF0aWMgdm9pZCB3
ZnhfZnJlZV9rZXkoc3RydWN0IHdmeF9kZXYgKndkZXYsIGludCBpZHgpCit7CisJV0FSTighKHdk
ZXYtPmtleV9tYXAgJiBCSVQoaWR4KSksICJpbmNvbnNpc3RlbnQga2V5IGFsbG9jYXRpb24iKTsK
Kwl3ZGV2LT5rZXlfbWFwICY9IH5CSVQoaWR4KTsKK30KKworc3RhdGljIHU4IGZpbGxfd2VwX3Bh
aXIoc3RydWN0IGhpZl93ZXBfcGFpcndpc2Vfa2V5ICptc2csCisJCQkgICAgIHN0cnVjdCBpZWVl
ODAyMTFfa2V5X2NvbmYgKmtleSwgdTggKnBlZXJfYWRkcikKK3sKKwlXQVJOKGtleS0+a2V5bGVu
ID4gc2l6ZW9mKG1zZy0+a2V5X2RhdGEpLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsKKwltc2ctPmtl
eV9sZW5ndGggPSBrZXktPmtleWxlbjsKKwltZW1jcHkobXNnLT5rZXlfZGF0YSwga2V5LT5rZXks
IGtleS0+a2V5bGVuKTsKKwlldGhlcl9hZGRyX2NvcHkobXNnLT5wZWVyX2FkZHJlc3MsIHBlZXJf
YWRkcik7CisJcmV0dXJuIEhJRl9LRVlfVFlQRV9XRVBfUEFJUldJU0U7Cit9CisKK3N0YXRpYyB1
OCBmaWxsX3dlcF9ncm91cChzdHJ1Y3QgaGlmX3dlcF9ncm91cF9rZXkgKm1zZywKKwkJCSAgICAg
IHN0cnVjdCBpZWVlODAyMTFfa2V5X2NvbmYgKmtleSkKK3sKKwlXQVJOKGtleS0+a2V5bGVuID4g
c2l6ZW9mKG1zZy0+a2V5X2RhdGEpLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsKKwltc2ctPmtleV9p
ZCA9IGtleS0+a2V5aWR4OworCW1zZy0+a2V5X2xlbmd0aCA9IGtleS0+a2V5bGVuOworCW1lbWNw
eShtc2ctPmtleV9kYXRhLCBrZXktPmtleSwga2V5LT5rZXlsZW4pOworCXJldHVybiBISUZfS0VZ
X1RZUEVfV0VQX0RFRkFVTFQ7Cit9CisKK3N0YXRpYyB1OCBmaWxsX3RraXBfcGFpcihzdHJ1Y3Qg
aGlmX3RraXBfcGFpcndpc2Vfa2V5ICptc2csCisJCQkgICAgICBzdHJ1Y3QgaWVlZTgwMjExX2tl
eV9jb25mICprZXksIHU4ICpwZWVyX2FkZHIpCit7CisJdTggKmtleWJ1ZiA9IGtleS0+a2V5Owor
CisJV0FSTihrZXktPmtleWxlbiAhPSBzaXplb2YobXNnLT50a2lwX2tleV9kYXRhKQorCQkJICAg
ICsgc2l6ZW9mKG1zZy0+dHhfbWljX2tleSkKKwkJCSAgICArIHNpemVvZihtc2ctPnJ4X21pY19r
ZXkpLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsKKwltZW1jcHkobXNnLT50a2lwX2tleV9kYXRhLCBr
ZXlidWYsIHNpemVvZihtc2ctPnRraXBfa2V5X2RhdGEpKTsKKwlrZXlidWYgKz0gc2l6ZW9mKG1z
Zy0+dGtpcF9rZXlfZGF0YSk7CisJbWVtY3B5KG1zZy0+dHhfbWljX2tleSwga2V5YnVmLCBzaXpl
b2YobXNnLT50eF9taWNfa2V5KSk7CisJa2V5YnVmICs9IHNpemVvZihtc2ctPnR4X21pY19rZXkp
OworCW1lbWNweShtc2ctPnJ4X21pY19rZXksIGtleWJ1Ziwgc2l6ZW9mKG1zZy0+cnhfbWljX2tl
eSkpOworCWV0aGVyX2FkZHJfY29weShtc2ctPnBlZXJfYWRkcmVzcywgcGVlcl9hZGRyKTsKKwly
ZXR1cm4gSElGX0tFWV9UWVBFX1RLSVBfUEFJUldJU0U7Cit9CisKK3N0YXRpYyB1OCBmaWxsX3Rr
aXBfZ3JvdXAoc3RydWN0IGhpZl90a2lwX2dyb3VwX2tleSAqbXNnLAorCQkJICAgICAgIHN0cnVj
dCBpZWVlODAyMTFfa2V5X2NvbmYgKmtleSwKKwkJCSAgICAgICBzdHJ1Y3QgaWVlZTgwMjExX2tl
eV9zZXEgKnNlcSwKKwkJCSAgICAgICBlbnVtIG5sODAyMTFfaWZ0eXBlIGlmdHlwZSkKK3sKKwl1
OCAqa2V5YnVmID0ga2V5LT5rZXk7CisKKwlXQVJOKGtleS0+a2V5bGVuICE9IHNpemVvZihtc2ct
PnRraXBfa2V5X2RhdGEpCisJCQkgICAgKyAyICogc2l6ZW9mKG1zZy0+cnhfbWljX2tleSksICJp
bmNvbnNpc3RlbnQgZGF0YSIpOworCW1zZy0+a2V5X2lkID0ga2V5LT5rZXlpZHg7CisJbWVtY3B5
KG1zZy0+cnhfc2VxdWVuY2VfY291bnRlciwKKwkgICAgICAgJnNlcS0+dGtpcC5pdjE2LCBzaXpl
b2Yoc2VxLT50a2lwLml2MTYpKTsKKwltZW1jcHkobXNnLT5yeF9zZXF1ZW5jZV9jb3VudGVyICsg
c2l6ZW9mKHUxNiksCisJICAgICAgICZzZXEtPnRraXAuaXYzMiwgc2l6ZW9mKHNlcS0+dGtpcC5p
djMyKSk7CisJbWVtY3B5KG1zZy0+dGtpcF9rZXlfZGF0YSwga2V5YnVmLCBzaXplb2YobXNnLT50
a2lwX2tleV9kYXRhKSk7CisJa2V5YnVmICs9IHNpemVvZihtc2ctPnRraXBfa2V5X2RhdGEpOwor
CWlmIChpZnR5cGUgPT0gTkw4MDIxMV9JRlRZUEVfQVApCisJCS8vIFVzZSBUeCBNSUMgS2V5CisJ
CW1lbWNweShtc2ctPnJ4X21pY19rZXksIGtleWJ1ZiArIDAsIHNpemVvZihtc2ctPnJ4X21pY19r
ZXkpKTsKKwllbHNlCisJCS8vIFVzZSBSeCBNSUMgS2V5CisJCW1lbWNweShtc2ctPnJ4X21pY19r
ZXksIGtleWJ1ZiArIDgsIHNpemVvZihtc2ctPnJ4X21pY19rZXkpKTsKKwlyZXR1cm4gSElGX0tF
WV9UWVBFX1RLSVBfR1JPVVA7Cit9CisKK3N0YXRpYyB1OCBmaWxsX2NjbXBfcGFpcihzdHJ1Y3Qg
aGlmX2Flc19wYWlyd2lzZV9rZXkgKm1zZywKKwkJCSAgICAgIHN0cnVjdCBpZWVlODAyMTFfa2V5
X2NvbmYgKmtleSwgdTggKnBlZXJfYWRkcikKK3sKKwlXQVJOKGtleS0+a2V5bGVuICE9IHNpemVv
Zihtc2ctPmFlc19rZXlfZGF0YSksICJpbmNvbnNpc3RlbnQgZGF0YSIpOworCWV0aGVyX2FkZHJf
Y29weShtc2ctPnBlZXJfYWRkcmVzcywgcGVlcl9hZGRyKTsKKwltZW1jcHkobXNnLT5hZXNfa2V5
X2RhdGEsIGtleS0+a2V5LCBrZXktPmtleWxlbik7CisJcmV0dXJuIEhJRl9LRVlfVFlQRV9BRVNf
UEFJUldJU0U7Cit9CisKK3N0YXRpYyB1OCBmaWxsX2NjbXBfZ3JvdXAoc3RydWN0IGhpZl9hZXNf
Z3JvdXBfa2V5ICptc2csCisJCQkgICAgICAgc3RydWN0IGllZWU4MDIxMV9rZXlfY29uZiAqa2V5
LAorCQkJICAgICAgIHN0cnVjdCBpZWVlODAyMTFfa2V5X3NlcSAqc2VxKQoreworCVdBUk4oa2V5
LT5rZXlsZW4gIT0gc2l6ZW9mKG1zZy0+YWVzX2tleV9kYXRhKSwgImluY29uc2lzdGVudCBkYXRh
Iik7CisJbWVtY3B5KG1zZy0+YWVzX2tleV9kYXRhLCBrZXktPmtleSwga2V5LT5rZXlsZW4pOwor
CW1lbWNweShtc2ctPnJ4X3NlcXVlbmNlX2NvdW50ZXIsIHNlcS0+Y2NtcC5wbiwgc2l6ZW9mKHNl
cS0+Y2NtcC5wbikpOworCW1lbXJldmVyc2UobXNnLT5yeF9zZXF1ZW5jZV9jb3VudGVyLCBzaXpl
b2Yoc2VxLT5jY21wLnBuKSk7CisJbXNnLT5rZXlfaWQgPSBrZXktPmtleWlkeDsKKwlyZXR1cm4g
SElGX0tFWV9UWVBFX0FFU19HUk9VUDsKK30KKworc3RhdGljIHU4IGZpbGxfc21zNF9wYWlyKHN0
cnVjdCBoaWZfd2FwaV9wYWlyd2lzZV9rZXkgKm1zZywKKwkJCSAgICAgIHN0cnVjdCBpZWVlODAy
MTFfa2V5X2NvbmYgKmtleSwgdTggKnBlZXJfYWRkcikKK3sKKwl1OCAqa2V5YnVmID0ga2V5LT5r
ZXk7CisKKwlXQVJOKGtleS0+a2V5bGVuICE9IHNpemVvZihtc2ctPndhcGlfa2V5X2RhdGEpCisJ
CQkgICAgKyBzaXplb2YobXNnLT5taWNfa2V5X2RhdGEpLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsK
KwlldGhlcl9hZGRyX2NvcHkobXNnLT5wZWVyX2FkZHJlc3MsIHBlZXJfYWRkcik7CisJbWVtY3B5
KG1zZy0+d2FwaV9rZXlfZGF0YSwga2V5YnVmLCBzaXplb2YobXNnLT53YXBpX2tleV9kYXRhKSk7
CisJa2V5YnVmICs9IHNpemVvZihtc2ctPndhcGlfa2V5X2RhdGEpOworCW1lbWNweShtc2ctPm1p
Y19rZXlfZGF0YSwga2V5YnVmLCBzaXplb2YobXNnLT5taWNfa2V5X2RhdGEpKTsKKwltc2ctPmtl
eV9pZCA9IGtleS0+a2V5aWR4OworCXJldHVybiBISUZfS0VZX1RZUEVfV0FQSV9QQUlSV0lTRTsK
K30KKworc3RhdGljIHU4IGZpbGxfc21zNF9ncm91cChzdHJ1Y3QgaGlmX3dhcGlfZ3JvdXBfa2V5
ICptc2csCisJCQkgICAgICAgc3RydWN0IGllZWU4MDIxMV9rZXlfY29uZiAqa2V5KQoreworCXU4
ICprZXlidWYgPSBrZXktPmtleTsKKworCVdBUk4oa2V5LT5rZXlsZW4gIT0gc2l6ZW9mKG1zZy0+
d2FwaV9rZXlfZGF0YSkKKwkJCSAgICArIHNpemVvZihtc2ctPm1pY19rZXlfZGF0YSksICJpbmNv
bnNpc3RlbnQgZGF0YSIpOworCW1lbWNweShtc2ctPndhcGlfa2V5X2RhdGEsIGtleWJ1Ziwgc2l6
ZW9mKG1zZy0+d2FwaV9rZXlfZGF0YSkpOworCWtleWJ1ZiArPSBzaXplb2YobXNnLT53YXBpX2tl
eV9kYXRhKTsKKwltZW1jcHkobXNnLT5taWNfa2V5X2RhdGEsIGtleWJ1Ziwgc2l6ZW9mKG1zZy0+
bWljX2tleV9kYXRhKSk7CisJbXNnLT5rZXlfaWQgPSBrZXktPmtleWlkeDsKKwlyZXR1cm4gSElG
X0tFWV9UWVBFX1dBUElfR1JPVVA7Cit9CisKK3N0YXRpYyB1OCBmaWxsX2Flc19jbWFjX2dyb3Vw
KHN0cnVjdCBoaWZfaWd0a19ncm91cF9rZXkgKm1zZywKKwkJCQkgICBzdHJ1Y3QgaWVlZTgwMjEx
X2tleV9jb25mICprZXksCisJCQkJICAgc3RydWN0IGllZWU4MDIxMV9rZXlfc2VxICpzZXEpCit7
CisJV0FSTihrZXktPmtleWxlbiAhPSBzaXplb2YobXNnLT5pZ3RrX2tleV9kYXRhKSwgImluY29u
c2lzdGVudCBkYXRhIik7CisJbWVtY3B5KG1zZy0+aWd0a19rZXlfZGF0YSwga2V5LT5rZXksIGtl
eS0+a2V5bGVuKTsKKwltZW1jcHkobXNnLT5pcG4sIHNlcS0+YWVzX2NtYWMucG4sIHNpemVvZihz
ZXEtPmFlc19jbWFjLnBuKSk7CisJbWVtcmV2ZXJzZShtc2ctPmlwbiwgc2l6ZW9mKHNlcS0+YWVz
X2NtYWMucG4pKTsKKwltc2ctPmtleV9pZCA9IGtleS0+a2V5aWR4OworCXJldHVybiBISUZfS0VZ
X1RZUEVfSUdUS19HUk9VUDsKK30KKworc3RhdGljIGludCB3ZnhfYWRkX2tleShzdHJ1Y3Qgd2Z4
X3ZpZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKKwkJICAgICAgIHN0cnVjdCBp
ZWVlODAyMTFfa2V5X2NvbmYgKmtleSkKK3sKKwlpbnQgcmV0OworCXN0cnVjdCBoaWZfcmVxX2Fk
ZF9rZXkgayA9IHsgfTsKKwlzdHJ1Y3QgaWVlZTgwMjExX2tleV9zZXEgc2VxOworCXN0cnVjdCB3
ZnhfZGV2ICp3ZGV2ID0gd3ZpZi0+d2RldjsKKwlpbnQgaWR4ID0gd2Z4X2FsbG9jX2tleSh3dmlm
LT53ZGV2KTsKKwlib29sIHBhaXJ3aXNlID0ga2V5LT5mbGFncyAmIElFRUU4MDIxMV9LRVlfRkxB
R19QQUlSV0lTRTsKKworCVdBUk4oa2V5LT5mbGFncyAmIElFRUU4MDIxMV9LRVlfRkxBR19QQUlS
V0lTRSAmJiAhc3RhLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsKKwlpZWVlODAyMTFfZ2V0X2tleV9y
eF9zZXEoa2V5LCAwLCAmc2VxKTsKKwlpZiAoaWR4IDwgMCkKKwkJcmV0dXJuIC1FSU5WQUw7CisJ
ay5pbnRfaWQgPSB3dmlmLT5pZDsKKwlrLmVudHJ5X2luZGV4ID0gaWR4OworCWlmIChrZXktPmNp
cGhlciA9PSBXTEFOX0NJUEhFUl9TVUlURV9XRVA0MCB8fAorCSAgICBrZXktPmNpcGhlciA9PSBX
TEFOX0NJUEhFUl9TVUlURV9XRVAxMDQpIHsKKwkJaWYgKHBhaXJ3aXNlKQorCQkJay50eXBlID0g
ZmlsbF93ZXBfcGFpcigmay5rZXkud2VwX3BhaXJ3aXNlX2tleSwga2V5LAorCQkJCQkgICAgICAg
c3RhLT5hZGRyKTsKKwkJZWxzZQorCQkJay50eXBlID0gZmlsbF93ZXBfZ3JvdXAoJmsua2V5Lndl
cF9ncm91cF9rZXksIGtleSk7CisJfSBlbHNlIGlmIChrZXktPmNpcGhlciA9PSBXTEFOX0NJUEhF
Ul9TVUlURV9US0lQKSB7CisJCWlmIChwYWlyd2lzZSkKKwkJCWsudHlwZSA9IGZpbGxfdGtpcF9w
YWlyKCZrLmtleS50a2lwX3BhaXJ3aXNlX2tleSwga2V5LAorCQkJCQkJc3RhLT5hZGRyKTsKKwkJ
ZWxzZQorCQkJay50eXBlID0gZmlsbF90a2lwX2dyb3VwKCZrLmtleS50a2lwX2dyb3VwX2tleSwg
a2V5LAorCQkJCQkJICZzZXEsIHd2aWYtPnZpZi0+dHlwZSk7CisJfSBlbHNlIGlmIChrZXktPmNp
cGhlciA9PSBXTEFOX0NJUEhFUl9TVUlURV9DQ01QKSB7CisJCWlmIChwYWlyd2lzZSkKKwkJCWsu
dHlwZSA9IGZpbGxfY2NtcF9wYWlyKCZrLmtleS5hZXNfcGFpcndpc2Vfa2V5LCBrZXksCisJCQkJ
CQlzdGEtPmFkZHIpOworCQllbHNlCisJCQlrLnR5cGUgPSBmaWxsX2NjbXBfZ3JvdXAoJmsua2V5
LmFlc19ncm91cF9rZXksIGtleSwKKwkJCQkJCSAmc2VxKTsKKwl9IGVsc2UgaWYgKGtleS0+Y2lw
aGVyID09IFdMQU5fQ0lQSEVSX1NVSVRFX1NNUzQpIHsKKwkJaWYgKHBhaXJ3aXNlKQorCQkJay50
eXBlID0gZmlsbF9zbXM0X3BhaXIoJmsua2V5LndhcGlfcGFpcndpc2Vfa2V5LCBrZXksCisJCQkJ
CQlzdGEtPmFkZHIpOworCQllbHNlCisJCQlrLnR5cGUgPSBmaWxsX3NtczRfZ3JvdXAoJmsua2V5
LndhcGlfZ3JvdXBfa2V5LCBrZXkpOworCX0gZWxzZSBpZiAoa2V5LT5jaXBoZXIgPT0gV0xBTl9D
SVBIRVJfU1VJVEVfQUVTX0NNQUMpIHsKKwkJay50eXBlID0gZmlsbF9hZXNfY21hY19ncm91cCgm
ay5rZXkuaWd0a19ncm91cF9rZXksIGtleSwgJnNlcSk7CisJCWtleS0+ZmxhZ3MgfD0gSUVFRTgw
MjExX0tFWV9GTEFHX0dFTkVSQVRFX01NSUU7CisJfSBlbHNlIHsKKwkJZGV2X3dhcm4od2Rldi0+
ZGV2LCAidW5zdXBwb3J0ZWQga2V5IHR5cGUgJWRcbiIsIGtleS0+Y2lwaGVyKTsKKwkJd2Z4X2Zy
ZWVfa2V5KHdkZXYsIGlkeCk7CisJCXJldHVybiAtRU9QTk9UU1VQUDsKKwl9CisJcmV0ID0gaGlm
X2FkZF9rZXkod2RldiwgJmspOworCWlmIChyZXQpIHsKKwkJd2Z4X2ZyZWVfa2V5KHdkZXYsIGlk
eCk7CisJCXJldHVybiAtRU9QTk9UU1VQUDsKKwl9CisJa2V5LT5mbGFncyB8PSBJRUVFODAyMTFf
S0VZX0ZMQUdfUFVUX0lWX1NQQUNFIHwKKwkJICAgICAgSUVFRTgwMjExX0tFWV9GTEFHX1JFU0VS
VkVfVEFJTFJPT007CisJa2V5LT5od19rZXlfaWR4ID0gaWR4OworCXJldHVybiAwOworfQorCitz
dGF0aWMgaW50IHdmeF9yZW1vdmVfa2V5KHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVl
ZTgwMjExX2tleV9jb25mICprZXkpCit7CisJV0FSTihrZXktPmh3X2tleV9pZHggPj0gTUFYX0tF
WV9FTlRSSUVTLCAiY29ycnVwdGVkIGh3X2tleV9pZHgiKTsKKwl3ZnhfZnJlZV9rZXkod3ZpZi0+
d2Rldiwga2V5LT5od19rZXlfaWR4KTsKKwlyZXR1cm4gaGlmX3JlbW92ZV9rZXkod3ZpZi0+d2Rl
diwga2V5LT5od19rZXlfaWR4KTsKK30KKworaW50IHdmeF9zZXRfa2V5KHN0cnVjdCBpZWVlODAy
MTFfaHcgKmh3LCBlbnVtIHNldF9rZXlfY21kIGNtZCwKKwkJc3RydWN0IGllZWU4MDIxMV92aWYg
KnZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKKwkJc3RydWN0IGllZWU4MDIxMV9rZXlf
Y29uZiAqa2V5KQoreworCWludCByZXQgPSAtRU9QTk9UU1VQUDsKKwlzdHJ1Y3Qgd2Z4X3ZpZiAq
d3ZpZiA9IChzdHJ1Y3Qgd2Z4X3ZpZiAqKXZpZi0+ZHJ2X3ByaXY7CisKKwltdXRleF9sb2NrKCZ3
dmlmLT53ZGV2LT5jb25mX211dGV4KTsKKwlpZiAoY21kID09IFNFVF9LRVkpCisJCXJldCA9IHdm
eF9hZGRfa2V5KHd2aWYsIHN0YSwga2V5KTsKKwlpZiAoY21kID09IERJU0FCTEVfS0VZKQorCQly
ZXQgPSB3ZnhfcmVtb3ZlX2tleSh3dmlmLCBrZXkpOworCW11dGV4X3VubG9jaygmd3ZpZi0+d2Rl
di0+Y29uZl9tdXRleCk7CisJcmV0dXJuIHJldDsKK30KKwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9rZXkuaCBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFi
cy93Zngva2V5LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi43MGE0
NGQwY2EzNWUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMv
d2Z4L2tleS5oCkBAIC0wLDAgKzEsMjAgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkgKi8KKy8qCisgKiBJbXBsZW1lbnRhdGlvbiBvZiBtYWM4MDIxMSBBUEkuCisg
KgorICogQ29weXJpZ2h0IChjKSAyMDE3LTIwMjAsIFNpbGljb24gTGFib3JhdG9yaWVzLCBJbmMu
CisgKiBDb3B5cmlnaHQgKGMpIDIwMTAsIFNULUVyaWNzc29uCisgKi8KKyNpZm5kZWYgV0ZYX0tF
WV9ICisjZGVmaW5lIFdGWF9LRVlfSAorCisjaW5jbHVkZSA8bmV0L21hYzgwMjExLmg+CisKK3N0
cnVjdCB3ZnhfZGV2Oworc3RydWN0IHdmeF92aWY7CisKK2ludCB3Znhfc2V0X2tleShzdHJ1Y3Qg
aWVlZTgwMjExX2h3ICpodywgZW51bSBzZXRfa2V5X2NtZCBjbWQsCisJCXN0cnVjdCBpZWVlODAy
MTFfdmlmICp2aWYsIHN0cnVjdCBpZWVlODAyMTFfc3RhICpzdGEsCisJCXN0cnVjdCBpZWVlODAy
MTFfa2V5X2NvbmYgKmtleSk7CisKKyNlbmRpZiAvKiBXRlhfU1RBX0ggKi8KLS0gCjIuMjguMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
