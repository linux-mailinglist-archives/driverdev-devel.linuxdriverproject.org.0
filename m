Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E0B406EB8
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 18:06:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B91AB60EAA;
	Fri, 10 Sep 2021 16:06:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WuBMw3D6hH_f; Fri, 10 Sep 2021 16:06:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BB10360E9E;
	Fri, 10 Sep 2021 16:06:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CF6D71BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:05:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC457406AA
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:05:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMmhWyHoHapp for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 16:05:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2086.outbound.protection.outlook.com [40.107.237.86])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 64E9E406F3
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 16:05:43 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=El/iLtrs8NtOX+P7O+gE1AcoPJvwmaN/ura8aJmef1tBLMe3qs1+sNGkYIb48IvPr9sIkNoz6GFLF3uyCtthdPTUT0gpEJYwt6z+8sfQpTyOJQ1F+vXe9IDHSwAZE937BH+ZBf9qeq9fw/Vr4fOMU6yzUH59ldLsm4+dLHoYlO1MJr/sF1V2E/uskcOWyMZ65aE8unlGAr+XdMcsxUBdDJHmmC6PGe5CK1jYJ6rI7rJ4EtUoY47PlTvyED0rVD5ZPIuTVfHjCOV0dNYzWYlGxK6s72O1vQ69Ah0Dug3NEcKkcVud2DBIDXKPJZEmpEvH4ckpuiXB1BwNvDop6PYMKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=A5/7GqCAYp3vk0jpEf5Ll7VwtNGaK4Te6PdbcTGXLL8=;
 b=W9JLdsVznNuNAoPM1SGeRUS+0cTJdatTs8EuWKKVI8UKJzKzDU/RbCJvG0u2xTM2SUJ5l78Jzka/ApULEJD2Cz/x/yQI/pU8z6eQD04nmVBtnCpGmy8qjWn4ZEUJ5HgQKOFNhOiRljvUpkZ8FK+CmI7hbiuGckM2Mbk7Q0YWHeHbHyj4vwaxeQxrA+4ZBvv2XeCagnmr59OQPHKb5dvWjWyvtZhGqDTGwQL2F63pzrH9OUERRBg2b1Ir8y1z/HeZoBvr74JNv22vA7/CQfgU9UL8Y1pcdW1ZuHFDYIuxjO4zJMygpEAYKNwcDaR43nWnjN3+Oya+BKlsdmCnzOkiGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A5/7GqCAYp3vk0jpEf5Ll7VwtNGaK4Te6PdbcTGXLL8=;
 b=Vn4LEQMwWBx/eeqD7feUfNvYIU5zn2SlDNOow0DF2Ukwj31/NWfj1CAvaDd7E9f14YzLT4WJr5eMG6jVGQriH9zZovQMdDZb6ZfCt3oLvfOQNd2aC69S3UdK95igIUiXsXwb84VHfm8J5c7XcckmFZn1+Bxj3dzylev+eYvwsyI=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3118.namprd11.prod.outlook.com (2603:10b6:805:dc::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 16:05:42 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 16:05:42 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 05/31] staging: wfx: avoid possible lock-up during scan
