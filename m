Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 753481C560B
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 14:59:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79A2B86D16;
	Tue,  5 May 2020 12:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lmpUD90FU2gk; Tue,  5 May 2020 12:58:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BA87B83DC2;
	Tue,  5 May 2020 12:58:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C62721BF3BC
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 12:58:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BD3DC23A53
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 12:58:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VvmcYiuXvFwl for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 12:58:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2071.outbound.protection.outlook.com [40.107.94.71])
 by silver.osuosl.org (Postfix) with ESMTPS id 06F7E23BC0
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 12:58:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Vag/VdEF52qDNjaYOQvXJNdwT6ZCkQ34DiPYpAx4YLVmOcOpOMWzngXwVmgQrNcadFfRdEH4/B+zVLKHcqs7IfARg10ZaJVEhVQyJyuSObE5RyHHfy4ore4dEbF4kheV8RwDSij1zJsjfNTkahg8hwR3RLG1kGZPEOrK6UK8gZMP5Qy4HQ3h7eGD3Nv+IpWg7qj2yZAsDQmpPxZjrj+67nIsJII9pR6zbqHARcraAqCUTnNPiN7OyopOsKwZBcqHlS6Y3PONyQkxrThxRjAVrpz1wfUhxqE/UpfDVL3dBh7yiLJzJhtM5WryvIwmbEBrpt9elxUzI3/+2bbD80AeKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BMsL47ngdy7orka6QlF3LRHzhyGyfTP7NGN5ukbZqqA=;
 b=SrPSfzIfrzAnb0Y/Uo2X4wbyV9WeR3FwaDLYVnu9ayF87jFHJO5b8MmrBPItxiueXgk5xVTT677W9UXo6sXKHrEEcvceH5E+8UbV9OJyXommSbhzz93eXLW276htn7BQZ39yqwti2Xa8AcKXhLb4dS5uN0n1jk68z1fDSXygbxyIqtIoSdBRL+qBcvkoE2LlBlcgZapTes3v95beVYz/7XMMF/vPdQe6Lu+Jae6SgqyRW+HGGFNObHix9f8wNUbbFNws0/i/HFcrkVPtSw5pm9QW7PSjT7YpDIiMCwn7Akj1V4DmhUBzlPHQdXA9Js4k8s2V+inFdCt+U0XPgADlLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BMsL47ngdy7orka6QlF3LRHzhyGyfTP7NGN5ukbZqqA=;
 b=fzfFEynj8FUiO7rm8IzxSku4MaInp1AhOidKB5r2w50tld6w/sLKYg5I6g1a6Xu3opfAbnny/qG41VNNFIhSsa/tJgY+rO5i/D6MlHuP95EAXM6/fyxRhr5JHkL57DywMbgHEfRwqMKf/85zNajYEZZnheTqI2evch+HvL2sCw8=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB2046.namprd11.prod.outlook.com (2603:10b6:300:28::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Tue, 5 May
 2020 12:38:31 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2958.030; Tue, 5 May 2020
 12:38:31 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 09/15] staging: wfx: fix missing 'static' statement
Date: Tue,  5 May 2020 14:37:51 +0200
Message-Id: <20200505123757.39506-10-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200505123757.39506-1-Jerome.Pouiller@silabs.com>
References: <20200505123757.39506-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR3P189CA0022.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:52::27) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (2a01:e35:2435:66a0:1265:30ff:fefd:6e7f) by
 PR3P189CA0022.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:52::27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2958.20 via Frontend Transport; Tue, 5 May 2020 12:38:29 +0000
