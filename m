Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCB3408BC9
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 15:05:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01F9F404AA;
	Mon, 13 Sep 2021 13:05:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nOsz13q-2KKh; Mon, 13 Sep 2021 13:05:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 843B8402B3;
	Mon, 13 Sep 2021 13:05:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9660A1BF3A4
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 13:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8566940184
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 13:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id snFse7-y_3DA for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 13:02:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2049.outbound.protection.outlook.com [40.107.244.49])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7A880400C3
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 13:02:44 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a1GaEn8OIQr0+exMK5Cl847ZpBfIWrJdQ1vO+WRc6evUHPP9x6SdQecmef+Jm2OrSxxyUx2btuUY5ZaCxgpiOUTCO62pq1bzN4n533R16/+nEq15WqehWTE8j5e9BGmGD04eyOl9fER41T+wqS7/59UWmSL9PSPkStLBFbQ/K0dpy9jaOhg6nGaoocXzLDmdpABjKD4NLYVqj3XtHKlksBsni+pNuTftTfjaP/vJMc3HVok9d7akIf8f8cpFHbMonR3KYW3M7YQl5ca4Yy6gQxtMtD7kIiwL5+SPvOpK7l6uiMedwbcx0PKl/44NiF4i59r3vbiDRpSq1r9UO+te7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=ASE4rAagVGXa5deMw5+RxN7XsAlkN46v5/lzPTuDMuc=;
 b=lJwEZlXvGUUvx8O4bjb/jpC2ekwXVti223DgKj0Dfaq1e8Md2ezFBpr3T6IINKm1rEB+GnY2jKO7u49eAm3xm/ooQDhDbYMtB7HaUGhNc717gKc11TXFg3lG44GyQw5+UYONtFsHtIUiXJzGVQ5Fuq8TCfoBfIrJgnnDzLfIJMryVYar8t+SzvdCxvdT7bHTWm337YCQaHi/V5T3PrUU0orIoIXpuvPHsJBfPC2AUNKtS/VEdddC7MhDR6LAwN+PZb4v3qsGOKu/j6dBfvtF5ewpQnxe5Iw+3Jsq6hyTgb/Ff2GNArw6szXqDtaGRQwCuhMXvt0sfhLdNDphldFirQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ASE4rAagVGXa5deMw5+RxN7XsAlkN46v5/lzPTuDMuc=;
 b=IeNb/vZYEXSwoe1jQpHQr1ZG/JCoq6wElkl8uWq93qOu067jEWWg67nv83zzgXqv3YvvXm5vkvJFYbDKgSt1NnikipxmBo8b4/t8oNzvcV9QvdVS682jRiJ2+LMM7SAlzzYh4qBW4tygGLQKRlIhn3Uc3wze9RqQShObcfzqRt0=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB4860.namprd11.prod.outlook.com (2603:10b6:806:11b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Mon, 13 Sep
 2021 13:02:43 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Mon, 13 Sep 2021
 13:02:43 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v3 14/32] staging: wfx: uniformize counter names
Date: Mon, 13 Sep 2021 15:01:45 +0200
Message-Id: <20210913130203.1903622-15-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210913130203.1903622-1-Jerome.Pouiller@silabs.com>
References: <20210913130203.1903622-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR2P264CA0021.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::33)
 To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (37.71.187.125) by
 PR2P264CA0021.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 13:02:41 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 32b03780-05d8-42b8-7165-08d976b6c632