Date: Fri, 10 Sep 2021 18:04:38 +0200
Message-Id: <20210910160504.1794332-6-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN4PR0601CA0006.namprd06.prod.outlook.com
 (2603:10b6:803:2f::16) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SN4PR0601CA0006.namprd06.prod.outlook.com (2603:10b6:803:2f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15 via Frontend
 Transport; Fri, 10 Sep 2021 16:05:40 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 215922e0-ecfa-4306-9ec2-08d97474d6a4
X-MS-TrafficTypeDiagnostic: SN6PR11MB3118:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB3118ED18B06992EDB65C31FC93D69@SN6PR11MB3118.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:765;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lpwAP9rKYXBfSvOjXC8zPqYCBu3dbcfzftEnMjAIiYLS2bLViJnu9JXZEpO4od6tPI7SgOU12rCoqwjIqTIVOT4bioaM7FTswceCuin6XbGRXLM/bz5mxtx5HcQNVUrATdMgicOjvnPz0sc48n8OBisOgHNnPlPPyEEkPq0CmOvveuVf2LVgS5wgOFor2N0nPNXz06KSJhq5Oi7oYXEDVxz7mN5yBNPWsImHVFN8zB2wZjY6kzbkaMQdYv5CEdfITr6QH8BRS+zDchquLsb4a9m1YuajEV9WqIWp5HxOq7jN7PynuD0yzMHZGgwZMl1vn8TvIwMDDcUul0M2o//3HufbHBrmm0GLymkSvsnTngXzTj5Jo88CfqwapYQAxas/B3+wzapWiXFbDgx40c6Z/8FldS8fNya3M6qcwWJWIgkTWLH09lnR7RsGUB+VSXxmH1HaQ5sgLEL5ljRu2tAygUN7auwrdWOqiGtkGqU8AL3g5Fy5u7HKWNUsAbPcjMBDpyXWaqT8mAf17ErzwKupUwq5a7V9KEyN3nqLV+nHZ0Mtt3bB1FjocuIdBDAjuo9bw+Cudo76T1ZuZJcUsS/6Ox2xgKC/JWSbV8aQh+L1CWRI1J1S1l+EeAbIFP9Fd4DPqkini4rRGpfSE0t0c4HJDA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(376002)(346002)(39850400004)(396003)(4326008)(66476007)(107886003)(36756003)(186003)(316002)(6486002)(66556008)(8676002)(86362001)(2906002)(54906003)(38100700002)(83380400001)(8936002)(66574015)(5660300002)(66946007)(1076003)(2616005)(52116002)(7696005)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjBZQUtQL0xUOXF1bkdTam9LakpaTFhLVU9QN3BKTEo4VTFBKzArakxnaEUw?=
 =?utf-8?B?eDUwd2JqZjlIbE1SQ3Rqam5NTGhabmxkQmpNUEdGNWhGcGVaaEtNVjFkTTY1?=
 =?utf-8?B?VVFHbVcwQS9GcGdwWlJMdytjN0gwQzhrOEFxQXlRVkowMGlUSFh6aWtyVHcz?=
 =?utf-8?B?ZWd4Y1hqcFNZT0pSYnRIR2E3ZlhtcE5OVHAycEV5a3FpZldYMUVaeVRvam90?=
 =?utf-8?B?SDhxakdFYmhsSkN1MmNLWVROL1ZxWTdKQy8zRWtJL1BNekhjM0N3MmwyTFg4?=
 =?utf-8?B?MjdUK0c3NU5QeTdqSU9iV1FLUEZBTmtvc0psSDhaOG1hSitFTURsQlpUTVlO?=
 =?utf-8?B?ZzlGUXV2OW5CRHNzYmxIR0IycUpYbXJOcEUyTXA2akRiRDE3ZU4wcUlQY1hD?=
 =?utf-8?B?WFgxcDJMMS9GWGh6NjkyN1hlU0FPN0taaDdHSGx6SHVkUTJubTdFb0xVcWs5?=
 =?utf-8?B?cUFHQUFDOG4vMnd5UUxDaXR0QUZUQ0xTSTQ0OVFtczFDN3FrN3NSWnpRelZT?=
 =?utf-8?B?NndsTGUyQnJyWEcxWGJnbHIxTG1lOEY5ZXNWdWxQTlcrUFJFTGV1SjJpOXhQ?=
 =?utf-8?B?V3ExNVlZUHdsRGY1aW1QR1czdXA4bHU4Yyt5QmlVQ0xUb1k3cWYvNEZiUmc5?=
 =?utf-8?B?WXNLcHZCT0kxb3UwUlBUVGNYNG5ZSG1RWC9VcmlSdmduMXJ6THNESGxxdkwv?=
 =?utf-8?B?bUowNTBuMFBTSXJYeDhkQmtRQnZqZXpBL1l3WXVhVGpLRlBwbVRUdjR6YWxP?=
 =?utf-8?B?MlRrZmUzNzluZHBMdERJbW0wRkdsZTlYdGUrbmRYSzJEdEZCQnc4QlBHdW9B?=
 =?utf-8?B?dDFUYk9kR2I1ajN3alhNeGxzVFd5cXQzQ3NwTVZsU1ZUMFluRkhkTEovZkpZ?=
 =?utf-8?B?a0EyRXFPWUxSYXRJNXhYR29KVGJZNU5RS2IzQTJjTXU0QTExM2NjWmhCKzVG?=
 =?utf-8?B?a01wcmRQaXdRd3hzc3VpVFJYRC93STEwQy9BVDZMTkdISkRCNlE2RWkwYStk?=
 =?utf-8?B?VzhvUDI3WWRkcy8wdy9Hd3E1SnBGMm5nd3pyakRhVGNHRkRwbjFTS0xYcjVQ?=
 =?utf-8?B?djZLM1JGQmtHc0VSSU9IdWd0UFFmVm11aUpabmxvc05DbldNT3UwZFBHTWtq?=
 =?utf-8?B?bjNCcEdkK21WcGdxS1pacHFsaXdRSjMycGorb215eVJWcGNnS25XWENNUUdz?=
 =?utf-8?B?c2FhVFJMZzFrNzNsNEVKV21BR0FTMWpaN2w5UlRaMXYvWXZaY3lHT0RRQzlh?=
 =?utf-8?B?OUM1cEg4cmt1ZWdSVWY5VU5VckRBZkkvLzNUeHg2RFZVQ2N5RlB2b3l5Sk9Z?=
 =?utf-8?B?b25LeVphVXhFWEJJMmVaQUZPM242TDZxZlR6RU9TYXNobm9VeTB1OWhCNHZn?=
 =?utf-8?B?OWtocXBhUFhXd0hUMk93anNXT3RyOHp1aVhrVXNaLzJwa1greHRNV0JHRmFk?=
 =?utf-8?B?dlVDVHUwTmh5VUVtNjZEQWtoSTUvMHRkUEF5MWdNb2dxR1hnSDZGbEw5SXMw?=
 =?utf-8?B?NHRJUi9PZEc4M3J6UDUvNGV4NDNTckZpWlBVOFBFTFRJRm5BcU4rMkR2QjAy?=
 =?utf-8?B?SU9kcXRIbW8xemdka1VzVGVpM0JOaiswVlB1SVV5QWxqSklsNTcrdjkyOVFt?=
 =?utf-8?B?WHRUU1J2N2NEYlIwQzZ6bEV6RjJIc2NrUzRMajNuVDNKL25OcDc2WGRnM1lu?=
 =?utf-8?B?Mk5kV0x6S2JLSzg5TEVpN0kwQzZIdGJZcUxjNXdWSFIyL1Q0bm16ZG5kOGdt?=
 =?utf-8?B?eU0yNWV6MForVnlrOU9NWDlkSSsyQVYwQmExUjZqVnczanY0QWRvVXkwdFNt?=
 =?utf-8?B?L0RjZlFoRGI5MXh3Q3NoZk9QWDlqNVRqcVlVc2JBU3lGTVJpRmdqUkRtZVFX?=
 =?utf-8?Q?zt4tsRlX0De/6?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 215922e0-ecfa-4306-9ec2-08d97474d6a4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 16:05:41.8845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OO0+cSX6oQqH9onHKCW4QFtYJ54S89LMRo6NtFY0TVkzYkY7OW7x/fG405XecJ6KaHO3KoTXFjA8ol2buT/RPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3118
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
