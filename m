Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 830CF28B2A5
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 12:48:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 063F586099;
	Mon, 12 Oct 2020 10:48:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u6QXX0fGDmZS; Mon, 12 Oct 2020 10:48:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D98EB86149;
	Mon, 12 Oct 2020 10:47:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5A0681BF95A
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4BBF6864B2
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27eShXbnqNx2 for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 10:47:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2070.outbound.protection.outlook.com [40.107.223.70])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F1FC686A07
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 10:47:42 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K18lVxZe8aZCbI7wL8g9wcRXzHtxlh5HbuoG3b1AS8EXXJnxtE6kN7I6LQak2OcWXCccv8RNQ2Y7CmhmYKH3fGisSZxwMPB6989C3TMCUqukFvpIVaUBdyd0MHePwMr5TUcmV+2Dbqgh+GB/8Cg3uzQ/3FLQmnkg2WHURKG7x9mlod4YPk+V/dK8Rpr9Lw8S2N0D6sB4jO2Y6T+uuYER3qxOJjzgaUWTv7y48hG9I0UB9nMhag3nJH5JwFZLhdsObfeSv2/GwSSrWFYxZrrXYZ8DajCJBEFFKkjTwj76CFDL0LP3L9MV3qJDJEiJFNprUfsn6pUuC1npYTj8HLM6xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yVDm7W0akEUjkcRCCEJ1oAdvjNfySJu4A7QXWZ6KM9c=;
 b=VF/b1L6WKmPdkr4fMI5fJcbWUUe76chZt1Z7jDRDjVItkQTMue6LbJ10fTzFEGxqy3QKiVTLXkVB6s7ANRcN9hRN0WvI+pguWjGhEjKRdfH7xoCn5ok2aahtlnGscGIy+y5LTCnwiS+xRK3yDO+Cl+UzQCj/RlIQlwQd/TwepKftaKzNih2Andynmtnsiun0wJ1ypvWHAek5lYQQGZ+fAvL2GTlFOCMYTO5CYr/6Kr6G+44apudwPRsyO+gvvO4tr8wrELElilAT5NSISBgRkqYkWkFVklpx9irUu/86tMENio4083je/ULiJAZ2RzoXm/MTUGg5y7Yjwa4YO8DH3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yVDm7W0akEUjkcRCCEJ1oAdvjNfySJu4A7QXWZ6KM9c=;
 b=TWcsaYsBCiBhVdFx0DUPVqg/ity39HN/fh/UFUp9KZKhCsxnT7nHmK4JU2k2VFVlpk+gCRxwYlVnXa5Q/ZlxejzZWQrMDBLG2A06mN5IY6E9//K9v52hpE9nV4pIEGjJn/L7vv7UxhuCZwTEBr+WS1Zm4GMxI6zKF3OdRmfVu6Y=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Mon, 12 Oct
 2020 10:47:41 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 10:47:41 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 19/23] wfx: add scan.c/scan.h
Date: Mon, 12 Oct 2020 12:46:44 +0200
Message-Id: <20201012104648.985256-20-Jerome.Pouiller@silabs.com>
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
 15.20.3455.21 via Frontend Transport; Mon, 12 Oct 2020 10:47:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5c0bc0fc-ee1b-4dbc-6041-08d86e9c3e64
