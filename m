Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B97F54C436C
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Feb 2022 12:24:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1932140246;
	Fri, 25 Feb 2022 11:24:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2CXXvn27GZ5B; Fri, 25 Feb 2022 11:24:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BF8F0416B4;
	Fri, 25 Feb 2022 11:24:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AECEA1BF34C
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 11:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1C8B40004
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 11:24:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MwuKY6vMqTMz for <devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 11:24:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam08on2083.outbound.protection.outlook.com [40.107.100.83])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C566E4011B
 for <devel@driverdev.osuosl.org>; Fri, 25 Feb 2022 11:24:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BloQQEUvdjbSvBAdK05vBZRjwgmFqdGh9jeswrv4uuEFqBcQy2frNt+mcAWYVa1rYw80NaXuBFE36cDb5l09jtnUyKlm3cBknFoC5j0CRfdBzO2FijtU/yWszijawNtmDde4OeLsLHDhj9frU+WQU13lr7iaBdFiutuWgDvqYAjkSGINbUeJeLkJY5MFMybEFxxmk87srm/GHH+mi4j4yPTZYk+Dn9UNvDxj7svoGqSvmNMSBAk8LN0Ldp7yByeb7Z2qjQEbhem2oquKf706jqBaSSlmZgzd9UbkdvQo/lEY9tpPSpP7PHkBrCU+jznCV5tOsHj8lkfE09pGg7IJCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aw5J+x9WmNrQK85UXgLKbBaVcp0mTbgxGqM4PrVtJbQ=;
 b=DIfRPF3HbbBWnmKwuqAMG6DmKaUg1tUVEA0DWb43nqEyCNWU+b6FVCJwzyoRhrjY60PnTg/oG9Q4FgfE4BnzMHeLPpAxx265/o8lYACa+D/wqSGCW9gWqRc8sA6aUO1a19XTRDqL3ON6W2bkKtlVxKOWrGfPrZfM0ZCMlXXWgEEVIkeKseu7igODOzjGmh0ZON4VUHIXDzWA3RWiA0RgDycCBvtin+CemLyI5N6zihkAcH4dxeoy0cGgRD2fKWxj/3JUSUvPM+USn/hzXjKkm3sQaBdqVWXmdCFxMWD2DYK9DDlwBfFUTwDR72Fy7dxR40Gg275LTcb2kyxEGplyFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aw5J+x9WmNrQK85UXgLKbBaVcp0mTbgxGqM4PrVtJbQ=;
 b=Tvo2lB6BXDwL0Wll+2JmDPIM5mmX5qCCaVuxh0T+OoVe2YXEQvHkuYjcoOwgs2Gn+dmFq+aVkB0nzIrw2tpQI2Y4U9KqeIhJOre5el/hFLclW7ctCOvCxmKTQzdhEWrZ4T47bTvEhCWx35SZvIjljCrHIYyHhzWCDZyP+NWZXYA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by DM6PR11MB4362.namprd11.prod.outlook.com (2603:10b6:5:1dd::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.22; Fri, 25 Feb
 2022 11:24:41 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::dd2e:8a4e:fc77:1e66]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::dd2e:8a4e:fc77:1e66%5]) with mapi id 15.20.5017.023; Fri, 25 Feb 2022
 11:24:41 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	Kalle Valo <kvalo@kernel.org>
