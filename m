Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 453EC1D4857
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 10:34:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EEED987D34;
	Fri, 15 May 2020 08:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BG6k1PncJoKc; Fri, 15 May 2020 08:34:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5FA3787D3D;
	Fri, 15 May 2020 08:34:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F0531BF285
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:34:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9744E80781
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:34:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id smnLWD6u3yrx for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 08:34:06 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2078.outbound.protection.outlook.com [40.107.223.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3837488D3E
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 08:34:03 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k/dfV2LiQIDjBhXgVNLHVR4J73XmJtBL92BjAh2/2ajRGNkvLTvSPiiu1lK85Ns7TOvAVCkBGBdNoLTDfFB/M2vE0hGVDAlIK9GCuwJnyuDMfj2GcZxcXB9ykwu1qKr+T74o+KOvIjYIkzTV/CtAMTS6xR+ZasD0n9Jz3FJHsTfM/dVHV91Jt191AMhDxQPNHkeVh6aDTXEspf3P9IP0BZO4Rc3aCrX9hAqHWgfKvRvlMa5C/so5Slvw/N0RLBjtV+8m451yePYp+SkoyHmCI7lfemJF60xsNTvSuJ5VFPjLq909oS0CRnKa3tiAp27WICOtwF5wHNVbtxvOuq0/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lWXDdKWpwCAYPA7jCIaxh69IDl8y2OAZ+Qb1Xv0M0nc=;
 b=BlmIXtOnWvblwywRoW+N8aGhifpo2sGrgJuL3JW/hO7Hwn+iK9sFmhP5HnM3BpeaY0qZ19QzfDmCCRm9vKy0vseswbLRsmmID96TGGvd1O6xLpsolzl/Dwx5RsRYtH9EYxaLW1+wIUAGuIenLKPyAD6Wnqo/Bw6wd++WC16YuUTN77YJFfV2zbww7wM1erfJQ/iRdKUS6z3qVY3OqaDcVYYELmfImIZ3P3JK1QUUPa18lF0XAZVw9WzdpEsd8Qsg+jBJgpeGH5CTLTwwxutg2daZlvbtzIJjjpkg4lCn0Dn1gY0LOj6LSFbQKCvwWKmkedTSR7QeT0HvhiMo7bNHng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lWXDdKWpwCAYPA7jCIaxh69IDl8y2OAZ+Qb1Xv0M0nc=;
 b=ezkSfX2nWfTK6bLnWnT6xMMsugk0yrh6vUvAEs6kc+VWM9BqlU021bKAf7QTVEg0iaYUgPKRs/Y7ZzjNU1QNdDlPZCiOf+FyOpT3bzudWFfxnNnx5c8NNRKQiDlNJM3bRqB3/CURngxcitVtnu711LLPM7gjB1F7y5YFSnGW8zM=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1310.namprd11.prod.outlook.com (2603:10b6:300:28::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Fri, 15 May
 2020 08:34:02 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 08:34:01 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 07/19] staging: wfx: fix status of dropped frames
Date: Fri, 15 May 2020 10:33:13 +0200
Message-Id: <20200515083325.378539-8-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
References: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0076.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::16) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (82.67.86.106) by
 PR0P264CA0076.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:18::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.24 via Frontend Transport; Fri, 15 May 2020 08:34:00 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3f05338b-c248-4f99-82fb-08d7f8aab83a
