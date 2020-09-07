Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CFC25F78C
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 12:16:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B49148712C;
	Mon,  7 Sep 2020 10:16:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EHY373LPM4x1; Mon,  7 Sep 2020 10:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4331787101;
	Mon,  7 Sep 2020 10:16:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A92F81BF2FD
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:16:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A439486749
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:16:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ClepQDs4XAnK for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 10:16:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2070.outbound.protection.outlook.com [40.107.93.70])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 079DF86731
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 10:16:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BBWwFLB/IADBRri7eii2cFzqPib7ZaUvLy1/qhQiIYLxYiXZZOWHgcl5k+O5YblCqiIavuRPln0+76ux4veUZIXTWwiMrdY2f2D8mfrLkYPnF1XMg+5TGIDmJ3oYguvCEWLhnU415c1vABZL5GTMw0q7btnWKYi1mXeE5Zv10bzzfKPNTYkKA8H/SQusLLuDGumPoELkEn8HGUHx1mqIxssK/Njt+5VK9DY6yHHz7/tnoe2OaWbybehhqsKyG/FsfBsoOLXn2leg6LjXromvZ5AkZFK7XxzjeLDFiYaL72G1BLXISIyYQa+n6UM4WVnc2WrBJRnRR2rUGF1FH2fnKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Dy+pb+xeWU0Uyjl8xrkHSmYLx/Hl8HHhdR/L/9xnSw=;
 b=cO+20R8Ug7fKbdsZOqaeOS/nJlOdFMxWXRwaNWqMHMZDiBdd5dCgNJkCuf7NWKk4Y36+obzLpMGWKw62T3ZHgDTRN1mULTPh2f5ueNH+m2YwS/6dMgkUULiITiYQFxpFMdHS/W5j4u56r9+IGCxybRcNmb9mGtDs+T9XmujfAwNVFcUoygO2cfWBJXAMjZnUCZhsUe7F3ozYY8y3uJvlp+h/6LMdR/FCr6pqwnkIxIWfx2IUcQ0W/RyMHGrrQ/Db2rOObHkVHq9OG61aQL7DYf4xnDwNkMXkspySkafZu4ODiDjaai1X9XMsPsk2GDGdbKYzXzK0y1TG4BjUSqRT4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7Dy+pb+xeWU0Uyjl8xrkHSmYLx/Hl8HHhdR/L/9xnSw=;
 b=qAfmLBNdE8e0z4fOQiRPSzYVNIVnLHLTYq0gZPycCjOS89d7OFIjLHZq8NwI15tnmx/eI4cH42YKxFUglkLek/QqkOkIEyan1jKzw1mxEhSVjTUBfQuBqtAMnEpaTCJzcVoJJi0uj6ibtCQTdhwydJ/ZKwDzJ87tkHxwKA0Ik58=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2720.namprd11.prod.outlook.com (2603:10b6:805:56::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.15; Mon, 7 Sep
 2020 10:16:12 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 10:16:12 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 17/31] staging: wfx: drop useless struct hif_rx_flags
Date: Mon,  7 Sep 2020 12:15:07 +0200
Message-Id: <20200907101521.66082-18-Jerome.Pouiller@silabs.com>
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
 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 10:16:11 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 413e933b-37a2-45f3-77af-08d853170bfa
