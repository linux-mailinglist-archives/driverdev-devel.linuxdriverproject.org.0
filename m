Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED826210E80
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 17:08:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B39DB8A9E1;
	Wed,  1 Jul 2020 15:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s5VfGOHyH3OV; Wed,  1 Jul 2020 15:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D9DF18A9F7;
	Wed,  1 Jul 2020 15:08:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E27531BF97C
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 15:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D0F068AB4F
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 15:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lm5PSASPBFWG for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 15:08:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2058.outbound.protection.outlook.com [40.107.237.58])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3E06B8A9E8
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 15:08:19 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MypLRVA1DHmlwop3EhZLGIbLDif79yXOGCyxsOVPg6RORZphBoviyJvD+lyioqw3NtZD8QmU0JDdTDH2av4lBF7cJRAh37huvJSjIpGP12fnvjYcDV2PnVPXB6wQEvEzkkD2gjjX39tm/EDIqmHh6983yQE1+xZBz/L19wp63gPqW4r0kjM0ZhDhhq1J73AnuoYzLbmwN+d9OBPSrHZXr+KyRPQ1Y38eikuArnGa2EzMBoEfVWqkCDBgCaaxGDKnmkPC18YniJq7R1Dskx0JujH1jbpZgbCTD7t5C8sK62vi6RTUemsSHAsrwwPsdsHf1K9oMAOe/plilBm7NCkPow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O2NKDaQe/6CFDqZHeggRlniPaBmOJuP7JnQFWnZub9k=;
 b=geZgIrdfo/FEfBGZRpB1eEz9IVbSS6yAFUySbkCM/Jy+FoAZ08z5Ee8IrpdeP4c3wP7tLrd95GVd/ddBaRtu8yKox+hVA4jWdsgC2tj+I4UvOMIngdarelNWTNxiTK/ocWSxardYAcxVnOSZ4kNGvWLL8fT/w6Ez7yctAWIbC+Yffq1CsrpzBv6nFYNZ1wLLuiCf1eUqAinaFX6ZZ432kNnEW8SC2e4ciq2qDzrGvGA/EAX+I17fuCU8mDvSSEnZWCddgbvySI5oLSoTJXGsYIrnwFsHoFdTnTYGpLgZ2lDk1GlBVxZGMmucSyVvPW7cKacPRLzSp7VfV+AnDS/krg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O2NKDaQe/6CFDqZHeggRlniPaBmOJuP7JnQFWnZub9k=;
 b=g2iuQ/4ieQPH+9ymq1dFhieyZLrj5jZP34DwSg74zSzXrU+zYccSHRBcxphyAHd43COK5aXDag9FQVnxTSFrWemFXQDnTHk67oUni+ifxGTVki1F3fKBA6+1eee8Ng3IK/M3hg708R3k3+FKnZaHd/yhGfIxVRBL10FIkk8cXas=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4736.namprd11.prod.outlook.com (2603:10b6:806:9f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.22; Wed, 1 Jul
 2020 15:08:18 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3131.033; Wed, 1 Jul 2020
 15:08:18 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 09/13] staging: wfx: fix handling of frames without RSSI data
