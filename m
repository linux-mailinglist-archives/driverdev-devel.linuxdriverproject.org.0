Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7909419AA06
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Apr 2020 13:05:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AB27881BF;
	Wed,  1 Apr 2020 11:05:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 23Lq2iMlSMxX; Wed,  1 Apr 2020 11:05:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B0B88818F;
	Wed,  1 Apr 2020 11:05:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F9D61BF484
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 11:05:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9740887389
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 11:05:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gtg3oiUl_R1P for <devel@linuxdriverproject.org>;
 Wed,  1 Apr 2020 11:05:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2046.outbound.protection.outlook.com [40.107.92.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0D0ED8737F
 for <devel@driverdev.osuosl.org>; Wed,  1 Apr 2020 11:05:00 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JxfSdp57Nq9P/jYpqx9XaKnWBVffmbQkY7aRCRV+5k4TIJ1izReozZ93PEtWY4+x7oN5xCzTw8kMmG20bdBY/1OoxLzu1ldlfHFOnff4SeTYMcuXwDb5a00PfHXhiZrZ48RIEG5XjoGLvUe6pdxqn2zdhFKSxqwHBa75kFQgfOps6ukh6DJ1UaQItyxvaUwtVmwPHtAw/68yVXKWIsiByordJymrJd7mSyl6qKWAvyM5G+nHztR3apDdKDUWXgL8E0QI5Gn/LukQsv9I2gveR18TtKdNpA87xcfF8XBKuyf4rJ2z2BN8QaN5znAW3x7+vXMCb6ur6iv18yBcMMVJaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GuQDNbxb4F3YogEifT9Q+oCjESVIo3OH/9JiW5IStck=;
 b=NeGo4z0d0c/rsyMjnNWVNSdmqj/gE4B6Gk9TajDPSbEG1QPbE5frQ/W1TB3Rsd0j7oJHz6IeBMspSOHvy3h2lGRWH+G4Ly+s59y9od4SKp37mmjx77SCnvYgpqL5IqgS0AmB3ucSHJSAsmITUJUd+eiyabbggKCBvBbzqwcQpZyF7WqCbzvVq5hBolCV1AnL6aRsf0uxsAK+RwZppZqVa1h7h9Z8bufwbtXqdO8XOEQz2Mso5cCzIgLMBgBQtMjqXs+QGr0slTZWpxxIDq8crnrhUzJG6wWSKaypgLIhZmlb2o7IcPT6C9f35xM+fSH+jNsWwvyC01Hqu4mjGrRKow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GuQDNbxb4F3YogEifT9Q+oCjESVIo3OH/9JiW5IStck=;
 b=kUGyQSZj6XrveZvStbiTZeiKsrQ3zRDz2HJlZFHBWdmgMWW+CeLnsZCuzrwDzlTAVV9dXQIUTdf1PpXw6e7tU9XP6XSkBh1/eflQDxFkC8nDVluNWklV+t+oTZVKvNn5kUyGWiXklsF9hxHCdqoPPoEOJmL6qbLiOyxfXJKnJ7I=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4285.namprd11.prod.outlook.com (2603:10b6:208:191::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Wed, 1 Apr
 2020 11:04:58 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 11:04:58 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 19/32] staging: wfx: rename wfx_tx_get_raw_link_id()
Date: Wed,  1 Apr 2020 13:03:52 +0200
Message-Id: <20200401110405.80282-20-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401110405.80282-1-Jerome.Pouiller@silabs.com>
References: <20200401110405.80282-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN4PR0501CA0156.namprd05.prod.outlook.com
 (2603:10b6:803:2c::34) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:1265:30ff:fefd:6e7f) by
 SN4PR0501CA0156.namprd05.prod.outlook.com (2603:10b6:803:2c::34) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.9 via Frontend
 Transport; Wed, 1 Apr 2020 11:04:56 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fefd:6e7f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 82a0ee3a-1600-4cf3-1d93-08d7d62c8466
