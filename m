Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC0F1AAD0C
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 Apr 2020 18:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C20DF21541;
	Wed, 15 Apr 2020 16:12:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dr1GCZLPkq+b; Wed, 15 Apr 2020 16:12:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 554FF20BF9;
	Wed, 15 Apr 2020 16:12:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C7CC1BF326
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 86ABC84A33
 for <devel@linuxdriverproject.org>; Wed, 15 Apr 2020 16:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cUlsx2gvuy7v for <devel@linuxdriverproject.org>;
 Wed, 15 Apr 2020 16:12:36 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
 (mail-eopbgr700072.outbound.protection.outlook.com [40.107.70.72])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 78F03860C9
 for <devel@driverdev.osuosl.org>; Wed, 15 Apr 2020 16:12:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P6182+L9AyRlyyXJW+3iFVmhhTKq/5SFWxCkJVeoBNPSBxYgwVqKYrvJh47jb8sXkNhDVFRj8LpVG9CcQ34pz1kgLxKdHWD9eUqLUD6juJmG3G9LXYSCI4s7045mIMPP1Y+JQN7xa5DghEYwcREtWZp9XqkvSgE4rxy7SefmkbPlvtlaYLo8oCK40UP3DnZ//nHVOiy84V+rxZTg6P2mdvcoMPcd5I7pakSGTjIO1COkqxtKdet1CITtKfDXETyzcCvoeOl/Z0JSeYotPZqogcd0dF1rO9ZMx/gB6MD5+1bCnMdP3yGEHRvVhb8WPiZEL2wxGgpnBxDbOLhMqYoftA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GgTYWIabQecCI7PUZfPoM9nNc6ZjdlRRo9IajxQppw=;
 b=R/PbykHEmbSjhK7qUAvRBPi5KlYfjNBWiY7u/2St3JGtJnb7eGbgLcXGUh5kTaxdSamHrm7O0jTWO/FQaaOWSdnaWcm9Zn6EUBBggLEuD1LiDWguSybaf3vgbSgDqsH/7e0oEkT186GEcolJvT630p7L17YV4a9zZL8UuZVvd1o/dURT8S6kND4YZ7mCvslRDgTEd+b/VY6x3qKCapFYAUshTTlXvY/Q2+fNKui56gpNmkhnI/Wi18ALd+yRXWBeMnZHgQztUccDNu9NLPHtHwmUeeQ/+V2IL1E5+tp/+1FZgL2oaDpX1fPc6zWCKUlNykBB7cUjYoogUjqVLJWUtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/GgTYWIabQecCI7PUZfPoM9nNc6ZjdlRRo9IajxQppw=;
 b=hVcCur3Om5eSyV4o5FNHipaMDP1SuXO+sSSyfMOWvgPUElf/Pc95BoLi/FhGCblAqiePKbIKXsJOsYEvNXF/rfTfX/PSe4bCIFbc+PRBXfniWy3dJlVAaRbX14DyliiSuk2WDcSG7FccpkAAmFa3CaOf1Lx9QrPYyBLsxwGztVM=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1408.namprd11.prod.outlook.com (2603:10b6:300:24::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.25; Wed, 15 Apr
 2020 16:12:35 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2921.024; Wed, 15 Apr
 2020 16:12:35 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 09/20] staging: wfx: stop changing filtering rule in
 wfx_hw_scan()
