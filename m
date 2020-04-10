Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 773601A46C1
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 15:33:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A0C3122621;
	Fri, 10 Apr 2020 13:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sYD3K+DfPPCt; Fri, 10 Apr 2020 13:33:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B43F621567;
	Fri, 10 Apr 2020 13:33:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 948561BF9C2
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 13:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8D78321541
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 13:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SJKzv1VcFLFN for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 13:33:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2076.outbound.protection.outlook.com [40.107.243.76])
 by silver.osuosl.org (Postfix) with ESMTPS id 47B57204BD
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 13:33:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iVCHW1E4NZ/AHZe0s8jNTL9P1+lge74w3qBFfESKstsBAYq2kOJnmjIsXKODZXlB+qZYTiSbdAFXFK/0CovwNnQ1TSH1yZj8aKX/n0e6O0VvbvmLKENwMpwee8GqlSAP3/SDUHqgq3n3jhQATyLw+rOTw59Md2a74PU4Tei5vKQ/alDsfaRc7WJuWDV94QxzmreOFa46Z3pgLLCrOhpLkQJ47wfhfjNwFH24GzzmK1VcK9Zqtbf/wG29LQF5qcVNt+4IzOXZwhFQR6gbohe4JN/b8+xO92LH+gbzzRLoMljGatGWWhMqc/FRqqm/SWgcQnA+OFKN+zb4Jgylw7CyRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjI0Je6vHCyxCyoGkgaW23q63NlgIf848mcwi2srrio=;
 b=JAAWpKFi+snyQCNgb5YQDgPqEr22r3elE262YEbXtzFmjOro/kfLC0jXLPKxsNtLsxPmLXtcJiUGtnbc7SLyWcnHgz3N5LOmY2L1FkUXSZnJkp4oMb23Af6VO7n4nhzrHkcB+Alz03n86o53xPn813YAqSq2Uq8BAgv7t563JvRj6PyoRzTjebSlOskV6xt9n3VzpH//sNBCFyAjFFn2+SHtwfzpzl0GxxwWJcOJ8tuN/JPTDgBMzp/S//8irHg/rJm3/Plt6pvk2T0RfkBBk3kV4mVWXrfOQtPE1wDLE/rHjKZ6MN/pk4UXHfzfdJLg2/1H6q6LhCaD7T40hGjCuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kjI0Je6vHCyxCyoGkgaW23q63NlgIf848mcwi2srrio=;
 b=VX67xLs8IW+KBUOOLDOI5++kIIp3SzNJZ7gBdutMK9tUc833tZAl4CeI7No0UyPgZ/vTbmedWE1qAIMCpp24JnkZBMsOL5xHwZSQ5tJls6OoVwgKJol5hs2tLE0j3+1iyGJh58RgGZXB0DfIOQkKttUE3hkd/Eet0+g/CzwsQNA=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MN2PR11MB4063.namprd11.prod.outlook.com (2603:10b6:208:13f::22)
 by MN2PR11MB4398.namprd11.prod.outlook.com (2603:10b6:208:18b::31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.20; Fri, 10 Apr
 2020 13:33:02 +0000
Received: from MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::3d0a:d9ac:3df4:8b1]) by MN2PR11MB4063.namprd11.prod.outlook.com
 ([fe80::3d0a:d9ac:3df4:8b1%6]) with mapi id 15.20.2878.021; Fri, 10 Apr 2020
 13:33:02 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 02/19] staging: wfx: reduce hold duration of cfg80211_bss
