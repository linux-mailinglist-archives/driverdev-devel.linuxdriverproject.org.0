Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F92411965
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Sep 2021 18:14:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02C43828DF;
	Mon, 20 Sep 2021 16:14:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QmosQndFpaOT; Mon, 20 Sep 2021 16:14:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A82D180F92;
	Mon, 20 Sep 2021 16:14:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F6441BF3D5
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F9B982BFD
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p_CDg96N8ftz for <devel@linuxdriverproject.org>;
 Mon, 20 Sep 2021 16:12:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2049.outbound.protection.outlook.com [40.107.237.49])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B29A82C18
 for <devel@driverdev.osuosl.org>; Mon, 20 Sep 2021 16:12:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lPVDt09G8tMhScVNCp45xB5Nbs53bc1XmBy2KNBzFJhpDm20uCwq0ofM9Wzdev05RI47hYgJBGeITbhp7ja7+otnECpU4yfNPxwxTi6SZZD+vj/fXdpgcgJStUC1D4Pv8RlBGnAN6QdsXcAr2q+zjWLfS8eTnVQToICpHYwy5ttbzPkgNM36p2aD56fpLaBHnfKXMNMlZmZeueVYqYSaC150W0cVra+mwVb9CljTUNBTW1bWrRYX8R8CPe4kQ4d7lXVpAIE7ooTXGo/LCxebNQ3/WMwvdRVn6h8qk6FqwSS6HozJl8A6PNxgT3gEFkzFVYZQiVu/AyCgXsDOlrK9Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=xdE+7Y9kU+Kuls8oPQCRxATfxUpgKTkyNGR3RtiwYqc=;
 b=OI2AQOdrLf0fSPgZ7+CnYLpWEWEwv31EdL5KgQjwyr66Pr/S34Vwxp7/C3w4qcH/TsUglp6MN5rhSvFfU14Vl9hoD5kocHVAOv7rDfQUvSIr59jltzQX4X1W5OX8amr9MYv44YtPo47BMuDf0aKe2d8sroV+i1qW68H7noVZ07A2lL8wLUyXBWoC0/PgxPYyzjhEm7EM05dFySqKKI6wuDdgKhH6AUkx16v2HR/vzxQ/kW/HxyQcF7/uK5s2qb7dGVYG9E/ErvtPWP0vC7n2YPHBO5wFm3Y+I54/w8MD96BSgj23ivIV/Kc6bUXrEDep14SHsKR0o/m0mX01llGrLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xdE+7Y9kU+Kuls8oPQCRxATfxUpgKTkyNGR3RtiwYqc=;
 b=WlhXPF/D93Oe4VZyQ0OvXBy7lfemBqGT1ceEGcLRGl058ATq96WOVSjGHKgAj55kGgk0+fyeNoRVg1zXfTG6WuxizcuC3k9UmLB/p7M7/HkU+v8wKsOV9Ntmtph1t+6VDeqZ7EzmONLKo3LQ5m6GIsoPgDv9voCJm/87Hxz83fg=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Mon, 20 Sep
 2021 16:12:28 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 16:12:28 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v7 14/24] wfx: add key.c/key.h
