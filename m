Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E14BF28B2D4
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 12:49:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 56F2A20789;
	Mon, 12 Oct 2020 10:49:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5mhH73H8b7S7; Mon, 12 Oct 2020 10:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E1A84207A8;
	Mon, 12 Oct 2020 10:48:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CED331BF95E
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:48:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C329320532
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:48:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aNmphr0niWMm for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 10:48:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2046.outbound.protection.outlook.com [40.107.223.46])
 by silver.osuosl.org (Postfix) with ESMTPS id 7C63E207A8
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 10:47:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QOjjbvdlPrxHHIr/dBk3XunI//fW1ptsXn47YTcN86lQBuwmu/o3OEUfrK9ojQeypruby/+07+IdgLLOwDA4zaxfKGHnmj2SFNyBJsbWkflzezNS7uVy4fjIOKLv/peQZ+6ErgdHb4HUrkFZAxojpvdTsK42b2lv1zo2JOxoIfIwkKONWeCjmqasQf+3nUPvTJSYUU4NRAS7Uskk22TtFEem0oTIUuo06cc+BXgUWHhgKk7qB0p97bREDLeJSpB3UyTg454N72gLSElxrgxDXfETgRb2YeVtNe+bVzaxhiU0ulUiQEM96ByTyywoVC6PUnqtR32C7sKfd7ldpDG2Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUnsoPoplvHUt9Xza9j1HavLwuWmOnSVnZZ+2HeiqCQ=;
 b=aMGqQ4OBZHDrmmLPNq62VTztbxxd6867m9I1wB01y7+orqWvEaqqVI7VH9cVoUcaK5rz4Xd1Q+KeCsyVBOl8rN36XNS/tElvjCxc1jx4CcIgpnc+a4IdeaZdqMI//ANF6htLIY9r4alGLTYDWay2fsSSUFiBg3wQ0QPy+aFZ1VSGjmphAnJz19jrB11m9rImicG7oB3w2dxZptmOHKnZ6GYX2xm8GzVk8rpGxrKurp7mcQmvcjgfYju0lt8OJ2lIGP5OLOhM/3ntGfRIcQDXVW9tMsjzcNVocsvToRvBqd9gpSvHE+5xBAkARZypXmkCjNn1iYK6YnMoOFmDSrZ3Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WUnsoPoplvHUt9Xza9j1HavLwuWmOnSVnZZ+2HeiqCQ=;
 b=ekbUd70Wd7kTPxhR9vu7zKE6ITLDqOFAKm0zw0vfLB594LfbGicm08sZISwOW4ggALzEU04S3uKeysSodzASNDx3mcnzf+DMHF5cCMuDgqPA7a2O40BeWNGDhlyZxemuWK0aEd9ip+BSc1KSbNwqkjILWB84Pw94CoWRidq2ZDQ=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Mon, 12 Oct
 2020 10:47:30 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 10:47:30 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 13/23] wfx: add key.c/key.h
Date: Mon, 12 Oct 2020 12:46:38 +0200
Message-Id: <20201012104648.985256-14-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
References: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: PR3P189CA0005.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:52::10) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (82.67.86.106) by
 PR3P189CA0005.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:52::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.21 via Frontend Transport; Mon, 12 Oct 2020 10:47:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1464c064-32dd-48ab-4d03-08d86e9c379e
