Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6381B115C
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 18:19:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C03620791;
	Mon, 20 Apr 2020 16:19:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kdGKjXieS2jB; Mon, 20 Apr 2020 16:19:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 545C5214F6;
	Mon, 20 Apr 2020 16:19:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 756E31BF327
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:19:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 724E487E99
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M1MopXzVtY0p for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 16:19:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2088.outbound.protection.outlook.com [40.107.243.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4148387E4C
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 16:19:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fwori2fQYLL3zoM2/UWYe/QQ3H6+bfCmk7dVMMwEe/WWfee9Fs6xFxpSJc3l7YlI+vamZaKhqaYrnf3R9epIj3vw8rp90wvVB2YeJRV6wdC5T4H71c+wYvDHBid4gwVaNsZpS/vq5WTS5n+nbWJGncnmmyLcSSKr+G6HEUkQjYw03zouL1zLUkRI0CMWsoxCERYCxwhpgc1czFVo3Or4jdTo5Uvyg34YW2ca/0sbyoQvzedO5P9rZ5HZsnMjmlSIuw+8lXswMZg0wg4KHZc4heZDRTnNjWJhTrlExqDHPhNjRG85LAbzISUzuzTgwaCEP594rg8f46llNm9WC0+xug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XriGrlSX95bXHZj40QDpDZgOB9/D/eBvV6rjUtBDCyc=;
 b=G6A2PY5skh0JqIgZ1tlCBqcjN/jQLrVNZZR3gPXTbIsAKBYRwzv5NFbRh7PSzCBhK7fp4huGCINqBq9moxjtNWSFcSzDOCqcCeeSUdR2dmH7EyQQ5hr5DVwhq0SgX6kbQJalb2vrr/SYW+bp0qBknGBE3xkmq80gBSEYZ4mCnkw6ysyS4qG3/mZjienwQzOnQYr8rW3w3tBBNzwnv4J/B2KWjKzG86LbqDVZm6LhnIqTmq6y9UiSW9wEcafUJAsv6JyxGCGbAebYe+t1717LKhixdDqyFRogo8AesgTnJ/h+VaVHZ/HgFCV5HNgmUtp6d0wTKmvo2dCf6VEH00/oOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XriGrlSX95bXHZj40QDpDZgOB9/D/eBvV6rjUtBDCyc=;
 b=pq9Dki7MDumTXMqQSb4/9tdqv6g14Ml6ak4/mCPsi/WDhl3aexAemkXmrrzKXBOBsW4Quzo9epYs6xdMpGzQrCUvg/Jnfi8Vtpj5CAm9n0U31Mtrxq5Bouc2pyQGKLBfL1kSMqNMDAyzAeR1QnF9uGURXfYEpjy30qCSiFed61k=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHSPR00MB249.namprd11.prod.outlook.com (2603:10b6:300:68::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Mon, 20 Apr
 2020 16:03:39 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2921.030; Mon, 20 Apr
 2020 16:03:39 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 05/16] staging: wfx: also fix network parameters for IBSS
 networks
Date: Mon, 20 Apr 2020 18:03:00 +0200
Message-Id: <20200420160311.57323-6-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200420160311.57323-1-Jerome.Pouiller@silabs.com>
References: <20200420160311.57323-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM6PR07CA0065.namprd07.prod.outlook.com
 (2603:10b6:5:74::42) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 DM6PR07CA0065.namprd07.prod.outlook.com (2603:10b6:5:74::42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.26 via Frontend Transport; Mon, 20 Apr 2020 16:03:36 +0000
X-Mailer: git-send-email 2.26.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f9b80fd4-3510-4aa8-e25f-08d7e5446388
X-MS-TrafficTypeDiagnostic: MWHSPR00MB249:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHSPR00MB2493A138C580298C4CE671293D40@MWHSPR00MB249.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 03793408BA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(366004)(376002)(396003)(39850400004)(346002)(8676002)(7696005)(52116002)(6666004)(4326008)(8936002)(81156014)(66556008)(66476007)(66946007)(36756003)(186003)(54906003)(16526019)(107886003)(478600001)(2906002)(316002)(66574012)(1076003)(86362001)(6486002)(2616005)(5660300002);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9GJBJTLQPjjmXmefPgq03BEeSWWhzHP0D/kF5YP/UEFLEaet0XwaOlSJ6uaCp0yRG0fKU9mbxdAUkbexg0pijfi8kt9NGonGCB6tqCaFn8gUIV0DaC65rx8rM71L2MhvvEUoUfA0CexvYS+zaqG45zfBCgRq5Cl+i+uS+W5YPI5aw2ncAgwUPwtb4K1BzYgcIDawn+7DjO/ABt6g/MIEW0kH0V8GJPqlM2YKtG8pVlvi16XEaM7xNX3xfPFFCi/UjXYtvf92mvkQP/74uF5Q+t9zREPAJIlyPxTiOW1VJgqwdU7Ts+ZVL5w9G1HiMlgELZvg4LCU3KDDvHdoVeDM1DJvGt2OG7tyT4SQM5QOzQarb0bMtVJ5mggqueNAVJ5blH4hVyySljGRylDWYHjxaL4+NHNST418CQ+0EiiMbmKlG0d6ZWBEyZB6Ihc/31Aj
X-MS-Exchange-AntiSpam-MessageData: QtAArj4mOJ32biQWs4ZSVQltKg9U9i0E51TGCIoKXvl4g5tVOCNChTO/+RhZqFBHz96CXFxxNIQwx0/Uam2LzEQhXIZvIRLgh0STpaO8VTTgm4rSokjMNsHYwQwejY7Pe/gsOe52NYOCU5L0LYiX9E625glyWzZv7JNsz092OPsbA3O3321TtibAbwt492dbA7ZGzNQYHIGrVY1dQUrDFX5GfegY/RnPjTlSBekv9XPjBSVEXdd7RpoFPeJohn1XwazREAWoUzE544ieRbH2pWLa65XLMyozuoEY2J5V7I+cC/BYTYv/QsPJify4fgto7tuSFFVjgfF0S5iPSgaBdAJDHZadpnMlYRv6hh86JYqI8bQZO36UQXF2qlpTji0bAUqucUtSaCUZ+RXrVni+3s7jMy9qh011mTqIdOaF7ZyZOHis2xyAHWSpoh+X9E7vbtYShkYM7+oCSB4GkfpKgZh513hjMb54WFTFTGlrKkScOAi+8PPyGqrRhDVQjJtfAzAXGgXQB6seVkgPt+qGzwRtm2YfETrorpYMNfduSVjK3AtWZOyiuW26DfFoywr/Szj4pxSpeLJiTLvNKmFQPriKobZn51ABtoyVYePQGX45hN+RDFqZVHSlD+rTNMy6Z5dpoyuMffwRZS7xlVPskyMyzrk6GtWY5G7+Vdc/PM2WFrVsnHwoCkuL9ix0OcQO+Ul+JW/f+LJWu4Uv67guoLNe/DQKgqVuve0h8YU5JsZguSxUKD86UPjdkt+xyJ/QwMcioIem4rEUM19h8qcy99gQtI0km4LhvdXZ9NuvZoHtkYLVgAJpMqaxxWQdE6bNrpVoX1SQJUJzMhdz3x66mu20YXrbgghJLQoZAYVrNHk=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9b80fd4-3510-4aa8-e25f-08d7e5446388
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 16:03:39.0164 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2/noBMPFCBa1HRG1FQzUtd4DJclCDohta1CGHVtkEGmoxCzROQ/VO5JExQOzrXun4vT40CtKZah4RjqxZ0ry3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHSPR00MB249
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQ3Vy
cmVudCBjb2RlIHNraXAgc29tZSBjb25maWd1cmF0aW9uIGR1cmluZyBqb2luaW5nIGFuIElCU1Mg
bmV0d29yay4KSW5kZWVkLCBpdCBzZWVtcyB0aGF0IHRoaXMgY29uZmlndXJhdGlvbiBpcyBub3Qg
dXNlZCBpbiBJQlNTLiBIb3dldmVyLAppdCB3b3VsZCBiZSBoYXJtbGVzcyB0byBzZXQgdGhlbS4g
SW4gYWRkLCB3ZSB3b3VsZCBwcmVmZXIgdG8ga2VlcAphc3NvY2lhdGlvbiBwcm9jZXNzZXMgZm9y
IGFkLWhvYyBhbmQgbWFuYWdlZCBuZXR3b3JrcyB0aGUgY2xvc2VzdCBhcwpwb3NzaWJsZS4gSXQg
YWxzbyBlbnN1cmVzIHRoZSB2YWx1ZXMgb2YgaW50ZXJuYWwgcGFyYW1ldGVycyBvZiB0aGUKZmly
bXdhcmUuCgpUaGVyZWZvcmUsIGFwcGx5IHRoZW0gdW5jb25kaXRpb25hbGx5LgoKU2lnbmVkLW9m
Zi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0K
IGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgfCAxMSArKysrKy0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L3N0YS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwppbmRleCBhMGM4
NDE2NThhMGIuLmEwYzc3Mzc5MDNiOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9z
dGEuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCkBAIC00OTQsMTQgKzQ5NCwxMyBA
QCBzdGF0aWMgdm9pZCB3Znhfam9pbl9maW5hbGl6ZShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKIAli
c3NfcGFyYW1zLmFpZCA9IGluZm8tPmFpZDsKIAogCWhpZl9zZXRfYXNzb2NpYXRpb25fbW9kZSh3
dmlmLCBpbmZvKTsKKwloaWZfa2VlcF9hbGl2ZV9wZXJpb2Qod3ZpZiwgMCk7CisJaGlmX3NldF9i
c3NfcGFyYW1zKHd2aWYsICZic3NfcGFyYW1zKTsKKwloaWZfc2V0X2JlYWNvbl93YWtldXBfcGVy
aW9kKHd2aWYsIDEsIDEpOworCXdmeF91cGRhdGVfcG0od3ZpZik7CiAKLQlpZiAoIWluZm8tPmli
c3Nfam9pbmVkKSB7CisJaWYgKCFpbmZvLT5pYnNzX2pvaW5lZCkKIAkJd3ZpZi0+c3RhdGUgPSBX
RlhfU1RBVEVfU1RBOwotCQloaWZfa2VlcF9hbGl2ZV9wZXJpb2Qod3ZpZiwgMCk7Ci0JCWhpZl9z
ZXRfYnNzX3BhcmFtcyh3dmlmLCAmYnNzX3BhcmFtcyk7Ci0JCWhpZl9zZXRfYmVhY29uX3dha2V1
cF9wZXJpb2Qod3ZpZiwgMSwgMSk7Ci0JCXdmeF91cGRhdGVfcG0od3ZpZik7Ci0JfQogfQogCiBp
bnQgd2Z4X2pvaW5faWJzcyhzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIx
MV92aWYgKnZpZikKLS0gCjIuMjYuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
