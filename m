Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC114C436E
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Feb 2022 12:24:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C501C40151;
	Fri, 25 Feb 2022 11:24:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wZsC-1PmHkGj; Fri, 25 Feb 2022 11:24:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57FEA416B4;
	Fri, 25 Feb 2022 11:24:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8C3781C1162
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 11:24:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7AE07833CB
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 11:24:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lgdK-BBCGW1T for <devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 11:24:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam08on2053.outbound.protection.outlook.com [40.107.100.53])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8991A83380
 for <devel@driverdev.osuosl.org>; Fri, 25 Feb 2022 11:24:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkZaiRREES6S3U6A/HOEkCuiwuMcncgXkUZeS0qOMlUB2HvuP6xRau0U5iN8Xpau6NJeh0r19kE5PWyvidjHzMxSoFbVyiB+u2oQmSVdTOLH6nb3oDMWljT6ghYRUgJYt59amgMCCafk9vDXrMRJGkCTix/gYBE9BrxbYt3wk1NrOhxfPOsIeg4Tno9tQzFOlzMk6ElHJtMgO3zRFJa/P5djtBJbZQvz7fJ2ShETe9PXE3YC4Bk0WU0tGESVPtLnsy6Ev5yDtw9e06QKjJFED/6rXLbqbVGU41j9FEzd9wh5I0p474eTXOH7i2JvPumx1N1CT8tTXPEYVW0HnlQ8CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/SElU7QRT2qlTl9sDfTxXwac/naMIM8CHp19G+iQMw=;
 b=m9rAQxaY99N7e9F7TvQ/Q0GMHDpFmlXVsCeHLUA5d/6qmVyu3ysVN088XeSfqgH8vMXBJTiQrTS4xmV2NGvVv/jWXCT4FOk8uN2rQ8n7pmU8nD+Lo8AMjlo3Nsh+DgKUyfwN1yVX/7bAP99gj+PLLx++IPoWVShv0WF3JjYJvf89UrM136YlabrxuAVcuK6gKuv7ygSwcPqCe36xPFz+CQiCqs6b/SoeMCDexqoMM52ViuXXzYik6yfyEI9G4q3xfNxaMHWslM4g64GZBAcjSCpgJ/tOxQeyb2QhyD8ZCjtq0DruH4pYeCBt1EaAgvObdJR8/FkOQMzyg8WZzq0/Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t/SElU7QRT2qlTl9sDfTxXwac/naMIM8CHp19G+iQMw=;
 b=bZ9aUIZ7qkLghYuz/r5OHQnZxPx5vg0I3slmq8X+tLKuyvFY2jj0/gpfSiRpx8v5VE3NCrvsAtIPwffBdsdEEbyalrs+hP8zESUE0opTsTl32ck3m+GCRMTQILURUfvRe/mdOKg0zx52IroLhl0daJ+2er3sT9q7aCtfvEqhP5U=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by DM6PR11MB4362.namprd11.prod.outlook.com (2603:10b6:5:1dd::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 11:24:42 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::dd2e:8a4e:fc77:1e66]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::dd2e:8a4e:fc77:1e66%5]) with mapi id 15.20.5017.023; Fri, 25 Feb 2022
 11:24:42 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	Kalle Valo <kvalo@kernel.org>
