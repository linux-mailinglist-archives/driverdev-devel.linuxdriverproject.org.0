Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A5F1E2860
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 19:19:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0DB7323491;
	Tue, 26 May 2020 17:19:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gswpw6iHxvda; Tue, 26 May 2020 17:19:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E1D423730;
	Tue, 26 May 2020 17:18:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 096A01BF870
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 17:18:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 031268647E
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 17:18:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cWfyXDcgii-N for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 17:18:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam11on2077.outbound.protection.outlook.com [40.107.236.77])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1ED30863AC
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 17:18:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hpsTL2tNHiNUC/gxBy1ptww6Fx9eKQyOo0lpYIe6YDslPWJcUzDprjpIElUE9m6UX7OBlxt460+d1eoQ0E89uJXB8LziAC6uIZlbSZxXJaAwFzqtExNWnyjPhUq0Y1IRY9uu7zKeOA30d4tlPB64wGLSQN95XZr5Jwe/miZ8hxIYtKmkkGHqQ0qS9Zb8O97BF6oPkZRzWbUcedd1O1gdwrJ2zmvcm/Sgj4W/LeJWpYwCdg51EXfWOhN55zCeJoAUwvrgCIOqp2DWKSDuEmX3eZsuAKDEQKqfD5yHIpSedTwSQejmLRaq/n2VgsHygc0I0kDbR7NeGXmzSd0uhoZ9aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFgvxQnFloxqef1n9Pi21c3KsNyEjNSPr82jw3HJFKw=;
 b=Vii+CGUik+gQIAezwtm27GR3wnNuc2ydRzG7uB0yAp+oPVCXY2xG+Z1Zfsx/RzuU7oqB6D2LS/R862X4kR5bgI9dX2EojTZEvxJ+oNrWzBAy5gThcayHkSr8OBm2Lq1qMdqUUdhcL0HFW+V023UsnXjVJ2/jN+Yc6Boe3w8QkDqtPzV4tBo2aS6fro/9e4iP064ufCP8gpA8EXNh/ovujJy/kJ6Kr1n+3iWHdAZaDYsKLNBgNXedGcqnB81UIEzOKb7KvmR782KBCwg2DFJzj4b1f3ob68ywN6bxXdzVcgSooGrBMHKFaw6lyRfGJ/URlx2CsFSdP6Npzlt+L0uU5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFgvxQnFloxqef1n9Pi21c3KsNyEjNSPr82jw3HJFKw=;
 b=jSnzVkYHeKGgtyjqMu23p4YjQ7FyNtTayHYpxuX9gF5/lHYk1WR3U/+Zeox9zlwwNt4L5nyKrP+yeOYaO6yqTVHfDUWfhHc1zwDc0AeRDSl+jFjt2JKDNw9c6MDIu64NU2HFVhKNO+0Xo8bObIj2iG6PTaj+kxdSMn27jtxg6os=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2750.namprd11.prod.outlook.com (2603:10b6:805:54::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.25; Tue, 26 May
 2020 17:18:52 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3021.029; Tue, 26 May 2020
 17:18:52 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 07/10] staging: wfx: add support for set/get ps_timeout