X-MS-TrafficTypeDiagnostic: SN6PR11MB2720:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2720F7F7174BCA74D41C65C293280@SN6PR11MB2720.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QiXQXbzQG13fdCabyzU8Rmb0CXkKv8gXK+tXKhG+pSodd0xVPO447XZTowfon/2vExje+4nsfH+rG+KvD3pNS2sVnLB2JN3pXJLITYPtwm7QXX980qUztFIy2lMKypGLjvma7+z/1iV5ni7So3Nm+DgMyibCzmlvXFPIMc5C0D8eTD7G1z5tMCcIc7IU+tPjLv3Vcb4oCk7ZW7YuMQF2sOvNwjbX6KH9rmZWlJsvnfqnCafFhzsimmQdlBZfRbdk0iiwgvFKPKw8kOUcH/hZ5/Zd9qsKzzoCLxERJ9LBmZN+HnzPs908rZFRtM0tkvKxhcImMBRchUsDzbSMPU3Udg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(366004)(39850400004)(136003)(346002)(396003)(66946007)(66556008)(66476007)(54906003)(26005)(186003)(16526019)(66574015)(83380400001)(107886003)(6486002)(8676002)(956004)(2616005)(2906002)(316002)(86362001)(8936002)(478600001)(4326008)(7696005)(36756003)(52116002)(6666004)(1076003)(5660300002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: hqD00ICtlbWXrkhKFUxg1RonrZ/l6NHa9c4PZYPUYRJgQtGRVAnIP3FImkXrehvQ0A4EDzEHaZzoLq6M/sDn23pM4DB867YI60cR/VGM0GWV0jgUeZc+/Nac83D6GEj6GLdCc9mpgUTLCgBPH5BaikOhvsAj7A17U4GSYgPQvlt82+Gr2hDbSXAdUpoN3ddeltmezzgz3tFS8MlYg7NKdDgSodnFT6ULzhPxA7WVJKAvMgRFw5Yhu7TC13Icz541quUNukpnIwaXyp7IY852d7g7aYKya8vC+Snbs0dFpSUQQIC58Ac6j60U81vOngNzIY+ekA1afgWKC5S3mdGOHUIctkUJ8PYP733Gie5LKqupkQSNlfDrmlpIlpGncnk7EEdMczK3u3Qs+ZFWfTSkaJrdITmnLM0sut9OMKVYPu2a40GpmF7bFsov1CSRtDdWH1My3vcnoFb33RwfIuOfJDKvJe4Ys5pK/yzUGc6g06JmU92I92upFN+cIAwgUlMM5w+bEHdwt8P1NghHSpKnwxgYAfVL45BQaHMV3LCdH97H+2kCTjDQxIH5oAKaQIrY58g29kgC/0rKEaYRgDJLQga+w6jg/YM3GcdwxlLt1REeKHxZ6MkgXg6f8SRbscYOWDOCyX2ijgOkp4dQeE/4cw==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 413e933b-37a2-45f3-77af-08d853170bfa
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 10:16:12.5411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nn3MXAEhz2k9VnkBJ+6vJrg7EZaMyn7OoLME7KtyB7Z5Z1kEMvJ4SDo7e8gc9pXux12P3HjqT9vogqLQ1qpoaA==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU3Ry
dWN0IGhpZl9yeF9mbGFncyBoYXMgbm8gcmVhc29uIHRvIGV4aXN0LiBEcm9wIGl0IGFuZCBzaW1w
bGlmeSBhY2Nlc3MKdG8gc3RydWN0IGhpZl9pbmRfcnguCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7Rt
ZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFn
aW5nL3dmeC9kYXRhX3J4LmMgICAgIHwgIDIgKy0KIGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2Fw
aV9jbWQuaCB8IDI1ICsrKysrKysrKystLS0tLS0tLS0tLS0tLS0KIDIgZmlsZXMgY2hhbmdlZCwg
MTEgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL3dmeC9kYXRhX3J4LmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfcnguYwppbmRl
eCA3ZmNiYmZjNTM0MTYuLmZlMTExZDBhYWI2MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5n
L3dmeC9kYXRhX3J4LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3J4LmMKQEAgLTcw
LDcgKzcwLDcgQEAgdm9pZCB3ZnhfcnhfY2Ioc3RydWN0IHdmeF92aWYgKnd2aWYsCiAJaGRyLT5z
aWduYWwgPSBhcmctPnJjcGlfcnNzaSAvIDIgLSAxMTA7CiAJaGRyLT5hbnRlbm5hID0gMDsKIAot
CWlmIChhcmctPnJ4X2ZsYWdzLmVuY3J5cCkKKwlpZiAoYXJnLT5lbmNyeXApCiAJCWhkci0+Zmxh
ZyB8PSBSWF9GTEFHX0RFQ1JZUFRFRDsKIAogCS8vIEJsb2NrIGFjayBuZWdvdGlhdGlvbiBpcyBv
ZmZsb2FkZWQgYnkgdGhlIGZpcm13YXJlLiBIb3dldmVyLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9z
dGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2Nt
ZC5oCmluZGV4IDZlY2IyM2NlYWY4Yy4uM2E2MGJkZjI4NmYzIDEwMDY0NAotLS0gYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2hpZl9hcGlfY21kLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZf
YXBpX2NtZC5oCkBAIC0yODMsNyArMjgzLDEyIEBAIGVudW0gaGlmX3JpX2ZsYWdzX2VuY3J5cHQg
ewogCUhJRl9SSV9GTEFHU19XQVBJX0VOQ1JZUFRFRCAgICAgICAgICAgICAgICA9IDB4NAogfTsK
IAotc3RydWN0IGhpZl9yeF9mbGFncyB7CitzdHJ1Y3QgaGlmX2luZF9yeCB7CisJX19sZTMyIHN0
YXR1czsKKwl1OCAgICAgY2hhbm5lbF9udW1iZXI7CisJdTggICAgIHJlc2VydmVkMTsKKwl1OCAg
ICAgcnhlZF9yYXRlOworCXU4ICAgICByY3BpX3Jzc2k7CiAJdTggICAgIGVuY3J5cDozOwogCXU4
ICAgICBpbl9hZ2dyOjE7CiAJdTggICAgIGZpcnN0X2FnZ3I6MTsKQEAgLTI5NSw3ICszMDAsNyBA
QCBzdHJ1Y3QgaGlmX3J4X2ZsYWdzIHsKIAl1OCAgICAgbWF0Y2hfc3NpZDoxOwogCXU4ICAgICBt
YXRjaF9ic3NpZDoxOwogCXU4ICAgICBtb3JlOjE7Ci0JdTggICAgIHJlc2VydmVkMToxOworCXU4
ICAgICByZXNlcnZlZDI6MTsKIAl1OCAgICAgaHQ6MTsKIAl1OCAgICAgc3RiYzoxOwogCXU4ICAg
ICBtYXRjaF91Y19hZGRyOjE7CkBAIC0zMDMsMjMgKzMwOCwxMyBAQCBzdHJ1Y3QgaGlmX3J4X2Zs
YWdzIHsKIAl1OCAgICAgbWF0Y2hfYmNfYWRkcjoxOwogCXU4ICAgICBrZXlfdHlwZToxOwogCXU4
ICAgICBrZXlfaW5kZXg6NDsKLQl1OCAgICAgcmVzZXJ2ZWQyOjE7CisJdTggICAgIHJlc2VydmVk
MzoxOwogCXU4ICAgICBwZWVyX3N0YV9pZDo0OwotCXU4ICAgICByZXNlcnZlZDM6MjsKLQl1OCAg
ICAgcmVzZXJ2ZWQ0OjE7Ci19IF9fcGFja2VkOwotCi1zdHJ1Y3QgaGlmX2luZF9yeCB7Ci0JX19s
ZTMyIHN0YXR1czsKLQl1OCAgICAgY2hhbm5lbF9udW1iZXI7Ci0JdTggICAgIHJlc2VydmVkOwot
CXU4ICAgICByeGVkX3JhdGU7Ci0JdTggICAgIHJjcGlfcnNzaTsKLQlzdHJ1Y3QgaGlmX3J4X2Zs
YWdzIHJ4X2ZsYWdzOworCXU4ICAgICByZXNlcnZlZDQ6MjsKKwl1OCAgICAgcmVzZXJ2ZWQ1OjE7
CiAJdTggICAgIGZyYW1lW107CiB9IF9fcGFja2VkOwogCi0KIHN0cnVjdCBoaWZfcmVxX2VkY2Ff
cXVldWVfcGFyYW1zIHsKIAl1OCAgICAgcXVldWVfaWQ7CiAJdTggICAgIHJlc2VydmVkMTsKLS0g
CjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
ZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2Ry
aXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2
LWRldmVsCg==