Subject: [PATCH 04/10] staging: wfx: format code on 100 columns
Date: Fri, 25 Feb 2022 12:23:59 +0100
Message-Id: <20220225112405.355599-5-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220225112405.355599-1-Jerome.Pouiller@silabs.com>
References: <20220225112405.355599-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR3P189CA0052.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:53::27) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 472d8c78-c193-4274-8d54-08d9f8516b0f
X-MS-TrafficTypeDiagnostic: DM6PR11MB4362:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB43620087FC84C60846444598933E9@DM6PR11MB4362.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8Y+l8Bqwy+/kIOiMJvWd89hKhHYE7xTgnPkFhIHkqtZbPkTXaKiXRg6tU2L64p7mMj5f4d/TC+LXSPmBNKJBGkFuk5oViAeV3/rNFeup/Yy4Zz43G+cwPqigQfp9jNCaZpdzJciobBvHnm02YQW0d2yUA8kxC8Igjg7Akrxrsggh74z0LxuNTJcd4+Nbpl9PDr4IN/3/M7M6QJ5UAXNhhEn+nl69ct9mznzPSteq2W+DXpB/vck/VevKABfZqvReizgp62EBKKXTTFbR9UkP2sW3vvAfGanybN8jUQtDW4u4RbwBB8qhOmh0Z/nZMHjDm3QQsU0ueRm3nhWof9ufPWUiNjNbSUHamNBDjYSkCN3f81RXhtjy0gKFsvSEZWIX4+UlYk2hVOtTWwS2t0zsiin+bIeQwyg8vjbrtaAyBH2vxek/kw1/37e36fY+v8gV3a5hde5e4QpKtXaL2uWbYqmMOrrL6kUhANNc+A4M2zaTmR/817VfsGwDowHu3SCiWQ2teZeBipyqbhRewixnAI2G94JcWqcZsXTeKgah9qFXqXABXbIR7pTxIUqVi3dIe0fm70RQq32kq7lbkCFdwq7DIzfXbCIJfzdZGfMiOYUCbcAX5o0mjW7LPynNyW09lXbhj76/46ivMccjbwj9mRcVGgzkYIQbZCKr4R2PM2BMXs00Nv+I1oLKKLRRdwIPHBdwgkJZDm9wqUE2iJ356KK0j8yq+ixTD5Bqm/GeOJG3hiaIX7ny9nzfy9OIwCKz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6512007)(6506007)(1076003)(66946007)(52116002)(8676002)(2616005)(66574015)(26005)(66476007)(5660300002)(66556008)(508600001)(2906002)(83380400001)(54906003)(38100700002)(4326008)(86362001)(6486002)(8936002)(186003)(6666004)(107886003)(36756003)(316002)(38350700002)(6916009);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZkJaSjB3MWJOT2pnQTdoQUZKQlNMdVNjbUJsMEN0WXNmeEZmTTNDNUhhTjM2?=
 =?utf-8?B?SnJsMlhRVytycStUY3llZ0pMT3FJRjBGN0hjVEpvNkt0T1Y3dDA2c2xEUXFC?=
 =?utf-8?B?R28vc29zSkhCejhKc1k4TnJtbzN3K094b2hXZ3hDQitjKzEyOG9sb3VOeHNm?=
 =?utf-8?B?TktZaDROZDFDWXB6azUycUdMeVZVb0R4MFlFOURhbldkZWNGUDVwa3ZOZ2dC?=
 =?utf-8?B?clpuNC9RWEt2WSt4aUFZL1pVbzFqZkNPQ2R5VDEveEdLOHV1NnVEZFI2NWti?=
 =?utf-8?B?RXcvQlIwNURiWnNXdWZYMVFSajhWWU0xd0tXWmtKSURkNHpmTWozanRXNzFF?=
 =?utf-8?B?R3pPUmhucUQ2UEo3Sm1EVi94a0F0ZWNtYjJMdGJuTTlQNjZSbHBUdEVNeVR0?=
 =?utf-8?B?Q1dod3hHK2QwS3JjbUdUL1VhQ1JoakRPeEljc29qWkFLS1FCb3JQWmxVNjc4?=
 =?utf-8?B?L3JzVW1UTkxQTVI1M25vLy9iaWdEMGZ4bWRjU2N1dlR1bHRIS0lOOUpYT1RV?=
 =?utf-8?B?SlJLdW1hU3RLVVVDT2tCR29maVJvRDFpWlRtdVA3MEc2TDlOeE15cTFpdmxP?=
 =?utf-8?B?cTJIVTZyOTc3TnVEUGxDcmdvM2ZCSmd0WE1RZ3FyYS94am8yV2RKbkJRVTZk?=
 =?utf-8?B?d2dYSE10SHF6WHlicjRGaUpFQTdQVjhyOUJhd3BsWU41R01CQ0VZd1BINkNa?=
 =?utf-8?B?cm9hN0djdkVySmtvSGorRnJrOTlOcE9zakRXTjlqZE9Ldy9kMkpENWhBRFc3?=
 =?utf-8?B?a3RGcmd5TUFYZ1MxcVcwOUs4bGlLdnBmSW51cGoyYlFTYTV1Y09JNFI5Vnla?=
 =?utf-8?B?M3lrb2V1MEd2MWRkaEZhTHBIQ0p4TEhIRm1BQ2VvWW5VSS9ld3BheUQ0MHRW?=
 =?utf-8?B?SnV4UWQ3d1BkUjBYc1Y2R0V3NHdteWhZcWU1YVVFWWd6UUowQklRSDhOaGpZ?=
 =?utf-8?B?RzUrYThDUnpwSEhKRlZhcnJuQTJDYURFTjJ2TW1Ma3E0d1ZnRUFydytsZ1FB?=
 =?utf-8?B?ZGZ3YkpwS0k2V3FjWHQyT3JIbUZkTU5jbTdES0ZWY0VyOWV6TkRqamNvUDVC?=
 =?utf-8?B?c05oR2EyeFU2aS92VEliOWNpd000bVhHbTI5WDIrTDNhb01ZSnhqRGxKUHdj?=
 =?utf-8?B?RGJPOVJLZ2dvOVVuQXZpdDlITHE1U2tZcm5sZHJTMVBXS3hLQUozam1GV3cr?=
 =?utf-8?B?ZEdwNU5NQ240QUVpWmE5MW5rYjlKRWh4WGMwa0pwVDdLbFNOZ3dWNEhYb3d4?=
 =?utf-8?B?c3ZLdFpTU2gxV1MyMEs4eTREQVcrSmFtMUFwaDhBOHhDL2E3K3d4UTlmV0RS?=
 =?utf-8?B?SkZJU244TEY5YzZSZ3B4UFhmcFM2cnpQYWlzQldxZmZwQndIdHJkMzNtSEdt?=
 =?utf-8?B?Vk1SbDg1c01GV0VoL3A0c01EeTFIMWlYTEFnVUtHLzFQTW42cjJFNUxkN0NH?=
 =?utf-8?B?YUw1MnN2a0dZQUNtWFoyUWo2S0Rwcjg2T3hMUUdIUE5FdHZXRDRGRGdtSzNl?=
 =?utf-8?B?dHdKU0RsTTFYZzFyZHgxZVp5OUlDK3JFdmk3YkRtWlBIWlNJRlpyREdPR0kz?=
 =?utf-8?B?ek5uZjhXaXNWYVVmVHc0cGNoY1JOancrTkY5TllWY1cwNGx5bHF4UlQ3RFlC?=
 =?utf-8?B?UEFoVFdBZjNuM1dNYzNlRDRsNWdTdFRPcTRuYVBEbkN2L0FFc254MlZYeXVa?=
 =?utf-8?B?YzlMbXNOZ2NVWWVTR3J0VVZrNzBIaWJ0SE9nT1NhUUVRSDhOM0hUNEJkejZO?=
 =?utf-8?B?OXF1a05pRDdaV0VBa2tKN0R3ZW4vdG93U0tseisvQ2ZTN0xsNW0vcEp2Y1N5?=
 =?utf-8?B?NVoybVhtSmVvai9nWVdmUE1abFozM0xHNTZoN0tzY256dWFtRG1Hb1pjUlBy?=
 =?utf-8?B?OGJKNHUvTzFLTFRBKy8wYlU4MjJnci8zb1BBU0YwMkgxOGt2UTY5NVdyTlow?=
 =?utf-8?B?MjMzOHZyRGhub0IxR2kvV0hhbS80WkEyYWJuZW90aFJWTUROVk9JNm9GR3Zx?=
 =?utf-8?B?dVVMNHlJSU5keU1QdHpDWmZzUDBEd2Uva3lMb2MwdU82MGoycmp2ajdDWW5F?=
 =?utf-8?B?cEQ4ajVXU21iL0pobVdNY3A1WDhBUGVXS3d3NnlQYno5TjhCRmZXa1lwUm9C?=
 =?utf-8?B?YzM3ei9IWjg1T3hZQk5qdjFCc3lwSUlLdlVENms4MGMvcVpUVXB4UWlJYi9O?=
 =?utf-8?Q?qJd8W9BijgZlAU7OlmXDj68=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 472d8c78-c193-4274-8d54-08d9f8516b0f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 11:24:42.4055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XWqKolCniSlG3ZfzNtnalJrt3MfZjpZBT5nrqF/r7vHDXry6OBkQaKHJlHgzovT+T3E891kVN9X6tTmpgKfBmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4362
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQSBm
ZXcgbGluZXMgd2VyZSBub3QgeWV0IGZvcm1hdHRlZCBvbiAxMDAgY29sdW1ucy4KClNpZ25lZC1v
ZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0t
CiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYyAgICAgICB8IDMgKy0tCiBkcml2ZXJzL3N0YWdp
bmcvd2Z4L2hpZl9yeC5jICAgICB8IDMgKy0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5j
ICAgICB8IDMgKy0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuYyB8IDMgKy0tCiBk
cml2ZXJzL3N0YWdpbmcvd2Z4L2h3aW8uYyAgICAgICB8IDkgKysrLS0tLS0tCiBkcml2ZXJzL3N0
YWdpbmcvd2Z4L3N0YS5jICAgICAgICB8IDcgKysrLS0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9z
dGEuaCAgICAgICAgfCAzICstLQogNyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAy
MCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYyBi
L2RyaXZlcnMvc3RhZ2luZy93ZngvZndpby5jCmluZGV4IDkwMDVhNmZlNDhjOC4uM2QxYjhhMTM1
ZGMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYworKysgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2Z3aW8uYwpAQCAtMTkyLDggKzE5Miw3IEBAIHN0YXRpYyBpbnQgdXBsb2Fk
X2Zpcm13YXJlKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBjb25zdCB1OCAqZGF0YSwgc2l6ZV90IGxl
bikKIAkJCQlyZXR1cm4gcmV0OwogCQl9CiAJCWlmIChrdGltZV9jb21wYXJlKG5vdywgc3RhcnQp
KQotCQkJZGV2X2RiZyh3ZGV2LT5kZXYsICJhbnN3ZXIgYWZ0ZXIgJWxsZHVzXG4iLAotCQkJCWt0
aW1lX3VzX2RlbHRhKG5vdywgc3RhcnQpKTsKKwkJCWRldl9kYmcod2Rldi0+ZGV2LCAiYW5zd2Vy
IGFmdGVyICVsbGR1c1xuIiwga3RpbWVfdXNfZGVsdGEobm93LCBzdGFydCkpOwogCiAJCXJldCA9
IHdmeF9zcmFtX3dyaXRlX2RtYV9zYWZlKHdkZXYsIFdGWF9ETkxEX0ZJRk8gKyAob2ZmcyAlIERO
TERfRklGT19TSVpFKSwKIAkJCQkJICAgICAgZGF0YSArIG9mZnMsIEROTERfQkxPQ0tfU0laRSk7
CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9yeC5jIGIvZHJpdmVycy9zdGFn
aW5nL3dmeC9oaWZfcnguYwppbmRleCAzMDJiZGIyYmYwMzYuLjY0Y2E4YWNiOGU0ZiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYworKysgYi9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl9yeC5jCkBAIC0yNDQsOCArMjQ0LDcgQEAgc3RhdGljIGludCB3ZnhfaGlmX2dlbmVy
aWNfaW5kaWNhdGlvbihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwKIAkJbXV0ZXhfdW5sb2NrKCZ3ZGV2
LT50eF9wb3dlcl9sb29wX2luZm9fbG9jayk7CiAJCXJldHVybiAwOwogCWRlZmF1bHQ6Ci0JCWRl
dl9lcnIod2Rldi0+ZGV2LCAiZ2VuZXJpY19pbmRpY2F0aW9uOiB1bmtub3duIGluZGljYXRpb24g
dHlwZTogJSMuOHhcbiIsCi0JCQl0eXBlKTsKKwkJZGV2X2Vycih3ZGV2LT5kZXYsICJnZW5lcmlj
X2luZGljYXRpb246IHVua25vd24gaW5kaWNhdGlvbiB0eXBlOiAlIy44eFxuIiwgdHlwZSk7CiAJ
CXJldHVybiAtRUlPOwogCX0KIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlm
X3R4LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jCmluZGV4IGVhMjU4MjcxNGJiOS4u
MjM2ZjlkNjJlM2E5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3R4LmMKQEAgLTE2OSw4ICsxNjksNyBAQCBpbnQg
d2Z4X2hpZl9yZXNldChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgYm9vbCByZXNldF9zdGF0KQogCXJl
dHVybiByZXQ7CiB9CiAKLWludCB3ZnhfaGlmX3JlYWRfbWliKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2
LCBpbnQgdmlmX2lkLCB1MTYgbWliX2lkLAotCQkgICAgIHZvaWQgKnZhbCwgc2l6ZV90IHZhbF9s
ZW4pCitpbnQgd2Z4X2hpZl9yZWFkX21pYihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IHZpZl9p
ZCwgdTE2IG1pYl9pZCwgdm9pZCAqdmFsLCBzaXplX3QgdmFsX2xlbikKIHsKIAlpbnQgcmV0Owog
CXN0cnVjdCB3ZnhfaGlmX21zZyAqaGlmOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfdHhfbWliLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eF9taWIuYwppbmRleCAx
YzU3ZGQyYjY5N2MuLmRmMWJjYjFlMmMwMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfdHhfbWliLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHhfbWliLmMKQEAg
LTg0LDggKzg0LDcgQEAgaW50IHdmeF9oaWZfc2V0X21hY2FkZHIoc3RydWN0IHdmeF92aWYgKnd2
aWYsIHU4ICptYWMpCiAJCQkJICZhcmcsIHNpemVvZihhcmcpKTsKIH0KIAotaW50IHdmeF9oaWZf
c2V0X3J4X2ZpbHRlcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKLQkJCSAgYm9vbCBmaWx0ZXJfYnNz
aWQsIGJvb2wgZmlsdGVyX3ByYnJlcSkKK2ludCB3ZnhfaGlmX3NldF9yeF9maWx0ZXIoc3RydWN0
IHdmeF92aWYgKnd2aWYsIGJvb2wgZmlsdGVyX2Jzc2lkLCBib29sIGZpbHRlcl9wcmJyZXEpCiB7
CiAJc3RydWN0IHdmeF9oaWZfbWliX3J4X2ZpbHRlciBhcmcgPSB7IH07CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy93ZngvaHdpby5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9od2lvLmMK
aW5kZXggYzE1ODEwYmRhZWNiLi4zZjk3NTBiNDcwYmUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy93ZngvaHdpby5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaHdpby5jCkBAIC03MSw4
ICs3MSw3IEBAIHN0YXRpYyBpbnQgd2Z4X3dyaXRlMzJfbG9ja2VkKHN0cnVjdCB3ZnhfZGV2ICp3
ZGV2LCBpbnQgcmVnLCB1MzIgdmFsKQogCXJldHVybiByZXQ7CiB9CiAKLXN0YXRpYyBpbnQgd2Z4
X3dyaXRlMzJfYml0c19sb2NrZWQoc3RydWN0IHdmeF9kZXYgKndkZXYsCi0JCQkJICAgaW50IHJl
ZywgdTMyIG1hc2ssIHUzMiB2YWwpCitzdGF0aWMgaW50IHdmeF93cml0ZTMyX2JpdHNfbG9ja2Vk
KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgcmVnLCB1MzIgbWFzaywgdTMyIHZhbCkKIHsKIAlp
bnQgcmV0OwogCXUzMiB2YWxfciwgdmFsX3c7CkBAIC05NCw4ICs5Myw3IEBAIHN0YXRpYyBpbnQg
d2Z4X3dyaXRlMzJfYml0c19sb2NrZWQoc3RydWN0IHdmeF9kZXYgKndkZXYsCiAJcmV0dXJuIHJl
dDsKIH0KIAotc3RhdGljIGludCB3ZnhfaW5kaXJlY3RfcmVhZChzdHJ1Y3Qgd2Z4X2RldiAqd2Rl
diwgaW50IHJlZywgdTMyIGFkZHIsCi0JCQkgICAgIHZvaWQgKmJ1Ziwgc2l6ZV90IGxlbikKK3N0
YXRpYyBpbnQgd2Z4X2luZGlyZWN0X3JlYWQoc3RydWN0IHdmeF9kZXYgKndkZXYsIGludCByZWcs
IHUzMiBhZGRyLCB2b2lkICpidWYsIHNpemVfdCBsZW4pCiB7CiAJaW50IHJldDsKIAlpbnQgaTsK
QEAgLTE5OSw4ICsxOTcsNyBAQCBzdGF0aWMgaW50IHdmeF9pbmRpcmVjdF9yZWFkMzJfbG9ja2Vk
KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBpbnQgcmVnLCB1MzIgYWRkciwgdQogCXJldHVybiByZXQ7
CiB9CiAKLXN0YXRpYyBpbnQgd2Z4X2luZGlyZWN0X3dyaXRlMzJfbG9ja2VkKHN0cnVjdCB3Znhf
ZGV2ICp3ZGV2LCBpbnQgcmVnLAotCQkJCSAgICAgICB1MzIgYWRkciwgdTMyIHZhbCkKK3N0YXRp
YyBpbnQgd2Z4X2luZGlyZWN0X3dyaXRlMzJfbG9ja2VkKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBp
bnQgcmVnLCB1MzIgYWRkciwgdTMyIHZhbCkKIHsKIAlpbnQgcmV0OwogCV9fbGUzMiAqdG1wID0g
a21hbGxvYyhzaXplb2YodTMyKSwgR0ZQX0tFUk5FTCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3N0YS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwppbmRleCBiYTUzZTRk
NzBjNGYuLjI4NDc0NjE0YThlNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEu
YworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCkBAIC00MzIsOCArNDMyLDcgQEAgc3Rh
dGljIHZvaWQgd2Z4X2pvaW4oc3RydWN0IHdmeF92aWYgKnd2aWYpCiAJd2Z4X3R4X3VubG9jayh3
dmlmLT53ZGV2KTsKIH0KIAotc3RhdGljIHZvaWQgd2Z4X2pvaW5fZmluYWxpemUoc3RydWN0IHdm
eF92aWYgKnd2aWYsCi0JCQkgICAgICBzdHJ1Y3QgaWVlZTgwMjExX2Jzc19jb25mICppbmZvKQor
c3RhdGljIHZvaWQgd2Z4X2pvaW5fZmluYWxpemUoc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVj
dCBpZWVlODAyMTFfYnNzX2NvbmYgKmluZm8pCiB7CiAJc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0
YSA9IE5VTEw7CiAJaW50IGFtcGR1X2RlbnNpdHkgPSAwOwpAQCAtNTM5LDggKzUzOCw4IEBAIHZv
aWQgd2Z4X2Jzc19pbmZvX2NoYW5nZWQoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBp
ZWVlODAyMTFfdmlmICp2aWYsCiAJCXdmeF9lbmFibGVfYmVhY29uKHd2aWYsIGluZm8tPmVuYWJs
ZV9iZWFjb24pOwogCiAJaWYgKGNoYW5nZWQgJiBCU1NfQ0hBTkdFRF9LRUVQX0FMSVZFKQotCQl3
ZnhfaGlmX2tlZXBfYWxpdmVfcGVyaW9kKHd2aWYsIGluZm8tPm1heF9pZGxlX3BlcmlvZCAqCi0J
CQkJCQlVU0VDX1BFUl9UVSAvIFVTRUNfUEVSX01TRUMpOworCQl3ZnhfaGlmX2tlZXBfYWxpdmVf
cGVyaW9kKHd2aWYsCisJCQkJCSAgaW5mby0+bWF4X2lkbGVfcGVyaW9kICogVVNFQ19QRVJfVFUg
LyBVU0VDX1BFUl9NU0VDKTsKIAogCWlmIChjaGFuZ2VkICYgQlNTX0NIQU5HRURfRVJQX0NUU19Q
Uk9UKQogCQl3ZnhfaGlmX2VycF91c2VfcHJvdGVjdGlvbih3dmlmLCBpbmZvLT51c2VfY3RzX3By
b3QpOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaCBiL2RyaXZlcnMvc3Rh
Z2luZy93Zngvc3RhLmgKaW5kZXggMDgyMzI5ZDdiYmNkLi5jNjliMjIyN2U5YWMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9z
dGEuaApAQCAtNDYsOCArNDYsNyBAQCBpbnQgd2Z4X2FtcGR1X2FjdGlvbihzdHJ1Y3QgaWVlZTgw
MjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV92aWYgKnZpZiwKIAkJICAgICBzdHJ1Y3QgaWVl
ZTgwMjExX2FtcGR1X3BhcmFtcyAqcGFyYW1zKTsKIGludCB3ZnhfYWRkX2NoYW5jdHgoc3RydWN0
IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfY2hhbmN0eF9jb25mICpjb25mKTsK
IHZvaWQgd2Z4X3JlbW92ZV9jaGFuY3R4KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3Qg
aWVlZTgwMjExX2NoYW5jdHhfY29uZiAqY29uZik7Ci12b2lkIHdmeF9jaGFuZ2VfY2hhbmN0eChz
dHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV9jaGFuY3R4X2NvbmYgKmNv
bmYsCi0JCQl1MzIgY2hhbmdlZCk7Cit2b2lkIHdmeF9jaGFuZ2VfY2hhbmN0eChzdHJ1Y3QgaWVl
ZTgwMjExX2h3ICpodywgc3RydWN0IGllZWU4MDIxMV9jaGFuY3R4X2NvbmYgKmNvbmYsIHUzMiBj
aGFuZ2VkKTsKIGludCB3ZnhfYXNzaWduX3ZpZl9jaGFuY3R4KHN0cnVjdCBpZWVlODAyMTFfaHcg
Kmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmLAogCQkJICAgc3RydWN0IGllZWU4MDIxMV9j
aGFuY3R4X2NvbmYgKmNvbmYpOwogdm9pZCB3ZnhfdW5hc3NpZ25fdmlmX2NoYW5jdHgoc3RydWN0
IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsCi0tIAoyLjM0LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
