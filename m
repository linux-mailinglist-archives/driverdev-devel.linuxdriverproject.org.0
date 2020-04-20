Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D2D1B114A
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 18:18:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 271AA86088;
	Mon, 20 Apr 2020 16:18:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KEEHD8N1LCTy; Mon, 20 Apr 2020 16:18:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D12D86078;
	Mon, 20 Apr 2020 16:18:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6C4251BF327
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:18:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 63D2987E4C
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:18:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id StnzwD6zDbQc for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 16:18:10 +0000 (UTC)
X-Greylist: delayed 00:14:32 by SQLgrey-1.7.6
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2081.outbound.protection.outlook.com [40.107.94.81])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A7F27877AE
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 16:18:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SpYD2IZH0O90Q8+cVpt+I/idDxCrEV1nZ8+1b6HfpPWXfhB6c72ZaDyfSoP0NF/HYxVbigyGzFF+0NUytASb9nDnYagGwc9ijSzOY0iR32MGhp8WP4uhvKgkhW1inH4Yvx2C5wW5JovXfN7vqZEHLnc2g7+pcqe2adxVKoon1efpykeNoOV/fuj+DHtuMReQkwSb/T3TtN0u6joyi0We8HawV/pjXFpjwvcI74ff69uFOvTIwFqFVMtYEYPU36pwMN1lSA3BtxkfrEGJp5GTWeFbZTdRvdlLN3vxka9aFHR/giWYwx0m0UxRcjKDZiAWrLy0hD/sL8o+9sHaakVyqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJa48eiM8960rAPKW6VzfCfm6aLZSx6nHilBqrxG00c=;
 b=kuZ4Ra78opSAG3dOS+aICZSEPM4AfP6SL3428tIgzlil70YdVvtWUSkOcD5CiMVzCBuKwoAepR5/dQFn1cJbId+OX1daCZS152IQZA7U1K6IsXzdNEq/xXr2zwtBpdzJgyJa2BLZCvASFY7ZGZufcIamIgA2/5jBIB4o1ymMTKuU98+X+cBZzviQuZNEHhNqMGA9unAxgwj5/Y+RcHfvanJUmOtZCVVyQc7cmulUPR8ZX6iKz2+/uQlvYTKCMXgLMhlADCcneFJJYZydcPBXUXa802w9wy/8bXbKHnxOnlZziGtS8j7nzNWC/ON8n3J0luAUe4f/XaRVEdb+ARGBEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zJa48eiM8960rAPKW6VzfCfm6aLZSx6nHilBqrxG00c=;
 b=VJtSGReh6MsvdGGrj1IqNROp0BDmdAa+shhyzidLxL2sCnf5lpMIz+iHNbbNnK6ZIU2xZI2qJIBZI2BxGnL+POSR3npU2w4gjwUJRv5nvcaTrplQ3uGRyKCN+ibEVnFFUPq10ZK6pOF3RDxEMO4932iUmj0meJrUpqHco5hrinQ=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Jerome.Pouiller@silabs.com; 
Received: from MWHPR11MB1775.namprd11.prod.outlook.com (2603:10b6:300:10e::14)
 by MWHPR11MB1792.namprd11.prod.outlook.com (2603:10b6:300:10b::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Mon, 20 Apr
 2020 16:03:59 +0000
Received: from MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe]) by MWHPR11MB1775.namprd11.prod.outlook.com
 ([fe80::81d5:b62b:3770:ffbe%10]) with mapi id 15.20.2921.030; Mon, 20 Apr
 2020 16:03:59 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 14/16] staging: wfx: simplify wfx_remove_interface()