X-MS-TrafficTypeDiagnostic: MWHPR11MB1310:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB131065F2FEFDB58A6A7AB62393BD0@MWHPR11MB1310.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-Forefront-PRVS: 04041A2886
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cb+cNuPZxnciouXHWucKFcwdLsc4hnXXplRi+LURyQo5R3MEn2hHlmwBhck95R2BQLDgtqPC6pbPkDurushrpnz00IdKt0aSdSMOytGiov2njxniyKXNi39qijJ+sY+i/3J75HWtAhqnFB+yvpnsqa8NvyHD3sAFE4eOXNZmvGxXMud1LlisSpgcakyauYW4KyYnzJ5Pk3vaAY7IyjgkSUvUBNdVDx3cj5Bwq6Toaf8l7TQSZxkbI/NYGgBInnrs9WxbvQJMlKU3nronrifaF15VdjdQmf68mrDESSbcVgaIv5t9yX0OuGZvv83g5uBCdFHnPVoMBY63rUz/r0VQUZkDpKN21EOui7q+7PhPhfREGOzCMrYN2EFOF7fpHS3hE1Ku7g3qc/3X46EnTxzOFsi+tNtuWzbFn9jp+003R5Hn+R0ODqm5eDrVYtLd1LYn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(376002)(366004)(39850400004)(396003)(8886007)(66556008)(186003)(6512007)(4744005)(66946007)(6506007)(36756003)(316002)(66476007)(26005)(52116002)(16526019)(6666004)(54906003)(2906002)(2616005)(478600001)(66574014)(107886003)(956004)(8936002)(86362001)(8676002)(6486002)(5660300002)(4326008)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: HjseBLukwqMYj9F9KYgEqADtNwslV17udSAZfT1Tvke4LSqQpFRuHJJOQv6Hn2UJdoHmc9BqIojFG0zbXj2ZY4Tf//wWcQBeiVr8BgMkjVCYDI3eyUDLpbRrG+ALK3+xzdSQI8EbNzt2rhhKTKI0+aemzkrz2G43cPP5S+8R4Im5eBda4CH38qhW+22GFHS8AZPqr5FIGRorOUktqUwngVVQHMvxbHdGGptx4yCswvmNrjhF9frZHEQIm9mCNzevQCkghKJtQOI7exG3LsUjDsTfh+9lrQWA1qetqNdM7ESTwCh+mU3tzGQaWBWhs7EoWQLs0tXgfZtXYviWDxXw/u7mlmQ1tjZSfqfCmATIhN4ppF1MD10WZVX+ArSBIDDr6HiRDZz+qXAgHezkwnYHYjqIAO/+SfYWUfFUWiwLDeLZPwbkrXW206HaMOYbiw4+O/h1+3m2r4W68CmnW1DcsOYXlkR8pEempcPNXRDMvcU=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f05338b-c248-4f99-82fb-08d7f8aab83a
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2020 08:34:01.8054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oeGhyB5n5PFAbPxPRDYyGCd3//2Pv1Qn+VWPfg9oR5oAo1yKph85r8dREoSUbveeU08unCPT2qw5uPyGZa/Eig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1310
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKV2hl
biB3ZnhfZmx1c2goKSBpcyBjYWxsZWQsIHRoZSBzdGF0dXMgb2YgcGVuZGluZyBmcmFtZXMgYXJl
IHJlcG9ydGVkIHRvCm1hYzgwMjExIHdpdGggcmFuZG9tIHN0YXR1cy4gbWFjODAyMTEgcHJvYmFi
bHkgd29uJ3QgaW50ZXJwcmV0IHRoaXMKc3RhdHVzIGluIHRoaXMgY2FzZSwgYnV0IGl0IGlzIGNs
ZWFuZXIgdG8gcmV0dXJuIGEgY29ycmVjdGx5IGluaXRpYWxpemVkCnN0YXR1cy4KClNpZ25lZC1v
ZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0t
CiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMg
Yi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYwppbmRleCBhMTI1OTAyMTRhNWQuLjVkMDI5
YjA3MThlOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKKysrIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKQEAgLTYxMyw2ICs2MTMsNyBAQCB2b2lkIHdm
eF9mbHVzaChzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZp
ZiwKIAkJd2Z4X3BlbmRpbmdfZHJvcCh3ZGV2LCAmZHJvcHBlZCk7CiAJd2hpbGUgKChza2IgPSBz
a2JfZGVxdWV1ZSgmZHJvcHBlZCkpICE9IE5VTEwpIHsKIAkJdHhfcHJpdiA9IHdmeF9za2JfdHhf
cHJpdihza2IpOworCQlpZWVlODAyMTFfdHhfaW5mb19jbGVhcl9zdGF0dXMoSUVFRTgwMjExX1NL
Ql9DQihza2IpKTsKIAkJd2Z4X3NrYl9kdG9yKHdkZXYsIHNrYiwgdHhfcHJpdi0+aGFzX3N0YSk7
CiAJfQogfQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