Date: Tue, 26 May 2020 19:18:18 +0200
Message-Id: <20200526171821.934581-8-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200526171821.934581-1-Jerome.Pouiller@silabs.com>
References: <20200526171821.934581-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR1PR01CA0007.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::20) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 PR1PR01CA0007.eurprd01.prod.exchangelabs.com (2603:10a6:102::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17 via Frontend
 Transport; Tue, 26 May 2020 17:18:50 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b36aa818-c34b-4330-7270-08d80198dc92
X-MS-TrafficTypeDiagnostic: SN6PR11MB2750:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2750952B770DDB5853FA495C93B00@SN6PR11MB2750.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 041517DFAB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZlQrJdO8J+Zr1V3pOAiRmF7PM+Yea4pqpKWg2DhMUOFNiUZziMCnGkAhpx18oyRi8tYTbA1ZJFQNXO8uRPjCzHuyJKNH+vng29FcAR9/8+t3namm8GehMJYf92q6n6fc/Lqgh1Bqmh4cTsLnWkIxVjPoHsK7rn45eXW1IudWdMWQ6uIgCkq2ljcEST0fLMlsldJ3nd42ZtIHkU60ckbQBn5+6cUc9iyu4uK6KjFEs12579pzDXDpwk5kyiB0pPQ7f5ly2jpWgf3yYWpwwhxnDWS7rf+mnYSZbd+W2UBlOZmuGL523qEKGhvOfnbBvT+Q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(376002)(366004)(39860400002)(136003)(346002)(4326008)(6512007)(316002)(8676002)(8936002)(2616005)(6486002)(2906002)(107886003)(1076003)(86362001)(6666004)(186003)(16526019)(5660300002)(66574014)(36756003)(54906003)(66556008)(478600001)(8886007)(6506007)(66946007)(66476007)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: WXg8QpZbGkgLZv1tCa/22xJcHAxx8cFy8P/8gC1E9u5uI/f2xkCqB6lu1/TRXPym+PYfWdtia0dLcfi/A94U62JjUl9LPw7t4QUeBMwzymoVv27JvaHc7AQXDjXSFIQPQJne0M16h9kv5miK4tWLPFAowgNC9aGfzcqudQvOwFPh76dpA+U6ih7OEDinnmDpGHFMVE4V5w2vUgUJQ+bIEbEuZhHGzP3kobcdlTfazuly3yPksCF0VT3d5mePAvkGM3ZEDg9FphX4gl9i5RaQMjmu20b/E3yHKHX8vTH7M0fEZqeZzeSc9hl9QtpqrnqD85ddYCutyaFOXCoK0uudcjQmFvzPMV9K9xV5/Q9cY+GwjIoWh/PP4qIfQet6tzcZa/1CpAO5B9y41KVUpvYbWxp9GO05KCxjotcGsT/v60Yd474uew9Xx8fTiJOrIUEeQAel9koF/mNIJdnKztRNzUxYBaw1M5pVkjTdJb62yIieJbgUDn6WuAb51gj9TslGM1M58VyxJ/a5cY7kW+dRWBwkIMm65sNB00tdZriXml8=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b36aa818-c34b-4330-7270-08d80198dc92
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 May 2020 17:18:52.1896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cUwg/MyLcZiW0vpJNke4fO4Tx0cAOEJwJqQ6jEgtIWfu5laLArBE4bhVG2AwX73a2nuUHwVNLbkys221G7ggZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2750
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSW4g
c29tZSBhZHZhbmNlZCB1c2FnZSBvciBkZWJ1ZyBzY2VuYXJpb3MsIGl0IGNvdWxkIGludGVyZXN0
aW5nIHRvCmNoYW5nZSB0aGUgdmFsdWUgb2YgcHNfdGltZW91dCBvciBldmVudHVhbGx5IHRvIGZv
cmNlIHVzZSBvZiBQUy1Qb2xsCmZyYW1lcy4KClRoZSB3ZXh0IEFQSSAodXNlZCBieSBpd2NvbmZp
ZykgcHJvdmlkZSBhIHdheSB0byBjaGFuZ2UgcHNfdGltZW91dC4KSG93ZXZlciwgdGhpcyBBUEkg
aXMgb2Jzb2xldGUgYW5kIGl0IHNlZW1zIGEgbGl0dGxlIHdlaXJkIHRvIHVzZSAoaXQKc2VlbXMg
aXQgZG9lc24ndCBhcHBseSB0aGUgY2hhbmdlcywgc28gdGhlIHVzZXIgaGF2ZSB0byBkaXNhYmxl
IHRoZW4KcmUtZW5hYmxlIGRlIHBvd2VyIHNhdmUpCgpPbiBzaWRlIG9mIG5sODAyMTEsIHRoZXJl
IGlzIG5vIHdheSB0byBjaGFuZ2UgdGhlIHBzX3RpbWVvdXQuCgpUaGlzIHBhdGNoIHByb3ZpZGVz
IGEgdmVuZG9yIGV4dGVuc2lvbiB0byBubDgwMjExIHRvIGNoYW5nZSB0aGUgdmFsdWUKb2YgcHNf
dGltZW91dC4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxs
ZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L01ha2VmaWxlICAgICAgICAg
fCAgMyArLQogZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMgICAgICAgICAgIHwgIDQgKysrCiBk
cml2ZXJzL3N0YWdpbmcvd2Z4L25sODAyMTFfdmVuZG9yLmMgfCA0OSArKysrKysrKysrKysrKysr
KysrKysrKysrKysrCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L25sODAyMTFfdmVuZG9yLmggfCA0NCAr
KysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jICAgICAg
ICAgICAgfCAgOSArKystLQogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaCAgICAgICAgICAgIHwg
IDIgKysKIGRyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggICAgICAgICAgICB8ICAxICsKIDcgZmls
ZXMgY2hhbmdlZCwgMTA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL3dmeC9ubDgwMjExX3ZlbmRvci5jCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL3dmeC9ubDgwMjExX3ZlbmRvci5oCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9NYWtlZmlsZSBiL2RyaXZlcnMvc3RhZ2luZy93ZngvTWFr
ZWZpbGUKaW5kZXggMGUwY2M5ODJjZWFiMi4uMmQzNGEwMjg1MzIyNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9NYWtlZmlsZQorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L01ha2Vm
aWxlCkBAIC0xOCw3ICsxOCw4IEBAIHdmeC15IDo9IFwKIAlrZXkubyBcCiAJbWFpbi5vIFwKIAlz
dGEubyBcCi0JZGVidWcubworCWRlYnVnLm8gXAorCW5sODAyMTFfdmVuZG9yLm8KIHdmeC0kKENP
TkZJR19TUEkpICs9IGJ1c19zcGkubwogd2Z4LSQoc3Vic3QgbSx5LCQoQ09ORklHX01NQykpICs9
IGJ1c19zZGlvLm8KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMgYi9k
cml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYwppbmRleCA2YmQ5NmY0NzYzODg0Li4xMWY2YmM2ZmEz
Mzk0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYworKysgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L21haW4uYwpAQCAtMzQsNiArMzQsNyBAQAogI2luY2x1ZGUgInNlY3VyZV9s
aW5rLmgiCiAjaW5jbHVkZSAiaGlmX3R4X21pYi5oIgogI2luY2x1ZGUgImhpZl9hcGlfY21kLmgi
CisjaW5jbHVkZSAibmw4MDIxMV92ZW5kb3IuaCIKIAogI2RlZmluZSBXRlhfUERTX01BWF9TSVpF
IDE1MDAKIApAQCAtMzEyLDYgKzMxMyw5IEBAIHN0cnVjdCB3ZnhfZGV2ICp3ZnhfaW5pdF9jb21t
b24oc3RydWN0IGRldmljZSAqZGV2LAogCQkJCXNpemVvZihzdHJ1Y3QgaGlmX21zZykKIAkJCQkr
IHNpemVvZihzdHJ1Y3QgaGlmX3JlcV90eCkKIAkJCQkrIDQgLyogYWxpZ25tZW50ICovICsgOCAv
KiBUS0lQIElWICovOworCisJaHctPndpcGh5LT5uX3ZlbmRvcl9jb21tYW5kcyA9IEFSUkFZX1NJ
WkUod2Z4X25sODAyMTFfdmVuZG9yX2NvbW1hbmRzKTsKKwlody0+d2lwaHktPnZlbmRvcl9jb21t
YW5kcyA9IHdmeF9ubDgwMjExX3ZlbmRvcl9jb21tYW5kczsKIAlody0+d2lwaHktPmludGVyZmFj
ZV9tb2RlcyA9IEJJVChOTDgwMjExX0lGVFlQRV9TVEFUSU9OKSB8CiAJCQkJICAgICBCSVQoTkw4
MDIxMV9JRlRZUEVfQURIT0MpIHwKIAkJCQkgICAgIEJJVChOTDgwMjExX0lGVFlQRV9BUCk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L25sODAyMTFfdmVuZG9yLmMgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L25sODAyMTFfdmVuZG9yLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMDAwMC4uZWMyZmQyZDczODg1ZgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMv
c3RhZ2luZy93Zngvbmw4MDIxMV92ZW5kb3IuYwpAQCAtMCwwICsxLDQ5IEBACisvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5CisvKgorICogRXh0cmEgY29tbWFuZHMgZm9y
IG5sODAyMTEgaW50ZXJmYWNlLgorICoKKyAqIENvcHlyaWdodCAoYykgMjAyMCwgU2lsaWNvbiBM
YWJvcmF0b3JpZXMsIEluYy4KKyAqLworI2luY2x1ZGUgIm5sODAyMTFfdmVuZG9yLmgiCisjaW5j
bHVkZSAid2Z4LmgiCisjaW5jbHVkZSAic3RhLmgiCisKK2ludCB3ZnhfbmxfcHNfdGltZW91dChz
dHJ1Y3Qgd2lwaHkgKndpcGh5LCBzdHJ1Y3Qgd2lyZWxlc3NfZGV2ICp3aWRldiwKKwkJICAgICAg
Y29uc3Qgdm9pZCAqZGF0YSwgaW50IGRhdGFfbGVuKQoreworCWludCByZXBseV9zaXplID0gbmxh
X3RvdGFsX3NpemUoc2l6ZW9mKHUzMikpOworCXN0cnVjdCBubGF0dHIgKnRiW1dGWF9OTDgwMjEx
X0FUVFJfTUFYXTsKKwlzdHJ1Y3QgaWVlZTgwMjExX3ZpZiAqdmlmOworCXN0cnVjdCB3Znhfdmlm
ICp3dmlmOworCXN0cnVjdCBza19idWZmICptc2c7CisJaW50IHJjLCBwc190aW1lb3V0OworCisJ
cmMgPSBubGFfcGFyc2UodGIsIFdGWF9OTDgwMjExX0FUVFJfTUFYIC0gMSwgZGF0YSwgZGF0YV9s
ZW4sCisJCSAgICAgICB3ZnhfbmxfcG9saWN5LCBOVUxMKTsKKwlpZiAocmMpCisJCXJldHVybiBy
YzsKKwl2aWYgPSB3ZGV2X3RvX2llZWU4MDIxMV92aWYod2lkZXYpOworCWlmICghdmlmKQorCQly
ZXR1cm4gLUVOT0RFVjsKKwl3dmlmID0gKHN0cnVjdCB3ZnhfdmlmICopdmlmLT5kcnZfcHJpdjsK
KworCWlmICh0YltXRlhfTkw4MDIxMV9BVFRSX1BTX1RJTUVPVVRdKSB7CisJCXd2aWYtPmZvcmNl
X3BzX3RpbWVvdXQgPQorCQkJbmxhX2dldF9zMzIodGJbV0ZYX05MODAyMTFfQVRUUl9QU19USU1F
T1VUXSk7CisJCXdmeF91cGRhdGVfcG0od3ZpZik7CisJfQorCisJbXNnID0gY2ZnODAyMTFfdmVu
ZG9yX2NtZF9hbGxvY19yZXBseV9za2Iod2lwaHksIHJlcGx5X3NpemUpOworCWlmICghbXNnKQor
CQlyZXR1cm4gLUVOT01FTTsKKwlwc190aW1lb3V0ID0gd2Z4X2dldF9wc190aW1lb3V0KHd2aWYs
IE5VTEwpOworCXJjID0gbmxhX3B1dF9zMzIobXNnLCBXRlhfTkw4MDIxMV9BVFRSX1BTX1RJTUVP
VVQsIHBzX3RpbWVvdXQpOworCWlmIChyYykKKwkJZ290byBlcnJvcjsKKwlyZXR1cm4gY2ZnODAy
MTFfdmVuZG9yX2NtZF9yZXBseShtc2cpOworCitlcnJvcjoKKwlrZnJlZV9za2IobXNnKTsKKwly
ZXR1cm4gcmM7Cit9CisKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvbmw4MDIxMV92
ZW5kb3IuaCBiL2RyaXZlcnMvc3RhZ2luZy93Zngvbmw4MDIxMV92ZW5kb3IuaApuZXcgZmlsZSBt
b2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAwLi5jMDY5MzMwZTI0MGE5Ci0tLSAvZGV2L251
bGwKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9ubDgwMjExX3ZlbmRvci5oCkBAIC0wLDAgKzEs
NDQgQEAKKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkgKi8KKy8qCisg
KiBFeHRyYSBjb21tYW5kcyBmb3Igbmw4MDIxMSBpbnRlcmZhY2UuCisgKgorICogQ29weXJpZ2h0
IChjKSAyMDIwLCBTaWxpY29uIExhYm9yYXRvcmllcywgSW5jLgorICovCisjaWZuZGVmIFdGWF9O
TDgwMjExX1ZFTkRPUl9ICisjZGVmaW5lIFdGWF9OTDgwMjExX1ZFTkRPUl9ICisKKyNpbmNsdWRl
IDxuZXQvbmV0bGluay5oPgorI2luY2x1ZGUgPG5ldC9jZmc4MDIxMS5oPgorCisjaW5jbHVkZSAi
aGlmX2FwaV9nZW5lcmFsLmgiCisKKyNkZWZpbmUgV0ZYX05MODAyMTFfSUQgMHg5MGZkOWYKKwor
aW50IHdmeF9ubF9wc190aW1lb3V0KHN0cnVjdCB3aXBoeSAqd2lwaHksIHN0cnVjdCB3aXJlbGVz
c19kZXYgKndpZGV2LAorCQkgICAgICBjb25zdCB2b2lkICpkYXRhLCBpbnQgZGF0YV9sZW4pOwor
CitlbnVtIHsKKwlXRlhfTkw4MDIxMV9TVUJDTURfUFNfVElNRU9VVCAgICAgICAgICAgICAgICAg
ICA9IDB4MTAsCit9OworCitlbnVtIHsKKwlXRlhfTkw4MDIxMV9BVFRSX1BTX1RJTUVPVVQgICAg
ID0gMSwKKwlXRlhfTkw4MDIxMV9BVFRSX01BWAorfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBu
bGFfcG9saWN5IHdmeF9ubF9wb2xpY3lbV0ZYX05MODAyMTFfQVRUUl9NQVhdID0geworCVtXRlhf
Tkw4MDIxMV9BVFRSX1BTX1RJTUVPVVRdICAgICA9IE5MQV9QT0xJQ1lfUkFOR0UoTkxBX1MzMiwg
LTEsIDEyNyksCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IHdpcGh5X3ZlbmRvcl9jb21tYW5k
IHdmeF9ubDgwMjExX3ZlbmRvcl9jb21tYW5kc1tdID0geworCXsKKwkJLmluZm8udmVuZG9yX2lk
ID0gV0ZYX05MODAyMTFfSUQsCisJCS5pbmZvLnN1YmNtZCA9IFdGWF9OTDgwMjExX1NVQkNNRF9Q
U19USU1FT1VULAorCQkuZmxhZ3MgPSBXSVBIWV9WRU5ET1JfQ01EX05FRURfV0RFViwKKwkJLnBv
bGljeSA9IHdmeF9ubF9wb2xpY3ksCisJCS5kb2l0ID0gd2Z4X25sX3BzX3RpbWVvdXQsCisJCS5t
YXhhdHRyID0gV0ZYX05MODAyMTFfQVRUUl9NQVggLSAxLAorCX0sCit9OworCisjZW5kaWYgLyog
V0ZYX05MODAyMTFfVkVORE9SX0ggKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
c3RhLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCmluZGV4IDEyZThhNWI2MzhmMTEuLjdm
MGJiOGViNzg2NjAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKKysrIGIv
ZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtMjE3LDE0ICsyMTcsMTggQEAgaW50IHdmeF9n
ZXRfcHNfdGltZW91dChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgYm9vbCAqZW5hYmxlX3BzKQogCQkv
LyBhcmUgZGlmZmVyZW50cy4KIAkJaWYgKGVuYWJsZV9wcykKIAkJCSplbmFibGVfcHMgPSB0cnVl
OwotCQlpZiAod3ZpZi0+YnNzX25vdF9zdXBwb3J0X3BzX3BvbGwpCisJCWlmICh3dmlmLT5mb3Jj
ZV9wc190aW1lb3V0ID4gLTEpCisJCQlyZXR1cm4gd3ZpZi0+Zm9yY2VfcHNfdGltZW91dDsKKwkJ
ZWxzZSBpZiAod3ZpZi0+YnNzX25vdF9zdXBwb3J0X3BzX3BvbGwpCiAJCQlyZXR1cm4gMzA7CiAJ
CWVsc2UKIAkJCXJldHVybiAwOwogCX0KIAlpZiAoZW5hYmxlX3BzKQogCQkqZW5hYmxlX3BzID0g
d3ZpZi0+dmlmLT5ic3NfY29uZi5wczsKLQlpZiAod3ZpZi0+dmlmLT5ic3NfY29uZi5hc3NvYyAm
JiB3dmlmLT52aWYtPmJzc19jb25mLnBzKQorCWlmICh3dmlmLT5mb3JjZV9wc190aW1lb3V0ID4g
LTEpCisJCXJldHVybiB3dmlmLT5mb3JjZV9wc190aW1lb3V0OworCWVsc2UgaWYgKHd2aWYtPnZp
Zi0+YnNzX2NvbmYuYXNzb2MgJiYgd3ZpZi0+dmlmLT5ic3NfY29uZi5wcykKIAkJcmV0dXJuIGNv
bmYtPmR5bmFtaWNfcHNfdGltZW91dDsKIAllbHNlCiAJCXJldHVybiAtMTsKQEAgLTc4OCw2ICs3
OTIsNyBAQCBpbnQgd2Z4X2FkZF9pbnRlcmZhY2Uoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHN0
cnVjdCBpZWVlODAyMTFfdmlmICp2aWYpCiAJd3ZpZi0+dmlmID0gdmlmOwogCXd2aWYtPndkZXYg
PSB3ZGV2OwogCisJd3ZpZi0+Zm9yY2VfcHNfdGltZW91dCA9IC0xOwogCXd2aWYtPmxpbmtfaWRf
bWFwID0gMTsgLy8gbGluay1pZCAwIGlzIHJlc2VydmVkIGZvciBtdWx0aWNhc3QKIAlJTklUX1dP
UksoJnd2aWYtPnVwZGF0ZV90aW1fd29yaywgd2Z4X3VwZGF0ZV90aW1fd29yayk7CiAJSU5JVF9E
RUxBWUVEX1dPUksoJnd2aWYtPmJlYWNvbl9sb3NzX3dvcmssIHdmeF9iZWFjb25fbG9zc193b3Jr
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmggYi9kcml2ZXJzL3N0YWdp
bmcvd2Z4L3N0YS5oCmluZGV4IDhhMjBhZDlhZTAxN2UuLjgyMjBkMzExODRjOGMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9z
dGEuaApAQCAtNjksOSArNjksMTEgQEAgdm9pZCB3ZnhfY29vbGluZ190aW1lb3V0X3dvcmsoc3Ry
dWN0IHdvcmtfc3RydWN0ICp3b3JrKTsKIHZvaWQgd2Z4X3N1c3BlbmRfaG90X2RldihzdHJ1Y3Qg
d2Z4X2RldiAqd2RldiwgZW51bSBzdGFfbm90aWZ5X2NtZCBjbWQpOwogdm9pZCB3Znhfc3VzcGVu
ZF9yZXN1bWVfbWMoc3RydWN0IHdmeF92aWYgKnd2aWYsIGVudW0gc3RhX25vdGlmeV9jbWQgY21k
KTsKIHZvaWQgd2Z4X2V2ZW50X3JlcG9ydF9yc3NpKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCB1OCBy
YXdfcmNwaV9yc3NpKTsKK2ludCB3ZnhfdXBkYXRlX3BtKHN0cnVjdCB3ZnhfdmlmICp3dmlmKTsK
IAogLy8gT3RoZXIgSGVscGVycwogdm9pZCB3ZnhfcmVzZXQoc3RydWN0IHdmeF92aWYgKnd2aWYp
OworaW50IHdmeF9nZXRfcHNfdGltZW91dChzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgYm9vbCAqZm9y
Y2VfcHMpOwogdTMyIHdmeF9yYXRlX21hc2tfdG9faHcoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUz
MiByYXRlcyk7CiAKICNlbmRpZiAvKiBXRlhfU1RBX0ggKi8KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy93Zngvd2Z4LmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oCmluZGV4IDczZTIx
NjczM2NlNGYuLmVmNjhhYTQwODZlMDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
d2Z4LmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaApAQCAtOTIsNiArOTIsNyBAQCBz
dHJ1Y3Qgd2Z4X3ZpZiB7CiAJYm9vbAkJCXNjYW5fYWJvcnQ7CiAJc3RydWN0IGllZWU4MDIxMV9z
Y2FuX3JlcXVlc3QgKnNjYW5fcmVxOwogCisJaW50CQkJZm9yY2VfcHNfdGltZW91dDsKIAlib29s
CQkJYnNzX25vdF9zdXBwb3J0X3BzX3BvbGw7CiAJc3RydWN0IHdvcmtfc3RydWN0CXVwZGF0ZV9w
bV93b3JrOwogCXN0cnVjdCBjb21wbGV0aW9uCXNldF9wbV9tb2RlX2NvbXBsZXRlOwotLSAKMi4y
Ni4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
