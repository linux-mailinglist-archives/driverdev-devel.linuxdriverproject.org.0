Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F274229B4
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 15:58:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DD7CA40791;
	Tue,  5 Oct 2021 13:58:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4i7gaRzW-5os; Tue,  5 Oct 2021 13:58:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A36640784;
	Tue,  5 Oct 2021 13:58:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 77C2E1BF2A5
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 13:55:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 66FBA83CDA
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 13:55:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xzAqvieUkxZF for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 13:55:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2068.outbound.protection.outlook.com [40.107.220.68])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 054DE832D1
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 13:55:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PapsQTY561WEZFoyoHttHeDrIjQIoSPWNenE37tZfXqkuHiNjbmuj/hm7M1k9cWbYBgRhIfJdSzrEkNsBevBtpFYJl5kdPsoTXtWK/oUZAOO550Qw4P/mLvvMDOzkdhPMBb6ERcRPjDwn17hoX/LmyDmhMFavPiGVfzFHADQLJL0CYQE41eBd59zWNBFosSod53fgrQAis3jRicS4W42NAw2OkCQiWUXt83lD+INC/VC2jxG/AVqZHg2YZoCUCApdN+khLvdifIk5DRY2cWmEC4g3d4ktPFVolWxmV6cFN2LgRCsCzkaw0pzcAHM5A0vTKQkIa9xTOCKQ0zinlraMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xOQtjd36c/4r4LXer/oam/xk8YpZ41WAqnjj8WeyE0k=;
 b=bVuXhic+UYlxL4+wladpShbnPJVmQ9Zhrc+Sx78VfYvS8Z5V2eY9nol2CphZsfx9e/lezBhWlYnqrCxPYWZ5gqKbpC8Z2HBU20ehKP6YwkAGpCszZqpYx8BF8+ai3TPmqGPNLl+ZFO4CX7+LrRXUW/DeRg/WVTUke9RV7EEsca6vIqHF4WP49LftVs6mn9serZoQH3C2HiSBmeMUofPd44RcuDLEvh7lfiGWIB5fd7G+KPZlBm4NeMYGSzfppXwQN4/XqQ3U3onK+VSZ/rnnDBgkkXwKTNSEmCsYjfeubLEvvGuizXEh08KXL/SSag8WBEG/gEPhy9r9823Nfa15Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xOQtjd36c/4r4LXer/oam/xk8YpZ41WAqnjj8WeyE0k=;
 b=C8q5hotDVmm+CXAHo24VVQzwGQ229RTfUK/JXbdcluM0uB/k60u+DLWeu0xa2aiTNUbHdFS7bjqH6wf4ZLUWLUHnnV56wHuna72UDkE8Iymy6rGCNUKKdDMFJ2xiFG0TBKikZcdfqXADHIq9h7OZIEIqusbMKrx8X5ngQe2etvs=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Tue, 5 Oct
 2021 13:55:13 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::31cb:3b13:b0e8:d8f4]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::31cb:3b13:b0e8:d8f4%9]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 13:55:13 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v8 18/24] wfx: add data_tx.c/data_tx.h
Date: Tue,  5 Oct 2021 15:53:54 +0200
Message-Id: <20211005135400.788058-19-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211005135400.788058-1-Jerome.Pouiller@silabs.com>
References: <20211005135400.788058-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR3P189CA0084.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:b4::29) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
Received: from pc-42.silabs.com (37.71.187.125) by
 PR3P189CA0084.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:b4::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14 via Frontend Transport; Tue, 5 Oct 2021 13:55:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 862cc899-60b5-42e5-e348-08d98807c0ff
