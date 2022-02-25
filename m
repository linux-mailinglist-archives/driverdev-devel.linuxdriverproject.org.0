Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 580844C4373
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Feb 2022 12:25:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF8B54089F;
	Fri, 25 Feb 2022 11:25:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yza_QSyZ444h; Fri, 25 Feb 2022 11:25:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 87C11402C4;
	Fri, 25 Feb 2022 11:25:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A0371C1162
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 11:24:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2807C60B77
 for <devel@linuxdriverproject.org>; Fri, 25 Feb 2022 11:24:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aRKGJNGdx8lp for <devel@linuxdriverproject.org>;
 Fri, 25 Feb 2022 11:24:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2051.outbound.protection.outlook.com [40.107.236.51])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 132CF611BC
 for <devel@driverdev.osuosl.org>; Fri, 25 Feb 2022 11:24:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NeeTMdjKTn6bPGX08tc3dYcgi9kEPaWayW/jgqAI0UbXRBe7erf07JqGT2mG5wIUuB0mcCpQ1qvPvZVSAvflBo8BwdtpHpwd5nPCTzOqvlQrf4/+mE0WbrRZm1FYRdBKR0ak7XvGs9YT0uoX4HqI9IbywDnKV8YUxMg7DVn8VhQp+tIOLiybTTO1oH6O2j88mtxWDxEXRQn/HZQdeA3swpkx5bQMUbB8XQW0AaK7QinSU9jEAlmjJRSbgf73BnUrIGQfdhhpT7PqvegtHr8q9F2U2LY1FRA5S4ZshoX9l3VYFW6RFyTk8GwACLMOCRJesFm/ufKDMwqkwng/bDewTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+wETx1RzKZhiyXs6XkuVCaiMw7ryaf3FENz497+pcUc=;
 b=d1Uc+59hesBx0Hie44MCA20z2mXYmUxh3Ue0O/E1MToAB5PP42Uha90yLCJoSQARV98FhEfE1SWNx/mS506AGc5K7mQDTD6HZeDpo0itPiMFs7bQz8V/HgUWrTYg6dqbYc3Ht8nP1NUx/dnT+7b4k3klZS3F9f3kFa+/k8O8TkJuI7H0Pnr8b1w6d3oFkDAwp7Gklx7IjMBGzSe5QWu8f1Im0A/2R8zRNmPN/G9SadSsUSOXVt+3xVC64m3fNm3UnyGLDIsSpp/WAE2QqAVRj8qbNgX9Fv+B7LNImFGkqWQRm7HZaoolYDVYjRhvlTUEJDyPEhMmbY0nrHTmc16MIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+wETx1RzKZhiyXs6XkuVCaiMw7ryaf3FENz497+pcUc=;
 b=MuhxZMdbJM05Ltn8/MkejffnNimowOWYeXj5HbCF8NEN74ehSRPz46OQE3EzTd/y2Vvxbz8Q6HaAP8h8r9EAgIa3LX+hDgdrPZL1fYPnS40xDUhSuFZa6m94de7Ok85L9us4ZcJqYqJMi+p3lS39tGMNgn6hfcAgCq0TiX79xl4=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by BN6PR11MB1428.namprd11.prod.outlook.com (2603:10b6:405:a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Fri, 25 Feb
 2022 11:24:52 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::dd2e:8a4e:fc77:1e66]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::dd2e:8a4e:fc77:1e66%5]) with mapi id 15.20.5017.023; Fri, 25 Feb 2022
 11:24:52 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	Kalle Valo <kvalo@kernel.org>
Subject: [PATCH 09/10] staging: wfx: ensure HIF request has been sent before
 polling
