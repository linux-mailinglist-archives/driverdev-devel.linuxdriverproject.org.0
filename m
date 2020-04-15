Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 471C41AAD0A
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 18:12:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D700787A11;
	Wed, 15 Apr 2020 16:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yaqXp0TMfWa3; Wed, 15 Apr 2020 16:12:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 596A487934;
	Wed, 15 Apr 2020 16:12:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5D39B1BF326
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5625385809
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YE+F1FlilzGV for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 16:12:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2062.outbound.protection.outlook.com [40.107.220.62])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F3746856B8
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 16:12:30 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JD2e5sQ6FZHVCwIMlv9V7X2CjTTpGbUQTDzAHJn+0NJ+mgwwBxzUQtQFU1Yj2BsvDtIQKfiQ2QQ7kiBNZ6yjjzFkZn32BMeZxjEJ3E/0DupTuKRYYfjmd4dBNmVlOfuYWcoy7sDlCxa0sukVw/nK+Xrq86T1n6fMU6PpFX/c4IPXBI+pwt8vla8E+mi/A5v7UBXm1ah7cG/TYqKAf6lIMkMGdVlG2dgan4vpKlXyUqlJHccnfx6tmONEZ1oDjdLgiUNFGXuoKZ1TiYTEAu/0W7ZxZGqH899b1LK3diINNhGnhSx9/IM9G2dgVeWnw7xrOwGmhu3neSVynqa1OxO86A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E6OX1W7onu9BwtX+0JhnJiNxhM6fJv+4nlkSvTirURM=;
 b=FWAcTugUrYNhPiVXEwlAOrjxyPHPiw0zmVQxGvUKbXre9AcOYaZB/yUETB7XqlxYq/GWoSet1afIvdUk5jcrgIQfpS4V9/CcObAB/0ehbo+NU9PCi/hDrG9FdPunxl9S57acBMKotkAe0bYwWb7Yzmbf1wCs2C7IzKEYqmtLNEcIn38qLrCzUf6Qxz1mLwQwsSTyuULltcxEJrMbwLz2GHV3MDYDwOm4rwVb3GEeVQYG+BC3/7n0v8HT3fduxFigzHhUUaKemNGwgR4Eg3quX0U2N4YwMakpnyDAoX4v13zsUNja04JqQUut22nDZFVtv32Pml9A7XVVsjMqNN1ruA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E6OX1W7onu9BwtX+0JhnJiNxhM6fJv+4nlkSvTirURM=;
 b=HtL7udRELjlxcqDbahkSTJwMi2StRzrdEyRPBki7GcbwB2y9ey5Q8BeEcuLDhfTF68hW5FL3ZE7xPjZdaUZxUBatYyp8yHZmPiGwRS5EbIIHDwS22rmgWf3mA8KqfcnXpGan2y3LgWKRZLmIwDxaTaypDNsrsh7LU6265+l1VQE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1408.namprd11.prod.outlook.com (2603:10b6:300:24::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 15 Apr
 2020 16:12:30 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2921.024; Wed, 15 Apr
 2020 16:12:30 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 07/20] staging: wfx: disabling beacon filtering after
 hif_reset() is useless
Date: Wed, 15 Apr 2020 18:11:34 +0200
Message-Id: <20200415161147.69738-8-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415161147.69738-1-Jerome.Pouiller@silabs.com>
References: <20200415161147.69738-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR1PR01CA0027.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::40) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 PR1PR01CA0027.eurprd01.prod.exchangelabs.com (2603:10a6:102::40) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25 via Frontend
 Transport; Wed, 15 Apr 2020 16:12:27 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 38d0e700-0f87-4b41-c488-08d7e157cbdd
