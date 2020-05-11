Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6481CDF65
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 May 2020 17:50:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56AAE86D0F;
	Mon, 11 May 2020 15:49:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pgV8IogxW5sZ; Mon, 11 May 2020 15:49:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B22CD86CF8;
	Mon, 11 May 2020 15:49:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E6F971BF3C1
 for <devel@linuxdriverproject.org>; Mon, 11 May 2020 15:49:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E3EF68804A
 for <devel@linuxdriverproject.org>; Mon, 11 May 2020 15:49:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YCBwWrTREGz1 for <devel@linuxdriverproject.org>;
 Mon, 11 May 2020 15:49:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2087.outbound.protection.outlook.com [40.107.244.87])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 52D068820A
 for <devel@driverdev.osuosl.org>; Mon, 11 May 2020 15:49:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FjGDyIlt5PZogRTy1g9Tt0HgUcLORMv4zmHHbTrx4LpKVEXx3CUxWThJxXxtENSn1908kLPPtkMa7wUgvqfMHu8G7QJzXo8rdcBOZlODSOCFpU5mQX9l4BJrZ8hMWinoIBRd1RZuGEap5O47S5SB7JBVekvyrfgPBhdiCBYNil1JUoMmtRAHn6m2qZOlH1Y6VQHkOhXYy23l0KYBjxTjQtjx1O/T1cZsKTYLpies2z3hyvfvlw0Cqjt/MWAL9YF7izL8OxNkpL1czYTJsxqyIBp8fe9b/6D/4NzwCUTZtX4txTeUQHpX2AagVlwLYyqj3/9EwxgwAZm7bX0Jhi9q2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+EkGpEd85h4vR2Ni4US7JJOSHnUAz2lbZZenwSq/nkY=;
 b=WL0k6bxk71f0gMlbR2FKIfgb/MUypEJSPPrpUVjmLuYEFq7X6+NhzNh+W5YhimCSHYKYA1KHKMj1AIqFywg60WPKrjkKFSbe9yHf3Nfi4GjG8ym8D3rO4PfVy7kNmdi3P38i5qsFIxlmgaAgTPqVF9GGAvOdgQ/NDCpvvpedFq8MaViXtC8mlGwsZljs6kkbK0bM5ZLeSYl9tCHcFsneyTNP6qnJ5G1S58oliXvGg6PeegxjvP14j2AguO4AVWZs3ijZr0GirJS/HD7GP5ifg+wiUdrKMteFK7peSK95gmiAI4FR8usH56BFaalCeQ0Aw6dbExrRr7PdClLTHFcF7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+EkGpEd85h4vR2Ni4US7JJOSHnUAz2lbZZenwSq/nkY=;
 b=RSge3H3LRJTu7rUt1lpIp4H47TnVInx6IQgz9YlUFbZql1obLV9jdgucDn0UEQSBa4eo49QDUsnrhH8RfnXSTKzJytkPQbYfQnpsdZQDMLFEYRYJ7clYEMCaTBIbO5thJxIQV0SK0nvqJmHk0fOd0GAz/ijceV+0yhkydM2jQw0=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1968.namprd11.prod.outlook.com (2603:10b6:300:113::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Mon, 11 May
 2020 15:49:51 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 15:49:51 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 03/17] staging: wfx: fix cast operator
Date: Mon, 11 May 2020 17:49:16 +0200
Message-Id: <20200511154930.190212-4-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200511154930.190212-1-Jerome.Pouiller@silabs.com>
References: <20200511154930.190212-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN6PR2101CA0026.namprd21.prod.outlook.com
 (2603:10b6:805:106::36) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (82.67.86.106) by
 SN6PR2101CA0026.namprd21.prod.outlook.com (2603:10b6:805:106::36) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.2 via Frontend
 Transport; Mon, 11 May 2020 15:49:49 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 52b0ec6e-52c6-4e84-8f82-08d7f5c2f0ab