X-MS-TrafficTypeDiagnostic: MN2PR11MB4285:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR11MB42850DF3DC5A582B095FF1EA93C90@MN2PR11MB4285.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1417;
X-Forefront-PRVS: 03607C04F0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4063.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(366004)(346002)(376002)(39850400004)(396003)(7696005)(8676002)(1076003)(16526019)(186003)(6666004)(5660300002)(86362001)(4326008)(52116002)(478600001)(66946007)(66476007)(54906003)(36756003)(8936002)(316002)(81156014)(6486002)(2906002)(66556008)(107886003)(81166006)(2616005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q9zUhpqgxqqv8ZjaFNhaYMXt7WrZ4GuYgSVd4M0wAL1wqvyGv93PT0loDcZn7P9WCdv+QamHuHaI68x+apVucqYj5j5oV14pJCcEpXncPFwHJ3Bh6bb+6y/d5Zbb0n0eIgutooJtEnTfOGVcmeSoNlMagkcjrpeq/LGep0/ZguaueX2diNIontXTw4xkRlHbBwQSMHo7jSgSFcV2HSYUCBhgharNJYWuMtUpa2TLBK5lW17GF+WLOdemhS5j+ibEfLMcmBXtyHlkNyGzEecVOUAO29CTg1cSQFpJUQXzEol3w/sFlcEVmbw+sge55v1RQ/n2IWtzS3h2bUS96RWROIb0DgQcE4pLmm1k2Ku0QcMapraywjcXnW9Yd4KXo2Jt9RKzn4w2+E/Pb68GtorTnJt2EMBVfVVpjZ+kxzaz4lUdlDMw46yoTKDaFyMPDVtT
X-MS-Exchange-AntiSpam-MessageData: Pvz7a6q0XqtwnaQ5tjvPVXv7TK3DEAMy57hvDsaNvQfrmyHLEJtYTUdwEvOzU03VfJLQv1hUO7eRhawpyy9STf7dAY6uUQ7dif7aFRnxStKmz7VMxMeGNJgQGPgzq3jO2ZhhwRmvhD1d1rwJLGYO37mRdCzaV/LOTrpEPVVwrfz2HZB7cC/G7uGwaXYbDRDFCUmgWYSXyWgSxa5tIVWSXA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82a0ee3a-1600-4cf3-1d93-08d7d62c8466
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2020 11:04:58.6613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TWKqyKnNVh8EygrHsI4t0lsmLbND3oBWnRJgPcENrSIwJ1mtWYujRSa5x2+0ElDfbXcTPYnW84Rt2yHJtSAUag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4285
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2lu
Y2UgY29uY2VwdCBvZiAicmF3X2xpbmtfaWQiIGRvZXMgbm90IGV4aXN0IGFueW1vcmUsIHJlbmFt
ZQp3ZnhfdHhfZ2V0X3Jhd19saW5rX2lkKCkgaW4gd2Z4X3R4X2dldF9saW5rX2lkKCkuCgpTaWdu
ZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+
Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgfCA3ICsrKy0tLS0KIDEgZmlsZSBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHgu
YwppbmRleCA1N2FmYWJjMTAyYTcuLjI1MzNkNGY1M2Y4MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9z
dGFnaW5nL3dmeC9kYXRhX3R4LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMK
QEAgLTI4Nyw5ICsyODcsOCBAQCBzdGF0aWMgdm9pZCB3ZnhfdHhfbWFuYWdlX3BtKHN0cnVjdCB3
ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVlZTgwMjExX2hkciAqaGRyLAogCX0KIH0KIAotc3RhdGlj
IHU4IHdmeF90eF9nZXRfcmF3X2xpbmtfaWQoc3RydWN0IHdmeF92aWYgKnd2aWYsCi0JCQkJIHN0
cnVjdCBpZWVlODAyMTFfc3RhICpzdGEsCi0JCQkJIHN0cnVjdCBpZWVlODAyMTFfaGRyICpoZHIp
CitzdGF0aWMgdTggd2Z4X3R4X2dldF9saW5rX2lkKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1
Y3QgaWVlZTgwMjExX3N0YSAqc3RhLAorCQkJICAgICBzdHJ1Y3QgaWVlZTgwMjExX2hkciAqaGRy
KQogewogCXN0cnVjdCB3Znhfc3RhX3ByaXYgKnN0YV9wcml2ID0KIAkJc3RhID8gKHN0cnVjdCB3
Znhfc3RhX3ByaXYgKikmc3RhLT5kcnZfcHJpdiA6IE5VTEw7CkBAIC00NTQsNyArNDUzLDcgQEAg
c3RhdGljIGludCB3ZnhfdHhfaW5uZXIoc3RydWN0IHdmeF92aWYgKnd2aWYsIHN0cnVjdCBpZWVl
ODAyMTFfc3RhICpzdGEsCiAJcmVxLT5kYXRhX2ZsYWdzLmZjX29mZnNldCA9IG9mZnNldDsKIAlp
ZiAodHhfaW5mby0+ZmxhZ3MgJiBJRUVFODAyMTFfVFhfQ1RMX1NFTkRfQUZURVJfRFRJTSkKIAkJ
cmVxLT5kYXRhX2ZsYWdzLmFmdGVyX2R0aW0gPSAxOwotCXJlcS0+cXVldWVfaWQucGVlcl9zdGFf
aWQgPSB3ZnhfdHhfZ2V0X3Jhd19saW5rX2lkKHd2aWYsIHN0YSwgaGRyKTsKKwlyZXEtPnF1ZXVl
X2lkLnBlZXJfc3RhX2lkID0gd2Z4X3R4X2dldF9saW5rX2lkKHd2aWYsIHN0YSwgaGRyKTsKIAkv
LyBRdWV1ZSBpbmRleCBhcmUgaW52ZXJ0ZWQgYmV0d2VlbiBmaXJtd2FyZSBhbmQgTGludXgKIAly
ZXEtPnF1ZXVlX2lkLnF1ZXVlX2lkID0gMyAtIHF1ZXVlX2lkOwogCXJlcS0+aHRfdHhfcGFyYW1l
dGVycyA9IHdmeF90eF9nZXRfdHhfcGFybXMod3ZpZi0+d2RldiwgdHhfaW5mbyk7Ci0tIAoyLjI1
LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
