Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC3125FAAE
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 14:49:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CFBBB204CD;
	Mon,  7 Sep 2020 12:49:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5wpykvGXgHN; Mon,  7 Sep 2020 12:49:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8CDBA2049D;
	Mon,  7 Sep 2020 12:49:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DE761BF2C4
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 12:49:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8C91420487
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 12:49:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d5qeJ77RtjBF for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 12:49:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2084.outbound.protection.outlook.com [40.107.223.84])
 by silver.osuosl.org (Postfix) with ESMTPS id B89D6203E8
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 12:49:46 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fGMFvfzsqWMnisKY7hKQnwzHQgdgRR+chiwYmq9Ui7ho4561xNlrkmdMheaJHC9dRBwQUT1KiHGhkicL3SbyvYNFE0ej+5B6znFXJLVvKoAwDG/ouX5Qexq816vpttFQ6asLwUS7aRx0M6dXMBwrj6xbDiwylRPjF2lvxNd3Eb0v/MMGwlNCby3uYp/naRQcb2hhrlqevyeH/lA60U1exdEUJHS360lPKxArEnkX3gPerCnDe9E3VH0ImecVCc789L3YLLxGoPge6Fmp7nktmycerLesWx6NzH1LpSJ6aO3p2/FwZx+BRdNqQpZPRUqDiv65dveCx1UI5Uoc/sYZ1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKyeUrA8GZtNGT/z7Q/A3bkD35wlAPzbZtsXF5PzqGg=;
 b=SOXO2mCTTUrvEfCdY2O/LX4g3y15yDTc34SzCZ/sjuCmmNJSzZKUau6WHC76nLipFDPvlpHOyxBAxvO7lfXJCqRYmwhwgveO+qyXQO7BONJGRp0dGdMzZDmJ5nlGCoBSPR0xW3cPuAZAxZ5T+UEz3CRxOaKgFXJ39z32IGnu07iZdrPaLln+gkbQY7RLZFytLzP8MYKGuAEIRvMg2lwa9NUwVMFluLKVgArMRp7/oyH7aWB9GMGWVsRhTao5jq+5O+v3yivn9uVo1XMUQfVY6rszboTcdL6JjKShnwsixZNPAe8kxmxE4Wc2p8cZRVruQUgM0KgajoT/GffMnPhNmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zKyeUrA8GZtNGT/z7Q/A3bkD35wlAPzbZtsXF5PzqGg=;
 b=SmL3e+1wH5eeBAIlEiQHygyODlmn8kSzsuu/+ezvuaFQqkLdxoXybLg5vArITi2DK+iGHqMihpDENmcEqwS+eQjnx+pp5n7d7z14XiBi30xYXEwVXlpAQZQ5IIXH8ZbvPz0KwYwAr2LyqrOAoU9/IJDdEACistVNGLV2GOUF0rs=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2720.namprd11.prod.outlook.com (2603:10b6:805:56::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 10:16:16 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 10:16:16 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 19/31] staging: wfx: drop useless structs only used in
 hif_req_tx
Date: Mon,  7 Sep 2020 12:15:09 +0200
Message-Id: <20200907101521.66082-20-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
References: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:19::25) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (37.71.187.125) by
 PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:19::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 10:16:14 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3cf55b09-9efc-4988-75d2-08d853170df4