X-MS-TrafficTypeDiagnostic: MWHPR11MB1968:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1968DF37DA0FE38A5726844C93A10@MWHPR11MB1968.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2399;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: cw9TZMIPlvqeGwfUIr6hCqqwqJNWgqtm2Gi/7YX8HRKdUmuDgMoYrCp6stS0lVM9f8nXWi5ONGywS3nZT7P92ZUqKhLLGdOBMNER/glt0yWlV6iPwxPUNn4X1tZ5DdrSVfQ1XNVmbzNUZSl+fhfTo1AY2Cpal19hbQNiQ9Hlh/tR0XZ2TWx+nEqQXe6CztFnPC+7LeoG7lno5XaoWwo1usiYIk83SmIbAhLxMaXS665nQIpB6AvYxEFG3hPp3MpnQ3Au3HM0sfyQNNiJzEIQCtI4kJ1/63AgS0+JZuyV6GLyQoLXjLDbl9mgP0m3HxU/okr4sgzlJboCjJm7+2D3DvGdsfUWgBFThODzAydqgzfYXXEKeydFwdNGhVHKHUBYtMnFpIYp8qceBfVyRwBrrbkdAh+ALYyqSlkdR8d7D1rmSBRj7lTE0tZydqoi+qzeZYZ80/gi1IEzS9aeeqsVMAdRkdFLFEq4fwkVnslVzUQL9AXcYISizEXwgctouAUylCBbmYi/NlcnbtwWXdZbYw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(346002)(136003)(396003)(376002)(366004)(33430700001)(186003)(52116002)(86362001)(316002)(5660300002)(7696005)(6486002)(33440700001)(478600001)(54906003)(6666004)(4326008)(107886003)(36756003)(16526019)(26005)(8936002)(956004)(2616005)(8676002)(1076003)(66476007)(66946007)(66556008)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: DI0Ykxo9OXBVfoOImVa2kwPKXcKf5+rSUrrU9o2LdMdalcBZekv/DVimhhqm4ineRc0jbbI0tkq7PcegDzpRDta5CvLOLBivviIzUhnuoOs969x52VW6Dj6zL0q7hhaWNwDzpLv7+RmKFbxCpAtar28d36Fitq9d7GojTkHe20AhVXQwzhpNV7seHYhzvClf4usq0bZpUKCRhdugj9aerzjFLImCJRaJcep3vYaYbnXbNmU/mT5e2jJhAosXl6oFQIyOf+mquHNMOwZ8BbfmYN6RNN3bld2aJtKGmGEUq0SzM2Ppf/WnzOBsYJMbjHAXquKfWeKxMdZnGWUmd1RcTjHQ5f3e8Sr75x4Rj92UtWqjAnhlwev3DhwU0Q2Hb7PFJzA6oHj/lafW5uvY4yunWhS9O1tYXyuCgbCqTAcTcvYreFKvUplD6P0njt9Scat7kzKxBsgj/UjWsM7tWUigjNhkmKAF3uyQeJU0/DIS8NM=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 52b0ec6e-52c6-4e84-8f82-08d7f5c2f0ab
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 15:49:50.9279 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9sCLXY6M3wolpKTPTXEA/UbyB0ceDTzBRDMQ8pyBbi832RnCQKiGSiKeNmkQF6pzQgRgScvJSlYrxhPx7GcQfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1968
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU3Bh
cnNlIGRldGVjdHMgdGhhdCBsZTE2X3RvX2NwdXAoKSBleHBlY3RzIGEgX19sZTE2ICogYXMgYXJn
dW1lbnQuCgpDaGFuZ2UgdGhlIGNhc3Qgb3BlcmF0b3IgdG8gYmUgY29tcGxpYW50IHdpdGggc3Bh
cnNlLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBz
aWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvYmguYyAgICAgfCAyICstCiBkcml2
ZXJzL3N0YWdpbmcvd2Z4L3RyYWNlcy5oIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9iaC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9iaC5jCmluZGV4IDI1NzJmYmNmMWEzMy4uNTU3
MjRlNDI5NWM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2JoLmMKKysrIGIvZHJp
dmVycy9zdGFnaW5nL3dmeC9iaC5jCkBAIC03MCw3ICs3MCw3IEBAIHN0YXRpYyBpbnQgcnhfaGVs
cGVyKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCBzaXplX3QgcmVhZF9sZW4sIGludCAqaXNfY25mKQog
CWlmICh3ZnhfZGF0YV9yZWFkKHdkZXYsIHNrYi0+ZGF0YSwgYWxsb2NfbGVuKSkKIAkJZ290byBl
cnI7CiAKLQlwaWdneWJhY2sgPSBsZTE2X3RvX2NwdXAoKHUxNiAqKShza2ItPmRhdGEgKyBhbGxv
Y19sZW4gLSAyKSk7CisJcGlnZ3liYWNrID0gbGUxNl90b19jcHVwKChfX2xlMTYgKikoc2tiLT5k
YXRhICsgYWxsb2NfbGVuIC0gMikpOwogCV90cmFjZV9waWdneWJhY2socGlnZ3liYWNrLCBmYWxz
ZSk7CiAKIAloaWYgPSAoc3RydWN0IGhpZl9tc2cgKilza2ItPmRhdGE7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvd2Z4L3RyYWNlcy5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC90cmFjZXMu
aAppbmRleCBiYjlmN2U5ZTdkMjEuLmM3OGM0NmIxYzk5MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9z
dGFnaW5nL3dmeC90cmFjZXMuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3RyYWNlcy5oCkBA
IC0xODQsNyArMTg0LDcgQEAgREVDTEFSRV9FVkVOVF9DTEFTUyhoaWZfZGF0YSwKIAkJaWYgKCFp
c19yZWN2ICYmCiAJCSAgICAoX19lbnRyeS0+bXNnX2lkID09IEhJRl9SRVFfSURfUkVBRF9NSUIg
fHwKIAkJICAgICBfX2VudHJ5LT5tc2dfaWQgPT0gSElGX1JFUV9JRF9XUklURV9NSUIpKSB7Ci0J
CQlfX2VudHJ5LT5taWIgPSBsZTE2X3RvX2NwdXAoKHUxNiAqKSBoaWYtPmJvZHkpOworCQkJX19l
bnRyeS0+bWliID0gbGUxNl90b19jcHVwKChfX2xlMTYgKiloaWYtPmJvZHkpOwogCQkJaGVhZGVy
X2xlbiA9IDQ7CiAJCX0gZWxzZSB7CiAJCQlfX2VudHJ5LT5taWIgPSAtMTsKLS0gCjIuMjYuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFp
bGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5s
aW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
