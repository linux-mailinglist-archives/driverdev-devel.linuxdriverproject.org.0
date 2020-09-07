Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CA725F795
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 12:16:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2AAA620510;
	Mon,  7 Sep 2020 10:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aKYVxYMeHdIb; Mon,  7 Sep 2020 10:16:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E45D52012F;
	Mon,  7 Sep 2020 10:16:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8EE5B1BF2FD
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:16:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8B9EB85EE9
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:16:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q8PB1QqGZAdq for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 10:16:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2089.outbound.protection.outlook.com [40.107.93.89])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1331585EC0
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 10:16:22 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QyZn/Buvl6yKOZkHcacdm4T1cuV/9PFR7LO8XTH8a8J0+KyZqf4cOEPwuAdnzQCygO3eTfAfvvVy7jGEFdeN2UztRZ+x/HF7JiDm2sRgWcU1Aap5nvQ9TBbKqhNLe5/SkG+5NS3Waw+s4pbkwNcOom0JSOb0ax+FfGKjhFTDcXX3LIeRWle8sPgp7fhBP2X6qPWK2F06KxKKsKB+eF+J+1Gjq7zqkmT3CuIPKKR6/Q181loQCZXuQG4RNl/DtKss1F783LgAIRwb+afPPdR3HtYmCDsnuPF/MYfu7oZNpIhcRTtYqbi72gze51dCVfz4nsi3X2sMw+Yxs6X27dC7ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J89mvlOfc8/oXPu8VOthbqleo0jGQgLiy4h+Mtcqspk=;
 b=JKQiKLWUTClQ++RFWIgLM0os3MwGYvnCMUta3MxsUexyF8hzEp+fll0AMwCDwYdm2Zu5/AnBjfc0VZko2jVritSG5P78b6zW8psF8JM9+KMbPQ96UYwXqtauu2JWhZNSbBUyz0gHDzzude5iblE6HQ3n8YElKvuDx0b4P+297m+26ODWE2ji//Lr8HvOeqgkNsrp79qDVZrtuI7w5kqkuMsT9HIZIISvgj1E5tTKHkUNeGmcLO3/90bV9O2XNeEulwziFfaqT7WqnJXA3NwrBkALU1HD3Gf9iodwXtCx9G6ggAavvuB97G1lxFbT5GoHLb/tUsYQ+nFUgtuvQBaMjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J89mvlOfc8/oXPu8VOthbqleo0jGQgLiy4h+Mtcqspk=;
 b=nYbuydGzDdBzboXNMTSBroB2N06xh1IY6J/V3xOlw1cSUeqDkKNaZCjR4hGVS3UHjFVJOu7tOa+KbHIp4pbXtNUfc5umn1NkV1aVNRNUivAuvqo/pWbp8oFRSSfTaVFYquOtaXBOQxx/OXQknyH4huwWe3I2kASD4v02UgJfloE=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2720.namprd11.prod.outlook.com (2603:10b6:805:56::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 10:16:21 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 10:16:20 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 22/31] staging: wfx: drop useless union hif_privacy_key_data
Date: Mon,  7 Sep 2020 12:15:12 +0200
Message-Id: <20200907101521.66082-23-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
References: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:19::25) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (37.71.187.125) by
 PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:19::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 10:16:19 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ef60cda-1c8b-480c-f59e-08d8531710e5
