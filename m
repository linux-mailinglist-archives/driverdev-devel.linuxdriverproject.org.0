Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5CD210E7F
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 17:08:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2C5952E95A;
	Wed,  1 Jul 2020 15:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FOvP-RCfl8xU; Wed,  1 Jul 2020 15:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8C6312FADD;
	Wed,  1 Jul 2020 15:08:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B86EB1BF30F
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 15:08:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AD99E8A9E3
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 15:08:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SkEpD3Suy6sp for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 15:08:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2061.outbound.protection.outlook.com [40.107.237.61])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E3C498A9E1
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 15:08:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FWehFp4clvN3xOP1vh6nmytlDvSn8nUxuniNzu9FQWxBU9olxcYMt7Hr/JioFwF79jekroQiJDJUxbSKzIIRPCBPlu3dAKbWvre5FWOKdGBzogKYXx/aAXgmZkyGak7i8/uC+96/0zbli3sJrKuSsu22D2aMYZymwzeMiV9xj/1Tdt8+FMI1/gRASp8Yk5l1kuA8A82P960/luL5Z8OCsyMHojaCbpXeyHv2V4LBkM/wr+pbLLnfyKcUmPTtsiLWAQT1fWJqOuCbSFKjZCtYORZixTLX13ciMFrhmR4ee+C4vJ/GCx0d9iIPYQoYlWadeMQ0wdOTzO7mnzlLymmeWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aXpNpMygO/KPLne8WsJxsDwp8Ia385m8ResSG8rBl5Q=;
 b=AOUI3c7PPRKmf8uEtY1YpufTcJvEPn2nl05VAMchvvnHTLaYzR3VKczs+B5fTXkRBRWRccBDIjiZbtWL6jk9NXNElAOUmcCp2hrp9hRRutbLd5o86Z5aJHbNZVEjwMhgfChJ2cJKIR+XMJSIwS14e6ZbFOpg8yW3ml9g/Ng0zGekCiDnjXX22T7kFZXfnrxuczYDD9lCtkvCFiVbA1RVHqmpkg7HtxodEvHfy4OkUOKcjhCinJ1H6moPxpoZuSIa6oyhEPt3QWqek55++KFUFQcAdMYUdxX1juMcVy7U8eNzECHhJfh5Kn+bc9dHUHNvQugUkYgNRYvoVmPTViO6kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aXpNpMygO/KPLne8WsJxsDwp8Ia385m8ResSG8rBl5Q=;
 b=kNaaxRXWLdKwJqRcbW/Ly6LPZ4c45zlT+i0cZswiaWopCNxmCHCtb2mbYBw7giI9sBaYnasIDLSwRVgwplyY1BUjHIoA1ZaXBIHYrwCPmlLJHfXeHNI1JtH1UCPv1urMv1Jsc+W33AtpYNK7fCslYyNXPR0Pyygt4CA7RbA/+Kc=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4736.namprd11.prod.outlook.com (2603:10b6:806:9f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3153.22; Wed, 1 Jul
 2020 15:08:10 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::c504:2d66:a8f7:2336%7]) with mapi id 15.20.3131.033; Wed, 1 Jul 2020
 15:08:10 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 05/13] staging: wfx: load the firmware faster
Date: Wed,  1 Jul 2020 17:06:59 +0200
Message-Id: <20200701150707.222985-6-Jerome.Pouiller@silabs.com>
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
 15.20.3153.21 via Frontend Transport; Wed, 1 Jul 2020 15:08:08 +0000
