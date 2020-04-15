Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF341AAD02
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 18:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CB7BF86D03;
	Wed, 15 Apr 2020 16:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cIZeWcLA7WkT; Wed, 15 Apr 2020 16:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BF96184EAD;
	Wed, 15 Apr 2020 16:12:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 082391BF326
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04805857B2
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4A6nw5SD0YQP for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 16:12:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11on2083.outbound.protection.outlook.com [40.107.220.83])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EBBB9850CF
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 16:12:13 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZrAAMrD9P0wc82+GupXlJdFboETZ0IZxX/qYVCNgeDUNDss2/1sm1/R6hrqe/0GLPZ91ABYyssD/FsEOPySMRwfLi4R6NwISkeC4qucuk+o30ePViF3rW2v6JXQ68OWuuuUtTIP3OF3mlazNWmZhx838rq/EV2KyMbTJOQBkRi+XZLj/Vn4RywUcVfHl9wpJtBrUVaxumccH77H3Cv1jC4CeUY1gv4WBCSHPuLpbtqDn6f5kleWJeCuyd+ztWIExlwLVL7A0ZCW77Q1SUMQ3jgYCAkC9i1UJXqXCyNi7NXA54uYM1Y9/ZxPiFhE8gGgSrzTtc9y3sBp9Cx8ojf8w9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNbWrpIqbUX49u4kph7dvG45SXR9AdixdFlt2Qcglfc=;
 b=Aa9pWWuShoiLuyQRFYN9Sgg4RsL7eexTocQPk/XO7KTfVUWADTf9RHKhvFb3+dLfLa1nOHd4+1j4Mft20BjFQhVLN0VWi4eQMu40n6UG0XdOE0FU9C3yCgXd9LLnOD4POmhmdDfbupPCdIgPKYKLX2lUN+wLChqxAeHj2YOBWEDV5juyqd8JT1hMdGW67yR21MN7T4syyVXqO+IqGpy/WfVSwohn2ZXRI2fEEYfKcj/9YjqL0wWtHh+gQ2gK1ocRJ39GI1lRsNWnsv9A9R7iolAv/oCG7plb0UodKvu5oIYaKILiQZoRHAjSo52MgSKktJAZwfYvQjTtI5K055/fGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dNbWrpIqbUX49u4kph7dvG45SXR9AdixdFlt2Qcglfc=;
 b=f1iFxbAcoKAojDhGmI2Zsy0a6BVXOdURChAISedHV1gkh6Z9EWSrILRNoVMQcmCvGxjd9e2hS4qCM1Y0vvjcR26pE7EB5Gic6koLvMSQrRFfgqQuwxIahdxto1PhU6nb9FiA872FDzWUR4OP6wOL9IjBJuj44pe69wgwJynbHGg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1408.namprd11.prod.outlook.com (2603:10b6:300:24::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 15 Apr
 2020 16:12:12 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2921.024; Wed, 15 Apr
 2020 16:12:12 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 01/20] staging: wfx: update filtering even if not connected
Date: Wed, 15 Apr 2020 18:11:28 +0200
Message-Id: <20200415161147.69738-2-Jerome.Pouiller@silabs.com>
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
 Transport; Wed, 15 Apr 2020 16:12:09 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cec6d37c-7244-4ba7-4333-08d7e157c199
