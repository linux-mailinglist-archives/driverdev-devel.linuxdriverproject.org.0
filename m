Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFD7C1CDF66
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 May 2020 17:50:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0506225F63;
	Mon, 11 May 2020 15:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3n3F8bGdFK26; Mon, 11 May 2020 15:50:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DB5EF204E2;
	Mon, 11 May 2020 15:50:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6B4001BF3C1
 for <devel@linuxdriverproject.org>; Mon, 11 May 2020 15:49:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 67F4B8820A
 for <devel@linuxdriverproject.org>; Mon, 11 May 2020 15:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ef36uvAn-TG0 for <devel@linuxdriverproject.org>;
 Mon, 11 May 2020 15:49:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr700062.outbound.protection.outlook.com [40.107.70.62])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5B3018804A
 for <devel@driverdev.osuosl.org>; Mon, 11 May 2020 15:49:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fpmAOMO7aTGca2MXgrBjUHg7x/ffmIDGbGPB++NEuqu3jNxOlVK5sbzOYkI5Ev0n9P92Zz6uMzLHnyMSsCriFTDQbx8fUS41GTyfcqx8GUXOIqan+8ORupQsaQpdtf5OKUuXHkDRyNOfwyI1AXlWZ98zE3849ZXtNin5pLqVgIwQddQg8uYA/WWF+NzqHyheWtXxpDNQDHfH7PFhUcatPB3JV4w+ECz4HExLLwS4jPwLOkBRTT9Zj+piO0vzHkw4u9pU0cp0tQfeOKRbpW5ftVKwp94nwxYK1wV+lt0IG4lYHoCTSkbgbez83DF1tIK5JQjRuk2Mk2gRmz00eEeJfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q94uY3wIDAIJbStr9gu9gHlUoS5rWPgP9Bsj/iZkXP4=;
 b=epBE1kciHwXmym6xGqAbE5i2fdsuqZXm9PItDfpAM4BLXF1OWbL7Tmc3i63XlF6cY/wtN5AgTiLuV2M8y7KDedklbd6Dqp4MgarRU4P6u7w/E/0fMr8wLQFG4BYB2HmTEAUPcWQ2YTtjsRoe/ALO6HeciHj8N0l+WvStYyixtc5No9i5nySjXrM1rFoq8WQnhOM/kTk4j0TgerFeUN5dYoWnWJj7l/NeOEfauSwOkrpFUtwXvoqUY0lzg4apgDpU2ppbtc4UXdDBPpsqWyh6AjKENbqvT1pI39qWnHZCCkRV3RqfDbmjZYDUcWVB4jwKFvhy494aMIxH4BAPJtztyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q94uY3wIDAIJbStr9gu9gHlUoS5rWPgP9Bsj/iZkXP4=;
 b=XbKHY8+JaIv3QCUpsbwo7Z/CVXk5UPSyYKIh/jQkmqL9wwc01rhLZEe5honf1A/KERizKuM2BClA//YBQZ6I8XpKNbbWhWVKks9Ty4PaaajbXnc7RYo8xKW6q6DUPH1QuNKwV8ArCvLZG5Xtpi5CiPFn7IFA/W7cOax/VbaAWa8=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1968.namprd11.prod.outlook.com (2603:10b6:300:113::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2979.26; Mon, 11 May
 2020 15:49:55 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::e055:3e6d:ff4:56da%5]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 15:49:55 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 05/17] staging: wfx: fix output of rx_stats on big endian hosts
