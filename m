Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C694229C1
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Oct 2021 15:59:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36A3340D84;
	Tue,  5 Oct 2021 13:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eDsLgtqq7P5A; Tue,  5 Oct 2021 13:59:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55FD140784;
	Tue,  5 Oct 2021 13:59:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 702141BF2A5
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 13:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DAF34079F
 for <devel@linuxdriverproject.org>; Tue,  5 Oct 2021 13:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rYZsYaRK1SAm for <devel@linuxdriverproject.org>;
 Tue,  5 Oct 2021 13:55:27 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2062f.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7eab::62f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F3A5F40786
 for <devel@driverdev.osuosl.org>; Tue,  5 Oct 2021 13:55:26 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BqXwhV3KBvNUah3MDNlhv/D1fKsOYpbYkN3qkanBlx1dKuhOX/j14SU9sNBsL2AgzDvxYnZIgc3dFKxJ/S21e3q8yFSdLzTxTySFUZGOrEk+kJLM31O6vobw6L2eYT6ibEQMRHTNloy0zwHZ44IrZccbTt3KrbdzL1SrZCEs2GP0ti88iBgceA+ZiMXehIbGk8Eqc/9JKSFrZvbgnswr7A2Ju4VDv6aHw/Lj3y6GGEv0g2Sl+3ERtvnsSsLTnGgvMbtPv8V1QT4o7YvvX2sA3DL3RM1+JFX++mEFcc1b8rFareeZyhNIULalflmaRjImDnANMdRPCipJosYvssNlrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7rsRS09zoVoAMv/5HX7YkEAEQBOutDX+WjqhIirPVAU=;
 b=bXVfW8/aMd1elZ0SGRLvV039xukd1GY6k+Bsrkw9RohJgbjxyOVfDaoFJSU7KPlFesW4R40NTmpqMXDUTDMPQXy1d21g3BIwu2VI8b4pMxEGipSu6IYzNteT3q36eBt8jCZEgiVdtQFMETtfa5ChDraerR5+URAZJtN6YjWgyhi65JxPGtP7B+/pMtzZL1R99kIuK1p7IOWMeSTY+hdFCbA7ke6xvw2toWWUL1eLdyfIJIuMPCnKlHBk5yNXEtWARn3rscVdSf00r6SZQ7bbFFMuuQKDSpAb/NcVC7xBl6ayJ2C2cn3wKFP8xk+R+4JSAxBGbQnYMCDxRedSAWOG7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7rsRS09zoVoAMv/5HX7YkEAEQBOutDX+WjqhIirPVAU=;
 b=Ez+rAENUlAn3xLICLz8Lcz2em5rJnI9XZ5y18YFZ///7eRz1Rny44g1H0dEJYHCYXTPNs7DddD/7P4+NOQSwfsnAjsLQzL6/cyuB4rlL759CtSy2U+y8uN8PSOfRPe3WMe9USIQ4kCK8WdYpt0zqq4s3sRpLM+dRDnPZ8rC2v2I=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.14; Tue, 5 Oct
 2021 13:55:25 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::31cb:3b13:b0e8:d8f4]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::31cb:3b13:b0e8:d8f4%9]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 13:55:25 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v8 22/24] wfx: add traces.h
Date: Tue,  5 Oct 2021 15:53:58 +0200
Message-Id: <20211005135400.788058-23-Jerome.Pouiller@silabs.com>
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
 15.20.4566.14 via Frontend Transport; Tue, 5 Oct 2021 13:55:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aded9fe6-a833-43c7-4d53-08d98807c808