Date: Mon, 20 Sep 2021 18:11:26 +0200
Message-Id: <20210920161136.2398632-15-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SA0PR11CA0064.namprd11.prod.outlook.com
 (2603:10b6:806:d2::9) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SA0PR11CA0064.namprd11.prod.outlook.com (2603:10b6:806:d2::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Mon, 20 Sep 2021 16:12:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 674c307a-548b-4d78-c87c-08d97c5170ff
X-MS-TrafficTypeDiagnostic: SN6PR11MB2557:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2557B19FD682E66C134A5C3293A09@SN6PR11MB2557.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:346;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5d8D7BsKbhQCuNAEtJK6gMQDApOkfD+79khQqLsoqxzkkZA468jRVAmQMDXfJ8Cvgitir12deS7WpbcWqEZwErPD5z3AL2x6w26BuBiEHAMbf15ps5Fxr9aCjPoir1j+6miUj3A+RgLhrnh/otCj7us95vDjnya4Tx4vqKKqNgkQLXI4cQswjAuTZpwwdPnJBP3bw8CZ/W+1S12rR0ZfyVkVkCR2iOiHgQZHYt9XRsjhrQRYwo5Xw1nAUk2DckgvzSyXhrz0L4UAzsbbY9rjjhw+X5PGtyfGyRgWfeTb5daqbS59AKl4tmRJQqr63PCNSweUwgqHUydgp+CuuyXNK4r/6MyzSXya8c1z8hTQaggIcKjFNrjvv8Str9uD/JMw8xV1863PLkGrJRzzCAHN8nBp4PpirvGU9yHtvM1P9xdQInTHKafe4nMZCdbllGuOH8DY6XvVb/CuTBB40cWjHxKdVlKM/jMpAzNI3cTyFz8HjCuE6Gbag5kjETMadrGz72Xmsq/dtmODJVyjmowNffoIxaNT4QZjwOUNZCUzCyBLA1rMSnIXaJueJJK5B5DnWcJigDurH93Sj2T1acnkmAOu/EdmJgRVZ5dBRAhTQEYHjFrupYRpTgOocqcu9frXrx0FPKudYNwsSm8BzUpdYg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(396003)(136003)(346002)(366004)(376002)(2906002)(1076003)(8936002)(54906003)(38100700002)(86362001)(6486002)(36756003)(66574015)(478600001)(5660300002)(7416002)(6916009)(186003)(66476007)(2616005)(7696005)(8676002)(52116002)(66556008)(66946007)(4326008)(316002)(107886003)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: HrUjRt+eufEnxxcjTRQudWc1udIjPzHhj8lzhDprL8KmzioWJ+9KDV4Ld+JNWT2TpfcYhGkpCkAbYcK55k2wLPfDJ56XBCKDN5HBb47sr+Y68mPUAC06GatpV3U9fHGMyPA5ZUoeNXAVhm2KZ6oQAWNKhAMXhxI6OH59eFok05Zv1ZL2vO20tUDK3aolUZN8rzCGoyNhZtrwjtlll0Z+ys2qYPAEXoINt+JiN15LUzQO+5NR74dhUhfYxMLBaFbWToRC4cc4kjXgiCVC119qMyn5l354AwFXuvXs62QWVrkQv/642LaTbBrVCiSavkg3rPDcyZ/dQLJDykdBC58w3QEIZWOOw5hIgk1ccdqsskJHMUx5ifSdrITkvVH0OxptxABcjLp0wurX3YaxKGFRk7eXpHGjNoEXjyPap5p+rTnPOhUBeqfL9WzpkcY1d9r1xwasTEoZHfREeZlG2+FqNikEaKPXJXdpzDqbfhNjO/e+8kzj/Ik0qcG3qZRGPzZGYQ5lquIQLIrFACbszTzuUWu+VKq4xyRCRlDAicoIoIZkJ7LJLklSCmmk7KCgwJs5h5VUrhj9WyFeC+3kHtgIuaKPwXWpFodSFehVk4Yw25c57+Ul9VMeSk5yFRts8PFvWo5Tl1On7jRLeXOqJnV5OzPBTnZVQ8EohIQQYAmojs/5ZS/FSIqHP9wm7gyQbU1zLG5qD/4Ae0k7gfQTBXrwP47hxBHvcEc0X4+UF63bvbP43RdEYQ5/q1gQEm0YuE58HyPf4pqFOD9zITQACnFyUSq4nvPfElXmPyaAohhGHEFsMcyvBYNnILf7Q7i3zLEe
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 674c307a-548b-4d78-c87c-08d97c5170ff
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2021 16:12:28.2280 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +yLOnlvCo2/qNEA5juyh74xK8EZTOdORzkPsE1IPWHSGS1IioU5NoFhVjmOaai20d7OlULmgNGG2s1NoTarJLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2557
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