X-MS-TrafficTypeDiagnostic: MWHPR11MB1408:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1408722BE344549546CA8BCD93DB0@MWHPR11MB1408.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(396003)(376002)(346002)(39850400004)(366004)(8886007)(8936002)(4744005)(5660300002)(2906002)(6666004)(86362001)(8676002)(478600001)(81156014)(66574012)(1076003)(4326008)(52116002)(316002)(54906003)(107886003)(186003)(16526019)(66556008)(66476007)(36756003)(2616005)(6512007)(15650500001)(6486002)(6506007)(66946007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: p5TagCX4AS/s9Mwu34h50MnwLVoe5e2gmbpUCENzo83AXCCwDivjXEyBcrCv+BXM8qKTy3z4cUutlt+SAvr9+Ff7mUtCT2/ySBne3DQChM3pKe0Ns6Uyuuke39I5XvWcCBO4YtUdX51Qhey/O9lbJbs7oElyOoDXBkjUiTIUbhC+6OmSR/pdzVH3inXNcN990DS6uwenCv1+0bx+FwupNB+ScysZ48uDeumNpw+VJ+WIsrLBom0v2WJw9vcWN/WQJfS/XJWKKx/2+PS7mbffukwF507JECTCp1IlqYVw4sbYYKokxFrP0GoT6174SdIBdyzqzSjJbdgSi3gN6jv7EGWwWJc7HD54C5s0082GzAdemKq7759vywbxvoKN1DtigTKHSv0Lh3wJ2UhlwvZDSRerCE+HB30NXOWkYV1pA4dWfT2MIsnPop1WVQ08K2VT
X-MS-Exchange-AntiSpam-MessageData: ak5tVTD+ugDt9ranHPysrYCtmirfyyynNGC29XHj54OUXYv3rszI4WpAI3VU9n5CtfAHkL5c+Dx8vBdoF5KY/TpI02jmItTAgZ1ZfRNeW3/EHI/TvtZI/WrG8CJzBQymY0A0Ha7dx61itPYlD96W7+qOZaVulz2D5zAKXKb6+si9VMJkLm3GpcWD6o+6gO5BK8Y59zF7zqtKiTpoK6Ivaw==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cec6d37c-7244-4ba7-4333-08d7e157c199
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 16:12:12.6354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f+hRf2ajPCoNYN0dKLy3MTVl3eg1W/CNN10pGhcMzGDT8pswcMoBWIX3mPSy45UH/Pa15wPMvqL22ANVSSTs4g==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQ3Vy
cmVudGx5LCBmaWx0ZXJpbmcgYXJlIG5vdCB1cGRhdGUgaWYgdGhlIGRldmljZSBpcyBub3QgY29u
bmVjdGVkLgpUaGVyZSBpcyBubyBvYnZpb3VzIHJhdGlvbmFsZSBmb3IgdGhhdC4gVXBkYXRpbmcg
ZmlsdGVyaW5nIHdoaWxlIGl0IGlzCm5vdCBuZWNlc3NhcnkgaXMgaGFybWxlc3MuIE9uIHRoZSBv
dGhlciBoYW5kLCBpdCBpcyBkaWZmaWN1bHQgdG8gZW5zdXJlCnRoYXQgdGhlIGZpbHRlcmluZyBy
dWxlIGhhcyBiZWVuIGNvcnJlY3RseSBzZW50IHRvIHRoZSBmaXJtd2FyZS4KCkp1c3QgZHJvcCB0
aGlzIHVzZWxlc3MgY29uZGl0aW9uLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIg
PGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3Rh
LmMgfCAzIC0tLQogMSBmaWxlIGNoYW5nZWQsIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKaW5k
ZXggZjFkZjc3MTdkNWY0Li5jYjlkMTQ0NzE3NDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2lu
Zy93Zngvc3RhLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtMTY4LDkgKzE2
OCw2IEBAIHZvaWQgd2Z4X3VwZGF0ZV9maWx0ZXJpbmcoc3RydWN0IHdmeF92aWYgKnd2aWYpCiAJ
CX0KIAl9OwogCi0JaWYgKHd2aWYtPnN0YXRlID09IFdGWF9TVEFURV9QQVNTSVZFKQotCQlyZXR1
cm47Ci0KIAlpZiAod3ZpZi0+ZGlzYWJsZV9iZWFjb25fZmlsdGVyKSB7CiAJCWJmX2VuYWJsZSA9
IDA7CiAJCWJmX2NvdW50ID0gMTsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJp
dmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21h
aWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
