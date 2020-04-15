Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E64DC1AAD09
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 18:12:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A4688701C;
	Wed, 15 Apr 2020 16:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1T8ZZ7bqU+x1; Wed, 15 Apr 2020 16:12:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F48E86DDC;
	Wed, 15 Apr 2020 16:12:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 988AB1BF326
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9538E856B8
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jtjM4HElahL3 for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 16:12:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2062.outbound.protection.outlook.com [40.107.220.62])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02C0C85809
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 16:12:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TbsgMox4z5MMRNQuSiBH6Ej3Q4gA2LSK/vGnqtalXNJnO15WZzXQjJ1udqKykceX6cXbGVVdiL1RkWKrEVBNgj89XX1Ctm2DGX1jboC8IIsV3fXXVzv9GS4auRwsDn7aeSoHBD5VmGH4gnmbfUkw8Koh1jI/POqWhcKZ+D/ZVmZFxWkSj4yBS5PmFiIJ+AWXMVtaMEoFS9EsKXM0ZZFVo3eW4XFvVZnvkD3SNKp2dJzwGtaEROiN3LPQig/ZfmqXBwzxu8PTcUlC2aRDhWaiLShAl9HkhW32T9DLmoOzOM5qmW3JBmezkXXM5OR6KI7cDxYvP7jMFveZBJ6PjNpYfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QnDQbYauOVk+7VMzQsHEDc6STiuq5cdmmsNP+qWKSoA=;
 b=U2F/wGEeeVmYha7MxScQlFBI8P6W5cPiFmBQ+UL/5HAXtJcgFsCR98Eg1AReKJzhjimf8OEksQ9EISLv+WuVRZeXXNlpDJGwUD5hyq6wd8HxLK19mHjM0WDfUYX6qLvqvJTMzejsV8xHixuKVStAyHbU2E/VmcWTq8xH546VVtF/RohmrA7jHIvQyB0uAs+dEVn3PMdWYLItFG6W15290+rOMlm48s2njzGTO/qLQHCFn/VY8sXiKSqROHcPx3Tg0yfXfQCQohbYBOlm+O9mJQOYAPykXI59cx+QujpbZ4wcSKbsNhlsgN37rnbWrQkEINCHIhacyhRG4hm0kQLXAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QnDQbYauOVk+7VMzQsHEDc6STiuq5cdmmsNP+qWKSoA=;
 b=QQ9un7Y5qP+yVKN6zfTThYztyVPAUUVJpe9Ge1tBKsNk67yNUGH6EFOYSreCeUSdiWehILe6MdprgEyjcvL8Oxg1Fwnd6s0RKKeQTKBnoeA8xmot3If0FfZfEOYBrfIsVJAVq9AyD6JRiqbJOtruzAUvgRlcTjA0VZOt+dITvX0=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1408.namprd11.prod.outlook.com (2603:10b6:300:24::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 15 Apr
 2020 16:12:27 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2921.024; Wed, 15 Apr
 2020 16:12:27 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 06/20] staging: wfx: do not wait for a dtim before associate
Date: Wed, 15 Apr 2020 18:11:33 +0200
Message-Id: <20200415161147.69738-7-Jerome.Pouiller@silabs.com>
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
 Transport; Wed, 15 Apr 2020 16:12:24 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 45611e6e-b141-4af5-6d1e-08d7e157ca39
