Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F462E1F50
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 17:13:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 487D085E1A;
	Wed, 23 Dec 2020 16:13:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o7CcvtMFnede; Wed, 23 Dec 2020 16:13:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FC4085E79;
	Wed, 23 Dec 2020 16:13:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D7541BF5DA
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 16:13:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63C9687367
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 16:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K-GAtG9W1Bcd for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 16:13:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2053.outbound.protection.outlook.com [40.107.94.53])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BAB3E87362
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 16:13:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d87Rh2Nu+kFW44bRGRXrov16iAkXR1EwOyLUDm/9ecXWPhTPR6M6VDQTeqI5tgClxakmrzQDL5IMSVqxgu6pfRrNINfI5M3RSWot8lJxT3DpA/ejZo/BpQMHdYXVTNgNJsoQqF8rvQffOJk5xnIa0RDtXJKYFP4UBO5gY0KoXMRzL1VLnztixCfnusIMMYhKSMCRk5Ds/ZCrgDweJN68zNy0kRV14zfEjk5o+HYTOU0MuiDws2op1p7FxgsfmO1TWcdY3duX7NPnMDdTR5Hj/S14npn0lcEwrQz1zNYrEGGPt/Hkd99dXbTD6uA+Sf6AoRpLoKD9O8TvN7MsnSN0tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vCqXGUxMRk5myw5s1WtOu8LLWAybc/TZwZqRQ4tRNxw=;
 b=W1XZYqKHhhErw50ay0YFvZ1t9nNW/ove2ZqQHDudwTPQfxpMRFAy13YaXQvU7ruwb9E8AaXsa/k7/LNWdJkcEKG1BroNBeTyK+POfCyOBxCq28z3KCl9P4l5vWL2ZSyPTfW33+wuz811ul7d00PdxqvIHaxiM2NtsEiGVGZbHQsXlzru7x9JQEq7GqlkulrkxBetFkxjqbrpc4rWH7/Q45e9L91U+eyG2XZ3QtscBjv118800PfvMiPhC1mRvATmQ6DxRM/1vIVwvG7ANzsbqJO+G86EK3Nb8VUYZr+gmA7jew3cVylADrGIXy2gLuKNhle9n/0gHHzMpHWakbnNDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vCqXGUxMRk5myw5s1WtOu8LLWAybc/TZwZqRQ4tRNxw=;
 b=MpkBXRHhlh31hosVrSjUw7hNhqu3lWPXko/ehhH5S5DEwpndJyMWFAIe5QNF/p+ZALXbUevlVuh7oaV74jPkoxqZUebrklX6ZE++yForSP6WWeX2W/72nr8q6oG5YkKYA9tV3AM6s3VOs+oTBE3e1sgfOm3W6khMOCY9EMICeAQ=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4543.namprd11.prod.outlook.com (2603:10b6:806:99::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.29; Wed, 23 Dec
 2020 15:40:01 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::a989:f850:6736:97ca]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::a989:f850:6736:97ca%5]) with mapi id 15.20.3700.026; Wed, 23 Dec 2020
 15:40:01 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH v4 08/24] wfx: add bus_sdio.c