X-MS-TrafficTypeDiagnostic: MWHPR11MB1408:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB140835808DAE025655E349FA93DB0@MWHPR11MB1408.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:130;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(396003)(376002)(346002)(39850400004)(366004)(8886007)(8936002)(4744005)(5660300002)(2906002)(6666004)(86362001)(8676002)(478600001)(81156014)(66574012)(1076003)(4326008)(52116002)(316002)(54906003)(107886003)(186003)(16526019)(66556008)(66476007)(36756003)(2616005)(6512007)(6486002)(6506007)(66946007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yGPm8TjpBbUcG+aKRVUuL1uxSMNnyYxSGuUpZ1ej+qW4hHqkNzhXvUkpXx84A62lm96teulsadV3AowZsk9z767TmoXo7IzzMb+790l1rb+G3G28Fi2gqEx8hKnp4KlM28YlMnA8GSGNFMMG0NJeGTjYQIN7V3lq+Gn6JKXRHqh7wrP6JgCDtlTpAfAwoAgDXZGnmmWhSh6etZkyeWh+e7h3iw3gRylnxfN4r+8Cv9PqOVJiM5FyXfbpa2F2hy3KxGGmuqNlv7fNaWIuFF2BlZfkQtCoklyp8xfQhpG81iD4DMhDPO0hy4aVIZgdpoD6mPODvhL3mWpptvMHyyGgR/2cmExXBoXhF+X85ef2lbKqos7qeOLtAo2LotIFekhRB1fTaJBTlMYW6+Xv64VDhZKVfjAwMs6+tyk2ZxrXLntiKyHaJWKMQu8WDxTucNWE
X-MS-Exchange-AntiSpam-MessageData: N9Ms3ULfz4yoIvIAK5RFOLy8qu2jY9/TJNypSxnA64b5LJcPSSVC1YqWyi94k1SCq3+CA6Tz44eCqlV1Dy5JhsAE96sEx8uIbqlcmylz20/OfgQaxBokgURsRYNlw7/+mA5glZX+wIlWfItEGThHV8QZTHF6FAGQcalzQdv2gQxnumFawfmTpuPNQJzqB4BhNKonrarRQjMDweTLXvqXuA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38d0e700-0f87-4b41-c488-08d7e157cbdd
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 16:12:29.9415 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vlS1e7g0WZ6AFgoMf2vCU1QLfdWwIzK486drw2FJ6Mk4k+coP1SK1Z5XXibuQGVzNrCD/r5420+ZqCTcsdlEdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1408
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQWZ0
ZXIgaGlmX3Jlc2V0KCksIGRldmljZSBzdG9wIHRvIHJlY2VpdmUgYW55IFJGIGRhdGEuIFNvLCBp
dCBpcwp1c2VsZXNzIHRvIGRpc2FibGUgYmVhY29uIGZpbHRlcmluZy4gSW4gYWRkLCBpZiBuZWNl
c3NhcnksIG1hYzgwMjExIHdpbGwKY2FsbCB3ZnhfY29uZmlndXJlX2ZpbHRlcigpLgoKU2lnbmVk
LW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgot
LS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgfCAyIC0tCiAxIGZpbGUgY2hhbmdlZCwgMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9zdGEuYwppbmRleCBjOGEyMzE0NmNhZTAuLjdjOGViZDc2MTE0ZSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYworKysgYi9kcml2ZXJzL3N0YWdp
bmcvd2Z4L3N0YS5jCkBAIC00MTksOCArNDE5LDYgQEAgc3RhdGljIHZvaWQgd2Z4X2RvX3Vuam9p
bihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAljYW5jZWxfd29ya19zeW5jKCZ3dmlmLT5ldmVudF9o
YW5kbGVyX3dvcmspOwogCXdmeF9jcW1fYnNzbG9zc19zbSh3dmlmLCAwLCAwLCAwKTsKIAotCXd2
aWYtPmRpc2FibGVfYmVhY29uX2ZpbHRlciA9IGZhbHNlOwotCXdmeF91cGRhdGVfZmlsdGVyaW5n
KHd2aWYpOwogCW1lbXNldCgmd3ZpZi0+YnNzX3BhcmFtcywgMCwgc2l6ZW9mKHd2aWYtPmJzc19w
YXJhbXMpKTsKIAl3ZnhfdHhfdW5sb2NrKHd2aWYtPndkZXYpOwogfQotLSAKMi4yNS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
