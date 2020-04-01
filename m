Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 315C719AAE0
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Apr 2020 13:36:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id F411F87E4D;
	Wed,  1 Apr 2020 11:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7fTqAvXwBqGS; Wed,  1 Apr 2020 11:36:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 68A0187D80;
	Wed,  1 Apr 2020 11:36:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29F671BF484
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 11:36:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1AB3585B7C
 for <devel@linuxdriverproject.org>; Wed,  1 Apr 2020 11:36:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LO6NMExDU7UB for <devel@linuxdriverproject.org>;
 Wed,  1 Apr 2020 11:36:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2059.outbound.protection.outlook.com [40.107.237.59])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7C84E85B73
 for <devel@driverdev.osuosl.org>; Wed,  1 Apr 2020 11:36:53 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EVNBIsIgCpFXJvz39yXlQFDEOwgCdWYMUYaEPzP2He08nig8W5cqN3Tfmhdz/GgrPTTwB8Pv/RiDnfqgHjNgXf+FdfRBcpv3N2hQYJJQq/nSJ+4v/0T5MsV5/LL+zz+9YCgrsKonCEgRuatcpOIxgAqP075AGJBkuAcBJoFmbOjkxTwRi5/ZlTS0wJEvrRF+rmIzk2mYEZ+ZskA9MpAbkBK0Ie8/IOKvBT0z+hRhagwamWXBciOEF58ijKmsMuufW/lxb63bDtP9qVjgw7Qa+pzevIxOieyoniH5rwZxrUo1gXU5r7cTN/mgX18mMOptmq4o5nIo+ljleJfWMUuX0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XKWHCiXwAVePoLiZHsmPvjQy5vpTGJ11DHBgMJItd0c=;
 b=XzjLdNefl9o5Y+ZaINRsMd9gEe1JszsuyY5KED7uKkQzMdhNRBAcNR9eKVl4A1ZOKhoTHZK3XcuCdpBDLWyd/LbZ03yMNSbBpuYJWj1e+SNX/n3cBCbS506Vh4Sajo16IhA+hhU6MqtlU7IfiP+5FZOAPBn15FF4AQCDOToQYQ1D6k+oyQgqdJSDHP0XIqpXKX/GaNwYJvvDQal3Sp/we20hNvD7LdvnldDgYRp9Qoac80OuWPUPhUHeFmy5bpW5NBHA5YoovQHaANnAtKrNQ8C0O5BZItYlTFPpzf05VyYg6G+SEQQ6i6PwN4WiGcH9duuNDBFgEPL1PAvRtVYC/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XKWHCiXwAVePoLiZHsmPvjQy5vpTGJ11DHBgMJItd0c=;
 b=Qk9w0KfNZV78dgOt9ib6x085BGggFk8FnE/maihvhhxAcLE8Q2WdinY0H/5WXmcCJo1d6BJg0JJf+CxhMKt9MHAq0uGIyiFBfwkMhWZA8JSJCskAhTfEgI/W+ZO/SJPoHB25EZlvaNokL3jpE5dY4SyP93arI6zXSXX5p43UvJ0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4285.namprd11.prod.outlook.com (2603:10b6:208:191::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Wed, 1 Apr
 2020 11:04:22 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::ade4:5702:1c8b:a2b3%7]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 11:04:22 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 01/32] staging: wfx: add sanity checks to hif_join()
Date: Wed,  1 Apr 2020 13:03:34 +0200
Message-Id: <20200401110405.80282-2-Jerome.Pouiller@silabs.com>
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
 Transport; Wed, 1 Apr 2020 11:04:20 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fefd:6e7f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 667618a1-ec55-4c5e-2991-08d7d62c6e98