X-MS-TrafficTypeDiagnostic: PH0PR11MB5642:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB564246EA11FF872A83BD143193AF9@PH0PR11MB5642.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xqU4FMraT3K98c+EoUWqfaBli9uGrUyn+NPOnX16G30sqW5O+QRH7N/VC30i0Y+vg4kDuqR76IUgKaH8xqzpZxWFDBESrWfeLoJKoYxORhKWKxDOX1W/LKsClxVG72Hfg+5eQ6oe9K3v45hKjadltjuFfUIh3Ut0IYONvc5z+s/XEi4LbFwyhkqUEnfV3nLLsTv11P1QlDCiYT6LqAVlm54zfxLVto3elX0mRPRZeUtNm+VJ3AEKje5V4+WC96i2BryjbFgLfxb6TdDIF/PsX/lHmsKBKf013Q19Tg22WqZ/JYxkG/bJdkOGzIedQVca6dWKla3OJ6uE9PVK0XVRgcrbqxV2TM+dP4IAOTvj7Reft4gXazM0Z/u4GngQZ7jfdLMSZ1jG4PsMRhAZUPbHCNhsUti2C/cngRAV0MczaISx+0uFslsOmeBNALn8uhJHDsDEeWe6H/2LdLMd3N7u4usaSuWHZkkbnX5jU51TFuZHsypPLn+UGtjjSM3bdv2Vj6iCYPjdviBPHaYrR+3gXeAT2OZXjU74J75s7++oNqSj82KpOJDQPKR9adxSlr/Nxduk4qhw/WV1o31Mjp36WcRJI5WvysjHtLFLJqNLI4CBmK8ksFNj16EFt2X/O+UVc4eghxQkCUgdpxsi/IEvA9oQqOhFgmTOUWhvVWH/QmBcxO3DDzgMi35usbBvG7t+5yY7Zc+4XWkEhvZ9PG9ZgA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(5660300002)(26005)(30864003)(52116002)(7696005)(956004)(8676002)(2616005)(38100700002)(8936002)(38350700002)(4326008)(6666004)(186003)(7416002)(6916009)(66574015)(107886003)(83380400001)(36756003)(66476007)(66556008)(508600001)(2906002)(316002)(6486002)(1076003)(66946007)(54906003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTFCTEFZWmorN3BVVk4yVS9nbnZXM2ZWZXRIVFVSdThtZmdvaXRobGh6blg3?=
 =?utf-8?B?cEhDWEhIUEVtdDE0M3ZvODg1aEhzT0hTeTVtaFZ1NXhDY3RIeUJaeDFZMFZP?=
 =?utf-8?B?aktWODg0czVpS0lEWXRkTHJjVFlNc1Zzd290aGpOdENpQmJVaWlIc0plZVhM?=
 =?utf-8?B?clBBR2tZOG14QlJLc1NJNmhzaGtWKy91b3BzcHFtWitnMVBPbnh1Qk05UllP?=
 =?utf-8?B?T0tmVEN1MkdBMTVRYTkwMGxxVnNNU0IyRUsxaG0yUjJ3VDRFR0ZPeDdxNjNx?=
 =?utf-8?B?QWl2UzdZbWtrWXJRUitrcnVSTVRvL3ZncFpSa205dTh5QWZyTUpyeHdNMDA4?=
 =?utf-8?B?RW1EUERDYTlNMnhtOFo1aVJ0NVJ5MmliZFZ3Nk03UnB3YURZU28wbXpIYmlG?=
 =?utf-8?B?TlZ4SGt1VTEzVmxhQWtPRjQyTnZvRXJNbXFPNzZHYnoxTGFsdzRmSDRjUHA5?=
 =?utf-8?B?clo1MHdMcGNGcjV2eGh5cWs5NCt3NTFyRUkrc1NPVUNOeStvaHZZZU1FYVRk?=
 =?utf-8?B?MGdMMnZZV0FBUk5DTTB2dEYxbGRMZmRnMzI2YzhyUmJSZG5XQzlmSUZjK1BC?=
 =?utf-8?B?UFVGdllka3FyamtKYTQ0cyt6RldvTkxCUTlFSVFVWktCdUI3RldtNXBXQnda?=
 =?utf-8?B?cmo1czlVd2tQK0tLeEY5UE8yR2tSRTVwQmJsSy9uN0xXRFJBeUgxRVZWd0pw?=
 =?utf-8?B?N3NoZiswbzlFTGtrYm50N2w4aG9lVzJDcVc1TDhkMnBLMzZpQ1hHc3pObzJT?=
 =?utf-8?B?Z05QYWM2Tms4S3RLM3ppdVo4VEY0N3NpMGRSWnNpTDJIVWkwUnNpT1oxZm52?=
 =?utf-8?B?UVhiNDVuLzRIcm9oMDRJNTQ4OS83cG1YVXZkRXF6aVlVZEVSQmphSjhZQ2xB?=
 =?utf-8?B?eGRGazNjdVJtSWNKd3VQWWNVNU9yUGYzOEd2a2p1R3ZpNDZrQ0IxenRrdmFN?=
 =?utf-8?B?VkhDc0pDNlBTTVF1cHVMcTgxZTBXSDBLWEdoMzVvUkJqVGdoL3pCdXczaURh?=
 =?utf-8?B?VSsya1ZWR1pPNCtBVFE3aTNNMTI5N2pCMmRaMlY1aHdIaWFadk5WSGFZVUxw?=
 =?utf-8?B?blZXY2k2WDBZbGNtemlhazl5QWFPQ3ppRHFTZS93V1B3WDZoMTRMazBmTDd2?=
 =?utf-8?B?dEF5djhaSUxpa0cvSEJBWWdwL0t0SDNhUjdxb0ZwR25oRUpUQnFLd2dlb2FF?=
 =?utf-8?B?RUJFZ2xuNU4vVVl4SjBWaU8vdmFDb2FLczQxNVc2T2Q0KzczdGVTblluTEJY?=
 =?utf-8?B?cGpwNDE2WGg0UWJYL2tnMlJJUE9pRGUvWXNzcnVnOXZCdEVJbHFEZWJIcEZR?=
 =?utf-8?B?MmxVTXE1TCs5V2VnK0htbi9odDFYL054OG5WeWxEbno1ak5NN1dYZm05UDhT?=
 =?utf-8?B?Y1JuNGhmckg5WXlIT01WYVhLUDg5UFZPT0ROa0JuUGszZUs4Nno5bngrNDE4?=
 =?utf-8?B?YU1BTU9Bc01lV0ptbGdxL1ROYnJNbitvRUZrTy93L2xoZWxIbFdRb1VmVjl2?=
 =?utf-8?B?OVloN2gvQ0hiRUxCaFRXR0J0YVkrUWdCYWY5QVM3S3pBNHhTZm5kQjdYSjYx?=
 =?utf-8?B?RWxML3QvNWhMVzk5QVhXbTdtRE9qZHNMbllQdEFHQUVlWFR4N0IxY25pRzFk?=
 =?utf-8?B?Ymp4cUczNHRpYnRCUitCYjh3WExPcWFUN3NqQk5kOTJCQ1A0bTd0MmcxeG94?=
 =?utf-8?B?bWdRZkxIUldSNjB3YmJoZ0o1SGd0MW1jWi9uVDAwSmlpRmNMUmZBY3lqcFRr?=
 =?utf-8?Q?jIZY3bfL3UtjLH06C7+1ceGe+BKcR5tg3DQohfH?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 862cc899-60b5-42e5-e348-08d98807c0ff
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2021 13:55:13.5542 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +dV2Fk3pTqy84AZHKUYiAI8uTrzjvfnBxdnFt4LQpMBJyQheAGsm+sUjgywdsI6hCW0FnjCAGpIioISGPqtxYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5642
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
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvZGF0YV90eC5jIHwgNTk2ICsr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvZGF0
YV90eC5oIHwgIDY4ICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA2NjQgaW5zZXJ0aW9ucygrKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvZGF0YV90eC5j
CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9kYXRh
X3R4LmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2RhdGFf
dHguYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvZGF0YV90eC5jCm5ldyBmaWxl
IG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uYmE2MDZjNzlhZGJlCi0tLSAvZGV2L251
bGwKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9kYXRhX3R4LmMKQEAgLTAs
MCArMSw1OTYgQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8q
CisgKiBEYXRhIHRyYW5zbWl0dGluZyBpbXBsZW1lbnRhdGlvbi4KKyAqCisgKiBDb3B5cmlnaHQg
KGMpIDIwMTctMjAyMCwgU2lsaWNvbiBMYWJvcmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdodCAo
YykgMjAxMCwgU1QtRXJpY3Nzb24KKyAqLworI2luY2x1ZGUgPG5ldC9tYWM4MDIxMS5oPgorI2lu
Y2x1ZGUgPGxpbnV4L2V0aGVyZGV2aWNlLmg+CisKKyNpbmNsdWRlICJkYXRhX3R4LmgiCisjaW5j
bHVkZSAid2Z4LmgiCisjaW5jbHVkZSAiYmguaCIKKyNpbmNsdWRlICJzdGEuaCIKKyNpbmNsdWRl
ICJxdWV1ZS5oIgorI2luY2x1ZGUgImRlYnVnLmgiCisjaW5jbHVkZSAidHJhY2VzLmgiCisjaW5j
bHVkZSAiaGlmX3R4X21pYi5oIgorCitzdGF0aWMgaW50IHdmeF9nZXRfaHdfcmF0ZShzdHJ1Y3Qg
d2Z4X2RldiAqd2RldiwKKwkJCSAgIGNvbnN0IHN0cnVjdCBpZWVlODAyMTFfdHhfcmF0ZSAqcmF0
ZSkKK3sKKwlzdHJ1Y3QgaWVlZTgwMjExX3N1cHBvcnRlZF9iYW5kICpiYW5kOworCisJaWYgKHJh
dGUtPmlkeCA8IDApCisJCXJldHVybiAtMTsKKwlpZiAocmF0ZS0+ZmxhZ3MgJiBJRUVFODAyMTFf
VFhfUkNfTUNTKSB7CisJCWlmIChyYXRlLT5pZHggPiA3KSB7CisJCQlXQVJOKDEsICJ3cm9uZyBy
YXRlLT5pZHggdmFsdWU6ICVkIiwgcmF0ZS0+aWR4KTsKKwkJCXJldHVybiAtMTsKKwkJfQorCQly
ZXR1cm4gcmF0ZS0+aWR4ICsgMTQ7CisJfQorCS8qIFRoZSBkZXZpY2Ugb25seSBzdXBwb3J0IDJH
SHosIGVsc2UgYmFuZCBpbmZvcm1hdGlvbiBzaG91bGQgYmUKKwkgKiByZXRyaWV2ZWQgZnJvbSBp
ZWVlODAyMTFfdHhfaW5mbworCSAqLworCWJhbmQgPSB3ZGV2LT5ody0+d2lwaHktPmJhbmRzW05M
ODAyMTFfQkFORF8yR0haXTsKKwlpZiAocmF0ZS0+aWR4ID49IGJhbmQtPm5fYml0cmF0ZXMpIHsK
KwkJV0FSTigxLCAid3JvbmcgcmF0ZS0+aWR4IHZhbHVlOiAlZCIsIHJhdGUtPmlkeCk7CisJCXJl
dHVybiAtMTsKKwl9CisJcmV0dXJuIGJhbmQtPmJpdHJhdGVzW3JhdGUtPmlkeF0uaHdfdmFsdWU7
Cit9CisKKy8qIFRYIHBvbGljeSBjYWNoZSBpbXBsZW1lbnRhdGlvbiAqLworCitzdGF0aWMgdm9p
ZCB3ZnhfdHhfcG9saWN5X2J1aWxkKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3Qgd2Z4X3R4
X3BvbGljeSAqcG9saWN5LAorCQkJCXN0cnVjdCBpZWVlODAyMTFfdHhfcmF0ZSAqcmF0ZXMpCit7
CisJc3RydWN0IHdmeF9kZXYgKndkZXYgPSB3dmlmLT53ZGV2OworCWludCBpLCByYXRlaWQ7CisJ
dTggY291bnQ7CisKKwlXQVJOKHJhdGVzWzBdLmlkeCA8IDAsICJpbnZhbGlkIHJhdGUgcG9saWN5
Iik7CisJbWVtc2V0KHBvbGljeSwgMCwgc2l6ZW9mKCpwb2xpY3kpKTsKKwlmb3IgKGkgPSAwOyBp
IDwgSUVFRTgwMjExX1RYX01BWF9SQVRFUzsgKytpKSB7CisJCWlmIChyYXRlc1tpXS5pZHggPCAw
KQorCQkJYnJlYWs7CisJCVdBUk5fT04ocmF0ZXNbaV0uY291bnQgPiAxNSk7CisJCXJhdGVpZCA9
IHdmeF9nZXRfaHdfcmF0ZSh3ZGV2LCAmcmF0ZXNbaV0pOworCQkvKiBQYWNrIHR3byB2YWx1ZXMg
aW4gZWFjaCBieXRlIG9mIHBvbGljeS0+cmF0ZXMgKi8KKwkJY291bnQgPSByYXRlc1tpXS5jb3Vu
dDsKKwkJaWYgKHJhdGVpZCAlIDIpCisJCQljb3VudCA8PD0gNDsKKwkJcG9saWN5LT5yYXRlc1ty
YXRlaWQgLyAyXSB8PSBjb3VudDsKKwl9Cit9CisKK3N0YXRpYyBib29sIHdmeF90eF9wb2xpY3lf
aXNfZXF1YWwoY29uc3Qgc3RydWN0IHdmeF90eF9wb2xpY3kgKmEsCisJCQkJICAgY29uc3Qgc3Ry
dWN0IHdmeF90eF9wb2xpY3kgKmIpCit7CisJcmV0dXJuICFtZW1jbXAoYS0+cmF0ZXMsIGItPnJh
dGVzLCBzaXplb2YoYS0+cmF0ZXMpKTsKK30KKworc3RhdGljIGludCB3ZnhfdHhfcG9saWN5X2Zp
bmQoc3RydWN0IHdmeF90eF9wb2xpY3lfY2FjaGUgKmNhY2hlLAorCQkJICAgICAgc3RydWN0IHdm
eF90eF9wb2xpY3kgKndhbnRlZCkKK3sKKwlzdHJ1Y3Qgd2Z4X3R4X3BvbGljeSAqaXQ7CisKKwls
aXN0X2Zvcl9lYWNoX2VudHJ5KGl0LCAmY2FjaGUtPnVzZWQsIGxpbmspCisJCWlmICh3ZnhfdHhf
cG9saWN5X2lzX2VxdWFsKHdhbnRlZCwgaXQpKQorCQkJcmV0dXJuIGl0IC0gY2FjaGUtPmNhY2hl
OworCWxpc3RfZm9yX2VhY2hfZW50cnkoaXQsICZjYWNoZS0+ZnJlZSwgbGluaykKKwkJaWYgKHdm
eF90eF9wb2xpY3lfaXNfZXF1YWwod2FudGVkLCBpdCkpCisJCQlyZXR1cm4gaXQgLSBjYWNoZS0+
Y2FjaGU7CisJcmV0dXJuIC0xOworfQorCitzdGF0aWMgdm9pZCB3ZnhfdHhfcG9saWN5X3VzZShz
dHJ1Y3Qgd2Z4X3R4X3BvbGljeV9jYWNoZSAqY2FjaGUsCisJCQkgICAgICBzdHJ1Y3Qgd2Z4X3R4
X3BvbGljeSAqZW50cnkpCit7CisJKytlbnRyeS0+dXNhZ2VfY291bnQ7CisJbGlzdF9tb3ZlKCZl
bnRyeS0+bGluaywgJmNhY2hlLT51c2VkKTsKK30KKworc3RhdGljIGludCB3ZnhfdHhfcG9saWN5
X3JlbGVhc2Uoc3RydWN0IHdmeF90eF9wb2xpY3lfY2FjaGUgKmNhY2hlLAorCQkJCSBzdHJ1Y3Qg
d2Z4X3R4X3BvbGljeSAqZW50cnkpCit7CisJaW50IHJldCA9IC0tZW50cnktPnVzYWdlX2NvdW50
OworCisJaWYgKCFyZXQpCisJCWxpc3RfbW92ZSgmZW50cnktPmxpbmssICZjYWNoZS0+ZnJlZSk7
CisJcmV0dXJuIHJldDsKK30KKworc3RhdGljIGludCB3ZnhfdHhfcG9saWN5X2dldChzdHJ1Y3Qg
d2Z4X3ZpZiAqd3ZpZiwKKwkJCSAgICAgc3RydWN0IGllZWU4MDIxMV90eF9yYXRlICpyYXRlcywg
Ym9vbCAqcmVuZXcpCit7CisJaW50IGlkeDsKKwlzdHJ1Y3Qgd2Z4X3R4X3BvbGljeV9jYWNoZSAq
Y2FjaGUgPSAmd3ZpZi0+dHhfcG9saWN5X2NhY2hlOworCXN0cnVjdCB3ZnhfdHhfcG9saWN5IHdh
bnRlZDsKKwlzdHJ1Y3Qgd2Z4X3R4X3BvbGljeSAqZW50cnk7CisKKwl3ZnhfdHhfcG9saWN5X2J1
aWxkKHd2aWYsICZ3YW50ZWQsIHJhdGVzKTsKKworCXNwaW5fbG9ja19iaCgmY2FjaGUtPmxvY2sp
OworCWlmIChsaXN0X2VtcHR5KCZjYWNoZS0+ZnJlZSkpIHsKKwkJV0FSTigxLCAidW5hYmxlIHRv
IGdldCBhIHZhbGlkIFR4IHBvbGljeSIpOworCQlzcGluX3VubG9ja19iaCgmY2FjaGUtPmxvY2sp
OworCQlyZXR1cm4gSElGX1RYX1JFVFJZX1BPTElDWV9JTlZBTElEOworCX0KKwlpZHggPSB3Znhf
dHhfcG9saWN5X2ZpbmQoY2FjaGUsICZ3YW50ZWQpOworCWlmIChpZHggPj0gMCkgeworCQkqcmVu
ZXcgPSBmYWxzZTsKKwl9IGVsc2UgeworCQkvKiBJZiBwb2xpY3kgaXMgbm90IGZvdW5kIGNyZWF0
ZSBhIG5ldyBvbmUgdXNpbmcgdGhlIG9sZGVzdAorCQkgKiBlbnRyeSBpbiAiZnJlZSIgbGlzdAor
CQkgKi8KKwkJKnJlbmV3ID0gdHJ1ZTsKKwkJZW50cnkgPSBsaXN0X2VudHJ5KGNhY2hlLT5mcmVl
LnByZXYsIHN0cnVjdCB3ZnhfdHhfcG9saWN5LCBsaW5rKTsKKwkJbWVtY3B5KGVudHJ5LT5yYXRl
cywgd2FudGVkLnJhdGVzLCBzaXplb2YoZW50cnktPnJhdGVzKSk7CisJCWVudHJ5LT51cGxvYWRl
ZCA9IGZhbHNlOworCQllbnRyeS0+dXNhZ2VfY291bnQgPSAwOworCQlpZHggPSBlbnRyeSAtIGNh
Y2hlLT5jYWNoZTsKKwl9CisJd2Z4X3R4X3BvbGljeV91c2UoY2FjaGUsICZjYWNoZS0+Y2FjaGVb
aWR4XSk7CisJaWYgKGxpc3RfZW1wdHkoJmNhY2hlLT5mcmVlKSkKKwkJaWVlZTgwMjExX3N0b3Bf
cXVldWVzKHd2aWYtPndkZXYtPmh3KTsKKwlzcGluX3VubG9ja19iaCgmY2FjaGUtPmxvY2spOwor
CXJldHVybiBpZHg7Cit9CisKK3N0YXRpYyB2b2lkIHdmeF90eF9wb2xpY3lfcHV0KHN0cnVjdCB3
ZnhfdmlmICp3dmlmLCBpbnQgaWR4KQoreworCWludCB1c2FnZSwgbG9ja2VkOworCXN0cnVjdCB3
ZnhfdHhfcG9saWN5X2NhY2hlICpjYWNoZSA9ICZ3dmlmLT50eF9wb2xpY3lfY2FjaGU7CisKKwlp
ZiAoaWR4ID09IEhJRl9UWF9SRVRSWV9QT0xJQ1lfSU5WQUxJRCkKKwkJcmV0dXJuOworCXNwaW5f
bG9ja19iaCgmY2FjaGUtPmxvY2spOworCWxvY2tlZCA9IGxpc3RfZW1wdHkoJmNhY2hlLT5mcmVl
KTsKKwl1c2FnZSA9IHdmeF90eF9wb2xpY3lfcmVsZWFzZShjYWNoZSwgJmNhY2hlLT5jYWNoZVtp
ZHhdKTsKKwlpZiAobG9ja2VkICYmICF1c2FnZSkKKwkJaWVlZTgwMjExX3dha2VfcXVldWVzKHd2
aWYtPndkZXYtPmh3KTsKKwlzcGluX3VubG9ja19iaCgmY2FjaGUtPmxvY2spOworfQorCitzdGF0
aWMgaW50IHdmeF90eF9wb2xpY3lfdXBsb2FkKHN0cnVjdCB3ZnhfdmlmICp3dmlmKQoreworCXN0
cnVjdCB3ZnhfdHhfcG9saWN5ICpwb2xpY2llcyA9IHd2aWYtPnR4X3BvbGljeV9jYWNoZS5jYWNo
ZTsKKwl1OCB0bXBfcmF0ZXNbMTJdOworCWludCBpLCBpc191c2VkOworCisJZG8geworCQlzcGlu
X2xvY2tfYmgoJnd2aWYtPnR4X3BvbGljeV9jYWNoZS5sb2NrKTsKKwkJZm9yIChpID0gMDsgaSA8
IEFSUkFZX1NJWkUod3ZpZi0+dHhfcG9saWN5X2NhY2hlLmNhY2hlKTsgKytpKSB7CisJCQlpc191
c2VkID0gbWVtemNtcChwb2xpY2llc1tpXS5yYXRlcywKKwkJCQkJICBzaXplb2YocG9saWNpZXNb
aV0ucmF0ZXMpKTsKKwkJCWlmICghcG9saWNpZXNbaV0udXBsb2FkZWQgJiYgaXNfdXNlZCkKKwkJ
CQlicmVhazsKKwkJfQorCQlpZiAoaSA8IEFSUkFZX1NJWkUod3ZpZi0+dHhfcG9saWN5X2NhY2hl
LmNhY2hlKSkgeworCQkJcG9saWNpZXNbaV0udXBsb2FkZWQgPSB0cnVlOworCQkJbWVtY3B5KHRt
cF9yYXRlcywgcG9saWNpZXNbaV0ucmF0ZXMsIHNpemVvZih0bXBfcmF0ZXMpKTsKKwkJCXNwaW5f
dW5sb2NrX2JoKCZ3dmlmLT50eF9wb2xpY3lfY2FjaGUubG9jayk7CisJCQl3ZnhfaGlmX3NldF90
eF9yYXRlX3JldHJ5X3BvbGljeSh3dmlmLCBpLCB0bXBfcmF0ZXMpOworCQl9IGVsc2UgeworCQkJ
c3Bpbl91bmxvY2tfYmgoJnd2aWYtPnR4X3BvbGljeV9jYWNoZS5sb2NrKTsKKwkJfQorCX0gd2hp
bGUgKGkgPCBBUlJBWV9TSVpFKHd2aWYtPnR4X3BvbGljeV9jYWNoZS5jYWNoZSkpOworCXJldHVy
biAwOworfQorCit2b2lkIHdmeF90eF9wb2xpY3lfdXBsb2FkX3dvcmsoc3RydWN0IHdvcmtfc3Ry
dWN0ICp3b3JrKQoreworCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0KKwkJY29udGFpbmVyX29mKHdv
cmssIHN0cnVjdCB3ZnhfdmlmLCB0eF9wb2xpY3lfdXBsb2FkX3dvcmspOworCisJd2Z4X3R4X3Bv
bGljeV91cGxvYWQod3ZpZik7CisJd2Z4X3R4X3VubG9jayh3dmlmLT53ZGV2KTsKK30KKwordm9p
ZCB3ZnhfdHhfcG9saWN5X2luaXQoc3RydWN0IHdmeF92aWYgKnd2aWYpCit7CisJc3RydWN0IHdm
eF90eF9wb2xpY3lfY2FjaGUgKmNhY2hlID0gJnd2aWYtPnR4X3BvbGljeV9jYWNoZTsKKwlpbnQg
aTsKKworCW1lbXNldChjYWNoZSwgMCwgc2l6ZW9mKCpjYWNoZSkpOworCisJc3Bpbl9sb2NrX2lu
aXQoJmNhY2hlLT5sb2NrKTsKKwlJTklUX0xJU1RfSEVBRCgmY2FjaGUtPnVzZWQpOworCUlOSVRf
TElTVF9IRUFEKCZjYWNoZS0+ZnJlZSk7CisKKwlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShj
YWNoZS0+Y2FjaGUpOyArK2kpCisJCWxpc3RfYWRkKCZjYWNoZS0+Y2FjaGVbaV0ubGluaywgJmNh
Y2hlLT5mcmVlKTsKK30KKworLyogVHggaW1wbGVtZW50YXRpb24gKi8KKworc3RhdGljIGJvb2wg
d2Z4X2lzX2FjdGlvbl9iYWNrKHN0cnVjdCBpZWVlODAyMTFfaGRyICpoZHIpCit7CisJc3RydWN0
IGllZWU4MDIxMV9tZ210ICptZ210ID0gKHN0cnVjdCBpZWVlODAyMTFfbWdtdCAqKWhkcjsKKwor
CWlmICghaWVlZTgwMjExX2lzX2FjdGlvbihtZ210LT5mcmFtZV9jb250cm9sKSkKKwkJcmV0dXJu
IGZhbHNlOworCWlmIChtZ210LT51LmFjdGlvbi5jYXRlZ29yeSAhPSBXTEFOX0NBVEVHT1JZX0JB
Q0spCisJCXJldHVybiBmYWxzZTsKKwlyZXR1cm4gdHJ1ZTsKK30KKworc3RhdGljIHU4IHdmeF90
eF9nZXRfbGlua19pZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEg
KnN0YSwKKwkJCSAgICAgc3RydWN0IGllZWU4MDIxMV9oZHIgKmhkcikKK3sKKwlzdHJ1Y3Qgd2Z4
X3N0YV9wcml2ICpzdGFfcHJpdiA9CisJCXN0YSA/IChzdHJ1Y3Qgd2Z4X3N0YV9wcml2ICopJnN0
YS0+ZHJ2X3ByaXYgOiBOVUxMOworCWNvbnN0IHU4ICpkYSA9IGllZWU4MDIxMV9nZXRfREEoaGRy
KTsKKworCWlmIChzdGFfcHJpdiAmJiBzdGFfcHJpdi0+bGlua19pZCkKKwkJcmV0dXJuIHN0YV9w
cml2LT5saW5rX2lkOworCWlmICh3dmlmLT52aWYtPnR5cGUgIT0gTkw4MDIxMV9JRlRZUEVfQVAp
CisJCXJldHVybiAwOworCWlmIChpc19tdWx0aWNhc3RfZXRoZXJfYWRkcihkYSkpCisJCXJldHVy
biAwOworCXJldHVybiBISUZfTElOS19JRF9OT1RfQVNTT0NJQVRFRDsKK30KKworc3RhdGljIHZv
aWQgd2Z4X3R4X2ZpeHVwX3JhdGVzKHN0cnVjdCBpZWVlODAyMTFfdHhfcmF0ZSAqcmF0ZXMpCit7
CisJaW50IGk7CisJYm9vbCBmaW5pc2hlZDsKKworCS8qIEZpcm13YXJlIGlzIG5vdCBhYmxlIHRv
IG1peCByYXRlcyB3aXRoIGRpZmZlcmVudCBmbGFncyAqLworCWZvciAoaSA9IDA7IGkgPCBJRUVF
ODAyMTFfVFhfTUFYX1JBVEVTOyBpKyspIHsKKwkJaWYgKHJhdGVzWzBdLmZsYWdzICYgSUVFRTgw
MjExX1RYX1JDX1NIT1JUX0dJKQorCQkJcmF0ZXNbaV0uZmxhZ3MgfD0gSUVFRTgwMjExX1RYX1JD
X1NIT1JUX0dJOworCQlpZiAoIShyYXRlc1swXS5mbGFncyAmIElFRUU4MDIxMV9UWF9SQ19TSE9S
VF9HSSkpCisJCQlyYXRlc1tpXS5mbGFncyAmPSB+SUVFRTgwMjExX1RYX1JDX1NIT1JUX0dJOwor
CQlpZiAoIShyYXRlc1swXS5mbGFncyAmIElFRUU4MDIxMV9UWF9SQ19VU0VfUlRTX0NUUykpCisJ
CQlyYXRlc1tpXS5mbGFncyAmPSB+SUVFRTgwMjExX1RYX1JDX1VTRV9SVFNfQ1RTOworCX0KKwor
CS8qIFNvcnQgcmF0ZXMgYW5kIHJlbW92ZSBkdXBsaWNhdGVzICovCisJZG8geworCQlmaW5pc2hl
ZCA9IHRydWU7CisJCWZvciAoaSA9IDA7IGkgPCBJRUVFODAyMTFfVFhfTUFYX1JBVEVTIC0gMTsg
aSsrKSB7CisJCQlpZiAocmF0ZXNbaSArIDFdLmlkeCA9PSByYXRlc1tpXS5pZHggJiYKKwkJCSAg
ICByYXRlc1tpXS5pZHggIT0gLTEpIHsKKwkJCQlyYXRlc1tpXS5jb3VudCArPSByYXRlc1tpICsg
MV0uY291bnQ7CisJCQkJaWYgKHJhdGVzW2ldLmNvdW50ID4gMTUpCisJCQkJCXJhdGVzW2ldLmNv
dW50ID0gMTU7CisJCQkJcmF0ZXNbaSArIDFdLmlkeCA9IC0xOworCQkJCXJhdGVzW2kgKyAxXS5j
b3VudCA9IDA7CisKKwkJCQlmaW5pc2hlZCA9IGZhbHNlOworCQkJfQorCQkJaWYgKHJhdGVzW2kg
KyAxXS5pZHggPiByYXRlc1tpXS5pZHgpIHsKKwkJCQlzd2FwKHJhdGVzW2kgKyAxXSwgcmF0ZXNb
aV0pOworCQkJCWZpbmlzaGVkID0gZmFsc2U7CisJCQl9CisJCX0KKwl9IHdoaWxlICghZmluaXNo
ZWQpOworCS8qIEVuc3VyZSB0aGF0IE1DUzAgb3IgMU1icHMgaXMgcHJlc2VudCBhdCB0aGUgZW5k
IG9mIHRoZSByZXRyeSBsaXN0ICovCisJZm9yIChpID0gMDsgaSA8IElFRUU4MDIxMV9UWF9NQVhf
UkFURVM7IGkrKykgeworCQlpZiAocmF0ZXNbaV0uaWR4ID09IDApCisJCQlicmVhazsKKwkJaWYg
KHJhdGVzW2ldLmlkeCA9PSAtMSkgeworCQkJcmF0ZXNbaV0uaWR4ID0gMDsKKwkJCXJhdGVzW2ld
LmNvdW50ID0gODsgLyogPT0gaHctPm1heF9yYXRlX3RyaWVzICovCisJCQlyYXRlc1tpXS5mbGFn
cyA9IHJhdGVzW2kgLSAxXS5mbGFncyAmCisJCQkJCSBJRUVFODAyMTFfVFhfUkNfTUNTOworCQkJ
YnJlYWs7CisJCX0KKwl9CisJLyogQWxsIHJldHJpZXMgdXNlIGxvbmcgR0kgKi8KKwlmb3IgKGkg
PSAxOyBpIDwgSUVFRTgwMjExX1RYX01BWF9SQVRFUzsgaSsrKQorCQlyYXRlc1tpXS5mbGFncyAm
PSB+SUVFRTgwMjExX1RYX1JDX1NIT1JUX0dJOworfQorCitzdGF0aWMgdTggd2Z4X3R4X2dldF9y
ZXRyeV9wb2xpY3lfaWQoc3RydWN0IHdmeF92aWYgKnd2aWYsCisJCQkJICAgICBzdHJ1Y3QgaWVl
ZTgwMjExX3R4X2luZm8gKnR4X2luZm8pCit7CisJYm9vbCB0eF9wb2xpY3lfcmVuZXcgPSBmYWxz
ZTsKKwl1OCByZXQ7CisKKwlyZXQgPSB3ZnhfdHhfcG9saWN5X2dldCh3dmlmLCB0eF9pbmZvLT5k
cml2ZXJfcmF0ZXMsICZ0eF9wb2xpY3lfcmVuZXcpOworCWlmIChyZXQgPT0gSElGX1RYX1JFVFJZ
X1BPTElDWV9JTlZBTElEKQorCQlkZXZfd2Fybih3dmlmLT53ZGV2LT5kZXYsICJ1bmFibGUgdG8g
Z2V0IGEgdmFsaWQgVHggcG9saWN5Iik7CisKKwlpZiAodHhfcG9saWN5X3JlbmV3KSB7CisJCXdm
eF90eF9sb2NrKHd2aWYtPndkZXYpOworCQlpZiAoIXNjaGVkdWxlX3dvcmsoJnd2aWYtPnR4X3Bv
bGljeV91cGxvYWRfd29yaykpCisJCQl3ZnhfdHhfdW5sb2NrKHd2aWYtPndkZXYpOworCX0KKwly
ZXR1cm4gcmV0OworfQorCitzdGF0aWMgaW50IHdmeF90eF9nZXRfZnJhbWVfZm9ybWF0KHN0cnVj
dCBpZWVlODAyMTFfdHhfaW5mbyAqdHhfaW5mbykKK3sKKwlpZiAoISh0eF9pbmZvLT5kcml2ZXJf
cmF0ZXNbMF0uZmxhZ3MgJiBJRUVFODAyMTFfVFhfUkNfTUNTKSkKKwkJcmV0dXJuIEhJRl9GUkFN
RV9GT1JNQVRfTk9OX0hUOworCWVsc2UgaWYgKCEodHhfaW5mby0+ZHJpdmVyX3JhdGVzWzBdLmZs
YWdzICYgSUVFRTgwMjExX1RYX1JDX0dSRUVOX0ZJRUxEKSkKKwkJcmV0dXJuIEhJRl9GUkFNRV9G
T1JNQVRfTUlYRURfRk9STUFUX0hUOworCWVsc2UKKwkJcmV0dXJuIEhJRl9GUkFNRV9GT1JNQVRf
R0ZfSFRfMTFOOworfQorCitzdGF0aWMgaW50IHdmeF90eF9nZXRfaWN2X2xlbihzdHJ1Y3QgaWVl
ZTgwMjExX2tleV9jb25mICpod19rZXkpCit7CisJaW50IG1pY19zcGFjZTsKKworCWlmICghaHdf
a2V5KQorCQlyZXR1cm4gMDsKKwlpZiAoaHdfa2V5LT5jaXBoZXIgPT0gV0xBTl9DSVBIRVJfU1VJ
VEVfQUVTX0NNQUMpCisJCXJldHVybiAwOworCW1pY19zcGFjZSA9IChod19rZXktPmNpcGhlciA9
PSBXTEFOX0NJUEhFUl9TVUlURV9US0lQKSA/IDggOiAwOworCXJldHVybiBod19rZXktPmljdl9s
ZW4gKyBtaWNfc3BhY2U7Cit9CisKK3N0YXRpYyBpbnQgd2Z4X3R4X2lubmVyKHN0cnVjdCB3Znhf
dmlmICp3dmlmLCBzdHJ1Y3QgaWVlZTgwMjExX3N0YSAqc3RhLAorCQkJc3RydWN0IHNrX2J1ZmYg
KnNrYikKK3sKKwlzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhpZl9tc2c7CisJc3RydWN0IHdmeF9oaWZf
cmVxX3R4ICpyZXE7CisJc3RydWN0IHdmeF90eF9wcml2ICp0eF9wcml2OworCXN0cnVjdCBpZWVl
ODAyMTFfdHhfaW5mbyAqdHhfaW5mbyA9IElFRUU4MDIxMV9TS0JfQ0Ioc2tiKTsKKwlzdHJ1Y3Qg
aWVlZTgwMjExX2tleV9jb25mICpod19rZXkgPSB0eF9pbmZvLT5jb250cm9sLmh3X2tleTsKKwlz
dHJ1Y3QgaWVlZTgwMjExX2hkciAqaGRyID0gKHN0cnVjdCBpZWVlODAyMTFfaGRyICopc2tiLT5k
YXRhOworCWludCBxdWV1ZV9pZCA9IHNrYl9nZXRfcXVldWVfbWFwcGluZyhza2IpOworCXNpemVf
dCBvZmZzZXQgPSAoc2l6ZV90KXNrYi0+ZGF0YSAmIDM7CisJaW50IHdtc2dfbGVuID0gc2l6ZW9m
KHN0cnVjdCB3ZnhfaGlmX21zZykgKworCQkJc2l6ZW9mKHN0cnVjdCB3ZnhfaGlmX3JlcV90eCkg
KyBvZmZzZXQ7CisKKwlXQVJOKHF1ZXVlX2lkID49IElFRUU4MDIxMV9OVU1fQUNTLCAidW5zdXBw
b3J0ZWQgcXVldWVfaWQiKTsKKwl3ZnhfdHhfZml4dXBfcmF0ZXModHhfaW5mby0+ZHJpdmVyX3Jh
dGVzKTsKKworCS8qIEZyb20gbm93IHR4X2luZm8tPmNvbnRyb2wgaXMgdW51c2FibGUgKi8KKwlt
ZW1zZXQodHhfaW5mby0+cmF0ZV9kcml2ZXJfZGF0YSwgMCwgc2l6ZW9mKHN0cnVjdCB3ZnhfdHhf
cHJpdikpOworCS8qIEZpbGwgdHhfcHJpdiAqLworCXR4X3ByaXYgPSAoc3RydWN0IHdmeF90eF9w
cml2ICopdHhfaW5mby0+cmF0ZV9kcml2ZXJfZGF0YTsKKwl0eF9wcml2LT5pY3Zfc2l6ZSA9IHdm
eF90eF9nZXRfaWN2X2xlbihod19rZXkpOworCisJLyogRmlsbCBoaWZfbXNnICovCisJV0FSTihz
a2JfaGVhZHJvb20oc2tiKSA8IHdtc2dfbGVuLCAibm90IGVub3VnaCBzcGFjZSBpbiBza2IiKTsK
KwlXQVJOKG9mZnNldCAmIDEsICJhdHRlbXB0IHRvIHRyYW5zbWl0IGFuIHVuYWxpZ25lZCBmcmFt
ZSIpOworCXNrYl9wdXQoc2tiLCB0eF9wcml2LT5pY3Zfc2l6ZSk7CisJc2tiX3B1c2goc2tiLCB3
bXNnX2xlbik7CisJbWVtc2V0KHNrYi0+ZGF0YSwgMCwgd21zZ19sZW4pOworCWhpZl9tc2cgPSAo
c3RydWN0IHdmeF9oaWZfbXNnICopc2tiLT5kYXRhOworCWhpZl9tc2ctPmxlbiA9IGNwdV90b19s
ZTE2KHNrYi0+bGVuKTsKKwloaWZfbXNnLT5pZCA9IEhJRl9SRVFfSURfVFg7CisJaGlmX21zZy0+
aW50ZXJmYWNlID0gd3ZpZi0+aWQ7CisJaWYgKHNrYi0+bGVuID4gbGUxNl90b19jcHUod3ZpZi0+
d2Rldi0+aHdfY2Fwcy5zaXplX2lucF9jaF9idWYpKSB7CisJCWRldl93YXJuKHd2aWYtPndkZXYt
PmRldiwKKwkJCSAicmVxdWVzdGVkIGZyYW1lIHNpemUgKCVkKSBpcyBsYXJnZXIgdGhhbiBtYXhp
bXVtIHN1cHBvcnRlZCAoJWQpXG4iLAorCQkJIHNrYi0+bGVuLCBsZTE2X3RvX2NwdSh3dmlmLT53
ZGV2LT5od19jYXBzLnNpemVfaW5wX2NoX2J1ZikpOworCQlza2JfcHVsbChza2IsIHdtc2dfbGVu
KTsKKwkJcmV0dXJuIC1FSU87CisJfQorCisJLyogRmlsbCB0eCByZXF1ZXN0ICovCisJcmVxID0g
KHN0cnVjdCB3ZnhfaGlmX3JlcV90eCAqKWhpZl9tc2ctPmJvZHk7CisJLyogcGFja2V0X2lkIGp1
c3QgbmVlZCB0byBiZSB1bmlxdWUgb24gZGV2aWNlLiAzMmJpdHMgYXJlIG1vcmUgdGhhbgorCSAq
IG5lY2Vzc2FyeSBmb3IgdGhhdCB0YXNrLCBzbyB3ZSB0YWtlIGFkdmFudGFnZSBvZiBpdCB0byBh
ZGQgc29tZSBleHRyYQorCSAqIGRhdGEgZm9yIGRlYnVnLgorCSAqLworCXJlcS0+cGFja2V0X2lk
ID0gYXRvbWljX2FkZF9yZXR1cm4oMSwgJnd2aWYtPndkZXYtPnBhY2tldF9pZCkgJiAweEZGRkY7
CisJcmVxLT5wYWNrZXRfaWQgfD0gSUVFRTgwMjExX1NFUV9UT19TTihsZTE2X3RvX2NwdShoZHIt
PnNlcV9jdHJsKSkgPDwgMTY7CisJcmVxLT5wYWNrZXRfaWQgfD0gcXVldWVfaWQgPDwgMjg7CisK
KwlyZXEtPmZjX29mZnNldCA9IG9mZnNldDsKKwkvKiBRdWV1ZSBpbmRleCBhcmUgaW52ZXJ0ZWQg
YmV0d2VlbiBmaXJtd2FyZSBhbmQgTGludXggKi8KKwlyZXEtPnF1ZXVlX2lkID0gMyAtIHF1ZXVl
X2lkOworCXJlcS0+cGVlcl9zdGFfaWQgPSB3ZnhfdHhfZ2V0X2xpbmtfaWQod3ZpZiwgc3RhLCBo
ZHIpOworCXJlcS0+cmV0cnlfcG9saWN5X2luZGV4ID0gd2Z4X3R4X2dldF9yZXRyeV9wb2xpY3lf
aWQod3ZpZiwgdHhfaW5mbyk7CisJcmVxLT5mcmFtZV9mb3JtYXQgPSB3ZnhfdHhfZ2V0X2ZyYW1l
X2Zvcm1hdCh0eF9pbmZvKTsKKwlpZiAodHhfaW5mby0+ZHJpdmVyX3JhdGVzWzBdLmZsYWdzICYg
SUVFRTgwMjExX1RYX1JDX1NIT1JUX0dJKQorCQlyZXEtPnNob3J0X2dpID0gMTsKKwlpZiAodHhf
aW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhfQ1RMX1NFTkRfQUZURVJfRFRJTSkKKwkJcmVxLT5h
ZnRlcl9kdGltID0gMTsKKworCS8qIEF1eGlsaWFyeSBvcGVyYXRpb25zICovCisJd2Z4X3R4X3F1
ZXVlc19wdXQod3ZpZiwgc2tiKTsKKwlpZiAodHhfaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhf
Q1RMX1NFTkRfQUZURVJfRFRJTSkKKwkJc2NoZWR1bGVfd29yaygmd3ZpZi0+dXBkYXRlX3RpbV93
b3JrKTsKKwl3ZnhfYmhfcmVxdWVzdF90eCh3dmlmLT53ZGV2KTsKKwlyZXR1cm4gMDsKK30KKwor
dm9pZCB3ZnhfdHgoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdHhf
Y29udHJvbCAqY29udHJvbCwKKwkgICAgc3RydWN0IHNrX2J1ZmYgKnNrYikKK3sKKwlzdHJ1Y3Qg
d2Z4X2RldiAqd2RldiA9IGh3LT5wcml2OworCXN0cnVjdCB3ZnhfdmlmICp3dmlmOworCXN0cnVj
dCBpZWVlODAyMTFfc3RhICpzdGEgPSBjb250cm9sID8gY29udHJvbC0+c3RhIDogTlVMTDsKKwlz
dHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8gKnR4X2luZm8gPSBJRUVFODAyMTFfU0tCX0NCKHNrYik7
CisJc3RydWN0IGllZWU4MDIxMV9oZHIgKmhkciA9IChzdHJ1Y3QgaWVlZTgwMjExX2hkciAqKXNr
Yi0+ZGF0YTsKKwlzaXplX3QgZHJpdmVyX2RhdGFfcm9vbSA9IHNpemVvZl9maWVsZChzdHJ1Y3Qg
aWVlZTgwMjExX3R4X2luZm8sCisJCQkJCSAgICAgICByYXRlX2RyaXZlcl9kYXRhKTsKKworCUJV
SUxEX0JVR19PTl9NU0coc2l6ZW9mKHN0cnVjdCB3ZnhfdHhfcHJpdikgPiBkcml2ZXJfZGF0YV9y
b29tLAorCQkJICJzdHJ1Y3QgdHhfcHJpdiBpcyB0b28gbGFyZ2UiKTsKKwlXQVJOKHNrYi0+bmV4
dCB8fCBza2ItPnByZXYsICJza2IgaXMgYWxyZWFkeSBtZW1iZXIgb2YgYSBsaXN0Iik7CisJLyog
Y29udHJvbC52aWYgY2FuIGJlIE5VTEwgZm9yIGluamVjdGVkIGZyYW1lcyAqLworCWlmICh0eF9p
bmZvLT5jb250cm9sLnZpZikKKwkJd3ZpZiA9IChzdHJ1Y3Qgd2Z4X3ZpZiAqKXR4X2luZm8tPmNv
bnRyb2wudmlmLT5kcnZfcHJpdjsKKwllbHNlCisJCXd2aWYgPSB3dmlmX2l0ZXJhdGUod2Rldiwg
TlVMTCk7CisJaWYgKFdBUk5fT04oIXd2aWYpKQorCQlnb3RvIGRyb3A7CisJLyogQmVjYXVzZSBv
ZiBUWF9BTVBEVV9TRVRVUF9JTl9IVywgbWFjODAyMTEgZG9lcyBub3QgdHJ5IHRvIHNlbmQgYW55
CisJICogQmxvY2tBY2sgc2Vzc2lvbiBtYW5hZ2VtZW50IGZyYW1lLiBUaGUgY2hlY2sgYmVsb3cg
ZXhpc3QganVzdCBpbiBjYXNlLgorCSAqLworCWlmICh3ZnhfaXNfYWN0aW9uX2JhY2soaGRyKSkg
eworCQlkZXZfaW5mbyh3ZGV2LT5kZXYsICJkcm9wIEJBIGFjdGlvblxuIik7CisJCWdvdG8gZHJv
cDsKKwl9CisJaWYgKHdmeF90eF9pbm5lcih3dmlmLCBzdGEsIHNrYikpCisJCWdvdG8gZHJvcDsK
KworCXJldHVybjsKKworZHJvcDoKKwlpZWVlODAyMTFfdHhfc3RhdHVzX2lycXNhZmUod2Rldi0+
aHcsIHNrYik7Cit9CisKK3N0YXRpYyB2b2lkIHdmeF9za2JfZHRvcihzdHJ1Y3Qgd2Z4X3ZpZiAq
d3ZpZiwgc3RydWN0IHNrX2J1ZmYgKnNrYikKK3sKKwlzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhpZiA9
IChzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKilza2ItPmRhdGE7CisJc3RydWN0IHdmeF9oaWZfcmVxX3R4
ICpyZXEgPSAoc3RydWN0IHdmeF9oaWZfcmVxX3R4ICopaGlmLT5ib2R5OworCXVuc2lnbmVkIGlu
dCBvZmZzZXQgPSBzaXplb2Yoc3RydWN0IHdmeF9oaWZfbXNnKSArCisJCQkgICAgICBzaXplb2Yo
c3RydWN0IHdmeF9oaWZfcmVxX3R4KSArCisJCQkgICAgICByZXEtPmZjX29mZnNldDsKKworCWlm
ICghd3ZpZikgeworCQlwcl93YXJuKCJ2aWYgYXNzb2NpYXRlZCB3aXRoIHRoZSBza2IgZG9lcyBu
b3QgZXhpc3QgYW55bW9yZVxuIik7CisJCXJldHVybjsKKwl9CisJd2Z4X3R4X3BvbGljeV9wdXQo
d3ZpZiwgcmVxLT5yZXRyeV9wb2xpY3lfaW5kZXgpOworCXNrYl9wdWxsKHNrYiwgb2Zmc2V0KTsK
KwlpZWVlODAyMTFfdHhfc3RhdHVzX2lycXNhZmUod3ZpZi0+d2Rldi0+aHcsIHNrYik7Cit9CisK
K3N0YXRpYyB2b2lkIHdmeF90eF9maWxsX3JhdGVzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LAorCQkJ
ICAgICAgc3RydWN0IGllZWU4MDIxMV90eF9pbmZvICp0eF9pbmZvLAorCQkJICAgICAgY29uc3Qg
c3RydWN0IHdmeF9oaWZfY25mX3R4ICphcmcpCit7CisJc3RydWN0IGllZWU4MDIxMV90eF9yYXRl
ICpyYXRlOworCWludCB0eF9jb3VudDsKKwlpbnQgaTsKKworCXR4X2NvdW50ID0gYXJnLT5hY2tf
ZmFpbHVyZXM7CisJaWYgKCFhcmctPnN0YXR1cyB8fCBhcmctPmFja19mYWlsdXJlcykKKwkJdHhf
Y291bnQgKz0gMTsgLyogQWxzbyByZXBvcnQgc3VjY2VzcyAqLworCWZvciAoaSA9IDA7IGkgPCBJ
RUVFODAyMTFfVFhfTUFYX1JBVEVTOyBpKyspIHsKKwkJcmF0ZSA9ICZ0eF9pbmZvLT5zdGF0dXMu
cmF0ZXNbaV07CisJCWlmIChyYXRlLT5pZHggPCAwKQorCQkJYnJlYWs7CisJCWlmICh0eF9jb3Vu
dCA8IHJhdGUtPmNvdW50ICYmCisJCSAgICBhcmctPnN0YXR1cyA9PSBISUZfU1RBVFVTX1RYX0ZB
SUxfUkVUUklFUyAmJgorCQkgICAgYXJnLT5hY2tfZmFpbHVyZXMpCisJCQlkZXZfZGJnKHdkZXYt
PmRldiwgImFsbCByZXRyaWVzIHdlcmUgbm90IGNvbnN1bWVkOiAlZCAhPSAlZFxuIiwKKwkJCQly
YXRlLT5jb3VudCwgdHhfY291bnQpOworCQlpZiAodHhfY291bnQgPD0gcmF0ZS0+Y291bnQgJiYg
dHhfY291bnQgJiYKKwkJICAgIGFyZy0+dHhlZF9yYXRlICE9IHdmeF9nZXRfaHdfcmF0ZSh3ZGV2
LCByYXRlKSkKKwkJCWRldl9kYmcod2Rldi0+ZGV2LCAiaW5jb25zaXN0ZW50IHR4X2luZm8gcmF0
ZXM6ICVkICE9ICVkXG4iLAorCQkJCWFyZy0+dHhlZF9yYXRlLCB3ZnhfZ2V0X2h3X3JhdGUod2Rl
diwgcmF0ZSkpOworCQlpZiAodHhfY291bnQgPiByYXRlLT5jb3VudCkgeworCQkJdHhfY291bnQg
LT0gcmF0ZS0+Y291bnQ7CisJCX0gZWxzZSBpZiAoIXR4X2NvdW50KSB7CisJCQlyYXRlLT5jb3Vu
dCA9IDA7CisJCQlyYXRlLT5pZHggPSAtMTsKKwkJfSBlbHNlIHsKKwkJCXJhdGUtPmNvdW50ID0g
dHhfY291bnQ7CisJCQl0eF9jb3VudCA9IDA7CisJCX0KKwl9CisJaWYgKHR4X2NvdW50KQorCQlk
ZXZfZGJnKHdkZXYtPmRldiwgIiVkIG1vcmUgcmV0cmllcyB0aGFuIGV4cGVjdGVkXG4iLCB0eF9j
b3VudCk7Cit9CisKK3ZvaWQgd2Z4X3R4X2NvbmZpcm1fY2Ioc3RydWN0IHdmeF9kZXYgKndkZXYs
IGNvbnN0IHN0cnVjdCB3ZnhfaGlmX2NuZl90eCAqYXJnKQoreworCWNvbnN0IHN0cnVjdCB3Znhf
dHhfcHJpdiAqdHhfcHJpdjsKKwlzdHJ1Y3QgaWVlZTgwMjExX3R4X2luZm8gKnR4X2luZm87CisJ
c3RydWN0IHdmeF92aWYgKnd2aWY7CisJc3RydWN0IHNrX2J1ZmYgKnNrYjsKKworCXNrYiA9IHdm
eF9wZW5kaW5nX2dldCh3ZGV2LCBhcmctPnBhY2tldF9pZCk7CisJaWYgKCFza2IpIHsKKwkJZGV2
X3dhcm4od2Rldi0+ZGV2LCAicmVjZWl2ZWQgdW5rbm93biBwYWNrZXRfaWQgKCUjLjh4KSBmcm9t
IGNoaXBcbiIsCisJCQkgYXJnLT5wYWNrZXRfaWQpOworCQlyZXR1cm47CisJfQorCXR4X2luZm8g
PSBJRUVFODAyMTFfU0tCX0NCKHNrYik7CisJdHhfcHJpdiA9IHdmeF9za2JfdHhfcHJpdihza2Ip
OworCXd2aWYgPSB3ZGV2X3RvX3d2aWYod2RldiwgKChzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKilza2It
PmRhdGEpLT5pbnRlcmZhY2UpOworCVdBUk5fT04oIXd2aWYpOworCWlmICghd3ZpZikKKwkJcmV0
dXJuOworCisJLyogTm90ZSB0aGF0IHdmeF9wZW5kaW5nX2dldF9wa3RfdXNfZGVsYXkoKSBnZXQg
ZGF0YSBmcm9tIHR4X2luZm8gKi8KKwlfdHJhY2VfdHhfc3RhdHMoYXJnLCBza2IsIHdmeF9wZW5k
aW5nX2dldF9wa3RfdXNfZGVsYXkod2Rldiwgc2tiKSk7CisJd2Z4X3R4X2ZpbGxfcmF0ZXMod2Rl
diwgdHhfaW5mbywgYXJnKTsKKwlza2JfdHJpbShza2IsIHNrYi0+bGVuIC0gdHhfcHJpdi0+aWN2
X3NpemUpOworCisJLyogRnJvbSBub3csIHlvdSBjYW4gdG91Y2ggdG8gdHhfaW5mby0+c3RhdHVz
LCBidXQgZG8gbm90IHRvdWNoIHRvCisJICogdHhfcHJpdiBhbnltb3JlCisJICovCisJLyogRklY
TUU6IHVzZSBpZWVlODAyMTFfdHhfaW5mb19jbGVhcl9zdGF0dXMoKSAqLworCW1lbXNldCh0eF9p
bmZvLT5yYXRlX2RyaXZlcl9kYXRhLCAwLCBzaXplb2YodHhfaW5mby0+cmF0ZV9kcml2ZXJfZGF0
YSkpOworCW1lbXNldCh0eF9pbmZvLT5wYWQsIDAsIHNpemVvZih0eF9pbmZvLT5wYWQpKTsKKwor
CWlmICghYXJnLT5zdGF0dXMpIHsKKwkJdHhfaW5mby0+c3RhdHVzLnR4X3RpbWUgPQorCQkJbGUz
Ml90b19jcHUoYXJnLT5tZWRpYV9kZWxheSkgLQorCQkJbGUzMl90b19jcHUoYXJnLT50eF9xdWV1
ZV9kZWxheSk7CisJCWlmICh0eF9pbmZvLT5mbGFncyAmIElFRUU4MDIxMV9UWF9DVExfTk9fQUNL
KQorCQkJdHhfaW5mby0+ZmxhZ3MgfD0gSUVFRTgwMjExX1RYX1NUQVRfTk9BQ0tfVFJBTlNNSVRU
RUQ7CisJCWVsc2UKKwkJCXR4X2luZm8tPmZsYWdzIHw9IElFRUU4MDIxMV9UWF9TVEFUX0FDSzsK
Kwl9IGVsc2UgaWYgKGFyZy0+c3RhdHVzID09IEhJRl9TVEFUVVNfVFhfRkFJTF9SRVFVRVVFKSB7
CisJCVdBUk4oIWFyZy0+cmVxdWV1ZSwgImluY29oZXJlbnQgc3RhdHVzIGFuZCByZXN1bHRfZmxh
Z3MiKTsKKwkJaWYgKHR4X2luZm8tPmZsYWdzICYgSUVFRTgwMjExX1RYX0NUTF9TRU5EX0FGVEVS
X0RUSU0pIHsKKwkJCXd2aWYtPmFmdGVyX2R0aW1fdHhfYWxsb3dlZCA9IGZhbHNlOyAvKiBEVElN
IHBlcmlvZCBlbGFwc2VkICovCisJCQlzY2hlZHVsZV93b3JrKCZ3dmlmLT51cGRhdGVfdGltX3dv
cmspOworCQl9CisJCXR4X2luZm8tPmZsYWdzIHw9IElFRUU4MDIxMV9UWF9TVEFUX1RYX0ZJTFRF
UkVEOworCX0KKwl3Znhfc2tiX2R0b3Iod3ZpZiwgc2tiKTsKK30KKworc3RhdGljIHZvaWQgd2Z4
X2ZsdXNoX3ZpZihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgdTMyIHF1ZXVlcywKKwkJCSAgc3RydWN0
IHNrX2J1ZmZfaGVhZCAqZHJvcHBlZCkKK3sKKwlzdHJ1Y3Qgd2Z4X3F1ZXVlICpxdWV1ZTsKKwlp
bnQgaTsKKworCWZvciAoaSA9IDA7IGkgPCBJRUVFODAyMTFfTlVNX0FDUzsgaSsrKSB7CisJCWlm
ICghKEJJVChpKSAmIHF1ZXVlcykpCisJCQljb250aW51ZTsKKwkJcXVldWUgPSAmd3ZpZi0+dHhf
cXVldWVbaV07CisJCWlmIChkcm9wcGVkKQorCQkJd2Z4X3R4X3F1ZXVlX2Ryb3Aod3ZpZiwgcXVl
dWUsIGRyb3BwZWQpOworCX0KKwlpZiAod3ZpZi0+d2Rldi0+Y2hpcF9mcm96ZW4pCisJCXJldHVy
bjsKKwlmb3IgKGkgPSAwOyBpIDwgSUVFRTgwMjExX05VTV9BQ1M7IGkrKykgeworCQlpZiAoIShC
SVQoaSkgJiBxdWV1ZXMpKQorCQkJY29udGludWU7CisJCXF1ZXVlID0gJnd2aWYtPnR4X3F1ZXVl
W2ldOworCQlpZiAod2FpdF9ldmVudF90aW1lb3V0KHd2aWYtPndkZXYtPnR4X2RlcXVldWUsCisJ
CQkJICAgICAgIHdmeF90eF9xdWV1ZV9lbXB0eSh3dmlmLCBxdWV1ZSksCisJCQkJICAgICAgIG1z
ZWNzX3RvX2ppZmZpZXMoMTAwMCkpIDw9IDApCisJCQlkZXZfd2Fybih3dmlmLT53ZGV2LT5kZXYs
CisJCQkJICJmcmFtZXMgcXVldWVkIHdoaWxlIGZsdXNoaW5nIHR4IHF1ZXVlcz8iKTsKKwl9Cit9
CisKK3ZvaWQgd2Z4X2ZsdXNoKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgw
MjExX3ZpZiAqdmlmLAorCSAgICAgICB1MzIgcXVldWVzLCBib29sIGRyb3ApCit7CisJc3RydWN0
IHdmeF9kZXYgKndkZXYgPSBody0+cHJpdjsKKwlzdHJ1Y3Qgc2tfYnVmZl9oZWFkIGRyb3BwZWQ7
CisJc3RydWN0IHdmeF92aWYgKnd2aWY7CisJc3RydWN0IHdmeF9oaWZfbXNnICpoaWY7CisJc3Ry
dWN0IHNrX2J1ZmYgKnNrYjsKKworCXNrYl9xdWV1ZV9oZWFkX2luaXQoJmRyb3BwZWQpOworCWlm
ICh2aWYpIHsKKwkJd3ZpZiA9IChzdHJ1Y3Qgd2Z4X3ZpZiAqKXZpZi0+ZHJ2X3ByaXY7CisJCXdm
eF9mbHVzaF92aWYod3ZpZiwgcXVldWVzLCBkcm9wID8gJmRyb3BwZWQgOiBOVUxMKTsKKwl9IGVs
c2UgeworCQl3dmlmID0gTlVMTDsKKwkJd2hpbGUgKCh3dmlmID0gd3ZpZl9pdGVyYXRlKHdkZXYs
IHd2aWYpKSAhPSBOVUxMKQorCQkJd2Z4X2ZsdXNoX3ZpZih3dmlmLCBxdWV1ZXMsIGRyb3AgPyAm
ZHJvcHBlZCA6IE5VTEwpOworCX0KKwl3ZnhfdHhfZmx1c2god2Rldik7CisJaWYgKHdkZXYtPmNo
aXBfZnJvemVuKQorCQl3ZnhfcGVuZGluZ19kcm9wKHdkZXYsICZkcm9wcGVkKTsKKwl3aGlsZSAo
KHNrYiA9IHNrYl9kZXF1ZXVlKCZkcm9wcGVkKSkgIT0gTlVMTCkgeworCQloaWYgPSAoc3RydWN0
IHdmeF9oaWZfbXNnICopc2tiLT5kYXRhOworCQl3dmlmID0gd2Rldl90b193dmlmKHdkZXYsIGhp
Zi0+aW50ZXJmYWNlKTsKKwkJaWVlZTgwMjExX3R4X2luZm9fY2xlYXJfc3RhdHVzKElFRUU4MDIx
MV9TS0JfQ0Ioc2tiKSk7CisJCXdmeF9za2JfZHRvcih3dmlmLCBza2IpOworCX0KK30KZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvZGF0YV90eC5oIGIvZHJpdmVy
cy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9kYXRhX3R4LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi4wNDBmNzMxZTYyYWUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2
ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2RhdGFfdHguaApAQCAtMCwwICsxLDY4IEBACisv
KiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCisvKgorICogRGF0YSB0
cmFuc21pdHRpbmcgaW1wbGVtZW50YXRpb24uCisgKgorICogQ29weXJpZ2h0IChjKSAyMDE3LTIw
MjAsIFNpbGljb24gTGFib3JhdG9yaWVzLCBJbmMuCisgKiBDb3B5cmlnaHQgKGMpIDIwMTAsIFNU
LUVyaWNzc29uCisgKi8KKyNpZm5kZWYgV0ZYX0RBVEFfVFhfSAorI2RlZmluZSBXRlhfREFUQV9U
WF9ICisKKyNpbmNsdWRlIDxsaW51eC9saXN0Lmg+CisjaW5jbHVkZSA8bmV0L21hYzgwMjExLmg+
CisKKyNpbmNsdWRlICJoaWZfYXBpX2NtZC5oIgorI2luY2x1ZGUgImhpZl9hcGlfbWliLmgiCisK
K3N0cnVjdCB3ZnhfdHhfcHJpdjsKK3N0cnVjdCB3ZnhfZGV2Oworc3RydWN0IHdmeF92aWY7CisK
K3N0cnVjdCB3ZnhfdHhfcG9saWN5IHsKKwlzdHJ1Y3QgbGlzdF9oZWFkIGxpbms7CisJaW50IHVz
YWdlX2NvdW50OworCXU4IHJhdGVzWzEyXTsKKwlib29sIHVwbG9hZGVkOworfTsKKworc3RydWN0
IHdmeF90eF9wb2xpY3lfY2FjaGUgeworCXN0cnVjdCB3ZnhfdHhfcG9saWN5IGNhY2hlW0hJRl9U
WF9SRVRSWV9QT0xJQ1lfTUFYXTsKKwkvKiBGSVhNRTogdXNlIGEgdHJlZXMgYW5kIGRyb3AgaGFz
aCBmcm9tIHR4X3BvbGljeSAqLworCXN0cnVjdCBsaXN0X2hlYWQgdXNlZDsKKwlzdHJ1Y3QgbGlz
dF9oZWFkIGZyZWU7CisJc3BpbmxvY2tfdCBsb2NrOworfTsKKworc3RydWN0IHdmeF90eF9wcml2
IHsKKwlrdGltZV90IHhtaXRfdGltZXN0YW1wOworCXVuc2lnbmVkIGNoYXIgaWN2X3NpemU7Cit9
OworCit2b2lkIHdmeF90eF9wb2xpY3lfaW5pdChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZik7Cit2b2lk
IHdmeF90eF9wb2xpY3lfdXBsb2FkX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKTsKKwor
dm9pZCB3ZnhfdHgoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdHhf
Y29udHJvbCAqY29udHJvbCwKKwkgICAgc3RydWN0IHNrX2J1ZmYgKnNrYik7Cit2b2lkIHdmeF90
eF9jb25maXJtX2NiKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBjb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9j
bmZfdHggKmFyZyk7Cit2b2lkIHdmeF9mbHVzaChzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywgc3Ry
dWN0IGllZWU4MDIxMV92aWYgKnZpZiwKKwkgICAgICAgdTMyIHF1ZXVlcywgYm9vbCBkcm9wKTsK
Kworc3RhdGljIGlubGluZSBzdHJ1Y3Qgd2Z4X3R4X3ByaXYgKndmeF9za2JfdHhfcHJpdihzdHJ1
Y3Qgc2tfYnVmZiAqc2tiKQoreworCXN0cnVjdCBpZWVlODAyMTFfdHhfaW5mbyAqdHhfaW5mbzsK
KworCWlmICghc2tiKQorCQlyZXR1cm4gTlVMTDsKKwl0eF9pbmZvID0gSUVFRTgwMjExX1NLQl9D
Qihza2IpOworCXJldHVybiAoc3RydWN0IHdmeF90eF9wcml2ICopdHhfaW5mby0+cmF0ZV9kcml2
ZXJfZGF0YTsKK30KKworc3RhdGljIGlubGluZSBzdHJ1Y3Qgd2Z4X2hpZl9yZXFfdHggKndmeF9z
a2JfdHhyZXEoc3RydWN0IHNrX2J1ZmYgKnNrYikKK3sKKwlzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhp
ZiA9IChzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKilza2ItPmRhdGE7CisJc3RydWN0IHdmeF9oaWZfcmVx
X3R4ICpyZXEgPSAoc3RydWN0IHdmeF9oaWZfcmVxX3R4ICopaGlmLT5ib2R5OworCisJcmV0dXJu
IHJlcTsKK30KKworI2VuZGlmCi0tIAoyLjMzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
