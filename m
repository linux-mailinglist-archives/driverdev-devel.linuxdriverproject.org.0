Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A852B19F4A5
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 13:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5BC5B85A7D;
	Mon,  6 Apr 2020 11:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iYbjUN7ZXpTS; Mon,  6 Apr 2020 11:34:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3966885A22;
	Mon,  6 Apr 2020 11:34:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 64DFD1BF3DA
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 11:34:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 606312313D
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 11:34:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RpjsuQcNJUcr for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 11:34:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2082.outbound.protection.outlook.com [40.107.223.82])
 by silver.osuosl.org (Postfix) with ESMTPS id 3B691230F3
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 11:34:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SNvB/iuP7CYZoNfxUgIuxUP3l86EKMLxlzyVdYgbgD2EtfCd2rr2O86NBVm3TQ0i+InPxj5i3TBaUHV7u3yRgK+TNG2igOYXfBH1e0h8/0ZpK/z/PxltvDaW1N6UtrNlil+7vlJ3KT9s9Tm3UBUmWAtgEzfL22NRcEC0sAkvLEi/V2DpRUMDRm8O4BHuXKCLB8Tf5gjB3Nxpja3IOhCqrdfM6Ejq8HFgLwuY3z6blFxmH6bd3bR4XH45XKFIZSIWWEvVPQLgjqqqnUW70/nyyGdSRSass8rcF75ND+b0scvgKNhPW+B3mas8i/z38xDk+T2doGVb7taQ+7Gu/bbvnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3z3rQZPzgNRFufNngeRmpsg9Ig8nES0BjyreFi6pGgU=;
 b=H62EuYLEe/tal1e07yOn0cwxlGnlcC6oXdLrr8N43JLFtj3CG50QgfRbmajqvK75MXtKMVDz6ocxJo4KYpreh5L+CAWzJRZ0Xwkxhg9JxEeEBboZ6IxMC/PFIUb1sVDXv0D6sZmqVU9SUa+CU1yufCeCJQeGdCiYa7DBNZnYj8/4jqb2YzoZod1aZuilWqryeQ4GH1G0xniFvwP1/giFE0SHYXFQ37daq4cVi1x1oeaGHIgKA6s/uxyV+2g+5yQVTlhRR7Z2IRMXt4ZAULnAMN8/cgouPEmVqZhom1vuqSjHfXY8t1KszDxZ7ZeiksfyO2S/FWhqhpnTbnkfCL2+gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3z3rQZPzgNRFufNngeRmpsg9Ig8nES0BjyreFi6pGgU=;
 b=CwRRofGuq/Afuv09bn+mBvbIG0d2/O+NjQJMaWXAAck/l/HYkc8p/HC0QTQNkwhQ6+kwMv97vn+qLXW0Kvivd8Qg3z06P086FUWyWof6c2x8oUnitIPiyUCdGtM47VqwLLgI3OzK36AQJe19OkoB2cAPjBL0xPgSa7S4GWBTbSw=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from BN6PR11MB4052.namprd11.prod.outlook.com (2603:10b6:405:7a::37)
 by BN6PR11MB3860.namprd11.prod.outlook.com (2603:10b6:405:77::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15; Mon, 6 Apr
 2020 11:18:26 +0000
Received: from BN6PR11MB4052.namprd11.prod.outlook.com
 ([fe80::e0af:e9de:ffce:7376]) by BN6PR11MB4052.namprd11.prod.outlook.com
 ([fe80::e0af:e9de:ffce:7376%3]) with mapi id 15.20.2878.018; Mon, 6 Apr 2020
 11:18:26 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 06/11] staging: wfx: fix endianness of hif API
