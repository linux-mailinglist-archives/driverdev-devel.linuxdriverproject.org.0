Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC2F40FBE2
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Sep 2021 17:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 752B8840C5;
	Fri, 17 Sep 2021 15:17:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FzqgxgQYgWWt; Fri, 17 Sep 2021 15:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1AAF82A5D;
	Fri, 17 Sep 2021 15:17:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13A8E1BF36A
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 15:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D76C083709
 for <devel@linuxdriverproject.org>; Fri, 17 Sep 2021 15:14:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36Wql0Z7om4F for <devel@linuxdriverproject.org>;
 Fri, 17 Sep 2021 15:14:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2067.outbound.protection.outlook.com [40.107.244.67])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6179E83DC9
 for <devel@driverdev.osuosl.org>; Fri, 17 Sep 2021 15:14:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NE8yKHT8KIr9lTeAVgHkdNsNy1pM/Qskv6F6sGgdMH1x+CeedmT0l7FMH0ZTFomUk1R2rUYWxF2b49DqQ32mIaD1rli3jSHr0zMoMngZjxJaOiMPQYCC7fFkhi2riJ0TUID/EUNGMmbNNB9zaeOe8md9PqVgn2Kp5pidF/YAhtEbMb9hYBrsIpnqfIeF0ji/JbGMXNC7NpvIm25LYH04IWU33evJpEqaXqTSqBIRQYeZ/PRwJ1X71jK//06xC0PHgIYpeTLA4byAyYQDeW3uZ1J+6FVGlrBp5zBuYXwe+eqQXeIHLmSJT519w2t88okqaJ0xyymxsAryxqWbmvcjaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=xdE+7Y9kU+Kuls8oPQCRxATfxUpgKTkyNGR3RtiwYqc=;
 b=AZOShFu5ifo6R0AJ7dQIZzkGWLnP7r9Vj42lYNpdbTLCUzwnrcmlNnSoCBCEzFg8W71Xwz2ysKlQsTYtMapGRRGl7SbSSYm0eth4unMp7OzImVN0wAtxpT0P31At8vfTtnCr+0ky+Kp0+hjziYQDqrs7aZy2Xhbs1sj2PQwkRMGS2h/8Pj3MBUhaDC+cprWQDbyO3mil1U7LDqmVohXAdhX8zvvOlNZ6BX/jIxdEW+3qOZotUGqeH+Hpj9/to+YRjtqPZq2vIjCnIqkcS5VQn8wqn5Bo4OWkZ1830VHsM/iFmhd1h3hghpjzx2CDdjYSrzvd47edcxhuk0t6z2dVVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xdE+7Y9kU+Kuls8oPQCRxATfxUpgKTkyNGR3RtiwYqc=;
 b=b0Ws2ybRtDrSUlkLVzR7G5FkCB5dG1pEaF8WcAc9PvF+5TBHOM2dwKMcgFGIXCSRTvSP+H12BA/hp0aZnDtW9W+xdNSpihRIscGaj6leUClb/BXbkHcKcliHStZNw1oFNmpgoefOW7aCCqOWkjz4OAoPsbdpGtk7/FcFsT1FB4U=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB4876.namprd11.prod.outlook.com (2603:10b6:806:119::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Fri, 17 Sep
 2021 15:14:54 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Fri, 17 Sep 2021
 15:14:54 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v6 14/24] wfx: add key.c/key.h
