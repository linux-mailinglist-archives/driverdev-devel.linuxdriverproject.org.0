Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC041E2856
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 19:19:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB78F88680;
	Tue, 26 May 2020 17:19:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 77-eo7Zov3mI; Tue, 26 May 2020 17:19:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D40AE88650;
	Tue, 26 May 2020 17:18:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C63E31BF870
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 17:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C22CB863AC
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 17:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x0gsIzDTW6XH for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 17:18:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2077.outbound.protection.outlook.com [40.107.236.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 91B56863CD
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 17:18:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FEMpcC7b3WKd4jakYOuIrX8EsgVSHxVd3s2A6W2/E1pLo5rpBPJTEgF8QQXHAX6XBbBdN7/dRqM4dkz09wygWYXuq5X9ikm5fAR5IWZC4tujrkHfOMrRM3kCiIOnpAN0YtYmDfmY4VrG6lxm8VjYlEBfGQafYCbK4kOED7msNiX6LDgyMbAuhd4E+LT50m302vloxX8aihtE6rhqxWX3c5/FBLVkPyXEocDiI1SklbwSaga7K0XH/Ugmv+D9GhYgjHwBHhxZ17ydD1ZRmgjTBCOyLJ4blAQGsrA1n5KdZWvbo/ICdkmwtg9SMxc21z8/231PKAxzVllw12SYEt+/ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vyrbr3YFnwOdvTfBarbes+ILcX0rykOlaggmKjWAZSQ=;
 b=bNHbH4oiqCQpPWVuLTFlYw56fpmnrqMTp6amE5QUL3RwyWVGHT5jYpjwJcxSxr1N5XYHBp1XLtzEWuQso1SCByCpsS7swp/T+jfLdlpGUCRrUYQ1NeY3H6VfKNmWFMWCOhPWlXy3lwlPgfeUjYRxbqgQKNkAnJm+8LAV49d1DV9P6q3ajf1tJ/9WmcJN7ctZ/7qQ3sjhjrbdQecuPyclagRSq7Ba9c2d3NAOn8Q7PU4vi2aGxbUvzVSjTESc52ptywn7eoEvPs/fX8ECudD6P4FUWBQc/0SDBUtovJD7c1hiyzSMfR6CbFAlSTeyQHhJvKAnCmBDDw14sA+VyzMu+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vyrbr3YFnwOdvTfBarbes+ILcX0rykOlaggmKjWAZSQ=;
 b=JAiXmu8LqpyLWYFX6dl0AcLCVSl9bdSZdwwH+kOuNF4T9dUofuXfbBCJ81rqdg5bP30efQ7/JKPKyXyQne1PwlBBajc+MYaP09MPApm77zoSQFNEDvja0y+FOdJnxd6VfNbkBkPZxGD/j1Pivp+5+UnwiR62hEBNC7GmnIhuaCs=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2750.namprd11.prod.outlook.com (2603:10b6:805:54::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.25; Tue, 26 May
 2020 17:18:53 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 17:18:53 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 08/10] staging: wfx: allow to burn prevent rollback bit
Date: Tue, 26 May 2020 19:18:19 +0200
Message-Id: <20200526171821.934581-9-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200526171821.934581-1-Jerome.Pouiller@silabs.com>
References: <20200526171821.934581-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR1PR01CA0007.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::20) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 PR1PR01CA0007.eurprd01.prod.exchangelabs.com (2603:10a6:102::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17 via Frontend
 Transport; Tue, 26 May 2020 17:18:52 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65bfd7e7-6822-4ccd-d6cd-08d80198dd7c
X-MS-TrafficTypeDiagnostic: SN6PR11MB2750:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2750AA6A66163AE8100D470B93B00@SN6PR11MB2750.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-Forefront-PRVS: 041517DFAB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jUO/CafqVZFkVxIILs2FdskS45/HWMQfkM/n8C+Tb5w/ov2wSIAqt6h7+ItEjh2kAuEcK1hjZJ3FyV49zbWqxNM57MPbZRNrg3o/31/mPKmvLb+jvU9ciu8+WXCKVJoRrXci9chUuHpY2ZKXu1dDTOzj/YMoIeGogMlX6ybTi+s6A9Rz3XGnpt3p47LsvxvIL+AdnB+u+cvHoSZQO16i2tXh2hqHyaMVlWT/Y1YHhOb1TqDS20xX+r5UzP8fmkbZITVpKpMUgii2CdH6VtzahF2DfUCNU/PGkA2ugNY0e+qwPC3YbXsVdybq3a5UOf18G5v1B4OXoHoomMjfxytqbg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(4326008)(6512007)(316002)(8676002)(8936002)(2616005)(6486002)(2906002)(107886003)(1076003)(86362001)(6666004)(186003)(16526019)(5660300002)(66574014)(36756003)(54906003)(66556008)(478600001)(8886007)(6506007)(66946007)(66476007)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: EQzkXU43bTAg7TukimXaKp7LLqEAjO/IDv85M1uItUIfaxaKNzrDZtJW2ARjo+7q44jSQkBgQ2nghPY8TFLV2+iPBVNzGRfxcALyUgnntmQK0oORAz3EQga/JrDNU/sBQbqV/cjeeDyPATSd98Qg/ehxGyJ0PwjXAIREbRLryTEnCtXhbqelQSUxaQKKoUZSeV27iM8Zw07UZG1Q5HbfQmsxFUSXvIlNLPRF27yNjrbp8+mSfoul26asGQiRs+ITDiQiQCniGRaNTDsqnovGzEUQ/wkbY8yKdF4QSDK4+s3FfPqHExSO8thKM/bC0EFFsZzJnMSyT5HZ6p9bsU3u4EG+KEihZINl94Z8Wxp9uST8Upx1IzOTpe33VWnIo08iPrWRWq+Dzg2m1DPOvwMtvSQzwKpIGndpbIXiZm8DMp5KvbVx5wETgPYyk5tt/0aPICTq0eZqxlaa+wAeqObVUzthumfx0lM93b1Ijs9dcJyoVWXx9iBw97tyuaLt1XSc1PDEyNzKX2V1vcdMW7WgUrtbBYJ0b0xwf0Lu8A0Uvts=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65bfd7e7-6822-4ccd-d6cd-08d80198dd7c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2020 17:18:53.6967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5kEqbL68/L4DIRzDGGxORw0ENP9j8CXHamZJ0mZfBb51zcnMSmVmXQMW4rfrwlspKj/RQRgALZEe4QDAQLNF4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2750
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSW4g
Y2FzZSBhIHNlY3VyaXR5IGZsYXcgaXMgZm91bmQgaW4gYSB2ZXJzaW9uIG9mIGZpcm13YXJlLCB0
aGUgZGV2aWNlCm9mZmVycyBhIHdheSB0byBkaXNhbGxvdyB0aGUgbG9hZGluZyBhbiBvbGRlciBm
aXJtd2FyZS4KClRoaXMgcGF0Y2ggcHJvdmlkZXMgYSB2ZW5kb3IgZXh0ZW5zaW9uIHRvIG5sODAy
MTEgdG8gZW5hYmxlIHRoaXMKZmVhdHVyZS4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWls
bGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4
L2hpZl9hcGlfZ2VuZXJhbC5oIHwgIDggKysrKysrKysKIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlm
X3R4LmMgICAgICAgICAgfCAxOCArKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvc3RhZ2luZy93
ZngvaGlmX3R4LmggICAgICAgICAgfCAgMSArCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L25sODAyMTFf
dmVuZG9yLmMgIHwgMjMgKysrKysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvc3RhZ2luZy93
Zngvbmw4MDIxMV92ZW5kb3IuaCAgfCAxMSArKysrKysrKysrKwogNSBmaWxlcyBjaGFuZ2VkLCA2
MSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBp
X2dlbmVyYWwuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9nZW5lcmFsLmgKaW5kZXgg
ZGJhMThhN2FlOTE5NC4uYzhhZjM1MzQ3MDBjYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9oaWZfYXBpX2dlbmVyYWwuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlf
Z2VuZXJhbC5oCkBAIC0zNjEsNCArMzYxLDEyIEBAIHN0cnVjdCBoaWZfY25mX3NsX2NvbmZpZ3Vy
ZSB7CiAJX19sZTMyIHN0YXR1czsKIH0gX19wYWNrZWQ7CiAKK3N0cnVjdCBoaWZfcmVxX3ByZXZl
bnRfcm9sbGJhY2sgeworCV9fbGUzMiBtYWdpY193b3JkOyAvLyBSZXR1cm4gYW4gZXJyb3IgaWYg
bm90IGVxdWFsIHRvIDB4NUM4OTEyRjMKK30gX19wYWNrZWQ7CisKK3N0cnVjdCBoaWZfY25mX3By
ZXZlbnRfcm9sbGJhY2sgeworCV9fbGUzMiBzdGF0dXM7Cit9IF9fcGFja2VkOworCiAjZW5kaWYK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmMgYi9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2hpZl90eC5jCmluZGV4IDZkYjQxNTg3Y2M3YTUuLjg5OWUxZWI3MWE0NGIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmMKKysrIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9oaWZfdHguYwpAQCAtNTM1LDYgKzUzNSwyNCBAQCBpbnQgaGlmX3VwZGF0ZV9pZV9iZWFj
b24oc3RydWN0IHdmeF92aWYgKnd2aWYsIGNvbnN0IHU4ICppZXMsIHNpemVfdCBpZXNfbGVuKQog
CXJldHVybiByZXQ7CiB9CiAKK2ludCBoaWZfYnVybl9wcmV2ZW50X3JvbGxiYWNrKHN0cnVjdCB3
ZnhfZGV2ICp3ZGV2LCB1MzIgbWFnaWNfd29yZCkKK3sKKwlpbnQgcmV0OworCXN0cnVjdCBoaWZf
bXNnICpoaWY7CisJc3RydWN0IGhpZl9yZXFfcHJldmVudF9yb2xsYmFjayAqYm9keSA9IHdmeF9h
bGxvY19oaWYoc2l6ZW9mKCpib2R5KSwKKwkJCQkJCQkgICAgICAmaGlmKTsKKworCWlmICghaGlm
KQorCQlyZXR1cm4gLUVOT01FTTsKKwlib2R5LT5tYWdpY193b3JkID0gY3B1X3RvX2xlMzIobWFn
aWNfd29yZCk7CisJd2Z4X2ZpbGxfaGVhZGVyKGhpZiwgLTEsIEhJRl9SRVFfSURfUFJFVkVOVF9S
T0xMQkFDSywgc2l6ZW9mKCpib2R5KSk7CisJcmV0ID0gd2Z4X2NtZF9zZW5kKHdkZXYsIGhpZiwg
TlVMTCwgMCwgZmFsc2UpOworCWlmIChyZXQgPT0gbGUzMl90b19jcHUoSElGX1NUQVRVU19ST0xM
QkFDS19TVUNDRVNTKSkKKwkJcmV0ID0gMDsKKwlrZnJlZShoaWYpOworCXJldHVybiByZXQ7Cit9
CisKIGludCBoaWZfc2xfc2VuZF9wdWJfa2V5cyhzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwKIAkJCSBj
b25zdCB1OCAqcHVia2V5LCBjb25zdCB1OCAqcHVia2V5X2htYWMpCiB7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHgu
aAppbmRleCBlMWRhMjhhZWY3MDZlLi5kMjljNzJkOTQ3ODlhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2hpZl90eC5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmgK
QEAgLTU3LDYgKzU3LDcgQEAgaW50IGhpZl9zdGFydChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgY29u
c3Qgc3RydWN0IGllZWU4MDIxMV9ic3NfY29uZiAqY29uZiwKIGludCBoaWZfYmVhY29uX3RyYW5z
bWl0KHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBib29sIGVuYWJsZSk7CiBpbnQgaGlmX21hcF9saW5r
KHN0cnVjdCB3ZnhfdmlmICp3dmlmLCB1OCAqbWFjX2FkZHIsIGludCBmbGFncywgaW50IHN0YV9p
ZCk7CiBpbnQgaGlmX3VwZGF0ZV9pZV9iZWFjb24oc3RydWN0IHdmeF92aWYgKnd2aWYsIGNvbnN0
IHU4ICppZXMsIHNpemVfdCBpZXNfbGVuKTsKK2ludCBoaWZfYnVybl9wcmV2ZW50X3JvbGxiYWNr
KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgbWFnaWNfd29yZCk7CiBpbnQgaGlmX3NsX3NldF9t
YWNfa2V5KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LAogCQkgICAgICAgY29uc3QgdTggKnNsa19rZXks
IGludCBkZXN0aW5hdGlvbik7CiBpbnQgaGlmX3NsX2NvbmZpZyhzdHJ1Y3Qgd2Z4X2RldiAqd2Rl
diwgY29uc3QgdW5zaWduZWQgbG9uZyAqYml0bWFwKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy93Zngvbmw4MDIxMV92ZW5kb3IuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvbmw4MDIxMV92
ZW5kb3IuYwppbmRleCBlYzJmZDJkNzM4ODVmLi4xYTlkNDExNzE4YTczIDEwMDY0NAotLS0gYS9k
cml2ZXJzL3N0YWdpbmcvd2Z4L25sODAyMTFfdmVuZG9yLmMKKysrIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9ubDgwMjExX3ZlbmRvci5jCkBAIC03LDYgKzcsNyBAQAogI2luY2x1ZGUgIm5sODAyMTFf
dmVuZG9yLmgiCiAjaW5jbHVkZSAid2Z4LmgiCiAjaW5jbHVkZSAic3RhLmgiCisjaW5jbHVkZSAi
aGlmX3R4LmgiCiAKIGludCB3ZnhfbmxfcHNfdGltZW91dChzdHJ1Y3Qgd2lwaHkgKndpcGh5LCBz
dHJ1Y3Qgd2lyZWxlc3NfZGV2ICp3aWRldiwKIAkJICAgICAgY29uc3Qgdm9pZCAqZGF0YSwgaW50
IGRhdGFfbGVuKQpAQCAtNDcsMyArNDgsMjUgQEAgaW50IHdmeF9ubF9wc190aW1lb3V0KHN0cnVj
dCB3aXBoeSAqd2lwaHksIHN0cnVjdCB3aXJlbGVzc19kZXYgKndpZGV2LAogCXJldHVybiByYzsK
IH0KIAoraW50IHdmeF9ubF9idXJuX2FudGlyb2xsYmFjayhzdHJ1Y3Qgd2lwaHkgKndpcGh5LCBz
dHJ1Y3Qgd2lyZWxlc3NfZGV2ICp3aWRldiwKKwkJCSAgICAgY29uc3Qgdm9pZCAqZGF0YSwgaW50
IGRhdGFfbGVuKQoreworCXN0cnVjdCBpZWVlODAyMTFfaHcgKmh3ID0gd2lwaHlfdG9faWVlZTgw
MjExX2h3KHdpcGh5KTsKKwlzdHJ1Y3Qgd2Z4X2RldiAqd2RldiA9IChzdHJ1Y3Qgd2Z4X2RldiAq
KWh3LT5wcml2OworCXN0cnVjdCBubGF0dHIgKnRiW1dGWF9OTDgwMjExX0FUVFJfTUFYXTsKKwl1
MzIgbWFnaWM7CisJaW50IHJjOworCisJcmMgPSBubGFfcGFyc2UodGIsIFdGWF9OTDgwMjExX0FU
VFJfTUFYIC0gMSwgZGF0YSwgZGF0YV9sZW4sCisJCSAgICAgICB3ZnhfbmxfcG9saWN5LCBOVUxM
KTsKKwlpZiAocmMpCisJCXJldHVybiByYzsKKwlpZiAoIXRiW1dGWF9OTDgwMjExX0FUVFJfUk9M
TEJBQ0tfTUFHSUNdKQorCQlyZXR1cm4gLUVJTlZBTDsKKwltYWdpYyA9IG5sYV9nZXRfdTMyKHRi
W1dGWF9OTDgwMjExX0FUVFJfUk9MTEJBQ0tfTUFHSUNdKTsKKwlyYyA9IGhpZl9idXJuX3ByZXZl
bnRfcm9sbGJhY2sod2RldiwgbWFnaWMpOworCWlmIChyYykKKwkJcmV0dXJuIC1FSU5WQUw7CisJ
cmV0dXJuIDA7Cit9CisKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvbmw4MDIxMV92
ZW5kb3IuaCBiL2RyaXZlcnMvc3RhZ2luZy93Zngvbmw4MDIxMV92ZW5kb3IuaAppbmRleCBjMDY5
MzMwZTI0MGE5Li40OWVmZTg3MTZhNjU0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L25sODAyMTFfdmVuZG9yLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9ubDgwMjExX3ZlbmRv
ci5oCkBAIC0xNiwxOCArMTYsMjMgQEAKIAogaW50IHdmeF9ubF9wc190aW1lb3V0KHN0cnVjdCB3
aXBoeSAqd2lwaHksIHN0cnVjdCB3aXJlbGVzc19kZXYgKndpZGV2LAogCQkgICAgICBjb25zdCB2
b2lkICpkYXRhLCBpbnQgZGF0YV9sZW4pOworaW50IHdmeF9ubF9idXJuX2FudGlyb2xsYmFjayhz
dHJ1Y3Qgd2lwaHkgKndpcGh5LCBzdHJ1Y3Qgd2lyZWxlc3NfZGV2ICp3aWRldiwKKwkJCSAgICAg
Y29uc3Qgdm9pZCAqZGF0YSwgaW50IGRhdGFfbGVuKTsKIAogZW51bSB7CiAJV0ZYX05MODAyMTFf
U1VCQ01EX1BTX1RJTUVPVVQgICAgICAgICAgICAgICAgICAgPSAweDEwLAorCVdGWF9OTDgwMjEx
X1NVQkNNRF9CVVJOX1BSRVZFTlRfUk9MTEJBQ0sgICAgICAgID0gMHgyMCwKIH07CiAKIGVudW0g
ewogCVdGWF9OTDgwMjExX0FUVFJfUFNfVElNRU9VVCAgICAgPSAxLAorCVdGWF9OTDgwMjExX0FU
VFJfUk9MTEJBQ0tfTUFHSUMgPSAyLAogCVdGWF9OTDgwMjExX0FUVFJfTUFYCiB9OwogCiBzdGF0
aWMgY29uc3Qgc3RydWN0IG5sYV9wb2xpY3kgd2Z4X25sX3BvbGljeVtXRlhfTkw4MDIxMV9BVFRS
X01BWF0gPSB7CiAJW1dGWF9OTDgwMjExX0FUVFJfUFNfVElNRU9VVF0gICAgID0gTkxBX1BPTElD
WV9SQU5HRShOTEFfUzMyLCAtMSwgMTI3KSwKKwlbV0ZYX05MODAyMTFfQVRUUl9ST0xMQkFDS19N
QUdJQ10gPSB7IC50eXBlID0gTkxBX1UzMiB9LAogfTsKIAogc3RhdGljIGNvbnN0IHN0cnVjdCB3
aXBoeV92ZW5kb3JfY29tbWFuZCB3Znhfbmw4MDIxMV92ZW5kb3JfY29tbWFuZHNbXSA9IHsKQEAg
LTM4LDYgKzQzLDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgd2lwaHlfdmVuZG9yX2NvbW1hbmQg
d2Z4X25sODAyMTFfdmVuZG9yX2NvbW1hbmRzW10gPSB7CiAJCS5wb2xpY3kgPSB3ZnhfbmxfcG9s
aWN5LAogCQkuZG9pdCA9IHdmeF9ubF9wc190aW1lb3V0LAogCQkubWF4YXR0ciA9IFdGWF9OTDgw
MjExX0FUVFJfTUFYIC0gMSwKKwl9LCB7CisJCS5pbmZvLnZlbmRvcl9pZCA9IFdGWF9OTDgwMjEx
X0lELAorCQkuaW5mby5zdWJjbWQgPSBXRlhfTkw4MDIxMV9TVUJDTURfQlVSTl9QUkVWRU5UX1JP
TExCQUNLLAorCQkucG9saWN5ID0gd2Z4X25sX3BvbGljeSwKKwkJLmRvaXQgPSB3ZnhfbmxfYnVy
bl9hbnRpcm9sbGJhY2ssCisJCS5tYXhhdHRyID0gV0ZYX05MODAyMTFfQVRUUl9NQVggLSAxLAog
CX0sCiB9OwogCi0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
