Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395D4312B1B
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Feb 2021 08:30:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8B5748701A;
	Mon,  8 Feb 2021 07:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vhwyLIqFXops; Mon,  8 Feb 2021 07:30:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00E3786D82;
	Mon,  8 Feb 2021 07:30:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1440E1BF414
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 07:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 10B3A86FC7
 for <devel@linuxdriverproject.org>; Mon,  8 Feb 2021 07:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rcLpoa8299gH for <devel@linuxdriverproject.org>;
 Mon,  8 Feb 2021 07:30:11 +0000 (UTC)
X-Greylist: delayed 00:16:01 by SQLgrey-1.7.6
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
 (mail-vi1eur05on2115.outbound.protection.outlook.com [40.107.21.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 915C486D82
 for <devel@driverdev.osuosl.org>; Mon,  8 Feb 2021 07:30:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jgr2u/WAI2pZ/OuVigyR9A7xkvkrl9lD+sOEvaTClHURoOPjcJU5jP/5xEdum46uy6j1ho2zLVDELP6pXBsF12aujojQ2gQL7aN1ARrLTnh6LUw85QMW/WCQAEpNtRvBJxe9Ct2cXPdip3rlhzB4ETlUZC2B1kQuT9wbTXkhJB3LRO3lrt4Z140cZnZWf0/8JsqN6S9fFDg9AiHaCQGd9xJFMyULC+dheD0xHL4GeQhYDwVOZ9qM2nqdKSn6tuX5+IpXSHUiI8fyER6c9mDsTTGzcBZTfAxPYeSRrOCBKPXS+v0rwnZEIAVly6et+q9r41tqWLCyed0OmfCxS1cVOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KdpvFjZ8x30yDiuzNxG+/UMYwd+t3ep4aPclFGiYqac=;
 b=YuhdYwGWmvC8m+C/RjZods1pZAOBakX+oS6y9AC7tJ2mx4RjZ6GejEjG9eWPiFY8XaFFdnB6GaOAeJ+Bp3tsdLfjBcV/BWEUNrZqGHTcdmEcFQwPgni9eNe/Eox8SRd1JBvMyDML/pcDpw9QgC6qOqlLiNu+uLBjxgXqh71zRhfiN/tN/x+2mLACMoX6z8G6q5J6W5ZT2mfJZwqBHBxh8QYwM6hD9VzD+p6v2AEfID8smQob7vs+bCOkCSfB5H2IROvBMonoVJdKHFO8GYOx+dPmFMlxyGndaU8H0igwZFjKgvfUd9md5SQcJnqiu66GkAyX3Yixkkc/Kw/3aFnMgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nokia.com; dmarc=pass action=none header.from=nokia.com;
 dkim=pass header.d=nokia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
 s=selector1-nokia-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KdpvFjZ8x30yDiuzNxG+/UMYwd+t3ep4aPclFGiYqac=;
 b=N65PsLQ2YnXeeodANOY3vUVBIx2PZQ5qynjiFC8tv0LtIl2hm2SRw7XgekJ2jBkGHcNmBoLyHVpNd+Ozqvf7Iy5XAmL4Q9pq3c1VH0hHH3lNrgUI1ELRXxCxBP+iz43VPgVIa7M4R5hnJLWr25xbqbyusmAMelrd9YLxvhBUYqc=
Authentication-Results: alliedtelesis.co.nz; dkim=none (message not signed)
 header.d=none;alliedtelesis.co.nz; dmarc=none action=none
 header.from=nokia.com;
Received: from (2603:10a6:208:6e::15) by
 AM0PR0702MB3825.eurprd07.prod.outlook.com (2603:10a6:208:23::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.8; Mon, 8 Feb
 2021 07:14:06 +0000
Received: from AM0PR07MB4531.eurprd07.prod.outlook.com
 ([fe80::e965:2884:260b:b29a]) by AM0PR07MB4531.eurprd07.prod.outlook.com
 ([fe80::e965:2884:260b:b29a%3]) with mapi id 15.20.3846.023; Mon, 8 Feb 2021
 07:14:06 +0000
Subject: Re: [PATCH] staging: octeon: remove braces from single-line block
To: Phillip Potter <phil@philpotter.co.uk>, gregkh@linuxfoundation.org
References: <20210206201701.5273-1-phil@philpotter.co.uk>
From: Alexander Sverdlin <alexander.sverdlin@nokia.com>
Message-ID: <51bab7d2-2f37-b4de-71b5-47cfe8857f02@nokia.com>
Date: Mon, 8 Feb 2021 08:14:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
In-Reply-To: <20210206201701.5273-1-phil@philpotter.co.uk>
Content-Language: en-US
X-Originating-IP: [131.228.32.169]
X-ClientProxiedBy: AM9P191CA0005.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:20b:21c::10) To AM0PR07MB4531.eurprd07.prod.outlook.com
 (2603:10a6:208:6e::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from ulegcpsvhp1.emea.nsn-net.net (131.228.32.169) by
 AM9P191CA0005.EURP191.PROD.OUTLOOK.COM (2603:10a6:20b:21c::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3825.19 via Frontend Transport; Mon, 8 Feb 2021 07:14:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 1f52b2a0-4b30-410f-73d5-08d8cc011ed4
X-MS-TrafficTypeDiagnostic: AM0PR0702MB3825:
X-Microsoft-Antispam-PRVS: <AM0PR0702MB3825F19FA6B91013B56FBE13888F9@AM0PR0702MB3825.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MiIhaNGUIYdlQkvdMsa2RA1hVNtSYCuQcpkj9YbwWpxD82TOJbMf7oldJPm7hv06Hn5ImC8y7xDSzWRRQlriyyyCtao0SLSg44hNsYK3TraPIj4eLcf8/ZwGf4MW96v/a5QpZOApONlXQMwjgR83ikBCLp/w+tS8UJunGQDiTowR40nSZQraRNLbm4cxKe7StBZGH+QOE8u1IISFz8XYE9x+1hI1ZEm6WqiMMR8yE2TGHoUyihkgmRsQxvk82TlEMtI/lb8HpbTsfYscSOQO88T8ro1gQqbxiYX3Z9RRhaiu5dcYbBZqAMBeFaMNfQrAMgaCBrn4IcfkZJ3+bhAtDYjotHJwKt7ptyYZDNOj8SziaDDGl6U434hF3UDQGFsNvLDi5NIgz25V066GxFgPWAfJjYSOtEhng/sH2W8wh83bDT/1axEb00vGzL0IN6x18FzxXs3WcPH1zAqnkpr/RFBw5/Png1Nf8plhKlxfyF7K/wHAzpapqhdH3ml2BGmyBSuXsaRS5XBQ8L9ziA697KziBLlKNtmxk0ZA8jT8yoN6sbWUgwhkACNMuj8gEwGQtK0nnlXXbeS9aZSDd4JaBSRQttmAS6WxDm/xO5z7muA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR07MB4531.eurprd07.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(366004)(396003)(39860400002)(136003)(478600001)(6486002)(316002)(86362001)(8676002)(31696002)(8936002)(66476007)(83380400001)(5660300002)(66946007)(6512007)(36756003)(66556008)(2616005)(53546011)(44832011)(6506007)(2906002)(52116002)(16526019)(31686004)(26005)(4326008)(956004)(186003)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: =?utf-8?B?NUN3RjgxTU9tYkMrbHJUTFpXVlZxNjVDTFE0TU5qbEphWTlXaW50R3Uwb1l1?=
 =?utf-8?B?V2dyaXZ6Nm01UUlOYnVhYmpLQlFQSHU1L3BNQzJjbDd3eGJPNzFRMWxpUzBo?=
 =?utf-8?B?cTJ5OVBDMUdPQm90dXNRbXVCTUJtdlZVNlhXM0ZTcXRIRWUxNkF2WjBVUnF5?=
 =?utf-8?B?UVBocVkvNHBobHJvTlFDQm5ZNmMwaUgxTUYxTERIWXdyUWkyWENnZmdrR3hh?=
 =?utf-8?B?KzZiNnVUcHQ1bDFsQURuVloxTDhaUDNERllvOGdIYkdnVlJmdkhvVnNNK2dj?=
 =?utf-8?B?STlWQ3hrVkVPdXA3eFN5UHhsdGZOWHRZV3V3aGt2VXZRNVh4L3I1T2tNZ3Rw?=
 =?utf-8?B?SXFLeGFtdlNoWll0emh0dCt6dlFxK3A3bWM1ZkFVQUhNOVhVL2kvUXM2Qk5Z?=
 =?utf-8?B?L2djZEVGbXZ5dWJCaExxUlJ4eG0xaW1QWStXQ2xMcDAvZ0djQ1M0WXZnNmVo?=
 =?utf-8?B?K0pPdmNRK2FVQm1aQUprS0VRVGlNd3E5VzdqbytuNHNYWUR2Um5KMzVveGZE?=
 =?utf-8?B?R0FSbHd5V0dMVVlIY0I2RUxSMWpnZnRCcUtpNlRzaTFTYVdJNDU2UWY4OHFa?=
 =?utf-8?B?Q3A5MHBoRUVVQjdRQ0QvYTJFMHFMenU4T3hsWEw0TUV4NkdaQ2dsM25EaktL?=
 =?utf-8?B?c0NkY2lGcXFNcnF5ZHF5ZGZnSVZQelptM1RRcXppWVQrQ25JYWNLSWZPYUEz?=
 =?utf-8?B?U1hUd0VkNkdHUW9LcWJYS1RDOFFDa2NBdTNJYnBUNk5uOERzWWVWdWgzRENO?=
 =?utf-8?B?MnNFNWcweGxWKzV3WjVQeXFLZVV4cHE3emhtdTdRU3hORzhMWnBaUkdzcjRO?=
 =?utf-8?B?VE9tNmVSWDBxMk8yWTZrZy9uTEhBdXY0MTduREp3YVIxdFZEZzIrNXc3M0Vi?=
 =?utf-8?B?ZzRJWnIzNTU3MUlhMHFSOTVWcTQxUkdpYmpiaGc1UXFTV3ltWXlodVVjQ0RL?=
 =?utf-8?B?NDNTYTFJRnR1eENYYjgzWWFMdFlEcnRSK2lVVCtic1pRZHVEZitxYkgzSWZ2?=
 =?utf-8?B?NmNrU3pLUVBRWVJGSU5IY2ZjNkJqNjl0aFBNT0Fka1JwbEN5NDE5cFBHN3I3?=
 =?utf-8?B?V0UvRTVkeFVZRzlRSDlTU08xTTNnSjdnYWtqRGdaemw0Q2liQWdxNWl1d3BM?=
 =?utf-8?B?SGp5Qkk4RXJRbmJZZWlLVzV2UzNITGRxOU1kRVR6dkVGVWNNd2ZnT3ZEZ3V3?=
 =?utf-8?B?M0ZJT0tGRytYWW0zaWlqeURyU0s2UjExaFV0S2VDWDBuRXhTYTZ1SjYzUTdr?=
 =?utf-8?B?UERtckdpNmgva0V0RGZPTS82eHB3OUlGUGdSNysvWktZWG4yZTZpODBhc3Vp?=
 =?utf-8?B?YmpSVGtPclZIb0ZqL1F1Q0NsNVNpTkhXKy9NQUpsakdjdERpZUVDWmhNODBn?=
 =?utf-8?B?bGEzUjRHbHp2N0RoUm16VURDVGxvOHo5VDRHNHhUV1ZuNWRyOGk3RmNPcUpH?=
 =?utf-8?B?dFJ0Wlc5SXRzRnB6TGZaaTVKUUwvcFRYYXgyU3B5Rko0Q1BvcWR3YTVUUVht?=
 =?utf-8?B?RnR5N0JLSE5IektyUFFEQ2xDajdLTVBvMktDbzZqWCtER1RKMUhwRWZUU1Fj?=
 =?utf-8?B?TktmUnAyQmV0cStZdWQyZWpJbmgvM3B2L3JucE5BWkJuNlk0MkVPek5zL3dJ?=
 =?utf-8?B?K0NiZFlWRlRMWkFMLzIvNzNLVHgzbWFHQzdjY0lpYk5mVHBGTENSMnBSTDRD?=
 =?utf-8?B?SmFGdmpwclo1c0hTN0s5UnNMQytBT1IvRHNaWkx5blNKaWtsNTJ2QjdIVGZt?=
 =?utf-8?Q?RNWVPPruNFn3mfKn1KQKl9wQZDTVsqIagrNysm8?=
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f52b2a0-4b30-410f-73d5-08d8cc011ed4
X-MS-Exchange-CrossTenant-AuthSource: AM0PR07MB4531.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2021 07:14:06.1426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GCGr3TDdVoo3WDoTRdaDasWn1CxFItINyCSg8ag0otzhq0ukD9SL5nlCgo30m97SlLu+ihvrTOQkvTJn1FA0zbzxt71G/ku2ridaXpFjVHY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0702MB3825
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
Cc: devel@driverdev.osuosl.org, andrew@lunn.ch, f.fainelli@gmail.com,
 linux-kernel@vger.kernel.org, chris.packham@alliedtelesis.co.nz,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

On 06/02/2021 21:17, Phillip Potter wrote:
> This removes the braces from the if statement that checks the
> physical node return value in cvm_oct_phy_setup_device, as this
> block contains only one statement. Fixes a style warning.
> 
> Signed-off-by: Phillip Potter <phil@philpotter.co.uk>

Reviewed-by: Alexander Sverdlin <alexander.sverdlin@nokia.com>

> ---
>  drivers/staging/octeon/ethernet-mdio.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/octeon/ethernet-mdio.c b/drivers/staging/octeon/ethernet-mdio.c
> index 0bf545849b11..b0fd083a5bf2 100644
> --- a/drivers/staging/octeon/ethernet-mdio.c
> +++ b/drivers/staging/octeon/ethernet-mdio.c
> @@ -146,9 +146,8 @@ int cvm_oct_phy_setup_device(struct net_device *dev)
>  		goto no_phy;
>  
>  	phy_node = of_parse_phandle(priv->of_node, "phy-handle", 0);
> -	if (!phy_node && of_phy_is_fixed_link(priv->of_node)) {
> +	if (!phy_node && of_phy_is_fixed_link(priv->of_node))
>  		phy_node = of_node_get(priv->of_node);
> -	}
>  	if (!phy_node)
>  		goto no_phy;
>  

-- 
Best regards,
Alexander Sverdlin.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
