Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D4D408B9F
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 15:03:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70B1E60704;
	Mon, 13 Sep 2021 13:03:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YgiEmX5NpzP4; Mon, 13 Sep 2021 13:03:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7919606D3;
	Mon, 13 Sep 2021 13:03:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA5BA1BF3A4
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 13:02:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A3A6340348
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 13:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FpwyGN9Z-WjB for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 13:02:28 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam08on2062b.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8d::62b])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E072940350
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 13:02:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EBMrGXDzpIGwJ+p9WuOHXOFVZuf5ViOpHn8JPvCYvhXgeFT1Y0yL/Yn4HREUY450Pd11OxvPalNCbrVIyijOgoU46tGso2U6wfd7OaXeYsgLiEL9DN5b+hjjmjMUsYvdbPiY5PgM18HrwFkBVOzsakKN3FanMVJqUbcYHzcx+EW9ns6CgzR/4NdSCNS6zQw1tJdNd0JSboZsxmgBY3K9n4/49Sup2TbU6V2kyI57OvBwp8tSzNY36POOTWheJ3xaYZzhMMJBb6rDfYXBEuPYB6L3iuoWu6bApQBHFejHVsY8ZaRsEiW+bwHrOYpnCZSWXVX/61zYAXIM0T5X3h60ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=A5/7GqCAYp3vk0jpEf5Ll7VwtNGaK4Te6PdbcTGXLL8=;
 b=oInRN52dimKGBGUJpcgAPAUm2tTq9N0zyOh4fqfOWwwQ7E3Fe6pqTeggIk+nLecHmKwDU96Kbkio4daKeLpVkkfw1MlwL1tQCaMpQEYE8/nDhz/Z/BqrXDQ4U1A2lgGIYyV5DxnW+NlU5H4R7n+Nw+IIKHfP988+rc5+tfmFgdc92mLeH5ES4pLHPdaeW/eTVK9tT1hlFH91gTDTjQayIFo7GzY99Vx6rhQy7MmwAjX/Mlqi41DQfdNv/9hoxCCz5/+2BpMvQpoln5XwRq7k5+N9Eyc4aRC0OWsCxLS6TNBlPvgTUqPf9XYQ2gnXUzEPz3eS3qbN5ncdOScZ8e28LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A5/7GqCAYp3vk0jpEf5Ll7VwtNGaK4Te6PdbcTGXLL8=;
 b=SIQmwWca7IHtubbijnnf3VZlTo0katj7wFtOEoEsvDu0weDK6gpx7Hqt4AIGpIE1d+9c5B8Hgiv+Pcju+sV4zjuFzztF7NEDlNr3DtAGcqYX2ltRaoOo1gXeBD+Cp/FgJCU9xLGrpBBSvSJ7YZrdx+pSp142fHzjPODlc7I1kOY=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB4860.namprd11.prod.outlook.com (2603:10b6:806:11b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Mon, 13 Sep
 2021 13:02:26 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Mon, 13 Sep 2021
 13:02:26 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v3 05/32] staging: wfx: avoid possible lock-up during scan
