Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0D074086D6
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 10:34:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 37F91402DD;
	Mon, 13 Sep 2021 08:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PGztSQDWKogr; Mon, 13 Sep 2021 08:34:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C9374021E;
	Mon, 13 Sep 2021 08:33:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A091D1BF389
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 81BE9400E8
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C5Al4LCU9tDT for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 08:31:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2085.outbound.protection.outlook.com [40.107.243.85])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D2B2401F9
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 08:31:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YTaioXqjqfvxMrHzidRdYkMVb6AzVQANDsnrMlmDYSZPldi2Euj9iCLRh0jsFv09J4xGZiPJGEdvplThjRRn9pzY5x1aDFnt2ocrZNtWfijz7UpAb+h7fjH1diHhdWlSTn+bqDXi9KVLUVTCSHWNSktLGb/GcRMCYA/jvjN/hU8bkGItwGWNmKTRqPyrDvVRlmuvezClf3amHwqxXlGedRxXESr3ybkdQpJuQO+9j/pj+oarvA+/6z+s0Dkcf75f925C5O5JYziHs0oP61E/+RHiJCklVMvP+3sjVL61TBhL8v2His+fjwOI7pbDdyAhIObFgxwq1flkBDbnQ5V6lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=ASE4rAagVGXa5deMw5+RxN7XsAlkN46v5/lzPTuDMuc=;
 b=A++33iaI/+B7cry2nPoeA53ULRN1nFeoywfeXQe2fzRQJZpyIu/KVWnNFThug8OMM6Jk6Y/o4Gc8gE/Am1lUaggm6p+y/HrEjGnK8RVI9UJhj8azntpUYFXpSLVQXTHRdkfXr6yAGrwVZpDa/PcU/WT63Irlmhm+j4RSwgD4QGANai//oyTxXoNUiBIRYVQ8kQYxXr6gGlUZvleeA0L+ogvhp5Wqi792JoyPcUHEQJax+rI2/pe1ZdvZrN9XEBVFqIdey1wroOm5iieOSBx7J1PJuoZ0wwww1qp/lwCNiMjX5t6NNi5sb4BIKvczmMi/mAjVvdk8UbBmhtnwPdxl0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ASE4rAagVGXa5deMw5+RxN7XsAlkN46v5/lzPTuDMuc=;
 b=VdIt6m+b0C4jywLa4rwDIDQSH2lkjupMplQRhr6JU8YwJnXURr3Y12yPjHt6tb9xaI+Mbfvlwh8tqUYjxZyE/8NtJC1cdO8i3l2saq6uUVM/DOqAveIDN+VmThe6Ucbrajr8ZBLDTySXbvo7VFS61JbmPwMNSSazysaKJ0unjqU=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (52.135.97.18) by
 SN6PR11MB3263.namprd11.prod.outlook.com (52.135.109.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.18; Mon, 13 Sep 2021 08:31:53 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Mon, 13 Sep 2021
 08:31:53 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 14/33] staging: wfx: uniformize counter names
Date: Mon, 13 Sep 2021 10:30:26 +0200
Message-Id: <20210913083045.1881321-15-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210913083045.1881321-1-Jerome.Pouiller@silabs.com>
References: <20210913083045.1881321-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PAZP264CA0067.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1fd::10) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (37.71.187.125) by
 PAZP264CA0067.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1fd::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 08:31:27 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 535819c8-0fc2-4d62-99e3-08d97690e225