Date: Mon, 11 May 2020 17:49:18 +0200
Message-Id: <20200511154930.190212-6-Jerome.Pouiller@silabs.com>
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
 Transport; Mon, 11 May 2020 15:49:53 +0000
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [82.67.86.106]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 19d212c8-81cf-4553-db22-08d7f5c2f332
X-MS-TrafficTypeDiagnostic: MWHPR11MB1968:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB19682F1E8C7408041F82BD2293A10@MWHPR11MB1968.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:339;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5a3JDhFbB53BHdIi+W/XdJbJ77PWNSBqf3jN9r6lHWd26gLd8maZf5F9HjP/yI3+eiAVIXjxmVAxvtEnGvHaAJC7aDdpITwS+kyh14pgDylhxdKZv84nYqGC6hgJAP+EnnHvVcyAVQvTVP649+Z34h2hxY5Wnk9IeLdHM6kyTz9VujFhzHVoGdffY7hAgCTYqNhpM/mb6zkjVG4Z00eU9XGxh2dEu3aVUdOyR6ZnDyxghVlUtp9fMTmFRrxzcXf2+FmgUrhh6UC2KZH5hsRNtRZ5+DKNTuKNL3913n1rJzI444DVPxAoATYvlfaR+ee0j/4IigZaNrPfHllSpDZ7AHZrawnOTqJOAW9OT0HbbWaf0LIcfM3pRRaoGkfm4uXAeiAwXx0xzm+8BXPShcsbIgARkD5/pNoGHNfkoZmbRbt4PiP9cmQnxpi2fpDJYf3zpVaQpy9J/fd6fBWDGJKCiK4o746JoCdyow1aO8kxNPzQPYJFwSgva23+DlJvJXE6f43YFpdDwVBubaskRJ8oVQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(346002)(136003)(396003)(376002)(366004)(33430700001)(186003)(52116002)(86362001)(316002)(5660300002)(7696005)(6486002)(33440700001)(478600001)(54906003)(6666004)(4326008)(107886003)(66574014)(36756003)(16526019)(26005)(8936002)(956004)(2616005)(8676002)(1076003)(66476007)(66946007)(66556008)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: pAcGrC/zLoRa7wiJ4cPea55oy1sa2w94inHy5LmamKfwO42J5bhQXysjkf6LmK0lZrke3OACrAw0q+HvNPbGpBgrIjGUmnubPJRLpduQ+hqITSeDLjHVavOKGvsKHde69BKzM/Fr7dYxuV/GtLkEAJJ77XmJ0vnHSBTVE7cQ6uqlakiOnYsrjnvDciZLK8a6kye5bPj+SOyr4m27whOQ0XKzYx2SMf22M1fGst9iNepCpSIjjM16pR/29QCUzF0TIE392Yoy5ONQcBwifFVX+E6TneIXEcFvUjM39A8Ut6V3vsC9IlmAYx/GkNnFqC0daO58SbfWmDZNPIbgdxuPzctc2TpzC+HSHxljteKAqnnDqkIES1iHynvUuSzEqFdZ5WMEdXWmhkqVFBnUdWqVrQ8CGBV/P4ltDAT0GHDGrrnm5ZrKfDyRJyvXkExVQi37rFiStzNyweHfNgs0kSKdvVLI8293fUpHhlMZX4Zmr6M=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19d212c8-81cf-4553-db22-08d7f5c2f332
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 15:49:55.1740 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XqSy2d1Fa8hekHvoJsrV3wwQL51xm4ZZlJdvNTBJK/46sbxGeLwA7IzMf0BZ6K7FXyZvqZ8yYw2Km7wZFcU2EA==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHN0cnVjdCBoaWZfcnhfc3RhdHMgY29udGFpbnMgb25seSBsaXR0bGUgZW5kaWFuIHZhbHVlcy4g
VGh1cywgaXQgaXMKbmVjZXNzYXJ5IHRvIGZpeCBieXRlIG9yZGVyaW5nIGJlZm9yZSB0byB1c2Ug
dGhlbS4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJA
c2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVnLmMgfCAxMSArKysrKysr
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RlYnVnLmMgYi9kcml2ZXJzL3N0YWdpbmcv
d2Z4L2RlYnVnLmMKaW5kZXggMmZhZTZjOTEzYjAxLi44NDZhMGIyOWY4YzkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvc3RhZ2luZy93ZngvZGVidWcuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2Rl
YnVnLmMKQEAgLTE1NSw3ICsxNTUsNyBAQCBzdGF0aWMgaW50IHdmeF9yeF9zdGF0c19zaG93KHN0
cnVjdCBzZXFfZmlsZSAqc2VxLCB2b2lkICp2KQogCW11dGV4X2xvY2soJndkZXYtPnJ4X3N0YXRz
X2xvY2spOwogCXNlcV9wcmludGYoc2VxLCAiVGltZXN0YW1wOiAlZHVzXG4iLCBzdC0+ZGF0ZSk7
CiAJc2VxX3ByaW50ZihzZXEsICJMb3cgcG93ZXIgY2xvY2s6IGZyZXF1ZW5jeSAldUh6LCBleHRl
cm5hbCAlc1xuIiwKLQkJICAgc3QtPnB3cl9jbGtfZnJlcSwKKwkJICAgbGUzMl90b19jcHUoc3Qt
PnB3cl9jbGtfZnJlcSksCiAJCSAgIHN0LT5pc19leHRfcHdyX2NsayA/ICJ5ZXMiIDogIm5vIik7
CiAJc2VxX3ByaW50ZihzZXEsCiAJCSAgICJOdW0uIG9mIGZyYW1lczogJWQsIFBFUiAoeDEwZTQp
OiAlZCwgVGhyb3VnaHB1dDogJWRLYnBzL3NcbiIsCkBAIC0xNjUsOSArMTY1LDEyIEBAIHN0YXRp
YyBpbnQgd2Z4X3J4X3N0YXRzX3Nob3coc3RydWN0IHNlcV9maWxlICpzZXEsIHZvaWQgKnYpCiAJ
Zm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUoY2hhbm5lbF9uYW1lcyk7IGkrKykgewogCQlpZiAo
Y2hhbm5lbF9uYW1lc1tpXSkKIAkJCXNlcV9wcmludGYoc2VxLCAiJTVzICU4ZCAlOGQgJThkICU4
ZCAlOGRcbiIsCi0JCQkJICAgY2hhbm5lbF9uYW1lc1tpXSwgc3QtPm5iX3J4X2J5X3JhdGVbaV0s
Ci0JCQkJICAgc3QtPnBlcltpXSwgc3QtPnJzc2lbaV0gLyAxMDAsCi0JCQkJICAgc3QtPnNucltp
XSAvIDEwMCwgc3QtPmNmb1tpXSk7CisJCQkJICAgY2hhbm5lbF9uYW1lc1tpXSwKKwkJCQkgICBs
ZTMyX3RvX2NwdShzdC0+bmJfcnhfYnlfcmF0ZVtpXSksCisJCQkJICAgbGUxNl90b19jcHUoc3Qt
PnBlcltpXSksCisJCQkJICAgKHMxNilsZTE2X3RvX2NwdShzdC0+cnNzaVtpXSkgLyAxMDAsCisJ
CQkJICAgKHMxNilsZTE2X3RvX2NwdShzdC0+c25yW2ldKSAvIDEwMCwKKwkJCQkgICAoczE2KWxl
MTZfdG9fY3B1KHN0LT5jZm9baV0pKTsKIAl9CiAJbXV0ZXhfdW5sb2NrKCZ3ZGV2LT5yeF9zdGF0
c19sb2NrKTsKIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
