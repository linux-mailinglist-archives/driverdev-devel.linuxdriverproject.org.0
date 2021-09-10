Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4AC406F02
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 18:09:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 163AC4066C;
	Fri, 10 Sep 2021 16:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zCawkaRGLp3U; Fri, 10 Sep 2021 16:09:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC7C440660;
	Fri, 10 Sep 2021 16:09:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA80D1BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA89661B8F
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tXVLvNleP3Lp for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 16:06:10 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2079.outbound.protection.outlook.com [40.107.94.79])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3B15861B8E
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 16:06:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JXk0l/+cbK916rKzDkPUUijyaxw3eiUQBG96pZj2TU0PcGcbXvZeT2YV2pR48lXXcdEPuD6gOsCTjwaltB/EY93CXkyToKOXJnPsZfrJlOnDLfOgMrlRXkcgwCOPMBWjDHuGhBAGUW/YNMmKbxrcfPI47CoYlUOZIXkngUdtBBaSU7yHgkeEcEexpz2QlVYXGi3P3lNW4j1BWrSC5e8e5z0REnBe0waSNn32SjoypHDC+8/Oii4HGCmu8q8KdeX+lRnB3nK+HuC0huE5lX1srMi/w5eQ6UojLL7lQP0z8GYDjaZR5K6KmmtuOirNSCJK5UkOSuvbNWBSDZyhisLu3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=ccofu5gYFbkh8sj5fL3C1VHu04LwhvufW1ukyBAA7xQ=;
 b=fiiiRQUN5IyNweGlUK6U62eQ7yVLjJDeLE8//wYBxpMCBY12SkE3I8IcPXTaPZ4UTBJH5xkWkNuubZUHUGy0J70Ub3Yy1Z40nKnUtewIVcjX/n6zdGTneHlNiZnY0pOhUjnNq792AslS5eCaN3PYVwnhirL2ELA1Jptn3eJDPrzILZh/kR3RfC5BOmDAt+BM0nbQkO4+RrzuDBVopIF7fFkBUD2SWcubsACkEolUptABWg3MPHhgcU4iCIo94NVV3JW9lLiUO++nCN4irzCxz6E926n+b3OOm8xKxDSvTotVztrUahxl6USo6uWPYzJDQjhzC6nec1QOqVxkzk6jSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ccofu5gYFbkh8sj5fL3C1VHu04LwhvufW1ukyBAA7xQ=;
 b=CE+zTZxBtATmFgffkCWM4nckwxpwnVjnZAwG5Q2qKBcCdl10iFnoIRmb1wR2EyLEWLqSRIM3ABD8u7nIryk46bNy859zTwo4xqcQ10V5ocXELglU87z4LGF1kewAi35nHD4xlosSnx6LMXmbGyQNMd+aKNBEfVPNWg8JwUP66vw=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB5002.namprd11.prod.outlook.com (2603:10b6:806:fb::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.25; Fri, 10 Sep
 2021 16:06:09 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 16:06:08 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 19/31] staging: wfx: fix error names
