Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFA140FB88
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Sep 2021 17:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EC2F361B97;
	Fri, 17 Sep 2021 15:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vVASbkcJsVxH; Fri, 17 Sep 2021 15:14:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AB9A60BC5;
	Fri, 17 Sep 2021 15:14:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B78B1BF36A
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 15:14:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8ABD34069B
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 15:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g3PKYVVOnPiC for <devel@linuxdriverproject.org>;
 Fri, 17 Sep 2021 15:14:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2074.outbound.protection.outlook.com [40.107.92.74])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC39F40699
 for <devel@driverdev.osuosl.org>; Fri, 17 Sep 2021 15:14:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T2I4ciS1SiPeOdodfa4OjcuF3NDg6e5RTPERBHd4k+RONOJcsHEVZnUaO19SJILzIKEgJi4R66khPowYyvwSGpCyd8/MnBrg7Q+ZlF8JR0tK0HXYtsrddsJzt33ZmUc5O2fAeV4DKLLXX+4ndKlI3abyNw7uM93/Cdo/TwlLSEBPDqXBsBtI1+pTaSwiEH/K1CM08QE1bKd/trATX5Cm4DM+nJE1Y+0gxlRK5Gmuq3nKABa6hQMaX3HYIV1CXBx2IMFak5WndyZ7p1TRDJ88qTHWS6qBYaAxtoSxw0wDM0KJZyTBIANZjIEakHRDeqM13IZlD2n/zw3gy+JumQp1wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=GNjCa2/lBKQ/1xBUi2Ezo8tCWK2S1z49PHV2SuZVb4o=;
 b=P9fE3UWECZspSOGCOYknBT50rP9rBqq/wCrjfenWoBySYnxlY2N9bZ3m5BWpr2gYqA8EiCbF4hp0OjhxeMAgePNI2zIH1J6InPHS17LLgv0g63sybOsHF75LdJWZRXW2yjrhAU3T+9UtE3aZyvjvgq5KTeyB6oFQhInxOWjyyGFvhK3FB2SuykX/xo7NFkkm/QDHaG82M1Eifo/0l86x6Itt/NZr2tTKuuIhnrEmjXVa7uBAqhNVzjUtJ4/Zks9jJ6BNkR9weyoMA14v6oWvlmZ5H7qyMCD2DD5RMgEDLyQfweFMhDTlJpV630zVrypm/EP+tGaQXYsuM+T3C43PAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNjCa2/lBKQ/1xBUi2Ezo8tCWK2S1z49PHV2SuZVb4o=;
 b=h6c4zFdSDd3kyhqcD7p1SC/yx8a5KvZI+iBXks32vs75Aa/IhBgp1dJmniS1sJFLy+KtqUosbW/mXpCsXaSeJT9WIztQlzfnoDI8yNSD8VIwkduf/TjVWOOiM8BU2b1ABEU5TqU296KGddu1cgxjq58mSmdL8WthJM31b69nJFQ=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4574.namprd11.prod.outlook.com (2603:10b6:806:71::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Fri, 17 Sep
 2021 15:14:26 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Fri, 17 Sep 2021
 15:14:26 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v6 03/24] wfx: add Makefile/Kconfig