Date: Fri, 25 Feb 2022 12:24:04 +0100
Message-Id: <20220225112405.355599-10-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220225112405.355599-1-Jerome.Pouiller@silabs.com>
References: <20220225112405.355599-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR3P189CA0052.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:53::27) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1486d1e9-6050-4246-0475-08d9f85170bc
X-MS-TrafficTypeDiagnostic: BN6PR11MB1428:EE_
X-Microsoft-Antispam-PRVS: <BN6PR11MB14282799A00F341F76E29F7C933E9@BN6PR11MB1428.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vj/BIq0uLHmBl2hKBTrGmj9AmH2tmwp9fzRQG5/9wj6wlfA4zQ+oU12MEh8DGx2aMT4c+xlys8ieQ0XRSlcLrAWfX4NzX8jJb0CSNDLREEO6nu6M7CurnkctOzcKi2cH5vqzKUm+V1eQMxSySrc9Gc7omVU+kyIMa1KWnZ/abUM1CjmLxTtD3EjvwvDpjHMGeL0VOL5SQVWeejJsrp6cxhyFRwFb3J2sNd+kAhHrWUG/uJwwHPxDIcLNssvl0lowWFkx7HKiZOZD3YWruuuV+fpbz81YCPwSZMTI7n59BIUFgJXuJ7h3t9DA6QjsvAeWfHYvBQQxlyvL9oyThLUme1wGe94/t/ChC/fNJLjQP+Di1EWYwUf6Y7dpOnQmm6wO3WY0ACisxI/p71yIeYiK19HQ1PNGA9romVL4gbne+yalddJI6oDJCbOFCc8WwU6Lu0vZuw1G0GXnen238CvbxPXDSKjhC5IlZwz/1pMZmDovGYCPzRtpD2O1GVLCYwR3iNKTAW2L9xP/PLZ39ct8H8WUswGpB+O13dNTSUsIwPT+9QcCNaSYEBS62IoKt3zH/DUYp3XVkL9F8Ut2aC6psihOzr9FiI03mUS9MHvgyT23Rf8HjNNXrxdoRvukpbCO1Zr6sdE8XHhrPsC3mru6+hXAhfeo1LEpX8u4ivbx+AyPRiEK6BFh8V0YAs9mAmLZODai41oG3rQ4TY1wRm2SIw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2616005)(36756003)(66574015)(107886003)(83380400001)(6506007)(6512007)(8676002)(26005)(8936002)(2906002)(38350700002)(186003)(5660300002)(38100700002)(1076003)(508600001)(54906003)(66946007)(66556008)(6486002)(66476007)(52116002)(6916009)(86362001)(4326008)(316002)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NTRjbmo4Y0oyTDYrR00zbWhKcCsxTW44MUhWbHBuZ3dhbUIwSFN5SG1aVmpn?=
 =?utf-8?B?SzBJekQ1dXB3NTMwcVRxQWtQc3dVUGF5Vks2R2VLSiszTWQ5RXhubG1Uenlw?=
 =?utf-8?B?MTNlcjhUdlAwT2F6azNTVDVTdElHaXhjbmFyYlZjVVZsT3diWW5oWlowVUhZ?=
 =?utf-8?B?bVErYk0rYnNHMnVwbmd0bFhPUHdGVFpueTltbjJPeEdNaG5TcGt5KzdwZnFE?=
 =?utf-8?B?Q3N1SThnWkFhOGsrU3MrdTVVYzhCcXF5amNRRUgvQUtuMlNpVTRqMThSMGZL?=
 =?utf-8?B?cndBTzQ0Y1V1cllEVmpXeUt2cE5RRXpDelVBMUpacTkrU3JwR3BIQXlwQ3FM?=
 =?utf-8?B?ZVlYTURmbzhYVXdzb1NiQjZlRTJqT0xtWVlhZ29BR0R1b09NSWpuaEp0REFj?=
 =?utf-8?B?TXBXZEhINXRZNXN1WHhMN1IrNnRrY0JtcURudzBneGpSQkpaV09pcVd0VkhI?=
 =?utf-8?B?eThVTHphWkF5R3J1K053UGovOEoveGlRcU9zd3k5S0NVN3F2MG1QY2tCZzNW?=
 =?utf-8?B?RGdNSUo2b2VCNVdRVHYxYXY4OWYwSUV0MThBYXNuZ1hnSGNPb1lRT3ZTbTIv?=
 =?utf-8?B?czZwRmhiRXZndGlrL2VEL0lGWnFnREFxQ2VWOWNUR3IwVXdJOFdGeFIyVEZU?=
 =?utf-8?B?MHJ0amdxSjh0ODNTMFZSQ21VN1N6MzRjd3NzNlJyR21nQWNVMWYrcGJPdW9C?=
 =?utf-8?B?OVRiMU5LcXB1TG9oWWwzNHpZdWRTVTVNRjdXNHBzVVVOanpPRVJGbmlaZTl5?=
 =?utf-8?B?c1lsTnFmU1RuMVFCbEh1Q05DL0dGSjZGQzNnZThjcGpJSENYODdYaW0zSXpY?=
 =?utf-8?B?MXE4bjVTaUFvUUFhenZ2VzZ6cXpoN1dsUEhnbUd4RjFlaU44QUNqbmhyUys0?=
 =?utf-8?B?UW1LbHVUOXlEdFJ6dFJHbzRjd0FmYmNRdXVRS2FwTmh0V1BtbVdTVDA5dGdZ?=
 =?utf-8?B?Y2VTSnVoQUdkVEE2UjR3YU1LbnM3MjB3Q2ZUNlV6VkxOUG9ETzZPaWJVLzMx?=
 =?utf-8?B?SXJwTmlTUUJYWkwyOW1uOXU4ZGVnUnYzOHgwMWFhOEUrRm8vTzY1YVp1SlI1?=
 =?utf-8?B?QmxIdHdveDB0L252S3RPMUM1ZGZtMG5qMU42aSsxWWh3LzhzUmJvUDhjQmlv?=
 =?utf-8?B?TWp3ZDNobHBYQVZuYm5PVjRVS2JZR1ZuT2lCamZFTUNIU3NsbnozZjc2bXVy?=
 =?utf-8?B?RmxTRjhVRmsrM0ZxbndkZ0NBV3ZlS3NOdHRHR0h5bFc1L3BYVVVIUS9wTWht?=
 =?utf-8?B?STBEanlSRFlFRUlvSzlKNHFRQm10LzIvTkZMY0oxVnNZNWVObGVwNFVPVWtD?=
 =?utf-8?B?WmJXMndwSUdZSkowVWxobDJoUzZOTG0zTWNnQTRKaFM1d0RYcHU0VWttS1gz?=
 =?utf-8?B?aTdMVnJBYVphZDgvNEdzUFJoWXB1MS81SnRLWDRaR2w1WVF3OWlyRlloQTVM?=
 =?utf-8?B?WUlhQnVINzJsUXNEYjZORitDeU4vT3dSZjUreUJFVy9zMms1YStvblRSd2dC?=
 =?utf-8?B?UHU1VkQ4UFBna2RCdHJyaXV0VEJ6Wmt1VDV3SDNjS3F0bTZTeEhXZVVsZGxu?=
 =?utf-8?B?NU5DVXMyY3gzUjRhWC9aOGwzVE03cEV5NDRjQkNGckpWbGx3TVBGTktXVm9E?=
 =?utf-8?B?dmhVS0dKdE9FT1VrS0pYY0gwbnlUREFieHRpUkl1TElPaDMxUG04RDZwVEZK?=
 =?utf-8?B?VWIweWlwUlNDN0kwSFQ2NDhuSk51VEhJemtSRFMraE5HVEZtVHc4OXQrYy9F?=
 =?utf-8?B?N2RQbzdpVDk3b0VUcEdPYmhJSnBOcGRRWlpHclJRa2VDS2o1dEpkU25SK3B5?=
 =?utf-8?B?bnRFT0JLRjBPelNKOE5lY1YrMFkzcXRLallPVklaNHNta0p1cFVVVE9vNWtY?=
 =?utf-8?B?dGtMYXBwUjdGU2pxUGZ5TG1yb2NSWEUxVGM0Ulo1c0VTSXBUZ1FSdlRYUWVW?=
 =?utf-8?B?aVJNU0lyMUF4SWpaY2dXcEpBTFpSanQrMStRM2ZyQnphSERHUXJGQ0RCbWU3?=
 =?utf-8?B?Qi9FVDlaZWZkNThzd3dhQ285cEFGS3oxdmhVU1FyTTdUS3JuYlJVYmMrdjVy?=
 =?utf-8?B?dk1JNW1BTFZYUm1nWXg3R3hGWVZNbWdydnJTWUorL3BFYkZ4MVpBMEZYZndK?=
 =?utf-8?B?Q3VuTElTMWtJZjhGU2F6clpEUUVXVzM3Z2FxNjdzeDBQdUNwU1h2T0JYcSs1?=
 =?utf-8?Q?q1O7NKQl/DIfER61Acaz7pc=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1486d1e9-6050-4246-0475-08d9f85170bc
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 11:24:51.8451 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tXiYJhqspmp0srUILO1L9mn5mND768RdzNQDk4ruklTqdL7WtkdjmSdlSwit5aAgHCl5zQuSQRq3PZlRyduSGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1428
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKd2Z4
X2JoX3JlcXVlc3RfdHgoKSBzZW5kIEhJRiByZXF1ZXN0IGFzeW5jaHJvbm91c2x5IHRocm91Z2gg
Ymhfd29yaygpLgpUaGVuIHRoZSBjYWxsZXIgd2lsbCBydW4gd2Z4X2JoX3BvbGxfaXJxKCkgdG8g
cG9sbCB0aGUgYW5zd2VyLgoKSG93ZXZlciBpdCB1c2VsZXNzIHRvIGJ1cm4gQ1BVIGN5Y2xlcyBm
b3IgdGhlIHBvbGxpbmcgd2hpbGUgdGhlIHJlcXVlc3QKaGFzIHlldCBiZWVuIHNlbnQuIFdvcnNl
LCB3ZnhfYmhfcG9sbF9pcnEoKSBtYXkgZ2V0IHRoZSBDUFUgYW5kIHByZXZlbnQKd2Z4X2JoX3Jl
cXVlc3RfdHgoKSB0byBydW4uIFRoaXMgcHJvYmxlbSBoYXMgYmVlbiBvYnNlcnZlZCBvbiBtb25v
IGNvcmUKYXJjaGl0ZWN0dXJlLgoKVGhpcyBmaXJzdCBleGNoYW5nZSBpcyBjb3JyZWN0OgogICAg
a3dvcmtlci91MjoxLTI0ICAgIFswMDBdIC4uLi4gICAgOiBpb19yZWFkMzI6IENPTlRST0w6IDAw
MDAzMDAwCiAgICBrd29ya2VyL3UyOjEtMjQgICAgWzAwMF0gLi4uLiAgICA6IGlvX3JlYWQzMjog
Q09OVFJPTDogMDAwMDMwMDAKICAgIGt3b3JrZXIvdTI6MS0yNCAgICBbMDAwXSAuLi4uICAgIDog
aW9fcmVhZDMyOiBDT05UUk9MOiAwMDAwMzAwNAogICAga3dvcmtlci91MjoxLTI0ICAgIFswMDBd
IC4uLi4gICAgOiBpb19yZWFkMzI6IENPTlRST0w6IDAwMDAzMDA0CiAgICBrd29ya2VyLzA6MUgt
NDAgICAgWzAwMF0gLi4uLiAgICA6IGlvX3JlYWQ6IFFVRVVFOiAwOCAwMCAwOSAwYyAwMCAwMCAw
MCAwMCAzYSA3YiAwMCAzMCAoMTIgYnl0ZXMpCiAgICBrd29ya2VyLzA6MUgtNDAgICAgWzAwMF0g
Li4uLiAgICA6IHBpZ2d5YmFjazogQ09OVFJPTDogMDAwMDMwMDAKICAgIGt3b3JrZXIvMDoxSC00
MCAgICBbMDAwXSAuLi4uICAgIDogaGlmX3JlY3Y6IDA6MjpDTkZfQ09ORklHVVJBVElPTjogMDAg
MDAgMDAgMDAgKDggYnl0ZXMpCiAgICBrd29ya2VyLzA6MUgtNDAgICAgWzAwMF0gLi4uLiAgICA6
IGlvX3JlYWQzMjogQ09ORklHOiAwMzAxMDIwMAogICAga3dvcmtlci8wOjFILTQwICAgIFswMDBd
IC4uLi4gICAgOiBiaF9zdGF0czogSU5EL1JFUS9DTkY6ICAwLyAgMC8gIDEsIFJFUSBpbiBwcm9n
cmVzczogIDAsIFdVUDogcmVsZWFzZQoKLi4uIHdoaWxlIHRoZSBmb2xsb3dpbmcgaXMgbm90Ogog
ICAga3dvcmtlci91MjoxLTI0ICAgIFswMDBdIC4uLi4gICAgOiBpb19yZWFkMzI6IENPTlRST0w6
IDAwMDAzMDAwCiAgICBrd29ya2VyL3UyOjEtMjQgICAgWzAwMF0gLi4uLiAgICA6IGlvX3JlYWQz
MjogQ09OVFJPTDogMDAwMDMwMDAKICAgIGt3b3JrZXIvdTI6MS0yNCAgICBbMDAwXSAuLi4uICAg
IDogaW9fcmVhZDMyOiBDT05UUk9MOiAwMDAwMzAwMAogICAgWy4uLmxvb3AgdW50aWwgdGltZW91
dC4uLl0KICAgIHdmeC1zZGlvIG1tYzA6MDAwMToxOiB0aW1lIG91dCB3aGlsZSBwb2xsaW5nIGNv
bnRyb2wgcmVnaXN0ZXIKClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUu
cG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMgfCAxICsK
IDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy93ZngvYmguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvYmguYwppbmRleCA0YzZiYTljMzQy
YTYuLmJjZWE5ZDViMTE5YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jCisr
KyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvYmguYwpAQCAtMjk1LDYgKzI5NSw3IEBAIHZvaWQgd2Z4
X2JoX3BvbGxfaXJxKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2KQogCXUzMiByZWc7CiAKIAlXQVJOKCF3
ZGV2LT5wb2xsX2lycSwgInVuZXhwZWN0ZWQgSVJRIHBvbGxpbmcgY2FuIG1hc2sgSVJRIik7CisJ
Zmx1c2hfd29ya3F1ZXVlKHN5c3RlbV9oaWdocHJpX3dxKTsKIAlzdGFydCA9IGt0aW1lX2dldCgp
OwogCWZvciAoOzspIHsKIAkJd2Z4X2NvbnRyb2xfcmVnX3JlYWQod2RldiwgJnJlZyk7Ci0tIAoy
LjM0LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