X-MS-TrafficTypeDiagnostic: SA2PR11MB4860:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA2PR11MB486041CD5DAA2B4AF99CC61793D99@SA2PR11MB4860.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6JBDPapyxcdNDrnC4VHtwDfbZwQiKjH732XZLyTB9R49Ta5i0IqVfp3Vd989ypHxJRq+g9WUTqn59S6AqCAm9LNOq0yaHQM6ZhkhX9TnSkLP2gIiUjTit8mIMj9T51i0FT/RX45J+wubW2sbvJFBI5yQkCw90vSk72EjLvIVtTEhwCipfJ1IwBYxZPUj0O47ysfKUYI3CJrjr/MYZFhJ1sbKnaRAQkoRQ6JFdFPt98RzhEtkpgzUbM/AT33dBdcmLf5h7NYVLtP1g2G/0JPMTrllQvdiCMhSEpA8/TGaXHqca+E1/G0qgMC+M//U42iXUapgHvoTIWEPJnBkZYsH2VSVNrmVFLd5sqEltT7AHlIoQFp9GA4RWUGIdP+cziKs/M1/E6GH/a5NGWJ04qdIMyxhrKXKPB7Iz9XH+y/akaRtw/7twptX9VzydEY/rx/PS+PHJCQUvZymSrn8D9rz8O1CRugjmVgYuNx3RrF6AZ44KiFOzHmL29WJO8S9JDC4Imcb6SZZMGx08eiUxYMPTq4HnFORmLmjkF9K6CGhyKoNkgtH+96POaPGNz3HRQHZpC1gSM8yKznk/otsdDncGZSPvG1xAxM0suYcvIyz9fmOHMIiAVlpdJDffGFUpV/c7By1UgyY/DhNqeXS180CzUV/iGTcVHz72fIWVQTPHVEK4R4WPRVomI1vaehFqu6uKDYzO+OAKjxuNh3uyFHxwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(956004)(66946007)(2616005)(26005)(36756003)(38100700002)(38350700002)(316002)(4326008)(107886003)(7696005)(54906003)(5660300002)(52116002)(66556008)(1076003)(66476007)(6486002)(508600001)(8936002)(83380400001)(86362001)(2906002)(8676002)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZHNXcWllZjcyTHJsZmV6MitHVEFmUER5enQ3dXNJT08xaWJPRGl0MloxR0tF?=
 =?utf-8?B?Z3JHdGF3ZDltMXBHZzhuQ2RCL2FWd3hCMUJPS01EdlZFdkduZlZPc0t1QU11?=
 =?utf-8?B?b2JkZDRwOElWcE9ESGxhMmEvdktXNWpZUTVtVFRKSkwzZEg0bWZkVWlOMlc4?=
 =?utf-8?B?NzZuVDgwd1ptNHdHQ3lMU2gzTVZVbi9EcDhCY0V1a1ZCNE1kUUpsWGdiRXMy?=
 =?utf-8?B?V2VIc29XaFJUTUhSc1p0TURnVzkvNkkyMUVVUnUzWGJnSEtxNEwxREpBMHB6?=
 =?utf-8?B?Q29IRHJVTFAxTTlWSElNdWVyckkveEI4VHpQbUZkdUhvTFlaWGlmdUErZUls?=
 =?utf-8?B?cldqZ0I5dEl5eHlaYTlERWdVTDZrbW9rRTdzNmx0Uk1BTE56SEZPTEVaSk9H?=
 =?utf-8?B?ak9lQ3lCeVAxM2MyVTVLelpXZVF6QVJZd0ZoNzBzck1sajNKSGpsRXA2NlIx?=
 =?utf-8?B?Z3YyS3FsVklkODhOVUFpdnZ2bHFYRm8rWGttdHZ6T3RIL2NVc3k4Vi9ESFFE?=
 =?utf-8?B?bGNIUnU1T21CUmNjaldGUGgyUDFWblNyWk9DSUYrbGd2RmNJNXRSM2xENzFV?=
 =?utf-8?B?Uk1QQ0ViZGU0T2pvV3A0WnZQYVo3cW5laGNEUXFTMCtBNk4wYjNEdk1hNmtr?=
 =?utf-8?B?WGhHU1ZYNUtZa3c1bk52bW96WW1aa3czcmRvMnpFWjBGZkUzYUlQU05hL0k3?=
 =?utf-8?B?ODk1anNrTTh0OHhCVi9sdlN1ZUtTR2o1TENyNmlmblZnck95Nkltcmwva21I?=
 =?utf-8?B?ZUxHdkF3Z2pTZmtmWmxYQjVhRHNKaUQ5MVdycTNFSlh2azFLbDAwcUIwT2lZ?=
 =?utf-8?B?ZzhLUWhiNmc5ZVcxQnU3cjBjMnRoRWFIRTNwNC9JU2VHTzMySFNUSjFRNVBZ?=
 =?utf-8?B?WWdsSjlKTGYxYVQ0WXFTRWdSWEJZeW9rMU95QzkrTkw2ZW4zWG1jU1dXRFlr?=
 =?utf-8?B?UkZ1RC8rR3ZpREU5YytKZ3pSM1VsM3dFek56YTEvVTBZWUF1TDdkSGx6aEVL?=
 =?utf-8?B?WmRFVy9BQ2pjbGo4dGNzV2F1WGFlZ3JRZFpuc3lhb0FEdDZ0UWpYRTZjaUZa?=
 =?utf-8?B?cnNveVV1a0dZZ2hVYjltS3hpL092U09xTUJjMnBxSm5iS3EzbEN1blk5YnNF?=
 =?utf-8?B?bGI0ekRtMDhXUFFid3N6Yk9BYXFsNVQyQUswQ2ZuaHdEUVJHam1qZk8wZnk3?=
 =?utf-8?B?KzVwZ3EyRTBCZzZNcEZMRWJxWFgrTUVsSE40ZGljeVd3WDNuOXdDNnVEeFFh?=
 =?utf-8?B?UndMUUJ0alFadEUwajFMSFRVRzZHVWxKaG1XTGN0MTBuczJNM1d6MHJNNjBM?=
 =?utf-8?B?SzZFeS91ckMxWmhDWUxla29MWUM2RldsVlpsbG9Yb2xDWmdsV1BiSDRSeVU1?=
 =?utf-8?B?S29kR1BPSGw0eTkyNitjNG1mWENDQy9LVXlXUldYdWdDVDhqRW9VbGJxcnJE?=
 =?utf-8?B?YzQzeUhrVHhKcGZ6ZzBPRDU0Zml3ZC9SUGlmdDlubGhiK3pGZklJODN6eUY0?=
 =?utf-8?B?ZWU5TUtrTTREYnhCdEpXZm5rbXZISnpDVE1RbkJzeFBDVWR4SWk0MVF4RVVl?=
 =?utf-8?B?K2kvTDdNbm9aNnBidEZ5cDFBazMvWHEyRGZudXBBQVdXQXppZTdtK05JZUcy?=
 =?utf-8?B?cUhlRWpWUzQ5THljNmVwOHAzTTVHb1BhRFd1YTRYamJsOGlNZWMwcVJPQVdt?=
 =?utf-8?B?NXkzbjVjaXlwQU9XVzU1cVBweXUvVFROalFqZEtjUDFWMUlsTFQ0bXFYaEU5?=
 =?utf-8?Q?6EruWMW/UDjxUGxFUb0gMvRTLfn6zEkvnjpLzaN?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32b03780-05d8-42b8-7165-08d976b6c632
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 13:02:43.2195 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KQvMqAonKDEcgKx5ETFiLNgt7sFngJu+CaROoIvAePljjTfVEZkaGtHgnGHyDqe0wbXgr1KuFFYzH3eyGsehoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4860
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IGRldmljZSBwcm92aWRlIHNvbWUgaW50ZXJuYWwgc3RhdGlzdGljIGNvdW50ZXJzLiBIb3dldmVy
LCB0aGUgbmFtZXMKb2YgY291bnRlciB3ZXJlIG5vdCB2ZXJ5IG1lYW5pbmdmdWwuCgpTaWduZWQt
b2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0t
LQogZHJpdmVycy9zdGFnaW5nL3dmeC9kZWJ1Zy5jICAgICAgIHwgNDUgKysrKysrKystLS0tLS0t
LS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9taWIuaCB8IDgyICsrKysrKysrKysrKysr
Ky0tLS0tLS0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwgNjQgaW5zZXJ0aW9ucygrKSwgNjMg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kZWJ1Zy5jIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9kZWJ1Zy5jCmluZGV4IGU2N2NhMGQ4MThiYS4uMTZjM2Y1NWYx
YTNkIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVnLmMKKysrIGIvZHJpdmVy
cy9zdGFnaW5nL3dmeC9kZWJ1Zy5jCkBAIC04MiwzNiArODIsMzcgQEAgc3RhdGljIGludCB3Znhf
Y291bnRlcnNfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSwgdm9pZCAqdikKIAkJICAgbGUzMl90
b19jcHUoY291bnRlcnNbMF0uY291bnRfIyNuYW1lKSwgXAogCQkgICBsZTMyX3RvX2NwdShjb3Vu
dGVyc1sxXS5jb3VudF8jI25hbWUpKQogCi0JUFVUX0NPVU5URVIodHhfcGFja2V0cyk7Ci0JUFVU
X0NPVU5URVIodHhfbXVsdGljYXN0X2ZyYW1lcyk7CisJUFVUX0NPVU5URVIodHhfZnJhbWVzKTsK
KwlQVVRfQ09VTlRFUih0eF9mcmFtZXNfbXVsdGljYXN0KTsKIAlQVVRfQ09VTlRFUih0eF9mcmFt
ZXNfc3VjY2Vzcyk7Ci0JUFVUX0NPVU5URVIodHhfZnJhbWVfZmFpbHVyZXMpOwogCVBVVF9DT1VO
VEVSKHR4X2ZyYW1lc19yZXRyaWVkKTsKIAlQVVRfQ09VTlRFUih0eF9mcmFtZXNfbXVsdGlfcmV0
cmllZCk7CisJUFVUX0NPVU5URVIodHhfZnJhbWVzX2ZhaWxlZCk7CiAKKwlQVVRfQ09VTlRFUihh
Y2tfZmFpbGVkKTsKIAlQVVRfQ09VTlRFUihydHNfc3VjY2Vzcyk7Ci0JUFVUX0NPVU5URVIocnRz
X2ZhaWx1cmVzKTsKLQlQVVRfQ09VTlRFUihhY2tfZmFpbHVyZXMpOworCVBVVF9DT1VOVEVSKHJ0
c19mYWlsZWQpOwogCi0JUFVUX0NPVU5URVIocnhfcGFja2V0cyk7CisJUFVUX0NPVU5URVIocnhf
ZnJhbWVzKTsKKwlQVVRfQ09VTlRFUihyeF9mcmFtZXNfbXVsdGljYXN0KTsKIAlQVVRfQ09VTlRF
UihyeF9mcmFtZXNfc3VjY2Vzcyk7Ci0JUFVUX0NPVU5URVIocnhfcGFja2V0X2Vycm9ycyk7Ci0J
UFVUX0NPVU5URVIocGxjcF9lcnJvcnMpOwotCVBVVF9DT1VOVEVSKGZjc19lcnJvcnMpOwotCVBV
VF9DT1VOVEVSKHJ4X2RlY3J5cHRpb25fZmFpbHVyZXMpOwotCVBVVF9DT1VOVEVSKHJ4X21pY19m
YWlsdXJlcyk7Ci0JUFVUX0NPVU5URVIocnhfbm9fa2V5X2ZhaWx1cmVzKTsKLQlQVVRfQ09VTlRF
UihyeF9mcmFtZV9kdXBsaWNhdGVzKTsKLQlQVVRfQ09VTlRFUihyeF9tdWx0aWNhc3RfZnJhbWVz
KTsKLQlQVVRfQ09VTlRFUihyeF9jbWFjaWN2X2Vycm9ycyk7Ci0JUFVUX0NPVU5URVIocnhfY21h
Y19yZXBsYXlzKTsKLQlQVVRfQ09VTlRFUihyeF9tZ210X2NjbXBfcmVwbGF5cyk7CisJUFVUX0NP
VU5URVIocnhfZnJhbWVzX2ZhaWxlZCk7CisJUFVUX0NPVU5URVIoZHJvcF9wbGNwKTsKKwlQVVRf
Q09VTlRFUihkcm9wX2Zjcyk7CisJUFVUX0NPVU5URVIoZHJvcF9ub19rZXkpOworCVBVVF9DT1VO
VEVSKGRyb3BfZGVjcnlwdGlvbik7CisJUFVUX0NPVU5URVIoZHJvcF90a2lwX21pYyk7CisJUFVU
X0NPVU5URVIoZHJvcF9iaXBfbWljKTsKKwlQVVRfQ09VTlRFUihkcm9wX2NtYWNfaWN2KTsKKwlQ
VVRfQ09VTlRFUihkcm9wX2NtYWNfcmVwbGF5KTsKKwlQVVRfQ09VTlRFUihkcm9wX2NjbXBfcmVw
bGF5KTsKKwlQVVRfQ09VTlRFUihkcm9wX2R1cGxpY2F0ZSk7CiAKLQlQVVRfQ09VTlRFUihyeF9i
ZWFjb24pOwotCVBVVF9DT1VOVEVSKG1pc3NfYmVhY29uKTsKLQlQVVRfQ09VTlRFUihyeF9kdGlt
KTsKLQlQVVRfQ09VTlRFUihyeF9kdGltX2FpZDBfY2xyKTsKLQlQVVRfQ09VTlRFUihyeF9kdGlt
X2FpZDBfc2V0KTsKKwlQVVRfQ09VTlRFUihyeF9iY25fbWlzcyk7CisJUFVUX0NPVU5URVIocnhf
YmNuX3N1Y2Nlc3MpOworCVBVVF9DT1VOVEVSKHJ4X2Jjbl9kdGltKTsKKwlQVVRfQ09VTlRFUihy
eF9iY25fZHRpbV9haWQwX2Nscik7CisJUFVUX0NPVU5URVIocnhfYmNuX2R0aW1fYWlkMF9zZXQp
OwogCiAjdW5kZWYgUFVUX0NPVU5URVIKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfYXBpX21pYi5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX21pYi5oCmluZGV4
IGIyZGM0N2MzMTRjYy4uMmE3NDFhMzdhOTBjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl9hcGlfbWliLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX21pYi5o
CkBAIC0xMzMsNjEgKzEzMyw2MSBAQCBzdHJ1Y3QgaGlmX21pYl9iY25fZmlsdGVyX2VuYWJsZSB7
CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX21pYl9leHRlbmRlZF9jb3VudF90YWJsZSB7Ci0J
X19sZTMyIGNvdW50X3BsY3BfZXJyb3JzOwotCV9fbGUzMiBjb3VudF9mY3NfZXJyb3JzOwotCV9f
bGUzMiBjb3VudF90eF9wYWNrZXRzOwotCV9fbGUzMiBjb3VudF9yeF9wYWNrZXRzOwotCV9fbGUz
MiBjb3VudF9yeF9wYWNrZXRfZXJyb3JzOwotCV9fbGUzMiBjb3VudF9yeF9kZWNyeXB0aW9uX2Zh
aWx1cmVzOwotCV9fbGUzMiBjb3VudF9yeF9taWNfZmFpbHVyZXM7Ci0JX19sZTMyIGNvdW50X3J4
X25vX2tleV9mYWlsdXJlczsKLQlfX2xlMzIgY291bnRfdHhfbXVsdGljYXN0X2ZyYW1lczsKKwlf
X2xlMzIgY291bnRfZHJvcF9wbGNwOworCV9fbGUzMiBjb3VudF9kcm9wX2ZjczsKKwlfX2xlMzIg
Y291bnRfdHhfZnJhbWVzOworCV9fbGUzMiBjb3VudF9yeF9mcmFtZXM7CisJX19sZTMyIGNvdW50
X3J4X2ZyYW1lc19mYWlsZWQ7CisJX19sZTMyIGNvdW50X2Ryb3BfZGVjcnlwdGlvbjsKKwlfX2xl
MzIgY291bnRfZHJvcF90a2lwX21pYzsKKwlfX2xlMzIgY291bnRfZHJvcF9ub19rZXk7CisJX19s
ZTMyIGNvdW50X3R4X2ZyYW1lc19tdWx0aWNhc3Q7CiAJX19sZTMyIGNvdW50X3R4X2ZyYW1lc19z
dWNjZXNzOwotCV9fbGUzMiBjb3VudF90eF9mcmFtZV9mYWlsdXJlczsKKwlfX2xlMzIgY291bnRf
dHhfZnJhbWVzX2ZhaWxlZDsKIAlfX2xlMzIgY291bnRfdHhfZnJhbWVzX3JldHJpZWQ7CiAJX19s
ZTMyIGNvdW50X3R4X2ZyYW1lc19tdWx0aV9yZXRyaWVkOwotCV9fbGUzMiBjb3VudF9yeF9mcmFt
ZV9kdXBsaWNhdGVzOworCV9fbGUzMiBjb3VudF9kcm9wX2R1cGxpY2F0ZTsKIAlfX2xlMzIgY291
bnRfcnRzX3N1Y2Nlc3M7Ci0JX19sZTMyIGNvdW50X3J0c19mYWlsdXJlczsKLQlfX2xlMzIgY291
bnRfYWNrX2ZhaWx1cmVzOwotCV9fbGUzMiBjb3VudF9yeF9tdWx0aWNhc3RfZnJhbWVzOworCV9f
bGUzMiBjb3VudF9ydHNfZmFpbGVkOworCV9fbGUzMiBjb3VudF9hY2tfZmFpbGVkOworCV9fbGUz
MiBjb3VudF9yeF9mcmFtZXNfbXVsdGljYXN0OwogCV9fbGUzMiBjb3VudF9yeF9mcmFtZXNfc3Vj
Y2VzczsKLQlfX2xlMzIgY291bnRfcnhfY21hY2ljdl9lcnJvcnM7Ci0JX19sZTMyIGNvdW50X3J4
X2NtYWNfcmVwbGF5czsKLQlfX2xlMzIgY291bnRfcnhfbWdtdF9jY21wX3JlcGxheXM7Ci0JX19s
ZTMyIGNvdW50X3J4X2JpcG1pY19lcnJvcnM7Ci0JX19sZTMyIGNvdW50X3J4X2JlYWNvbjsKLQlf
X2xlMzIgY291bnRfbWlzc19iZWFjb247Ci0JX19sZTMyIGNvdW50X3J4X2R0aW07Ci0JX19sZTMy
IGNvdW50X3J4X2R0aW1fYWlkMF9jbHI7Ci0JX19sZTMyIGNvdW50X3J4X2R0aW1fYWlkMF9zZXQ7
CisJX19sZTMyIGNvdW50X2Ryb3BfY21hY19pY3Y7CisJX19sZTMyIGNvdW50X2Ryb3BfY21hY19y
ZXBsYXk7CisJX19sZTMyIGNvdW50X2Ryb3BfY2NtcF9yZXBsYXk7CisJX19sZTMyIGNvdW50X2Ry
b3BfYmlwX21pYzsKKwlfX2xlMzIgY291bnRfcnhfYmNuX3N1Y2Nlc3M7CisJX19sZTMyIGNvdW50
X3J4X2Jjbl9taXNzOworCV9fbGUzMiBjb3VudF9yeF9iY25fZHRpbTsKKwlfX2xlMzIgY291bnRf
cnhfYmNuX2R0aW1fYWlkMF9jbHI7CisJX19sZTMyIGNvdW50X3J4X2Jjbl9kdGltX2FpZDBfc2V0
OwogCV9fbGUzMiByZXNlcnZlZFsxMl07CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX21pYl9j
b3VudF90YWJsZSB7Ci0JX19sZTMyIGNvdW50X3BsY3BfZXJyb3JzOwotCV9fbGUzMiBjb3VudF9m
Y3NfZXJyb3JzOwotCV9fbGUzMiBjb3VudF90eF9wYWNrZXRzOwotCV9fbGUzMiBjb3VudF9yeF9w
YWNrZXRzOwotCV9fbGUzMiBjb3VudF9yeF9wYWNrZXRfZXJyb3JzOwotCV9fbGUzMiBjb3VudF9y
eF9kZWNyeXB0aW9uX2ZhaWx1cmVzOwotCV9fbGUzMiBjb3VudF9yeF9taWNfZmFpbHVyZXM7Ci0J
X19sZTMyIGNvdW50X3J4X25vX2tleV9mYWlsdXJlczsKLQlfX2xlMzIgY291bnRfdHhfbXVsdGlj
YXN0X2ZyYW1lczsKKwlfX2xlMzIgY291bnRfZHJvcF9wbGNwOworCV9fbGUzMiBjb3VudF9kcm9w
X2ZjczsKKwlfX2xlMzIgY291bnRfdHhfZnJhbWVzOworCV9fbGUzMiBjb3VudF9yeF9mcmFtZXM7
CisJX19sZTMyIGNvdW50X3J4X2ZyYW1lc19mYWlsZWQ7CisJX19sZTMyIGNvdW50X2Ryb3BfZGVj
cnlwdGlvbjsKKwlfX2xlMzIgY291bnRfZHJvcF90a2lwX21pYzsKKwlfX2xlMzIgY291bnRfZHJv
cF9ub19rZXk7CisJX19sZTMyIGNvdW50X3R4X2ZyYW1lc19tdWx0aWNhc3Q7CiAJX19sZTMyIGNv
dW50X3R4X2ZyYW1lc19zdWNjZXNzOwotCV9fbGUzMiBjb3VudF90eF9mcmFtZV9mYWlsdXJlczsK
KwlfX2xlMzIgY291bnRfdHhfZnJhbWVzX2ZhaWxlZDsKIAlfX2xlMzIgY291bnRfdHhfZnJhbWVz
X3JldHJpZWQ7CiAJX19sZTMyIGNvdW50X3R4X2ZyYW1lc19tdWx0aV9yZXRyaWVkOwotCV9fbGUz
MiBjb3VudF9yeF9mcmFtZV9kdXBsaWNhdGVzOworCV9fbGUzMiBjb3VudF9kcm9wX2R1cGxpY2F0
ZTsKIAlfX2xlMzIgY291bnRfcnRzX3N1Y2Nlc3M7Ci0JX19sZTMyIGNvdW50X3J0c19mYWlsdXJl
czsKLQlfX2xlMzIgY291bnRfYWNrX2ZhaWx1cmVzOwotCV9fbGUzMiBjb3VudF9yeF9tdWx0aWNh
c3RfZnJhbWVzOworCV9fbGUzMiBjb3VudF9ydHNfZmFpbGVkOworCV9fbGUzMiBjb3VudF9hY2tf
ZmFpbGVkOworCV9fbGUzMiBjb3VudF9yeF9mcmFtZXNfbXVsdGljYXN0OwogCV9fbGUzMiBjb3Vu
dF9yeF9mcmFtZXNfc3VjY2VzczsKLQlfX2xlMzIgY291bnRfcnhfY21hY2ljdl9lcnJvcnM7Ci0J
X19sZTMyIGNvdW50X3J4X2NtYWNfcmVwbGF5czsKLQlfX2xlMzIgY291bnRfcnhfbWdtdF9jY21w
X3JlcGxheXM7Ci0JX19sZTMyIGNvdW50X3J4X2JpcG1pY19lcnJvcnM7CisJX19sZTMyIGNvdW50
X2Ryb3BfY21hY19pY3Y7CisJX19sZTMyIGNvdW50X2Ryb3BfY21hY19yZXBsYXk7CisJX19sZTMy
IGNvdW50X2Ryb3BfY2NtcF9yZXBsYXk7CisJX19sZTMyIGNvdW50X2Ryb3BfYmlwX21pYzsKIH0g
X19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZfbWliX21hY19hZGRyZXNzIHsKLS0gCjIuMzMuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