X-MS-TrafficTypeDiagnostic: SN6PR11MB2720:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB27200E3B08DD5B52E7AB051893280@SN6PR11MB2720.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IJtRZW9su9OX+14bFv+ComVNTqpnSn3SbGnRdMcoty+gFSH+QZ1FtTBjc7vJ2JKI1xJqavq+jaS+zDcR2c1miXPGa12NkabrGJzU56lzFAcs+M1N/rIGE1f5TM24uorgpfTpQG7ps/jVnMSk1Bd57xdyYT2OpKeJHwqDEPZN67lcQ5hqEIVXdkTNYkmjjJuV6FDSMeo49LjEt4XAOp4eps8jC9bNH50I1JO198qxB3cnKRDCtrQpt8m5kkmMzghRKQamZn4B43+5TWPXmvuOT3QK51VGSUWrkWVFel3w4U2Gn4PdsuIkyegfNruh4WX5dxHT5Fql/qSaK/Uu1SdqKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(39850400004)(136003)(346002)(396003)(66946007)(66556008)(66476007)(54906003)(26005)(186003)(16526019)(83380400001)(107886003)(6486002)(8676002)(956004)(2616005)(2906002)(316002)(86362001)(8936002)(478600001)(4326008)(7696005)(36756003)(52116002)(6666004)(1076003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: wIVptYqinB/hUs32RAjDLD69+tSjBmBmOEnTc0MQfFhj/FeI0RVvf781M0JLuljI9Fe/i8RMJQ8oPULun128hBL9wzuDnIzxHDjLKQqHTjriKXP6ahimNHwvapfzJ0qLQufdWQt5VXMomlLEs01eHCV2ivrEefHqyPAzXljXbqFrRQf+NQU7mHfRAR4DMWxvxy/QA1TIc9WZcl4yQN3E6uJzfjS5uzcZxU+3UEwlUdXxVYdrc51Fhgk87GPhsJW1U6hqHHjLHT7kJR0T5IhwB38y1Ah1Rss+7umyftjj3ynNfUqF9aPph+Cp614xq3tniJPiPOdzUnvieh6D+UncEc4lqWxjyrhkncVTwIA7Ui0/AZvp3iaqSodocl0CefEEubZwUJg6awMBC5FLAM6hotFZr++XHZ+JJHzjZeD8gW7MrdJu199wjfztzrY5mdIm82H0Wm4w0lhbq0aRKMqIDE7y7wAr3YgX0dlN9FZtZYUsHb1Xh6+JNWDVbLXQqkhKmt4nBe9NvfuZNrjUksSXM9HoIZ7MT6xcmKJcdfuJRR0q2wrBTpVvZphOJHrzEPds6ZDhX7CIRkehe7IgnYuc8fcKCugh1Qnr/CDsRS3TaPr+oi+9QDAjs3oo8A562ahkOFG/EWgcy+ZenxCE15S9wg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ef60cda-1c8b-480c-f59e-08d8531710e5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 10:16:20.7483 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KXmBBFRvl/JZrf4kiLwKYhTXsSam56OyXhyXdKlb5XMZjYTCZ0mg2ef11cl5w6rj409qVnRcxjPkcsVHHE105g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2720
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHVuaW9uIGhpZl9wcml2YWN5X2tleV9kYXRhIGlzIG5ldmVyIHVzZWQgaW4gdGhlIGRyaXZlci4g
U28sIGl0IGlzCm5vdCBuZWNlc3NhcnkgdG8gZGVjbGFyZSBpdCBzZXBhcmF0ZWx5IGZyb20gaGlm
X3JlcV9hZGRfa2V5LgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5w
b3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9jbWQu
aCB8IDI0ICsrKysrKysrKysrLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvaGlmX2FwaV9jbWQuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9jbWQuaAppbmRl
eCBjN2U2ZmRmMTgzYjEuLjE3Y2QzMTdkZTgyNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9oaWZfYXBpX2NtZC5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9jbWQu
aApAQCAtNTAwLDI1ICs1MDAsMjMgQEAgc3RydWN0IGhpZl9pZ3RrX2dyb3VwX2tleSB7CiAJdTgg
ICAgIGlwbltISUZfQVBJX0lQTl9TSVpFXTsKIH0gX19wYWNrZWQ7CiAKLXVuaW9uIGhpZl9wcml2
YWN5X2tleV9kYXRhIHsKLQlzdHJ1Y3QgaGlmX3dlcF9wYWlyd2lzZV9rZXkgIHdlcF9wYWlyd2lz
ZV9rZXk7Ci0Jc3RydWN0IGhpZl93ZXBfZ3JvdXBfa2V5ICAgICB3ZXBfZ3JvdXBfa2V5OwotCXN0
cnVjdCBoaWZfdGtpcF9wYWlyd2lzZV9rZXkgdGtpcF9wYWlyd2lzZV9rZXk7Ci0Jc3RydWN0IGhp
Zl90a2lwX2dyb3VwX2tleSAgICB0a2lwX2dyb3VwX2tleTsKLQlzdHJ1Y3QgaGlmX2Flc19wYWly
d2lzZV9rZXkgIGFlc19wYWlyd2lzZV9rZXk7Ci0Jc3RydWN0IGhpZl9hZXNfZ3JvdXBfa2V5ICAg
ICBhZXNfZ3JvdXBfa2V5OwotCXN0cnVjdCBoaWZfd2FwaV9wYWlyd2lzZV9rZXkgd2FwaV9wYWly
d2lzZV9rZXk7Ci0Jc3RydWN0IGhpZl93YXBpX2dyb3VwX2tleSAgICB3YXBpX2dyb3VwX2tleTsK
LQlzdHJ1Y3QgaGlmX2lndGtfZ3JvdXBfa2V5ICAgIGlndGtfZ3JvdXBfa2V5OwotfTsKLQogc3Ry
dWN0IGhpZl9yZXFfYWRkX2tleSB7CiAJdTggICAgIHR5cGU7CiAJdTggICAgIGVudHJ5X2luZGV4
OwogCXU4ICAgICBpbnRfaWQ6MjsKIAl1OCAgICAgcmVzZXJ2ZWQxOjY7CiAJdTggICAgIHJlc2Vy
dmVkMjsKLQl1bmlvbiBoaWZfcHJpdmFjeV9rZXlfZGF0YSBrZXk7CisJdW5pb24geworCQlzdHJ1
Y3QgaGlmX3dlcF9wYWlyd2lzZV9rZXkgIHdlcF9wYWlyd2lzZV9rZXk7CisJCXN0cnVjdCBoaWZf
d2VwX2dyb3VwX2tleSAgICAgd2VwX2dyb3VwX2tleTsKKwkJc3RydWN0IGhpZl90a2lwX3BhaXJ3
aXNlX2tleSB0a2lwX3BhaXJ3aXNlX2tleTsKKwkJc3RydWN0IGhpZl90a2lwX2dyb3VwX2tleSAg
ICB0a2lwX2dyb3VwX2tleTsKKwkJc3RydWN0IGhpZl9hZXNfcGFpcndpc2Vfa2V5ICBhZXNfcGFp
cndpc2Vfa2V5OworCQlzdHJ1Y3QgaGlmX2Flc19ncm91cF9rZXkgICAgIGFlc19ncm91cF9rZXk7
CisJCXN0cnVjdCBoaWZfd2FwaV9wYWlyd2lzZV9rZXkgd2FwaV9wYWlyd2lzZV9rZXk7CisJCXN0
cnVjdCBoaWZfd2FwaV9ncm91cF9rZXkgICAgd2FwaV9ncm91cF9rZXk7CisJCXN0cnVjdCBoaWZf
aWd0a19ncm91cF9rZXkgICAgaWd0a19ncm91cF9rZXk7CisJfSBrZXk7CiB9IF9fcGFja2VkOwog
CiBzdHJ1Y3QgaGlmX2NuZl9hZGRfa2V5IHsKLS0gCjIuMjguMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