X-MS-TrafficTypeDiagnostic: MN2PR11MB4285:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR11MB4285C831CA2408C3EB177BDD93C90@MN2PR11MB4285.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:419;
X-Forefront-PRVS: 03607C04F0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4063.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(366004)(346002)(376002)(39850400004)(396003)(7696005)(8676002)(1076003)(16526019)(186003)(6666004)(5660300002)(86362001)(4326008)(4744005)(52116002)(478600001)(66946007)(66476007)(54906003)(36756003)(8936002)(316002)(81156014)(6486002)(2906002)(66556008)(107886003)(81166006)(2616005);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /wMH3dPz/F6D+1K5xR75GLLj2MI/qljaPv7Dy5aTzBmNYvZKKh6aPM11C+OFwi6WDtrCJVEK5Hu+mzaZ3iXx7HUCWu6lYptTiSiEoKt2OOq436BtVhk3mfK54feMWc5xEsj6HXqC8462oX8dxEGqmfOY1Oig4WUrpICHQ+3mT/eATvufGdnG8zl/6X6sA5Dvm/5uktNIYnI5csnYEjCxxBN0LVp6IsEJO6NHZQRKaXKPVF+ueisEwhhf8fqYGMBZ2Y3a293AUGoFCpmP0ofRLGoHPG6LOqLVs/92ZaCHNXE9E7m0qR5TDeifa6QQPzY65zGPYkwaGbJUFefb+mWlWh+jeTcuiR7mR1xMNSSn0x1+55aw4L3gIo5yXgLlY4LTcWcK2XG0hbVaMxR+ftLwdhltYWpq4fsC6abSuCg0j1bEuz0JRvOOas9kk8uNzq3H
X-MS-Exchange-AntiSpam-MessageData: vi4fU7z6gvScGST45SvgmnP4uZdVW/CEBptYDPo64VZLRhDw6cu/iYyqCB+LbeTTshzOx8qBEYB26sbLWIRCvA5y6NZY3aiyXpHfhLnu8N6xOdKwv1KSVJGM9BN5ve5kzcGra15N/D4pofrbxzo58Hz4whgvdoBdzxacr/3Gg7Cucw34D4NGmIdOR585+jWL9Dj618zaoReBQ/7rew8rzw==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 667618a1-ec55-4c5e-2991-08d7d62c6e98
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2020 11:04:22.1333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KHekGTLPM8El+ZNhoSiVTDx9fNKWqgJDxcrrwqJGXm69s+e3xO2BAMWPgpJTKvRhg7/16IMYuPwHJSTZ0jUF4g==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQWRk
IGEgZmV3IGNoZWNrIG9uIHN0YXJ0IG9mIGhpZl9qb2luKCkuCgpTaWduZWQtb2ZmLWJ5OiBKw6ly
w7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9z
dGFnaW5nL3dmeC9oaWZfdHguYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9oaWZfdHguYwppbmRleCA3N2JjYTQzYWNhNDIuLjQ0NTkwNjAzNWU5ZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguYworKysgYi9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2hpZl90eC5jCkBAIC0yOTcsNiArMjk3LDggQEAgaW50IGhpZl9qb2luKHN0cnVjdCB3
ZnhfdmlmICp3dmlmLCBjb25zdCBzdHJ1Y3QgaWVlZTgwMjExX2Jzc19jb25mICpjb25mLAogCXN0
cnVjdCBoaWZfcmVxX2pvaW4gKmJvZHkgPSB3ZnhfYWxsb2NfaGlmKHNpemVvZigqYm9keSksICZo
aWYpOwogCiAJV0FSTl9PTighY29uZi0+YmFzaWNfcmF0ZXMpOworCVdBUk5fT04oc2l6ZW9mKGJv
ZHktPnNzaWQpIDwgc3NpZGxlbik7CisJV0FSTighY29uZi0+aWJzc19qb2luZWQgJiYgIXNzaWRs
ZW4sICJqb2luaW5nIGFuIHVua25vd24gQlNTIik7CiAJYm9keS0+aW5mcmFzdHJ1Y3R1cmVfYnNz
X21vZGUgPSAhY29uZi0+aWJzc19qb2luZWQ7CiAJYm9keS0+c2hvcnRfcHJlYW1ibGUgPSBjb25m
LT51c2Vfc2hvcnRfcHJlYW1ibGU7CiAJaWYgKGNoYW5uZWwgJiYgY2hhbm5lbC0+ZmxhZ3MgJiBJ
RUVFODAyMTFfQ0hBTl9OT19JUikKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