Date: Mon,  6 Apr 2020 13:17:51 +0200
Message-Id: <20200406111756.154086-7-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200406111756.154086-1-Jerome.Pouiller@silabs.com>
References: <20200406111756.154086-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM5PR05CA0010.namprd05.prod.outlook.com
 (2603:10b6:3:d4::20) To BN6PR11MB4052.namprd11.prod.outlook.com
 (2603:10b6:405:7a::37)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 DM5PR05CA0010.namprd05.prod.outlook.com (2603:10b6:3:d4::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.13 via Frontend Transport; Mon, 6 Apr 2020 11:18:24 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e005a737-d38c-414d-4376-08d7da1c39ef
X-MS-TrafficTypeDiagnostic: BN6PR11MB3860:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BN6PR11MB386049D284D1AB382D68C7B493C20@BN6PR11MB3860.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3513;
X-Forefront-PRVS: 0365C0E14B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR11MB4052.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(396003)(39850400004)(346002)(366004)(136003)(376002)(186003)(16526019)(7696005)(52116002)(36756003)(5660300002)(107886003)(316002)(54906003)(66946007)(66476007)(4326008)(2616005)(66556008)(1076003)(66574012)(81166006)(6666004)(6486002)(8936002)(2906002)(86362001)(30864003)(81156014)(8676002)(478600001);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /CNLeLy7PROcE9axT6asGzM+MEmuTl6Iyclv4yzTysGmsjpqKfWQqdoQrd6ceUXZICghKhUQDsLR8I4XDzTIwPRyrgsbFKDp25GwYex2GH9EBykbCW33KZULINhF9Q9JIZWdmquzecVGO+8iykt20guT4i14pkioES7aAzmG959FyPdBUqe5DNc2VaIf+on4dx6u2KjpKYOp/eXvnIOvE9qW9F4DQHy0722KcmLkb6dRrS1jVZA1oqjhMNvn/4iqVsnVZyzZnW/ls3P76UbEAIPAOLD8TaaI+a2h/XiggNctUIWMR1FK/9fPQhwCf7TgT4gOlZ5unSlKaPvpkzuKVhB+vdg2GgdluZUn4lnjw9LOwApnwvCbyXASGtHGvAki7Fepo4hB1jGfWbPiucmpY1ei+j7bsAfVWK7DDkiTvbS++nhwm7bPkCn73JTRXMxI
X-MS-Exchange-AntiSpam-MessageData: ya7fN4w/rJuc6PflHaHK+yH1vtiQ2nkQ1okH/64ESZXAJ0tRKJ+bVZWyh0vfu54Gvc7HMBxlM00s/0SPzF7UwXDNPLeULeVdErAT6Y7/vaFV/U/gYnk2/GcHDKXY9xOVgrnKoLBN/GgC+80ItuXkhtRxyqftzPraCtkyfyhL5ifwXiKcvWL6VISIFO+kWSBz3BzUoBzggSeSA3Pokh40Ig==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e005a737-d38c-414d-4376-08d7da1c39ef
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2020 11:18:26.5303 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UfgdCcna5o5vWbttUGVUf5iZsyDS8PCln/mmaGCRRm2WDlXfUCxPzhnrmTuKIKmIsmvxPTrxp5kVlMT//57dOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3860
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
IGNoaXAgZXhwZWN0cyBsaXR0bGUgZW5kaWFuIGluIGFsbCBzdHJ1Y3RzIGl0IHNlbmRzL3JlY2Vp
dmVzLiBUaGlzCnBhdGNoIGZpeGVzIHRoZSBoaWYgQVBJIHRvIHJlZmxlY3QgdGhpcyBmYWN0LiBT
cGFyc2Ugc2hvdWxkIG5vdyByZXBvcnQKbWVhbmluZ2Z1bCBlcnJvcnMuCgpTaWduZWQtb2ZmLWJ5
OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oICAgICB8IDEyMCArKysrKysrKysrKystLS0t
LS0tLS0tLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfZ2VuZXJhbC5oIHwgIDU2ICsr
KysrKy0tLS0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX21pYi5oICAgICB8IDEyNCAr
KysrKysrKysrKysrLS0tLS0tLS0tLS0tLQogMyBmaWxlcyBjaGFuZ2VkLCAxNTAgaW5zZXJ0aW9u
cygrKSwgMTUwIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
aGlmX2FwaV9jbWQuaCBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9jbWQuaAppbmRleCAz
MjFmNGZiMjdiMzUuLjgyYTlmNGFlNDU1NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9oaWZfYXBpX2NtZC5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9jbWQuaApA
QCAtOTQsMjUgKzk0LDI1IEBAIHN0cnVjdCBoaWZfcmVxX3Jlc2V0IHsKIH0gX19wYWNrZWQ7CiAK
IHN0cnVjdCBoaWZfcmVxX3JlYWRfbWliIHsKLQl1MTYgICBtaWJfaWQ7Ci0JdTE2ICAgcmVzZXJ2
ZWQ7CisJX19sZTE2IG1pYl9pZDsKKwlfX2xlMTYgcmVzZXJ2ZWQ7CiB9IF9fcGFja2VkOwogCiBz
dHJ1Y3QgaGlmX2NuZl9yZWFkX21pYiB7Ci0JdTMyICAgc3RhdHVzOwotCXUxNiAgIG1pYl9pZDsK
LQl1MTYgICBsZW5ndGg7CisJX19sZTMyIHN0YXR1czsKKwlfX2xlMTYgbWliX2lkOworCV9fbGUx
NiBsZW5ndGg7CiAJdTggICAgbWliX2RhdGFbXTsKIH0gX19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZf
cmVxX3dyaXRlX21pYiB7Ci0JdTE2ICAgbWliX2lkOwotCXUxNiAgIGxlbmd0aDsKKwlfX2xlMTYg
bWliX2lkOworCV9fbGUxNiBsZW5ndGg7CiAJdTggICAgbWliX2RhdGFbXTsKIH0gX19wYWNrZWQ7
CiAKIHN0cnVjdCBoaWZfY25mX3dyaXRlX21pYiB7Ci0JdTMyICAgc3RhdHVzOworCV9fbGUzMiBz
dGF0dXM7CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX2llX2ZsYWdzIHsKQEAgLTEzMSwxMiAr
MTMxLDEyIEBAIHN0cnVjdCBoaWZfaWVfdGx2IHsKIAogc3RydWN0IGhpZl9yZXFfdXBkYXRlX2ll
IHsKIAlzdHJ1Y3QgaGlmX2llX2ZsYWdzIGllX2ZsYWdzOwotCXUxNiAgIG51bV9pZXM7CisJX19s
ZTE2IG51bV9pZXM7CiAJc3RydWN0IGhpZl9pZV90bHYgaWVbXTsKIH0gX19wYWNrZWQ7CiAKIHN0
cnVjdCBoaWZfY25mX3VwZGF0ZV9pZSB7Ci0JdTMyICAgc3RhdHVzOworCV9fbGUzMiBzdGF0dXM7
CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX3NjYW5fdHlwZSB7CkBAIC0xNTMsMTMgKzE1Mywx
MyBAQCBzdHJ1Y3QgaGlmX3NjYW5fZmxhZ3MgewogfSBfX3BhY2tlZDsKIAogc3RydWN0IGhpZl9h
dXRvX3NjYW5fcGFyYW0gewotCXUxNiAgIGludGVydmFsOworCV9fbGUxNiBpbnRlcnZhbDsKIAl1
OCAgICByZXNlcnZlZDsKIAlzOCAgICAgcnNzaV90aHI7CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3Qg
aGlmX3NzaWRfZGVmIHsKLQl1MzIgICBzc2lkX2xlbmd0aDsKKwlfX2xlMzIgc3NpZF9sZW5ndGg7
CiAJdTggICAgc3NpZFtISUZfQVBJX1NTSURfU0laRV07CiB9IF9fcGFja2VkOwogCkBAIC0xNzYs
MTkgKzE3NiwxOSBAQCBzdHJ1Y3QgaGlmX3JlcV9zdGFydF9zY2FuX2FsdCB7CiAJdTggICAgcHJv
YmVfZGVsYXk7CiAJdTggICAgbnVtX29mX3NzaWRzOwogCXU4ICAgIG51bV9vZl9jaGFubmVsczsK
LQl1MzIgICBtaW5fY2hhbm5lbF90aW1lOwotCXUzMiAgIG1heF9jaGFubmVsX3RpbWU7Ci0JczMy
ICAgIHR4X3Bvd2VyX2xldmVsOworCV9fbGUzMiBtaW5fY2hhbm5lbF90aW1lOworCV9fbGUzMiBt
YXhfY2hhbm5lbF90aW1lOworCV9fbGUzMiB0eF9wb3dlcl9sZXZlbDsgLy8gc2lnbmVkIHZhbHVl
CiAJc3RydWN0IGhpZl9zc2lkX2RlZiBzc2lkX2RlZltISUZfQVBJX01BWF9OQl9TU0lEU107CiAJ
dTggICAgY2hhbm5lbF9saXN0W107CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX2NuZl9zdGFy
dF9zY2FuIHsKLQl1MzIgICBzdGF0dXM7CisJX19sZTMyIHN0YXR1czsKIH0gX19wYWNrZWQ7CiAK
IHN0cnVjdCBoaWZfY25mX3N0b3Bfc2NhbiB7Ci0JdTMyICAgc3RhdHVzOworCV9fbGUzMiBzdGF0
dXM7CiB9IF9fcGFja2VkOwogCiBlbnVtIGhpZl9wbV9tb2RlX3N0YXR1cyB7CkBAIC0xOTgsMTAg
KzE5OCwxMCBAQCBlbnVtIGhpZl9wbV9tb2RlX3N0YXR1cyB7CiB9OwogCiBzdHJ1Y3QgaGlmX2lu
ZF9zY2FuX2NtcGwgewotCXUzMiAgIHN0YXR1czsKKwlfX2xlMzIgc3RhdHVzOwogCXU4ICAgIHBt
X21vZGU7CiAJdTggICAgbnVtX2NoYW5uZWxzX2NvbXBsZXRlZDsKLQl1MTYgICByZXNlcnZlZDsK
KwlfX2xlMTYgcmVzZXJ2ZWQ7CiB9IF9fcGFja2VkOwogCiBlbnVtIGhpZl9xdWV1ZV9pZCB7CkBA
IC0yNTQsMTMgKzI1NCwxMyBAQCBzdHJ1Y3QgaGlmX2h0X3R4X3BhcmFtZXRlcnMgewogfSBfX3Bh
Y2tlZDsKIAogc3RydWN0IGhpZl9yZXFfdHggewotCXUzMiAgIHBhY2tldF9pZDsKKwlfX2xlMzIg
cGFja2V0X2lkOwogCXU4ICAgIG1heF90eF9yYXRlOwogCXN0cnVjdCBoaWZfcXVldWUgcXVldWVf
aWQ7CiAJc3RydWN0IGhpZl9kYXRhX2ZsYWdzIGRhdGFfZmxhZ3M7CiAJc3RydWN0IGhpZl90eF9m
bGFncyB0eF9mbGFnczsKLQl1MzIgICByZXNlcnZlZDsKLQl1MzIgICBleHBpcmVfdGltZTsKKwlf
X2xlMzIgcmVzZXJ2ZWQ7CisJX19sZTMyIGV4cGlyZV90aW1lOwogCXN0cnVjdCBoaWZfaHRfdHhf
cGFyYW1ldGVycyBodF90eF9wYXJhbWV0ZXJzOwogCXU4ICAgIGZyYW1lW107CiB9IF9fcGFja2Vk
OwpAQCAtMjgyLDE3ICsyODIsMTcgQEAgc3RydWN0IGhpZl90eF9yZXN1bHRfZmxhZ3MgewogfSBf
X3BhY2tlZDsKIAogc3RydWN0IGhpZl9jbmZfdHggewotCXUzMiAgIHN0YXR1czsKLQl1MzIgICBw
YWNrZXRfaWQ7CisJX19sZTMyIHN0YXR1czsKKwlfX2xlMzIgcGFja2V0X2lkOwogCXU4ICAgIHR4
ZWRfcmF0ZTsKIAl1OCAgICBhY2tfZmFpbHVyZXM7CiAJc3RydWN0IGhpZl90eF9yZXN1bHRfZmxh
Z3MgdHhfcmVzdWx0X2ZsYWdzOwotCXUzMiAgIG1lZGlhX2RlbGF5OwotCXUzMiAgIHR4X3F1ZXVl
X2RlbGF5OworCV9fbGUzMiBtZWRpYV9kZWxheTsKKwlfX2xlMzIgdHhfcXVldWVfZGVsYXk7CiB9
IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX2NuZl9tdWx0aV90cmFuc21pdCB7Ci0JdTMyICAgbnVt
X3R4X2NvbmZzOworCV9fbGUzMiBudW1fdHhfY29uZnM7CiAJc3RydWN0IGhpZl9jbmZfdHggICB0
eF9jb25mX3BheWxvYWRbXTsKIH0gX19wYWNrZWQ7CiAKQEAgLTMzMSw4ICszMzEsOCBAQCBzdHJ1
Y3QgaGlmX3J4X2ZsYWdzIHsKIH0gX19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZfaW5kX3J4IHsKLQl1
MzIgICBzdGF0dXM7Ci0JdTE2ICAgY2hhbm5lbF9udW1iZXI7CisJX19sZTMyIHN0YXR1czsKKwlf
X2xlMTYgY2hhbm5lbF9udW1iZXI7CiAJdTggICAgcnhlZF9yYXRlOwogCXU4ICAgIHJjcGlfcnNz
aTsKIAlzdHJ1Y3QgaGlmX3J4X2ZsYWdzIHJ4X2ZsYWdzOwpAQCAtMzQ1LDE1ICszNDUsMTUgQEAg
c3RydWN0IGhpZl9yZXFfZWRjYV9xdWV1ZV9wYXJhbXMgewogCXU4ICAgIHJlc2VydmVkMTsKIAl1
OCAgICBhaWZzbjsKIAl1OCAgICByZXNlcnZlZDI7Ci0JdTE2ICAgY3dfbWluOwotCXUxNiAgIGN3
X21heDsKLQl1MTYgICB0eF9vcF9saW1pdDsKLQl1MTYgICBhbGxvd2VkX21lZGl1bV90aW1lOwot
CXUzMiAgIHJlc2VydmVkMzsKKwlfX2xlMTYgY3dfbWluOworCV9fbGUxNiBjd19tYXg7CisJX19s
ZTE2IHR4X29wX2xpbWl0OworCV9fbGUxNiBhbGxvd2VkX21lZGl1bV90aW1lOworCV9fbGUzMiBy
ZXNlcnZlZDM7CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX2NuZl9lZGNhX3F1ZXVlX3BhcmFt
cyB7Ci0JdTMyICAgc3RhdHVzOworCV9fbGUzMiBzdGF0dXM7CiB9IF9fcGFja2VkOwogCiBzdHJ1
Y3QgaGlmX2pvaW5fZmxhZ3MgewpAQCAtMzY3LDI2ICszNjcsMjYgQEAgc3RydWN0IGhpZl9yZXFf
am9pbiB7CiAJdTggICAgaW5mcmFzdHJ1Y3R1cmVfYnNzX21vZGU6MTsKIAl1OCAgICByZXNlcnZl
ZDE6NzsKIAl1OCAgICBiYW5kOwotCXUxNiAgIGNoYW5uZWxfbnVtYmVyOworCV9fbGUxNiBjaGFu
bmVsX251bWJlcjsKIAl1OCAgICBic3NpZFtFVEhfQUxFTl07Ci0JdTE2ICAgYXRpbV93aW5kb3c7
CisJX19sZTE2IGF0aW1fd2luZG93OwogCXU4ICAgIHNob3J0X3ByZWFtYmxlOjE7CiAJdTggICAg
cmVzZXJ2ZWQyOjc7CiAJdTggICAgcHJvYmVfZm9yX2pvaW47CiAJdTggICAgcmVzZXJ2ZWQzOwog
CXN0cnVjdCBoaWZfam9pbl9mbGFncyBqb2luX2ZsYWdzOwotCXUzMiAgIHNzaWRfbGVuZ3RoOwor
CV9fbGUzMiBzc2lkX2xlbmd0aDsKIAl1OCAgICBzc2lkW0hJRl9BUElfU1NJRF9TSVpFXTsKLQl1
MzIgICBiZWFjb25faW50ZXJ2YWw7Ci0JdTMyICAgYmFzaWNfcmF0ZV9zZXQ7CisJX19sZTMyIGJl
YWNvbl9pbnRlcnZhbDsKKwlfX2xlMzIgYmFzaWNfcmF0ZV9zZXQ7CiB9IF9fcGFja2VkOwogCiBz
dHJ1Y3QgaGlmX2NuZl9qb2luIHsKLQl1MzIgICBzdGF0dXM7CisJX19sZTMyIHN0YXR1czsKIH0g
X19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZfaW5kX2pvaW5fY29tcGxldGUgewotCXUzMiAgIHN0YXR1
czsKKwlfX2xlMzIgc3RhdHVzOwogfSBfX3BhY2tlZDsKIAogc3RydWN0IGhpZl9ic3NfZmxhZ3Mg
ewpAQCAtMzk3LDEyICszOTcsMTIgQEAgc3RydWN0IGhpZl9ic3NfZmxhZ3Mgewogc3RydWN0IGhp
Zl9yZXFfc2V0X2Jzc19wYXJhbXMgewogCXN0cnVjdCBoaWZfYnNzX2ZsYWdzIGJzc19mbGFnczsK
IAl1OCAgICBiZWFjb25fbG9zdF9jb3VudDsKLQl1MTYgICBhaWQ7Ci0JdTMyICAgb3BlcmF0aW9u
YWxfcmF0ZV9zZXQ7CisJX19sZTE2IGFpZDsKKwlfX2xlMzIgb3BlcmF0aW9uYWxfcmF0ZV9zZXQ7
CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX2NuZl9zZXRfYnNzX3BhcmFtcyB7Ci0JdTMyICAg
c3RhdHVzOworCV9fbGUzMiBzdGF0dXM7CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX3BtX21v
ZGUgewpAQCAtNDE5LDExICs0MTksMTEgQEAgc3RydWN0IGhpZl9yZXFfc2V0X3BtX21vZGUgewog
fSBfX3BhY2tlZDsKIAogc3RydWN0IGhpZl9jbmZfc2V0X3BtX21vZGUgewotCXUzMiAgIHN0YXR1
czsKKwlfX2xlMzIgc3RhdHVzOwogfSBfX3BhY2tlZDsKIAogc3RydWN0IGhpZl9pbmRfc2V0X3Bt
X21vZGVfY21wbCB7Ci0JdTMyICAgc3RhdHVzOworCV9fbGUzMiBzdGF0dXM7CiAJdTggICAgcG1f
bW9kZTsKIAl1OCAgICByZXNlcnZlZFszXTsKIH0gX19wYWNrZWQ7CkBAIC00MzIsMjAgKzQzMiwy
MCBAQCBzdHJ1Y3QgaGlmX2luZF9zZXRfcG1fbW9kZV9jbXBsIHsKIHN0cnVjdCBoaWZfcmVxX3N0
YXJ0IHsKIAl1OCAgICBtb2RlOwogCXU4ICAgIGJhbmQ7Ci0JdTE2ICAgY2hhbm5lbF9udW1iZXI7
Ci0JdTMyICAgcmVzZXJ2ZWQxOwotCXUzMiAgIGJlYWNvbl9pbnRlcnZhbDsKKwlfX2xlMTYgY2hh
bm5lbF9udW1iZXI7CisJX19sZTMyIHJlc2VydmVkMTsKKwlfX2xlMzIgYmVhY29uX2ludGVydmFs
OwogCXU4ICAgIGR0aW1fcGVyaW9kOwogCXU4ICAgIHNob3J0X3ByZWFtYmxlOjE7CiAJdTggICAg
cmVzZXJ2ZWQyOjc7CiAJdTggICAgcmVzZXJ2ZWQzOwogCXU4ICAgIHNzaWRfbGVuZ3RoOwogCXU4
ICAgIHNzaWRbSElGX0FQSV9TU0lEX1NJWkVdOwotCXUzMiAgIGJhc2ljX3JhdGVfc2V0OworCV9f
bGUzMiBiYXNpY19yYXRlX3NldDsKIH0gX19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZfY25mX3N0YXJ0
IHsKLQl1MzIgICBzdGF0dXM7CisJX19sZTMyIHN0YXR1czsKIH0gX19wYWNrZWQ7CiAKIGVudW0g
aGlmX2JlYWNvbiB7CkBAIC00NTksNyArNDU5LDcgQEAgc3RydWN0IGhpZl9yZXFfYmVhY29uX3Ry
YW5zbWl0IHsKIH0gX19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZfY25mX2JlYWNvbl90cmFuc21pdCB7
Ci0JdTMyICAgc3RhdHVzOworCV9fbGUzMiBzdGF0dXM7CiB9IF9fcGFja2VkOwogCiAjZGVmaW5l
IEhJRl9MSU5LX0lEX01BWCAgICAgICAgICAgIDE0CkBAIC00ODMsNyArNDgzLDcgQEAgc3RydWN0
IGhpZl9yZXFfbWFwX2xpbmsgewogfSBfX3BhY2tlZDsKIAogc3RydWN0IGhpZl9jbmZfbWFwX2xp
bmsgewotCXUzMiAgIHN0YXR1czsKKwlfX2xlMzIgc3RhdHVzOwogfSBfX3BhY2tlZDsKIAogc3Ry
dWN0IGhpZl9zdXNwZW5kX3Jlc3VtZV9mbGFncyB7CkBAIC00OTYsNyArNDk2LDcgQEAgc3RydWN0
IGhpZl9zdXNwZW5kX3Jlc3VtZV9mbGFncyB7CiAKIHN0cnVjdCBoaWZfaW5kX3N1c3BlbmRfcmVz
dW1lX3R4IHsKIAlzdHJ1Y3QgaGlmX3N1c3BlbmRfcmVzdW1lX2ZsYWdzIHN1c3BlbmRfcmVzdW1l
X2ZsYWdzOwotCXUxNiAgIHBlZXJfc3RhX3NldDsKKwlfX2xlMTYgcGVlcl9zdGFfc2V0OwogfSBf
X3BhY2tlZDsKIAogCkBAIC02MTIsNyArNjEyLDcgQEAgc3RydWN0IGhpZl9yZXFfYWRkX2tleSB7
CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX2NuZl9hZGRfa2V5IHsKLQl1MzIgICBzdGF0dXM7
CisJX19sZTMyIHN0YXR1czsKIH0gX19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZfcmVxX3JlbW92ZV9r
ZXkgewpAQCAtNjIxLDcgKzYyMSw3IEBAIHN0cnVjdCBoaWZfcmVxX3JlbW92ZV9rZXkgewogfSBf
X3BhY2tlZDsKIAogc3RydWN0IGhpZl9jbmZfcmVtb3ZlX2tleSB7Ci0JdTMyICAgc3RhdHVzOwor
CV9fbGUzMiBzdGF0dXM7CiB9IF9fcGFja2VkOwogCiBlbnVtIGhpZl9ldmVudF9pbmQgewpAQCAt
NjQyLDEyICs2NDIsMTIgQEAgZW51bSBoaWZfcHNfbW9kZV9lcnJvciB7CiAKIHVuaW9uIGhpZl9l
dmVudF9kYXRhIHsKIAl1OCAgICByY3BpX3Jzc2k7Ci0JdTMyICAgcHNfbW9kZV9lcnJvcjsKLQl1
MzIgICBwZWVyX3N0YV9zZXQ7CisJX19sZTMyIHBzX21vZGVfZXJyb3I7CisJX19sZTMyIHBlZXJf
c3RhX3NldDsKIH07CiAKIHN0cnVjdCBoaWZfaW5kX2V2ZW50IHsKLQl1MzIgICBldmVudF9pZDsK
KwlfX2xlMzIgZXZlbnRfaWQ7CiAJdW5pb24gaGlmX2V2ZW50X2RhdGEgZXZlbnRfZGF0YTsKIH0g
X19wYWNrZWQ7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9nZW5l
cmFsLmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfZ2VuZXJhbC5oCmluZGV4IGM1OGI5
YTFlZmYzZC4uNWZmODZlNTU2MTgyIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hp
Zl9hcGlfZ2VuZXJhbC5oCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvaGlmX2FwaV9nZW5lcmFs
LmgKQEAgLTIzLDcgKzIzLDcgQEAKICNkZWZpbmUgSElGX0NPVU5URVJfTUFYICAgICAgICAgICAg
ICAgICAgICA3CiAKIHN0cnVjdCBoaWZfbXNnIHsKLQl1MTYgICAgbGVuOworCV9fbGUxNiBsZW47
CiAJdTggICAgIGlkOwogCXU4ICAgICByZXNlcnZlZDoxOwogCXU4ICAgICBpbnRlcmZhY2U6MjsK
QEAgLTEzNiwxMiArMTM2LDEyIEBAIHN0cnVjdCBoaWZfb3RwX3BoeV9pbmZvIHsKIH0gX19wYWNr
ZWQ7CiAKIHN0cnVjdCBoaWZfaW5kX3N0YXJ0dXAgewotCXUzMiAgIHN0YXR1czsKLQl1MTYgICBo
YXJkd2FyZV9pZDsKKwlfX2xlMzIgc3RhdHVzOworCV9fbGUxNiBoYXJkd2FyZV9pZDsKIAl1OCAg
ICBvcG5bMTRdOwogCXU4ICAgIHVpZFs4XTsKLQl1MTYgICBudW1faW5wX2NoX2J1ZnM7Ci0JdTE2
ICAgc2l6ZV9pbnBfY2hfYnVmOworCV9fbGUxNiBudW1faW5wX2NoX2J1ZnM7CisJX19sZTE2IHNp
emVfaW5wX2NoX2J1ZjsKIAl1OCAgICBudW1fbGlua3NfYXA7CiAJdTggICAgbnVtX2ludGVyZmFj
ZXM7CiAJdTggICAgbWFjX2FkZHJbMl1bRVRIX0FMRU5dOwpAQCAtMTU1LDcgKzE1NSw3IEBAIHN0
cnVjdCBoaWZfaW5kX3N0YXJ0dXAgewogCXU4ICAgIGRpc2FibGVkX2NoYW5uZWxfbGlzdFsyXTsK
IAlzdHJ1Y3QgaGlmX290cF9yZWd1bF9zZWxfbW9kZV9pbmZvIHJlZ3VsX3NlbF9tb2RlX2luZm87
CiAJc3RydWN0IGhpZl9vdHBfcGh5X2luZm8gb3RwX3BoeV9pbmZvOwotCXUzMiAgIHN1cHBvcnRl
ZF9yYXRlX21hc2s7CisJX19sZTMyIHN1cHBvcnRlZF9yYXRlX21hc2s7CiAJdTggICAgZmlybXdh
cmVfbGFiZWxbMTI4XTsKIH0gX19wYWNrZWQ7CiAKQEAgLTE2MywxMiArMTYzLDEyIEBAIHN0cnVj
dCBoaWZfaW5kX3dha2V1cCB7CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX3JlcV9jb25maWd1
cmF0aW9uIHsKLQl1MTYgICBsZW5ndGg7CisJX19sZTE2IGxlbmd0aDsKIAl1OCAgICBwZHNfZGF0
YVtdOwogfSBfX3BhY2tlZDsKIAogc3RydWN0IGhpZl9jbmZfY29uZmlndXJhdGlvbiB7Ci0JdTMy
ICAgc3RhdHVzOworCV9fbGUzMiBzdGF0dXM7CiB9IF9fcGFja2VkOwogCiBlbnVtIGhpZl9ncGlv
X21vZGUgewpAQCAtMTg3LDggKzE4Nyw4IEBAIHN0cnVjdCBoaWZfcmVxX2NvbnRyb2xfZ3BpbyB7
CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX2NuZl9jb250cm9sX2dwaW8gewotCXUzMiBzdGF0
dXM7Ci0JdTMyIHZhbHVlOworCV9fbGUzMiBzdGF0dXM7CisJX19sZTMyIHZhbHVlOwogfSBfX3Bh
Y2tlZDsKIAogZW51bSBoaWZfZ2VuZXJpY19pbmRpY2F0aW9uX3R5cGUgewpAQCAtMTk4LDE3ICsx
OTgsMTcgQEAgZW51bSBoaWZfZ2VuZXJpY19pbmRpY2F0aW9uX3R5cGUgewogfTsKIAogc3RydWN0
IGhpZl9yeF9zdGF0cyB7Ci0JdTMyICAgbmJfcnhfZnJhbWU7Ci0JdTMyICAgbmJfY3JjX2ZyYW1l
OwotCXUzMiAgIHBlcl90b3RhbDsKLQl1MzIgICB0aHJvdWdocHV0OwotCXUzMiAgIG5iX3J4X2J5
X3JhdGVbQVBJX1JBVEVfTlVNX0VOVFJJRVNdOwotCXUxNiAgIHBlcltBUElfUkFURV9OVU1fRU5U
UklFU107Ci0JczE2ICAgIHNucltBUElfUkFURV9OVU1fRU5UUklFU107Ci0JczE2ICAgIHJzc2lb
QVBJX1JBVEVfTlVNX0VOVFJJRVNdOwotCXMxNiAgICBjZm9bQVBJX1JBVEVfTlVNX0VOVFJJRVNd
OwotCXUzMiAgIGRhdGU7Ci0JdTMyICAgcHdyX2Nsa19mcmVxOworCV9fbGUzMiBuYl9yeF9mcmFt
ZTsKKwlfX2xlMzIgbmJfY3JjX2ZyYW1lOworCV9fbGUzMiBwZXJfdG90YWw7CisJX19sZTMyIHRo
cm91Z2hwdXQ7CisJX19sZTMyIG5iX3J4X2J5X3JhdGVbQVBJX1JBVEVfTlVNX0VOVFJJRVNdOwor
CV9fbGUxNiBwZXJbQVBJX1JBVEVfTlVNX0VOVFJJRVNdOworCV9fbGUxNiBzbnJbQVBJX1JBVEVf
TlVNX0VOVFJJRVNdOyAgLy8gc2lnbmVkIHZhbHVlCisJX19sZTE2IHJzc2lbQVBJX1JBVEVfTlVN
X0VOVFJJRVNdOyAvLyBzaWduZWQgdmFsdWUKKwlfX2xlMTYgY2ZvW0FQSV9SQVRFX05VTV9FTlRS
SUVTXTsgIC8vIHNpZ25lZCB2YWx1ZQorCV9fbGUzMiBkYXRlOworCV9fbGUzMiBwd3JfY2xrX2Zy
ZXE7CiAJdTggICAgaXNfZXh0X3B3cl9jbGs7CiAJczggICAgIGN1cnJlbnRfdGVtcDsKIH0gX19w
YWNrZWQ7CkBAIC0yMTksNyArMjE5LDcgQEAgdW5pb24gaGlmX2luZGljYXRpb25fZGF0YSB7CiB9
OwogCiBzdHJ1Y3QgaGlmX2luZF9nZW5lcmljIHsKLQl1MzIgaW5kaWNhdGlvbl90eXBlOworCV9f
bGUzMiBpbmRpY2F0aW9uX3R5cGU7CiAJdW5pb24gaGlmX2luZGljYXRpb25fZGF0YSBpbmRpY2F0
aW9uX2RhdGE7CiB9IF9fcGFja2VkOwogCkBAIC0yNDQsNyArMjQ0LDcgQEAgZW51bSBoaWZfZXJy
b3IgewogfTsKIAogc3RydWN0IGhpZl9pbmRfZXJyb3IgewotCXUzMiAgIHR5cGU7CisJX19sZTMy
IHR5cGU7CiAJdTggICAgZGF0YVtdOwogfSBfX3BhY2tlZDsKIApAQCAtMjY5LDcgKzI2OSw3IEBA
IHN0cnVjdCBoaWZfc2xfbXNnX2hkciB7CiAKIHN0cnVjdCBoaWZfc2xfbXNnIHsKIAlzdHJ1Y3Qg
aGlmX3NsX21zZ19oZHIgaGRyOwotCXUxNiAgICAgICAgbGVuOworCV9fbGUxNiBsZW47CiAJdTgg
ICAgICAgICBwYXlsb2FkW107CiB9IF9fcGFja2VkOwogCkBAIC0yOTIsNyArMjkyLDcgQEAgc3Ry
dWN0IGhpZl9yZXFfc2V0X3NsX21hY19rZXkgewogfSBfX3BhY2tlZDsKIAogc3RydWN0IGhpZl9j
bmZfc2V0X3NsX21hY19rZXkgewotCXUzMiAgIHN0YXR1czsKKwlfX2xlMzIgc3RhdHVzOwogfSBf
X3BhY2tlZDsKIAogZW51bSBoaWZfc2xfc2Vzc2lvbl9rZXlfYWxnIHsKQEAgLTMxMiwxNCArMzEy
LDE0IEBAIHN0cnVjdCBoaWZfcmVxX3NsX2V4Y2hhbmdlX3B1Yl9rZXlzIHsKIH0gX19wYWNrZWQ7
CiAKIHN0cnVjdCBoaWZfY25mX3NsX2V4Y2hhbmdlX3B1Yl9rZXlzIHsKLQl1MzIgICBzdGF0dXM7
CisJX19sZTMyIHN0YXR1czsKIH0gX19wYWNrZWQ7CiAKICNkZWZpbmUgQVBJX05DUF9QVUJfS0VZ
X1NJWkUgICAgICAgICAgICAgICAgICAgICAgICAgICAgMzIKICNkZWZpbmUgQVBJX05DUF9QVUJf
S0VZX01BQ19TSVpFICAgICAgICAgICAgICAgICAgICAgICAgNjQKIAogc3RydWN0IGhpZl9pbmRf
c2xfZXhjaGFuZ2VfcHViX2tleXMgewotCXUzMiAgIHN0YXR1czsKKwlfX2xlMzIgc3RhdHVzOwog
CXU4ICAgIG5jcF9wdWJfa2V5W0FQSV9OQ1BfUFVCX0tFWV9TSVpFXTsKIAl1OCAgICBuY3BfcHVi
X2tleV9tYWNbQVBJX05DUF9QVUJfS0VZX01BQ19TSVpFXTsKIH0gX19wYWNrZWQ7CkBAIC0zMzIs
NyArMzMyLDcgQEAgc3RydWN0IGhpZl9yZXFfc2xfY29uZmlndXJlIHsKIH0gX19wYWNrZWQ7CiAK
IHN0cnVjdCBoaWZfY25mX3NsX2NvbmZpZ3VyZSB7Ci0JdTMyIHN0YXR1czsKKwlfX2xlMzIgc3Rh
dHVzOwogfSBfX3BhY2tlZDsKIAogI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2hpZl9hcGlfbWliLmggYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfbWliLmgKaW5k
ZXggZTZkMDU3ODk3MjBjLi5jZDFjM2ZkMzdkMWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy93ZngvaGlmX2FwaV9taWIuaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9hcGlfbWli
LmgKQEAgLTE2MSw3ICsxNjEsNyBAQCBzdHJ1Y3QgaGlmX2llX3RhYmxlX2VudHJ5IHsKIH0gX19w
YWNrZWQ7CiAKIHN0cnVjdCBoaWZfbWliX2Jjbl9maWx0ZXJfdGFibGUgewotCXUzMiAgIG51bV9v
Zl9pbmZvX2VsbXRzOworCV9fbGUzMiBudW1fb2ZfaW5mb19lbG10czsKIAlzdHJ1Y3QgaGlmX2ll
X3RhYmxlX2VudHJ5IGllX3RhYmxlW107CiB9IF9fcGFja2VkOwogCkBAIC0xNzIsNjggKzE3Miw2
OCBAQCBlbnVtIGhpZl9iZWFjb25fZmlsdGVyIHsKIH07CiAKIHN0cnVjdCBoaWZfbWliX2Jjbl9m
aWx0ZXJfZW5hYmxlIHsKLQl1MzIgICBlbmFibGU7Ci0JdTMyICAgYmNuX2NvdW50OworCV9fbGUz
MiBlbmFibGU7CisJX19sZTMyIGJjbl9jb3VudDsKIH0gX19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZf
bWliX2V4dGVuZGVkX2NvdW50X3RhYmxlIHsKLQl1MzIgICBjb3VudF9wbGNwX2Vycm9yczsKLQl1
MzIgICBjb3VudF9mY3NfZXJyb3JzOwotCXUzMiAgIGNvdW50X3R4X3BhY2tldHM7Ci0JdTMyICAg
Y291bnRfcnhfcGFja2V0czsKLQl1MzIgICBjb3VudF9yeF9wYWNrZXRfZXJyb3JzOwotCXUzMiAg
IGNvdW50X3J4X2RlY3J5cHRpb25fZmFpbHVyZXM7Ci0JdTMyICAgY291bnRfcnhfbWljX2ZhaWx1
cmVzOwotCXUzMiAgIGNvdW50X3J4X25vX2tleV9mYWlsdXJlczsKLQl1MzIgICBjb3VudF90eF9t
dWx0aWNhc3RfZnJhbWVzOwotCXUzMiAgIGNvdW50X3R4X2ZyYW1lc19zdWNjZXNzOwotCXUzMiAg
IGNvdW50X3R4X2ZyYW1lX2ZhaWx1cmVzOwotCXUzMiAgIGNvdW50X3R4X2ZyYW1lc19yZXRyaWVk
OwotCXUzMiAgIGNvdW50X3R4X2ZyYW1lc19tdWx0aV9yZXRyaWVkOwotCXUzMiAgIGNvdW50X3J4
X2ZyYW1lX2R1cGxpY2F0ZXM7Ci0JdTMyICAgY291bnRfcnRzX3N1Y2Nlc3M7Ci0JdTMyICAgY291
bnRfcnRzX2ZhaWx1cmVzOwotCXUzMiAgIGNvdW50X2Fja19mYWlsdXJlczsKLQl1MzIgICBjb3Vu
dF9yeF9tdWx0aWNhc3RfZnJhbWVzOwotCXUzMiAgIGNvdW50X3J4X2ZyYW1lc19zdWNjZXNzOwot
CXUzMiAgIGNvdW50X3J4X2NtYWNpY3ZfZXJyb3JzOwotCXUzMiAgIGNvdW50X3J4X2NtYWNfcmVw
bGF5czsKLQl1MzIgICBjb3VudF9yeF9tZ210X2NjbXBfcmVwbGF5czsKLQl1MzIgICBjb3VudF9y
eF9iaXBtaWNfZXJyb3JzOwotCXUzMiAgIGNvdW50X3J4X2JlYWNvbjsKLQl1MzIgICBjb3VudF9t
aXNzX2JlYWNvbjsKLQl1MzIgICByZXNlcnZlZFsxNV07CisJX19sZTMyIGNvdW50X3BsY3BfZXJy
b3JzOworCV9fbGUzMiBjb3VudF9mY3NfZXJyb3JzOworCV9fbGUzMiBjb3VudF90eF9wYWNrZXRz
OworCV9fbGUzMiBjb3VudF9yeF9wYWNrZXRzOworCV9fbGUzMiBjb3VudF9yeF9wYWNrZXRfZXJy
b3JzOworCV9fbGUzMiBjb3VudF9yeF9kZWNyeXB0aW9uX2ZhaWx1cmVzOworCV9fbGUzMiBjb3Vu
dF9yeF9taWNfZmFpbHVyZXM7CisJX19sZTMyIGNvdW50X3J4X25vX2tleV9mYWlsdXJlczsKKwlf
X2xlMzIgY291bnRfdHhfbXVsdGljYXN0X2ZyYW1lczsKKwlfX2xlMzIgY291bnRfdHhfZnJhbWVz
X3N1Y2Nlc3M7CisJX19sZTMyIGNvdW50X3R4X2ZyYW1lX2ZhaWx1cmVzOworCV9fbGUzMiBjb3Vu
dF90eF9mcmFtZXNfcmV0cmllZDsKKwlfX2xlMzIgY291bnRfdHhfZnJhbWVzX211bHRpX3JldHJp
ZWQ7CisJX19sZTMyIGNvdW50X3J4X2ZyYW1lX2R1cGxpY2F0ZXM7CisJX19sZTMyIGNvdW50X3J0
c19zdWNjZXNzOworCV9fbGUzMiBjb3VudF9ydHNfZmFpbHVyZXM7CisJX19sZTMyIGNvdW50X2Fj
a19mYWlsdXJlczsKKwlfX2xlMzIgY291bnRfcnhfbXVsdGljYXN0X2ZyYW1lczsKKwlfX2xlMzIg
Y291bnRfcnhfZnJhbWVzX3N1Y2Nlc3M7CisJX19sZTMyIGNvdW50X3J4X2NtYWNpY3ZfZXJyb3Jz
OworCV9fbGUzMiBjb3VudF9yeF9jbWFjX3JlcGxheXM7CisJX19sZTMyIGNvdW50X3J4X21nbXRf
Y2NtcF9yZXBsYXlzOworCV9fbGUzMiBjb3VudF9yeF9iaXBtaWNfZXJyb3JzOworCV9fbGUzMiBj
b3VudF9yeF9iZWFjb247CisJX19sZTMyIGNvdW50X21pc3NfYmVhY29uOworCV9fbGUzMiByZXNl
cnZlZFsxNV07CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX21pYl9jb3VudF90YWJsZSB7Ci0J
dTMyICAgY291bnRfcGxjcF9lcnJvcnM7Ci0JdTMyICAgY291bnRfZmNzX2Vycm9yczsKLQl1MzIg
ICBjb3VudF90eF9wYWNrZXRzOwotCXUzMiAgIGNvdW50X3J4X3BhY2tldHM7Ci0JdTMyICAgY291
bnRfcnhfcGFja2V0X2Vycm9yczsKLQl1MzIgICBjb3VudF9yeF9kZWNyeXB0aW9uX2ZhaWx1cmVz
OwotCXUzMiAgIGNvdW50X3J4X21pY19mYWlsdXJlczsKLQl1MzIgICBjb3VudF9yeF9ub19rZXlf
ZmFpbHVyZXM7Ci0JdTMyICAgY291bnRfdHhfbXVsdGljYXN0X2ZyYW1lczsKLQl1MzIgICBjb3Vu
dF90eF9mcmFtZXNfc3VjY2VzczsKLQl1MzIgICBjb3VudF90eF9mcmFtZV9mYWlsdXJlczsKLQl1
MzIgICBjb3VudF90eF9mcmFtZXNfcmV0cmllZDsKLQl1MzIgICBjb3VudF90eF9mcmFtZXNfbXVs
dGlfcmV0cmllZDsKLQl1MzIgICBjb3VudF9yeF9mcmFtZV9kdXBsaWNhdGVzOwotCXUzMiAgIGNv
dW50X3J0c19zdWNjZXNzOwotCXUzMiAgIGNvdW50X3J0c19mYWlsdXJlczsKLQl1MzIgICBjb3Vu
dF9hY2tfZmFpbHVyZXM7Ci0JdTMyICAgY291bnRfcnhfbXVsdGljYXN0X2ZyYW1lczsKLQl1MzIg
ICBjb3VudF9yeF9mcmFtZXNfc3VjY2VzczsKLQl1MzIgICBjb3VudF9yeF9jbWFjaWN2X2Vycm9y
czsKLQl1MzIgICBjb3VudF9yeF9jbWFjX3JlcGxheXM7Ci0JdTMyICAgY291bnRfcnhfbWdtdF9j
Y21wX3JlcGxheXM7Ci0JdTMyICAgY291bnRfcnhfYmlwbWljX2Vycm9yczsKKwlfX2xlMzIgY291
bnRfcGxjcF9lcnJvcnM7CisJX19sZTMyIGNvdW50X2Zjc19lcnJvcnM7CisJX19sZTMyIGNvdW50
X3R4X3BhY2tldHM7CisJX19sZTMyIGNvdW50X3J4X3BhY2tldHM7CisJX19sZTMyIGNvdW50X3J4
X3BhY2tldF9lcnJvcnM7CisJX19sZTMyIGNvdW50X3J4X2RlY3J5cHRpb25fZmFpbHVyZXM7CisJ
X19sZTMyIGNvdW50X3J4X21pY19mYWlsdXJlczsKKwlfX2xlMzIgY291bnRfcnhfbm9fa2V5X2Zh
aWx1cmVzOworCV9fbGUzMiBjb3VudF90eF9tdWx0aWNhc3RfZnJhbWVzOworCV9fbGUzMiBjb3Vu
dF90eF9mcmFtZXNfc3VjY2VzczsKKwlfX2xlMzIgY291bnRfdHhfZnJhbWVfZmFpbHVyZXM7CisJ
X19sZTMyIGNvdW50X3R4X2ZyYW1lc19yZXRyaWVkOworCV9fbGUzMiBjb3VudF90eF9mcmFtZXNf
bXVsdGlfcmV0cmllZDsKKwlfX2xlMzIgY291bnRfcnhfZnJhbWVfZHVwbGljYXRlczsKKwlfX2xl
MzIgY291bnRfcnRzX3N1Y2Nlc3M7CisJX19sZTMyIGNvdW50X3J0c19mYWlsdXJlczsKKwlfX2xl
MzIgY291bnRfYWNrX2ZhaWx1cmVzOworCV9fbGUzMiBjb3VudF9yeF9tdWx0aWNhc3RfZnJhbWVz
OworCV9fbGUzMiBjb3VudF9yeF9mcmFtZXNfc3VjY2VzczsKKwlfX2xlMzIgY291bnRfcnhfY21h
Y2ljdl9lcnJvcnM7CisJX19sZTMyIGNvdW50X3J4X2NtYWNfcmVwbGF5czsKKwlfX2xlMzIgY291
bnRfcnhfbWdtdF9jY21wX3JlcGxheXM7CisJX19sZTMyIGNvdW50X3J4X2JpcG1pY19lcnJvcnM7
CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX21pYl9tYWNfYWRkcmVzcyB7CiAJdTggICAgbWFj
X2FkZHJbRVRIX0FMRU5dOwotCXUxNiAgIHJlc2VydmVkOworCV9fbGUxNiByZXNlcnZlZDsKIH0g
X19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZfbWliX3dlcF9kZWZhdWx0X2tleV9pZCB7CkBAIC0yNDIs
MTUgKzI0MiwxNSBAQCBzdHJ1Y3QgaGlmX21pYl93ZXBfZGVmYXVsdF9rZXlfaWQgewogfSBfX3Bh
Y2tlZDsKIAogc3RydWN0IGhpZl9taWJfZG90MTFfcnRzX3RocmVzaG9sZCB7Ci0JdTMyICAgdGhy
ZXNob2xkOworCV9fbGUzMiB0aHJlc2hvbGQ7CiB9IF9fcGFja2VkOwogCiBzdHJ1Y3QgaGlmX21p
Yl9zbG90X3RpbWUgewotCXUzMiAgIHNsb3RfdGltZTsKKwlfX2xlMzIgc2xvdF90aW1lOwogfSBf
X3BhY2tlZDsKIAogc3RydWN0IGhpZl9taWJfY3VycmVudF90eF9wb3dlcl9sZXZlbCB7Ci0JczMy
ICAgcG93ZXJfbGV2ZWw7CisJX19sZTMyIHBvd2VyX2xldmVsOyAvLyBzaWduZWQgdmFsdWUKIH0g
X19wYWNrZWQ7CiAKIHN0cnVjdCBoaWZfbWliX25vbl9lcnBfcHJvdGVjdGlvbiB7CkBAIC0yNzQs
NyArMjc0LDcgQEAgc3RydWN0IGhpZl9taWJfdGVtcGxhdGVfZnJhbWUgewogCXU4ICAgIGZyYW1l
X3R5cGU7CiAJdTggICAgaW5pdF9yYXRlOjc7CiAJdTggICAgbW9kZToxOwotCXUxNiAgIGZyYW1l
X2xlbmd0aDsKKwlfX2xlMTYgZnJhbWVfbGVuZ3RoOwogCXU4ICAgIGZyYW1lWzcwMF07CiB9IF9f
cGFja2VkOwogCkBAIC0zMjgsNyArMzI4LDcgQEAgc3RydWN0IGhpZl9taWJfc2V0X2Fzc29jaWF0
aW9uX21vZGUgewogCXU4ICAgIGdyZWVuZmllbGQ6MTsKIAl1OCAgICByZXNlcnZlZDM6NzsKIAl1
OCAgICBtcGR1X3N0YXJ0X3NwYWNpbmc7Ci0JdTMyICAgYmFzaWNfcmF0ZV9zZXQ7CisJX19sZTMy
IGJhc2ljX3JhdGVfc2V0OwogfSBfX3BhY2tlZDsKIAogc3RydWN0IGhpZl9taWJfc2V0X3VhcHNk
X2luZm9ybWF0aW9uIHsKQEAgLTM0Miw5ICszNDIsOSBAQCBzdHJ1Y3QgaGlmX21pYl9zZXRfdWFw
c2RfaW5mb3JtYXRpb24gewogCXU4ICAgIGRlbGl2X3ZpZGVvOjE7CiAJdTggICAgZGVsaXZfdm9p
Y2U6MTsKIAl1OCAgICByZXNlcnZlZDI6NDsKLQl1MTYgICBtaW5fYXV0b190cmlnZ2VyX2ludGVy
dmFsOwotCXUxNiAgIG1heF9hdXRvX3RyaWdnZXJfaW50ZXJ2YWw7Ci0JdTE2ICAgYXV0b190cmln
Z2VyX3N0ZXA7CisJX19sZTE2IG1pbl9hdXRvX3RyaWdnZXJfaW50ZXJ2YWw7CisJX19sZTE2IG1h
eF9hdXRvX3RyaWdnZXJfaW50ZXJ2YWw7CisJX19sZTE2IGF1dG9fdHJpZ2dlcl9zdGVwOwogfSBf
X3BhY2tlZDsKIAogc3RydWN0IGhpZl9taWJfdHhfcmF0ZV9yZXRyeV9wb2xpY3kgewpAQCAtMzg0
LDcgKzM4NCw3IEBAIHN0cnVjdCBoaWZfbWliX3NldF9odF9wcm90ZWN0aW9uIHsKIH0gX19wYWNr
ZWQ7CiAKIHN0cnVjdCBoaWZfbWliX2tlZXBfYWxpdmVfcGVyaW9kIHsKLQl1MTYgICBrZWVwX2Fs
aXZlX3BlcmlvZDsKKwlfX2xlMTYga2VlcF9hbGl2ZV9wZXJpb2Q7CiAJdTggICAgcmVzZXJ2ZWRb
Ml07CiB9IF9fcGFja2VkOwogCi0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZl
cnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWls
bWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
