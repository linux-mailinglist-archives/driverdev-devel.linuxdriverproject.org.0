Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FA71D4853
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 10:34:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BDEE087D3C;
	Fri, 15 May 2020 08:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ytgrZNe6cN2; Fri, 15 May 2020 08:34:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 14A8487D0C;
	Fri, 15 May 2020 08:34:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B8A551BF285
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:33:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B4E898868A
 for <devel@linuxdriverproject.org>; Fri, 15 May 2020 08:33:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jB054SmMStg9 for <devel@linuxdriverproject.org>;
 Fri, 15 May 2020 08:33:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2050.outbound.protection.outlook.com [40.107.223.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5BCC188B6B
 for <devel@driverdev.osuosl.org>; Fri, 15 May 2020 08:33:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Iwdp4y1+v3QNTmUxnqjL4NX6zQWdolVkd1kveTa7wRpLaCy7ayPFlxi2ZDrHbUvEnTa77NJuil6d6r7J31LG/GdIEzwDKcFVXJaC8ev9G67c1BGyRLl+LpXoJKwreAYZqw6M0Md0f6TWRoUG914mQlRPeDNSgQTXmmuLHdKsGqggk1ERTgqgnNhMW397gRGEC1vgYKVnssDCI0vJDeipbV6kJnYQRTr+3txkdv3m0nf/hfAmcp0WgGAUTtzYUzSlnGQlr8uT+zvbMKbL44AK4p4/yLx92uD3jnPCj5+rpjnMHqfDe8QEPLnPGAUM+fT6igKvz0lggDg+nOzS/slrXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6oXBrPW3S//L2OALwR/pytKdvvtjmRL+t3R7MNyjUhA=;
 b=aEcq0A1L0LN3N8prHwpq20ITwOTEtRj5glj4zOL8JHP0wHYXA3ppwINOMcM7yfKEBbOZrA+FoGqPsd3ecHs9Wwo1tzslSiCAcNYAwLoczm41tKu3n7aHxD/mK1xpEJieUp8fJsP0yU2mOiFmfM6DBGxgaGaj5GtLft/0X0GR/QyqVqH/5nhc/W0/fCe4oAvYjAGKc+j7ZG6WLcr80Y3XLMJZIKh02V8EOXj93lENG5iZhGWSkz1a6Y1ZLqkx6ljjJ+ypriB5ax3QywGhWe9hyVF9AiWP31TSfRtC0acDMQmHzMrx/m3I7wIuRCsnaDyw2cP8xGtXkxuWfnUt9ieTdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6oXBrPW3S//L2OALwR/pytKdvvtjmRL+t3R7MNyjUhA=;
 b=E81EuKE6r8wNTp+W/Eta1whyDhs9qVf7S4T9xEGeSqgsXwJ1zQv+uXCtssK3s/N5MdSQ/8Hq/x6xEu0mzCC272FvA7hJpa6RCbaqzZ/KncdxEaZzOu7LJkdMRGcZivzkkZ+binBOy9c07BVt4b12+T78l2TLDngtamHbMELr+nA=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1310.namprd11.prod.outlook.com (2603:10b6:300:28::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Fri, 15 May
 2020 08:33:52 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 08:33:52 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 02/19] staging: wfx: apply 80-columns rule to strings
Date: Fri, 15 May 2020 10:33:08 +0200
Message-Id: <20200515083325.378539-3-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
References: <20200515083325.378539-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0076.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:18::16) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (82.67.86.106) by
 PR0P264CA0076.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:18::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.24 via Frontend Transport; Fri, 15 May 2020 08:33:50 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d353eaff-de35-49f9-5913-08d7f8aab287
