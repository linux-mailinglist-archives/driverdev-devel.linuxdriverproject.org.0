Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4E024C2B4
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 17:59:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BA718648C;
	Thu, 20 Aug 2020 15:59:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9quX5efKsXla; Thu, 20 Aug 2020 15:59:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id ED1D68693F;
	Thu, 20 Aug 2020 15:59:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 579741BF232
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 15:59:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5359C88196
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 15:59:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 886v4v176vo3 for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 15:59:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2051.outbound.protection.outlook.com [40.107.92.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8B183881A8
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 15:59:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q9Wf+oqpoX23EEG/JLLNKcgtx5edUttZZAa/Nftt7LG0wDD89YYLUV3fLSxP5hr4XH60rpH7M0wNvgmo3HVSW6gMD9WL6t+JenVSdAjEklR8QjoC2eNzR1U6ijdT4bUw9LIIalTpLt0IMTrnkCdYJbkLLouhepOzcvqV5xeLC03d0oVKk5hx+Cc4Bu/i86XN40cK3S68WpVANYeli4qmURo+D37r8+6epnC8enllhmjLKzITXUvuN5fOo4jEtLj1O4N6FuLf/ETgqMnXCrzwrgZXxctONdWBzKmVwHT4+oHapv6QZZVxmvIm4a8wEhQ2qgo519c7wNSKnvhdIX2wbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xJrlJiwuPnQD82THeatQCST2HXpbIjrjeukM3c1SBBk=;
 b=ayPJu68nZnYkkhPA6j3RLHO3Et0BxzQrXRMU9c8ok1DiDiKnu9H1q1qypFgRlELmB1akt+zYbX/YtVyucYAU7jyJL9ld7xzRPTsi9mVs6rXhJbLiTHOHCqvuSb6DeajuMMqOGD+ogTmRvYR1P5LgOjoBUnugt2jWR2or0iHejgLaItLYUrOqicdz4bBRmgdrotogYwt6EZHIHXPDMA4ZyouytOYXxfesZBD54W64BjqvTdSDORbg4HLZWwpfJq6QM6x+GcuZnyqaGMMR8REqVCgmZh2u8HMcgyKDtJpROP/WA0jcxQ+Wku+ESumitLo/3S1vGa6WK8WX5HAeKGc3jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xJrlJiwuPnQD82THeatQCST2HXpbIjrjeukM3c1SBBk=;
 b=aAZ8vie/KA1/pS7V830njV0CUxbOxswxH7WUnTweJL+A9lC5wJDGoqYL4GEZnFdN/7oGcM6f3042qBPex+L7ftvzrIY/ZA2jVrKxs5v1nQiyaoFBvBtv+LUUp/b/XyV+w55cEP3e5ut5J97xy/BGU6iCaojsI3Qmy0FNiiWcJXc=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4541.namprd11.prod.outlook.com (2603:10b6:806:94::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25; Thu, 20 Aug
 2020 15:59:27 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3305.026; Thu, 20 Aug 2020
 15:59:27 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 03/12] staging: wfx: fix BA when MFP is disabled but BSS is
 MFP capable
Date: Thu, 20 Aug 2020 17:58:49 +0200
Message-Id: <20200820155858.351292-3-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200820155858.351292-1-Jerome.Pouiller@silabs.com>
References: <20200820155858.351292-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0122.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::14) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 255.255.255.255 (255.255.255.255) by
 PR0P264CA0122.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1a::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24 via Frontend Transport; Thu, 20 Aug 2020 15:59:25 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 46c7336c-edaf-4c36-d179-08d8452203e2