X-MS-TrafficTypeDiagnostic: SN6PR11MB2720:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2720312B2D100DE9AD77F49493280@SN6PR11MB2720.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RoSY1Y/jQpk9tRwKNLZQzv7PJT5GBKEPMdAgcKJUwWgfKcroiI/iRTOlKj5In5igitvQX5n/HI1l+UuJtLk+bWbOjQf/p9THzAXkDM2G8dHe5u0/qIe0j9PH82zdlDRZrqHxO2aBpNDuPqXKyiCifvh0ZgO8JpTTbKzw5kNWagS89McF30QxwOwlw159cConqlFr7BnLZITjLpX3/dQndiPDnu6aWrhhVOS5vXlHCVTBNilYQ2ET2wE6996CYHFII42cQniJUuIOpiiuBl3Z99308R8dYOxGVy3mc5rcvPAYrJDyR3XUNFIJnYcq9TYIlk2TkTYTpCHF89f07oWjhg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(39850400004)(136003)(346002)(396003)(66946007)(66556008)(66476007)(54906003)(26005)(186003)(16526019)(66574015)(83380400001)(107886003)(6486002)(8676002)(956004)(2616005)(2906002)(316002)(86362001)(8936002)(478600001)(4326008)(7696005)(36756003)(52116002)(6666004)(1076003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: idA5u1Ggr0NWEAh0E3W1j3n2qhh1MO1y3wkZa0l7cz0xf/rKZgd0MdauGubnEpNSeq/vDd+lk7lLcmHbJ8CplXqhRqeJprZOYNYJk+43iwsdfriI0mPDi2M0Km+/YaCulgqqcozxytL4eeC8b4UdyAF72+Kuhy6tjHBvQWgvnKc5AR47G6247YQ90x4p/JIJm8KOdqk1GDSw6WyJ6bzO5b/GJIuZOQI284Rd5ustiWYItRbW3MmO3JOpPZGeI5qTEfrACrC18lmYvnd9daqrBRmvkbxcefl5jJSeCxZf8I2wk1KvWBB9d/zfRotLdyZn3egYN8GsZ9c+ex8B9OKy75ZTis0E0k0dCfTPHfC5t91Tieq4pavcAme5VG6bLDfSk7OT4xF+EdmIJERHHeeokLTWrmJZGpB0De9lscAOt41z3E7x7xXSprfzDSe6JRungviRFHNhf2xE30lY0bBNVnokz99Y5EjBme0WOtvLCUPnGa1i9gJTd/KExNA71ZD89Hx5uvyOKTfaq1VerIoPoubnvVE1o+8ZZqalsJ6QlHOJ3+cr2OuuClZfG88fhZilH8Gt0E5BonThiwMe3Pd4cFW6yVk4Kqemh85pO6GsHf7PiPLVWDQS9+j25uLy70ESWecl/Vbd1/pwtqgLI9fLbg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf55b09-9efc-4988-75d2-08d853170df4
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 10:16:15.8042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RW69Rntvnv3HrOxOwvWy+1zUM2aGVYhRkCte7j+UHb/Sveij1gFZDGRSqSS1tdkBOIr/xTJzUQTEb57rlQDkjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2720
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
IHN0cnVjdHMgaGlmX3F1ZXVlLCBoaWZfZGF0YV9mbGFncywgaGlmX3R4X2ZsYWdzIGFuZApoaWZf
aHRfdHhfcGFyYW1ldGVycyBoYXZlIG5vIHJlYWwgcmVhc29ucyB0byBleGlzdC4gRHJvcCB0aGVt
IGFuZApzaW1wbGlmeSBhY2Nlc3MgdG8gZmllbGRzIG9mIHN0cnVjdCBoaWZfcmVxX3R4LgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jICAgICB8IDM5ICsrKysrKysrKyst
LS0tLS0tLS0tLS0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oIHwgNDkgKysr
KysrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAzMCBpbnNlcnRp
b25zKCspLCA1OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2RhdGFfdHguYyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCmluZGV4IDFmMjE1OGQ2
ZWFhOS4uZTJmYjc3MGU5OGZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFf
dHguYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYwpAQCAtMzAwLDIzICszMDAs
MTQgQEAgc3RhdGljIHU4IHdmeF90eF9nZXRfcmF0ZV9pZChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwK
IAlyZXR1cm4gcmF0ZV9pZDsKIH0KIAotc3RhdGljIHN0cnVjdCBoaWZfaHRfdHhfcGFyYW1ldGVy
cyB3ZnhfdHhfZ2V0X3R4X3Bhcm1zKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LAotCQkJCQkJICAgICAg
IHN0cnVjdCBpZWVlODAyMTFfdHhfaW5mbyAqdHhfaW5mbykKK3N0YXRpYyBpbnQgd2Z4X3R4X2dl
dF9mcmFtZV9mb3JtYXQoc3RydWN0IGllZWU4MDIxMV90eF9pbmZvICp0eF9pbmZvKQogewotCXN0
cnVjdCBpZWVlODAyMTFfdHhfcmF0ZSAqcmF0ZSA9ICZ0eF9pbmZvLT5kcml2ZXJfcmF0ZXNbMF07
Ci0Jc3RydWN0IGhpZl9odF90eF9wYXJhbWV0ZXJzIHJldCA9IHsgfTsKLQotCWlmICghKHJhdGUt
PmZsYWdzICYgSUVFRTgwMjExX1RYX1JDX01DUykpCi0JCXJldC5mcmFtZV9mb3JtYXQgPSBISUZf
RlJBTUVfRk9STUFUX05PTl9IVDsKLQllbHNlIGlmICghKHJhdGUtPmZsYWdzICYgSUVFRTgwMjEx
X1RYX1JDX0dSRUVOX0ZJRUxEKSkKLQkJcmV0LmZyYW1lX2Zvcm1hdCA9IEhJRl9GUkFNRV9GT1JN
QVRfTUlYRURfRk9STUFUX0hUOworCWlmICghKHR4X2luZm8tPmRyaXZlcl9yYXRlc1swXS5mbGFn
cyAmIElFRUU4MDIxMV9UWF9SQ19NQ1MpKQorCQlyZXR1cm4gSElGX0ZSQU1FX0ZPUk1BVF9OT05f
SFQ7CisJZWxzZSBpZiAoISh0eF9pbmZvLT5kcml2ZXJfcmF0ZXNbMF0uZmxhZ3MgJiBJRUVFODAy
MTFfVFhfUkNfR1JFRU5fRklFTEQpKQorCQlyZXR1cm4gSElGX0ZSQU1FX0ZPUk1BVF9NSVhFRF9G
T1JNQVRfSFQ7CiAJZWxzZQotCQlyZXQuZnJhbWVfZm9ybWF0ID0gSElGX0ZSQU1FX0ZPUk1BVF9H
Rl9IVF8xMU47Ci0JaWYgKHJhdGUtPmZsYWdzICYgSUVFRTgwMjExX1RYX1JDX1NIT1JUX0dJKQot
CQlyZXQuc2hvcnRfZ2kgPSAxOwotCWlmICh0eF9pbmZvLT5mbGFncyAmIElFRUU4MDIxMV9UWF9D
VExfU1RCQykKLQkJcmV0LnN0YmMgPSAwOyAvLyBGSVhNRTogTm90IHlldCBzdXBwb3J0ZWQgYnkg
ZmlybXdhcmU/Ci0JcmV0dXJuIHJldDsKKwkJcmV0dXJuIEhJRl9GUkFNRV9GT1JNQVRfR0ZfSFRf
MTFOOwogfQogCiBzdGF0aWMgaW50IHdmeF90eF9nZXRfaWN2X2xlbihzdHJ1Y3QgaWVlZTgwMjEx
X2tleV9jb25mICpod19rZXkpCkBAIC0zNzcsMTQgKzM2OCwxNiBAQCBzdGF0aWMgaW50IHdmeF90
eF9pbm5lcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IGllZWU4MDIxMV9zdGEgKnN0YSwK
IAlyZXEtPnBhY2tldF9pZCB8PSBJRUVFODAyMTFfU0VRX1RPX1NOKGxlMTZfdG9fY3B1KGhkci0+
c2VxX2N0cmwpKSA8PCAxNjsKIAlyZXEtPnBhY2tldF9pZCB8PSBxdWV1ZV9pZCA8PCAyODsKIAot
CXJlcS0+ZGF0YV9mbGFncy5mY19vZmZzZXQgPSBvZmZzZXQ7CisJcmVxLT5mY19vZmZzZXQgPSBv
ZmZzZXQ7CiAJaWYgKHR4X2luZm8tPmZsYWdzICYgSUVFRTgwMjExX1RYX0NUTF9TRU5EX0FGVEVS
X0RUSU0pCi0JCXJlcS0+ZGF0YV9mbGFncy5hZnRlcl9kdGltID0gMTsKLQlyZXEtPnF1ZXVlX2lk
LnBlZXJfc3RhX2lkID0gd2Z4X3R4X2dldF9saW5rX2lkKHd2aWYsIHN0YSwgaGRyKTsKKwkJcmVx
LT5hZnRlcl9kdGltID0gMTsKKwlyZXEtPnBlZXJfc3RhX2lkID0gd2Z4X3R4X2dldF9saW5rX2lk
KHd2aWYsIHN0YSwgaGRyKTsKIAkvLyBRdWV1ZSBpbmRleCBhcmUgaW52ZXJ0ZWQgYmV0d2VlbiBm
aXJtd2FyZSBhbmQgTGludXgKLQlyZXEtPnF1ZXVlX2lkLnF1ZXVlX2lkID0gMyAtIHF1ZXVlX2lk
OwotCXJlcS0+aHRfdHhfcGFyYW1ldGVycyA9IHdmeF90eF9nZXRfdHhfcGFybXMod3ZpZi0+d2Rl
diwgdHhfaW5mbyk7Ci0JcmVxLT50eF9mbGFncy5yZXRyeV9wb2xpY3lfaW5kZXggPSB3ZnhfdHhf
Z2V0X3JhdGVfaWQod3ZpZiwgdHhfaW5mbyk7CisJcmVxLT5xdWV1ZV9pZCA9IDMgLSBxdWV1ZV9p
ZDsKKwlyZXEtPnJldHJ5X3BvbGljeV9pbmRleCA9IHdmeF90eF9nZXRfcmF0ZV9pZCh3dmlmLCB0
eF9pbmZvKTsKKwlyZXEtPmZyYW1lX2Zvcm1hdCA9IHdmeF90eF9nZXRfZnJhbWVfZm9ybWF0KHR4
X2luZm8pOworCWlmICh0eF9pbmZvLT5kcml2ZXJfcmF0ZXNbMF0uZmxhZ3MgJiBJRUVFODAyMTFf
VFhfUkNfU0hPUlRfR0kpCisJCXJlcS0+c2hvcnRfZ2kgPSAxOwogCiAJLy8gQXV4aWxpYXJ5IG9w
ZXJhdGlvbnMKIAl3ZnhfdHhfcXVldWVzX3B1dCh3dmlmLCBza2IpOwpAQCAtNDM2LDEwICs0Mjks
MTAgQEAgc3RhdGljIHZvaWQgd2Z4X3NrYl9kdG9yKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1
Y3Qgc2tfYnVmZiAqc2tiKQogCXN0cnVjdCBoaWZfcmVxX3R4ICpyZXEgPSAoc3RydWN0IGhpZl9y
ZXFfdHggKiloaWYtPmJvZHk7CiAJdW5zaWduZWQgaW50IG9mZnNldCA9IHNpemVvZihzdHJ1Y3Qg
aGlmX21zZykgKwogCQkJICAgICAgc2l6ZW9mKHN0cnVjdCBoaWZfcmVxX3R4KSArCi0JCQkgICAg
ICByZXEtPmRhdGFfZmxhZ3MuZmNfb2Zmc2V0OworCQkJICAgICAgcmVxLT5mY19vZmZzZXQ7CiAK
IAlXQVJOX09OKCF3dmlmKTsKLQl3ZnhfdHhfcG9saWN5X3B1dCh3dmlmLCByZXEtPnR4X2ZsYWdz
LnJldHJ5X3BvbGljeV9pbmRleCk7CisJd2Z4X3R4X3BvbGljeV9wdXQod3ZpZiwgcmVxLT5yZXRy
eV9wb2xpY3lfaW5kZXgpOwogCXNrYl9wdWxsKHNrYiwgb2Zmc2V0KTsKIAlpZWVlODAyMTFfdHhf
c3RhdHVzX2lycXNhZmUod3ZpZi0+d2Rldi0+aHcsIHNrYik7CiB9CmRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfY21kLmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9h
cGlfY21kLmgKaW5kZXggYjg2ZWMzOWYyNjE1Li5kNWVmMTExOGI4N2MgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9jbWQuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2hpZl9hcGlfY21kLmgKQEAgLTE5MSw1MyArMTkxLDMyIEBAIGVudW0gaGlmX2ZyYW1lX2Zvcm1h
dCB7CiAJSElGX0ZSQU1FX0ZPUk1BVF9HRl9IVF8xMU4gICAgICAgICAgICAgICAgID0gMHgyCiB9
OwogCi1lbnVtIGhpZl9zdGJjIHsKLQlISUZfU1RCQ19OT1RfQUxMT1dFRCAgICAgICAgICAgICAg
ICAgICAgICAgPSAweDAsCi0JSElGX1NUQkNfQUxMT1dFRCAgICAgICAgICAgICAgICAgICAgICAg
ICAgID0gMHgxCi19OwotCi1zdHJ1Y3QgaGlmX3F1ZXVlIHsKK3N0cnVjdCBoaWZfcmVxX3R4IHsK
KwkvLyBwYWNrZXRfaWQgaXMgbm90IGludGVycHJldGVkIGJ5IHRoZSBkZXZpY2UsIHNvIGl0IGlz
IG5vdCBuZWNlc3NhcnkgdG8KKwkvLyBkZWNsYXJlIGl0IGxpdHRsZSBlbmRpYW4KKwl1MzIgICAg
cGFja2V0X2lkOworCXU4ICAgICBtYXhfdHhfcmF0ZTsKIAl1OCAgICAgcXVldWVfaWQ6MjsKIAl1
OCAgICAgcGVlcl9zdGFfaWQ6NDsKLQl1OCAgICAgcmVzZXJ2ZWQ6MjsKLX0gX19wYWNrZWQ7Ci0K
LXN0cnVjdCBoaWZfZGF0YV9mbGFncyB7CisJdTggICAgIHJlc2VydmVkMToyOwogCXU4ICAgICBt
b3JlOjE7CiAJdTggICAgIGZjX29mZnNldDozOwogCXU4ICAgICBhZnRlcl9kdGltOjE7Ci0JdTgg
ICAgIHJlc2VydmVkOjM7Ci19IF9fcGFja2VkOwotCi1zdHJ1Y3QgaGlmX3R4X2ZsYWdzIHsKKwl1
OCAgICAgcmVzZXJ2ZWQyOjM7CiAJdTggICAgIHN0YXJ0X2V4cDoxOwotCXU4ICAgICByZXNlcnZl
ZDozOworCXU4ICAgICByZXNlcnZlZDM6MzsKIAl1OCAgICAgcmV0cnlfcG9saWN5X2luZGV4OjQ7
Ci19IF9fcGFja2VkOwotCi1zdHJ1Y3QgaGlmX2h0X3R4X3BhcmFtZXRlcnMgeworCV9fbGUzMiBy
ZXNlcnZlZDQ7CisJX19sZTMyIGV4cGlyZV90aW1lOwogCXU4ICAgICBmcmFtZV9mb3JtYXQ6NDsK
IAl1OCAgICAgZmVjX2NvZGluZzoxOwogCXU4ICAgICBzaG9ydF9naToxOwotCXU4ICAgICByZXNl
cnZlZDE6MTsKKwl1OCAgICAgcmVzZXJ2ZWQ1OjE7CiAJdTggICAgIHN0YmM6MTsKLQl1OCAgICAg
cmVzZXJ2ZWQyOworCXU4ICAgICByZXNlcnZlZDY7CiAJdTggICAgIGFnZ3JlZ2F0aW9uOjE7Ci0J
dTggICAgIHJlc2VydmVkMzo3OwotCXU4ICAgICByZXNlcnZlZDQ7Ci19IF9fcGFja2VkOwotCi1z
dHJ1Y3QgaGlmX3JlcV90eCB7Ci0JLy8gcGFja2V0X2lkIGlzIG5vdCBpbnRlcnByZXRlZCBieSB0
aGUgZGV2aWNlLCBzbyBpdCBpcyBub3QgbmVjZXNzYXJ5IHRvCi0JLy8gZGVjbGFyZSBpdCBsaXR0
bGUgZW5kaWFuCi0JdTMyICAgIHBhY2tldF9pZDsKLQl1OCAgICAgbWF4X3R4X3JhdGU7Ci0Jc3Ry
dWN0IGhpZl9xdWV1ZSBxdWV1ZV9pZDsKLQlzdHJ1Y3QgaGlmX2RhdGFfZmxhZ3MgZGF0YV9mbGFn
czsKLQlzdHJ1Y3QgaGlmX3R4X2ZsYWdzIHR4X2ZsYWdzOwotCV9fbGUzMiByZXNlcnZlZDsKLQlf
X2xlMzIgZXhwaXJlX3RpbWU7Ci0Jc3RydWN0IGhpZl9odF90eF9wYXJhbWV0ZXJzIGh0X3R4X3Bh
cmFtZXRlcnM7CisJdTggICAgIHJlc2VydmVkNzo3OworCXU4ICAgICByZXNlcnZlZDg7CiAJdTgg
ICAgIGZyYW1lW107CiB9IF9fcGFja2VkOwogCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBs
aW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