X-MS-TrafficTypeDiagnostic: MWHPR11MB1310:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1310D793876CD22826CC6F5B93BD0@MWHPR11MB1310.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1332;
X-Forefront-PRVS: 04041A2886
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FUSK5ptxs6D9GEypE4rF/3ps/fbEPjQC7JtGFbltIW3a6VGlSAA+nPDEPiEPTQMdZ9sWmBReRUso4MZ8wMtTDSQLhOULd4jwwlVQTN18vp8DmD5in8YOjZrQUmCqxpc9eqgQC1cTuss2Au8Z2h8BlWFkdPIzKw1WoXjcGwg/BgzvnUP3vjzwmnZGrnaziwbLZBO8na76yvsPHPnz0J/NqFuPhtQCcupTagfihRWY43Y3G1b31OHNMnnLtpWOgmv1qyhwlRKZ39LcO9Zm+DE0WK1bR5W7jofQp7CYPbwqRgA7WB9Dy18HeUW9aBC8+3OKBzjxi76T2zADNkJAevXsgZFcN0rWZocGvT1rFMPmzcM4EnKbDqI05xgJBwO/UCveao8o+s1lPXKVzX7t9N8ZSSdfB2qSzLzgdtBNUL3/EuF5ITduLV5XqkFlmn7VDsmQ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(376002)(366004)(39850400004)(396003)(8886007)(66556008)(186003)(6512007)(66946007)(6506007)(36756003)(316002)(66476007)(26005)(52116002)(16526019)(6666004)(54906003)(2906002)(2616005)(478600001)(66574014)(107886003)(956004)(8936002)(86362001)(8676002)(6486002)(5660300002)(4326008)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: Vj53rCYcGNNyW4sRtcub5n3HKLeH5LVG+RTA0/2GEl54ja3mDLfqP2FVj0EQqwX8FOepAxJw1hSJ3bAlpe3U9AJPUgWzgEV7I35rGnwKHaYgIlGywjcw6lv9SgUGAVO4AxZq7P1HZqa1BleYiAoDeIlzrVu6YcZl7xqmU9ReZtf6y+RN7ufOcN9ok/qQPXE6hHaAVfRRkBdgFlWgwYUZoqQ1mFg2tCEd1JKOqcFw2AnKY+3e9W8dV08sGqVXt2C9BjCfUDALnna1I8VjFF8Q6kajDLPMEbVgczOSBPhqTXCuwGrQKXtzHK/piP2NhI7Xx1/SzGupam7wBa37qsYXB1wSyW6rAsMGERVxZMQI4ly86561D5YSf4/xyt8gb7wSOnTky/94U/ESQIJwNEhlTXccxv6zxyQiWqqnW5nhTLcTJFFMF7Hu1v/Y/tnHjQ9XojTLwD9M/gYpIee4OUd2WxKiczg6KfuumTQp4y45MVY=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d353eaff-de35-49f9-5913-08d7f8aab287
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 May 2020 08:33:52.1017 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +KqJ1fR9ClzgX8YnpGAW9VOlwO/VeC+AMWKxOiFqoXM797z4qmlstrM+vKD7q/SojONoU0wCAUYmR/NxA4YPjA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1310
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
aW5ncyBhcmUgYWxsb3dlZCB0byBleGNlZWQgODAgY29sdW1ucyBidXQsIGluIHRoaXMgY2FzZSwg
dGhlIGZvcm1hdAphcmd1bWVudHMgc2hvdWxkIGJlIHBsYWNlZCBvbiBhIG5ldyBsaW5lLiBBcHBs
eSB0aGlzIHJ1bGUgdG8gdGhlIHdob2xlCmNvZGUgb2YgdGhlIGRyaXZlci4KClNpZ25lZC1vZmYt
Ynk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBk
cml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMgfCAgMyArKy0KIGRyaXZlcnMvc3RhZ2luZy93
ZngvZGF0YV90eC5jICB8ICA0ICsrLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvZndpby5jICAgICB8
ICA4ICsrKystLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jICAgfCAgNCArKy0tCiBk
cml2ZXJzL3N0YWdpbmcvd2Z4L21haW4uYyAgICAgfCAxNyArKysrKysrKysrLS0tLS0tLQogNSBm
aWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2J1c19zZGlvLmMKaW5kZXggNjQ2NGIyYzUwOGU0Li40OTZiZmM4YmJhY2MgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvc3RhZ2luZy93ZngvYnVzX3NkaW8uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2J1c19zZGlvLmMKQEAgLTE4MCw3ICsxODAsOCBAQCBzdGF0aWMgaW50IHdmeF9zZGlvX3Byb2Jl
KHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMsCiAJaW50IHJldDsKIAogCWlmIChmdW5jLT5udW0gIT0g
MSkgewotCQlkZXZfZXJyKCZmdW5jLT5kZXYsICJTRElPIGZ1bmN0aW9uIG51bWJlciBpcyAlZCB3
aGlsZSBpdCBzaG91bGQgYWx3YXlzIGJlIDEgKHVuc3VwcG9ydGVkIGNoaXA/KVxuIiwgZnVuYy0+
bnVtKTsKKwkJZGV2X2VycigmZnVuYy0+ZGV2LCAiU0RJTyBmdW5jdGlvbiBudW1iZXIgaXMgJWQg
d2hpbGUgaXQgc2hvdWxkIGFsd2F5cyBiZSAxICh1bnN1cHBvcnRlZCBjaGlwPylcbiIsCisJCQlm
dW5jLT5udW0pOwogCQlyZXR1cm4gLUVOT0RFVjsKIAl9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvZGF0YV90eC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKaW5k
ZXggNGEyOTEwODk3YjZmLi5jYWM4YzllY2JjMzQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy93ZngvZGF0YV90eC5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5jCkBAIC01
NTAsOCArNTUwLDggQEAgdm9pZCB3ZnhfdHhfY29uZmlybV9jYihzdHJ1Y3Qgd2Z4X3ZpZiAqd3Zp
ZiwgY29uc3Qgc3RydWN0IGhpZl9jbmZfdHggKmFyZykKIAkJfQogCX0KIAlpZiAodHhfY291bnQp
Ci0JCWRldl9kYmcod3ZpZi0+d2Rldi0+ZGV2LAotCQkJIiVkIG1vcmUgcmV0cmllcyB0aGFuIGV4
cGVjdGVkXG4iLCB0eF9jb3VudCk7CisJCWRldl9kYmcod3ZpZi0+d2Rldi0+ZGV2LCAiJWQgbW9y
ZSByZXRyaWVzIHRoYW4gZXhwZWN0ZWRcbiIsCisJCQl0eF9jb3VudCk7CiAJc2tiX3RyaW0oc2ti
LCBza2ItPmxlbiAtIHdmeF90eF9nZXRfaWN2X2xlbih0eF9wcml2LT5od19rZXkpKTsKIAogCS8v
IEZyb20gbm93LCB5b3UgY2FuIHRvdWNoIHRvIHR4X2luZm8tPnN0YXR1cywgYnV0IGRvIG5vdCB0
b3VjaCB0bwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9md2lvLmMgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2Z3aW8uYwppbmRleCA4NWI2YTkxNmE3ZDAuLjcyYmIzZDJhOTYxMyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9md2lvLmMKKysrIGIvZHJpdmVycy9zdGFnaW5n
L3dmeC9md2lvLmMKQEAgLTEwNyw4ICsxMDcsOCBAQCBzdGF0aWMgaW50IGdldF9maXJtd2FyZShz
dHJ1Y3Qgd2Z4X2RldiAqd2RldiwgdTMyIGtleXNldF9jaGlwLAogCWNvbnN0IGNoYXIgKmRhdGE7
CiAJaW50IHJldDsKIAotCXNucHJpbnRmKGZpbGVuYW1lLCBzaXplb2YoZmlsZW5hbWUpLCAiJXNf
JTAyWC5zZWMiLCB3ZGV2LT5wZGF0YS5maWxlX2Z3LAotCQkga2V5c2V0X2NoaXApOworCXNucHJp
bnRmKGZpbGVuYW1lLCBzaXplb2YoZmlsZW5hbWUpLCAiJXNfJTAyWC5zZWMiLAorCQkgd2Rldi0+
cGRhdGEuZmlsZV9mdywga2V5c2V0X2NoaXApOwogCXJldCA9IGZpcm13YXJlX3JlcXVlc3Rfbm93
YXJuKGZ3LCBmaWxlbmFtZSwgd2Rldi0+ZGV2KTsKIAlpZiAocmV0KSB7CiAJCWRldl9pbmZvKHdk
ZXYtPmRldiwgImNhbid0IGxvYWQgJXMsIGZhbGxpbmcgYmFjayB0byAlcy5zZWNcbiIsCkBAIC0z
MjUsOCArMzI1LDggQEAgc3RhdGljIGludCBpbml0X2dwcihzdHJ1Y3Qgd2Z4X2RldiAqd2RldikK
IAkJCQkgICAgIGdwcl9pbml0W2ldLnZhbHVlKTsKIAkJaWYgKHJldCA8IDApCiAJCQlyZXR1cm4g
cmV0OwotCQlkZXZfZGJnKHdkZXYtPmRldiwgIiAgaW5kZXggJTAyeDogJTA4eFxuIiwgZ3ByX2lu
aXRbaV0uaW5kZXgsCi0JCQlncHJfaW5pdFtpXS52YWx1ZSk7CisJCWRldl9kYmcod2Rldi0+ZGV2
LCAiICBpbmRleCAlMDJ4OiAlMDh4XG4iLAorCQkJZ3ByX2luaXRbaV0uaW5kZXgsIGdwcl9pbml0
W2ldLnZhbHVlKTsKIAl9CiAJcmV0dXJuIDA7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdp
bmcvd2Z4L2hpZl90eC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfdHguYwppbmRleCAzZTVk
OTExMWU4NTUuLjU4YWRmYWY4MDY2ZCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9o
aWZfdHguYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl90eC5jCkBAIC0xOTIsOCArMTky
LDggQEAgaW50IGhpZl9yZWFkX21pYihzdHJ1Y3Qgd2Z4X2RldiAqd2RldiwgaW50IHZpZl9pZCwg
dTE2IG1pYl9pZCwKIAlyZXQgPSB3ZnhfY21kX3NlbmQod2RldiwgaGlmLCByZXBseSwgYnVmX2xl
biwgZmFsc2UpOwogCiAJaWYgKCFyZXQgJiYgbWliX2lkICE9IGxlMTZfdG9fY3B1KHJlcGx5LT5t
aWJfaWQpKSB7Ci0JCWRldl93YXJuKHdkZXYtPmRldiwKLQkJCSAiJXM6IGNvbmZpcm1hdGlvbiBt
aXNtYXRjaCByZXF1ZXN0XG4iLCBfX2Z1bmNfXyk7CisJCWRldl93YXJuKHdkZXYtPmRldiwgIiVz
OiBjb25maXJtYXRpb24gbWlzbWF0Y2ggcmVxdWVzdFxuIiwKKwkJCSBfX2Z1bmNfXyk7CiAJCXJl
dCA9IC1FSU87CiAJfQogCWlmIChyZXQgPT0gLUVOT01FTSkKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy93ZngvbWFpbi5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9tYWluLmMKaW5kZXggZDRl
NjljNjYzZjVhLi5hZTIzYTU2ZjUwZTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngv
bWFpbi5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCkBAIC0xOTIsMTIgKzE5Miwx
MiBAQCBzdHJ1Y3QgZ3Bpb19kZXNjICp3ZnhfZ2V0X2dwaW8oc3RydWN0IGRldmljZSAqZGV2LAog
CQlpZiAoIXJldCB8fCBQVFJfRVJSKHJldCkgPT0gLUVOT0VOVCkKIAkJCWRldl93YXJuKGRldiwg
ImdwaW8gJXMgaXMgbm90IGRlZmluZWRcbiIsIGxhYmVsKTsKIAkJZWxzZQotCQkJZGV2X3dhcm4o
ZGV2LAotCQkJCSAiZXJyb3Igd2hpbGUgcmVxdWVzdGluZyBncGlvICVzXG4iLCBsYWJlbCk7CisJ
CQlkZXZfd2FybihkZXYsICJlcnJvciB3aGlsZSByZXF1ZXN0aW5nIGdwaW8gJXNcbiIsCisJCQkJ
IGxhYmVsKTsKIAkJcmV0ID0gTlVMTDsKIAl9IGVsc2UgewotCQlkZXZfZGJnKGRldiwKLQkJCSJ1
c2luZyBncGlvICVkIGZvciAlc1xuIiwgZGVzY190b19ncGlvKHJldCksIGxhYmVsKTsKKwkJZGV2
X2RiZyhkZXYsICJ1c2luZyBncGlvICVkIGZvciAlc1xuIiwKKwkJCWRlc2NfdG9fZ3BpbyhyZXQp
LCBsYWJlbCk7CiAJfQogCXJldHVybiByZXQ7CiB9CkBAIC0yMzAsMTUgKzIzMCwxOCBAQCBpbnQg
d2Z4X3NlbmRfcGRzKHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1OCAqYnVmLCBzaXplX3QgbGVuKQog
CQkJcmV0ID0gaGlmX2NvbmZpZ3VyYXRpb24od2RldiwgYnVmICsgc3RhcnQsCiAJCQkJCQlpIC0g
c3RhcnQgKyAxKTsKIAkJCWlmIChyZXQgPiAwKSB7Ci0JCQkJZGV2X2Vycih3ZGV2LT5kZXYsICJQ
RFMgYnl0ZXMgJWQgdG8gJWQ6IGludmFsaWQgZGF0YSAodW5zdXBwb3J0ZWQgb3B0aW9ucz8pXG4i
LCBzdGFydCwgaSk7CisJCQkJZGV2X2Vycih3ZGV2LT5kZXYsICJQRFMgYnl0ZXMgJWQgdG8gJWQ6
IGludmFsaWQgZGF0YSAodW5zdXBwb3J0ZWQgb3B0aW9ucz8pXG4iLAorCQkJCQlzdGFydCwgaSk7
CiAJCQkJcmV0dXJuIC1FSU5WQUw7CiAJCQl9CiAJCQlpZiAocmV0ID09IC1FVElNRURPVVQpIHsK
LQkJCQlkZXZfZXJyKHdkZXYtPmRldiwgIlBEUyBieXRlcyAlZCB0byAlZDogY2hpcCBkaWRuJ3Qg
cmVwbHkgKGNvcnJ1cHRlZCBmaWxlPylcbiIsIHN0YXJ0LCBpKTsKKwkJCQlkZXZfZXJyKHdkZXYt
PmRldiwgIlBEUyBieXRlcyAlZCB0byAlZDogY2hpcCBkaWRuJ3QgcmVwbHkgKGNvcnJ1cHRlZCBm
aWxlPylcbiIsCisJCQkJCXN0YXJ0LCBpKTsKIAkJCQlyZXR1cm4gcmV0OwogCQkJfQogCQkJaWYg
KHJldCkgewotCQkJCWRldl9lcnIod2Rldi0+ZGV2LCAiUERTIGJ5dGVzICVkIHRvICVkOiBjaGlw
IHJldHVybmVkIGFuIHVua25vd24gZXJyb3JcbiIsIHN0YXJ0LCBpKTsKKwkJCQlkZXZfZXJyKHdk
ZXYtPmRldiwgIlBEUyBieXRlcyAlZCB0byAlZDogY2hpcCByZXR1cm5lZCBhbiB1bmtub3duIGVy
cm9yXG4iLAorCQkJCQlzdGFydCwgaSk7CiAJCQkJcmV0dXJuIC1FSU87CiAJCQl9CiAJCQlidWZb
aV0gPSAnLCc7Ci0tIAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qu
b3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaXZlcmRldi1kZXZlbAo=