Date: Fri, 17 Sep 2021 17:13:39 +0200
Message-Id: <20210917151401.2274772-4-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210917151401.2274772-1-Jerome.Pouiller@silabs.com>
References: <20210917151401.2274772-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SA9PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:806:20::34) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SA9PR03CA0029.namprd03.prod.outlook.com (2603:10b6:806:20::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 15:14:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 92f9551d-9b86-4adc-7761-08d979edd637
X-MS-TrafficTypeDiagnostic: SA0PR11MB4574:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB45746F692EF0206E56BBBDDE93DD9@SA0PR11MB4574.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mvD1JQiFZFsdMNncCLVf3V8AzTeaKCP/JfJFoiScLN66wJo8demKQJ55y0Z0dGQh/SyLLMU6tx2J1hczQVuX/Fsb/5Le2eQw/s6x+TwzGGCrgjDh8M2Rus8GdKTrWbzoiwoZFXZ2LwgMl2hd4C27WxCybM4zea2Uj+HFiHVctzrEZMO2/jaZSc1zJ6O7vqucoFj8r7HvP43sSm1rokt0OojHOWt2MOXJJbTSD5WzlS6Qxs4RqK2nkctB3M6eOm5TjG+EBCU1W6QsdbyDQaU47asJdjOGb9yLc5bbtYwOYOVjZC5Cy2b8RdCSy8dzFOfk9CODCQYYTI/dBTAiAyPm+iFGfBFf37gepu0RSUJ9FrNFwCMjy8USCTUIrW53hmmcUIv1bqM5CvPTaokB69i5422BdadhFXW8U1Cyzl9F2VHW2/chTz9jXxrspoe6ZB8rH0TMZLXv4pee1QoNrenNOpJJki3H4+OFp9iuXUvzo4JGyBCjW8/e7D+qxS0CU6m02m4eRLbzBRISqpaVXmuLnM/lk33SYSeQ9HKrAQDUmBOb8tv6VEnKT2y6D59mXAg0ico4zSiKbiFPOYdtVc1MFC9xBxOc7Qa0PY2nxBt5PjaJJzT1Kh6LZc5K/S/q3Z4Mp8tm+Hnkn4KFl2r21HP+vQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(39850400004)(396003)(366004)(52116002)(6666004)(38100700002)(8936002)(7696005)(478600001)(6486002)(186003)(7416002)(86362001)(5660300002)(54906003)(66556008)(66476007)(4326008)(1076003)(66946007)(2616005)(107886003)(6916009)(316002)(36756003)(8676002)(66574015)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MmxCeXhhRWVYZUI0NjdoZmhERFVyNUpWRFVxRlJrUEtnbUxVWHZJNnpDWkJr?=
 =?utf-8?B?WFF1bm1tNHQ5MkFiNEhuU25BVmF0azZxVVZIek1yVndxL1gxNEU0NnpKWHV4?=
 =?utf-8?B?bFM3Vjh2T2lpL01CS240ZkMzUGtJOUo4STh0UDR6djBNZThZR09lT1oxUGk1?=
 =?utf-8?B?VHdRcFVkMzNNWitialJvc1d1ME9qdFhNQS9vcTFvU1FvZTV5UjRyYlU1c09D?=
 =?utf-8?B?eGpJRjlJV253d0JoSVFod1VzS0t3TXJaL1pIT0FMQmhtZk5xNDlJMGptZW5B?=
 =?utf-8?B?Y3NmZXhhaUREYnNsNG9CVzFBY2JHcnpQYWI0eW5vS25zclJmR002cTZ5OFN4?=
 =?utf-8?B?bU9UUU1naG1Ddm5lcVpUSEc4TklhK0lER1N6MGtxYXp6cWFRVTdGNDVvVk5o?=
 =?utf-8?B?SVIvb0lLS3FFeFcyT3VscDl6RE1nOUg3YW00MUlBZURUTW1adDEvMUR1SlB0?=
 =?utf-8?B?Mkx2ek55YXJUUDhQcDZ3MCtQQnZyRlNGbTkvMlhIZGVQUE1qZVNnc04xL29m?=
 =?utf-8?B?QWN1em1tV3VYNm92UW4vT2VaNUJFdEVpNXVteE9IZUF2bnN0aisyWTBPTkRq?=
 =?utf-8?B?UFl6RmFQeXFOcHdSenpuZm1xZUZxeTMrSVROemVWM1NLTm9KWjVBQjg3S2lT?=
 =?utf-8?B?VXpTUzNNRTFReWNLeEhlVWNiSlNRZnVvTWNZNmFqRTZCNTJWSk1PdGFaUUdO?=
 =?utf-8?B?Y2dlTmtzRm9xWlA5TzlyRGZ0TTd2ekFXeEp3Q25jSTg1VmFlaWhBZCtUSDFX?=
 =?utf-8?B?UjdwRkV3QXQ5R20rZ2N5ckVNaGhreFhrTU9LOXJ3ckR5bEZVQk54WWMwUzFq?=
 =?utf-8?B?MHBLUlozbDJPVmRNRjJkeGwwNitsQWxGYkc3blJYbzZLeVNwOWw3eVlGdWF1?=
 =?utf-8?B?YkZac3Mxc0NIN2N2SlluT1d5VUFLRXlJOHJ3WWt5azN1LzdaSHgxM0RMNGkx?=
 =?utf-8?B?VnZ5bi9CN1ppU0hHMlhuTGdPUEtxRmM5MnFtdExxZFl3Q1N1OXFRNVFiaHpM?=
 =?utf-8?B?VFhnS0xHaVYzMFlBaXNIVWNRMGpwczZzbVduYlFBZTcrSjEzck9xN21lc2hD?=
 =?utf-8?B?N2hoMERWQ1hsWmlybUkrdzhTajhKYmJncmdYbjVJQW5wbFAvdEQ2VlU5TmVi?=
 =?utf-8?B?dngxOGpxSmtncGE4R0xkV1NVOFg5SHVvNXpSWGhLOEgyMWc1TmtoZHhoSkZm?=
 =?utf-8?B?RGpHVnlmdEJGNVVvbVpJRnluK1R1T0VIVS9aZlFhSmpxK0ZLbkZLQ3p2bjMy?=
 =?utf-8?B?SGg4NG10NmtWUFplK1lQUXJLeE9CY2pXZ2U0dzJRMXVaRndOVTVaN2ZDYnRI?=
 =?utf-8?B?U2dHMGJ0cHFmN3IzMjNRb2R2eDRTK3FSQ01ONUZGbFdhS005T2NDZVp0VGJR?=
 =?utf-8?B?ZUVaWWhuOUFqZ2NXOHc5d1BkUm01NldLc3pvZlBUVGtvWmJMQURoL0NQb0lq?=
 =?utf-8?B?OTZXaksveVFLNEVZMW9WNndJcFpoQllxMzhNMjN5MEhGTDRtTU5odVp2NTU0?=
 =?utf-8?B?RHIydWJQZHFVWlQya1c0M3gzbkhmV3M0U2NYanRlY3ZEQnBudW5MQjBqQ2ln?=
 =?utf-8?B?NTFCSmovb2s3M2tUZzlmdWEwSUFsVzBvS2pxclptK0sxVzNMVUdQelIyak1n?=
 =?utf-8?B?cWxBYVpwbVZLZXUrZ3NISlZ1WnYyRHRFN2ROY1hrUnBsN1pFZmNreFJ4VnYy?=
 =?utf-8?B?OGJMMW9tdG4vbWtGVWh4K0FoWnk1VnNxV3c5cUpvRU1YSVM3ZEV4allSM1Rr?=
 =?utf-8?B?L2RQRnI0S1E0dkhSVjI1aCtBZzNQNUl1dG02UTMxdkJPTnBLdGIyTjhEanp6?=
 =?utf-8?B?ZU5jZ2hYVFQ3d2xMeXRkM1E0REUvMnpQK1lMRUZGdnljTWVKUkRKZmN1Rnl3?=
 =?utf-8?Q?+o2F0tbNJt5St?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 92f9551d-9b86-4adc-7761-08d979edd637
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 15:14:25.9903 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vpeGb1GvhG9afMVqwVHTc8SQnrvYChf9vBrtcYbH1HQb4P8zcJJTmfjM9vmQKUAmFcw6ZIkyBjamS1qgA4gc0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4574
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
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvS2NvbmZpZyAgfCAxMiArKysr
KysrKysrKwogZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9NYWtlZmlsZSB8IDI2ICsr
KysrKysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCsp
CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9LY29u
ZmlnCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9N
YWtlZmlsZQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvS2Nv
bmZpZyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvS2NvbmZpZwpuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjNiZTRiMWU3MzVlMQotLS0gL2Rldi9udWxs
CisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvS2NvbmZpZwpAQCAtMCwwICsx
LDEyIEBACitjb25maWcgV0ZYCisJdHJpc3RhdGUgIlNpbGljb24gTGFicyB3aXJlbGVzcyBjaGlw
cyBXRjIwMCBhbmQgZnVydGhlciIKKwlkZXBlbmRzIG9uIE1BQzgwMjExCisJZGVwZW5kcyBvbiBN
TUMgfHwgIU1NQyAjIGRvIG5vdCBhbGxvdyBXRlg9eSBpZiBNTUM9bQorCWRlcGVuZHMgb24gKFNQ
SSB8fCBNTUMpCisJaGVscAorCSAgVGhpcyBpcyBhIGRyaXZlciBmb3IgU2lsaWNvbnMgTGFicyBX
Rnh4eCBzZXJpZXMgKFdGMjAwIGFuZCBmdXJ0aGVyKQorCSAgY2hpcHNldHMuIFRoaXMgY2hpcCBj
YW4gYmUgZm91bmQgb24gU1BJIG9yIFNESU8gYnVzZXMuCisKKwkgIFNpbGFicyBkb2VzIG5vdCB1
c2UgYSByZWxpYWJsZSBTRElPIHZlbmRvciBJRC4gU28sIHRvIGF2b2lkIGNvbmZsaWN0cywKKwkg
IHRoZSBkcml2ZXIgd29uJ3QgcHJvYmUgdGhlIGRldmljZSBpZiBpdCBpcyBub3QgYWxzbyBkZWNs
YXJlZCBpbiB0aGUKKwkgIERldmljZSBUcmVlLgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2ly
ZWxlc3Mvc2lsYWJzL3dmeC9NYWtlZmlsZSBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93
ZngvTWFrZWZpbGUKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5mMzk5
OTYyYzg2MTkKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMv
d2Z4L01ha2VmaWxlCkBAIC0wLDAgKzEsMjYgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAKKworIyBOZWNlc3NhcnkgZm9yIENSRUFURV9UUkFDRV9QT0lOVFMKK0NGTEFHU19k
ZWJ1Zy5vID0gLUkkKHNyYykKKword2Z4LXkgOj0gXAorCWJoLm8gXAorCWh3aW8ubyBcCisJZndp
by5vIFwKKwloaWZfdHhfbWliLm8gXAorCWhpZl90eC5vIFwKKwloaWZfcngubyBcCisJcXVldWUu
byBcCisJZGF0YV90eC5vIFwKKwlkYXRhX3J4Lm8gXAorCXNjYW4ubyBcCisJc3RhLm8gXAorCWtl
eS5vIFwKKwltYWluLm8gXAorCXN0YS5vIFwKKwlkZWJ1Zy5vCit3ZngtJChDT05GSUdfU1BJKSAr
PSBidXNfc3BpLm8KKyMgV2hlbiBDT05GSUdfTU1DID09IG0sIGFwcGVuZCB0byAnd2Z4LXknIChh
bmQgbm90IHRvICd3ZngtbScpCit3ZngtJChzdWJzdCBtLHksJChDT05GSUdfTU1DKSkgKz0gYnVz
X3NkaW8ubworCitvYmotJChDT05GSUdfV0ZYKSArPSB3ZngubwotLSAKMi4zMy4wCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxp
c3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJp
dmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
