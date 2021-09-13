Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9FF408720
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 10:36:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96B4440249;
	Mon, 13 Sep 2021 08:36:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x--HpUguxzDP; Mon, 13 Sep 2021 08:36:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A60E0400E8;
	Mon, 13 Sep 2021 08:36:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 607741BF389
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:32:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47A3F80FA3
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yn6Eq268AbFX for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 08:32:33 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam08on2061b.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8c::61b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B480080F75
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 08:32:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y++ZtZz1tmTEuP89iaKnhzw60PksckQEiX3l82gKBBCCaoZxjiJkdX7yob7yZbGo4RjhW2T+AP0r+pAqVqz/D+5yjNKaJDh5aUvcXM5V0HrWZ4aXcVybvD6hR9gAQbWy0phLfXvK85jr5EDfQdJKBxUrBiJTwyPrp8GPZDuOeI1cMvryINzMAl8R+TexQfIDebWHt+T1xJFm+b6gaIb6zXB9lz5L5y8+5jBmcUuaDW6TvP3BJZqZnPCxD6VACHhmq2oufMozTCxffhDBSRggvHOT58QKnjK21iAREdt7/j9/eR1T3eUVMMkf5zEcSMUHa1HpfkmP2Puk+lv3Ew33aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=xsUUtMkFWtWrY3otxSBJQqe+VKNKELAgz0g8V67SD4c=;
 b=Hr6HIZd8khItYUS6J3+BVkCYH0Rq1pk3DDFaa8iuOgJLl7xsVLAMfLBdt+MfZZKyKNsM96/PtD7RrrvTLpAkEj/y/4ai/pZDsAaGmb4SjyyFK1ZMCjOkYLrM1bLK6V08+/EWR1uaTIIL4EUq7UEQFcD+yXAzUSAC1hSTrQAunN/wrJVp2X9JVadlJaEUNcl6yLKnlYMc6v45IdPkx8j1q+YheQlhLsFXR9By2ycYDqGsYOF+F4W2spkLPbvzcC4O9Xdrdvg6Wz9dLxzs7If3qgiHCoXj+ElfJWiPLziqnL50RNUa59MNC7F2RoDr5M3LP2iepu1tSk5qQHX083+UoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xsUUtMkFWtWrY3otxSBJQqe+VKNKELAgz0g8V67SD4c=;
 b=YTU7ACEEaOxENH1ZrP5h4014qAv+i9W1ZVFkjiMOfCWrM6quLzlpkFSOorZYTQz7oITj6VZ5zvqUgw4XmL9jZPrWG8OyWDgIFpY6vtVSXquN18jjaAfA7/aPsjKj0iMpN7/fiSAU3tDKQfYGImFMVRvmFZth2HuQmWoyfLSvV1U=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2717.namprd11.prod.outlook.com (2603:10b6:805:60::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 08:32:31 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Mon, 13 Sep 2021
 08:32:31 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 30/33] staging: wfx: explain the purpose of wfx_send_pds()