Date: Mon, 13 Sep 2021 15:01:36 +0200
Message-Id: <20210913130203.1903622-6-Jerome.Pouiller@silabs.com>
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
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 13:02:24 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d458163-cbd1-4fa5-2264-08d976b6bc05
X-MS-TrafficTypeDiagnostic: SA2PR11MB4860:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA2PR11MB486068DEC1B1E6380B7FA72393D99@SA2PR11MB4860.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:765;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vrls+GnK4zoQwfvXCnJ895h+fBDmsCDJTYn+CJ3E+KWc6X1vQbJhu7TfW3gTXPvs+h/60v8379Ct+t+cTMlfJORfO84GwTka4wn0rGS/4QcZBI+rnnTq8+6EGTyDKRBatoBi5W9wPGCGSuYhyXN7atWx4TlsDIfq6/paRsoC4MysvPDeGBECeIDTB5eJMq+I8Ln58S69CupjxnGkGiHDvpZzs2x+ligQa4+B23GaEL+rNCd/R77Hs0EK+ZRNR5JmDVrPJOOuYMPMjH/pqMONVFJ5SiWegyxDi5HkYa3YpeKoKTy5PEhWg90vTbMoRfu9i6LRrw9b38km7gUnaZoDRlwto07wgWz4FJyJ2dAYAuuIX+M8BBkWnfBVTWJlYL99G555PNhfgYT0W/AiGSVk1LFI12eXu+l8YP+q4ONKTX2WbIOnllfSxLRY3hANJiUQanareAgxqcclfksjOWLyEMdT7EbsgkBe7M6DQDTWdHScFRWsEkCWqQ0R4HdYxcC75qETHyQdve2LF0weYQ/keYNkt9RP2oVY/yJviK+X54vw/9HIK04IxtRIwdhuOpxo4h2GCgYkJa+K8haf+cJ4dLzq/+28esHpGCXE5LFT6BeHOMK1UMPHq48RXUBryiJy3AowlS/bl6Pzls015Y2XZ/OrHnLuP9lpM1uPZa7I5Rnu1j1BlxdLJXlHR71xr4BEjE/CDGOzVENvaX54A4w+OA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(956004)(66574015)(6666004)(66946007)(2616005)(26005)(36756003)(38100700002)(38350700002)(316002)(4326008)(107886003)(7696005)(54906003)(5660300002)(52116002)(66556008)(1076003)(66476007)(6486002)(508600001)(8936002)(83380400001)(86362001)(2906002)(8676002)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGVBYjZXYlNYdDRDdjUvb2QzdTVhN3QzL212dzFOREdrQlFsLzZ1Wm53U29z?=
 =?utf-8?B?UWJGdHUvOXg4aG5ud3VTbEpBZDB0bkcvUWpyUmN6ZHpobnlFMVJIcElxRmMw?=
 =?utf-8?B?QTYxWUhvN214NlNFS0dFQkt2MVNldmtwdzBkemJKakduTUUyV0VHVUFVaFNn?=
 =?utf-8?B?MGJRY0daMzJDelRCMmxtU2NNd1RMZ0MzQkZnenE1SHpBc0tGV09JUm1zOEVS?=
 =?utf-8?B?eVBYelQxcm1MK3REbFVYTE5mWWNDcmZCZnVRM0M2NjhiQWk1ckdwRW1PUUNq?=
 =?utf-8?B?di9hNlFaSWh1QjhBbmMrQm56aVBYNjdTenp1ZHU4WlpaOG5XTzFodEx6UUZn?=
 =?utf-8?B?Sjh0bVkySndJc2RyM3NHV2pWeHYvK2Q5Z2l0SUwvQVZ5TjdYZWRnUlBBOS82?=
 =?utf-8?B?S09yUEtTMExjTGJxUWQxT08zUlhpMkRMS01aK0gwOTYzeHVjOHhIaWpOS21N?=
 =?utf-8?B?ajV2ZnZsSHdkMTk1RmtlTkJFczhYcE1wK2V0QnBzaFZ6K3I5S3E1MGJLdFJo?=
 =?utf-8?B?amY5N1hnb2hKcUhia3dFR1VHS1hSanhPc0Q0ZHduOTJvWGNNTlBWKytBOEVV?=
 =?utf-8?B?cHkwSjBDdjgxNHpxSUZFL3JndU02SGIyeW1rckNHR0dMNkpkK2w3WU1QblFQ?=
 =?utf-8?B?S2VpUHowbHpHQzVRSWx4RXFtZG5uMXY1S3RIL2E4b25vMCtWNTE5a1lFNXJH?=
 =?utf-8?B?U0JDbjdmMUgyWmV5bUVRVEQzYVVJSmdmNldXdzV3RVZqaHJqMjVlK1V1aDRH?=
 =?utf-8?B?WW1yWlF3ZUd1cWlWLzNwL0tLS0pqV0RxZWMvVGFYSUNhS2dWemQ1dW5YSTRi?=
 =?utf-8?B?Qkl2WGNwZHhiK3VMSkNFZjA3OUhtNDBkZk1vL0NndWxMajJuS0gzcStQQWlT?=
 =?utf-8?B?UTJUVWJ3MXB0YmQ2MnQ4eWFzdmtCRkVGNnhGVWszMHN1ZURuMUluc2IvdXNL?=
 =?utf-8?B?QTdWdlUyV3JPKzNlODVwL3dOc2dNcjdmYVowL2tNTXBFeXl0S2VmWXlWQWFM?=
 =?utf-8?B?bzFoY1RHL2Z5ZFg4MFdEYkdUU3hwUmhUc3FTODJUNHJabGJENUd3eWFTNlBY?=
 =?utf-8?B?T2tRMFl6SS94YnVEQmVId044cHBNb2U3RHpzT2F2K3dIMmtpZCtZcE45U1Bz?=
 =?utf-8?B?eDArYjBCWlNGN0hsVWJ4VWxTNHgxZWZ3UHo0K2x1WFp3T3Z3U2lxOTZQL0Rj?=
 =?utf-8?B?cmRzcW9xa0QyOHg1bEhmdU0rYy83dXJKU3RrcUxmQi9KSml3SThYNEFodHB5?=
 =?utf-8?B?N210bE1PSDVucUloQVBWNkpmVWFEalZwT0cvYlhDUjg0QXova2dDN0wyNTBt?=
 =?utf-8?B?L3dXWnRlVU0zUWZmK3ZteHoybUlEMk9ZbWJRc3dUd1JWNC9hRmZFTThsWEtZ?=
 =?utf-8?B?aXlHaG5iYndsSTNIVHpiMjF4QWJXdWVSRWNjNDBPcGgwa2Izc0NQTzNPMnBN?=
 =?utf-8?B?a0J5ZVd4V2x6dnN2YmdaNGJGQnRaUEs0OURMVFA5Qndjbm50YVdiaEJjVDVB?=
 =?utf-8?B?T24rRDZUM2NtNExxM3RXZThneWkxdURneTdRYUlROVpHNlprdS9LRkUzeTFV?=
 =?utf-8?B?dVBrSi80b093ZmVMaTUrNWJHODRoTFZGcWNNL1Y3Z1RNNm9pSFZUcUpocWcy?=
 =?utf-8?B?UExORmpRQWsyZ01qdjQ5Yk92dlZaU29xeU9vbWlNanV3Zi82UDFiQUIwMWcx?=
 =?utf-8?B?U0prK2Fnb1BVSTEyVGhZWnNqQUJaWldlSmR6MzFVVHRUMkVvNjNTc21pdUpL?=
 =?utf-8?Q?pVRSnbiyAmKD2a2xfNecZnTGkR0ohLYbQm67VZ+?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d458163-cbd1-4fa5-2264-08d976b6bc05
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 13:02:26.1493 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OZnAradG7Wv1AHOpMQe2WeGQIRth7dvnJD51UTh+27OyGOAa7H3fC30vGio5RpWvP9gykOsPf1zHRN4ekFr9Kw==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSWYg
dGhlIGVudmlyb25tZW50IGlzIG5vaXN5LCB0aGUgZGV2aWNlIG1heSB0YWtlIHRpbWUgdG8gc2Vu
ZCBzY2FuCnJlcXVlc3RzLiBUaHVzLCBzY2FuIHJlcXVlc3RzIGR1cmF0aW9ucyA+IDVzIGhhdmUg
YWxyZWFkeSBiZWVuIG9ic2VydmVkLgpEdXJpbmcgdGhlIHNjYW4sIHRyYWZmaWMgaXMgbmVpdGhl
ciByZWNlaXZlZCwgbmVpdGhlciBzZW50LiBGcm9tIHRoZQp1c2VyIHBvaW50LW9mLXZpZXcsIHRo
ZSB0cmFmZmljIGlzIGZyb3plbiBmb3IgYSBsb25nIHRpbWUuCgpUaGlzIHBhdGNoIHJld29ya3Mg
dGhlIHNjYW4gcHJvY2Vzc2luZy4gSXQgZ2l2ZXMgdG8gdGhlIGRldmljZSBhIHNtYWxsZXIKdGlt
ZSBidWRnZXQgdGhhbiBwcmV2aW91c2x5LiBIb3dldmVyLCBpdCBkb2VzIG5vdCBleHBlY3QgdGhl
IHNjYW4gdG8gYmUKY29tcGxldGUgYW5kIGl0IGlzIGFibGUgdG8gc2VuZCBhbm90aGVyIHNjYW4g
cmVxdWVzdCB0byBmaW5pc2ggdGhlIHdvcmsuCgpBIGJpZyBwYXJ0IG9mIHRoZSBwYXRjaCBhaW1z
IHRvIGF2b2lkIGFuIGluZmluaXRlIGxvb3AgaWYgdGhlIGRldmljZQpnb2VzIGNyYXp5LgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMgfCAgMyArKy0KIGRyaXZlcnMvc3Rh
Z2luZy93Zngvc2Nhbi5jICAgfCA0OCArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0t
LS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5oICAgfCAgMiArLQogZHJpdmVycy9zdGFnaW5n
L3dmeC93ZnguaCAgICB8ICAxICsKIDQgZmlsZXMgY2hhbmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwg
MjEgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcngu
YyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMKaW5kZXggOWZjYTdmMjYzNzJhLi5hNjBj
NGE0YmE5MzUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMKKysrIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYwpAQCAtMTc1LDEzICsxNzUsMTQgQEAgc3RhdGlj
IGludCBoaWZfc2Nhbl9jb21wbGV0ZV9pbmRpY2F0aW9uKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LAog
CQkJCQljb25zdCB2b2lkICpidWYpCiB7CiAJc3RydWN0IHdmeF92aWYgKnd2aWYgPSB3ZGV2X3Rv
X3d2aWYod2RldiwgaGlmLT5pbnRlcmZhY2UpOworCWNvbnN0IHN0cnVjdCBoaWZfaW5kX3NjYW5f
Y21wbCAqYm9keSA9IGJ1ZjsKIAogCWlmICghd3ZpZikgewogCQlkZXZfd2Fybih3ZGV2LT5kZXYs
ICIlczogcmVjZWl2ZWQgZXZlbnQgZm9yIG5vbi1leGlzdGVudCB2aWZcbiIsIF9fZnVuY19fKTsK
IAkJcmV0dXJuIC1FSU87CiAJfQogCi0Jd2Z4X3NjYW5fY29tcGxldGUod3ZpZik7CisJd2Z4X3Nj
YW5fY29tcGxldGUod3ZpZiwgYm9keS0+bnVtX2NoYW5uZWxzX2NvbXBsZXRlZCk7CiAKIAlyZXR1
cm4gMDsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5jIGIvZHJpdmVy
cy9zdGFnaW5nL3dmeC9zY2FuLmMKaW5kZXggMWUwM2IxMzAwNDliLi42OTViMDY5NzQxOTQgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5jCisrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy93Zngvc2Nhbi5jCkBAIC00MSw3ICs0MSw3IEBAIHN0YXRpYyBpbnQgdXBkYXRlX3Byb2JlX3Rt
cGwoc3RydWN0IHdmeF92aWYgKnd2aWYsCiBzdGF0aWMgaW50IHNlbmRfc2Nhbl9yZXEoc3RydWN0
IHdmeF92aWYgKnd2aWYsCiAJCQkgc3RydWN0IGNmZzgwMjExX3NjYW5fcmVxdWVzdCAqcmVxLCBp
bnQgc3RhcnRfaWR4KQogewotCWludCBpLCByZXQsIHRpbWVvdXQ7CisJaW50IGksIHJldDsKIAlz
dHJ1Y3QgaWVlZTgwMjExX2NoYW5uZWwgKmNoX3N0YXJ0LCAqY2hfY3VyOwogCiAJZm9yIChpID0g
c3RhcnRfaWR4OyBpIDwgcmVxLT5uX2NoYW5uZWxzOyBpKyspIHsKQEAgLTU2LDMxICs1NiwzMSBA
QCBzdGF0aWMgaW50IHNlbmRfc2Nhbl9yZXEoc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJd2Z4X3R4
X2xvY2tfZmx1c2god3ZpZi0+d2Rldik7CiAJd3ZpZi0+c2Nhbl9hYm9ydCA9IGZhbHNlOwogCXJl
aW5pdF9jb21wbGV0aW9uKCZ3dmlmLT5zY2FuX2NvbXBsZXRlKTsKLQlyZXQgPSBoaWZfc2Nhbih3
dmlmLCByZXEsIHN0YXJ0X2lkeCwgaSAtIHN0YXJ0X2lkeCwgJnRpbWVvdXQpOworCXJldCA9IGhp
Zl9zY2FuKHd2aWYsIHJlcSwgc3RhcnRfaWR4LCBpIC0gc3RhcnRfaWR4LCBOVUxMKTsKIAlpZiAo
cmV0KSB7Ci0JCXJldCA9IC1FSU87Ci0JCWdvdG8gZXJyX3NjYW5fc3RhcnQ7CisJCXdmeF90eF91
bmxvY2sod3ZpZi0+d2Rldik7CisJCXJldHVybiAtRUlPOwogCX0KLQlyZXQgPSB3YWl0X2Zvcl9j
b21wbGV0aW9uX3RpbWVvdXQoJnd2aWYtPnNjYW5fY29tcGxldGUsIHRpbWVvdXQpOworCXJldCA9
IHdhaXRfZm9yX2NvbXBsZXRpb25fdGltZW91dCgmd3ZpZi0+c2Nhbl9jb21wbGV0ZSwgMSAqIEha
KTsKIAlpZiAoIXJldCkgewotCQlkZXZfbm90aWNlKHd2aWYtPndkZXYtPmRldiwgInNjYW4gdGlt
ZW91dFxuIik7CiAJCWhpZl9zdG9wX3NjYW4od3ZpZik7CiAJCXJldCA9IHdhaXRfZm9yX2NvbXBs
ZXRpb25fdGltZW91dCgmd3ZpZi0+c2Nhbl9jb21wbGV0ZSwgMSAqIEhaKTsKLQkJaWYgKCFyZXQp
Ci0JCQlkZXZfZXJyKHd2aWYtPndkZXYtPmRldiwgInNjYW4gZGlkbid0IHN0b3BcbiIpOworCQlk
ZXZfZGJnKHd2aWYtPndkZXYtPmRldiwgInNjYW4gdGltZW91dCAoJWQgY2hhbm5lbHMgZG9uZSlc
biIsCisJCQl3dmlmLT5zY2FuX25iX2NoYW5fZG9uZSk7CisJfQorCWlmICghcmV0KSB7CisJCWRl
dl9lcnIod3ZpZi0+d2Rldi0+ZGV2LCAic2NhbiBkaWRuJ3Qgc3RvcFxuIik7CiAJCXJldCA9IC1F
VElNRURPVVQ7Ci0JCWdvdG8gZXJyX3RpbWVvdXQ7Ci0JfQotCWlmICh3dmlmLT5zY2FuX2Fib3J0
KSB7CisJfSBlbHNlIGlmICh3dmlmLT5zY2FuX2Fib3J0KSB7CiAJCWRldl9ub3RpY2Uod3ZpZi0+
d2Rldi0+ZGV2LCAic2NhbiBhYm9ydFxuIik7CiAJCXJldCA9IC1FQ09OTkFCT1JURUQ7Ci0JCWdv
dG8gZXJyX3RpbWVvdXQ7CisJfSBlbHNlIGlmICh3dmlmLT5zY2FuX25iX2NoYW5fZG9uZSA+IGkg
LSBzdGFydF9pZHgpIHsKKwkJcmV0ID0gLUVJTzsKKwl9IGVsc2UgeworCQlyZXQgPSB3dmlmLT5z
Y2FuX25iX2NoYW5fZG9uZTsKIAl9Ci0JcmV0ID0gaSAtIHN0YXJ0X2lkeDsKLWVycl90aW1lb3V0
OgogCWlmIChyZXEtPmNoYW5uZWxzW3N0YXJ0X2lkeF0tPm1heF9wb3dlciAhPSB3dmlmLT52aWYt
PmJzc19jb25mLnR4cG93ZXIpCiAJCWhpZl9zZXRfb3V0cHV0X3Bvd2VyKHd2aWYsIHd2aWYtPnZp
Zi0+YnNzX2NvbmYudHhwb3dlcik7Ci1lcnJfc2Nhbl9zdGFydDoKIAl3ZnhfdHhfdW5sb2NrKHd2
aWYtPndkZXYpOwogCXJldHVybiByZXQ7CiB9CkBAIC05NCw3ICs5NCw3IEBAIHZvaWQgd2Z4X2h3
X3NjYW5fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiB7CiAJc3RydWN0IHdmeF92aWYg
Knd2aWYgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0IHdmeF92aWYsIHNjYW5fd29yayk7CiAJ
c3RydWN0IGllZWU4MDIxMV9zY2FuX3JlcXVlc3QgKmh3X3JlcSA9IHd2aWYtPnNjYW5fcmVxOwot
CWludCBjaGFuX2N1ciwgcmV0OworCWludCBjaGFuX2N1ciwgcmV0LCBlcnI7CiAKIAltdXRleF9s
b2NrKCZ3dmlmLT53ZGV2LT5jb25mX211dGV4KTsKIAltdXRleF9sb2NrKCZ3dmlmLT5zY2FuX2xv
Y2spOwpAQCAtMTA1LDExICsxMDUsMjAgQEAgdm9pZCB3ZnhfaHdfc2Nhbl93b3JrKHN0cnVjdCB3
b3JrX3N0cnVjdCAqd29yaykKIAl9CiAJdXBkYXRlX3Byb2JlX3RtcGwod3ZpZiwgJmh3X3JlcS0+
cmVxKTsKIAljaGFuX2N1ciA9IDA7CisJZXJyID0gMDsKIAlkbyB7CiAJCXJldCA9IHNlbmRfc2Nh
bl9yZXEod3ZpZiwgJmh3X3JlcS0+cmVxLCBjaGFuX2N1cik7Ci0JCWlmIChyZXQgPiAwKQorCQlp
ZiAocmV0ID4gMCkgewogCQkJY2hhbl9jdXIgKz0gcmV0OwotCX0gd2hpbGUgKHJldCA+IDAgJiYg
Y2hhbl9jdXIgPCBod19yZXEtPnJlcS5uX2NoYW5uZWxzKTsKKwkJCWVyciA9IDA7CisJCX0KKwkJ
aWYgKCFyZXQpCisJCQllcnIrKzsKKwkJaWYgKGVyciA+IDIpIHsKKwkJCWRldl9lcnIod3ZpZi0+
d2Rldi0+ZGV2LCAic2NhbiBoYXMgbm90IGJlZW4gYWJsZSB0byBzdGFydFxuIik7CisJCQlyZXQg
PSAtRVRJTUVET1VUOworCQl9CisJfSB3aGlsZSAocmV0ID49IDAgJiYgY2hhbl9jdXIgPCBod19y
ZXEtPnJlcS5uX2NoYW5uZWxzKTsKIAltdXRleF91bmxvY2soJnd2aWYtPnNjYW5fbG9jayk7CiAJ
bXV0ZXhfdW5sb2NrKCZ3dmlmLT53ZGV2LT5jb25mX211dGV4KTsKIAlfX2llZWU4MDIxMV9zY2Fu
X2NvbXBsZXRlZF9jb21wYXQod3ZpZi0+d2Rldi0+aHcsIHJldCA8IDApOwpAQCAtMTM0LDcgKzE0
Myw4IEBAIHZvaWQgd2Z4X2NhbmNlbF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBz
dHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmKQogCWhpZl9zdG9wX3NjYW4od3ZpZik7CiB9CiAKLXZv
aWQgd2Z4X3NjYW5fY29tcGxldGUoc3RydWN0IHdmeF92aWYgKnd2aWYpCit2b2lkIHdmeF9zY2Fu
X2NvbXBsZXRlKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBpbnQgbmJfY2hhbl9kb25lKQogeworCXd2
aWYtPnNjYW5fbmJfY2hhbl9kb25lID0gbmJfY2hhbl9kb25lOwogCWNvbXBsZXRlKCZ3dmlmLT5z
Y2FuX2NvbXBsZXRlKTsKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5o
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zY2FuLmgKaW5kZXggYzc0OTZhNzY2NDc4Li41NjJjYTEz
MjFkYWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5oCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy93Zngvc2Nhbi5oCkBAIC0xNyw2ICsxNyw2IEBAIHZvaWQgd2Z4X2h3X3NjYW5f
d29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspOwogaW50IHdmeF9od19zY2FuKHN0cnVjdCBp
ZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmLAogCQlzdHJ1Y3QgaWVl
ZTgwMjExX3NjYW5fcmVxdWVzdCAqcmVxKTsKIHZvaWQgd2Z4X2NhbmNlbF9od19zY2FuKHN0cnVj
dCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmKTsKLXZvaWQgd2Z4
X3NjYW5fY29tcGxldGUoc3RydWN0IHdmeF92aWYgKnd2aWYpOwordm9pZCB3Znhfc2Nhbl9jb21w
bGV0ZShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgaW50IG5iX2NoYW5fZG9uZSk7CiAKICNlbmRpZiAv
KiBXRlhfU0NBTl9IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaAppbmRleCA5NDg5ODY4MGNjZGUuLjU2ZjFlNGJiMGI1
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaAorKysgYi9kcml2ZXJzL3N0
YWdpbmcvd2Z4L3dmeC5oCkBAIC04NSw2ICs4NSw3IEBAIHN0cnVjdCB3ZnhfdmlmIHsKIAlzdHJ1
Y3QgbXV0ZXgJCXNjYW5fbG9jazsKIAlzdHJ1Y3Qgd29ya19zdHJ1Y3QJc2Nhbl93b3JrOwogCXN0
cnVjdCBjb21wbGV0aW9uCXNjYW5fY29tcGxldGU7CisJaW50CQkJc2Nhbl9uYl9jaGFuX2RvbmU7
CiAJYm9vbAkJCXNjYW5fYWJvcnQ7CiAJc3RydWN0IGllZWU4MDIxMV9zY2FuX3JlcXVlc3QgKnNj
YW5fcmVxOwogCi0tIAoyLjMzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