X-MS-TrafficTypeDiagnostic: MWHPR11MB1408:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1408DC642CCDB93AA067006E93DB0@MWHPR11MB1408.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(396003)(376002)(346002)(39850400004)(366004)(8886007)(8936002)(5660300002)(2906002)(6666004)(86362001)(8676002)(478600001)(81156014)(66574012)(1076003)(4326008)(52116002)(316002)(54906003)(107886003)(186003)(16526019)(66556008)(66476007)(36756003)(2616005)(6512007)(6486002)(6506007)(66946007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PH4AjniiZu/Fdl2fZBwAUNKv2i5EbVR5NzOWDnucaN+s6IgxX93vqDKywQDkUWOx42IuKRy6avn7clBoxwXahWhGaEjBHaSr7imKe8M28wbcPXMJYtqAPZD4EA7Zr3d+clvE8BYoYj6yxzZ/vqMiol2wVp5y4b1bQ/BqPUjwp+ty76WOK+DaSCIQk95p2u/tO+QjPGqhs62XLdi2ZGlDWYk3IaTr+KRdOYue6qYLdLIiGZgLbNUPnpdBocM5+SqBc35dGFJWYLTMTFQT1T8xIdIsNy552wCidKJ/ZwyRQ6iNB6T2PrmBEOEY/bA4VaZUpDMCo6DMdHTSBgj4zSM4C96HhYmg66+kq7IJIWYOSeTk+FgGYEi2C2g2FkwcTUoPhGcHaaKhXawxLxxIyQd5TTYW/YaEpG41f8vjXsVrKavh1P+fbmAt04UxUJAnCTMb
X-MS-Exchange-AntiSpam-MessageData: TSnaeVkNvOWueAgiLDiIHBD0OQE4ml9GZgBjv0C6GzeyfqjxA8XwyUGXV0ETw9+odL5v/kDQZO8ocKdN2vywsmPJPpWkb8ARBfrv83PwJp77FcMkjaz557lRK1U1pLJsVGZ8KqAEH4202MXEMU3uMrczgzTqSNaeQH44zMCpZi9YE/GLs8+B8M7qkJ15xddJUs1LS9Hx1d033U5NGXcjqA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45611e6e-b141-4af5-6d1e-08d7e157ca39
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 16:12:26.9079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BECVX+Br893c0ueyx2yJkyuVa7DirG7oW9PejcFNIuGrNT0vTLsuIHJpR+XLoXNlrpfIZVqOpwDkheQh/jEpKA==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IG9ubHkgcmVhc29uIHdlIGFzayB0byBtYWM4MDIxMSB0byB3YWl0IGZvciBhIGR0aW0gYmVmb3Jl
IHRvCmFzc29jaWF0ZSBpcyB0byBnZXQgYW4gYWNjdXJhdGUgRFRJTSB2YWx1ZS4gSG93ZXZlciwg
d2UgY2FuIHRlbXBvcmFyeQpzZXQgdGhlIGR0aW0gcGVyaW9kIHRvIDEuIFRoZW4gd2UgY2FuIHdh
aXRpbmcgZm9yCkJTU19DSEFOR0VEX0JFQUNPTl9JTkZPIGZvciB0aGUgcmVhbCB2YWx1ZS4gVGh1
cywgdGhlIGFzc29jaWF0aW9uCnByb2Nlc3MgaXMgZmFzdGVyLgoKU2lnbmVkLW9mZi1ieTogSsOp
csO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMv
c3RhZ2luZy93ZngvbWFpbi5jIHwgMSAtCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jICB8IDMg
Ky0tCiAyIGZpbGVzIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAzIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jIGIvZHJpdmVycy9zdGFnaW5nL3dm
eC9tYWluLmMKaW5kZXggYjhhMDFiYTBkMzgxLi44YTJjOTZkYWNkNjMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvc3RhZ2luZy93ZngvbWFpbi5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93ZngvbWFpbi5j
CkBAIC0yODgsNyArMjg4LDYgQEAgc3RydWN0IHdmeF9kZXYgKndmeF9pbml0X2NvbW1vbihzdHJ1
Y3QgZGV2aWNlICpkZXYsCiAKIAlTRVRfSUVFRTgwMjExX0RFVihodywgZGV2KTsKIAotCWllZWU4
MDIxMV9od19zZXQoaHcsIE5FRURfRFRJTV9CRUZPUkVfQVNTT0MpOwogCWllZWU4MDIxMV9od19z
ZXQoaHcsIFRYX0FNUERVX1NFVFVQX0lOX0hXKTsKIAlpZWVlODAyMTFfaHdfc2V0KGh3LCBBTVBE
VV9BR0dSRUdBVElPTik7CiAJaWVlZTgwMjExX2h3X3NldChodywgQ09OTkVDVElPTl9NT05JVE9S
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9kcml2ZXJzL3N0YWdp
bmcvd2Z4L3N0YS5jCmluZGV4IDcyNTU4OTliNGE1YS4uYzhhMjMxNDZjYWUwIDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3Rh
LmMKQEAgLTYzMCw4ICs2MzAsNyBAQCBzdGF0aWMgdm9pZCB3Znhfam9pbl9maW5hbGl6ZShzdHJ1
Y3Qgd2Z4X3ZpZiAqd3ZpZiwKIAkJd3ZpZi0+c3RhdGUgPSBXRlhfU1RBVEVfU1RBOwogCQloaWZf
a2VlcF9hbGl2ZV9wZXJpb2Qod3ZpZiwgMCk7CiAJCWhpZl9zZXRfYnNzX3BhcmFtcyh3dmlmLCAm
d3ZpZi0+YnNzX3BhcmFtcyk7Ci0JCWhpZl9zZXRfYmVhY29uX3dha2V1cF9wZXJpb2Qod3ZpZiwg
aW5mby0+ZHRpbV9wZXJpb2QsCi0JCQkJCSAgICAgaW5mby0+ZHRpbV9wZXJpb2QpOworCQloaWZf
c2V0X2JlYWNvbl93YWtldXBfcGVyaW9kKHd2aWYsIDEsIDEpOwogCQl3ZnhfdXBkYXRlX3BtKHd2
aWYpOwogCX0KIH0KLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