Date: Mon, 20 Apr 2020 18:03:09 +0200
Message-Id: <20200420160311.57323-15-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200420160311.57323-1-Jerome.Pouiller@silabs.com>
References: <20200420160311.57323-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM6PR07CA0065.namprd07.prod.outlook.com
 (2603:10b6:5:74::42) To MWHPR11MB1775.namprd11.prod.outlook.com
 (2603:10b6:300:10e::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 DM6PR07CA0065.namprd07.prod.outlook.com (2603:10b6:5:74::42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.26 via Frontend Transport; Mon, 20 Apr 2020 16:03:57 +0000
X-Mailer: git-send-email 2.26.1
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1dff7dea-775f-4aa9-e6a4-08d7e5446fe9
X-MS-TrafficTypeDiagnostic: MWHPR11MB1792:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB1792CF75A6F8FB5CC25999C293D40@MWHPR11MB1792.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1122;
X-Forefront-PRVS: 03793408BA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1775.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(39850400004)(346002)(376002)(366004)(396003)(136003)(66476007)(66556008)(186003)(66946007)(4326008)(86362001)(16526019)(107886003)(6666004)(81156014)(7696005)(478600001)(52116002)(8676002)(66574012)(54906003)(316002)(6486002)(1076003)(2616005)(36756003)(8936002)(5660300002)(2906002);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: silabs.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9VPsEzHXNE+SspqoqvyzPJ3YLdKqDXfI6ojBKNZUBQb1bXL2ohMinSpx7+9fM++abVaaJmgg9ZETKVR9tJ+Rih4B+xDSRi/YvfuIn6r7pwT7PmdFysG5z0IXV/iJIRNGOr5R5akIAscfH7dDZPD4+RDq/jnQmnZRFbIn+AI1Dh+0Izz2/JcBwl7q6hkggoTBZH9/FnBPXea4K3uwN754ZtvhqiFPOZdM5QaDnGRi04Y3VTJ3m+etrWRp/UqpTPLzRGp/m2DCHNvngP3daN6MM5HA/EZcBERzQbTiY0aUcr6ftzb2uvLurIW+nFzVJ4X5tMVKY1f89ym+zfbGBP76/dvSoEzJWxIRetrhUjpfTno1bnP62V70OqGXriAuxxLUd24dStRGMh+LC3AgYjPgAtZOMWSQswwVweOkzfGIfFffRGcyMrcGghJ9KtRbXWMy
X-MS-Exchange-AntiSpam-MessageData: 513piUIs3SKWdvvwO2oxiHYBIj/FIrhOFjIazLcmWurwgzNq6nGP2cJookzNHhHMlvpoUrVHwso2QHd4ndl9IxWipGbbdtTmoj4HYY1fSAcWY06OtpX0g/nKeI1aGYyxhSPQU2K6q5M5G0Axwiefzqe6IdA+5RHGNcuvtJk5XGVoXhV0enfrejIDGt2PPGJG7qKUh4+eZbLiR+1HDkILRVpO7NELIQvy24GadtbkanJpKudGOHy6Qe7+7ttUUiDJtx5oCgczLk96iWYmHetVOxdOHwCUPP6bGWF/7cOu2ZGZFIm4iUdF8kzxFPA7i6itt4IALxO07SsIJTYYBmCRG6hr1Amb0KF9jtoZQeKpMMIGdFB2b2knC6SwwLnPpQ1ZSV6STfcGVA9dgCi/wGBRJpfKzl59KWj+ynYhec7SLuol21JMeLPPX2++fXvAi6txGL93T7999KlLa5w283SidfG7SJCvJBEAAhdP9gopDyMUDWNohrxZJB5W7BZndkaKtdWX9CrIBAIWsL3E3Gp+p4WbostSAYY9W0F+pM29tctECiaZDYv1/bVZlRdIi+Ei0ssIy4cSHdIkekAlOsRYq76Rt7X/wfb9nss99R/24l7V7d0m3b2oWn61cy7Y2X9kO09i0PAhH57obGOQnn/ZSw3iojws4/xHp3+jFPgvgOzJht069raoIhrHseYLo1EjVjvbxqJRoY79WweFdtm49d7+BlF3nO6md1cxTVW77JRjF5E4YHd5aUxyNBaYeZmMWs170vj+wZpEkHBdM6KDqyu7nTA0LepadeYqWKZZrcnwj4xU9BsJFgXp92M/np8D7qDEY7cdJWXbNUjdx5j9IFTYlcz7/sv5c8v5zp0trUY=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dff7dea-775f-4aa9-e6a4-08d7e5446fe9
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Apr 2020 16:03:59.7729 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RDpVvAhRsVMHmZHWClkFiob1HoRS/0yD1FrfkmZ4Z3ghWWjlWoGb/5jt2NCTkE8UTGw9y6PNLQpHLvjbYL/2cA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1792
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKSW4g
d2Z4X3JlbW92ZV9pbnRlcmZhY2UoKSwgdGhlIGN1cnJlbnQgY29kZSBkaWZmZXJlbnRpYXRlIEFQ
IGFuZCBTdGF0aW9uCmNhc2VzLiBIb3dldmVyLCBpdCBpcyBub3QgbmVjZXNzYXJ5LiBJbiBhbGwg
Y2FzZXMsIHRoZSBvbmx5IGltcG9ydGFudAp0aGluZyBpcyB0aGUgY2FsbCB0byBoaWZfcmVzZXQo
KS4gV2UgY2FuIHVzZSB0aGUgc2FtZSBjb2RlIHRvIHN1cHBvcnQKYWxsIGNhc2VzLgoKU2lnbmVk
LW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgot
LS0KIGRyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMgfCAxNyArKy0tLS0tLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYyBiL2RyaXZlcnMvc3RhZ2luZy93Zngvc3RhLmMK
aW5kZXggYmM4OTFiNmU0MzkyLi4xNzMyZjNkMGExZTUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy93Zngvc3RhLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9zdGEuYwpAQCAtNzg1LDI0
ICs3ODUsMTEgQEAgdm9pZCB3ZnhfcmVtb3ZlX2ludGVyZmFjZShzdHJ1Y3QgaWVlZTgwMjExX2h3
ICpodywKIAogCW11dGV4X2xvY2soJndkZXYtPmNvbmZfbXV0ZXgpOwogCVdBUk4od3ZpZi0+bGlu
a19pZF9tYXAgIT0gMSwgImNvcnJ1cHRlZCBzdGF0ZSIpOwotCXN3aXRjaCAod3ZpZi0+c3RhdGUp
IHsKLQljYXNlIFdGWF9TVEFURV9QUkVfU1RBOgotCWNhc2UgV0ZYX1NUQVRFX1NUQToKLQljYXNl
IFdGWF9TVEFURV9JQlNTOgotCQl3ZnhfZG9fdW5qb2luKHd2aWYpOwotCQlicmVhazsKLQljYXNl
IFdGWF9TVEFURV9BUDoKLQkJLyogcmVzZXQubGlua19pZCA9IDA7ICovCi0JCWhpZl9yZXNldCh3
dmlmLCBmYWxzZSk7Ci0JCWJyZWFrOwotCWRlZmF1bHQ6Ci0JCWJyZWFrOwotCX0KIAorCWhpZl9y
ZXNldCh3dmlmLCBmYWxzZSk7CiAJd3ZpZi0+c3RhdGUgPSBXRlhfU1RBVEVfUEFTU0lWRTsKLQot
CS8qIEZJWE1FOiBJbiBhZGQgdG8gcmVzZXQgTUFDIGFkZHJlc3MsIHRyeSB0byByZXNldCBpbnRl
cmZhY2UgKi8KIAloaWZfc2V0X21hY2FkZHIod3ZpZiwgTlVMTCk7CisJd2Z4X3R4X3BvbGljeV9p
bml0KHd2aWYpOwogCiAJY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZ3dmlmLT5iZWFjb25fbG9z
c193b3JrKTsKIAl3ZGV2LT52aWZbd3ZpZi0+aWRdID0gTlVMTDsKLS0gCjIuMjYuMQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBs
aXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRy
aXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