Date: Wed,  1 Jul 2020 17:07:03 +0200
Message-Id: <20200701150707.222985-10-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200701150707.222985-1-Jerome.Pouiller@silabs.com>
References: <20200701150707.222985-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: DM5PR07CA0143.namprd07.prod.outlook.com
 (2603:10b6:3:13e::33) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (2a01:e35:2435:66a0:544b:f17b:7ae8:fb7) by
 DM5PR07CA0143.namprd07.prod.outlook.com (2603:10b6:3:13e::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3153.21 via Frontend Transport; Wed, 1 Jul 2020 15:08:16 +0000
X-Mailer: git-send-email 2.27.0
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a6780273-4365-4b9a-7e23-08d81dd09632
X-MS-TrafficTypeDiagnostic: SA0PR11MB4736:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB4736C8FA8247117EBF312613936C0@SA0PR11MB4736.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 04519BA941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CT3etVr8Cjo8YGJM+lNHOpRIrWE1eC3aO8gdgRf1qGCDqef+JRe1jIXgCGy4Nke3aHYcT/JjRm+GtLVA8/7uTY3KFTXcwNAXqrqErr3bvbp4Zyf4o9nQOifeIrjApLSZk3tQUEicIzqmC/9zhWtQJ1zNa0zEDdHofTsSwE+jWdeqaIyiU1gpql0Z7N9BeMGiEh2goGJE3uLFU1LPs3IaXW2933s0HeCZudgLf4FYoEHf2w/7XOyr+58ddgJZA/mq+taUBmS2CjMEP/hAWV/rLJRe9MGZvgoUusanBrnFGMFLn/d82PgEt+uDCXv3NxQvRy13kOpcNzIjdLt6n/ohqw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(366004)(346002)(376002)(396003)(136003)(5660300002)(6486002)(86362001)(6666004)(66574015)(36756003)(2906002)(186003)(83380400001)(16526019)(8936002)(66556008)(66476007)(107886003)(4326008)(8676002)(2616005)(1076003)(478600001)(316002)(54906003)(66946007)(52116002)(7696005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: oOXCePgE8ZN0aG9e+Bp8nnnKMjZzLFrR8vfP18Vny4Tjpn6AvNMPGxpaQXyEFC68kXzK1NJThDRMTCEPpfjMO3jlNM31VWL8J1ZvZ2PUoqs5/tYSXsEG1ULKaczwWKOHbrcY4xpLefxUtg2VBaat0OHfCyXDUWX9+aTYgkEPBmBUP/yX8MbB/M1LsmbBGoTbeVjjBnH74Us2/jAUlOWchM8I75j0hAcYR/zBSnU4ntDn3iWoxC/UZoUNnLEBWgVHLLrEzeRJlwE0YwavGe2RksmVw2pY3DUAh4Ij2jGf4UBaojzQxpk6QHTKBnUF+DGScEx6n2QCyBkNNXSc6ojvZ9bsH5fYVgNMCo1GHHLwIS8chvPGkf7Td9lgpR/7TsLPHr1WUS2jL2Zw0usOOuVfptB0mrm4ua18JYwoBV8+vlDMrRP+8KwPC+y+93v/nFCuJeuJmd/FoGRjiSc1h6uWFiDSzQ1hLHnXUPWu9kS9Dt7j9QulNxzUP4QPv8Or/HmrGWcsD6hUy6VeN8EMSRXuFEmxA036PfY8kiO1Xr7ECCc=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6780273-4365-4b9a-7e23-08d81dd09632
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2020 15:08:18.5868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IOXIUmDcId3PRzOKXUWxfv32vR1Y5LOdzizuSZ5cn3k6B7tMtZ9HXG9KyS/MaNcBuUU/4bECkM5p4bIlZcc8JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4736
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
c2VlbXMgdGhhdCBpbiB0aGUgb2xkIGRheXMsIHRoZSBSU1NJIGluZm9ybWF0aW9uIGNvdWxkIGJl
IG1pc3NpbmcuIEluCnRoaXMgY2FzZSwgaW4gb3JkZXIgdG8gbm90IHBvbGx1dGUgdGhlIFJTU0kg
c3RhdHMsIHRoZSBmcmFtZSB3YXMKZHJvcHBlZCAoISkuCgpJdCBpcyBmYXIgYmV0dGVyIHRvIG1h
cmsgdGhlIGZyYW1lIHdpdGggdGhlIGZsYWcgUlhfRkxBR19OT19TSUdOQUxfVkFMLgoKSW4gYWRk
LCB0aGUgcHJvYmxlbSBzZWVtcyBub3cgZml4ZWQgaW4gdGhlIGZpcm13YXJlIChhdCBsZWFzdCwg
aXQgaGFzCm5vdCBiZWVuIGVuY291bnRlcmVkIHdpdGggcmVjZW50IGZpcm13YXJlcykuCgpTaWdu
ZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+
Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3J4LmMgfCAxMCArKysrLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV9yeC5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRh
X3J4LmMKaW5kZXggMGU5NTllYmMzOGI1Ni4uMzE2YzJmMTUzN2ZlNSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9zdGFnaW5nL3dmeC9kYXRhX3J4LmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRh
X3J4LmMKQEAgLTczLDEyICs3Myw2IEBAIHZvaWQgd2Z4X3J4X2NiKHN0cnVjdCB3ZnhfdmlmICp3
dmlmLAogCiAJbWVtc2V0KGhkciwgMCwgc2l6ZW9mKCpoZHIpKTsKIAotCS8vIEZJWE1FOiBXaHkg
ZG8gd2UgZHJvcCB0aGVzZSBmcmFtZXM/Ci0JaWYgKCFhcmctPnJjcGlfcnNzaSAmJgotCSAgICAo
aWVlZTgwMjExX2lzX3Byb2JlX3Jlc3AoZnJhbWUtPmZyYW1lX2NvbnRyb2wpIHx8Ci0JICAgICBp
ZWVlODAyMTFfaXNfYmVhY29uKGZyYW1lLT5mcmFtZV9jb250cm9sKSkpCi0JCWdvdG8gZHJvcDsK
LQogCWlmIChhcmctPnN0YXR1cyA9PSBISUZfU1RBVFVTX1JYX0ZBSUxfTUlDKQogCQloZHItPmZs
YWcgfD0gUlhfRkxBR19NTUlDX0VSUk9SOwogCWVsc2UgaWYgKGFyZy0+c3RhdHVzKQpAQCAtMTAy
LDYgKzk2LDEwIEBAIHZvaWQgd2Z4X3J4X2NiKHN0cnVjdCB3ZnhfdmlmICp3dmlmLAogCQloZHIt
PnJhdGVfaWR4ID0gYXJnLT5yeGVkX3JhdGU7CiAJfQogCisJaWYgKCFhcmctPnJjcGlfcnNzaSkg
eworCQloZHItPmZsYWcgfD0gUlhfRkxBR19OT19TSUdOQUxfVkFMOworCQlkZXZfaW5mbyh3dmlm
LT53ZGV2LT5kZXYsICJyZWNlaXZlZCBmcmFtZSB3aXRob3V0IFJTU0kgZGF0YVxuIik7CisJfQog
CWhkci0+c2lnbmFsID0gYXJnLT5yY3BpX3Jzc2kgLyAyIC0gMTEwOwogCWhkci0+YW50ZW5uYSA9
IDA7CiAKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcK
aHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8v
ZHJpdmVyZGV2LWRldmVsCg==