X-MS-TrafficTypeDiagnostic: SA0PR11MB4734:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB4734AAE36D9D07BD835D9BB593070@SA0PR11MB4734.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:376;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eidEK4C7bejdnGiXYugIfY0wqlw6OZPeaS1NK+5zLpm0SOr+d7NgoUl6mYWyaIhHuW8ICFvUHAhWz3QmGBDGz1nBoK/aiGjOcXQKeqSdgboIVKPIZf0uYdL9WPQS1tsFx11fXSj+MNXWTQx4xv4AbTqzPyGRrkuqWQlRJU1UCENmZP7ad+kZ3sczW8nDH/B/Upg5VjYnLLSVTVQ4KBfcfd5Fz6YJlUh1gTwu0FME+WDjAJkQWyYIoJwtM5lecJmfE0orVVfRv+DnQLNZde0BtCDG7C7H36foZruxjv8FwV65DZIx4I8dUqGEerJ8oxbDCuYSUmIOo8xNTAjeEMP7bA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(396003)(366004)(136003)(346002)(376002)(66556008)(66476007)(6512007)(26005)(36756003)(66946007)(16526019)(186003)(316002)(4326008)(2616005)(956004)(1076003)(5660300002)(107886003)(6486002)(54906003)(86362001)(8676002)(83380400001)(8936002)(66574015)(52116002)(2906002)(6506007)(8886007)(6666004)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: FjeBQZQx58J9reQDc+r5MAIgXSYqfxgwiC01MfBQ/z+75OKN8AzQ8izDKcKjZmZkUWNlhuVIdAa0Jpts8DFvX+vxuWJ9jyEaycWiyVdlKa9nfQSx5GEBeH6X8rHR+g9uJJrS2KEqLhtw//fnzK4M1AfEIlYUxNzbweyA/PyqD7ooirnKKnkVEeGy3qxMTZmXMT4qk7UPdryrMV031+Z+ijgxh04u9qVacjPC1JaoEysnPKy5ncEH7Xc5tjOGzztfm1OXyysC6hQh+GekGQwQF/fAEFkumFBslu5/P1ml3shHcBQ7fiF6tEKTnSiTPM6yEUdBz0nmbL/NE/OI8iD13oG1KkGsNdugosL97LJJSrPLpgEABJdgcVvA2bp/QUVOK1SHzpA1VzSNzBgU/sKkjXJ6Zl+Je3KSpd0GF13npZz6E99g4iTrBR2mnjt2Efm8dLaxYIppb1qVSYaG6YKIWhNy1geZ18p5sMfYeYPndQXGUun2Fr9jmezW8J9Pdv0OMiWNGh4BEBgoFRXh3K84SA37X2IkSNV+FnmYhtvEq4pW5nR8HPOX28uipUuAwzhDHs/AIr42rh0wg/PJtYgtYJ+WDVtm6ZDZe0i05jRsYMcEkcx9LnzflC91QCxZez7rhWS+ja1JAfs3mtlxiqhaDA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1464c064-32dd-48ab-4d03-08d86e9c379e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2020 10:47:30.2928 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mSpNVF6nInUNYg0Ty5R3auu4fYM62yBdN99CTRAZ0Dq5djWVMiVuGfzI2x4OE+AP3P+YP91etnCk36vYLlltIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4734
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
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
MDAwMDAwMDAwMDAuLjJhYjgyYmVkNGMxYgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvbmV0
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
aXIoc3RydWN0IGhpZl93ZXBfcGFpcndpc2Vfa2V5ICptc2csCisJCQkgICAgIHN0cnVjdCBpZWVl
ODAyMTFfa2V5X2NvbmYgKmtleSwgdTggKnBlZXJfYWRkcikKK3sKKwlXQVJOKGtleS0+a2V5bGVu
ID4gc2l6ZW9mKG1zZy0+a2V5X2RhdGEpLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsKKwltc2ctPmtl
eV9sZW5ndGggPSBrZXktPmtleWxlbjsKKwltZW1jcHkobXNnLT5rZXlfZGF0YSwga2V5LT5rZXks
IGtleS0+a2V5bGVuKTsKKwlldGhlcl9hZGRyX2NvcHkobXNnLT5wZWVyX2FkZHJlc3MsIHBlZXJf
YWRkcik7CisJcmV0dXJuIEhJRl9LRVlfVFlQRV9XRVBfUEFJUldJU0U7Cit9CisKK3N0YXRpYyB1
OCBmaWxsX3dlcF9ncm91cChzdHJ1Y3QgaGlmX3dlcF9ncm91cF9rZXkgKm1zZywKKwkJCSAgICAg
IHN0cnVjdCBpZWVlODAyMTFfa2V5X2NvbmYgKmtleSkKK3sKKwlXQVJOKGtleS0+a2V5bGVuID4g
c2l6ZW9mKG1zZy0+a2V5X2RhdGEpLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsKKwltc2ctPmtleV9p
ZCA9IGtleS0+a2V5aWR4OworCW1zZy0+a2V5X2xlbmd0aCA9IGtleS0+a2V5bGVuOworCW1lbWNw
eShtc2ctPmtleV9kYXRhLCBrZXktPmtleSwga2V5LT5rZXlsZW4pOworCXJldHVybiBISUZfS0VZ
X1RZUEVfV0VQX0RFRkFVTFQ7Cit9CisKK3N0YXRpYyB1OCBmaWxsX3RraXBfcGFpcihzdHJ1Y3Qg
aGlmX3RraXBfcGFpcndpc2Vfa2V5ICptc2csCisJCQkgICAgICBzdHJ1Y3QgaWVlZTgwMjExX2tl
eV9jb25mICprZXksIHU4ICpwZWVyX2FkZHIpCit7CisJdTggKmtleWJ1ZiA9IGtleS0+a2V5Owor
CisJV0FSTihrZXktPmtleWxlbiAhPSBzaXplb2YobXNnLT50a2lwX2tleV9kYXRhKQorCQkJICAg
ICsgc2l6ZW9mKG1zZy0+dHhfbWljX2tleSkKKwkJCSAgICArIHNpemVvZihtc2ctPnJ4X21pY19r
ZXkpLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsKKwltZW1jcHkobXNnLT50a2lwX2tleV9kYXRhLCBr
ZXlidWYsIHNpemVvZihtc2ctPnRraXBfa2V5X2RhdGEpKTsKKwlrZXlidWYgKz0gc2l6ZW9mKG1z
Zy0+dGtpcF9rZXlfZGF0YSk7CisJbWVtY3B5KG1zZy0+dHhfbWljX2tleSwga2V5YnVmLCBzaXpl
b2YobXNnLT50eF9taWNfa2V5KSk7CisJa2V5YnVmICs9IHNpemVvZihtc2ctPnR4X21pY19rZXkp
OworCW1lbWNweShtc2ctPnJ4X21pY19rZXksIGtleWJ1Ziwgc2l6ZW9mKG1zZy0+cnhfbWljX2tl
eSkpOworCWV0aGVyX2FkZHJfY29weShtc2ctPnBlZXJfYWRkcmVzcywgcGVlcl9hZGRyKTsKKwly
ZXR1cm4gSElGX0tFWV9UWVBFX1RLSVBfUEFJUldJU0U7Cit9CisKK3N0YXRpYyB1OCBmaWxsX3Rr
aXBfZ3JvdXAoc3RydWN0IGhpZl90a2lwX2dyb3VwX2tleSAqbXNnLAorCQkJICAgICAgIHN0cnVj
dCBpZWVlODAyMTFfa2V5X2NvbmYgKmtleSwKKwkJCSAgICAgICBzdHJ1Y3QgaWVlZTgwMjExX2tl
eV9zZXEgKnNlcSwKKwkJCSAgICAgICBlbnVtIG5sODAyMTFfaWZ0eXBlIGlmdHlwZSkKK3sKKwl1
OCAqa2V5YnVmID0ga2V5LT5rZXk7CisKKwlXQVJOKGtleS0+a2V5bGVuICE9IHNpemVvZihtc2ct
PnRraXBfa2V5X2RhdGEpCisJCQkgICAgKyAyICogc2l6ZW9mKG1zZy0+cnhfbWljX2tleSksICJp
bmNvbnNpc3RlbnQgZGF0YSIpOworCW1zZy0+a2V5X2lkID0ga2V5LT5rZXlpZHg7CisJbWVtY3B5
KG1zZy0+cnhfc2VxdWVuY2VfY291bnRlciwKKwkgICAgICAgJnNlcS0+dGtpcC5pdjE2LCBzaXpl
b2Yoc2VxLT50a2lwLml2MTYpKTsKKwltZW1jcHkobXNnLT5yeF9zZXF1ZW5jZV9jb3VudGVyICsg
c2l6ZW9mKHUxNiksCisJICAgICAgICZzZXEtPnRraXAuaXYzMiwgc2l6ZW9mKHNlcS0+dGtpcC5p
djMyKSk7CisJbWVtY3B5KG1zZy0+dGtpcF9rZXlfZGF0YSwga2V5YnVmLCBzaXplb2YobXNnLT50
a2lwX2tleV9kYXRhKSk7CisJa2V5YnVmICs9IHNpemVvZihtc2ctPnRraXBfa2V5X2RhdGEpOwor
CWlmIChpZnR5cGUgPT0gTkw4MDIxMV9JRlRZUEVfQVApCisJCS8vIFVzZSBUeCBNSUMgS2V5CisJ
CW1lbWNweShtc2ctPnJ4X21pY19rZXksIGtleWJ1ZiArIDAsIHNpemVvZihtc2ctPnJ4X21pY19r
ZXkpKTsKKwllbHNlCisJCS8vIFVzZSBSeCBNSUMgS2V5CisJCW1lbWNweShtc2ctPnJ4X21pY19r
ZXksIGtleWJ1ZiArIDgsIHNpemVvZihtc2ctPnJ4X21pY19rZXkpKTsKKwlyZXR1cm4gSElGX0tF
WV9UWVBFX1RLSVBfR1JPVVA7Cit9CisKK3N0YXRpYyB1OCBmaWxsX2NjbXBfcGFpcihzdHJ1Y3Qg
aGlmX2Flc19wYWlyd2lzZV9rZXkgKm1zZywKKwkJCSAgICAgIHN0cnVjdCBpZWVlODAyMTFfa2V5
X2NvbmYgKmtleSwgdTggKnBlZXJfYWRkcikKK3sKKwlXQVJOKGtleS0+a2V5bGVuICE9IHNpemVv
Zihtc2ctPmFlc19rZXlfZGF0YSksICJpbmNvbnNpc3RlbnQgZGF0YSIpOworCWV0aGVyX2FkZHJf
Y29weShtc2ctPnBlZXJfYWRkcmVzcywgcGVlcl9hZGRyKTsKKwltZW1jcHkobXNnLT5hZXNfa2V5
X2RhdGEsIGtleS0+a2V5LCBrZXktPmtleWxlbik7CisJcmV0dXJuIEhJRl9LRVlfVFlQRV9BRVNf
UEFJUldJU0U7Cit9CisKK3N0YXRpYyB1OCBmaWxsX2NjbXBfZ3JvdXAoc3RydWN0IGhpZl9hZXNf
Z3JvdXBfa2V5ICptc2csCisJCQkgICAgICAgc3RydWN0IGllZWU4MDIxMV9rZXlfY29uZiAqa2V5
LAorCQkJICAgICAgIHN0cnVjdCBpZWVlODAyMTFfa2V5X3NlcSAqc2VxKQoreworCVdBUk4oa2V5
LT5rZXlsZW4gIT0gc2l6ZW9mKG1zZy0+YWVzX2tleV9kYXRhKSwgImluY29uc2lzdGVudCBkYXRh
Iik7CisJbWVtY3B5KG1zZy0+YWVzX2tleV9kYXRhLCBrZXktPmtleSwga2V5LT5rZXlsZW4pOwor
CW1lbWNweShtc2ctPnJ4X3NlcXVlbmNlX2NvdW50ZXIsIHNlcS0+Y2NtcC5wbiwgc2l6ZW9mKHNl
cS0+Y2NtcC5wbikpOworCW1lbXJldmVyc2UobXNnLT5yeF9zZXF1ZW5jZV9jb3VudGVyLCBzaXpl
b2Yoc2VxLT5jY21wLnBuKSk7CisJbXNnLT5rZXlfaWQgPSBrZXktPmtleWlkeDsKKwlyZXR1cm4g
SElGX0tFWV9UWVBFX0FFU19HUk9VUDsKK30KKworc3RhdGljIHU4IGZpbGxfc21zNF9wYWlyKHN0
cnVjdCBoaWZfd2FwaV9wYWlyd2lzZV9rZXkgKm1zZywKKwkJCSAgICAgIHN0cnVjdCBpZWVlODAy
MTFfa2V5X2NvbmYgKmtleSwgdTggKnBlZXJfYWRkcikKK3sKKwl1OCAqa2V5YnVmID0ga2V5LT5r
ZXk7CisKKwlXQVJOKGtleS0+a2V5bGVuICE9IHNpemVvZihtc2ctPndhcGlfa2V5X2RhdGEpCisJ
CQkgICAgKyBzaXplb2YobXNnLT5taWNfa2V5X2RhdGEpLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsK
KwlldGhlcl9hZGRyX2NvcHkobXNnLT5wZWVyX2FkZHJlc3MsIHBlZXJfYWRkcik7CisJbWVtY3B5
KG1zZy0+d2FwaV9rZXlfZGF0YSwga2V5YnVmLCBzaXplb2YobXNnLT53YXBpX2tleV9kYXRhKSk7
CisJa2V5YnVmICs9IHNpemVvZihtc2ctPndhcGlfa2V5X2RhdGEpOworCW1lbWNweShtc2ctPm1p
Y19rZXlfZGF0YSwga2V5YnVmLCBzaXplb2YobXNnLT5taWNfa2V5X2RhdGEpKTsKKwltc2ctPmtl
eV9pZCA9IGtleS0+a2V5aWR4OworCXJldHVybiBISUZfS0VZX1RZUEVfV0FQSV9QQUlSV0lTRTsK
K30KKworc3RhdGljIHU4IGZpbGxfc21zNF9ncm91cChzdHJ1Y3QgaGlmX3dhcGlfZ3JvdXBfa2V5
ICptc2csCisJCQkgICAgICAgc3RydWN0IGllZWU4MDIxMV9rZXlfY29uZiAqa2V5KQoreworCXU4
ICprZXlidWYgPSBrZXktPmtleTsKKworCVdBUk4oa2V5LT5rZXlsZW4gIT0gc2l6ZW9mKG1zZy0+
d2FwaV9rZXlfZGF0YSkKKwkJCSAgICArIHNpemVvZihtc2ctPm1pY19rZXlfZGF0YSksICJpbmNv
bnNpc3RlbnQgZGF0YSIpOworCW1lbWNweShtc2ctPndhcGlfa2V5X2RhdGEsIGtleWJ1Ziwgc2l6
ZW9mKG1zZy0+d2FwaV9rZXlfZGF0YSkpOworCWtleWJ1ZiArPSBzaXplb2YobXNnLT53YXBpX2tl
eV9kYXRhKTsKKwltZW1jcHkobXNnLT5taWNfa2V5X2RhdGEsIGtleWJ1Ziwgc2l6ZW9mKG1zZy0+
bWljX2tleV9kYXRhKSk7CisJbXNnLT5rZXlfaWQgPSBrZXktPmtleWlkeDsKKwlyZXR1cm4gSElG
X0tFWV9UWVBFX1dBUElfR1JPVVA7Cit9CisKK3N0YXRpYyB1OCBmaWxsX2Flc19jbWFjX2dyb3Vw
KHN0cnVjdCBoaWZfaWd0a19ncm91cF9rZXkgKm1zZywKKwkJCQkgICBzdHJ1Y3QgaWVlZTgwMjEx
X2tleV9jb25mICprZXksCisJCQkJICAgc3RydWN0IGllZWU4MDIxMV9rZXlfc2VxICpzZXEpCit7
CisJV0FSTihrZXktPmtleWxlbiAhPSBzaXplb2YobXNnLT5pZ3RrX2tleV9kYXRhKSwgImluY29u
c2lzdGVudCBkYXRhIik7CisJbWVtY3B5KG1zZy0+aWd0a19rZXlfZGF0YSwga2V5LT5rZXksIGtl
eS0+a2V5bGVuKTsKKwltZW1jcHkobXNnLT5pcG4sIHNlcS0+YWVzX2NtYWMucG4sIHNpemVvZihz
ZXEtPmFlc19jbWFjLnBuKSk7CisJbWVtcmV2ZXJzZShtc2ctPmlwbiwgc2l6ZW9mKHNlcS0+YWVz
X2NtYWMucG4pKTsKKwltc2ctPmtleV9pZCA9IGtleS0+a2V5aWR4OworCXJldHVybiBISUZfS0VZ
X1RZUEVfSUdUS19HUk9VUDsKK30KKworc3RhdGljIGludCB3ZnhfYWRkX2tleShzdHJ1Y3Qgd2Z4
X3ZpZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKKwkJICAgICAgIHN0cnVjdCBp
ZWVlODAyMTFfa2V5X2NvbmYgKmtleSkKK3sKKwlpbnQgcmV0OworCXN0cnVjdCBoaWZfcmVxX2Fk
ZF9rZXkgayA9IHsgfTsKKwlzdHJ1Y3QgaWVlZTgwMjExX2tleV9zZXEgc2VxOworCXN0cnVjdCB3
ZnhfZGV2ICp3ZGV2ID0gd3ZpZi0+d2RldjsKKwlpbnQgaWR4ID0gd2Z4X2FsbG9jX2tleSh3dmlm
LT53ZGV2KTsKKwlib29sIHBhaXJ3aXNlID0ga2V5LT5mbGFncyAmIElFRUU4MDIxMV9LRVlfRkxB
R19QQUlSV0lTRTsKKworCVdBUk4oa2V5LT5mbGFncyAmIElFRUU4MDIxMV9LRVlfRkxBR19QQUlS
V0lTRSAmJiAhc3RhLCAiaW5jb25zaXN0ZW50IGRhdGEiKTsKKwlpZWVlODAyMTFfZ2V0X2tleV9y
eF9zZXEoa2V5LCAwLCAmc2VxKTsKKwlpZiAoaWR4IDwgMCkKKwkJcmV0dXJuIC1FSU5WQUw7CisJ
ay5pbnRfaWQgPSB3dmlmLT5pZDsKKwlrLmVudHJ5X2luZGV4ID0gaWR4OworCWlmIChrZXktPmNp
cGhlciA9PSBXTEFOX0NJUEhFUl9TVUlURV9XRVA0MCB8fAorCSAgICBrZXktPmNpcGhlciA9PSBX
TEFOX0NJUEhFUl9TVUlURV9XRVAxMDQpIHsKKwkJaWYgKHBhaXJ3aXNlKQorCQkJay50eXBlID0g
ZmlsbF93ZXBfcGFpcigmay5rZXkud2VwX3BhaXJ3aXNlX2tleSwga2V5LAorCQkJCQkgICAgICAg
c3RhLT5hZGRyKTsKKwkJZWxzZQorCQkJay50eXBlID0gZmlsbF93ZXBfZ3JvdXAoJmsua2V5Lndl
cF9ncm91cF9rZXksIGtleSk7CisJfSBlbHNlIGlmIChrZXktPmNpcGhlciA9PSBXTEFOX0NJUEhF
Ul9TVUlURV9US0lQKSB7CisJCWlmIChwYWlyd2lzZSkKKwkJCWsudHlwZSA9IGZpbGxfdGtpcF9w
YWlyKCZrLmtleS50a2lwX3BhaXJ3aXNlX2tleSwga2V5LAorCQkJCQkJc3RhLT5hZGRyKTsKKwkJ
ZWxzZQorCQkJay50eXBlID0gZmlsbF90a2lwX2dyb3VwKCZrLmtleS50a2lwX2dyb3VwX2tleSwg
a2V5LAorCQkJCQkJICZzZXEsIHd2aWYtPnZpZi0+dHlwZSk7CisJfSBlbHNlIGlmIChrZXktPmNp
cGhlciA9PSBXTEFOX0NJUEhFUl9TVUlURV9DQ01QKSB7CisJCWlmIChwYWlyd2lzZSkKKwkJCWsu
dHlwZSA9IGZpbGxfY2NtcF9wYWlyKCZrLmtleS5hZXNfcGFpcndpc2Vfa2V5LCBrZXksCisJCQkJ
CQlzdGEtPmFkZHIpOworCQllbHNlCisJCQlrLnR5cGUgPSBmaWxsX2NjbXBfZ3JvdXAoJmsua2V5
LmFlc19ncm91cF9rZXksIGtleSwKKwkJCQkJCSAmc2VxKTsKKwl9IGVsc2UgaWYgKGtleS0+Y2lw
aGVyID09IFdMQU5fQ0lQSEVSX1NVSVRFX1NNUzQpIHsKKwkJaWYgKHBhaXJ3aXNlKQorCQkJay50
eXBlID0gZmlsbF9zbXM0X3BhaXIoJmsua2V5LndhcGlfcGFpcndpc2Vfa2V5LCBrZXksCisJCQkJ
CQlzdGEtPmFkZHIpOworCQllbHNlCisJCQlrLnR5cGUgPSBmaWxsX3NtczRfZ3JvdXAoJmsua2V5
LndhcGlfZ3JvdXBfa2V5LCBrZXkpOworCX0gZWxzZSBpZiAoa2V5LT5jaXBoZXIgPT0gV0xBTl9D
SVBIRVJfU1VJVEVfQUVTX0NNQUMpIHsKKwkJay50eXBlID0gZmlsbF9hZXNfY21hY19ncm91cCgm
ay5rZXkuaWd0a19ncm91cF9rZXksIGtleSwgJnNlcSk7CisJCWtleS0+ZmxhZ3MgfD0gSUVFRTgw
MjExX0tFWV9GTEFHX0dFTkVSQVRFX01NSUU7CisJfSBlbHNlIHsKKwkJZGV2X3dhcm4od2Rldi0+
ZGV2LCAidW5zdXBwb3J0ZWQga2V5IHR5cGUgJWRcbiIsIGtleS0+Y2lwaGVyKTsKKwkJd2Z4X2Zy
ZWVfa2V5KHdkZXYsIGlkeCk7CisJCXJldHVybiAtRU9QTk9UU1VQUDsKKwl9CisJcmV0ID0gaGlm
X2FkZF9rZXkod2RldiwgJmspOworCWlmIChyZXQpIHsKKwkJd2Z4X2ZyZWVfa2V5KHdkZXYsIGlk
eCk7CisJCXJldHVybiAtRU9QTk9UU1VQUDsKKwl9CisJa2V5LT5mbGFncyB8PSBJRUVFODAyMTFf
S0VZX0ZMQUdfUFVUX0lWX1NQQUNFIHwKKwkJICAgICAgSUVFRTgwMjExX0tFWV9GTEFHX1JFU0VS
VkVfVEFJTFJPT007CisJa2V5LT5od19rZXlfaWR4ID0gaWR4OworCXJldHVybiAwOworfQorCitz
dGF0aWMgaW50IHdmeF9yZW1vdmVfa2V5KHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVl
ZTgwMjExX2tleV9jb25mICprZXkpCit7CisJV0FSTihrZXktPmh3X2tleV9pZHggPj0gTUFYX0tF
WV9FTlRSSUVTLCAiY29ycnVwdGVkIGh3X2tleV9pZHgiKTsKKwl3ZnhfZnJlZV9rZXkod3ZpZi0+
d2Rldiwga2V5LT5od19rZXlfaWR4KTsKKwlyZXR1cm4gaGlmX3JlbW92ZV9rZXkod3ZpZi0+d2Rl
diwga2V5LT5od19rZXlfaWR4KTsKK30KKworaW50IHdmeF9zZXRfa2V5KHN0cnVjdCBpZWVlODAy
MTFfaHcgKmh3LCBlbnVtIHNldF9rZXlfY21kIGNtZCwKKwkJc3RydWN0IGllZWU4MDIxMV92aWYg
KnZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwKKwkJc3RydWN0IGllZWU4MDIxMV9rZXlf
Y29uZiAqa2V5KQoreworCWludCByZXQgPSAtRU9QTk9UU1VQUDsKKwlzdHJ1Y3Qgd2Z4X3ZpZiAq
d3ZpZiA9IChzdHJ1Y3Qgd2Z4X3ZpZiAqKXZpZi0+ZHJ2X3ByaXY7CisKKwltdXRleF9sb2NrKCZ3
dmlmLT53ZGV2LT5jb25mX211dGV4KTsKKwlpZiAoY21kID09IFNFVF9LRVkpCisJCXJldCA9IHdm
eF9hZGRfa2V5KHd2aWYsIHN0YSwga2V5KTsKKwlpZiAoY21kID09IERJU0FCTEVfS0VZKQorCQly
ZXQgPSB3ZnhfcmVtb3ZlX2tleSh3dmlmLCBrZXkpOworCW11dGV4X3VubG9jaygmd3ZpZi0+d2Rl
di0+Y29uZl9tdXRleCk7CisJcmV0dXJuIHJldDsKK30KKwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9u
ZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9rZXkuaCBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFi
cy93Zngva2V5LmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi43MGE0
NGQwY2EzNWUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMv
d2Z4L2tleS5oCkBAIC0wLDAgKzEsMjAgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkgKi8KKy8qCisgKiBJbXBsZW1lbnRhdGlvbiBvZiBtYWM4MDIxMSBBUEkuCisg
KgorICogQ29weXJpZ2h0IChjKSAyMDE3LTIwMjAsIFNpbGljb24gTGFib3JhdG9yaWVzLCBJbmMu
CisgKiBDb3B5cmlnaHQgKGMpIDIwMTAsIFNULUVyaWNzc29uCisgKi8KKyNpZm5kZWYgV0ZYX0tF
WV9ICisjZGVmaW5lIFdGWF9LRVlfSAorCisjaW5jbHVkZSA8bmV0L21hYzgwMjExLmg+CisKK3N0
cnVjdCB3ZnhfZGV2Oworc3RydWN0IHdmeF92aWY7CisKK2ludCB3Znhfc2V0X2tleShzdHJ1Y3Qg
aWVlZTgwMjExX2h3ICpodywgZW51bSBzZXRfa2V5X2NtZCBjbWQsCisJCXN0cnVjdCBpZWVlODAy
MTFfdmlmICp2aWYsIHN0cnVjdCBpZWVlODAyMTFfc3RhICpzdGEsCisJCXN0cnVjdCBpZWVlODAy
MTFfa2V5X2NvbmYgKmtleSk7CisKKyNlbmRpZiAvKiBXRlhfU1RBX0ggKi8KLS0gCjIuMjguMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