X-MS-TrafficTypeDiagnostic: PH0PR11MB5642:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <PH0PR11MB5642AE102E530A8D99CD5F7F93AF9@PH0PR11MB5642.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:66;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mdFpqRXwQ2MVvx3b8A30G/tboNjBIT/9AvomjK0H8sa0WjowOXVWlk6S3yECuw9H/vC9STPz4E7fu1+gChaBp8kFSSnLcIVkFwQX8BHdeLEqD60X229zfTHtr0j4krFcxHqUgRK8rlkxV7LK6iD6g9lHAv43S7rY+dH/NP6NSIURc9j1eXn4NIQxXiB6nRH6LksLsbf9QXPSL/yPkDzzMmqhmnLme1rjo0WOwd/rUNJehfsXhsJSRC3KuUwYYAZlLmdOvVuVotqM86UgdKoVy30mvnEVh/TE2cVNgnZT548gK/CEvP/D6vHbN7L21MilqFSuhNfFuXnzDLglky4y8VUhr9fjKLV9YPhQ28pyCS7klVQ7qyM+LmEdmxvRGNe217q8R+ALaQvu2Y+OzlGWVv7o3tS/DzKLYi0wgl4M2B4gfj3t+6CrIFxiSbZ66YEMKpaA3Q4riUCE3b6ZA3SWefx1xq7uawMRsp2HL04qcBYpdTL/DMliAKIogsVw7sr2QnMGi9U3tJc6hmPH+2a2fAdszlpC1AOPEVOhG1pfilqh0W7GJBpntb8dW3NKsK3uAFB5ZL6ILSAITj6mtwL9NNesI0gkW3sLkWJxZDbG9GTHtBwvAw9XGK+AUiVD5csMbJc9BCCqw2o7HHqDVofkI9GKxje5RjOuYu7X6uz2lrv29n4tv2teGN1Vlb8DWdcgrEkfUz5c8gxDTA6IUS+yE2acV+/+FdGN/hQ0gAO6FOw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(5660300002)(26005)(30864003)(52116002)(7696005)(956004)(8676002)(2616005)(38100700002)(8936002)(38350700002)(4326008)(6666004)(186003)(7416002)(6916009)(66574015)(107886003)(83380400001)(36756003)(66476007)(66556008)(508600001)(2906002)(316002)(6486002)(1076003)(66946007)(54906003)(21314003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTdGdFl4bjh5Q3p3OFhVeHVrd3JrMU5Dc2hkTmZMSXVkdE0rcmxXQVZFTmpp?=
 =?utf-8?B?bGt1YndLR0ZNZG5YSVVBS1NTVUVFSHFoK2FhSE9qYTlWbENyaWY3bzBEVjRG?=
 =?utf-8?B?Zllhbk5IUFhySjR3Y2ZoRk9KVnB4dDRqNzhuWDdta1QxTlNaUlA2dEpkcGVG?=
 =?utf-8?B?Unh3TzFLU3dhVFRHejVKL3hzcjY0SkhJcW05RmY2eDRLQnlYcXdqY2FzTXdK?=
 =?utf-8?B?STlGZVQ0a0thc2NNSjBvN29wV0xxWnoyckZDbE9HakFiUGxMSC8zVmxDRjky?=
 =?utf-8?B?UWVIVjJRWmJRbzFwSjhDbGJzS0ptNHlsOUMyaHZsT25NeDZCSm9pbWo1K1NK?=
 =?utf-8?B?NytxcnpTeWkyblJhcG9GOFNIaDNINVBnemVDck1RRjFNS043RklHaE9CRUxy?=
 =?utf-8?B?VzdmQWhxeXBqZXR0aWgwMVA0T1pSYk5wSjFTVkhkU3FZNVc3YUllcDBiMjkx?=
 =?utf-8?B?WjQzNkozWHpkcERwMzdCQTJUaXpzaG5NdnF5Qnd6YitCdEVPZjRCWWlOeDd3?=
 =?utf-8?B?WUlHc1MvSlk2ZkQveGhLUTJWZGI1aHVNOFRzdTJTL3JJV2JyNG1kVmptdFNC?=
 =?utf-8?B?empGRVhFMjkzSDRVWlFndHVsdHNVODFUZkg4Z3JKblRWaGd5cjAxdlN1d0kr?=
 =?utf-8?B?eVNTUHBWa0gzR1JzQ3EzMHNoVDZSK09aWFc5d0VPUS9iR3M4ck1xdTNtYXQz?=
 =?utf-8?B?TXZPSGJETjZweXBmZ0phc1k3dzhFd3dvbVEyenJUL1Rpd1RxUWlsd0VyUEkx?=
 =?utf-8?B?cHhSbG8vd1YwelJLcTEzR0pHbytQVFlUOUM4M2t2Yy9FY3dQV1VxanNtWlNH?=
 =?utf-8?B?RnhuVGJKWEsyYjhEZzArSE0xVFd6M2pOSytxbGtYYzVwKzV5ZlpqYzN4dGEr?=
 =?utf-8?B?Z05MdG9XUjhyVUVjWlpEdDY4YTJybENPYzh1OWsvQTIwaUNqa09zUHBEMGo5?=
 =?utf-8?B?bFJvQ05iczAvQXFxdXBVNkFYbFZNdkt5MExFeHdrdWVKRGkraUFOWitUM1lM?=
 =?utf-8?B?a0Z4bDdndWZPNXNxRzh3VnoxbWltbWVTRTQwTUFJdEZwRXdPSHdLcTd1OTd5?=
 =?utf-8?B?MEEwRmg1d1ozMm8raDV1UGtPdDUwQnJMRGcvZGhMVDR5dVhCNWlCUUhqNVEy?=
 =?utf-8?B?TkNyOGx6UUhsOXN0cWRvSnh5aExBaEFRSXpuNFdqMk9tR3Y3WnNKc054b2lS?=
 =?utf-8?B?S010MWdid05oL1NqM0NveVVKK0xoZk5RWDBKdVlqUkdWeFc4eEZvODlGcHpQ?=
 =?utf-8?B?MHpiRFo3Mi9ibzBRQTB0czBLYVJSUFlNK3NnaXp2Z3MzbjJJNW9vVGlwR0w4?=
 =?utf-8?B?RFEzdEViMXowbXpxQWlWM29JalR3cmYzZ2cxMUJ3aDBMLzRwVzFaTFNYU1Fj?=
 =?utf-8?B?WEJRWlpybmN2TTFxaG5RdXYxRDJNdU1XTVoxQU94WEtnOUcxTHlwaHN1UTBM?=
 =?utf-8?B?dDBUSy9HV2JjcWY2SUlqUk56eERxNVh5b2pqTmVGNVBocm9qTFRZQk44Mytm?=
 =?utf-8?B?T05sMUFXQmpkVzByZXRJWHA2eGJHc1JUSG9ORlF6L2drWTUrQWxmL1hTN0Fm?=
 =?utf-8?B?NFZkSmtLNXRpVmxDTEhzSEdldVFIOUNNTXg3VXNQS01tOFJaT1JBU0MyZzIy?=
 =?utf-8?B?OUw4KzZOMEdZR1pZTUkrZ295SXc5YWxMMlUzMDdVdTV3b00xTzdvcWc0MlRB?=
 =?utf-8?B?YmJZWWVQTWNZMWp2S1cyVHJPUmtZcHpBL0FKRmE4YmRSRGU5ZDRTZ25xN0xJ?=
 =?utf-8?Q?qJ7/c9zc9UoQKUy9jWtoeAMza6yRsLf1u7rSCzR?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aded9fe6-a833-43c7-4d53-08d98807c808
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2021 13:55:25.3095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FvRzi8CeKpDSx50yhS7dxoJQFRQGhq+kobEu/lwhWp/gCJw6KUyJMeAwsXhA5IEHjBUIYRjf8zvJjfLIW4Ul2g==
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
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvdHJhY2VzLmggfCA1MDEgKysr
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1MDEgaW5zZXJ0aW9ucygrKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvdHJhY2Vz
LmgKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3RyYWNlcy5o
IGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC90cmFjZXMuaApuZXcgZmlsZSBtb2Rl
IDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjk5YmQxODA4MTExZQotLS0gL2Rldi9udWxsCisr
KyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvdHJhY2VzLmgKQEAgLTAsMCArMSw1
MDEgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KKy8qCisg
KiBUcmFjZXBvaW50cyBkZWZpbml0aW9ucy4KKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTgtMjAy
MCwgU2lsaWNvbiBMYWJvcmF0b3JpZXMsIEluYy4KKyAqLworCisjdW5kZWYgVFJBQ0VfU1lTVEVN
CisjZGVmaW5lIFRSQUNFX1NZU1RFTSB3ZngKKworI2lmICFkZWZpbmVkKF9XRlhfVFJBQ0VfSCkg
fHwgZGVmaW5lZChUUkFDRV9IRUFERVJfTVVMVElfUkVBRCkKKyNkZWZpbmUgX1dGWF9UUkFDRV9I
CisKKyNpbmNsdWRlIDxsaW51eC90cmFjZXBvaW50Lmg+CisjaW5jbHVkZSA8bmV0L21hYzgwMjEx
Lmg+CisKKyNpbmNsdWRlICJidXMuaCIKKyNpbmNsdWRlICJoaWZfYXBpX2NtZC5oIgorI2luY2x1
ZGUgImhpZl9hcGlfbWliLmgiCisKKy8qIFRoZSBoZWxsIGJlbG93IG5lZWQgc29tZSBleHBsYW5h
dGlvbnMuIEZvciBlYWNoIHN5bWJvbGljIG51bWJlciwgd2UgbmVlZCB0bworICogZGVmaW5lIGl0
IHdpdGggVFJBQ0VfREVGSU5FX0VOVU0oKSBhbmQgaW4gYSBsaXN0IGZvciBfX3ByaW50X3N5bWJv
bGljLgorICoKKyAqICAgMS4gRGVmaW5lIGEgbmV3IG1hY3JvIHRoYXQgY2FsbCBUUkFDRV9ERUZJ
TkVfRU5VTSgpOgorICoKKyAqICAgICAgICAgICNkZWZpbmUgeHh4X25hbWUoc3ltKSBUUkFDRV9E
RUZJTkVfRU5VTShzeW0pOworICoKKyAqICAgMi4gRGVmaW5lIGxpc3Qgb2YgYWxsIHN5bWJvbHM6
CisgKgorICogICAgICAgICAgI2RlZmluZSBsaXN0X25hbWVzICAgICBcCisgKiAgICAgICAgICAg
ICAuLi4gICAgICAgICAgICAgICAgIFwKKyAqICAgICAgICAgICAgIHh4eF9uYW1lKFhYWCkgICAg
ICAgXAorICogICAgICAgICAgICAgLi4uCisgKgorICogICAzLiBJbnN0YW50aWF0ZSB0aGF0IGxp
c3RfbmFtZXM6CisgKgorICogICAgICAgICAgbGlzdF9uYW1lcworICoKKyAqICAgNC4gUmVkZWZp
bmUgeHh4X25hbWUoKSBhcyBhbiBlbnRyeSBvZiBhcnJheSBmb3IgX19wcmludF9zeW1ib2xpYygp
CisgKgorICogICAgICAgICAgI3VuZGVmIHh4eF9uYW1lCisgKiAgICAgICAgICAjZGVmaW5lIHh4
eF9uYW1lKG1zZykgeyBtc2csICNtc2cgfSwKKyAqCisgKiAgIDUuIGxpc3RfbmFtZSBjYW4gbm93
IG5lYXJseSBiZSB1c2VkIHdpdGggX19wcmludF9zeW1ib2xpYygpIGJ1dCwKKyAqICAgICAgX19w
cmludF9zeW1ib2xpYygpIGRpc2xpa2UgbGFzdCBjb21tYSBvZiBsaXN0LiBTbyB3ZSBkZWZpbmUg
YSBuZXcgbGlzdAorICogICAgICB3aXRoIGEgZHVtbXkgZWxlbWVudDoKKyAqCisgKiAgICAgICAg
ICAjZGVmaW5lIGxpc3RfZm9yX3ByaW50X3N5bWJvbGljIGxpc3RfbmFtZXMgeyAtMSwgTlVMTCB9
CisgKi8KKworI2RlZmluZSBfaGlmX21zZ19saXN0ICAgICAgICAgICAgICAgICAgICAgICBcCisJ
aGlmX2NuZl9uYW1lKEFERF9LRVkpICAgICAgICAgICAgICAgXAorCWhpZl9jbmZfbmFtZShCRUFD
T05fVFJBTlNNSVQpICAgICAgIFwKKwloaWZfY25mX25hbWUoRURDQV9RVUVVRV9QQVJBTVMpICAg
ICBcCisJaGlmX2NuZl9uYW1lKEpPSU4pICAgICAgICAgICAgICAgICAgXAorCWhpZl9jbmZfbmFt
ZShNQVBfTElOSykgICAgICAgICAgICAgIFwKKwloaWZfY25mX25hbWUoUkVBRF9NSUIpICAgICAg
ICAgICAgICBcCisJaGlmX2NuZl9uYW1lKFJFTU9WRV9LRVkpICAgICAgICAgICAgXAorCWhpZl9j
bmZfbmFtZShSRVNFVCkgICAgICAgICAgICAgICAgIFwKKwloaWZfY25mX25hbWUoU0VUX0JTU19Q
QVJBTVMpICAgICAgICBcCisJaGlmX2NuZl9uYW1lKFNFVF9QTV9NT0RFKSAgICAgICAgICAgXAor
CWhpZl9jbmZfbmFtZShTVEFSVCkgICAgICAgICAgICAgICAgIFwKKwloaWZfY25mX25hbWUoU1RB
UlRfU0NBTikgICAgICAgICAgICBcCisJaGlmX2NuZl9uYW1lKFNUT1BfU0NBTikgICAgICAgICAg
ICAgXAorCWhpZl9jbmZfbmFtZShUWCkgICAgICAgICAgICAgICAgICAgIFwKKwloaWZfY25mX25h
bWUoTVVMVElfVFJBTlNNSVQpICAgICAgICBcCisJaGlmX2NuZl9uYW1lKFVQREFURV9JRSkgICAg
ICAgICAgICAgXAorCWhpZl9jbmZfbmFtZShXUklURV9NSUIpICAgICAgICAgICAgIFwKKwloaWZf
Y25mX25hbWUoQ09ORklHVVJBVElPTikgICAgICAgICBcCisJaGlmX2NuZl9uYW1lKENPTlRST0xf
R1BJTykgICAgICAgICAgXAorCWhpZl9jbmZfbmFtZShQUkVWRU5UX1JPTExCQUNLKSAgICAgIFwK
KwloaWZfY25mX25hbWUoU0VUX1NMX01BQ19LRVkpICAgICAgICBcCisJaGlmX2NuZl9uYW1lKFNM
X0NPTkZJR1VSRSkgICAgICAgICAgXAorCWhpZl9jbmZfbmFtZShTTF9FWENIQU5HRV9QVUJfS0VZ
UykgIFwKKwloaWZfY25mX25hbWUoU0hVVF9ET1dOKSAgICAgICAgICAgICBcCisJaGlmX2luZF9u
YW1lKEVWRU5UKSAgICAgICAgICAgICAgICAgXAorCWhpZl9pbmRfbmFtZShKT0lOX0NPTVBMRVRF
KSAgICAgICAgIFwKKwloaWZfaW5kX25hbWUoUlgpICAgICAgICAgICAgICAgICAgICBcCisJaGlm
X2luZF9uYW1lKFNDQU5fQ01QTCkgICAgICAgICAgICAgXAorCWhpZl9pbmRfbmFtZShTRVRfUE1f
TU9ERV9DTVBMKSAgICAgIFwKKwloaWZfaW5kX25hbWUoU1VTUEVORF9SRVNVTUVfVFgpICAgICBc
CisJaGlmX2luZF9uYW1lKFNMX0VYQ0hBTkdFX1BVQl9LRVlTKSAgXAorCWhpZl9pbmRfbmFtZShF
UlJPUikgICAgICAgICAgICAgICAgIFwKKwloaWZfaW5kX25hbWUoRVhDRVBUSU9OKSAgICAgICAg
ICAgICBcCisJaGlmX2luZF9uYW1lKEdFTkVSSUMpICAgICAgICAgICAgICAgXAorCWhpZl9pbmRf
bmFtZShXQUtFVVApICAgICAgICAgICAgICAgIFwKKwloaWZfaW5kX25hbWUoU1RBUlRVUCkKKwor
I2RlZmluZSBoaWZfbXNnX2xpc3RfZW51bSBfaGlmX21zZ19saXN0CisKKyN1bmRlZiBoaWZfY25m
X25hbWUKKyN1bmRlZiBoaWZfaW5kX25hbWUKKyNkZWZpbmUgaGlmX2NuZl9uYW1lKG1zZykgVFJB
Q0VfREVGSU5FX0VOVU0oSElGX0NORl9JRF8jI21zZyk7CisjZGVmaW5lIGhpZl9pbmRfbmFtZSht
c2cpIFRSQUNFX0RFRklORV9FTlVNKEhJRl9JTkRfSURfIyNtc2cpOworaGlmX21zZ19saXN0X2Vu
dW0KKyN1bmRlZiBoaWZfY25mX25hbWUKKyN1bmRlZiBoaWZfaW5kX25hbWUKKyNkZWZpbmUgaGlm
X2NuZl9uYW1lKG1zZykgeyBISUZfQ05GX0lEXyMjbXNnLCAjbXNnIH0sCisjZGVmaW5lIGhpZl9p
bmRfbmFtZShtc2cpIHsgSElGX0lORF9JRF8jI21zZywgI21zZyB9LAorI2RlZmluZSBoaWZfbXNn
X2xpc3QgaGlmX21zZ19saXN0X2VudW0geyAtMSwgTlVMTCB9CisKKyNkZWZpbmUgX2hpZl9taWJf
bGlzdCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAorCWhpZl9taWJfbmFtZShBUlBf
SVBfQUREUkVTU0VTX1RBQkxFKSAgICAgICAgIFwKKwloaWZfbWliX25hbWUoQVJQX0tFRVBfQUxJ
VkVfUEVSSU9EKSAgICAgICAgICBcCisJaGlmX21pYl9uYW1lKEJFQUNPTl9GSUxURVJfRU5BQkxF
KSAgICAgICAgICAgXAorCWhpZl9taWJfbmFtZShCRUFDT05fRklMVEVSX1RBQkxFKSAgICAgICAg
ICAgIFwKKwloaWZfbWliX25hbWUoQkVBQ09OX1NUQVRTKSAgICAgICAgICAgICAgICAgICBcCisJ
aGlmX21pYl9uYW1lKEJFQUNPTl9XQUtFVVBfUEVSSU9EKSAgICAgICAgICAgXAorCWhpZl9taWJf
bmFtZShCTE9DS19BQ0tfUE9MSUNZKSAgICAgICAgICAgICAgIFwKKwloaWZfbWliX25hbWUoQ0NB
X0NPTkZJRykgICAgICAgICAgICAgICAgICAgICBcCisJaGlmX21pYl9uYW1lKENPTkZJR19EQVRB
X0ZJTFRFUikgICAgICAgICAgICAgXAorCWhpZl9taWJfbmFtZShDT1VOVEVSU19UQUJMRSkgICAg
ICAgICAgICAgICAgIFwKKwloaWZfbWliX25hbWUoQ1VSUkVOVF9UWF9QT1dFUl9MRVZFTCkgICAg
ICAgICBcCisJaGlmX21pYl9uYW1lKERPVDExX01BQ19BRERSRVNTKSAgICAgICAgICAgICAgXAor
CWhpZl9taWJfbmFtZShET1QxMV9NQVhfUkVDRUlWRV9MSUZFVElNRSkgICAgIFwKKwloaWZfbWli
X25hbWUoRE9UMTFfTUFYX1RSQU5TTUlUX01TRFVfTElGRVRJTUUpIFwKKwloaWZfbWliX25hbWUo
RE9UMTFfUlRTX1RIUkVTSE9MRCkgICAgICAgICAgICBcCisJaGlmX21pYl9uYW1lKERPVDExX1dF
UF9ERUZBVUxUX0tFWV9JRCkgICAgICAgXAorCWhpZl9taWJfbmFtZShFVEhFUlRZUEVfREFUQUZS
QU1FX0NPTkRJVElPTikgIFwKKwloaWZfbWliX25hbWUoRVhURU5ERURfQ09VTlRFUlNfVEFCTEUp
ICAgICAgICBcCisJaGlmX21pYl9uYW1lKEdMX0JMT0NLX0FDS19JTkZPKSAgICAgICAgICAgICAg
XAorCWhpZl9taWJfbmFtZShHTF9PUEVSQVRJT05BTF9QT1dFUl9NT0RFKSAgICAgIFwKKwloaWZf
bWliX25hbWUoR0xfU0VUX01VTFRJX01TRykgICAgICAgICAgICAgICBcCisJaGlmX21pYl9uYW1l
KEdSUF9TRVFfQ09VTlRFUikgICAgICAgICAgICAgICAgXAorCWhpZl9taWJfbmFtZShJTkFDVElW
SVRZX1RJTUVSKSAgICAgICAgICAgICAgIFwKKwloaWZfbWliX25hbWUoSU5URVJGQUNFX1BST1RF
Q1RJT04pICAgICAgICAgICBcCisJaGlmX21pYl9uYW1lKElQVjRfQUREUl9EQVRBRlJBTUVfQ09O
RElUSU9OKSAgXAorCWhpZl9taWJfbmFtZShJUFY2X0FERFJfREFUQUZSQU1FX0NPTkRJVElPTikg
IFwKKwloaWZfbWliX25hbWUoS0VFUF9BTElWRV9QRVJJT0QpICAgICAgICAgICAgICBcCisJaGlm
X21pYl9uYW1lKE1BQ19BRERSX0RBVEFGUkFNRV9DT05ESVRJT04pICAgXAorCWhpZl9taWJfbmFt
ZShNQUdJQ19EQVRBRlJBTUVfQ09ORElUSU9OKSAgICAgIFwKKwloaWZfbWliX25hbWUoTUFYX1RY
X1BPV0VSX0xFVkVMKSAgICAgICAgICAgICBcCisJaGlmX21pYl9uYW1lKE5PTl9FUlBfUFJPVEVD
VElPTikgICAgICAgICAgICAgXAorCWhpZl9taWJfbmFtZShOU19JUF9BRERSRVNTRVNfVEFCTEUp
ICAgICAgICAgIFwKKwloaWZfbWliX25hbWUoT1ZFUlJJREVfSU5URVJOQUxfVFhfUkFURSkgICAg
ICBcCisJaGlmX21pYl9uYW1lKFBPUlRfREFUQUZSQU1FX0NPTkRJVElPTikgICAgICAgXAorCWhp
Zl9taWJfbmFtZShQUk9URUNURURfTUdNVF9QT0xJQ1kpICAgICAgICAgIFwKKwloaWZfbWliX25h
bWUoUkNQSV9SU1NJX1RIUkVTSE9MRCkgICAgICAgICAgICBcCisJaGlmX21pYl9uYW1lKFJYX0ZJ
TFRFUikgICAgICAgICAgICAgICAgICAgICAgXAorCWhpZl9taWJfbmFtZShTRVRfQVNTT0NJQVRJ
T05fTU9ERSkgICAgICAgICAgIFwKKwloaWZfbWliX25hbWUoU0VUX0RBVEFfRklMVEVSSU5HKSAg
ICAgICAgICAgICBcCisJaGlmX21pYl9uYW1lKFNFVF9IVF9QUk9URUNUSU9OKSAgICAgICAgICAg
ICAgXAorCWhpZl9taWJfbmFtZShTRVRfVFhfUkFURV9SRVRSWV9QT0xJQ1kpICAgICAgIFwKKwlo
aWZfbWliX25hbWUoU0VUX1VBUFNEX0lORk9STUFUSU9OKSAgICAgICAgICBcCisJaGlmX21pYl9u
YW1lKFNMT1RfVElNRSkgICAgICAgICAgICAgICAgICAgICAgXAorCWhpZl9taWJfbmFtZShTVEFU
SVNUSUNTX1RBQkxFKSAgICAgICAgICAgICAgIFwKKwloaWZfbWliX25hbWUoVEVNUExBVEVfRlJB
TUUpICAgICAgICAgICAgICAgICBcCisJaGlmX21pYl9uYW1lKFRTRl9DT1VOVEVSKSAgICAgICAg
ICAgICAgICAgICAgXAorCWhpZl9taWJfbmFtZShVQ19NQ19CQ19EQVRBRlJBTUVfQ09ORElUSU9O
KQorCisjZGVmaW5lIGhpZl9taWJfbGlzdF9lbnVtIF9oaWZfbWliX2xpc3QKKworI3VuZGVmIGhp
Zl9taWJfbmFtZQorI2RlZmluZSBoaWZfbWliX25hbWUobWliKSBUUkFDRV9ERUZJTkVfRU5VTShI
SUZfTUlCX0lEXyMjbWliKTsKK2hpZl9taWJfbGlzdF9lbnVtCisjdW5kZWYgaGlmX21pYl9uYW1l
CisjZGVmaW5lIGhpZl9taWJfbmFtZShtaWIpIHsgSElGX01JQl9JRF8jI21pYiwgI21pYiB9LAor
I2RlZmluZSBoaWZfbWliX2xpc3QgaGlmX21pYl9saXN0X2VudW0geyAtMSwgTlVMTCB9CisKK0RF
Q0xBUkVfRVZFTlRfQ0xBU1MoaGlmX2RhdGEsCisJVFBfUFJPVE8oY29uc3Qgc3RydWN0IHdmeF9o
aWZfbXNnICpoaWYsIGludCB0eF9maWxsX2xldmVsLCBib29sIGlzX3JlY3YpLAorCVRQX0FSR1Mo
aGlmLCB0eF9maWxsX2xldmVsLCBpc19yZWN2KSwKKwlUUF9TVFJVQ1RfX2VudHJ5KAorCQlfX2Zp
ZWxkKGludCwgdHhfZmlsbF9sZXZlbCkKKwkJX19maWVsZChpbnQsIG1zZ19pZCkKKwkJX19maWVs
ZChjb25zdCBjaGFyICosIG1zZ190eXBlKQorCQlfX2ZpZWxkKGludCwgbXNnX2xlbikKKwkJX19m
aWVsZChpbnQsIGJ1Zl9sZW4pCisJCV9fZmllbGQoaW50LCBpZl9pZCkKKwkJX19maWVsZChpbnQs
IG1pYikKKwkJX19hcnJheSh1OCwgYnVmLCAxMjgpCisJKSwKKwlUUF9mYXN0X2Fzc2lnbigKKwkJ
aW50IGhlYWRlcl9sZW47CisKKwkJX19lbnRyeS0+dHhfZmlsbF9sZXZlbCA9IHR4X2ZpbGxfbGV2
ZWw7CisJCV9fZW50cnktPm1zZ19sZW4gPSBsZTE2X3RvX2NwdShoaWYtPmxlbik7CisJCV9fZW50
cnktPm1zZ19pZCA9IGhpZi0+aWQ7CisJCV9fZW50cnktPmlmX2lkID0gaGlmLT5pbnRlcmZhY2U7
CisJCWlmIChpc19yZWN2KQorCQkJX19lbnRyeS0+bXNnX3R5cGUgPSBfX2VudHJ5LT5tc2dfaWQg
JiAweDgwID8gIklORCIgOiAiQ05GIjsKKwkJZWxzZQorCQkJX19lbnRyeS0+bXNnX3R5cGUgPSAi
UkVRIjsKKwkJaWYgKCFpc19yZWN2ICYmCisJCSAgICAoX19lbnRyeS0+bXNnX2lkID09IEhJRl9S
RVFfSURfUkVBRF9NSUIgfHwKKwkJICAgICBfX2VudHJ5LT5tc2dfaWQgPT0gSElGX1JFUV9JRF9X
UklURV9NSUIpKSB7CisJCQlfX2VudHJ5LT5taWIgPSBsZTE2X3RvX2NwdXAoKF9fbGUxNiAqKWhp
Zi0+Ym9keSk7CisJCQloZWFkZXJfbGVuID0gNDsKKwkJfSBlbHNlIHsKKwkJCV9fZW50cnktPm1p
YiA9IC0xOworCQkJaGVhZGVyX2xlbiA9IDA7CisJCX0KKwkJX19lbnRyeS0+YnVmX2xlbiA9IG1p
bl90KGludCwgX19lbnRyeS0+bXNnX2xlbiwKKwkJCQkJIHNpemVvZihfX2VudHJ5LT5idWYpKQor
CQkJCSAgIC0gc2l6ZW9mKHN0cnVjdCB3ZnhfaGlmX21zZykgLSBoZWFkZXJfbGVuOworCQltZW1j
cHkoX19lbnRyeS0+YnVmLCBoaWYtPmJvZHkgKyBoZWFkZXJfbGVuLCBfX2VudHJ5LT5idWZfbGVu
KTsKKwkpLAorCVRQX3ByaW50aygiJWQ6JWQ6JXNfJXMlcyVzOiAlcyVzICglZCBieXRlcykiLAor
CQlfX2VudHJ5LT50eF9maWxsX2xldmVsLAorCQlfX2VudHJ5LT5pZl9pZCwKKwkJX19lbnRyeS0+
bXNnX3R5cGUsCisJCV9fcHJpbnRfc3ltYm9saWMoX19lbnRyeS0+bXNnX2lkLCBoaWZfbXNnX2xp
c3QpLAorCQlfX2VudHJ5LT5taWIgIT0gLTEgPyAiLyIgOiAiIiwKKwkJX19lbnRyeS0+bWliICE9
IC0xID8gX19wcmludF9zeW1ib2xpYyhfX2VudHJ5LT5taWIsIGhpZl9taWJfbGlzdCkgOiAiIiwK
KwkJX19wcmludF9oZXgoX19lbnRyeS0+YnVmLCBfX2VudHJ5LT5idWZfbGVuKSwKKwkJX19lbnRy
eS0+bXNnX2xlbiA+IHNpemVvZihfX2VudHJ5LT5idWYpID8gIiAuLi4iIDogIiIsCisJCV9fZW50
cnktPm1zZ19sZW4KKwkpCispOworREVGSU5FX0VWRU5UKGhpZl9kYXRhLCBoaWZfc2VuZCwKKwlU
UF9QUk9UTyhjb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9tc2cgKmhpZiwgaW50IHR4X2ZpbGxfbGV2ZWws
IGJvb2wgaXNfcmVjdiksCisJVFBfQVJHUyhoaWYsIHR4X2ZpbGxfbGV2ZWwsIGlzX3JlY3YpKTsK
KyNkZWZpbmUgX3RyYWNlX2hpZl9zZW5kKGhpZiwgdHhfZmlsbF9sZXZlbClcCisJdHJhY2VfaGlm
X3NlbmQoaGlmLCB0eF9maWxsX2xldmVsLCBmYWxzZSkKK0RFRklORV9FVkVOVChoaWZfZGF0YSwg
aGlmX3JlY3YsCisJVFBfUFJPVE8oY29uc3Qgc3RydWN0IHdmeF9oaWZfbXNnICpoaWYsIGludCB0
eF9maWxsX2xldmVsLCBib29sIGlzX3JlY3YpLAorCVRQX0FSR1MoaGlmLCB0eF9maWxsX2xldmVs
LCBpc19yZWN2KSk7CisjZGVmaW5lIF90cmFjZV9oaWZfcmVjdihoaWYsIHR4X2ZpbGxfbGV2ZWwp
XAorCXRyYWNlX2hpZl9yZWN2KGhpZiwgdHhfZmlsbF9sZXZlbCwgdHJ1ZSkKKworI2RlZmluZSB3
ZnhfcmVnX2xpc3RfZW51bSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFwKKwl3Znhf
cmVnX25hbWUoV0ZYX1JFR19DT05GSUcsICAgICAgICJDT05GSUciKSAgICAgIFwKKwl3ZnhfcmVn
X25hbWUoV0ZYX1JFR19DT05UUk9MLCAgICAgICJDT05UUk9MIikgICAgIFwKKwl3ZnhfcmVnX25h
bWUoV0ZYX1JFR19JTl9PVVRfUVVFVUUsICJRVUVVRSIpICAgICAgIFwKKwl3ZnhfcmVnX25hbWUo
V0ZYX1JFR19BSEJfRFBPUlQsICAgICJBSEIiKSAgICAgICAgIFwKKwl3ZnhfcmVnX25hbWUoV0ZY
X1JFR19CQVNFX0FERFIsICAgICJCQVNFX0FERFIiKSAgIFwKKwl3ZnhfcmVnX25hbWUoV0ZYX1JF
R19TUkFNX0RQT1JULCAgICJTUkFNIikgICAgICAgIFwKKwl3ZnhfcmVnX25hbWUoV0ZYX1JFR19T
RVRfR0VOX1JfVywgICJTRVRfR0VOX1JfVyIpIFwKKwl3ZnhfcmVnX25hbWUoV0ZYX1JFR19GUkFN
RV9PVVQsICAgICJGUkFNRV9PVVQiKQorCisjdW5kZWYgd2Z4X3JlZ19uYW1lCisjZGVmaW5lIHdm
eF9yZWdfbmFtZShzeW0sIG5hbWUpIFRSQUNFX0RFRklORV9FTlVNKHN5bSk7Cit3ZnhfcmVnX2xp
c3RfZW51bQorI3VuZGVmIHdmeF9yZWdfbmFtZQorI2RlZmluZSB3ZnhfcmVnX25hbWUoc3ltLCBu
YW1lKSB7IHN5bSwgbmFtZSB9LAorI2RlZmluZSB3ZnhfcmVnX2xpc3Qgd2Z4X3JlZ19saXN0X2Vu
dW0geyAtMSwgTlVMTCB9CisKK0RFQ0xBUkVfRVZFTlRfQ0xBU1MoaW9fZGF0YSwKKwlUUF9QUk9U
TyhpbnQgcmVnLCBpbnQgYWRkciwgY29uc3Qgdm9pZCAqaW9fYnVmLCBzaXplX3QgbGVuKSwKKwlU
UF9BUkdTKHJlZywgYWRkciwgaW9fYnVmLCBsZW4pLAorCVRQX1NUUlVDVF9fZW50cnkoCisJCV9f
ZmllbGQoaW50LCByZWcpCisJCV9fZmllbGQoaW50LCBhZGRyKQorCQlfX2ZpZWxkKGludCwgbXNn
X2xlbikKKwkJX19maWVsZChpbnQsIGJ1Zl9sZW4pCisJCV9fYXJyYXkodTgsIGJ1ZiwgMzIpCisJ
CV9fYXJyYXkodTgsIGFkZHJfc3RyLCAxMCkKKwkpLAorCVRQX2Zhc3RfYXNzaWduKAorCQlfX2Vu
dHJ5LT5yZWcgPSByZWc7CisJCV9fZW50cnktPmFkZHIgPSBhZGRyOworCQlfX2VudHJ5LT5tc2df
bGVuID0gbGVuOworCQlfX2VudHJ5LT5idWZfbGVuID0gbWluX3QoaW50LCBzaXplb2YoX19lbnRy
eS0+YnVmKSwKKwkJCQkJIF9fZW50cnktPm1zZ19sZW4pOworCQltZW1jcHkoX19lbnRyeS0+YnVm
LCBpb19idWYsIF9fZW50cnktPmJ1Zl9sZW4pOworCQlpZiAoYWRkciA+PSAwKQorCQkJc25wcmlu
dGYoX19lbnRyeS0+YWRkcl9zdHIsIDEwLCAiLyUwOHgiLCBhZGRyKTsKKwkJZWxzZQorCQkJX19l
bnRyeS0+YWRkcl9zdHJbMF0gPSAwOworCSksCisJVFBfcHJpbnRrKCIlcyVzOiAlcyVzICglZCBi
eXRlcykiLAorCQlfX3ByaW50X3N5bWJvbGljKF9fZW50cnktPnJlZywgd2Z4X3JlZ19saXN0KSwK
KwkJX19lbnRyeS0+YWRkcl9zdHIsCisJCV9fcHJpbnRfaGV4KF9fZW50cnktPmJ1ZiwgX19lbnRy
eS0+YnVmX2xlbiksCisJCV9fZW50cnktPm1zZ19sZW4gPiBzaXplb2YoX19lbnRyeS0+YnVmKSA/
ICIgLi4uIiA6ICIiLAorCQlfX2VudHJ5LT5tc2dfbGVuCisJKQorKTsKK0RFRklORV9FVkVOVChp
b19kYXRhLCBpb193cml0ZSwKKwlUUF9QUk9UTyhpbnQgcmVnLCBpbnQgYWRkciwgY29uc3Qgdm9p
ZCAqaW9fYnVmLCBzaXplX3QgbGVuKSwKKwlUUF9BUkdTKHJlZywgYWRkciwgaW9fYnVmLCBsZW4p
KTsKKyNkZWZpbmUgX3RyYWNlX2lvX2luZF93cml0ZShyZWcsIGFkZHIsIGlvX2J1ZiwgbGVuKVwK
Kwl0cmFjZV9pb193cml0ZShyZWcsIGFkZHIsIGlvX2J1ZiwgbGVuKQorI2RlZmluZSBfdHJhY2Vf
aW9fd3JpdGUocmVnLCBpb19idWYsIGxlbikgdHJhY2VfaW9fd3JpdGUocmVnLCAtMSwgaW9fYnVm
LCBsZW4pCitERUZJTkVfRVZFTlQoaW9fZGF0YSwgaW9fcmVhZCwKKwlUUF9QUk9UTyhpbnQgcmVn
LCBpbnQgYWRkciwgY29uc3Qgdm9pZCAqaW9fYnVmLCBzaXplX3QgbGVuKSwKKwlUUF9BUkdTKHJl
ZywgYWRkciwgaW9fYnVmLCBsZW4pKTsKKyNkZWZpbmUgX3RyYWNlX2lvX2luZF9yZWFkKHJlZywg
YWRkciwgaW9fYnVmLCBsZW4pXAorCXRyYWNlX2lvX3JlYWQocmVnLCBhZGRyLCBpb19idWYsIGxl
bikKKyNkZWZpbmUgX3RyYWNlX2lvX3JlYWQocmVnLCBpb19idWYsIGxlbikgdHJhY2VfaW9fcmVh
ZChyZWcsIC0xLCBpb19idWYsIGxlbikKKworREVDTEFSRV9FVkVOVF9DTEFTUyhpb19kYXRhMzIs
CisJVFBfUFJPVE8oaW50IHJlZywgaW50IGFkZHIsIHUzMiB2YWwpLAorCVRQX0FSR1MocmVnLCBh
ZGRyLCB2YWwpLAorCVRQX1NUUlVDVF9fZW50cnkoCisJCV9fZmllbGQoaW50LCByZWcpCisJCV9f
ZmllbGQoaW50LCBhZGRyKQorCQlfX2ZpZWxkKGludCwgdmFsKQorCQlfX2FycmF5KHU4LCBhZGRy
X3N0ciwgMTApCisJKSwKKwlUUF9mYXN0X2Fzc2lnbigKKwkJX19lbnRyeS0+cmVnID0gcmVnOwor
CQlfX2VudHJ5LT5hZGRyID0gYWRkcjsKKwkJX19lbnRyeS0+dmFsID0gdmFsOworCQlpZiAoYWRk
ciA+PSAwKQorCQkJc25wcmludGYoX19lbnRyeS0+YWRkcl9zdHIsIDEwLCAiLyUwOHgiLCBhZGRy
KTsKKwkJZWxzZQorCQkJX19lbnRyeS0+YWRkcl9zdHJbMF0gPSAwOworCSksCisJVFBfcHJpbnRr
KCIlcyVzOiAlMDh4IiwKKwkJX19wcmludF9zeW1ib2xpYyhfX2VudHJ5LT5yZWcsIHdmeF9yZWdf
bGlzdCksCisJCV9fZW50cnktPmFkZHJfc3RyLAorCQlfX2VudHJ5LT52YWwKKwkpCispOworREVG
SU5FX0VWRU5UKGlvX2RhdGEzMiwgaW9fd3JpdGUzMiwKKwlUUF9QUk9UTyhpbnQgcmVnLCBpbnQg
YWRkciwgdTMyIHZhbCksCisJVFBfQVJHUyhyZWcsIGFkZHIsIHZhbCkpOworI2RlZmluZSBfdHJh
Y2VfaW9faW5kX3dyaXRlMzIocmVnLCBhZGRyLCB2YWwpIHRyYWNlX2lvX3dyaXRlMzIocmVnLCBh
ZGRyLCB2YWwpCisjZGVmaW5lIF90cmFjZV9pb193cml0ZTMyKHJlZywgdmFsKSB0cmFjZV9pb193
cml0ZTMyKHJlZywgLTEsIHZhbCkKK0RFRklORV9FVkVOVChpb19kYXRhMzIsIGlvX3JlYWQzMiwK
KwlUUF9QUk9UTyhpbnQgcmVnLCBpbnQgYWRkciwgdTMyIHZhbCksCisJVFBfQVJHUyhyZWcsIGFk
ZHIsIHZhbCkpOworI2RlZmluZSBfdHJhY2VfaW9faW5kX3JlYWQzMihyZWcsIGFkZHIsIHZhbCkg
dHJhY2VfaW9fcmVhZDMyKHJlZywgYWRkciwgdmFsKQorI2RlZmluZSBfdHJhY2VfaW9fcmVhZDMy
KHJlZywgdmFsKSB0cmFjZV9pb19yZWFkMzIocmVnLCAtMSwgdmFsKQorCitERUNMQVJFX0VWRU5U
X0NMQVNTKHBpZ2d5YmFjaywKKwlUUF9QUk9UTyh1MzIgdmFsLCBib29sIGlnbm9yZWQpLAorCVRQ
X0FSR1ModmFsLCBpZ25vcmVkKSwKKwlUUF9TVFJVQ1RfX2VudHJ5KAorCQlfX2ZpZWxkKGludCwg
dmFsKQorCQlfX2ZpZWxkKGJvb2wsIGlnbm9yZWQpCisJKSwKKwlUUF9mYXN0X2Fzc2lnbigKKwkJ
X19lbnRyeS0+dmFsID0gdmFsOworCQlfX2VudHJ5LT5pZ25vcmVkID0gaWdub3JlZDsKKwkpLAor
CVRQX3ByaW50aygiQ09OVFJPTDogJTA4eCVzIiwKKwkJX19lbnRyeS0+dmFsLAorCQlfX2VudHJ5
LT5pZ25vcmVkID8gIiAoaWdub3JlZCkiIDogIiIKKwkpCispOworREVGSU5FX0VWRU5UKHBpZ2d5
YmFjaywgcGlnZ3liYWNrLAorCVRQX1BST1RPKHUzMiB2YWwsIGJvb2wgaWdub3JlZCksCisJVFBf
QVJHUyh2YWwsIGlnbm9yZWQpKTsKKyNkZWZpbmUgX3RyYWNlX3BpZ2d5YmFjayh2YWwsIGlnbm9y
ZWQpIHRyYWNlX3BpZ2d5YmFjayh2YWwsIGlnbm9yZWQpCisKK1RSQUNFX0VWRU5UKGJoX3N0YXRz
LAorCVRQX1BST1RPKGludCBpbmQsIGludCByZXEsIGludCBjbmYsIGludCBidXN5LCBib29sIHJl
bGVhc2UpLAorCVRQX0FSR1MoaW5kLCByZXEsIGNuZiwgYnVzeSwgcmVsZWFzZSksCisJVFBfU1RS
VUNUX19lbnRyeSgKKwkJX19maWVsZChpbnQsIGluZCkKKwkJX19maWVsZChpbnQsIHJlcSkKKwkJ
X19maWVsZChpbnQsIGNuZikKKwkJX19maWVsZChpbnQsIGJ1c3kpCisJCV9fZmllbGQoYm9vbCwg
cmVsZWFzZSkKKwkpLAorCVRQX2Zhc3RfYXNzaWduKAorCQlfX2VudHJ5LT5pbmQgPSBpbmQ7CisJ
CV9fZW50cnktPnJlcSA9IHJlcTsKKwkJX19lbnRyeS0+Y25mID0gY25mOworCQlfX2VudHJ5LT5i
dXN5ID0gYnVzeTsKKwkJX19lbnRyeS0+cmVsZWFzZSA9IHJlbGVhc2U7CisJKSwKKwlUUF9wcmlu
dGsoIklORC9SRVEvQ05GOiUzZC8lM2QvJTNkLCBSRVEgaW4gcHJvZ3Jlc3M6JTNkLCBXVVA6ICVz
IiwKKwkJX19lbnRyeS0+aW5kLAorCQlfX2VudHJ5LT5yZXEsCisJCV9fZW50cnktPmNuZiwKKwkJ
X19lbnRyeS0+YnVzeSwKKwkJX19lbnRyeS0+cmVsZWFzZSA/ICJyZWxlYXNlIiA6ICJrZWVwIgor
CSkKKyk7CisjZGVmaW5lIF90cmFjZV9iaF9zdGF0cyhpbmQsIHJlcSwgY25mLCBidXN5LCByZWxl
YXNlKVwKKwl0cmFjZV9iaF9zdGF0cyhpbmQsIHJlcSwgY25mLCBidXN5LCByZWxlYXNlKQorCitU
UkFDRV9FVkVOVCh0eF9zdGF0cywKKwlUUF9QUk9UTyhjb25zdCBzdHJ1Y3Qgd2Z4X2hpZl9jbmZf
dHggKnR4X2NuZiwgY29uc3Qgc3RydWN0IHNrX2J1ZmYgKnNrYiwKKwkJIGludCBkZWxheSksCisJ
VFBfQVJHUyh0eF9jbmYsIHNrYiwgZGVsYXkpLAorCVRQX1NUUlVDVF9fZW50cnkoCisJCV9fZmll
bGQoaW50LCBwa3RfaWQpCisJCV9fZmllbGQoaW50LCBkZWxheV9tZWRpYSkKKwkJX19maWVsZChp
bnQsIGRlbGF5X3F1ZXVlKQorCQlfX2ZpZWxkKGludCwgZGVsYXlfZncpCisJCV9fZmllbGQoaW50
LCBhY2tfZmFpbHVyZXMpCisJCV9fZmllbGQoaW50LCBmbGFncykKKwkJX19hcnJheShpbnQsIHJh
dGUsIDQpCisJCV9fYXJyYXkoaW50LCB0eF9jb3VudCwgNCkKKwkpLAorCVRQX2Zhc3RfYXNzaWdu
KAorCQkvKiBLZWVwIHN5bmMgd2l0aCB3ZnhfcmF0ZXMgZGVmaW5pdGlvbiBpbiBtYWluLmMgKi8K
KwkJc3RhdGljIGNvbnN0IGludCBod19yYXRlW10gPSB7IDAsIDEsIDIsIDMsIDYsIDcsIDgsIDks
CisJCQkJCSAgICAgICAxMCwgMTEsIDEyLCAxMyB9OworCQljb25zdCBzdHJ1Y3QgaWVlZTgwMjEx
X3R4X2luZm8gKnR4X2luZm8gPQorCQkJKGNvbnN0IHN0cnVjdCBpZWVlODAyMTFfdHhfaW5mbyAq
KXNrYi0+Y2I7CisJCWNvbnN0IHN0cnVjdCBpZWVlODAyMTFfdHhfcmF0ZSAqcmF0ZXMgPSB0eF9p
bmZvLT5kcml2ZXJfcmF0ZXM7CisJCWludCBpOworCisJCV9fZW50cnktPnBrdF9pZCA9IHR4X2Nu
Zi0+cGFja2V0X2lkOworCQlfX2VudHJ5LT5kZWxheV9tZWRpYSA9IGxlMzJfdG9fY3B1KHR4X2Nu
Zi0+bWVkaWFfZGVsYXkpOworCQlfX2VudHJ5LT5kZWxheV9xdWV1ZSA9IGxlMzJfdG9fY3B1KHR4
X2NuZi0+dHhfcXVldWVfZGVsYXkpOworCQlfX2VudHJ5LT5kZWxheV9mdyA9IGRlbGF5OworCQlf
X2VudHJ5LT5hY2tfZmFpbHVyZXMgPSB0eF9jbmYtPmFja19mYWlsdXJlczsKKwkJaWYgKCF0eF9j
bmYtPnN0YXR1cyB8fCBfX2VudHJ5LT5hY2tfZmFpbHVyZXMpCisJCQlfX2VudHJ5LT5hY2tfZmFp
bHVyZXMgKz0gMTsKKworCQlmb3IgKGkgPSAwOyBpIDwgSUVFRTgwMjExX05VTV9BQ1M7IGkrKykg
eworCQkJaWYgKHJhdGVzWzBdLmZsYWdzICYgSUVFRTgwMjExX1RYX1JDX01DUykKKwkJCQlfX2Vu
dHJ5LT5yYXRlW2ldID0gcmF0ZXNbaV0uaWR4OworCQkJZWxzZQorCQkJCV9fZW50cnktPnJhdGVb
aV0gPSBod19yYXRlW3JhdGVzW2ldLmlkeF07CisJCQlfX2VudHJ5LT50eF9jb3VudFtpXSA9IHJh
dGVzW2ldLmNvdW50OworCQl9CisJCV9fZW50cnktPmZsYWdzID0gMDsKKwkJaWYgKHJhdGVzWzBd
LmZsYWdzICYgSUVFRTgwMjExX1RYX1JDX01DUykKKwkJCV9fZW50cnktPmZsYWdzIHw9IDB4MDE7
CisJCWlmIChyYXRlc1swXS5mbGFncyAmIElFRUU4MDIxMV9UWF9SQ19TSE9SVF9HSSkKKwkJCV9f
ZW50cnktPmZsYWdzIHw9IDB4MDI7CisJCWlmIChyYXRlc1swXS5mbGFncyAmIElFRUU4MDIxMV9U
WF9SQ19HUkVFTl9GSUVMRCkKKwkJCV9fZW50cnktPmZsYWdzIHw9IDB4MDQ7CisJCWlmIChyYXRl
c1swXS5mbGFncyAmIElFRUU4MDIxMV9UWF9SQ19VU0VfUlRTX0NUUykKKwkJCV9fZW50cnktPmZs
YWdzIHw9IDB4MDg7CisJCWlmICh0eF9pbmZvLT5mbGFncyAmIElFRUU4MDIxMV9UWF9DVExfU0VO
RF9BRlRFUl9EVElNKQorCQkJX19lbnRyeS0+ZmxhZ3MgfD0gMHgxMDsKKwkJaWYgKHR4X2NuZi0+
c3RhdHVzKQorCQkJX19lbnRyeS0+ZmxhZ3MgfD0gMHgyMDsKKwkJaWYgKHR4X2NuZi0+c3RhdHVz
ID09IEhJRl9TVEFUVVNfVFhfRkFJTF9SRVFVRVVFKQorCQkJX19lbnRyeS0+ZmxhZ3MgfD0gMHg0
MDsKKwkpLAorCVRQX3ByaW50aygicGFja2V0IElEOiAlMDh4LCByYXRlIHBvbGljeTogJXMgJWR8
JWQgJWR8JWQgJWR8JWQgJWR8JWQgLT4gJWQgYXR0ZW1wdCwgRGVsYXlzIG1lZGlhL3F1ZXVlL3Rv
dGFsOiAlNGR1cy8lNGR1cy8lNGR1cyIsCisJCV9fZW50cnktPnBrdF9pZCwKKwkJX19wcmludF9m
bGFncyhfX2VudHJ5LT5mbGFncywgTlVMTCwKKwkJCXsgMHgwMSwgIk0iIH0sIHsgMHgwMiwgIlMi
IH0sIHsgMHgwNCwgIkciIH0sCisJCQl7IDB4MDgsICJSIiB9LCB7IDB4MTAsICJEIiB9LCB7IDB4
MjAsICJGIiB9LAorCQkJeyAweDQwLCAiUSIgfSksCisJCV9fZW50cnktPnJhdGVbMF0sCisJCV9f
ZW50cnktPnR4X2NvdW50WzBdLAorCQlfX2VudHJ5LT5yYXRlWzFdLAorCQlfX2VudHJ5LT50eF9j
b3VudFsxXSwKKwkJX19lbnRyeS0+cmF0ZVsyXSwKKwkJX19lbnRyeS0+dHhfY291bnRbMl0sCisJ
CV9fZW50cnktPnJhdGVbM10sCisJCV9fZW50cnktPnR4X2NvdW50WzNdLAorCQlfX2VudHJ5LT5h
Y2tfZmFpbHVyZXMsCisJCV9fZW50cnktPmRlbGF5X21lZGlhLAorCQlfX2VudHJ5LT5kZWxheV9x
dWV1ZSwKKwkJX19lbnRyeS0+ZGVsYXlfZncKKwkpCispOworI2RlZmluZSBfdHJhY2VfdHhfc3Rh
dHModHhfY25mLCBza2IsIGRlbGF5KSB0cmFjZV90eF9zdGF0cyh0eF9jbmYsIHNrYiwgZGVsYXkp
CisKK1RSQUNFX0VWRU5UKHF1ZXVlc19zdGF0cywKKwlUUF9QUk9UTyhzdHJ1Y3Qgd2Z4X2RldiAq
d2RldiwgY29uc3Qgc3RydWN0IHdmeF9xdWV1ZSAqZWxlY3RlZF9xdWV1ZSksCisJVFBfQVJHUyh3
ZGV2LCBlbGVjdGVkX3F1ZXVlKSwKKwlUUF9TVFJVQ1RfX2VudHJ5KAorCQlfX2ZpZWxkKGludCwg
dmlmX2lkKQorCQlfX2ZpZWxkKGludCwgcXVldWVfaWQpCisJCV9fYXJyYXkoaW50LCBodywgSUVF
RTgwMjExX05VTV9BQ1MgKiAyKQorCQlfX2FycmF5KGludCwgZHJ2LCBJRUVFODAyMTFfTlVNX0FD
UyAqIDIpCisJCV9fYXJyYXkoaW50LCBjYWIsIElFRUU4MDIxMV9OVU1fQUNTICogMikKKwkpLAor
CVRQX2Zhc3RfYXNzaWduKAorCQljb25zdCBzdHJ1Y3Qgd2Z4X3F1ZXVlICpxdWV1ZTsKKwkJc3Ry
dWN0IHdmeF92aWYgKnd2aWY7CisJCWludCBpLCBqOworCisJCWZvciAoaiA9IDA7IGogPCBJRUVF
ODAyMTFfTlVNX0FDUyAqIDI7IGorKykgeworCQkJX19lbnRyeS0+aHdbal0gPSAtMTsKKwkJCV9f
ZW50cnktPmRydltqXSA9IC0xOworCQkJX19lbnRyeS0+Y2FiW2pdID0gLTE7CisJCX0KKwkJX19l
bnRyeS0+dmlmX2lkID0gLTE7CisJCV9fZW50cnktPnF1ZXVlX2lkID0gLTE7CisJCXd2aWYgPSBO
VUxMOworCQl3aGlsZSAoKHd2aWYgPSB3dmlmX2l0ZXJhdGUod2Rldiwgd3ZpZikpICE9IE5VTEwp
IHsKKwkJCWZvciAoaSA9IDA7IGkgPCBJRUVFODAyMTFfTlVNX0FDUzsgaSsrKSB7CisJCQkJaiA9
IHd2aWYtPmlkICogSUVFRTgwMjExX05VTV9BQ1MgKyBpOworCQkJCVdBUk5fT04oaiA+PSBJRUVF
ODAyMTFfTlVNX0FDUyAqIDIpOworCQkJCXF1ZXVlID0gJnd2aWYtPnR4X3F1ZXVlW2ldOworCQkJ
CV9fZW50cnktPmh3W2pdID0gYXRvbWljX3JlYWQoJnF1ZXVlLT5wZW5kaW5nX2ZyYW1lcyk7CisJ
CQkJX19lbnRyeS0+ZHJ2W2pdID0gc2tiX3F1ZXVlX2xlbigmcXVldWUtPm5vcm1hbCk7CisJCQkJ
X19lbnRyeS0+Y2FiW2pdID0gc2tiX3F1ZXVlX2xlbigmcXVldWUtPmNhYik7CisJCQkJaWYgKHF1
ZXVlID09IGVsZWN0ZWRfcXVldWUpIHsKKwkJCQkJX19lbnRyeS0+dmlmX2lkID0gd3ZpZi0+aWQ7
CisJCQkJCV9fZW50cnktPnF1ZXVlX2lkID0gaTsKKwkJCQl9CisJCQl9CisJCX0KKwkpLAorCVRQ
X3ByaW50aygiZ290IHNrYiBmcm9tICVkLyVkLCBwZW5kLiBody9ub3JtL2NhYjogWyAlZC8lZC8l
ZCAlZC8lZC8lZCAlZC8lZC8lZCAlZC8lZC8lZCBdIFsgJWQvJWQvJWQgJWQvJWQvJWQgJWQvJWQv
JWQgJWQvJWQvJWQgXSIsCisJCV9fZW50cnktPnZpZl9pZCwgX19lbnRyeS0+cXVldWVfaWQsCisJ
CV9fZW50cnktPmh3WzBdLCBfX2VudHJ5LT5kcnZbMF0sIF9fZW50cnktPmNhYlswXSwKKwkJX19l
bnRyeS0+aHdbMV0sIF9fZW50cnktPmRydlsxXSwgX19lbnRyeS0+Y2FiWzFdLAorCQlfX2VudHJ5
LT5od1syXSwgX19lbnRyeS0+ZHJ2WzJdLCBfX2VudHJ5LT5jYWJbMl0sCisJCV9fZW50cnktPmh3
WzNdLCBfX2VudHJ5LT5kcnZbM10sIF9fZW50cnktPmNhYlszXSwKKwkJX19lbnRyeS0+aHdbNF0s
IF9fZW50cnktPmRydls0XSwgX19lbnRyeS0+Y2FiWzRdLAorCQlfX2VudHJ5LT5od1s1XSwgX19l
bnRyeS0+ZHJ2WzVdLCBfX2VudHJ5LT5jYWJbNV0sCisJCV9fZW50cnktPmh3WzZdLCBfX2VudHJ5
LT5kcnZbNl0sIF9fZW50cnktPmNhYls2XSwKKwkJX19lbnRyeS0+aHdbN10sIF9fZW50cnktPmRy
dls3XSwgX19lbnRyeS0+Y2FiWzddCisJKQorKTsKKworI2VuZGlmCisKKy8qIFRoaXMgcGFydCBt
dXN0IGJlIG91dHNpZGUgcHJvdGVjdGlvbiAqLworI3VuZGVmIFRSQUNFX0lOQ0xVREVfUEFUSAor
I2RlZmluZSBUUkFDRV9JTkNMVURFX1BBVEggLgorI3VuZGVmIFRSQUNFX0lOQ0xVREVfRklMRQor
I2RlZmluZSBUUkFDRV9JTkNMVURFX0ZJTEUgdHJhY2VzCisKKyNpbmNsdWRlIDx0cmFjZS9kZWZp
bmVfdHJhY2UuaD4KLS0gCjIuMzMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