X-Mailer: git-send-email 2.27.0
X-Originating-IP: [2a01:e35:2435:66a0:544b:f17b:7ae8:fb7]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f42951af-6a5d-401d-bbe8-08d81dd09164
X-MS-TrafficTypeDiagnostic: SA0PR11MB4736:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB47360E0F2281DDE64811AA22936C0@SA0PR11MB4736.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-Forefront-PRVS: 04519BA941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: sBZWOlsYLJSqTfRR5g1qT8KUPqM6LKt9VKnjsKUVIkoZlZZwX1y5zeyFl8xUBGLRSGR5zOGycdTflFI/36QI06pwGlaTxL9OCp0ABYI98dzLSDYBWZHiKTUEoDjPui5s9WzxWXHSiRiTFnW3AmCv3I+1KBDbMrv+bCQ5FuK+NCSGsatLkdAdeO7mYaKFSlZKoElKXmyIdQEG2/zK5Fk92h25wD02ZYIfUVvfvSItta41bIQeiMqp7NqNgY49rEyza7rxYJ2CWUDskPB2sKvkUf86roRarA/i1uLuDsSMNqhgkuNRMLyqu0/9mDyvGvkWrgTtT579gKFm1Uw3sjwItg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39850400004)(366004)(346002)(376002)(396003)(136003)(5660300002)(6486002)(86362001)(6666004)(66574015)(36756003)(2906002)(186003)(83380400001)(16526019)(8936002)(66556008)(66476007)(107886003)(4326008)(8676002)(2616005)(1076003)(478600001)(316002)(54906003)(66946007)(52116002)(7696005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 3bWFuyGlUSW2/tGfgR1l8YLSFNc9PEN3jY7pNrVq1utUvIz1lQuefYCuwKPnDUea7WOBy2VwR8B+QqedHCZ0cqgf3x8tgAT9ylmzASaxaqUOwREdxE7Ry7T/Sdhq3AHPh8QU1bX37qpL06wWvc7sV7nlKa7gn/DABoXCpvAmXGMk7dGmzS8AjFv+vPE4dq4ZW+6ENRGopl8SiOCE3ZCgqUCi0/gmIokfE2vlHH923oLMyN1Z8bsN7qkEsjVj9DDtOdP4SoxycidY34i5xaBa7XCxppq0RRctNydnPO4dlP/aAIjeQhp6JiGCngiA2KyUTBGe8i503lya7MDuOmpp2Ej/Y3ZDDw3pLTejobmS0zirmhYJQnoSlVC1SWg85aqIEjoN3pD+590qu6KgU6IvaCqnlpfWqBADhFJaF1ZLsfSj1AzFArc6hElDdcIZ4llfM+HJRrIDV70vjzjpX8LTdH/hdDsl7KcuMdsiWQQuU7BAnMMK4wmJYGvpi1ouQbq0nhGp9k6wgQW5aX8VESNFUU4/m+c4PJ/9e72uAcYTgPI=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f42951af-6a5d-401d-bbe8-08d81dd09164
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2020 15:08:10.6234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DQUaFbVTZ3Nakx6JSo3Zr38I/Vwo7ASBvB9/tOg84r3tK4Zvjh3KcA+Vyn+W16O4i/UILinXbP/XOhzNIrJVSA==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKRHVy
aW5nIHRoZSBsb2FkaW5nIG9mIHRoZSBmaXJtd2FyZSwgdGhlIFdGWF9EQ0FfR0VUIHJlZ2lzdGVy
IHByb3ZpZGUgdGhlCm51bWJlciBhdmFpbGFibGUgYnl0ZXMgaW4gdGhlIHJlY2VpdmluZyBidWZm
ZXIuIEl0IGlzIG5vdCBuZWNlc3NhcnkgdG8KYWNjZXNzIHRvIHRoZSBXRlhfRENBX0dFVCBhZnRl
ciBzZW50IG9mIGVhY2ggZmlybXdhcmUgZnJhZ21lbnQuCgpUaGlzIHBhdGNoIGFsbG93cyB0byBz
ZW5kIHRoZSBmaXJtd2FyZToKICAtIGluwqA2NG1zwqBpbnN0ZWFkwqBvZsKgMTMwbXPCoHVzaW5n
wqBTRElPwqBidXMKICAtIGluwqA3OG1zwqBpbnN0ZWFkwqBvZsKgMTE1bXPCoHVzaW5nwqBTUEnC
oGJ1cwoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBz
aWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvZndpby5jIHwgOSArKysrLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9md2lvLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3
aW8uYwppbmRleCA3MmJiM2QyYTk2MTM4Li5kOWE4ODZmM2U2NGJlIDEwMDY0NAotLS0gYS9kcml2
ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2Z3aW8uYwpA
QCAtMTg4LDE1ICsxODgsMTQgQEAgc3RhdGljIGludCB1cGxvYWRfZmlybXdhcmUoc3RydWN0IHdm
eF9kZXYgKndkZXYsIGNvbnN0IHU4ICpkYXRhLCBzaXplX3QgbGVuKQogCXdoaWxlIChvZmZzIDwg
bGVuKSB7CiAJCXN0YXJ0ID0ga3RpbWVfZ2V0KCk7CiAJCWZvciAoOzspIHsKLQkJCXJldCA9IHNy
YW1fcmVnX3JlYWQod2RldiwgV0ZYX0RDQV9HRVQsICZieXRlc19kb25lKTsKLQkJCWlmIChyZXQg
PCAwKQotCQkJCXJldHVybiByZXQ7CiAJCQlub3cgPSBrdGltZV9nZXQoKTsKLQkJCWlmIChvZmZz
ICsKLQkJCSAgICBETkxEX0JMT0NLX1NJWkUgLSBieXRlc19kb25lIDwgRE5MRF9GSUZPX1NJWkUp
CisJCQlpZiAob2ZmcyArIEROTERfQkxPQ0tfU0laRSAtIGJ5dGVzX2RvbmUgPCBETkxEX0ZJRk9f
U0laRSkKIAkJCQlicmVhazsKIAkJCWlmIChrdGltZV9hZnRlcihub3csIGt0aW1lX2FkZF9tcyhz
dGFydCwgRENBX1RJTUVPVVQpKSkKIAkJCQlyZXR1cm4gLUVUSU1FRE9VVDsKKwkJCXJldCA9IHNy
YW1fcmVnX3JlYWQod2RldiwgV0ZYX0RDQV9HRVQsICZieXRlc19kb25lKTsKKwkJCWlmIChyZXQg
PCAwKQorCQkJCXJldHVybiByZXQ7CiAJCX0KIAkJaWYgKGt0aW1lX2NvbXBhcmUobm93LCBzdGFy
dCkpCiAJCQlkZXZfZGJnKHdkZXYtPmRldiwgImFuc3dlciBhZnRlciAlbGxkdXNcbiIsCi0tIAoy
LjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRl
dmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2
ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1k
ZXZlbAo=