Date: Wed, 23 Dec 2020 16:39:09 +0100
Message-Id: <20201223153925.73742-9-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201223153925.73742-1-Jerome.Pouiller@silabs.com>
References: <20201223153925.73742-1-Jerome.Pouiller@silabs.com>
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: SA0PR12CA0024.namprd12.prod.outlook.com
 (2603:10b6:806:6f::29) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (82.67.86.106) by
 SA0PR12CA0024.namprd12.prod.outlook.com (2603:10b6:806:6f::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3700.27 via Frontend Transport; Wed, 23 Dec 2020 15:39:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9df904fb-0f8f-43f4-676b-08d8a75902a2
X-MS-TrafficTypeDiagnostic: SA0PR11MB4543:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB4543C95D933D4C6ED82F5D1193DE0@SA0PR11MB4543.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CpwdmEeGfap17LTZMfQ1ebWgfO1y/emZlloC0Ys5NEc2K6sM2QtUl0CzHxyWw9dTcV3RHI6IMvOEROgxqusPDvxFsJvy7vOTqDxCb5ixjwxmaw6cDEhvY6hoOUFjoiUz4aLru/eW48q6w6WwBuvcDxNeaY0ZeHeISigKaMeEvHLMC0r2+iRyyR+fkemeV0ayy0Zo70dba6ssYxkhxGcZ8Szvksvz5sINDtzw2Hir0a+0nFhByY5cKmHw6fonOz8ZzWDWaSABGGtpql0cpUola8UCQDjSmnhI/OXp+8tcosrp7Vdm0Y1RqNPO+Van2gpUKw6wGAGxupBe1/67syiAMb5y39vrEavnGpU4iPHH50UxjLkdNkN02CmbMIt8w44ZpwrbpBlZNff1aG9FAW625Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(376002)(366004)(346002)(396003)(39850400004)(5660300002)(956004)(2616005)(66476007)(66556008)(86362001)(36756003)(107886003)(66574015)(66946007)(6486002)(4326008)(83380400001)(6666004)(8676002)(186003)(52116002)(16526019)(7416002)(478600001)(26005)(1076003)(316002)(7696005)(54906003)(8936002)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?MFNleUZoVEhJNXU5Tmp3WklhT0duZ0NJRktja2lhWStCdDBYc3lXMyt1czYr?=
 =?utf-8?B?cGs3VUdCZVVOMHcvWDBGKy93OVBYWE51R2RudGx2d092KzNqWmh1U1Q5a0Np?=
 =?utf-8?B?L0t6azF3K1hhSjU4cDd2cUxsRXdxZ09kaC82cVJEZXRqN0Y1RlB6VjFGNUp4?=
 =?utf-8?B?NkFLK08xM2tzYmtYOGdwbW5TeFdKcStBL2xvUnBMMG1jbWNCdDdDcW1TVng0?=
 =?utf-8?B?bGRKcmhkcktSRFlrcit4UjRlOHI0c1lzdTFWR2JjSW5nditacFlUSGRJdG40?=
 =?utf-8?B?V3crZFlkT0dHd0VMRWh2QlJZUWdBQ1lLalRYVlZjbDE0Rk1pRG9VTkxMQyth?=
 =?utf-8?B?THA1V3dyd001L0kvMFpyUUlLRXVMWnNvOFppVlF4S3lid3RIV3JGZTU5RTlw?=
 =?utf-8?B?VnJIUzVIRUwvejJjTDA2MXhFczlLVEVvQWR0MUFDQVUzTmo3STNqeUZHYkhQ?=
 =?utf-8?B?UW03K09QVUVWaHA5OFZxYnpaalowMHJDQzVJQXpnN3UrNHZUcXd2ODlQcG1r?=
 =?utf-8?B?OFR1d2NEVlFHN2JUZkxaL1F0aWVmMytGNlN0TUVQaG9VdHc4OXNFbnZ1L25q?=
 =?utf-8?B?aFg3TTgxbUV4a3NyMlovZFp0ODVCS012UnZKLzJRaDVOanVKOGxBTkkrZ3Nn?=
 =?utf-8?B?dlVpdmNTdmNBaURJbTBhODBXckE4TnB6aVFLNTM1OVRrb0VZMVpzcEtCV3lj?=
 =?utf-8?B?Wm5FWHdXd2N1eGxsdFFRU25FcDM0M0Z4S3poS0plOExIWm8vZ3VTc2FKZDdo?=
 =?utf-8?B?dzF2SXNtbDUrTmIzSjA1ODNraENURmQ1a3QwTVlKRm1TLzcvMW9XWHNIQ1dJ?=
 =?utf-8?B?N3hMTHg1M2IrU3RlMzlabDhSZG1WMXdkdU12RHNSSUJGRElEdmtXVnBDNU5U?=
 =?utf-8?B?d3FHajBubnptWDZKcU43eWlWYTNrRCtmQnlHYTB0SGxzd0VHZ08remtZbC9Z?=
 =?utf-8?B?dXhTNzNCaVR0V2JCcTVYcTlwcisvelVrd1Q4bmZDbW8zZllIRFA0RWFNbXlD?=
 =?utf-8?B?d2hhOGVyc0JDWU5PVUNoTmZCNHFsOGludnN0dGthVWppVGxPR2dKRFo5MEJt?=
 =?utf-8?B?cCttSlNlS0pMZHdGR0o2VzZ2a0ttLy9XSitsakdGUnpHNkU5UGFkUTk2R1R1?=
 =?utf-8?B?ci9hOGErL1dkdnZRYUVETndHZ09CL29zaFQxUjNwRGVYcGRFV0lSc0FmRkZt?=
 =?utf-8?B?WXlyMUYyRlJ5cE9HaGJ5WUFPbzA1dGVBWDZNR2FxcHNWOCtWemlBbFBwT2d4?=
 =?utf-8?B?dDlhOXJVU0dXSitrR1p3ZGpoYmpVeThUdzVuSzlHV0YxM0JpVFhRWTA2NnR6?=
 =?utf-8?Q?bkQbAI2w4/GAvMXGYEP+wBkRqOWSApssPj?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Dec 2020 15:40:01.0321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-Network-Message-Id: 9df904fb-0f8f-43f4-676b-08d8a75902a2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2qPJteYZDXaJ4cBROM0ojv5DXbyUTAdzjlh6qznNtdQcumQn8P8n1AFE1lidCAciJFduXWk99bGA26rpxlT/HQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4543
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
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8uYyB8IDI1OCAr
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyNTggaW5zZXJ0aW9ucygrKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3Nk
aW8uYwoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3Nk
aW8uYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8uYwpuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjJmNjQ4OGUzNmU4NgotLS0gL2Rldi9u
dWxsCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8uYwpAQCAt
MCwwICsxLDI1OCBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQor
LyoKKyAqIFNESU8gaW50ZXJmYWNlLgorICoKKyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDIwLCBT
aWxpY29uIExhYm9yYXRvcmllcywgSW5jLgorICogQ29weXJpZ2h0IChjKSAyMDEwLCBTVC1Fcmlj
c3NvbgorICovCisjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CisjaW5jbHVkZSA8bGludXgvbW1j
L3NkaW8uaD4KKyNpbmNsdWRlIDxsaW51eC9tbWMvc2Rpb19mdW5jLmg+CisjaW5jbHVkZSA8bGlu
dXgvbW1jL2NhcmQuaD4KKyNpbmNsdWRlIDxsaW51eC9pbnRlcnJ1cHQuaD4KKyNpbmNsdWRlIDxs
aW51eC9vZl9pcnEuaD4KKyNpbmNsdWRlIDxsaW51eC9pcnEuaD4KKworI2luY2x1ZGUgImJ1cy5o
IgorI2luY2x1ZGUgIndmeC5oIgorI2luY2x1ZGUgImh3aW8uaCIKKyNpbmNsdWRlICJtYWluLmgi
CisjaW5jbHVkZSAiYmguaCIKKworc3RhdGljIGNvbnN0IHN0cnVjdCB3ZnhfcGxhdGZvcm1fZGF0
YSB3Znhfc2Rpb19wZGF0YSA9IHsKKwkuZmlsZV9mdyA9ICJ3Zm1fd2YyMDAiLAorCS5maWxlX3Bk
cyA9ICJ3ZjIwMC5wZHMiLAorfTsKKworc3RydWN0IHdmeF9zZGlvX3ByaXYgeworCXN0cnVjdCBz
ZGlvX2Z1bmMgKmZ1bmM7CisJc3RydWN0IHdmeF9kZXYgKmNvcmU7CisJdTggYnVmX2lkX3R4Owor
CXU4IGJ1Zl9pZF9yeDsKKwlpbnQgb2ZfaXJxOworfTsKKworc3RhdGljIGludCB3Znhfc2Rpb19j
b3B5X2Zyb21faW8odm9pZCAqcHJpdiwgdW5zaWduZWQgaW50IHJlZ19pZCwKKwkJCQkgdm9pZCAq
ZHN0LCBzaXplX3QgY291bnQpCit7CisJc3RydWN0IHdmeF9zZGlvX3ByaXYgKmJ1cyA9IHByaXY7
CisJdW5zaWduZWQgaW50IHNkaW9fYWRkciA9IHJlZ19pZCA8PCAyOworCWludCByZXQ7CisKKwlX
QVJOKHJlZ19pZCA+IDcsICJjaGlwIG9ubHkgaGFzIDcgcmVnaXN0ZXJzIik7CisJV0FSTigoKHVp
bnRwdHJfdClkc3QpICYgMywgInVuYWxpZ25lZCBidWZmZXIgc2l6ZSIpOworCVdBUk4oY291bnQg
JiAzLCAidW5hbGlnbmVkIGJ1ZmZlciBhZGRyZXNzIik7CisKKwkvKiBVc2UgcXVldWUgbW9kZSBi
dWZmZXJzICovCisJaWYgKHJlZ19pZCA9PSBXRlhfUkVHX0lOX09VVF9RVUVVRSkKKwkJc2Rpb19h
ZGRyIHw9IChidXMtPmJ1Zl9pZF9yeCArIDEpIDw8IDc7CisJcmV0ID0gc2Rpb19tZW1jcHlfZnJv
bWlvKGJ1cy0+ZnVuYywgZHN0LCBzZGlvX2FkZHIsIGNvdW50KTsKKwlpZiAoIXJldCAmJiByZWdf
aWQgPT0gV0ZYX1JFR19JTl9PVVRfUVVFVUUpCisJCWJ1cy0+YnVmX2lkX3J4ID0gKGJ1cy0+YnVm
X2lkX3J4ICsgMSkgJSA0OworCisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIGludCB3Znhfc2Rp
b19jb3B5X3RvX2lvKHZvaWQgKnByaXYsIHVuc2lnbmVkIGludCByZWdfaWQsCisJCQkgICAgICAg
Y29uc3Qgdm9pZCAqc3JjLCBzaXplX3QgY291bnQpCit7CisJc3RydWN0IHdmeF9zZGlvX3ByaXYg
KmJ1cyA9IHByaXY7CisJdW5zaWduZWQgaW50IHNkaW9fYWRkciA9IHJlZ19pZCA8PCAyOworCWlu
dCByZXQ7CisKKwlXQVJOKHJlZ19pZCA+IDcsICJjaGlwIG9ubHkgaGFzIDcgcmVnaXN0ZXJzIik7
CisJV0FSTigoKHVpbnRwdHJfdClzcmMpICYgMywgInVuYWxpZ25lZCBidWZmZXIgc2l6ZSIpOwor
CVdBUk4oY291bnQgJiAzLCAidW5hbGlnbmVkIGJ1ZmZlciBhZGRyZXNzIik7CisKKwkvKiBVc2Ug
cXVldWUgbW9kZSBidWZmZXJzICovCisJaWYgKHJlZ19pZCA9PSBXRlhfUkVHX0lOX09VVF9RVUVV
RSkKKwkJc2Rpb19hZGRyIHw9IGJ1cy0+YnVmX2lkX3R4IDw8IDc7CisJLyogRklYTUU6IGRpc2Nh
cmRzICdjb25zdCcgcXVhbGlmaWVyIGZvciBzcmMgKi8KKwlyZXQgPSBzZGlvX21lbWNweV90b2lv
KGJ1cy0+ZnVuYywgc2Rpb19hZGRyLCAodm9pZCAqKXNyYywgY291bnQpOworCWlmICghcmV0ICYm
IHJlZ19pZCA9PSBXRlhfUkVHX0lOX09VVF9RVUVVRSkKKwkJYnVzLT5idWZfaWRfdHggPSAoYnVz
LT5idWZfaWRfdHggKyAxKSAlIDMyOworCisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIHZvaWQg
d2Z4X3NkaW9fbG9jayh2b2lkICpwcml2KQoreworCXN0cnVjdCB3Znhfc2Rpb19wcml2ICpidXMg
PSBwcml2OworCisJc2Rpb19jbGFpbV9ob3N0KGJ1cy0+ZnVuYyk7Cit9CisKK3N0YXRpYyB2b2lk
IHdmeF9zZGlvX3VubG9jayh2b2lkICpwcml2KQoreworCXN0cnVjdCB3Znhfc2Rpb19wcml2ICpi
dXMgPSBwcml2OworCisJc2Rpb19yZWxlYXNlX2hvc3QoYnVzLT5mdW5jKTsKK30KKworc3RhdGlj
IHZvaWQgd2Z4X3NkaW9faXJxX2hhbmRsZXIoc3RydWN0IHNkaW9fZnVuYyAqZnVuYykKK3sKKwlz
dHJ1Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzID0gc2Rpb19nZXRfZHJ2ZGF0YShmdW5jKTsKKworCXdm
eF9iaF9yZXF1ZXN0X3J4KGJ1cy0+Y29yZSk7Cit9CisKK3N0YXRpYyBpcnFyZXR1cm5fdCB3Znhf
c2Rpb19pcnFfaGFuZGxlcl9leHQoaW50IGlycSwgdm9pZCAqcHJpdikKK3sKKwlzdHJ1Y3Qgd2Z4
X3NkaW9fcHJpdiAqYnVzID0gcHJpdjsKKworCXNkaW9fY2xhaW1faG9zdChidXMtPmZ1bmMpOwor
CXdmeF9iaF9yZXF1ZXN0X3J4KGJ1cy0+Y29yZSk7CisJc2Rpb19yZWxlYXNlX2hvc3QoYnVzLT5m
dW5jKTsKKwlyZXR1cm4gSVJRX0hBTkRMRUQ7Cit9CisKK3N0YXRpYyBpbnQgd2Z4X3NkaW9faXJx
X3N1YnNjcmliZSh2b2lkICpwcml2KQoreworCXN0cnVjdCB3Znhfc2Rpb19wcml2ICpidXMgPSBw
cml2OworCXUzMiBmbGFnczsKKwlpbnQgcmV0OworCXU4IGNjY3I7CisKKwlpZiAoIWJ1cy0+b2Zf
aXJxKSB7CisJCXNkaW9fY2xhaW1faG9zdChidXMtPmZ1bmMpOworCQlyZXQgPSBzZGlvX2NsYWlt
X2lycShidXMtPmZ1bmMsIHdmeF9zZGlvX2lycV9oYW5kbGVyKTsKKwkJc2Rpb19yZWxlYXNlX2hv
c3QoYnVzLT5mdW5jKTsKKwkJcmV0dXJuIHJldDsKKwl9CisKKwlzZGlvX2NsYWltX2hvc3QoYnVz
LT5mdW5jKTsKKwljY2NyID0gc2Rpb19mMF9yZWFkYihidXMtPmZ1bmMsIFNESU9fQ0NDUl9JRU54
LCBOVUxMKTsKKwljY2NyIHw9IEJJVCgwKTsKKwljY2NyIHw9IEJJVChidXMtPmZ1bmMtPm51bSk7
CisJc2Rpb19mMF93cml0ZWIoYnVzLT5mdW5jLCBjY2NyLCBTRElPX0NDQ1JfSUVOeCwgTlVMTCk7
CisJc2Rpb19yZWxlYXNlX2hvc3QoYnVzLT5mdW5jKTsKKwlmbGFncyA9IGlycV9nZXRfdHJpZ2dl
cl90eXBlKGJ1cy0+b2ZfaXJxKTsKKwlpZiAoIWZsYWdzKQorCQlmbGFncyA9IElSUUZfVFJJR0dF
Ul9ISUdIOworCWZsYWdzIHw9IElSUUZfT05FU0hPVDsKKwlyZXR1cm4gZGV2bV9yZXF1ZXN0X3Ro
cmVhZGVkX2lycSgmYnVzLT5mdW5jLT5kZXYsIGJ1cy0+b2ZfaXJxLCBOVUxMLAorCQkJCQkgd2Z4
X3NkaW9faXJxX2hhbmRsZXJfZXh0LCBmbGFncywKKwkJCQkJICJ3ZngiLCBidXMpOworfQorCitz
dGF0aWMgaW50IHdmeF9zZGlvX2lycV91bnN1YnNjcmliZSh2b2lkICpwcml2KQoreworCXN0cnVj
dCB3Znhfc2Rpb19wcml2ICpidXMgPSBwcml2OworCWludCByZXQ7CisKKwlpZiAoYnVzLT5vZl9p
cnEpCisJCWRldm1fZnJlZV9pcnEoJmJ1cy0+ZnVuYy0+ZGV2LCBidXMtPm9mX2lycSwgYnVzKTsK
KwlzZGlvX2NsYWltX2hvc3QoYnVzLT5mdW5jKTsKKwlyZXQgPSBzZGlvX3JlbGVhc2VfaXJxKGJ1
cy0+ZnVuYyk7CisJc2Rpb19yZWxlYXNlX2hvc3QoYnVzLT5mdW5jKTsKKwlyZXR1cm4gcmV0Owor
fQorCitzdGF0aWMgc2l6ZV90IHdmeF9zZGlvX2FsaWduX3NpemUodm9pZCAqcHJpdiwgc2l6ZV90
IHNpemUpCit7CisJc3RydWN0IHdmeF9zZGlvX3ByaXYgKmJ1cyA9IHByaXY7CisKKwlyZXR1cm4g
c2Rpb19hbGlnbl9zaXplKGJ1cy0+ZnVuYywgc2l6ZSk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgaHdidXNfb3BzIHdmeF9zZGlvX2h3YnVzX29wcyA9IHsKKwkuY29weV9mcm9tX2lvID0gd2Z4
X3NkaW9fY29weV9mcm9tX2lvLAorCS5jb3B5X3RvX2lvID0gd2Z4X3NkaW9fY29weV90b19pbywK
KwkuaXJxX3N1YnNjcmliZSA9IHdmeF9zZGlvX2lycV9zdWJzY3JpYmUsCisJLmlycV91bnN1YnNj
cmliZSA9IHdmeF9zZGlvX2lycV91bnN1YnNjcmliZSwKKwkubG9jawkJCT0gd2Z4X3NkaW9fbG9j
aywKKwkudW5sb2NrCQkJPSB3Znhfc2Rpb191bmxvY2ssCisJLmFsaWduX3NpemUJCT0gd2Z4X3Nk
aW9fYWxpZ25fc2l6ZSwKK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHdm
eF9zZGlvX29mX21hdGNoW10gPSB7CisJeyAuY29tcGF0aWJsZSA9ICJzaWxhYnMsd2Z4LXNkaW8i
IH0sCisJeyAuY29tcGF0aWJsZSA9ICJzaWxhYnMsd2YyMDAiIH0sCisJeyB9LAorfTsKK01PRFVM
RV9ERVZJQ0VfVEFCTEUob2YsIHdmeF9zZGlvX29mX21hdGNoKTsKKworc3RhdGljIGludCB3Znhf
c2Rpb19wcm9iZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jLAorCQkJICBjb25zdCBzdHJ1Y3Qgc2Rp
b19kZXZpY2VfaWQgKmlkKQoreworCXN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAgPSBmdW5jLT5kZXYu
b2Zfbm9kZTsKKwlzdHJ1Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzOworCWludCByZXQ7CisKKwlpZiAo
ZnVuYy0+bnVtICE9IDEpIHsKKwkJZGV2X2VycigmZnVuYy0+ZGV2LCAiU0RJTyBmdW5jdGlvbiBu
dW1iZXIgaXMgJWQgd2hpbGUgaXQgc2hvdWxkIGFsd2F5cyBiZSAxICh1bnN1cHBvcnRlZCBjaGlw
PylcbiIsCisJCQlmdW5jLT5udW0pOworCQlyZXR1cm4gLUVOT0RFVjsKKwl9CisKKwlidXMgPSBk
ZXZtX2t6YWxsb2MoJmZ1bmMtPmRldiwgc2l6ZW9mKCpidXMpLCBHRlBfS0VSTkVMKTsKKwlpZiAo
IWJ1cykKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlpZiAoIW5wIHx8ICFvZl9tYXRjaF9ub2RlKHdm
eF9zZGlvX29mX21hdGNoLCBucCkpIHsKKwkJZGV2X3dhcm4oJmZ1bmMtPmRldiwgIm5vIGNvbXBh
dGlibGUgZGV2aWNlIGZvdW5kIGluIERUXG4iKTsKKwkJcmV0dXJuIC1FTk9ERVY7CisJfQorCisJ
YnVzLT5mdW5jID0gZnVuYzsKKwlidXMtPm9mX2lycSA9IGlycV9vZl9wYXJzZV9hbmRfbWFwKG5w
LCAwKTsKKwlzZGlvX3NldF9kcnZkYXRhKGZ1bmMsIGJ1cyk7CisJZnVuYy0+Y2FyZC0+cXVpcmtz
IHw9IE1NQ19RVUlSS19MRU5JRU5UX0ZOMCB8CisJCQkgICAgICBNTUNfUVVJUktfQkxLU1pfRk9S
X0JZVEVfTU9ERSB8CisJCQkgICAgICBNTUNfUVVJUktfQlJPS0VOX0JZVEVfTU9ERV81MTI7CisK
KwlzZGlvX2NsYWltX2hvc3QoZnVuYyk7CisJcmV0ID0gc2Rpb19lbmFibGVfZnVuYyhmdW5jKTsK
KwkvKiBCbG9jayBvZiA2NCBieXRlcyBpcyBtb3JlIGVmZmljaWVudCB0aGFuIDUxMkIgZm9yIGZy
YW1lIHNpemVzIDwgNGsgKi8KKwlzZGlvX3NldF9ibG9ja19zaXplKGZ1bmMsIDY0KTsKKwlzZGlv
X3JlbGVhc2VfaG9zdChmdW5jKTsKKwlpZiAocmV0KQorCQlnb3RvIGVycjA7CisKKwlidXMtPmNv
cmUgPSB3ZnhfaW5pdF9jb21tb24oJmZ1bmMtPmRldiwgJndmeF9zZGlvX3BkYXRhLAorCQkJCSAg
ICAmd2Z4X3NkaW9faHdidXNfb3BzLCBidXMpOworCWlmICghYnVzLT5jb3JlKSB7CisJCXJldCA9
IC1FSU87CisJCWdvdG8gZXJyMTsKKwl9CisKKwlyZXQgPSB3ZnhfcHJvYmUoYnVzLT5jb3JlKTsK
KwlpZiAocmV0KQorCQlnb3RvIGVycjE7CisKKwlyZXR1cm4gMDsKKworZXJyMToKKwlzZGlvX2Ns
YWltX2hvc3QoZnVuYyk7CisJc2Rpb19kaXNhYmxlX2Z1bmMoZnVuYyk7CisJc2Rpb19yZWxlYXNl
X2hvc3QoZnVuYyk7CitlcnIwOgorCXJldHVybiByZXQ7Cit9CisKK3N0YXRpYyB2b2lkIHdmeF9z
ZGlvX3JlbW92ZShzdHJ1Y3Qgc2Rpb19mdW5jICpmdW5jKQoreworCXN0cnVjdCB3Znhfc2Rpb19w
cml2ICpidXMgPSBzZGlvX2dldF9kcnZkYXRhKGZ1bmMpOworCisJd2Z4X3JlbGVhc2UoYnVzLT5j
b3JlKTsKKwlzZGlvX2NsYWltX2hvc3QoZnVuYyk7CisJc2Rpb19kaXNhYmxlX2Z1bmMoZnVuYyk7
CisJc2Rpb19yZWxlYXNlX2hvc3QoZnVuYyk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgc2Rp
b19kZXZpY2VfaWQgd2Z4X3NkaW9faWRzW10gPSB7CisJeyBTRElPX0RFVklDRShTRElPX1ZFTkRP
Ul9JRF9TSUxBQlMsIFNESU9fREVWSUNFX0lEX1NJTEFCU19XRjIwMCkgfSwKKwl7IH0sCit9Owor
TU9EVUxFX0RFVklDRV9UQUJMRShzZGlvLCB3Znhfc2Rpb19pZHMpOworCitzdHJ1Y3Qgc2Rpb19k
cml2ZXIgd2Z4X3NkaW9fZHJpdmVyID0geworCS5uYW1lID0gIndmeC1zZGlvIiwKKwkuaWRfdGFi
bGUgPSB3Znhfc2Rpb19pZHMsCisJLnByb2JlID0gd2Z4X3NkaW9fcHJvYmUsCisJLnJlbW92ZSA9
IHdmeF9zZGlvX3JlbW92ZSwKKwkuZHJ2ID0geworCQkub3duZXIgPSBUSElTX01PRFVMRSwKKwkJ
Lm9mX21hdGNoX3RhYmxlID0gd2Z4X3NkaW9fb2ZfbWF0Y2gsCisJfQorfTsKLS0gCjIuMjkuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