Date: Fri, 10 Sep 2021 18:04:52 +0200
Message-Id: <20210910160504.1794332-20-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN4PR0601CA0006.namprd06.prod.outlook.com
 (2603:10b6:803:2f::16) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SN4PR0601CA0006.namprd06.prod.outlook.com (2603:10b6:803:2f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15 via Frontend
 Transport; Fri, 10 Sep 2021 16:06:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a973e416-3393-460c-0d21-08d97474e6b9
X-MS-TrafficTypeDiagnostic: SA2PR11MB5002:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA2PR11MB50025B633A0B92C663CE0F1B93D69@SA2PR11MB5002.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cye2JE0XjrzFDPf4s+ehb4NLROUvFLx3YpCg7Egf/6C6bGvsxyfXh3x/d4T91DuDp2HWkIu6I1Sh5zOyrFEjn8qOkmwzdtDYzR2+ofV/LO3QGciDeGDowBixCuI8nV9RGsYF/SC7dIvIFwLeq0jqw5lbyiFvxIzp+hQXKz6hf+CVhhS2ns1LFSCkOe7LnnUH3y5olg81HL51Y/gs+iuPSkLTMRJeyUD1XyihfL14LEQftweBKXS077Ip+jg+I1uiFnxuk6qNeg2Iyd3QsfpAkgQU+5fYpgjohCOqyjJpcGcZ5BnKjU/ytWDuIeUKjIGZk4lDwGAs4kjrys61RVIyEB3MzRkkzsIAzSTvrj0/p9s9lenr6QgodOohKI/6ePztGdPfY55e+7uIELOfLHNVT7R34uUjaSyi9NW0Spscp6A2/BK91s/S3wJet0esfc69W+3QHO1Tu3AUKtgtj5Pj//80J5SGwXNrIDvjnko5aTfkm5KI+U7s5CCBsjg/hHexHTu7TuAwDpa0FMxlKHqIEJw0MXIMpCXgY3iaoQl8jXmU9i3wiHQcc18lo6Vier5N0QbfLpBx50e+iola+OBVvWUHyVHh5Yvx28J2bXgQsT2FSUIYXiEAegL9nOcIBbg01Wg2NXc+LzX3R2cb21wZIQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6486002)(52116002)(86362001)(38100700002)(8936002)(186003)(66574015)(7696005)(4326008)(508600001)(8676002)(4744005)(36756003)(2616005)(6666004)(66556008)(316002)(66476007)(83380400001)(54906003)(66946007)(2906002)(1076003)(107886003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVRuRnpWdHdieGJGODdyRFZjaFdlRTY4T3lzdzBwQUdIOVIwWElwbXJaNnVU?=
 =?utf-8?B?b1pZbVFYRFVueCttZVN5MnRMOStrZzBlVGxqUGR4OHFwbHQ2VC9PTkhkYno1?=
 =?utf-8?B?Vm5MVkJoakQ3YitLbkNtaTJNUjU2c2hvV2ZlaFVYbDNoOVJhL29XUHhzdkFE?=
 =?utf-8?B?ZFpTZ0FVUnd1blZycCtLbHNFdG5uaHk4bnBtSk1pOWlxYTRJMGpweWZIU09L?=
 =?utf-8?B?b0FKc3p0cWFKcnp0dXBlWGdIejVScWRQZndNNlhtVVNzSnNlMWpQRDhTai9n?=
 =?utf-8?B?K0dxSXM4ZjdLOU1kdlZnM0xIU1NNUGUzQkl2YVppanhFNU0rR1J5RExlVDFB?=
 =?utf-8?B?Snc4ejI4K3RuKzI4aEZ0WUl6ZXF6Q3NkckNtYUVBaGJ3NENuUXRnMWt6Y3ZZ?=
 =?utf-8?B?dzZnSDVHK0hqMGxZaGV0RkJvdjEvdDhqeGpheG5UcUljWm1pTmhKN1ROZnBP?=
 =?utf-8?B?MFRUamhYclNGQUNBSG9UUW1TKzVTK2tyVS9TTlJzTHppRVNrZjROaDNSVWcv?=
 =?utf-8?B?Ulg3Tkg0clMrdGZGTlUzWVVkNXZ0NmxZK1ZmZFZXUkZXNVNrMXF4WHpraE5x?=
 =?utf-8?B?Sm9LamtsOTVVR2dDVGRMMi9vN1RYZkhOMDd3Q3FlQW1LM3I0TGJqcGdUV3hy?=
 =?utf-8?B?R3pHalFlWDltb2FvdjFxVkhNSDBPUzE5ZWJUZ1kyeFNPOXJjQW1RZ2ZLRHNX?=
 =?utf-8?B?K2FVL3VaNVNlTW1QS0lGcmRSbmRNSkN6ejdJdjhYWVRUMnVCR0RGNWd3Z2hh?=
 =?utf-8?B?aU1xdWZ5MnNpNUdEaGdpbWNQT2ZMTFVtN0sweXUzQ2JYNEVqS1RsQlYvT1Nk?=
 =?utf-8?B?TlJxMDhDMGFpamdpTXVxaUxXazNxSk8zZTFkRExFOVV3Tmd3cEZiYTlEWXlw?=
 =?utf-8?B?MTNUMHVGWDZlbU5GakF3SVZvK1BQK2tNV1JNSEVOQWZudWk3N0g0SU5menU2?=
 =?utf-8?B?ZUd0MWV3SUdyVGlyQTJvKzRuM0t6NER3T2VWN2JzTkVjKytHaEkzSDNjYXdS?=
 =?utf-8?B?TXZKSTRvM0h0dWVKcFdSbmkrRXB2VVNKUWdKaDNLWkg4emhKZTFLdTRiaGpi?=
 =?utf-8?B?YTF6ZjN3ZVREOU4xSDBaKzJoZ210MW15bDNQbW96RWk2K2xJZGFnSUJ4SU10?=
 =?utf-8?B?eWVVVFVwUlMwcE1lek8vb2FwVHpJUy9ZVVhqSGhBc0paSElHNERwWlUyb2NR?=
 =?utf-8?B?c2pnbUNlT0NiV2tZU3hYZ0c3RUthY2pZb2VzK0dGbURZOVpESlhrb0IvUXhV?=
 =?utf-8?B?Y0FuVEw2NVZmL01ra3o0dDlpYVJkU3o3NkpiL2VGbm14dTVTajVUa2ZaQ1E1?=
 =?utf-8?B?Q0VhYjExbWRIb3RkeGJ6WHRNZWR3V3ZHUGJKZkFmTFE3NVJZKzNKYW5tV2R5?=
 =?utf-8?B?bWVxTDZkSFlEWFpzTVJ0MWRDWXREQ2xIYUs5Z3NZZGVhc0ROWnBodGROd2tM?=
 =?utf-8?B?TWp1VjU5N1FrSTRFUWN3S1dKemRsRWFEZTlXUWN4bzQzOUtCQnBaK2dFWFc4?=
 =?utf-8?B?cU5PQjd6U2ltYW1RZ1J1NDVJRmJhdEJRTGdhd3ROcnRLZFpBM0tsSkMzSnhr?=
 =?utf-8?B?MGpLZ1VpUkloUWNmakY1SkdQb0ZEZHdoZEVEQUNOZTEwVmZDSHNJWUZsbGlL?=
 =?utf-8?B?UHd5WEgyb0lFMkw4ZVFNMDg1VUlmSU5xd2Q2aTNsWDFldWxtRnZhMmx5VzRG?=
 =?utf-8?B?R0FLTm5wekJVT3c3ZVJCdFl3TFlMeEJZdzBmak9UN0plVm9VN081ZW9uWEtx?=
 =?utf-8?B?OHVEM0FwSFUwN1JTZ3BRYVFxVS9rM0FjL20wTVpVdW5MUXQvTGt5bGVXVHU2?=
 =?utf-8?B?bEMyeU9WbzFzRjFwSzlFcXkxYWNMVkF1bDBxY1lTQXFQbEJ4SnhKM3FXWkRw?=
 =?utf-8?Q?1iG9q20DKI83U?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a973e416-3393-460c-0d21-08d97474e6b9
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 16:06:08.8039 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k8LOvPSxMsTYPBoRnPk/IJu3R4sDUMYMDCkj3VQ2Jxszukfpj6cS3dpejCAUOfznVXAkCgFSn9LJr9GiCRzyzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5002
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKRU5P
VFNVUCBpcyBhbiBhbGlhcyBvZiBFT1BOT1RTVVBQLiBIb3dldmVyLCBFT1BOT1RTVVBQIGlzIHBy
ZWZlcnJlZC4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxs
ZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIHwgMiArLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKaW5k
ZXggNDY0YTY3YTliNDFjLi4xM2NiMjJjZjQxZDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy93Zngvc3RhLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtNjczLDcgKzY3
Myw3IEBAIGludCB3ZnhfYW1wZHVfYWN0aW9uKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LAogCQly
ZXR1cm4gMDsKIAlkZWZhdWx0OgogCQkvLyBMZWF2ZSB0aGUgZmlybXdhcmUgZG9pbmcgaXRzIGJ1
c2luZXNzIGZvciB0eCBhZ2dyZWdhdGlvbgotCQlyZXR1cm4gLUVOT1RTVVBQOworCQlyZXR1cm4g
LUVPUE5PVFNVUFA7CiAJfQogfQogCi0tIAoyLjMzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