X-Mailer: git-send-email 2.26.1
X-Originating-IP: [2a01:e35:2435:66a0:1265:30ff:fefd:6e7f]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: abd1b201-ed64-47dd-4f9d-08d7f0f137bf
X-MS-TrafficTypeDiagnostic: MWHPR11MB2046:|MWHPR11MB2046:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB2046763F9C1E5CB7366203ED93A70@MWHPR11MB2046.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:568;
X-Forefront-PRVS: 0394259C80
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WA8eBfzZDYoi314NS4naPuzd6Hfvt4znQwwPq0CcQ5XU2wTwkvFCuKi+VBBK3z2uWZ1YZPUkLAFTYAlr361YIwpWH+WeiTChIjEv1mFMhWcgevWaTqYsbwed9WToYY2y9D71C5rjuuiJDLwUi3+h1pSKhawf0b+NCvNBGYh6vyS7rnEwGg2BDE+72DRneklQhe2wmX0+TtKfNJwGooWiZ+19EcXRY9dn3OxX4jwJz0uaqMKV50hcBgsmdrxkcvsdMyeAIR6SSfP+RwyTW7/qu+nHoEdRSKgI3bHPjSGJCL+WoHIYL98JT/VPIpQKyvVCBS6liTWodfenn9gh2P0DEo6f7MyOZVnPROUtFH7HTRA6kYdnGIQCvqcBZg9D/uh5mvzwYNBCuZTGf9EC/ac2maWuXLL8YE0J4DYw5mFABcdIsAmt7HVEdgNBxLIXL3dtTP9IasS/U86J9iFxtDOzIVQiwv16Hb9bqFnnsgVs+SHKmmZ8eaPGCBXvxqeDoSn4ynh/qgTOnqbP0uymrFDdbw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(366004)(33430700001)(2906002)(36756003)(4744005)(52116002)(86362001)(5660300002)(6486002)(1076003)(8676002)(8936002)(6666004)(107886003)(2616005)(66476007)(66946007)(16526019)(186003)(66556008)(6512007)(8886007)(498600001)(4326008)(6506007)(33440700001)(54906003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: BWmbXO+dO/+c16ncaLEOx88qnYFaIEZGm/3GF7SAMn/g4bEGp+MjvuAbkBejL5FcxuxGQdgL8fgIfObOIpeMFLWnUvlseXTfAaBj0FvD+QVmzbc88VBe3pkkl7jI5TZQVcS6Uuan44cP3qEtqByFGSH6fK+rHJJepKBqbjZUD8gFaz+F3gbysEbOXl2hrhPH05l0wiHD9RIelevjl6u+FXBxgEfJFhyfaFIonWlwkdeFm5fkGr0u2iDdKjQdIEiXo/SjjndhXbvX8hTlrkuIBa8kvHUaifiJpXSrs54cipS+HYyEmn6zMn+TP31KxFT2p3gi9Fas3WzflSgxoyuZaaJ4wNk/T9WrwDOPnVmkm/gf1GBiEIPUULzQhW/y5g+1nAry8MkwMpXb055xCL6m8QrbQu8vQashKGYGk/W1gvorTDLmyH/BeX24Uy1Ern3QuVEUCrkL72VeKfgs1VQStpB++NTVLcT8wyGH8HgdRVuz1OprNo6uq1Va+sBZVnOpG7CjKFdcsXmKzE7b16a+E/N9Th/lga2ROWO7iwUk0rN2Ma3VeNNiR6Vddk3gCPNeVdH5Jl4m9NFxn4s6LrgLkTrj8Bdy7kLrIlpJ/CGWI+oubchvZPNSLowLmhLHPMzu5lxoQAK3Lan2S88osxUr/jbOjKsBgF17Q8vCf5QJR+nkw5DGh3bl7eUhW4jMafXskE9WIlUCBlww5mytvDDLuxJNt9gGZ7lVB8q23+X/+cX/YNw8sO6begb0fE3gw1bL+TziEFJqCb2Dn+e/+IxyOEWrPuoOvVH5EaWw8w7ebNEDO23sSrTOyft7ZNPFC2oVWc9V7XtLUMEsAd7QA0FekC/4Ok3JLwFT7MF42F8PFco=
X-MS-Exchange-CrossTenant-Network-Message-Id: abd1b201-ed64-47dd-4f9d-08d7f0f137bf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 May 2020 12:38:31.3441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7+MWnA8zhNnR19EO0jkqi+ENIko0QVRFfZSEKFRxEOJyv3T/dOYko92Qz2aXM2lTr7OoQDpdNLxWV0JIzFpClw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2046
X-OriginatorOrg: silabs.com
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
IGZ1bmN0aW9uIGdldF9maXJtd2FyZSgpIGlzIG9ubHkgdXNlZCBmcm9tIGZ3aW8uYy4gSXQgY2Fu
IGJlIGRlY2xhcmVkCnN0YXRpYy4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxq
ZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KLS0tCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8u
YyB8IDQgKystLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvZndpby5jCmluZGV4IGUyZjkxNDI5NjY3Ny4uODViNmE5MTZhN2QwIDEwMDY0NAot
LS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4
L2Z3aW8uYwpAQCAtOTksOCArOTksOCBAQCBzdGF0aWMgaW50IHNyYW1fd3JpdGVfZG1hX3NhZmUo
c3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiBhZGRyLCBjb25zdCB1OCAqYnVmLAogCXJldHVybiBy
ZXQ7CiB9CiAKLWludCBnZXRfZmlybXdhcmUoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiBrZXlz
ZXRfY2hpcCwKLQkJIGNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqKmZ3LCBpbnQgKmZpbGVfb2Zmc2V0
KQorc3RhdGljIGludCBnZXRfZmlybXdhcmUoc3RydWN0IHdmeF9kZXYgKndkZXYsIHUzMiBrZXlz
ZXRfY2hpcCwKKwkJCWNvbnN0IHN0cnVjdCBmaXJtd2FyZSAqKmZ3LCBpbnQgKmZpbGVfb2Zmc2V0
KQogewogCWludCBrZXlzZXRfZmlsZTsKIAljaGFyIGZpbGVuYW1lWzI1Nl07Ci0tIAoyLjI2LjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1h
aWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYu
bGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