X-MS-TrafficTypeDiagnostic: SA0PR11MB4541:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB45416B9D9D80AAEE2BE11A19935A0@SA0PR11MB4541.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: apO9F439yuO1mjUcEpINO+zLzxofdqjsQkTTC718OEl+GWhu76XtQS6B3svCVsEy3n711aHzQl5SFZVet4SaKsXBoJ5/hOwOp2QDqLAI7TwcdzUfhfaBXQ9lv08PUmD8dHWpDQD0/SQotZQtXB60iJDl74Yfr2H6zpbsX2KpB2fJsXGd8AWcYVLTLhe5bUe5VU3cL84ivj97J2kiqNCDawnBPKrs9ADDfU8FYDn+ScmBFJc3jNcLQzrH3RUGyWsHMeQ2S7EHbyCyU5gUlr2sl7GgCf56ysqGB6tthd5SP/0RdRGZz9c5ycwcq29z5077cpcoZmEwvg71i9RsqtEfhToIrpe4SroWPVFiUERIs0xBXEhI0hlFZKiDOm0olwHi
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(39850400004)(366004)(346002)(136003)(186003)(6666004)(2906002)(8676002)(316002)(16576012)(54906003)(956004)(26005)(66574015)(8936002)(2616005)(110011004)(52116002)(83380400001)(107886003)(1076003)(5660300002)(478600001)(36756003)(4326008)(66476007)(66556008)(66946007)(86362001)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: ytRpAfXwoVbRbepEEgj1qcRuCb4YTF8epSBr8n2z5rIdTjnx9I0Uio8+4SEehmn3oVu5qEPhlM+E+C3rB0KDS8ENC7atHGxpy9z0cgpY6jFXLI86n5W7BJUEFrkMnGwjnJqDjBGENhjT5fS8TXvtrUNoa5oAiEz1JtSQn58RKYxkvugIRF4yRyb03KFbdpBJCD5qESnsL/+0eCWjoMAgv8yOX2c2NQbz6MYxUhkNegf7jeMU97f5g5L0JjX4hIHwBY7/tUNEltdBoQdGhf5EyCYKDaygWfq4/eqnzr+YhxdR9qU9tQME1CFDPyuBfTcB7/4uOn8aSUGSC/Wv4QysWDCcAHFaYnTNZfCWe2dCmGFjLR1LUf7Me1bScM7uEF73nP+hEy2IjByYnRZAVvIj0sJrEsGIkQGdm+XhDUk3jHLGIglekcmxDNEtz/JEW8EoxqJZHAnA8sH0Zdca0ceRPO5VPeZDKJIiuZ8v9ae2gTPP/XP+KK3zCR1dvO2kMafqhRSShN4qJEBbJEdpEfMuPuOU8To77s4Bpx8sXFYP6b0CnWSPTpndxncot0PHsqJyd6OcJqR3hx3aAq8W0+7pecJ6qn0Q1THdvuAoDTMSvlSRPXWzv50Q2lRr/lTJyDwoGiQGvv0zAv7FGq9aYkyBzQ==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 46c7336c-edaf-4c36-d179-08d8452203e2
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2020 15:59:27.0865 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FKFQWgKf9hdeki4Ej+cZsdKpi24sEjueR+lCB2iryL+D6gwPnOVqIe1NDpFx7BRMeKEy08fJfW1AuQoxl87o4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4541
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
IHByb3RlY3Rpb24gb2YgdGhlIG1hbmFnZW1lbnQgZnJhbWVzIGlzIG1haW5seSBkb25lIGJ5IG1h
YzgwMjExLgpIb3dldmVyLCBmcmFtZXMgZm9yIHRoZSBtYW5hZ2VtZW50IG9mIHRoZSBCbG9ja0Fj
ayBzZXNzaW9ucyBhcmUgZGlyZWN0bHkKc2VudCBieSB0aGUgZGV2aWNlLiBUaGVzZSBmcmFtZXMg
aGF2ZSB0byBiZSBwcm90ZWN0ZWQgaWYgTUZQIGlzIGluIHVzZS4KU28gdGhlIGRyaXZlciBoYXMg
dG8gcGFzcyB0aGUgTUZQIGNvbmZpZ3VyYXRpb24gdG8gdGhlIGRldmljZS4KClVudGlsIG5vdywg
dGhlIGRyaXZlciBkaXJlY3RseSByZWFkIHRoZSBSU04gSUUgb2YgdGhlIEJTUy4gSG93ZXZlciwg
aXQKZGlkbid0IHdvcmsgd2hlbiB0aGUgQlNTIHdhcyBNRlAgY2FwYWJsZSAoaWVlZTgwMjExdz0x
KSBhbmQgdGhlIGxvY2FsCmRldmljZSBoYXMgZGlzYWJsZWQgTUZQIChpZWVlODAyMTF3PTApLgoK
VGhpcyBwYXRjaCByZWFkIHRoZSBNRlAgaW5mb3JtYXRpb24gZGlyZWN0bHkgZnJvbSB0aGUgc3Ry
dWN0CmllZWU4MDIxMV9zdGEuIFRoaXMgaW5mb3JtYXRpb24gdGFrZSBpbnRvIGFjY291bnQgdGhl
IE1GUCBuZWdvdGlhdGVkCmR1cmluZyB0aGUgYXNzb2NpYXRpb24uIEluIGFkZGl0aW9uLCB0aGUg
Y29kZSBpcyBmYXIgc2ltcGxlci4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxq
ZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5j
IHwgMzQgKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKaW5kZXggZDJlOWNm
NjUxYzgxLi4yMGRiNGJiZGQ5MDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3Rh
LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtMzIzLDM2ICszMjMsNiBAQCB2
b2lkIHdmeF9zZXRfZGVmYXVsdF91bmljYXN0X2tleShzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywK
IAloaWZfd2VwX2RlZmF1bHRfa2V5X2lkKHd2aWYsIGlkeCk7CiB9CiAKLXN0YXRpYyB2b2lkIHdm
eF9zZXRfbWZwKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAotCQkJc3RydWN0IGNmZzgwMjExX2JzcyAq
YnNzKQotewotCWNvbnN0IGludCBwYWlyd2lzZV9jaXBoZXJfc3VpdGVfY291bnRfb2Zmc2V0ID0g
OCAvIHNpemVvZih1MTYpOwotCWNvbnN0IGludCBwYWlyd2lzZV9jaXBoZXJfc3VpdGVfc2l6ZSA9
IDQgLyBzaXplb2YodTE2KTsKLQljb25zdCBpbnQgYWttX3N1aXRlX3NpemUgPSA0IC8gc2l6ZW9m
KHUxNik7Ci0JY29uc3QgdTE2ICpwdHIgPSBOVUxMOwotCWJvb2wgbWZwYyA9IGZhbHNlOwotCWJv
b2wgbWZwciA9IGZhbHNlOwotCi0JLyogODAyLjExdyBwcm90ZWN0ZWQgbWdtdCBmcmFtZXMgKi8K
LQotCS8qIHJldHJpZXZlIE1GUEMgYW5kIE1GUFIgZmxhZ3MgZnJvbSBiZWFjb24gb3IgUEJSU1Ag
Ki8KLQotCXJjdV9yZWFkX2xvY2soKTsKLQlpZiAoYnNzKQotCQlwdHIgPSAoY29uc3QgdTE2ICop
aWVlZTgwMjExX2Jzc19nZXRfaWUoYnNzLCBXTEFOX0VJRF9SU04pOwotCi0JaWYgKHB0cikgewot
CQlwdHIgKz0gcGFpcndpc2VfY2lwaGVyX3N1aXRlX2NvdW50X29mZnNldDsKLQkJcHRyICs9IDEg
KyBwYWlyd2lzZV9jaXBoZXJfc3VpdGVfc2l6ZSAqICpwdHI7Ci0JCXB0ciArPSAxICsgYWttX3N1
aXRlX3NpemUgKiAqcHRyOwotCQltZnByID0gKnB0ciAmIEJJVCg2KTsKLQkJbWZwYyA9ICpwdHIg
JiBCSVQoNyk7Ci0JfQotCXJjdV9yZWFkX3VubG9jaygpOwotCi0JaGlmX3NldF9tZnAod3ZpZiwg
bWZwYywgbWZwcik7Ci19Ci0KIHZvaWQgd2Z4X3Jlc2V0KHN0cnVjdCB3ZnhfdmlmICp3dmlmKQog
ewogCXN0cnVjdCB3ZnhfZGV2ICp3ZGV2ID0gd3ZpZi0+d2RldjsKQEAgLTQwMCw3ICszNzAsNiBA
QCBzdGF0aWMgdm9pZCB3ZnhfZG9fam9pbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAl9CiAJcmN1
X3JlYWRfdW5sb2NrKCk7CiAKLQl3Znhfc2V0X21mcCh3dmlmLCBic3MpOwogCWNmZzgwMjExX3B1
dF9ic3Mod3ZpZi0+d2Rldi0+aHctPndpcGh5LCBic3MpOwogCiAJd3ZpZi0+am9pbl9pbl9wcm9n
cmVzcyA9IHRydWU7CkBAIC00MjcsNiArMzk2LDkgQEAgaW50IHdmeF9zdGFfYWRkKHN0cnVjdCBp
ZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmLAogCiAJc3RhX3ByaXYt
PnZpZl9pZCA9IHd2aWYtPmlkOwogCisJaWYgKHZpZi0+dHlwZSA9PSBOTDgwMjExX0lGVFlQRV9T
VEFUSU9OKQorCQloaWZfc2V0X21mcCh3dmlmLCBzdGEtPm1mcCwgc3RhLT5tZnApOworCiAJLy8g
SW4gc3RhdGlvbiBtb2RlLCB0aGUgZmlybXdhcmUgaW50ZXJwcmV0cyBuZXcgbGluay1pZCBhcyBh
IFRETFMgcGVlci4KIAlpZiAodmlmLT50eXBlID09IE5MODAyMTFfSUZUWVBFX1NUQVRJT04gJiYg
IXN0YS0+dGRscykKIAkJcmV0dXJuIDA7Ci0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