Date: Fri, 17 Sep 2021 17:13:50 +0200
Message-Id: <20210917151401.2274772-15-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210917151401.2274772-1-Jerome.Pouiller@silabs.com>
References: <20210917151401.2274772-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SA9PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:806:20::34) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SA9PR03CA0029.namprd03.prod.outlook.com (2603:10b6:806:20::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 15:14:52 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bd89fbc4-27f1-4069-dcc4-08d979ede6fd
X-MS-TrafficTypeDiagnostic: SA2PR11MB4876:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA2PR11MB4876A994159C0E1CB721AF0693DD9@SA2PR11MB4876.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:346;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wb3Ue97yc+16s6C+i2hv3kFfZDkD2Az3baBtZj0SCUZiLiwbL+NIEWrpCGiGms/9dNg9IvRdjQV9NKclbynoe18latwlcM7CugPkX0b758jK+wPp9Ulim2O6OMyZGvAHOdeY9cYHrF24Rg6IYLG7tPgkC8tQqkq9od/TbPJobA4G/Ly0THpfuH9yw7xHObtJsBj/Es2h2ZaFtAMYI7y6xl3fM+Uh+34D8ACHoE3MANfSnHGCRXs7DMXOmkhT48MbERJshAKXm7jZAtmHG/XrFitK15bLI5hYCzBol+Hrn4CcmloFY2zOXO/YOtrISrFInu9N+ljKG+HHxAeC+ZoT38bfYZe/SVmwNcVjWM/reHyHtD3B9zmp1PjzIH5fRajGdE73tlgfmDYfLYt6woUF2IkC20VkeEPqbT7tVAGcXg3Ap7wWsZAvLojl4BYJ0PDr4qgEEgbvh/rBQEd/H8fqxPGcB1UeCBihr1ov29NiQ7BdWH/AlFde5I7CPiM/IwP2CfMT/UK8iyu/K4IYq2EoZIrvgfAyEZex3i+gRVtpeebaAgMOgQgM+eQS9XIYi5OgBDLjkkzz2xXwFxTUGUBju/JjrFCf0c0xmhB+JaHjBAh/DPbOnMR6vVTm8vD45cnw4hjGygluIqbVwtMdc7FuXg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66556008)(66946007)(508600001)(52116002)(7696005)(6916009)(66476007)(4326008)(316002)(86362001)(2616005)(6486002)(1076003)(107886003)(38100700002)(83380400001)(7416002)(2906002)(54906003)(5660300002)(186003)(8676002)(8936002)(66574015)(36756003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bnZINU0vNE5MWHkrckZ5VkovUXU0d1pkbWVHTit3YmhZUzZZSjRkTENlNFAx?=
 =?utf-8?B?QWVjWHhMTzNZNFVqM0Z6cmVvdmo4TnNtSmFmTDNUczM5OGhNWWxKQXFEbnVr?=
 =?utf-8?B?ZTVPVlNtTGtDUFkzaXdZK3gvRFJ0Rlp0L0phMnQ5WS9zRzFOTVVQUGpwQmxr?=
 =?utf-8?B?a1NjUnJNT0JNTy9xZTJFckwrbHh0R3RvR3JMWDZNZWZRelk1QkhrRWx6d0p0?=
 =?utf-8?B?dUUyZkhIVHdTZmp1d0NJSzZaMklWR056aXZFMzRuc043TCtjK2x5ZHdsT1lz?=
 =?utf-8?B?RTNOcEtlT3MwdGR2K3VFZDFLY1dOQkxuZ0EzYm43RXhXeWowc05kZFdycVNH?=
 =?utf-8?B?ZTErOTlvSkNVc0lIMjBJVXdCcE9talVaem4vd0dILy9tcklYaGMvYVV0MThK?=
 =?utf-8?B?djFrR2pXbDBVejhMb1RuNHAyUDZkeDlzdGlEVlRhbVdiSGltOXViTW80SmZy?=
 =?utf-8?B?NjFsREZPK1VNakVtUWFOQnl2ZkxlYlhaV05ZMDFKT2RNMVFaNzIydmhUamk1?=
 =?utf-8?B?NHJMeElCOS82bGxyMUVrOFJXQkhCWnJpZjBWNTJpblpuekhsZkxWWldDYm5j?=
 =?utf-8?B?SUNvQmwzdzh2blpoZmEzZFNXcFNUZCtBeFZCcGpmWG9iZm5OeE4zM3hFY1U1?=
 =?utf-8?B?WEliWVExQ3R2MkFMQk55dk5ubWxlcG5CZ09yWCtCQUtOeTQvLzEyalZyODFv?=
 =?utf-8?B?RUowY1ZiMTBYR2pJcDNWTkRGbnFLUVJRSW1xclM4NlY3QURiY0lXTVluQThO?=
 =?utf-8?B?cmVoVmtHMi9ZOWZtaWhPZC9FNmZLdnVlYks5azU3eU9qeWpjOGE4dnNLbzU5?=
 =?utf-8?B?aEVMSHBsQ2kxYStyRk91TTdRTGUwd0oveFpHbzRER3FTZTBaTmJNcm5ycXpz?=
 =?utf-8?B?dGRQeDRlOGh4eGhva2dXckpreFRJVHBHWFlDUmxrdFRYVWRLekU1K0d3eTd4?=
 =?utf-8?B?d29CVS9SbWpmN1ZVeTZqbW9IbkNaemJ5QldFQ2RpYytobTc2c2ZmRVJ4OU1O?=
 =?utf-8?B?b29jbkRDRXowOTNzT0F3NUxKejNrQ3RPaW96MmxMb1NUTVNwaENScjBtY1VN?=
 =?utf-8?B?VEpuUUtCTGxzK2tvUExUd3l3ZXJzbnJtOVI0NllWYzlWOEllVWEzc3krNUVn?=
 =?utf-8?B?M1RUMUFLZE1qRGFNcDF2b1dqS0p1VlpmaFVFbWxTK1Z3bm90cUNpZlorMmdV?=
 =?utf-8?B?Y2x3dGdCWDYwVkV6c1NsK0EwMjhQVGo5NzRuMHdWYnZyemNrWW55bHZ1NHFr?=
 =?utf-8?B?Yit4SjZiREVlaEdIS2xqQ21PTHFHNldzcStjMU1oTEZiMUtLbkJyM3RDWWNF?=
 =?utf-8?B?NzZhcVBIVFN4M2w2bGRxTGE4OEcwMVpyL3B0dmQ1M1dmN0VlT3BxUnB0THJo?=
 =?utf-8?B?TXdiN2N4VGFNY0p6Z0dOYm12S2tDaUQ1K3JJb0xpMkFaOTFsbzFlNGhUZ3VT?=
 =?utf-8?B?V05qbkVKWGN5S2J3YUJRSEVDS3pqdDRBdFZHQ3VoR0E2d1Y1TlF2b2NrbUNi?=
 =?utf-8?B?R1VCZnJnR3hpdTZPRTkzZXRwNDRjQ0pEWHpUcUlVb08vaHVjU2hXbUJDUWFp?=
 =?utf-8?B?dlB6MXFYV2FZdlh0QXkwTXlROG9MMm9wRSszaCtIa3VpdjJnZVUrMlYrNjBE?=
 =?utf-8?B?OFBPQUtxYmhwUVVhOE9yNnhBNWp0UEl5Mk1FN1c2TUdnd2hybDZMOGQvRDRp?=
 =?utf-8?B?bE1ZMS9WZ29rVjdjWHpZVUcreFhyMDZqdU05d2FLMUVFaWJRZ0xGeUhTdzdG?=
 =?utf-8?B?dEpzY0xQaHV6RUF2RDF0bnpKS2tnNzlZVTQrV3I4QTE2bzdaMnlvUURZbGRT?=
 =?utf-8?B?UEJzdndtaSs5YXBBUnk3a3dUMnBGa3E4T0I3U1IrV2VYTkU0ODVXRllrTGRT?=
 =?utf-8?Q?1uOmv5GRnoODk?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd89fbc4-27f1-4069-dcc4-08d979ede6fd
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 15:14:54.1341 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PAZWRf7/iFHboZA14MnguGkqfYVc+DgMedUTmgi8gWdlru6wI0mzqWZ260XhF8GJwHRn/9vpKBoTcMxy6DKdYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4876
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
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngva2V5LmMgfCAyNDEgKysrKysr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngva2V5
LmggfCAgMjAgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDI2MSBpbnNlcnRpb25zKCspCiBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9rZXkuYwogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngva2V5LmgKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2tleS5jIGIvZHJpdmVycy9u
ZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9rZXkuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAw
MDAwMDAwMDAwMDAuLjY1MTM0YTE3NDY4MwotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvbmV0
L3dpcmVsZXNzL3NpbGFicy93Zngva2V5LmMKQEAgLTAsMCArMSwyNDEgQEAKKy8vIFNQRFgtTGlj
ZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8qCisgKiBLZXkgbWFuYWdlbWVudCByZWxh
dGVkIGZ1bmN0aW9ucy4KKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAyMCwgU2lsaWNvbiBM
YWJvcmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdodCAoYykgMjAxMCwgU1QtRXJpY3Nzb24KKyAq
LworI2luY2x1ZGUgPGxpbnV4L2V0aGVyZGV2aWNlLmg+CisjaW5jbHVkZSA8bmV0L21hYzgwMjEx
Lmg+CisKKyNpbmNsdWRlICJrZXkuaCIKKyNpbmNsdWRlICJ3ZnguaCIKKyNpbmNsdWRlICJoaWZf
dHhfbWliLmgiCisKK3N0YXRpYyBpbnQgd2Z4X2FsbG9jX2tleShzdHJ1Y3Qgd2Z4X2RldiAqd2Rl
dikKK3sKKwlpbnQgaWR4OworCisJaWR4ID0gZmZzKH53ZGV2LT5rZXlfbWFwKSAtIDE7CisJaWYg
KGlkeCA8IDAgfHwgaWR4ID49IE1BWF9LRVlfRU5UUklFUykKKwkJcmV0dXJuIC0xOworCisJd2Rl
di0+a2V5X21hcCB8PSBCSVQoaWR4KTsKKwlyZXR1cm4gaWR4OworfQorCitzdGF0aWMgdm9pZCB3
ZnhfZnJlZV9rZXkoc3RydWN0IHdmeF9kZXYgKndkZXYsIGludCBpZHgpCit7CisJV0FSTighKHdk
ZXYtPmtleV9tYXAgJiBCSVQoaWR4KSksICJpbmNvbnNpc3RlbnQga2V5IGFsbG9jYXRpb24iKTsK
Kwl3ZGV2LT5rZXlfbWFwICY9IH5CSVQoaWR4KTsKK30KKworc3RhdGljIHU4IGZpbGxfd2VwX3Bh
aXIoc3RydWN0IGhpZl93ZXBfcGFpcndpc2Vfa2V5ICptc2csCisJCQlzdHJ1Y3QgaWVlZTgwMjEx
X2tleV9jb25mICprZXksIHU4ICpwZWVyX2FkZHIpCit7CisJV0FSTihrZXktPmtleWxlbiA+IHNp
emVvZihtc2ctPmtleV9kYXRhKSwgImluY29uc2lzdGVudCBkYXRhIik7CisJbXNnLT5rZXlfbGVu
Z3RoID0ga2V5LT5rZXlsZW47CisJbWVtY3B5KG1zZy0+a2V5X2RhdGEsIGtleS0+a2V5LCBrZXkt
PmtleWxlbik7CisJZXRoZXJfYWRkcl9jb3B5KG1zZy0+cGVlcl9hZGRyZXNzLCBwZWVyX2FkZHIp
OworCXJldHVybiBISUZfS0VZX1RZUEVfV0VQX1BBSVJXSVNFOworfQorCitzdGF0aWMgdTggZmls
bF93ZXBfZ3JvdXAoc3RydWN0IGhpZl93ZXBfZ3JvdXBfa2V5ICptc2csCisJCQkgc3RydWN0IGll
ZWU4MDIxMV9rZXlfY29uZiAqa2V5KQoreworCVdBUk4oa2V5LT5rZXlsZW4gPiBzaXplb2YobXNn
LT5rZXlfZGF0YSksICJpbmNvbnNpc3RlbnQgZGF0YSIpOworCW1zZy0+a2V5X2lkID0ga2V5LT5r
ZXlpZHg7CisJbXNnLT5rZXlfbGVuZ3RoID0ga2V5LT5rZXlsZW47CisJbWVtY3B5KG1zZy0+a2V5
X2RhdGEsIGtleS0+a2V5LCBrZXktPmtleWxlbik7CisJcmV0dXJuIEhJRl9LRVlfVFlQRV9XRVBf
REVGQVVMVDsKK30KKworc3RhdGljIHU4IGZpbGxfdGtpcF9wYWlyKHN0cnVjdCBoaWZfdGtpcF9w
YWlyd2lzZV9rZXkgKm1zZywKKwkJCSBzdHJ1Y3QgaWVlZTgwMjExX2tleV9jb25mICprZXksIHU4
ICpwZWVyX2FkZHIpCit7CisJdTggKmtleWJ1ZiA9IGtleS0+a2V5OworCisJV0FSTihrZXktPmtl
eWxlbiAhPSBzaXplb2YobXNnLT50a2lwX2tleV9kYXRhKQorCQkJICAgICsgc2l6ZW9mKG1zZy0+
dHhfbWljX2tleSkKKwkJCSAgICArIHNpemVvZihtc2ctPnJ4X21pY19rZXkpLCAiaW5jb25zaXN0
ZW50IGRhdGEiKTsKKwltZW1jcHkobXNnLT50a2lwX2tleV9kYXRhLCBrZXlidWYsIHNpemVvZiht
c2ctPnRraXBfa2V5X2RhdGEpKTsKKwlrZXlidWYgKz0gc2l6ZW9mKG1zZy0+dGtpcF9rZXlfZGF0
YSk7CisJbWVtY3B5KG1zZy0+dHhfbWljX2tleSwga2V5YnVmLCBzaXplb2YobXNnLT50eF9taWNf
a2V5KSk7CisJa2V5YnVmICs9IHNpemVvZihtc2ctPnR4X21pY19rZXkpOworCW1lbWNweShtc2ct
PnJ4X21pY19rZXksIGtleWJ1Ziwgc2l6ZW9mKG1zZy0+cnhfbWljX2tleSkpOworCWV0aGVyX2Fk
ZHJfY29weShtc2ctPnBlZXJfYWRkcmVzcywgcGVlcl9hZGRyKTsKKwlyZXR1cm4gSElGX0tFWV9U
WVBFX1RLSVBfUEFJUldJU0U7Cit9CisKK3N0YXRpYyB1OCBmaWxsX3RraXBfZ3JvdXAoc3RydWN0
IGhpZl90a2lwX2dyb3VwX2tleSAqbXNnLAorCQkJICBzdHJ1Y3QgaWVlZTgwMjExX2tleV9jb25m
ICprZXksCisJCQkgIHN0cnVjdCBpZWVlODAyMTFfa2V5X3NlcSAqc2VxLAorCQkJICBlbnVtIG5s
ODAyMTFfaWZ0eXBlIGlmdHlwZSkKK3sKKwl1OCAqa2V5YnVmID0ga2V5LT5rZXk7CisKKwlXQVJO
KGtleS0+a2V5bGVuICE9IHNpemVvZihtc2ctPnRraXBfa2V5X2RhdGEpCisJCQkgICAgKyAyICog
c2l6ZW9mKG1zZy0+cnhfbWljX2tleSksICJpbmNvbnNpc3RlbnQgZGF0YSIpOworCW1zZy0+a2V5
X2lkID0ga2V5LT5rZXlpZHg7CisJbWVtY3B5KG1zZy0+cnhfc2VxdWVuY2VfY291bnRlciwKKwkg
ICAgICAgJnNlcS0+dGtpcC5pdjE2LCBzaXplb2Yoc2VxLT50a2lwLml2MTYpKTsKKwltZW1jcHko
bXNnLT5yeF9zZXF1ZW5jZV9jb3VudGVyICsgc2l6ZW9mKHUxNiksCisJICAgICAgICZzZXEtPnRr
aXAuaXYzMiwgc2l6ZW9mKHNlcS0+dGtpcC5pdjMyKSk7CisJbWVtY3B5KG1zZy0+dGtpcF9rZXlf
ZGF0YSwga2V5YnVmLCBzaXplb2YobXNnLT50a2lwX2tleV9kYXRhKSk7CisJa2V5YnVmICs9IHNp
emVvZihtc2ctPnRraXBfa2V5X2RhdGEpOworCWlmIChpZnR5cGUgPT0gTkw4MDIxMV9JRlRZUEVf
QVApCisJCS8qIFVzZSBUeCBNSUMgS2V5ICovCisJCW1lbWNweShtc2ctPnJ4X21pY19rZXksIGtl
eWJ1ZiArIDAsIHNpemVvZihtc2ctPnJ4X21pY19rZXkpKTsKKwllbHNlCisJCS8qIFVzZSBSeCBN
SUMgS2V5ICovCisJCW1lbWNweShtc2ctPnJ4X21pY19rZXksIGtleWJ1ZiArIDgsIHNpemVvZiht
c2ctPnJ4X21pY19rZXkpKTsKKwlyZXR1cm4gSElGX0tFWV9UWVBFX1RLSVBfR1JPVVA7Cit9CisK
K3N0YXRpYyB1OCBmaWxsX2NjbXBfcGFpcihzdHJ1Y3QgaGlmX2Flc19wYWlyd2lzZV9rZXkgKm1z
ZywKKwkJCSBzdHJ1Y3QgaWVlZTgwMjExX2tleV9jb25mICprZXksIHU4ICpwZWVyX2FkZHIpCit7
CisJV0FSTihrZXktPmtleWxlbiAhPSBzaXplb2YobXNnLT5hZXNfa2V5X2RhdGEpLCAiaW5jb25z
aXN0ZW50IGRhdGEiKTsKKwlldGhlcl9hZGRyX2NvcHkobXNnLT5wZWVyX2FkZHJlc3MsIHBlZXJf
YWRkcik7CisJbWVtY3B5KG1zZy0+YWVzX2tleV9kYXRhLCBrZXktPmtleSwga2V5LT5rZXlsZW4p
OworCXJldHVybiBISUZfS0VZX1RZUEVfQUVTX1BBSVJXSVNFOworfQorCitzdGF0aWMgdTggZmls
bF9jY21wX2dyb3VwKHN0cnVjdCBoaWZfYWVzX2dyb3VwX2tleSAqbXNnLAorCQkJICBzdHJ1Y3Qg
aWVlZTgwMjExX2tleV9jb25mICprZXksCisJCQkgIHN0cnVjdCBpZWVlODAyMTFfa2V5X3NlcSAq
c2VxKQoreworCVdBUk4oa2V5LT5rZXlsZW4gIT0gc2l6ZW9mKG1zZy0+YWVzX2tleV9kYXRhKSwg
ImluY29uc2lzdGVudCBkYXRhIik7CisJbWVtY3B5KG1zZy0+YWVzX2tleV9kYXRhLCBrZXktPmtl
eSwga2V5LT5rZXlsZW4pOworCW1lbWNweShtc2ctPnJ4X3NlcXVlbmNlX2NvdW50ZXIsIHNlcS0+
Y2NtcC5wbiwgc2l6ZW9mKHNlcS0+Y2NtcC5wbikpOworCW1lbXJldmVyc2UobXNnLT5yeF9zZXF1
ZW5jZV9jb3VudGVyLCBzaXplb2Yoc2VxLT5jY21wLnBuKSk7CisJbXNnLT5rZXlfaWQgPSBrZXkt
PmtleWlkeDsKKwlyZXR1cm4gSElGX0tFWV9UWVBFX0FFU19HUk9VUDsKK30KKworc3RhdGljIHU4
IGZpbGxfc21zNF9wYWlyKHN0cnVjdCBoaWZfd2FwaV9wYWlyd2lzZV9rZXkgKm1zZywKKwkJCSBz
dHJ1Y3QgaWVlZTgwMjExX2tleV9jb25mICprZXksIHU4ICpwZWVyX2FkZHIpCit7CisJdTggKmtl
eWJ1ZiA9IGtleS0+a2V5OworCisJV0FSTihrZXktPmtleWxlbiAhPSBzaXplb2YobXNnLT53YXBp
X2tleV9kYXRhKQorCQkJICAgICsgc2l6ZW9mKG1zZy0+bWljX2tleV9kYXRhKSwgImluY29uc2lz
dGVudCBkYXRhIik7CisJZXRoZXJfYWRkcl9jb3B5KG1zZy0+cGVlcl9hZGRyZXNzLCBwZWVyX2Fk
ZHIpOworCW1lbWNweShtc2ctPndhcGlfa2V5X2RhdGEsIGtleWJ1Ziwgc2l6ZW9mKG1zZy0+d2Fw
aV9rZXlfZGF0YSkpOworCWtleWJ1ZiArPSBzaXplb2YobXNnLT53YXBpX2tleV9kYXRhKTsKKwlt
ZW1jcHkobXNnLT5taWNfa2V5X2RhdGEsIGtleWJ1Ziwgc2l6ZW9mKG1zZy0+bWljX2tleV9kYXRh
KSk7CisJbXNnLT5rZXlfaWQgPSBrZXktPmtleWlkeDsKKwlyZXR1cm4gSElGX0tFWV9UWVBFX1dB
UElfUEFJUldJU0U7Cit9CisKK3N0YXRpYyB1OCBmaWxsX3NtczRfZ3JvdXAoc3RydWN0IGhpZl93
YXBpX2dyb3VwX2tleSAqbXNnLAorCQkJICBzdHJ1Y3QgaWVlZTgwMjExX2tleV9jb25mICprZXkp
Cit7CisJdTggKmtleWJ1ZiA9IGtleS0+a2V5OworCisJV0FSTihrZXktPmtleWxlbiAhPSBzaXpl
b2YobXNnLT53YXBpX2tleV9kYXRhKQorCQkJICAgICsgc2l6ZW9mKG1zZy0+bWljX2tleV9kYXRh
KSwgImluY29uc2lzdGVudCBkYXRhIik7CisJbWVtY3B5KG1zZy0+d2FwaV9rZXlfZGF0YSwga2V5
YnVmLCBzaXplb2YobXNnLT53YXBpX2tleV9kYXRhKSk7CisJa2V5YnVmICs9IHNpemVvZihtc2ct
PndhcGlfa2V5X2RhdGEpOworCW1lbWNweShtc2ctPm1pY19rZXlfZGF0YSwga2V5YnVmLCBzaXpl
b2YobXNnLT5taWNfa2V5X2RhdGEpKTsKKwltc2ctPmtleV9pZCA9IGtleS0+a2V5aWR4OworCXJl
dHVybiBISUZfS0VZX1RZUEVfV0FQSV9HUk9VUDsKK30KKworc3RhdGljIHU4IGZpbGxfYWVzX2Nt
YWNfZ3JvdXAoc3RydWN0IGhpZl9pZ3RrX2dyb3VwX2tleSAqbXNnLAorCQkJICAgICAgc3RydWN0
IGllZWU4MDIxMV9rZXlfY29uZiAqa2V5LAorCQkJICAgICAgc3RydWN0IGllZWU4MDIxMV9rZXlf
c2VxICpzZXEpCit7CisJV0FSTihrZXktPmtleWxlbiAhPSBzaXplb2YobXNnLT5pZ3RrX2tleV9k
YXRhKSwgImluY29uc2lzdGVudCBkYXRhIik7CisJbWVtY3B5KG1zZy0+aWd0a19rZXlfZGF0YSwg
a2V5LT5rZXksIGtleS0+a2V5bGVuKTsKKwltZW1jcHkobXNnLT5pcG4sIHNlcS0+YWVzX2NtYWMu
cG4sIHNpemVvZihzZXEtPmFlc19jbWFjLnBuKSk7CisJbWVtcmV2ZXJzZShtc2ctPmlwbiwgc2l6
ZW9mKHNlcS0+YWVzX2NtYWMucG4pKTsKKwltc2ctPmtleV9pZCA9IGtleS0+a2V5aWR4OworCXJl
dHVybiBISUZfS0VZX1RZUEVfSUdUS19HUk9VUDsKK30KKworc3RhdGljIGludCB3ZnhfYWRkX2tl
eShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKKwkJICAg
ICAgIHN0cnVjdCBpZWVlODAyMTFfa2V5X2NvbmYgKmtleSkKK3sKKwlpbnQgcmV0OworCXN0cnVj
dCBoaWZfcmVxX2FkZF9rZXkgayA9IHsgfTsKKwlzdHJ1Y3QgaWVlZTgwMjExX2tleV9zZXEgc2Vx
OworCXN0cnVjdCB3ZnhfZGV2ICp3ZGV2ID0gd3ZpZi0+d2RldjsKKwlpbnQgaWR4ID0gd2Z4X2Fs
bG9jX2tleSh3dmlmLT53ZGV2KTsKKwlib29sIHBhaXJ3aXNlID0ga2V5LT5mbGFncyAmIElFRUU4
MDIxMV9LRVlfRkxBR19QQUlSV0lTRTsKKworCVdBUk4oa2V5LT5mbGFncyAmIElFRUU4MDIxMV9L
RVlfRkxBR19QQUlSV0lTRSAmJiAhc3RhLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsKKwlpZWVlODAy
MTFfZ2V0X2tleV9yeF9zZXEoa2V5LCAwLCAmc2VxKTsKKwlpZiAoaWR4IDwgMCkKKwkJcmV0dXJu
IC1FSU5WQUw7CisJay5pbnRfaWQgPSB3dmlmLT5pZDsKKwlrLmVudHJ5X2luZGV4ID0gaWR4Owor
CWlmIChrZXktPmNpcGhlciA9PSBXTEFOX0NJUEhFUl9TVUlURV9XRVA0MCB8fAorCSAgICBrZXkt
PmNpcGhlciA9PSBXTEFOX0NJUEhFUl9TVUlURV9XRVAxMDQpIHsKKwkJaWYgKHBhaXJ3aXNlKQor
CQkJay50eXBlID0gZmlsbF93ZXBfcGFpcigmay5rZXkud2VwX3BhaXJ3aXNlX2tleSwga2V5LAor
CQkJCQkgICAgICAgc3RhLT5hZGRyKTsKKwkJZWxzZQorCQkJay50eXBlID0gZmlsbF93ZXBfZ3Jv
dXAoJmsua2V5LndlcF9ncm91cF9rZXksIGtleSk7CisJfSBlbHNlIGlmIChrZXktPmNpcGhlciA9
PSBXTEFOX0NJUEhFUl9TVUlURV9US0lQKSB7CisJCWlmIChwYWlyd2lzZSkKKwkJCWsudHlwZSA9
IGZpbGxfdGtpcF9wYWlyKCZrLmtleS50a2lwX3BhaXJ3aXNlX2tleSwga2V5LAorCQkJCQkJc3Rh
LT5hZGRyKTsKKwkJZWxzZQorCQkJay50eXBlID0gZmlsbF90a2lwX2dyb3VwKCZrLmtleS50a2lw
X2dyb3VwX2tleSwga2V5LAorCQkJCQkJICZzZXEsIHd2aWYtPnZpZi0+dHlwZSk7CisJfSBlbHNl
IGlmIChrZXktPmNpcGhlciA9PSBXTEFOX0NJUEhFUl9TVUlURV9DQ01QKSB7CisJCWlmIChwYWly
d2lzZSkKKwkJCWsudHlwZSA9IGZpbGxfY2NtcF9wYWlyKCZrLmtleS5hZXNfcGFpcndpc2Vfa2V5
LCBrZXksCisJCQkJCQlzdGEtPmFkZHIpOworCQllbHNlCisJCQlrLnR5cGUgPSBmaWxsX2NjbXBf
Z3JvdXAoJmsua2V5LmFlc19ncm91cF9rZXksIGtleSwKKwkJCQkJCSAmc2VxKTsKKwl9IGVsc2Ug
aWYgKGtleS0+Y2lwaGVyID09IFdMQU5fQ0lQSEVSX1NVSVRFX1NNUzQpIHsKKwkJaWYgKHBhaXJ3
aXNlKQorCQkJay50eXBlID0gZmlsbF9zbXM0X3BhaXIoJmsua2V5LndhcGlfcGFpcndpc2Vfa2V5
LCBrZXksCisJCQkJCQlzdGEtPmFkZHIpOworCQllbHNlCisJCQlrLnR5cGUgPSBmaWxsX3NtczRf
Z3JvdXAoJmsua2V5LndhcGlfZ3JvdXBfa2V5LCBrZXkpOworCX0gZWxzZSBpZiAoa2V5LT5jaXBo
ZXIgPT0gV0xBTl9DSVBIRVJfU1VJVEVfQUVTX0NNQUMpIHsKKwkJay50eXBlID0gZmlsbF9hZXNf
Y21hY19ncm91cCgmay5rZXkuaWd0a19ncm91cF9rZXksIGtleSwgJnNlcSk7CisJCWtleS0+Zmxh
Z3MgfD0gSUVFRTgwMjExX0tFWV9GTEFHX0dFTkVSQVRFX01NSUU7CisJfSBlbHNlIHsKKwkJZGV2
X3dhcm4od2Rldi0+ZGV2LCAidW5zdXBwb3J0ZWQga2V5IHR5cGUgJWRcbiIsIGtleS0+Y2lwaGVy
KTsKKwkJd2Z4X2ZyZWVfa2V5KHdkZXYsIGlkeCk7CisJCXJldHVybiAtRU9QTk9UU1VQUDsKKwl9
CisJcmV0ID0gaGlmX2FkZF9rZXkod2RldiwgJmspOworCWlmIChyZXQpIHsKKwkJd2Z4X2ZyZWVf
a2V5KHdkZXYsIGlkeCk7CisJCXJldHVybiAtRU9QTk9UU1VQUDsKKwl9CisJa2V5LT5mbGFncyB8
PSBJRUVFODAyMTFfS0VZX0ZMQUdfUFVUX0lWX1NQQUNFIHwKKwkJICAgICAgSUVFRTgwMjExX0tF
WV9GTEFHX1JFU0VSVkVfVEFJTFJPT007CisJa2V5LT5od19rZXlfaWR4ID0gaWR4OworCXJldHVy
biAwOworfQorCitzdGF0aWMgaW50IHdmeF9yZW1vdmVfa2V5KHN0cnVjdCB3ZnhfdmlmICp3dmlm
LCBzdHJ1Y3QgaWVlZTgwMjExX2tleV9jb25mICprZXkpCit7CisJV0FSTihrZXktPmh3X2tleV9p
ZHggPj0gTUFYX0tFWV9FTlRSSUVTLCAiY29ycnVwdGVkIGh3X2tleV9pZHgiKTsKKwl3ZnhfZnJl
ZV9rZXkod3ZpZi0+d2Rldiwga2V5LT5od19rZXlfaWR4KTsKKwlyZXR1cm4gaGlmX3JlbW92ZV9r
ZXkod3ZpZi0+d2Rldiwga2V5LT5od19rZXlfaWR4KTsKK30KKworaW50IHdmeF9zZXRfa2V5KHN0
cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBlbnVtIHNldF9rZXlfY21kIGNtZCwKKwkJc3RydWN0IGll
ZWU4MDIxMV92aWYgKnZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKKwkJc3RydWN0IGll
ZWU4MDIxMV9rZXlfY29uZiAqa2V5KQoreworCWludCByZXQgPSAtRU9QTk9UU1VQUDsKKwlzdHJ1
Y3Qgd2Z4X3ZpZiAqd3ZpZiA9IChzdHJ1Y3Qgd2Z4X3ZpZiAqKXZpZi0+ZHJ2X3ByaXY7CisKKwlt
dXRleF9sb2NrKCZ3dmlmLT53ZGV2LT5jb25mX211dGV4KTsKKwlpZiAoY21kID09IFNFVF9LRVkp
CisJCXJldCA9IHdmeF9hZGRfa2V5KHd2aWYsIHN0YSwga2V5KTsKKwlpZiAoY21kID09IERJU0FC
TEVfS0VZKQorCQlyZXQgPSB3ZnhfcmVtb3ZlX2tleSh3dmlmLCBrZXkpOworCW11dGV4X3VubG9j
aygmd3ZpZi0+d2Rldi0+Y29uZl9tdXRleCk7CisJcmV0dXJuIHJldDsKK30KKwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9rZXkuaCBiL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL3NpbGFicy93Zngva2V5LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAw
MDAwMDAwLi4yZDEzNWVmZjdhZjIKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL25ldC93aXJl
bGVzcy9zaWxhYnMvd2Z4L2tleS5oCkBAIC0wLDAgKzEsMjAgQEAKKy8qIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KKy8qCisgKiBLZXkgbWFuYWdlbWVudCByZWxhdGVk
IGZ1bmN0aW9ucy4KKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAyMCwgU2lsaWNvbiBMYWJv
cmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdodCAoYykgMjAxMCwgU1QtRXJpY3Nzb24KKyAqLwor
I2lmbmRlZiBXRlhfS0VZX0gKKyNkZWZpbmUgV0ZYX0tFWV9ICisKKyNpbmNsdWRlIDxuZXQvbWFj
ODAyMTEuaD4KKworc3RydWN0IHdmeF9kZXY7CitzdHJ1Y3Qgd2Z4X3ZpZjsKKworaW50IHdmeF9z
ZXRfa2V5KHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBlbnVtIHNldF9rZXlfY21kIGNtZCwKKwkJ
c3RydWN0IGllZWU4MDIxMV92aWYgKnZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKKwkJ
c3RydWN0IGllZWU4MDIxMV9rZXlfY29uZiAqa2V5KTsKKworI2VuZGlmCi0tIAoyLjMzLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
