Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F1CF14086B7
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 10:33:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 624FF80FFB;
	Mon, 13 Sep 2021 08:32:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y2MtYQ6ujFfR; Mon, 13 Sep 2021 08:32:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 151A380F94;
	Mon, 13 Sep 2021 08:32:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 607871BF97E
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D7A436061B
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:31:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GArgfor3FBOg for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 08:31:48 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2076.outbound.protection.outlook.com [40.107.243.76])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EA432605E4
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 08:31:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ilp3HjAgrY5ljD5SZ5cfiG8Wm/A5kFqEqkqk/FWnBPftKO3Cn3iGiq28haxbOCj/4unBhBhhp1p6EJJJKZPgmVMFqabyJyix19x/wxoX9SjXp0mRcbErHTpk07s8P817nxZteYJeiTUnRw8jLn6iohdisAhhMZ5qOGYTuSHbR7d+DDBq0F5Xiij1uxSYdgFlT1HdzIxekYVpYuirmxyxPr1NtR7iT5NUF9dLieFlpO9MLz0PLDoUMKcLS18zz+H9A2k9jEDnBQm2vse3CvKcxuGsiDWPOT/pWUAvZRt4KZO4/816ZYq36bbeaVSI4/i4xS1kcgDd5IFWC6bVyf5hRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=A5/7GqCAYp3vk0jpEf5Ll7VwtNGaK4Te6PdbcTGXLL8=;
 b=E9KVQX3XEE9y0fFYXy0bycch7Kq3RJrvEUags/dMGwUHEzu3LKpJUfp40SjrzQlkZ3oeMeDq9fPkFA2Exc51KL7wfXY53AD/A8roCDVR0Atb2NwVMpxLATrl60gJ9sc7qTQgJAyhu99FtHHS2/jZYjRPCxvjyn7dMhC6pv+wEuBjEFlnRMOawVM7egbkKVVacQDsYiacqP9icFxlQ9k9vGF23yxsFqaSkB5OL2ivcxJ+uIlAN+s5nPzFIiutjw4o5efwvARdSxkQBx3rrfbz+gttN1P3Sff1XIddCiXlSLp97NPEDJh3JJTZv/QY+WPqolKg8r1oov06PpoV4/Sy6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A5/7GqCAYp3vk0jpEf5Ll7VwtNGaK4Te6PdbcTGXLL8=;
 b=WLr81SGJrxXzF6giap1tXR1cQd2NM+Zp5Fh2FjJ2bcVZn3NGdggzHFGWnvUprC4g56CrHpZ4sdPnZFesjAKKDC11wTOTWhT+jRtlSOh4fzy/Ay8f9jB0pe4nhLHwMjoK9Qor3VA4ESfRxqYW2LnMGMExI1HXVHRI8sem3zNGNHs=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (52.135.97.18) by
 SN6PR11MB3263.namprd11.prod.outlook.com (52.135.109.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.18; Mon, 13 Sep 2021 08:31:12 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Mon, 13 Sep 2021
 08:31:12 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 05/33] staging: wfx: avoid possible lock-up during scan