Date: Fri, 10 Apr 2020 15:32:22 +0200
Message-Id: <20200410133239.438347-3-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410133239.438347-1-Jerome.Pouiller@silabs.com>
References: <20200410133239.438347-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM5PR15CA0056.namprd15.prod.outlook.com
 (2603:10b6:3:ae::18) To MN2PR11MB4063.namprd11.prod.outlook.com
 (2603:10b6:208:13f::22)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:1265:30ff:fefd:6e7f) by
 DM5PR15CA0056.namprd15.prod.outlook.com (2603:10b6:3:ae::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2900.15 via Frontend Transport; Fri, 10 Apr 2020 13:33:00 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fefd:6e7f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef8292e6-6543-425b-5052-08d7dd53b14c
X-MS-TrafficTypeDiagnostic: MN2PR11MB4398:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR11MB4398E59A911989DAC3EF434F93DE0@MN2PR11MB4398.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1091;
X-Forefront-PRVS: 0369E8196C
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4063.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(366004)(346002)(396003)(136003)(39850400004)(376002)(107886003)(81156014)(54906003)(8676002)(86362001)(1076003)(4744005)(6666004)(8936002)(4326008)(52116002)(66574012)(7696005)(316002)(66556008)(66946007)(186003)(478600001)(2906002)(6486002)(2616005)(66476007)(16526019)(5660300002)(36756003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HYiViTNkZGrUfBPkg5Rf9QZt9JUYs5cVihyvIL9taGXzRLq4OzierheUvyiX9Qoi4N7KvYl19ebp+Lz7llT35Cl3dD+E9UTqlqNCwW+f2WXxTav7M32IIPnm5c015g3fAxZBmb/ppivBk+Y9wvfxEfKl2sTg0cfAP4ifba4AbSbB5NlKqfD2iPW46mW9oyRgItI/X3Xy+oDRHSc17WZwYDecnlBqbVAngkAT0uT1qb3AcLbWvmt3s//BAivGpnrlN0q5e7I1GQ6A6AeWK/CRMRMIeFsbpIaA4afaz9kFMWQaPVwQ8UXQJn/xdeQtS1AL/EEmOJf1jT4++1HgwwuiecbKQ3yuKo4RuMJ+tuLm/7YyEPakciP4nrhlAHj3vx9xyHhd5ggw7h+Rkkq2yZ3wyY4vy4oUDxacEucWnrFCfTCr2ksP0DoUuV3z8z5QtOOJ
X-MS-Exchange-AntiSpam-MessageData: W6i06sxqp7r9y5ociy3puoMUyrjLqDCCpy6Aw+N0N74Qu+cNMZUdCL5DoOsjQUjpBSV76g/HYz42OcLBzGnJoKVLLXmkSXKBqWlQXKB7H/LBcjT4X/CLp7rUqzJhfy4exxcSuRztOzYj5PJJhcznuLr4jDa2XNtZOwR8az9uNuSMOmROXRgNU2Z4QkF8edOW1DV2u1Q6qiwrD99Ju8WeOA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef8292e6-6543-425b-5052-08d7dd53b14c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2020 13:33:02.5675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pl+s4sFudDAgNs6/t4nOjCA+0srZtx2fI/wF52H1LRQmh7J5FLFph8vcsxbImkrFPm2NIBJPsZaHUC4f8c+wPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4398
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKUG9p
bnRlciB0byBjZmc4MDIxMV9ic3MgaXMgaGVsZCBkdXJpbmcgYWxsIGR1cmF0aW9uIG9mIHdmeF9k
b19qb2luLiBCdXQsCml0IGlzIG5vdCBuZWNlc3NhcnksIFdlIGNhbiByZWxlYXNlIGl0IGZhciBl
YXJsaWVyLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxl
ckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgfCAzICstLQogMSBm
aWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jCmlu
ZGV4IDM4MGU1MzE5NDcyYS4uYzY1ZDQ2NGE3YTliIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdp
bmcvd2Z4L3N0YS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMKQEAgLTUwOSw2ICs1
MDksNyBAQCBzdGF0aWMgdm9pZCB3ZnhfZG9fam9pbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAkJ
aGlmX3NldF9ibG9ja19hY2tfcG9saWN5KHd2aWYsIDB4RkYsIDB4RkYpOwogCiAJd2Z4X3NldF9t
ZnAod3ZpZiwgYnNzKTsKKwljZmc4MDIxMV9wdXRfYnNzKHd2aWYtPndkZXYtPmh3LT53aXBoeSwg
YnNzKTsKIAogCXJldCA9IGhpZl9qb2luKHd2aWYsIGNvbmYsIHd2aWYtPmNoYW5uZWwsIHNzaWQs
IHNzaWRsZW4pOwogCWlmIChyZXQpIHsKQEAgLTUzOCw4ICs1MzksNiBAQCBzdGF0aWMgdm9pZCB3
ZnhfZG9fam9pbihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZikKIAl3ZnhfdXBkYXRlX2ZpbHRlcmluZyh3
dmlmKTsKIAogCW11dGV4X3VubG9jaygmd3ZpZi0+d2Rldi0+Y29uZl9tdXRleCk7Ci0JaWYgKGJz
cykKLQkJY2ZnODAyMTFfcHV0X2Jzcyh3dmlmLT53ZGV2LT5ody0+d2lwaHksIGJzcyk7CiB9CiAK
IHN0YXRpYyB2b2lkIHdmeF91bmpvaW5fd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCi0t
IAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