Date: Wed, 15 Apr 2020 18:11:36 +0200
Message-Id: <20200415161147.69738-10-Jerome.Pouiller@silabs.com>
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
 Transport; Wed, 15 Apr 2020 16:12:32 +0000
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2b14572a-2c9e-4600-78dc-08d7e157cf09
X-MS-TrafficTypeDiagnostic: MWHPR11MB1408:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB14088E77B540D0EA88DE143C93DB0@MWHPR11MB1408.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-Forefront-PRVS: 0374433C81
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(136003)(396003)(376002)(346002)(39850400004)(366004)(8886007)(8936002)(4744005)(5660300002)(2906002)(86362001)(8676002)(478600001)(81156014)(66574012)(1076003)(4326008)(52116002)(316002)(54906003)(107886003)(186003)(16526019)(66556008)(66476007)(36756003)(2616005)(6512007)(6486002)(6506007)(66946007);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jh12hm997oRmI0gUR2Ph5zCOBwwWno6Jz+Le+QSLbxBefb9UPf/6j9QvqHuQCSCfP8dO6+YpvNLECrXmAGD3X8kUnsrxcA0IwqaqvZI0eWr+IQZoWed+aDbszb7JYE5HZ2rz4M53UzdlGKgeuwsO3UJ52pZy/dVsUii9mHMMj+vVUTfEbXpdEyuxPBMIi2N9NU+ZklB7JEyDNag9LcevODA6AXH5w2/J0+R/lVrzk68EJhbeNexuwcydnbl5+DLFokLlkaJaGlBPmqZ8inQvt6RbLmh146UbZeU0gwAMXzYGRFsGJFHxYJ9wqBXJlOGeEjQOtm4TmHlOgLAU5cww78hZnWsbcl02WomTChGzNbKk6agXO0yoqm4kgZng+LanMESthMi3orFaV4c9US7N07ZMx7iMkW2IEsHBXn4/60OTLXhTg016G0W4sJdXfn4p
X-MS-Exchange-AntiSpam-MessageData: kO8pTUS0KVhMRgpMuMUbKeWjalWIf9S2qBTP1Tl8Es6d8Tj0CaiQt+Hu3mVwimV0xSzWIyPRONaulM9cDgkwWWkN5SyyhLYLPe7GPCRx3hDfS7v5KT429ZeSqgK7jFFn66o7KfZ6SVsawActD4vGQ5DiBrAZOzVHZjyjXUtbMN+wu34gnZS7TmElfIFH2Lx8+iWP8HsvG6d9hrYu7GbNNw==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b14572a-2c9e-4600-78dc-08d7e157cf09
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2020 16:12:35.0922 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ApX7y/UCqVb9mBWkvKwvd07U7QfxSVFVbzv61/E7prQuUgIFlDzjKfMaie08JpUw1nF+xndp3KUdXSHs8z/2Ag==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSXQg
aXMgbm90IHZlcnkgY2xlYXIgd2h5IGRyaXZlciBhc2sgdG8gZmlybXdhcmUgdG8gc3RvcCBmaWx0
ZXJpbmcgcHJvYmUKcmVxdWVzdCBkdXJpbmcgc2Nhbi4gSXQgaXMgcGFydGljdWxhcmx5IHdlaXJk
IGJlY2F1c2Ugc2NhbiBpcyBub3QKc3VwcG9ydGVkIGluIEFQIG1vZGUuIEluIGFkZCwgaXQgZG9l
cyBub3QgcmVzdG9yZSBwcmV2aW91cyBmaWx0ZXJpbmcKc3RhdGUgYWZ0ZXIgc2Nhbm5pbmcuCgpJ
dCBzZWVtcyB0byBiZSBhIG1pc3Rha2UgYW5kIHNob3VsZCBiZSBkcm9wcGVkLgoKU2lnbmVkLW9m
Zi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0K
IGRyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5jIHwgMSAtCiAxIGZpbGUgY2hhbmdlZCwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5jIGIvZHJpdmVy
cy9zdGFnaW5nL3dmeC9zY2FuLmMKaW5kZXggMGM3ZjRlZWYwNDVjLi4yNzZmZGFjZDcxNDMgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy93Zngvc2Nhbi5jCisrKyBiL2RyaXZlcnMvc3RhZ2lu
Zy93Zngvc2Nhbi5jCkBAIC04OSw3ICs4OSw2IEBAIHZvaWQgd2Z4X2h3X3NjYW5fd29yayhzdHJ1
Y3Qgd29ya19zdHJ1Y3QgKndvcmspCiAJbXV0ZXhfbG9jaygmd3ZpZi0+d2Rldi0+Y29uZl9tdXRl
eCk7CiAJbXV0ZXhfbG9jaygmd3ZpZi0+c2Nhbl9sb2NrKTsKIAl1cGRhdGVfcHJvYmVfdG1wbCh3
dmlmLCAmaHdfcmVxLT5yZXEpOwotCXdmeF9md2RfcHJvYmVfcmVxKHd2aWYsIHRydWUpOwogCWNo
YW5fY3VyID0gMDsKIAlkbyB7CiAJCXJldCA9IHNlbmRfc2Nhbl9yZXEod3ZpZiwgJmh3X3JlcS0+
cmVxLCBjaGFuX2N1cik7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnBy
b2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