X-MS-TrafficTypeDiagnostic: SA0PR11MB4734:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB4734A8A9C591F63A5EB627A893070@SA0PR11MB4734.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3044;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VSwcxFT1/+Clbq+azFdCRtblAqfva9Kchpjca/61uKb9F4PvTe8y1OIOgq6VttXIZVA41ORLcaWZZHQPzA70merhVxNaN20ee2ykGjyMxXiTFkydw4DkKfNjzI/w+7ojDXsSF4wnJ+K9ZhiWGEJIGg6GsFTLYl+QU21OVanuHYvqf90/sUJhxXje3OQ202JdvARit4SjsyQpGOm0StQsLPGyu9XU8vGoYHRDeZfChDyH0+Eou3PIW+ixMmLh4z7fm53K8BxXlX3MM2TYUobWpOJ5J+Du9yM+OlvOFJ8AJI6R2zbbDcuZ2rc5CEXzTj3APqb1RIm0t1ahoMAmFmir0Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(396003)(366004)(136003)(346002)(376002)(66556008)(66476007)(6512007)(26005)(36756003)(66946007)(16526019)(186003)(316002)(4326008)(2616005)(956004)(1076003)(5660300002)(107886003)(6486002)(54906003)(86362001)(8676002)(83380400001)(8936002)(66574015)(52116002)(2906002)(6506007)(8886007)(6666004)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: nFOYTQMO2B+fQ5+bjnLg/9xqL0vv4Drkjb+2e4JQqbNZyk5fjcevAQ0cFnlsz5KnS45wC17+8OfaR0ZqCns0R7KqxQOO6jiUHjzTWe4560DP/Ey8xyHtItm5WrgO7hsMA4jrhiG/ENWHyJKctW6W19QmuU+kzHPfQaM192vrO1CVyaIR0ZomIv6URnin8lKul5qV7EbPRIsHWPnkRP0Q1iw+idi2w5wY7FGkp3f5Hzpnd1KDVqYjupjc4l2nCVToyKFv8d9aBYGsYHnp2GgyFIkZwcgY2uv1LRD6rxHjJQJmLAkJch3iTqRmGmr7aGS8GyOSmvtsh6/U1J9dYEdpAcOrH0zG7Qk8k+XDlUJERyPN5DnnUapczJi2UYkT6KtMUXRu+42rejERDv1t0A3dpnzpYnC4ovUZyrlRjzK6MsNAl5JrQZ5ZunnzdLanQjLrurjG72ihH7BNz8IUNu4KrK4/X0nn1d5AfXP9GZ5jNyAzC0XyJlmwPQw1YbP05NUEwm5sSh1BXwyIjiMzkaO4VC/ZA9mB3i5injihBk3rijSXPnThU/w8i8zu7XL20o4+riWtJGWUTr8nB2bhyJALdo1JONjE+RhRja0YntDjjudgWFEU3/HNH6tvjW3SkithYSZkx9KhpZDvUcsznturgg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c0bc0fc-ee1b-4dbc-6041-08d86e9c3e64
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2020 10:47:41.6952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c4QoCgh+QGdPSM5HEgyS4ZcC0km8QNmCt6HtN6udtzY//3rvNEYZp9ryrh/SbCcymq9M8AhbdDSppE8RCkSf4A==
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
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nhbi5jIHwgMTMyICsrKysr
KysrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nh
bi5oIHwgIDIyICsrKysrCiAyIGZpbGVzIGNoYW5nZWQsIDE1NCBpbnNlcnRpb25zKCspCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9zY2FuLmMKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3NjYW4uaAoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nhbi5jIGIvZHJp
dmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9zY2FuLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwMDAwLi5mYjQ3YzdjZGRmMmYKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2
ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3NjYW4uYwpAQCAtMCwwICsxLDEzMiBAQAorLy8g
U1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQorLyoKKyAqIFNjYW4gcmVsYXRl
ZCBmdW5jdGlvbnMuCisgKgorICogQ29weXJpZ2h0IChjKSAyMDE3LTIwMjAsIFNpbGljb24gTGFi
b3JhdG9yaWVzLCBJbmMuCisgKiBDb3B5cmlnaHQgKGMpIDIwMTAsIFNULUVyaWNzc29uCisgKi8K
KyNpbmNsdWRlIDxuZXQvbWFjODAyMTEuaD4KKworI2luY2x1ZGUgInNjYW4uaCIKKyNpbmNsdWRl
ICJ3ZnguaCIKKyNpbmNsdWRlICJzdGEuaCIKKyNpbmNsdWRlICJoaWZfdHhfbWliLmgiCisKK3N0
YXRpYyB2b2lkIF9faWVlZTgwMjExX3NjYW5fY29tcGxldGVkX2NvbXBhdChzdHJ1Y3QgaWVlZTgw
MjExX2h3ICpodywKKwkJCQkJICAgICAgYm9vbCBhYm9ydGVkKQoreworCXN0cnVjdCBjZmc4MDIx
MV9zY2FuX2luZm8gaW5mbyA9IHsKKwkJLmFib3J0ZWQgPSBhYm9ydGVkLAorCX07CisKKwlpZWVl
ODAyMTFfc2Nhbl9jb21wbGV0ZWQoaHcsICZpbmZvKTsKK30KKworc3RhdGljIGludCB1cGRhdGVf
cHJvYmVfdG1wbChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKKwkJCSAgICAgc3RydWN0IGNmZzgwMjEx
X3NjYW5fcmVxdWVzdCAqcmVxKQoreworCXN0cnVjdCBza19idWZmICpza2I7CisKKwlza2IgPSBp
ZWVlODAyMTFfcHJvYmVyZXFfZ2V0KHd2aWYtPndkZXYtPmh3LCB3dmlmLT52aWYtPmFkZHIsCisJ
CQkJICAgICBOVUxMLCAwLCByZXEtPmllX2xlbik7CisJaWYgKCFza2IpCisJCXJldHVybiAtRU5P
TUVNOworCisJc2tiX3B1dF9kYXRhKHNrYiwgcmVxLT5pZSwgcmVxLT5pZV9sZW4pOworCWhpZl9z
ZXRfdGVtcGxhdGVfZnJhbWUod3ZpZiwgc2tiLCBISUZfVE1QTFRfUFJCUkVRLCAwKTsKKwlkZXZf
a2ZyZWVfc2tiKHNrYik7CisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyBpbnQgc2VuZF9zY2FuX3Jl
cShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwKKwkJCSBzdHJ1Y3QgY2ZnODAyMTFfc2Nhbl9yZXF1ZXN0
ICpyZXEsIGludCBzdGFydF9pZHgpCit7CisJaW50IGksIHJldCwgdGltZW91dDsKKwlzdHJ1Y3Qg
aWVlZTgwMjExX2NoYW5uZWwgKmNoX3N0YXJ0LCAqY2hfY3VyOworCisJZm9yIChpID0gc3RhcnRf
aWR4OyBpIDwgcmVxLT5uX2NoYW5uZWxzOyBpKyspIHsKKwkJY2hfc3RhcnQgPSByZXEtPmNoYW5u
ZWxzW3N0YXJ0X2lkeF07CisJCWNoX2N1ciA9IHJlcS0+Y2hhbm5lbHNbaV07CisJCVdBUk4oY2hf
Y3VyLT5iYW5kICE9IE5MODAyMTFfQkFORF8yR0haLCAiYmFuZCBub3Qgc3VwcG9ydGVkIik7CisJ
CWlmIChjaF9jdXItPm1heF9wb3dlciAhPSBjaF9zdGFydC0+bWF4X3Bvd2VyKQorCQkJYnJlYWs7
CisJCWlmICgoY2hfY3VyLT5mbGFncyBeIGNoX3N0YXJ0LT5mbGFncykgJiBJRUVFODAyMTFfQ0hB
Tl9OT19JUikKKwkJCWJyZWFrOworCX0KKwl3ZnhfdHhfbG9ja19mbHVzaCh3dmlmLT53ZGV2KTsK
Kwl3dmlmLT5zY2FuX2Fib3J0ID0gZmFsc2U7CisJcmVpbml0X2NvbXBsZXRpb24oJnd2aWYtPnNj
YW5fY29tcGxldGUpOworCXJldCA9IGhpZl9zY2FuKHd2aWYsIHJlcSwgc3RhcnRfaWR4LCBpIC0g
c3RhcnRfaWR4LCAmdGltZW91dCk7CisJaWYgKHJldCkgeworCQl3ZnhfdHhfdW5sb2NrKHd2aWYt
PndkZXYpOworCQlyZXR1cm4gLUVJTzsKKwl9CisJcmV0ID0gd2FpdF9mb3JfY29tcGxldGlvbl90
aW1lb3V0KCZ3dmlmLT5zY2FuX2NvbXBsZXRlLCB0aW1lb3V0KTsKKwlpZiAocmVxLT5jaGFubmVs
c1tzdGFydF9pZHhdLT5tYXhfcG93ZXIgIT0gd3ZpZi0+dmlmLT5ic3NfY29uZi50eHBvd2VyKQor
CQloaWZfc2V0X291dHB1dF9wb3dlcih3dmlmLCB3dmlmLT52aWYtPmJzc19jb25mLnR4cG93ZXIp
OworCXdmeF90eF91bmxvY2sod3ZpZi0+d2Rldik7CisJaWYgKCFyZXQpIHsKKwkJZGV2X25vdGlj
ZSh3dmlmLT53ZGV2LT5kZXYsICJzY2FuIHRpbWVvdXRcbiIpOworCQloaWZfc3RvcF9zY2FuKHd2
aWYpOworCQlyZXR1cm4gLUVUSU1FRE9VVDsKKwl9CisJaWYgKHd2aWYtPnNjYW5fYWJvcnQpIHsK
KwkJZGV2X25vdGljZSh3dmlmLT53ZGV2LT5kZXYsICJzY2FuIGFib3J0XG4iKTsKKwkJcmV0dXJu
IC1FQ09OTkFCT1JURUQ7CisJfQorCXJldHVybiBpIC0gc3RhcnRfaWR4OworfQorCisvKgorICog
SXQgaXMgbm90IHJlYWxseSBuZWNlc3NhcnkgdG8gcnVuIHNjYW4gcmVxdWVzdCBhc3luY2hyb25v
dXNseS4gSG93ZXZlciwKKyAqIHRoZXJlIGlzIGEgYnVnIGluICJpdyBzY2FuIiB3aGVuIGllZWU4
MDIxMV9zY2FuX2NvbXBsZXRlZCgpIGlzIGNhbGxlZCBiZWZvcmUKKyAqIHdmeF9od19zY2FuKCkg
cmV0dXJuCisgKi8KK3ZvaWQgd2Z4X2h3X3NjYW5fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndv
cmspCit7CisJc3RydWN0IHdmeF92aWYgKnd2aWYgPSBjb250YWluZXJfb2Yod29yaywgc3RydWN0
IHdmeF92aWYsIHNjYW5fd29yayk7CisJc3RydWN0IGllZWU4MDIxMV9zY2FuX3JlcXVlc3QgKmh3
X3JlcSA9IHd2aWYtPnNjYW5fcmVxOworCWludCBjaGFuX2N1ciwgcmV0OworCisJbXV0ZXhfbG9j
aygmd3ZpZi0+d2Rldi0+Y29uZl9tdXRleCk7CisJbXV0ZXhfbG9jaygmd3ZpZi0+c2Nhbl9sb2Nr
KTsKKwlpZiAod3ZpZi0+am9pbl9pbl9wcm9ncmVzcykgeworCQlkZXZfaW5mbyh3dmlmLT53ZGV2
LT5kZXYsICIlczogYWJvcnQgaW4tcHJvZ3Jlc3MgUkVRX0pPSU4iLAorCQkJIF9fZnVuY19fKTsK
KwkJd2Z4X3Jlc2V0KHd2aWYpOworCX0KKwl1cGRhdGVfcHJvYmVfdG1wbCh3dmlmLCAmaHdfcmVx
LT5yZXEpOworCWNoYW5fY3VyID0gMDsKKwlkbyB7CisJCXJldCA9IHNlbmRfc2Nhbl9yZXEod3Zp
ZiwgJmh3X3JlcS0+cmVxLCBjaGFuX2N1cik7CisJCWlmIChyZXQgPiAwKQorCQkJY2hhbl9jdXIg
Kz0gcmV0OworCX0gd2hpbGUgKHJldCA+IDAgJiYgY2hhbl9jdXIgPCBod19yZXEtPnJlcS5uX2No
YW5uZWxzKTsKKwltdXRleF91bmxvY2soJnd2aWYtPnNjYW5fbG9jayk7CisJbXV0ZXhfdW5sb2Nr
KCZ3dmlmLT53ZGV2LT5jb25mX211dGV4KTsKKwlfX2llZWU4MDIxMV9zY2FuX2NvbXBsZXRlZF9j
b21wYXQod3ZpZi0+d2Rldi0+aHcsIHJldCA8IDApOworfQorCitpbnQgd2Z4X2h3X3NjYW4oc3Ry
dWN0IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAyMTFfdmlmICp2aWYsCisJCXN0cnVj
dCBpZWVlODAyMTFfc2Nhbl9yZXF1ZXN0ICpod19yZXEpCit7CisJc3RydWN0IHdmeF92aWYgKnd2
aWYgPSAoc3RydWN0IHdmeF92aWYgKil2aWYtPmRydl9wcml2OworCisJV0FSTl9PTihod19yZXEt
PnJlcS5uX2NoYW5uZWxzID4gSElGX0FQSV9NQVhfTkJfQ0hBTk5FTFMpOworCXd2aWYtPnNjYW5f
cmVxID0gaHdfcmVxOworCXNjaGVkdWxlX3dvcmsoJnd2aWYtPnNjYW5fd29yayk7CisJcmV0dXJu
IDA7Cit9CisKK3ZvaWQgd2Z4X2NhbmNlbF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3
LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmKQoreworCXN0cnVjdCB3ZnhfdmlmICp3dmlmID0g
KHN0cnVjdCB3ZnhfdmlmICopdmlmLT5kcnZfcHJpdjsKKworCXd2aWYtPnNjYW5fYWJvcnQgPSB0
cnVlOworCWhpZl9zdG9wX3NjYW4od3ZpZik7Cit9CisKK3ZvaWQgd2Z4X3NjYW5fY29tcGxldGUo
c3RydWN0IHdmeF92aWYgKnd2aWYpCit7CisJY29tcGxldGUoJnd2aWYtPnNjYW5fY29tcGxldGUp
OworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9zY2FuLmgg
Yi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L3NjYW4uaApuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmM3NDk2YTc2NjQ3OAotLS0gL2Rldi9udWxsCisrKyBi
L2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93Zngvc2Nhbi5oCkBAIC0wLDAgKzEsMjIgQEAK
Ky8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KKy8qCisgKiBTY2Fu
IHJlbGF0ZWQgZnVuY3Rpb25zLgorICoKKyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDIwLCBTaWxp
Y29uIExhYm9yYXRvcmllcywgSW5jLgorICogQ29weXJpZ2h0IChjKSAyMDEwLCBTVC1Fcmljc3Nv
bgorICovCisjaWZuZGVmIFdGWF9TQ0FOX0gKKyNkZWZpbmUgV0ZYX1NDQU5fSAorCisjaW5jbHVk
ZSA8bmV0L21hYzgwMjExLmg+CisKK3N0cnVjdCB3ZnhfZGV2Oworc3RydWN0IHdmeF92aWY7CisK
K3ZvaWQgd2Z4X2h3X3NjYW5fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspOworaW50IHdm
eF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAq
dmlmLAorCQlzdHJ1Y3QgaWVlZTgwMjExX3NjYW5fcmVxdWVzdCAqcmVxKTsKK3ZvaWQgd2Z4X2Nh
bmNlbF9od19zY2FuKHN0cnVjdCBpZWVlODAyMTFfaHcgKmh3LCBzdHJ1Y3QgaWVlZTgwMjExX3Zp
ZiAqdmlmKTsKK3ZvaWQgd2Z4X3NjYW5fY29tcGxldGUoc3RydWN0IHdmeF92aWYgKnd2aWYpOwor
CisjZW5kaWYgLyogV0ZYX1NDQU5fSCAqLwotLSAKMi4yOC4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