Date: Mon, 13 Sep 2021 10:30:17 +0200
Message-Id: <20210913083045.1881321-6-Jerome.Pouiller@silabs.com>
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
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 08:31:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 33627f58-8ed9-4364-51fb-08d97690d84c
X-MS-TrafficTypeDiagnostic: SN6PR11MB3263:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB3263C70CABE7C249E23F0CA993D99@SN6PR11MB3263.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:765;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1AhPcYg0ZLaSU+HY5GgaGWBF5wP02Gn+42n8GzJI/4V3kT9gQNXYjMzPj3arfVSgfZS8+76EtVa7cwPWLQKDIENXPEufs0m41di+1TjdLgGGJ+nX0NoujnXop2yr9lJuiGwLpffQbz+lxJkK9tJ7t2p+P6viQOaL0OE0HOcvau+JNAryPtQhSFIKTuCctvQIDr746hzwVm5K77CDdG9h3PvZeHFgQQ78pvoHPOTAt+IziM4ajxik20YiQ/Ha084xzKHNpimfertehZPuSm2wZQ9khY6AhRf9SZLoAu5znQ097PCSYO9AFBxo5CofQIpKhtT7/wFZ+0FVG3h+HDCQFvDpAv5FBeBCgA4+uxPoFyh3YDFz96oTVrTU35DF6QUix3PoRnZeJ0Us1RamD8gtt6x37W7rjIOv1va39QnWu3uZAgQW3tiIH0g8E9QgbvgeOFZhXEFSZiXDGstputgRLOqOY+cZOZmP6q/QdPalemdplH8wGC1IBLFf1TTvVuoxAJyRFIscaU5sxk29MMVqpxxNRmjNFKQEe0UAL8Xpil+iwXwbMRkeMgjkQa70eOYqMxULY1kcM4iJfYQ+7w3DC9liuPOtOGL1ya1hNzAgLiUMfIdhY0CV0IqgDa/YM1EMAvcjMwMcXeY5Iv1BZAXrU6ESm1X+f2E4rQaEfDd4Ygw+mNv8ZlaYjmBtrR92qmhKjcZx16cnAAnanxD405p+rQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(83380400001)(66574015)(107886003)(956004)(2616005)(5660300002)(54906003)(38350700002)(4326008)(316002)(38100700002)(66946007)(26005)(66476007)(66556008)(186003)(8676002)(36756003)(8936002)(86362001)(508600001)(52116002)(7696005)(6486002)(1076003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3pXa2lNZEpwUkxTNmtkOVJaTDVJR2JkZWJLemRja2hvZVd4YXJzQ1ZXV2lm?=
 =?utf-8?B?YUsrYWg1WDdHU1pabEZtb3B6bTZURXhWVGVHaHZsMHl0UTQ4RDB6OURnNHoz?=
 =?utf-8?B?bWlpSHdGRmZkSlljd2MwYWtuWjgzZHErVnh4RTV5LzFWazRzZE5yTGh5WW9h?=
 =?utf-8?B?dmxicnk4Y05iSTVjZGthSTY1QWhMZkgvK0N3ZXhLZmlrZmdML1ZDTUV2TG4x?=
 =?utf-8?B?SzRsWEtqRkJIRlVHVENFbUZzNDhzSkFsSXB4M1hnMUtXRnBLL0ZuMGZhZFNx?=
 =?utf-8?B?M1dFaFk3cDlZc1FFcHNtNXVVS2FqT25zbWdMUjFTRk50RGdlUHk4cEgzM011?=
 =?utf-8?B?b1BFYUZjN2pudTlQSG1QSHI1eklkazV3NjJlSXExQ2xVd1pza1NJVzFCTkt3?=
 =?utf-8?B?Zk00eHFGS2g3YVFQckdBVGFLTVFvSXJyTDZOVU1lVitWWURmYTUvSmlib3VB?=
 =?utf-8?B?SVhnekFnZzg0QlZjNHhmdWZLcWRtNjVTbW9CdUlLRXhEWkxkQkI4SXBTakh0?=
 =?utf-8?B?dFUydjdQVWZGcUp6V0tKSXlDZnBjbDY3ZWhoY2FIaExyUDJObXZvdDhKMjE2?=
 =?utf-8?B?UzhKalVndkhwWmVvTUYxdDVUVGtjMDQyN0FzdjdRaUM1YnB4aExLME1LQ0JC?=
 =?utf-8?B?Zi8zYXROcnB2aE4xaTFnb09lekNmay93UnpsaVF0WXF4V1ExZHRZK1oySldI?=
 =?utf-8?B?SVJLNGVtK1FWTTMrU0xvNXpjQ1YzN2FXUlYwK0ltT3dBOFNTVGwzT3BxZEw5?=
 =?utf-8?B?SCt3V08yTG1pa3NFc0JCelpOYUM2OHdEdXBzeWRnVHorNFhaMk5wSmpoUkJI?=
 =?utf-8?B?eWdHK0NQRlFTajlDVTllb20wQU9xUnFnRi9OeWg5MFd6c2hIK3ROY0lGY1JI?=
 =?utf-8?B?L0FreDhOWkpkdHJrWTZFRU8wWThIUnU1cXdyOWdHNURSSGM3SVBQc0hPTGU1?=
 =?utf-8?B?N2tJV0VYc2puNTFtMWZkTEtleWUvT0hGOHhjL3lXM0lLMW9qcW4wQXNOZXdD?=
 =?utf-8?B?Y0orNE5ERVdiOXdJRTk1WWhOcUpoMThJQTRYbVBTZ0g5aS9LcUErU3RKRHha?=
 =?utf-8?B?aGpWaEJ1K0FlUVF5SFJlSlpPOVRtR3JsdG4xcGRWU081dHNoTkk1em9TZ2hN?=
 =?utf-8?B?Um4zTEZjc1Q1T2k4anlaTk9EL0RWdktSNG1aSFJndGxTbHhuSWw5NXBiM2hx?=
 =?utf-8?B?OHVibXZQUWtGL3NYMzBGZ1YrZVNDdzE1S0NWOFl2ejFwWkdYazBHWUxGaEh4?=
 =?utf-8?B?MFl0b1oyV1BnSjN1QkNibFl6d0UxeC9udEhLa3ovbmxJU1NQSmJCbUdaNzRl?=
 =?utf-8?B?YVU5dmxxR3JqMkIvYVFWWUlvY3EwOU40TVF5TmxtUUNOYzJSZTRjM0ZENDZG?=
 =?utf-8?B?TnJSVGlEa0MxTkVZNVIzZkwzMitKNUVxQjAvTVlxdU10TktnamJNU0lQN3dB?=
 =?utf-8?B?T3JWYlYzVEZHKzJGNUhockwxbUxWc1RsSnY4aS9zaVRWa2lHQUkvYS9PMVpt?=
 =?utf-8?B?OHp3ams0Vk9ERUU3TFNERzRTMmx0dW1zdkk2UjJQY2VmWi8zbDlmWHdDclNh?=
 =?utf-8?B?Y0ZTWkYvQjZCRTBsdWZ3aXNKdUtSUTMzaG0yazh6a2hSTDBPcDdGYnB2Q1BI?=
 =?utf-8?B?dkpYWWNtWmxOeElDeEN3bjFKNlV3Z1Yyem1pZGEvTXZhVXlSSC8zMHVTZ3h2?=
 =?utf-8?B?TU56L24rcjNXeUhMWnBoZy9SL05CL0w5NmF3Y2pYMnpaR24rRUxhd3ZuZHlT?=
 =?utf-8?Q?B+tkqmFhkZ1NeUN3BVA7Ffl9HPtLWlslG31qfMH?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33627f58-8ed9-4364-51fb-08d97690d84c
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 08:31:12.7523 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wdjAf/f6koxGsCCYwSWQP/DstXK5KC0wHcgfD9LCs8+cnm93pddYpllwNHDpFUB++4nm+0/fBgDCPv++Os/BPQ==
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