Date: Mon, 13 Sep 2021 10:30:42 +0200
Message-Id: <20210913083045.1881321-31-Jerome.Pouiller@silabs.com>
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
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 08:31:57 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff3c8dc0-d48e-404e-8687-08d97690f39b
X-MS-TrafficTypeDiagnostic: SN6PR11MB2717:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2717E9F710B00085D6A7ECED93D99@SN6PR11MB2717.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ICKRnZWe2yYB9KatO+4kemlvljt7lTQHY/wwA0FcstKXXeY4RxK8BZJk33zoRcbfVaKEssKlhuJqjh1tAS7NtaI2hEESMvaa3CfIL5ER2BUhA7FXBGhJHthlmH5Y/v+sD491zvtMwtpXcIIwyAy20NI+cUa5f2mR2M/E8TsMQ6B1n4TFsdvelQbIFmiwQnSb0NDIiOzLHKqTYejwfx+LyTWJFIDV44BnOZ70/yo9dlHWcJ06rfzpSo5F49pPbGH1t4vgZf06crY8wEvSrT+WdWNrazrqL0us9/WDSqi70ly05jW0P1jh+qOaZMaOFYz4YHcdDcf/KB7EUAu24YWR7/rT1w0o7kiaf3cROD2gYcCKF6TlDGmaKf2thtkJy5JBgmi2ZMMQMuX7ZXwfPPdIyS/pbNlJXj/rYIiv+aOGrtkX/o7suUOUDOPeUjCnkturxgE39ndpMt4yKRNejHadUH4Kxb0wRzIqOVqsVYzmM2lBlJ9JIlHaDHMdlWesNaYbKUQv66OsKFPBB3j0tZKaue5Ju77ilJOPCOOAMeqnBzJB4BMFIlQ/xeWZIjfiRU20rtmjdsU2y0iHlMpp0gNiHp3uUtl0TgS5Y/kxHXGXYgpSIlJjd1VbJrGHw16q1DZSIWY3KXYc+afhbsSoSXYidCwLnKUqof4+7lKALXF4vjhare79C2/c4d6pgub8lQ3JTJxsxVZ3XZAnVg6+81daMA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(2906002)(107886003)(26005)(66946007)(38100700002)(52116002)(7696005)(1076003)(956004)(36756003)(316002)(8676002)(38350700002)(186003)(8936002)(83380400001)(54906003)(66556008)(66476007)(508600001)(6486002)(5660300002)(6666004)(86362001)(2616005)(66574015);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1JuU1ZFeTY0MzQ1U29BbkgrNW1NeVdtNGRHNXFVd3gwRCtZajI3SDlBanVX?=
 =?utf-8?B?S3NZUDgrMW1TdlZzWWFJU3lOVUpCWis1WncvWElBVEFSdjhqdUFhT0pPdlBp?=
 =?utf-8?B?c05NNldOQTcyYm9kZ0hDL2ErQlE1dUJlcWNWaDd2Y25JR3FYYXViSWRyS3Jx?=
 =?utf-8?B?clJMVUNiRzU2OTZnd2ZSMStGUjBUK2cwVGxhK08xeDNSWHord3lrYlk0Nk1m?=
 =?utf-8?B?Q1VVZjRad20xZkpNUitwcE5mUTNCV2VwSVlCZUZRVzJDUEtBbWtwcXg3OTNw?=
 =?utf-8?B?b3E4TFBtVUVvamJZdzhyKzJXaHVZckc4QkxnY0Q2SWNTUzRuTWRUVWtTeUJO?=
 =?utf-8?B?bnhuNnF4NzZPTnY5SVlFR0VxdGV5VVVBZlJrOXpQZlhRdzZJZVhuWURsTlFS?=
 =?utf-8?B?R29qcS9IcGtjUGhhVmhacWxrOW1BN0lMMVRHa0FVNDVvSkl0a3dDNks2bC82?=
 =?utf-8?B?MDl2L3laem1VOUpzb2tZeFJ4OHlFZHpycks1bk01U1J1ODJBZXRWUzBRVEly?=
 =?utf-8?B?T1Q2V0VZYUJ5TVE3cEczU21za3BqbXcvUEtBcGZJRW95TVd6QnN6MlUzUEFz?=
 =?utf-8?B?MTM5NzAwSHBjaTYrNThOalYyRFhyYTRKZEVnWGZiVG9ocjFCYzN6NFd1dncr?=
 =?utf-8?B?OEdlOS9xL25xVHFtT3pQMjNSWEMyZm5VTEx2QTd3NUxNQVRYYzZocE9WUi9w?=
 =?utf-8?B?TE9Kc2xNS3dQNzNWOHRJcHdXcUVmNXhrWUlRR2t6d1QwY005RXJKYlZscnhQ?=
 =?utf-8?B?bGJ6bEhQSVZ3dnozY1NSTGE1S0xNZUlzRHdPZFA5QjJmdXVKVW9VODhlQjhY?=
 =?utf-8?B?eDdjUzl0NWFRQTFZTkYrZlJRK0V6MlBVTDV4SVEzeUcyQU1Ec3BLMjFrK3Nv?=
 =?utf-8?B?LzdKL0MyN1hJd2lMUGFoTWFLaEJDWVBTeWFXUWRDQ1ZlQ3dvQ3RaekVCWWxt?=
 =?utf-8?B?Z0dQL3FPU1ZiMUFYbmRLbjFsMFRtc082dEJ0c2xhdENlQ2R3d1dZSnExSlpO?=
 =?utf-8?B?QndFUFBwMWtQOE1EUGZCRlk2cmZuaGRzNW11aXRzSFhRZnQybmMvU2hoYitJ?=
 =?utf-8?B?L05Sa3lCTjdTK2YwQ1grT1VOM3MyYlZhWmhOTWhJSmdlL1dLTkI3Kzcrc0pE?=
 =?utf-8?B?Qloyc09SaklQdEVNTUZuWVNsMFp5aEpFR1ZXT1BpKzVTd3MzaTVjV0pWNFlD?=
 =?utf-8?B?Qms3dGNvVkFoVU5FSVJqM2dWamphaFRjVnBIaWk5QVF1Zm5icFRVOG4reXNn?=
 =?utf-8?B?bUxrR0pxUitlT2FUMVRVdDlxNGkrNFJNWU1sajdJb2I0OWFBYjVVZ2hOZmJ0?=
 =?utf-8?B?ZzdxRHVwL2xhQWorQ3p0RUY3SmhnM1VKdE5rbWZEMFVhRkVKb1BoV1JhODZl?=
 =?utf-8?B?eWZUdzhaS3VPRFpvenFmNEUxWCszSXkzUWc0SkRaVk5tT1NqNUdSdTc1aWhr?=
 =?utf-8?B?bXZMdDRGaEJxQmZnRHIzNkpEQUozeVhjRVRvSGZyMXlKemFwSFQ1dkNWL1FB?=
 =?utf-8?B?bzdKUXJGVkcyS3BBUEFTbDRidFJCU2dMMFJQZitoTzlxczAzeG50dUZNdzFt?=
 =?utf-8?B?eTB6cDhneGQ2MDdBM2hieXlMbFM2c3c2SmVaOGtPeERvN0s5akRFT0d5UGgr?=
 =?utf-8?B?Wm8xSTZKVG1NVlB2TTJiZTZzd1Z6Q0t1QllwWDU3eE9mcEJXanRKcVVtSzNx?=
 =?utf-8?B?U0k3L0t2TEpTbUlTQmVFdExLWmhuaHNhZkN1RGN0RUJmN2wwUXljY21QOGhV?=
 =?utf-8?Q?vXJt0FESMFPd9YGKoa8Rs1ewnyEhcmR+6tFURcL?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff3c8dc0-d48e-404e-8687-08d97690f39b
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 08:31:58.5469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qfzC51OfaHymXdsvluO1DWZhmGHHa2BfvJSS/XOrW9s/m8PqXUOy2uvycywe4hcmriSKg6K9RJxLVuDURU99TQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2717
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKT24g
Zmlyc3QgbG9vaywgdGhlIGdvYWwgb2Ygd2Z4X3NlbmRfcGRzKCkgaXMgbm90IG9idmlvdXMuIEEg
c21hbGwKZXhwbGFuYXRpb24gaXMgd2VsY29tZWQuCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQ
b3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5n
L3dmeC9tYWluLmMgfCAxNSArKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9tYWluLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYwppbmRleCA4MzI5MjU0NGIxMGEu
LjQzODZlOTk1N2VlNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMKKysr
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMKQEAgLTE2Myw3ICsxNjMsMjAgQEAgYm9vbCB3
ZnhfYXBpX29sZGVyX3RoYW4oc3RydWN0IHdmeF9kZXYgKndkZXYsIGludCBtYWpvciwgaW50IG1p
bm9yKQogCXJldHVybiBmYWxzZTsKIH0KIAotLyogTk9URTogd2Z4X3NlbmRfcGRzKCkgZGVzdHJv
eSBidWYgKi8KKy8qIFRoZSBkZXZpY2UgbmVlZHMgZGF0YSBhYm91dCB0aGUgYW50ZW5uYSBjb25m
aWd1cmF0aW9uLiBUaGlzIGluZm9ybWF0aW9uIGluCisgKiBwcm92aWRlZCBieSBQRFMgKFBsYXRm
b3JtIERhdGEgU2V0LCB0aGlzIGlzIHRoZSB3b3JkaW5nIHVzZWQgaW4gV0YyMDAKKyAqIGRvY3Vt
ZW50YXRpb24pIGZpbGVzLiBGb3IgaGFyZHdhcmUgaW50ZWdyYXRvcnMsIHRoZSBmdWxsIHByb2Nl
c3MgdG8gY3JlYXRlCisgKiBQRFMgZmlsZXMgaXMgZGVzY3JpYmVkIGhlcmU6CisgKiAgIGh0dHBz
OmdpdGh1Yi5jb20vU2lsaWNvbkxhYnMvd2Z4LWZpcm13YXJlL2Jsb2IvbWFzdGVyL1BEUy9SRUFE
TUUubWQKKyAqCisgKiBTbyB0aGlzIGZ1bmN0aW9uIGFpbXMgdG8gc2VuZCBQRFMgdG8gdGhlIGRl
dmljZS4gSG93ZXZlciwgdGhlIFBEUyBmaWxlIGlzCisgKiBvZnRlbiBiaWdnZXIgdGhhbiBSeCBi
dWZmZXJzIG9mIHRoZSBjaGlwLCBzbyBpdCBoYXMgdG8gYmUgc2VudCBpbiBtdWx0aXBsZQorICog
cGFydHMuCisgKgorICogSW4gYWRkLCB0aGUgUERTIGRhdGEgY2Fubm90IGJlIHNwbGl0IGFueXdo
ZXJlLiBUaGUgUERTIGZpbGVzIGNvbnRhaW5zIHRyZWUKKyAqIHN0cnVjdHVyZXMuIEJyYWNlcyBh
cmUgdXNlZCB0byBlbnRlci9sZWF2ZSBhIGxldmVsIG9mIHRoZSB0cmVlIChpbiBhIEpTT04KKyAq
IGZhc2hpb24pLiBQRFMgZmlsZXMgY2FuIG9ubHkgYmVlbiBzcGxpdCBiZXR3ZWVuIHJvb3Qgbm9k
ZXMuCisgKi8KIGludCB3Znhfc2VuZF9wZHMoc3RydWN0IHdmeF9kZXYgKndkZXYsIHU4ICpidWYs
IHNpemVfdCBsZW4pCiB7CiAJaW50IHJldDsKLS0gCjIuMzMuMAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxp
bnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qu
b3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