Subject: [PATCH 02/10] staging: wfx: fix struct alignment
Date: Fri, 25 Feb 2022 12:23:57 +0100
Message-Id: <20220225112405.355599-3-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220225112405.355599-1-Jerome.Pouiller@silabs.com>
References: <20220225112405.355599-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR3P189CA0052.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:53::27) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a9933a11-877b-407a-54e8-08d9f85168f7
X-MS-TrafficTypeDiagnostic: DM6PR11MB4362:EE_
X-Microsoft-Antispam-PRVS: <DM6PR11MB436215992D3FDFB56B8B9895933E9@DM6PR11MB4362.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9mc2nP4yoyxUqk0RHwN88RLkwOrSmYRx7SRgpGo+xuu8wwHuki/qHiE7KNxyHSXd0guGC4h+jbBtlS6CsdT6e/vpWAEHzOY9b2IuQUKYcStmmCjunU6vwdRvHTJdscOVHuXqbkuNFYvTpm0Yd/e7bvD6g+gJ4gs20RyBZmvSAxp8aC146jF5B4fPLHr36IzcowDsVShMfzYUo9A2JuYMKX0jmc4iMVSLpQRPNyJQ3n3wHNRb12egmbdjau/g4Ar+PlP0vhD9rFQgQyHip7/FJ2TF69uh7ziGPeP1Ps+SKNuFggltiAGteZJS94gjlUlGxcda9e3IyMq7wdqPImGfckanvKw7NkyVhp+LLZaYZx19rHd41UWinTRC1LyDy1N+oGDLisb7DHE0vybGn3um5X8+BTuQmf4zrUbOSAy7sFg6Sn/qrZPWdxMVKBVo4RIzKJsnRuZXOZmD3KuxRF88rpXdRWDcT5wMjVh+10vpPCQujifZUwrojcYCxKBjL852SQr4TdeVrXjRFEULnMOyvscSa5+Dw7KvlPC4ifV7OE/tCtXa/Q7vUQOhPdQBN9nRA51ldBvZj7XvcN8oMaF1vlASlor8Zaq8fyLFnUA1skTPaU8Kj+GWZPz60cI/qqhAVXDBwYUfyJYGbQO8OWTYgCR/Ek/YoqBJs+J1qt7aaAUqM0hCA5ve2pE4g4ja3OEdrlmVBBfdhKF7rdATW8bn3fVItk03CIJUQf11KQamij6cLmBo3fJ4agELtiNEqIbh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6512007)(6506007)(1076003)(66946007)(52116002)(8676002)(2616005)(26005)(66476007)(5660300002)(66556008)(508600001)(2906002)(83380400001)(54906003)(38100700002)(4326008)(86362001)(6486002)(8936002)(186003)(6666004)(107886003)(36756003)(316002)(38350700002)(6916009);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RWtiRkU5TnppZkdqNmFMQzUyNGNQQlZqT0xHZUxsSUFrYzB2SVVmaStSckhx?=
 =?utf-8?B?Uzc2MnJQREpNZ2FrYVNGR1Nqc1J1MUVxazliQnFQUDBhMTlYME9kY2g5Yjlw?=
 =?utf-8?B?d28yd0Q0VkR3QktWbi9rKzFLTWUrOW16WlQ2MUgvdjRYYW1rTE9ya2prdWFm?=
 =?utf-8?B?Vm5DZ0lPM2dCcGtTc0ZuWVMrWkpxZEs4YW9NSVcyeDAyMkdwUFRCTlVsMFZL?=
 =?utf-8?B?V2N5ZGpPODNmdUlaRmR0MmJMMUpzWkxkaTRKTHkvTXdRVWRMWFV5R2tzZmlM?=
 =?utf-8?B?aG1oZWhlbnRWOXFJUEdDYk1xVG14NWhYVXZVZEVFTWt6NFNBK1MvbUJvK3kw?=
 =?utf-8?B?dDJ4b1JFSjhUZTZ4QWV6MDZoQTQxdnR3SWNlSHNGWU45YWRyWUFjRnZiQW4y?=
 =?utf-8?B?dnA5cnIvekI5anRLY3BzS1RpWDJ6NHVqK1AvOUFtbzVkSGZPSGtObU8wa3JT?=
 =?utf-8?B?YUpYd1pZMXBGa1dkYUl3bXJqSUY0d0xFVDIwbnRtY0wwMlVaeGxZRHBBWUx0?=
 =?utf-8?B?ZTFERWxLeHZYdVRSc05QRUNXSHBXYzJZSW1Fa0MrbWR2anlkTTY0YUxrd1pl?=
 =?utf-8?B?YklySElHNGJkNW1DVTRneGwrL1ptNGdNTUR1VjBOVnQ5cXVOTDBCdFRTT2kr?=
 =?utf-8?B?SUNjUGsrcVQyQzJQamM4Q1hNcVVITGNYckp4RmVjNlhKVmE1eHgybk82RTZw?=
 =?utf-8?B?QTd0c2llbC9xZEZNaUFTcU9vVnUzSGpmcDRvQVI1UnMxOWU0SFhielFnWFNS?=
 =?utf-8?B?aU9lRXhpdTdZL3o5RnZpNzFBaCtKK0NIU3BNQ0RraXFKdFNYa3hJYi8xOVdy?=
 =?utf-8?B?dHdlK0cwWnV4cmZHL09FUWhIRG9lWjBKWDJOZmpGOEJvb3E2enM1ZkJHRnhj?=
 =?utf-8?B?dmdDQ2libjhWV3RoSUl6WDZIdURBQ0hQTlAzYUR6NVNkRnVFS1daeTRMa251?=
 =?utf-8?B?anZmRVFmQzVCLzdWdXdSV09WV3duak9SdytXWVE4SXBuRUI2OUlJSEVUaXFn?=
 =?utf-8?B?NkRSaXZQYnYzVzg0WHZxNjkyTkc0OTRmZVNGa05qOFJOOHJHOGlZVlNoRlU4?=
 =?utf-8?B?aWJ6SXNlZHlkd1RRaENPYW14SEcrWFZ0OGJ1WmVmc29MSy9hU0hGZkdUdnJm?=
 =?utf-8?B?bjU1T3lyT2xSUkxVRlM1TzVSTTA2dzIxdEhSb2ltbkFzQkFwUGZFOFArak90?=
 =?utf-8?B?bUppL2xKK0F3a1hBV01WeXVPbWdsb3B1V2JnUTZpTDFqeitvU2dKeWJaM2Nn?=
 =?utf-8?B?bFZuaERTb3FDMVQ3ekJJZ0NkbzNxR2Q2UzFNNzdZaVoyU25Bbzk5MEhWMUlt?=
 =?utf-8?B?NGNjR2tBMGNYV2prM1VRdXhhdVhNQlBMdDBqMWxFeHJTUXdoUFE4dU9vTnNu?=
 =?utf-8?B?ZEFLNmlxMXprNGUyc3ZSckhBWlVld3l5QmJJRDBWdG1jUXU4bWxpeXYyUi9Q?=
 =?utf-8?B?SUxGYUd6RFkrdEdGaWtjZm5GVlhVNUx2UlJQTld4dDdaQVFHRS9oUUtheVpp?=
 =?utf-8?B?S2JFaGxUd0JDL085TE9hZytnUTcyYzNxa2NPbld2dk9vWENNQ1d2bnBVU1gy?=
 =?utf-8?B?aHBWZzBocjExa3RPZFBta1VSZ2tudTdlMlczby9IQkNEYkpEMTNaQzJqdUg1?=
 =?utf-8?B?NzVoWFdmd3ZKbFZVaWxkZkZsL0VKN2M0di9BWHlvVXRzRStGMVlpclNtVWtX?=
 =?utf-8?B?aHVlbERRamtaZXdQcTU4QU5mdWJjdTI3NmhCYlg1SG9tb2pTeWtibTZ3eWps?=
 =?utf-8?B?a0tnV0hkNG85NVc1bmYzK0kwZGhqRHNTRE1TZ2lPQ096NGFmUGFCejJ6aERD?=
 =?utf-8?B?TWJCa2FPbzladVlNRm9hYzRxTDI3WTNsN2gxejhUNU9zSTVFRmsvMHl4Vzl1?=
 =?utf-8?B?aElyZW9iUXRoREk5bGFObTFyQjFxcUo1OWNSMzdGTjdxUnR4QlZGMTZ3L0Rq?=
 =?utf-8?B?dWdtYXNwbVJyNXNoNThIeHlwZXIwZkF4aWxraTNBVmJCbFk2WGc2OEtjMlZq?=
 =?utf-8?B?WUdIUkwvY1FKTlFJSlVVWHRocGcrMUVMbWZUclN3OWVMcjh0SVMxQ21BV1pa?=
 =?utf-8?B?WVI1Q25GclJIMFlBN01uOHluQ1NBUW1xN1JobTZpT0E3NDQveEF0bWxwZndp?=
 =?utf-8?B?aHRTVURsWThWY2tUY01WVEdhc0ZuZkxpTUxjZkh5V1hyWERnL0YvcllzNlpW?=
 =?utf-8?Q?DXHU8I4aX2HkrabzEv20FLM=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a9933a11-877b-407a-54e8-08d9f85168f7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 11:24:38.7964 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jpG/cEnxn0km1ldQADCooeStKrLyRvpWxkh5h4ospj5PzvkGOlVdw9L6L9+KA794Htnx+gwonODlrSHFztG7Kw==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
