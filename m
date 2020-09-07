Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6571125FABB
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 14:52:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ADB1620508;
	Mon,  7 Sep 2020 12:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tze-pkGkEHNp; Mon,  7 Sep 2020 12:52:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EC0552049C;
	Mon,  7 Sep 2020 12:52:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6CB871BF2C4
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 12:52:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5C11920462
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 12:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JfoLhu6Dp0C6 for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 12:52:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2067.outbound.protection.outlook.com [40.107.223.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 54FF7203E8
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 12:52:01 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EMRl3uOCQdhCqs3aTl6IH5fqcdA+fvzhXJ8ABfoWtx9qmnpePRsI07Zh+SkmJr5BV8hc5LcoosDO8WgTQme9GgWqGxprQZfE0QbNmGOULdxb3QPGTPGyoMX6xM9lCNefshFYevAUY3Ult9T2M0pqmtQxfpPj8EnpFmPlfy5WnqhjdC5VBGtlgSJmM/y6K+VzrZWqjVNYbiZQ1Lv2VBE8G/zYycVOT5I5fHIwrtDGxf4QWztIMbEo7PwICCfnxcspRVL0gYnSPkNiWawETKa6rgCmRewhZkYQxXGEOmNkWqAc//kepayTE6YSnafa5iN/nXv/ty8ra6Dq9LuBAipv/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eqyCOufpB/dPCyM1HrkP1JK3NRPHTYXJg1sfpSx4l1Y=;
 b=GL/HePLrltSBWDHDxLVIkoU+uszERTo5pyREmX4rrQJNKAE6wddxySp9BvtPjhWhkDI7j2Tmi+zFzopzrtjdbatIPhHQRXxKM0o99U1/nUciBWS5l8z/XlL97uaF9DpS3nZc4oPrDO+sivTyd1gs7T51Q//MtEZhUz6kRz3cLFapOlKwUyRJs1sHuczfAFBosxPjo0oNeUKbXsCVKBOhn+2joofN01bRMrnffrlBGYSYj02/3fs+ScSafpx1Y7VoeVHI5LIYbz6GoI3jmOXno/A7B1JolBe0brdMY3qqZ7Fimcj2GhWnbYpVfK+6+N7e0jMmM6o+0CI2UDSvcLoQlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eqyCOufpB/dPCyM1HrkP1JK3NRPHTYXJg1sfpSx4l1Y=;
 b=GlPEEaGw+MBb2hQXmOOFp73u1NIlA3R7WdIGbJTvbIa+FSEHwE2FJSvsMeoiLDyh7u8m+JBppitK+5TVhoN4w+54gVxGII5sCb6TnnZdlvWdANVbjQDUKisURKzc6kUm1wCMSqiCdCNRHuLLAuzVMtH+W2pTY9m+pPtu9+ZgNzk=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2720.namprd11.prod.outlook.com (2603:10b6:805:56::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 10:16:30 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 10:16:30 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 28/31] staging: wfx: fix spaces
Date: Mon,  7 Sep 2020 12:15:18 +0200
Message-Id: <20200907101521.66082-29-Jerome.Pouiller@silabs.com>
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
 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 10:16:29 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5e813913-91bf-4f66-da5a-08d8531716d4
X-MS-TrafficTypeDiagnostic: SN6PR11MB2720:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2720D8970071569089A626D093280@SN6PR11MB2720.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1107;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ILxg1nrj+kmV4rmjPJcTNBVkciWEYJTxaXoqQzcSjsDx5Vsn/xad3y/YwD3pBic1U8bcIrNUrPA9Gx7kbKEFNYWIcVwTHNBJlND+BSmCK2q8vafKnxana6T8NpFPriP413tB4iKauikv8X+mHVOi7IsoC8vYjMJCobSWpATSgkFwvwp0Ja0P55a/kjBCDloC5rnzW3GX7Ask+nV9KF7gmLTmOibNs4gmZKVIlBoHIyXxRkAmg8Gcq1DcL74mANfGRXH0rs4rl9HrCs2hIyAV5jtffVaArF4I2524YT4CO3HjRuYwJb6s8IsMDNRZk6wdlVLSBl4/N2g5YSYKgweoZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(39850400004)(136003)(346002)(396003)(66946007)(66556008)(66476007)(54906003)(26005)(186003)(16526019)(83380400001)(107886003)(6486002)(8676002)(956004)(2616005)(2906002)(316002)(86362001)(8936002)(478600001)(4326008)(7696005)(36756003)(52116002)(6666004)(1076003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: wdXRNz8WG9sVp4D7ooSk4Hh/lM3tyuMg3BYmpXzeY3mZxR5jBsypJLXRZDLY443QBlWJylyzHfJ9Y/eJ/9IeAnRW1I5Y9zZDL7x2XBwjqkPvTSpD6bBtH4b0mhNr3ICbgVonM3aJXg2hckWz05YoVhH/PAmdgoLTej/O0GfIdEkw7wg1pK0pE/RAU3k7jfGMkuSwtXtx53m+WQa0LPQC8aLy8IENdqy2NCNUQ+02tcLqzKgrg8lie60gBJ6537tK+3z42QIC/8+nL1PCfrdmqVxb+qTWxNlCSV0ei0pCo/9Su9I66nzctLuiA9AAKoqJHLu8RXF0tscKlNpsQTeKTV/H+uI+orZ4zxkfMQ4TrgSWA+on/R/hQWA3Bs3eIW2UPKPJUsvBBp/UvsBtgPyY23XZkgSBIpsmhA1YQC5HTO4PvBknFuaS4lzP8lupt76LxIVrQ+TdCdA9tLLP1JSV5SuYx67iQuHctO1G2y5KonP19zkP5xy64+JBqn3gLtONImvsfA3PYf4kMzS4d0U86Ul9y1uNPDXgEoAxEQsYv8X45i7kvmnEY9BotDjhPXWFVFb1luoWRwFfb1GO6WvJwZFVZnRLBeR9HjdRQbN1n9tl79Gi9OfNZ/Ijkgyu7pGPBVVcjt7E7l7V+2OjNw1KHA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e813913-91bf-4f66-da5a-08d8531716d4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 10:16:30.6965 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ylCFru5aQoS22xNShCXu1VfwMH/5uZ9q5hp1t5itJUzFjNsuC9fNs3drb+FatUrxJnSn0IXs+Q/H/+qNdSTCRw==
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
cmUgaXMgbm8gcmVhc29uIHRvIHBsYWNlIHR3byBzcGFjZXMgYmV0d2VlbiB0aGUgZmllbGQgdHhf
Y29uZl9wYXlsb2FkCmFuZCBpdHMgdHlwZS4KCkluIHRoZSBzYW1lIHZlaW4sIHJlbW92ZSBkdXBs
aWNhdGUgZW1wdHkgbGluZXMgYmV0d2VlbiBkZWNsYXJhdGlvbnMuCgpTaWduZWQtb2ZmLWJ5OiBK
w6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVy
cy9zdGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oICAgICB8IDQgKy0tLQogZHJpdmVycy9zdGFnaW5n
L3dmeC9oaWZfYXBpX2dlbmVyYWwuaCB8IDEgLQogMiBmaWxlcyBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hp
Zl9hcGlfY21kLmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfY21kLmgKaW5kZXggN2Iz
NjViZDAxYjgxLi5iZGQ0Njg4MDAxODkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX2FwaV9jbWQuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfY21kLmgKQEAg
LTIyOSw3ICsyMjksNyBAQCBzdHJ1Y3QgaGlmX2NuZl90eCB7CiBzdHJ1Y3QgaGlmX2NuZl9tdWx0
aV90cmFuc21pdCB7CiAJdTggICAgIG51bV90eF9jb25mczsKIAl1OCAgICAgcmVzZXJ2ZWRbM107
Ci0Jc3RydWN0IGhpZl9jbmZfdHggICB0eF9jb25mX3BheWxvYWRbXTsKKwlzdHJ1Y3QgaGlmX2Nu
Zl90eCB0eF9jb25mX3BheWxvYWRbXTsKIH0gX19wYWNrZWQ7CiAKIGVudW0gaGlmX3JpX2ZsYWdz
X2VuY3J5cHQgewpAQCAtMzQ5LDcgKzM0OSw2IEBAIHN0cnVjdCBoaWZfaW5kX3NldF9wbV9tb2Rl
X2NtcGwgewogCXU4ICAgICByZXNlcnZlZFszXTsKIH0gX19wYWNrZWQ7CiAKLQogc3RydWN0IGhp
Zl9yZXFfc3RhcnQgewogCXU4ICAgICBtb2RlOwogCXU4ICAgICBiYW5kOwpAQCAtNTUxLDUgKzU1
MCw0IEBAIHN0cnVjdCBoaWZfaW5kX2V2ZW50IHsKIAl9IGV2ZW50X2RhdGE7CiB9IF9fcGFja2Vk
OwogCi0KICNlbmRpZgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2dl
bmVyYWwuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9nZW5lcmFsLmgKaW5kZXggYzll
M2MwZjc1OGM4Li45ZDUyMmJjMWFhNjkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX2FwaV9nZW5lcmFsLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2dlbmVy
YWwuaApAQCAtMTEzLDcgKzExMyw2IEBAIGVudW0gaGlmX2FwaV9yYXRlX2luZGV4IHsKIAlBUElf
UkFURV9OVU1fRU5UUklFUyAgICAgICA9IDIyCiB9OwogCi0KIGVudW0gaGlmX2Z3X3R5cGUgewog
CUhJRl9GV19UWVBFX0VURiAgPSAweDAsCiAJSElGX0ZXX1RZUEVfV0ZNICA9IDB4MSwKLS0gCjIu
MjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2
ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZl
cmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRl
dmVsCg==