X-MS-TrafficTypeDiagnostic: SN6PR11MB3263:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB326312EB1E680781286978F993D99@SN6PR11MB3263.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QZYuBRLyWVb2L0nwfIM3nwgYoJ2x/GAjbLsjwJieTR1Cz47Oph8sEZQ8wSW0HJ9AW6GcN5YzE/rcWlI0+cD9R/l+zZY++b96m2aFCNut6/9WlAWVsAgRSkMUqpGJyAr7Go/LvABnOyNXIG6qROXK/y7SkC9IoDwOyyduln46a0lizqQvrsmYvyYAbmMm367TXhWkqRNoEqQ4OHlpeFOj1vldy37LVoECJHTt23qsL+lUmyY6uA4Vsie2gaWnxTzW3gGCoSyJKdL3hHAjLqFhh4r1eLpA2M82WxuZFTGNqwiTn1ggwgc4476id9jhRMh7V8P8l5Mb4MfToVnLSFI1El05Q+SX/1TR5wLeA7XvHO4L+RaoX3gKH+IKgpqipK/kPS422OcaixiOksVH6gEfixJlIrMcNlJpBmAeFVLRhD2lzO8BJSUx3/oEq383f0NOmzXLxiYf7ZVQzJM6t/Kal1AQMyJN8vUraeJYE63HYxToWB4/zIOm05hNQczs2Mt023Q4LbxXaUsS2AKILE4fLF+iJMecBAt3vYbrcH2tjphguhhcbgJ274L6b1QjiwEfN5dVocbyMhFDHlDiGpoyuKkLibAWo+CDxQ9TsskFaCKwNQTA1+WxGAwixg8SlZ/kjfZ4RR70uU9mqgJbAWL8E4XgrAa+mgWUYe/E812FDyb6fiMGdtHSWwAmofubgdy+9ra8KMsK/aUsx1maN8PhKw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(107886003)(956004)(2616005)(5660300002)(54906003)(38350700002)(4326008)(316002)(38100700002)(66946007)(26005)(66476007)(66556008)(186003)(8676002)(36756003)(8936002)(86362001)(508600001)(52116002)(7696005)(6486002)(1076003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aE5wNndKaDdqTEZpeWQ0S1J3SFUyM2FtdnFkVlZ1Y2w1eCt0cXk1bWhSUmlB?=
 =?utf-8?B?SDdZUkJaME5hRW1MQmhZYzFqZSt0VzZoV0tqcmVLMjRTTDRRTTQyM2xobGdj?=
 =?utf-8?B?aEFhMVBoTitkQmxCT1NFT1RaMlRzOWUvV3AvSkxXY2p5YTBFbWFaeVVyYlhr?=
 =?utf-8?B?V3BJUXZDeGZwSXErMitNK2pvaFNPc21oT1ErcWx0K29HQUx1cXZ5aUpCYXJZ?=
 =?utf-8?B?ZE5UczU1QlM3ZzhqMTJLLy9YWE9BQkFqSUw3bzA2SDlpZERXU0FoaDlXNEpl?=
 =?utf-8?B?R3dvQmkvcTRrMEVFcnYrbVc4K1ZORkFhOUptNmUrRlVyL1VVckFxZnBiTVF4?=
 =?utf-8?B?SGZBaWJ5bndSbkY1N0k4V0dtL2pOb01uS3NHRlB0K2VIMkg3TFR5TnJ6d0tu?=
 =?utf-8?B?blI5a2pqN0RKb3U3cjk0TG44bERMVFhyZFBjbUppTHk5ZU03MElZQ2NwK2VT?=
 =?utf-8?B?RlRXdWpQWCtRaFpId24zemE0V1VPbEFIbFhYTmRwWEhsRDdTTXE2RUhNeUxK?=
 =?utf-8?B?a0h0MnRjOHZ5dTV5TGlGU1o4enlkVVFMR3E0bG5vNlZzT3BOeVdCbit5bkhC?=
 =?utf-8?B?NjZuMUdidzFxUjJDMGF2TmVjWndpbS9HK29xa0doTFZ4U1ZKcXlTWkFUZnRv?=
 =?utf-8?B?OGkxb1RkRXhtSjZXQlFMU094anl5c0tDeEMwcnlrODJHRSt0SWlGSjFkZVpT?=
 =?utf-8?B?Kzg1bDFUYnN1WnlacVNCNnl5RVBpSk1mSXR6cnM0eG5rUjA4RzhxYjFMNWdj?=
 =?utf-8?B?UHQvd0dJSytJdWlwR2wvcE9jSGlxbFIwQUV2QUw0eXRwamdjUC8wU3VldW1o?=
 =?utf-8?B?c1pwMkVJV0hXSkg1Ukt2MkQxZTN5Q0doQ2xCNGRQbi9HelZITDNDZDlkamZG?=
 =?utf-8?B?c0tnL2toand0Ykp3VmtMZHlURTRha1hpbE1rMk9oSmVoSGZ5eTRUY3pmeVVx?=
 =?utf-8?B?dVROTXJ1TzdWZTFWeUNtZzlUY2Y4QXR0TGlzdW9nM0pWa3RJMkQzUE10Tlhj?=
 =?utf-8?B?RTIwVkhZWURhZStUcEZjcEdHOURGQ3VGYTZSYzAvaERKR0orU3NpT1ZFVWM2?=
 =?utf-8?B?THRPVm9ycHpoWHdyYktCMEtDVjBLblFXVnF6VE1jV2pnWFNsckhTTmx5bFJy?=
 =?utf-8?B?eFN2UVo0blJ5N2dHT3lTRTdXMGxuRVdOdFhMamJ6NWkxeVdSNzgwVnlIcEFW?=
 =?utf-8?B?MEt5UnFvN3c3Y3ZnYldKVFpYVXpXUWRwcERqOE1HQU1KUkREVWZ5aTRyNEtZ?=
 =?utf-8?B?cU5idmt0bUt2emt2ODQ5d3FCRjlNWTAvM1NBTTdhTm55SUFLWmgwM1V2YUJC?=
 =?utf-8?B?eXlpSVN6MzZFUGRqdVYvQkNiWFBNSlJnVEptMnNIcDFtczZhRUdlQ3dsSlBp?=
 =?utf-8?B?RHVzcEUwbHp1L2tXR1NzM0poamNmSVdkcXozeWttSjVrMS9TaEorOEFGTEpw?=
 =?utf-8?B?RzZlbTdKR3h5dWlEUTNLclVnRE90bnAwbEduSmZtMXYvbzkxeXliTE10bnB4?=
 =?utf-8?B?ZFMrd1IxZlVIa0xiaS9SSG93RzlGVW96cnpNc3d2L3hwbWplTzB4YSt6K2dR?=
 =?utf-8?B?ZktNdStLb1hSSGNES0hIeDBmUUlvdXR6REQ1UUVwczROYWczLzdCai9TcGU3?=
 =?utf-8?B?MGlzWXBuRkZES21VTXhsbGZnTXZpZy9LN25qeVJEZytTb25ZZWRqUXVoanNY?=
 =?utf-8?B?S3NKQXpSQVRUZ0ZIZ290SHBucW9mQXNDenZsQmt1bXRjZlFNWlMvRXh5WEFP?=
 =?utf-8?Q?iwSVUMlpRpvq4ny+RjtnHEdjyx67VKab4viGq9z?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 535819c8-0fc2-4d62-99e3-08d97690e225
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 08:31:29.2268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uXf6YoVnlgA3LTMJpfzMvA54LzrUioS4s6U8XukeuDaBOd87f1cd+W+U36R7q4ddUhkp+tyj0oJE/o98M0MWLQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3263
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