cmUgaXMgbm8gcmVhc29uIHRvIGFkZCBtdWx0aXBsZSBzcGFjZXMgYmV0d2VlbiBhIHZhcmlhYmxl
IG5hbWUgYW5kCml0cyB0eXBlLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGpl
cm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3Nw
aS5jIHwgMjggKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0
IGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy93ZngvYnVzX3NwaS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9idXNfc3BpLmMKaW5kZXgg
MDYyODI2YWE3ZTZjLi5hMGE5OGMwNzRjYjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93
ZngvYnVzX3NwaS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NwaS5jCkBAIC02NSwx
NCArNjUsMTQgQEAgc3RhdGljIGludCB3Znhfc3BpX2NvcHlfZnJvbV9pbyh2b2lkICpwcml2LCB1
bnNpZ25lZCBpbnQgYWRkciwgdm9pZCAqZHN0LCBzaXplX3QKIHsKIAlzdHJ1Y3Qgd2Z4X3NwaV9w
cml2ICpidXMgPSBwcml2OwogCXUxNiByZWdhZGRyID0gKGFkZHIgPDwgMTIpIHwgKGNvdW50IC8g
MikgfCBTRVRfUkVBRDsKLQlzdHJ1Y3Qgc3BpX21lc3NhZ2UgICAgICBtOwotCXN0cnVjdCBzcGlf
dHJhbnNmZXIgICAgIHRfYWRkciA9IHsKLQkJLnR4X2J1ZiAgICAgICAgID0gJnJlZ2FkZHIsCi0J
CS5sZW4gICAgICAgICAgICA9IHNpemVvZihyZWdhZGRyKSwKKwlzdHJ1Y3Qgc3BpX21lc3NhZ2Ug
bTsKKwlzdHJ1Y3Qgc3BpX3RyYW5zZmVyIHRfYWRkciA9IHsKKwkJLnR4X2J1ZiA9ICZyZWdhZGRy
LAorCQkubGVuID0gc2l6ZW9mKHJlZ2FkZHIpLAogCX07Ci0Jc3RydWN0IHNwaV90cmFuc2ZlciAg
ICAgdF9tc2cgPSB7Ci0JCS5yeF9idWYgICAgICAgICA9IGRzdCwKLQkJLmxlbiAgICAgICAgICAg
ID0gY291bnQsCisJc3RydWN0IHNwaV90cmFuc2ZlciB0X21zZyA9IHsKKwkJLnJ4X2J1ZiA9IGRz
dCwKKwkJLmxlbiA9IGNvdW50LAogCX07CiAJdTE2ICpkc3QxNiA9IGRzdDsKIAlpbnQgcmV0LCBp
OwpAQCAtMTAxLDE0ICsxMDEsMTQgQEAgc3RhdGljIGludCB3Znhfc3BpX2NvcHlfdG9faW8odm9p
ZCAqcHJpdiwgdW5zaWduZWQgaW50IGFkZHIsIGNvbnN0IHZvaWQgKnNyYywgc2kKIAkvKiBGSVhN
RTogdXNlIGEgYm91bmNlIGJ1ZmZlciAqLwogCXUxNiAqc3JjMTYgPSAodm9pZCAqKXNyYzsKIAlp
bnQgcmV0LCBpOwotCXN0cnVjdCBzcGlfbWVzc2FnZSAgICAgIG07Ci0Jc3RydWN0IHNwaV90cmFu
c2ZlciAgICAgdF9hZGRyID0gewotCQkudHhfYnVmICAgICAgICAgPSAmcmVnYWRkciwKLQkJLmxl
biAgICAgICAgICAgID0gc2l6ZW9mKHJlZ2FkZHIpLAorCXN0cnVjdCBzcGlfbWVzc2FnZSBtOwor
CXN0cnVjdCBzcGlfdHJhbnNmZXIgdF9hZGRyID0geworCQkudHhfYnVmID0gJnJlZ2FkZHIsCisJ
CS5sZW4gPSBzaXplb2YocmVnYWRkciksCiAJfTsKLQlzdHJ1Y3Qgc3BpX3RyYW5zZmVyICAgICB0
X21zZyA9IHsKLQkJLnR4X2J1ZiAgICAgICAgID0gc3JjLAotCQkubGVuICAgICAgICAgICAgPSBj
b3VudCwKKwlzdHJ1Y3Qgc3BpX3RyYW5zZmVyIHRfbXNnID0geworCQkudHhfYnVmID0gc3JjLAor
CQkubGVuID0gY291bnQsCiAJfTsKIAogCVdBUk4oY291bnQgJSAyLCAiYnVmZmVyIHNpemUgbXVz
dCBiZSBhIG11bHRpcGxlIG9mIDIiKTsKLS0gCjIuMzQuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
