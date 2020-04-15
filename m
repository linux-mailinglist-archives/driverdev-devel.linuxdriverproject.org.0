Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3729C1AAD07
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 18:12:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E2BEA857A2;
	Wed, 15 Apr 2020 16:12:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J8H5rOcrJQos; Wed, 15 Apr 2020 16:12:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EDAE1857B2;
	Wed, 15 Apr 2020 16:12:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B0D7F1BF326
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AD71285F83
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EsGI8M-gh1Y5 for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 16:12:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2080.outbound.protection.outlook.com [40.107.220.80])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 46AF084A33
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 16:12:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dyeyaohJRUvWYvmZy7uWYPkGQzx/y6WCs6nSSGgArulGV/J1AW9rMlCyNy5PhA6z8CzAKE4JOnfTlPHkaC4bZ14dhCZaOnRPKzRfX+LoP6MyYes48HNgj0UWNVsNhGwu+hrZN8p9B8iQirQHJHp5CvRIIkw4lTnh8hDPwBzUj3VmgjqLSaw7EfI6iFEjh2tZY+sCSK9hz7hL7P/QJhiIIL+eLLj+EVlS/Mh53qebRvW2ZrM9XsdgmFaOyLc+d9QBaeC4JUbUmHHvHbpQ6ycQg9AHEo2dGHfNZ0jQ/y7+W4CVR+61NhVyFQLwGMVE3lAUn/voASIt5q4rM9Wdlw/uvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDWAPKa+MkGx2M2EgfVD/JmyF/BXWhVHZkL2pNm8UEE=;
 b=lVfg3dbRksw6tfAYJvOUpj9spv1sLArCO2zZwbDpv22bh1evSqjxhprctHANFjznyiYQ6h4cx8Zvcem9DionfSYc8VM7Y6sZKQXmIwgR+UCOMYE1VE19KfeSdmVw4fjlQaN0RgVhSaA6h4VZ618CjPTkFnxjsTVhJDDI4u3MMxyLsOrg+e2FCAwXZZhETJe8ftvLNuF7UNXtdgoqRMHIxXYnmPrJWf06QH1ghORgko2tN+aTCwjbv3lQVmsP5FAQisoodxhO93z6TcgdkPSsEYtVT63m7Uusw3Mljut00azq2AtMlPZSbr+Fi5hmkL37CWqk0wersf5DaKaO2OFmTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nDWAPKa+MkGx2M2EgfVD/JmyF/BXWhVHZkL2pNm8UEE=;
 b=F7+Xcn/MZIrS9v2juJvyxtzUnw8kJhCx7tNkNw2tanJGeVgXu6ntgX5sLUJ1A1Hm+/y47gxdpj+4CBe1/x7UZ4zvKq77xGmXdvjb24GbAwT2expQlFi+FrWSXl4YZOFrfqlayI7rY4a2FXJmSnXgjAtUNKQ0yUWe2jz+VgObmvA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1408.namprd11.prod.outlook.com (2603:10b6:300:24::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 15 Apr
 2020 16:12:24 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2921.024; Wed, 15 Apr
 2020 16:12:24 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 05/20] staging: wfx: wfx_update_filtering_work() is no more
 used
Date: Wed, 15 Apr 2020 18:11:32 +0200
Message-Id: <20200415161147.69738-6-Jerome.Pouiller@silabs.com>
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
 Transport; Wed, 15 Apr 2020 16:12:21 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c796be65-b557-43fa-15af-08d7e157c895
X-MS-TrafficTypeDiagnostic: MWHPR11MB1408:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB14080A69C486D0D61893977F93DB0@MWHPR11MB1408.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1443;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(396003)(376002)(346002)(39850400004)(366004)(8886007)(8936002)(5660300002)(2906002)(6666004)(86362001)(8676002)(478600001)(81156014)(66574012)(1076003)(4326008)(52116002)(316002)(54906003)(107886003)(186003)(16526019)(66556008)(66476007)(36756003)(2616005)(6512007)(6486002)(6506007)(66946007)(29513003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qyeyFVYPDUVrp8Cb6XnEhVeIWBjyuTW/nKjG6sHvKL/VhRzal6rfHY5UIpLmBEtxiw/MJu8JrtLYlROVzIIfQY7mgT5HZCBGk/U9E83Xq7SbLxB1+CNr7MPHVC8Ha0Qdq4UEDKmRHDvcFj3P+Q6fQ6KPqH9VEp9Q8+yRlzLsCWrrJVGVMij4j/wjtyyButRUORY8nRgOIu943tO3CfX3FXiyTnL7V2cFDlTszbuMX7oSBeEETJkPiyebnimmXk/4M8dGSCGT2MMIYXXs8LmaUEdgnVNWCVlelK2YfsH/6Xje/MgirfcxFPjqlw6yaJcfhhEy3P7c0RuPSjkUurAAquqVGJ35rJnyNcJY1MzneVSi2eKgSOskOF4ZcW5kTBFobMWyXYwthsHZKr1E6RRU38VD6JsKR+HHIQm8xaW8ro4M4nZlsLMxZwDPhmc6e+0VObBQ1VAjecviz96aDrdvHRJ8r7rHA+KZFaNWuuZi3qukEyBCMVk2MW2uGgzFkSdB
X-MS-Exchange-AntiSpam-MessageData: U76sgXc/T8wFvR8pWE1GM2aJoKRmlO4jJxwSSuzebWt58minc3or+Ynq3XkBPPfjLdqJowOCH7x3ZzkkTHBsInivfxs32SndKZoWvY23oo+7QaOU7uPYu6VU+dE59udfBCxPzqx87iHOpWIFN4axj7ZvAfECxLNcZWQE4ruVUzitqbPlUNk2Sb36ce4BScQ2Zktuv0h2H8M8mKZbShIANg==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c796be65-b557-43fa-15af-08d7e157c895
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 16:12:24.1521 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y+Ivbn4PNecfBgkDFT5qKmqvN0nkEiTXVZUB6PKvLMKGkoPKZm9q+ip97D3SbyO5otdazan8DddJgj91B3eqNQ==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2lu
Y2Ugd2UgaGFkIHNpbXBsaWZpZWQgdGhlIGpvaW4gcHJvY2VzcywgdXBkYXRlX2ZpbHRlcmluZ193
b3JrIGlzIG5vCm1vcmUgdXNlZC4gRHJvcCBpdC4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBv
dWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcv
d2Z4L3N0YS5jIHwgMTAgLS0tLS0tLS0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaCB8ICAx
IC0KIGRyaXZlcnMvc3RhZ2luZy93Zngvd2Z4LmggfCAgMSAtCiAzIGZpbGVzIGNoYW5nZWQsIDEy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9k
cml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCmluZGV4IGIwMTQ2N2Y3NjA2YS4uNzI1NTg5OWI0YTVh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3Rh
Z2luZy93Zngvc3RhLmMKQEAgLTE3NCwxNCArMTc0LDYgQEAgdm9pZCB3ZnhfdXBkYXRlX2ZpbHRl
cmluZyhzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAloaWZfc2V0X2RhdGFfZmlsdGVyaW5nKHd2aWYs
IHRydWUsIHRydWUpOwogfQogCi1zdGF0aWMgdm9pZCB3ZnhfdXBkYXRlX2ZpbHRlcmluZ193b3Jr
KHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKLXsKLQlzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiA9IGNv
bnRhaW5lcl9vZih3b3JrLCBzdHJ1Y3Qgd2Z4X3ZpZiwKLQkJCQkJICAgIHVwZGF0ZV9maWx0ZXJp
bmdfd29yayk7Ci0KLQl3ZnhfdXBkYXRlX2ZpbHRlcmluZyh3dmlmKTsKLX0KLQogdTY0IHdmeF9w
cmVwYXJlX211bHRpY2FzdChzdHJ1Y3QgaWVlZTgwMjExX2h3ICpodywKIAkJCSAgc3RydWN0IG5l
dGRldl9od19hZGRyX2xpc3QgKm1jX2xpc3QpCiB7CkBAIC00MTUsNyArNDA3LDYgQEAgc3RhdGlj
IHZvaWQgd2Z4X2RvX3Vuam9pbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAlpZiAod3ZpZi0+c3Rh
dGUgPT0gV0ZYX1NUQVRFX0FQKQogCQlyZXR1cm47CiAKLQljYW5jZWxfd29ya19zeW5jKCZ3dmlm
LT51cGRhdGVfZmlsdGVyaW5nX3dvcmspOwogCXd2aWYtPnN0YXRlID0gV0ZYX1NUQVRFX1BBU1NJ
VkU7CiAKIAkvKiBVbmpvaW4gaXMgYSByZXNldC4gKi8KQEAgLTkzNCw3ICs5MjUsNiBAQCBpbnQg
d2Z4X2FkZF9pbnRlcmZhY2Uoc3RydWN0IGllZWU4MDIxMV9odyAqaHcsIHN0cnVjdCBpZWVlODAy
MTFfdmlmICp2aWYpCiAKIAlpbml0X2NvbXBsZXRpb24oJnd2aWYtPnNldF9wbV9tb2RlX2NvbXBs
ZXRlKTsKIAljb21wbGV0ZSgmd3ZpZi0+c2V0X3BtX21vZGVfY29tcGxldGUpOwotCUlOSVRfV09S
Sygmd3ZpZi0+dXBkYXRlX2ZpbHRlcmluZ193b3JrLCB3ZnhfdXBkYXRlX2ZpbHRlcmluZ193b3Jr
KTsKIAlJTklUX1dPUksoJnd2aWYtPmJzc19wYXJhbXNfd29yaywgd2Z4X2Jzc19wYXJhbXNfd29y
ayk7CiAJSU5JVF9XT1JLKCZ3dmlmLT50eF9wb2xpY3lfdXBsb2FkX3dvcmssIHdmeF90eF9wb2xp
Y3lfdXBsb2FkX3dvcmspOwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5o
IGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaAppbmRleCAzMDAyZDg5ZGM4NzEuLjhkNzZmYmE1
ZjUwNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuaAorKysgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L3N0YS5oCkBAIC04OCw3ICs4OCw2IEBAIHZvaWQgd2Z4X3N1c3BlbmRfcmVz
dW1lX21jKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBlbnVtIHN0YV9ub3RpZnlfY21kIGNtZCk7CiAK
IC8vIE90aGVyIEhlbHBlcnMKIHZvaWQgd2Z4X2NxbV9ic3Nsb3NzX3NtKHN0cnVjdCB3Znhfdmlm
ICp3dmlmLCBpbnQgaW5pdCwgaW50IGdvb2QsIGludCBiYWQpOwotdm9pZCB3ZnhfdXBkYXRlX2Zp
bHRlcmluZyhzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZik7CiBpbnQgd2Z4X2Z3ZF9wcm9iZV9yZXEoc3Ry
dWN0IHdmeF92aWYgKnd2aWYsIGJvb2wgZW5hYmxlKTsKIHUzMiB3ZnhfcmF0ZV9tYXNrX3RvX2h3
KHN0cnVjdCB3ZnhfZGV2ICp3ZGV2LCB1MzIgcmF0ZXMpOwogCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L3dmeC5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC93ZnguaAppbmRleCA0MWQ2
N2RjMDkxYTYuLmE2OWQ5YzljMzdiNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC93
ZnguaAorKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3dmeC5oCkBAIC05MSw3ICs5MSw2IEBAIHN0
cnVjdCB3ZnhfdmlmIHsKIAlib29sCQkJZmlsdGVyX2Jzc2lkOwogCWJvb2wJCQlmd2RfcHJvYmVf
cmVxOwogCWJvb2wJCQlkaXNhYmxlX2JlYWNvbl9maWx0ZXI7Ci0Jc3RydWN0IHdvcmtfc3RydWN0
CXVwZGF0ZV9maWx0ZXJpbmdfd29yazsKIAogCXVuc2lnbmVkIGxvbmcJCXVhcHNkX21hc2s7CiAJ
c3RydWN0IGhpZl9yZXFfc2V0X2Jzc19wYXJhbXMgYnNzX3BhcmFtczsKLS0gCjIuMjUuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGlu
ZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51
eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
