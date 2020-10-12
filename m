Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B275828B287
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 12:47:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FEA886A0B;
	Mon, 12 Oct 2020 10:47:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6NLTIqGV4DeN; Mon, 12 Oct 2020 10:47:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 884AC869D7;
	Mon, 12 Oct 2020 10:47:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B89E11BF5B5
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B45F886081
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NNyrXKL5-WWY for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 10:47:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2043.outbound.protection.outlook.com [40.107.223.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 95E058607A
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 10:47:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PkgAm+Ox0Z99CL4Fu7LeFLe2a4gdVQOCagKrLYzSMn2jlaJlATy8KeouM/PUOaT4BdIrkMH1zk2It2AxICssT88Dz3Y6Tme5dHfHV0xeNc75vLm5NmtwsPYDKKY3VtN1Sl/NTFfXVfqSbazOVHLpR0fPZnsdSX2JrC6i11bdefVizxkKjquQ6EHkSS0Fh+0dblpqzbkk3wafrYnjP6MbPOUi495SQO6EmajS8L5O9O3gyB55MbPBgtWErzkxCIy29lxEl9p5QQyhYPdrM/McZmYntKM8kzYh8AYLWHSRzl8vsF3cdLQ+4PNFY61vH8Am1J4hueV9922r25oGI3t41Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=58XMnNgaUS8bBLHPu9hEGfkhu7DZAV5XWPx13jJWCV0=;
 b=evagYx1AkIJFcWHRdvj8Pucyp6UJdSSDJHP30e1PdkhTUl7lJ2lHVcDPxJxPoJrETUfT9oTcDUJBGeo4O+JU9zAZTzY5rwlGkVHv7Xf6P7CiiRIA/NQVn/k3Nga1GdY9LfuKh6sR4/ghxhaeYRu4HR/aBF63XZoK7xDxgpA2EZu1EPx3i4B8OzIzfsmEFJT1x7thg3+0TdFtrF3cy2Kmk3IWCio+iJkQG7pTC/ud9F/qKG76nIgHAmDdpqB5EbFVTPElP64XlEDcI8mn8dyZJzuNZuP989wqIaounsOj/sdFabSuHJRLSeX5GdIdFdnzA9kN7P7365S2CRocgfFoLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=58XMnNgaUS8bBLHPu9hEGfkhu7DZAV5XWPx13jJWCV0=;
 b=iGw2bau/6DAFEP5qtA22qlyRXH7vdxhORVuGK+RfpbSYuZaYS5aFRfbj9RlwIytwl2mfPfi+DtXTR/Z7M+tDlaNwQb2x8icXRwePYbtmZAhLeIXQYUOx0w6xa0bEeQWO67tkQbyBYJshyr9YgXMeVRzlUn34y9YDlQikHY7y27g=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Mon, 12 Oct
 2020 10:47:10 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 10:47:10 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 02/23] wfx: add Makefile/Kconfig
Date: Mon, 12 Oct 2020 12:46:27 +0200
Message-Id: <20201012104648.985256-3-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
References: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
X-Originating-IP: [82.67.86.106]
X-ClientProxiedBy: PR3P189CA0005.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:102:52::10) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.home (82.67.86.106) by
 PR3P189CA0005.EURP189.PROD.OUTLOOK.COM (2603:10a6:102:52::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.21 via Frontend Transport; Mon, 12 Oct 2020 10:47:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9779f631-6aa4-440d-3710-08d86e9c2b8a
X-MS-TrafficTypeDiagnostic: SA0PR11MB4734:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB473485D278B3312222C5118E93070@SA0PR11MB4734.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: StqNepB2odavnLFznzX/dFplKYLklkNHUzH7VyVSCpe4bgGrWIeCMSQGYjPiw6TlryKbNE1cC0LdhRTSUf24sJEWUNCxFlHOtRwiNgavXi31ru2iEu1asDNdMQqI2nKnVaKcQgSxg8+fAuRELXqYvCo0eN3ab4hldB8agL7LVaaaRhZCn/OXV1slCI4h3YqDG7XJpm6uYYrFtz401Wg1Ba+E/IWFqAN3VD5/jSgyEIES96V+VtHAf5Xf+rYYIwkPbpSAZac8FqShUhj+U/TUMCA07f8/A2Pos5/7NzVrPecHwm3nlegRoZW7eW+/Hvrn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(396003)(366004)(136003)(346002)(376002)(66556008)(66476007)(6512007)(26005)(36756003)(66946007)(16526019)(186003)(316002)(4326008)(2616005)(956004)(1076003)(5660300002)(107886003)(6486002)(54906003)(86362001)(8676002)(8936002)(66574015)(52116002)(2906002)(6506007)(8886007)(6666004)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: /28ZpaL8iyM+9Pz17qQoJzS3mPxoT/NEp9CxvxHSZBQEP6VJbTamWkc2GBJf75W9d7Ny0ELlLdxDTDBlj5iX/Ro2/kTLyMDg18akNuW2J8kmxGW35S1v1VbA8d1yIqKn8geIAhCSu0H+m+z9+6FQ7CaexwAJFxaJrp3BE29bKOZIzMBkEcg7cN3FsaMs67oDGw9ZeuNdJ2y/CPvU5M901SH8eZ4R/XCmax+wuM8oGnSRj9Fw5bdesUkgxTVO6Q1O18wJD7bnVZCYLSmGueH46GlctNvlTCd+tI2mPXEysgwH2cKGT7qNo/OuF0aMSNZhbjJWi+FiUBcwBRlvIYaqVkCnldTzlTOrDvOMLM47smsQhxEdLJcME/XPtMhzkpl3ZKq7G/on34Cw294wcQ/HV5wH25pzAse1nwAUy03uCjdDYMFhMEi96Mn61NSvGczGowAUBmCzuQ/v+Vg4G54TriOZ+VxHHF05jLnY+w4TYCL1MaDFasYrtjuJRquRuKgryitLJgL+SR2/+35j8IVXcKxppyfVTa1MsbkUxoW5Im5JIeo7gp6+f/c4dPHVU7hwwEiyizVCeoqGL9W5HRYcjgnCVceePAqpYWqkbyTry0b2kk/dCbrA72za40VhBx1YsY3Sna6ZLXMzD2q1IF1XbQ==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9779f631-6aa4-440d-3710-08d86e9c2b8a
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2020 10:47:09.8956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P0IIPsBxrOwpXcK1lONJlymBMlOrZ3gZUsW+P3AwR4xjwJjtOWD4LXGdi5KJW1lksynkG7JuyHMKs1Anv8Madg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4734
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvS2NvbmZpZyAgfCAgOCArKysr
KysrKwogZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9NYWtlZmlsZSB8IDI1ICsrKysr
KysrKysrKysrKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCspCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9LY29uZmln
CiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9NYWtl
ZmlsZQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvS2NvbmZp
ZyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvS2NvbmZpZwpuZXcgZmlsZSBtb2Rl
IDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjgzZWU0ZDBjYThjNgotLS0gL2Rldi9udWxsCisr
KyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvS2NvbmZpZwpAQCAtMCwwICsxLDgg
QEAKK2NvbmZpZyBXRlgKKwl0cmlzdGF0ZSAiU2lsaWNvbiBMYWJzIHdpcmVsZXNzIGNoaXBzIFdG
MjAwIGFuZCBmdXJ0aGVyIgorCWRlcGVuZHMgb24gTUFDODAyMTEKKwlkZXBlbmRzIG9uIE1NQyB8
fCAhTU1DICMgZG8gbm90IGFsbG93IFdGWD15IGlmIE1NQz1tCisJZGVwZW5kcyBvbiAoU1BJIHx8
IE1NQykKKwloZWxwCisJICBUaGlzIGlzIGEgZHJpdmVyIGZvciBTaWxpY29ucyBMYWJzIFdGeHh4
IHNlcmllcyAoV0YyMDAgYW5kIGZ1cnRoZXIpCisJICBjaGlwc2V0cy4gVGhpcyBjaGlwIGNhbiBi
ZSBmb3VuZCBvbiBTUEkgb3IgU0RJTyBidXNlcy4KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL3NpbGFicy93ZngvTWFrZWZpbGUgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMv
d2Z4L01ha2VmaWxlCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMGUw
Y2M5ODJjZWFiCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJz
L3dmeC9NYWtlZmlsZQpAQCAtMCwwICsxLDI1IEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVy
OiBHUEwtMi4wCisKKyMgTmVjZXNzYXJ5IGZvciBDUkVBVEVfVFJBQ0VfUE9JTlRTCitDRkxBR1Nf
ZGVidWcubyA9IC1JJChzcmMpCisKK3dmeC15IDo9IFwKKwliaC5vIFwKKwlod2lvLm8gXAorCWZ3
aW8ubyBcCisJaGlmX3R4X21pYi5vIFwKKwloaWZfdHgubyBcCisJaGlmX3J4Lm8gXAorCXF1ZXVl
Lm8gXAorCWRhdGFfdHgubyBcCisJZGF0YV9yeC5vIFwKKwlzY2FuLm8gXAorCXN0YS5vIFwKKwlr
ZXkubyBcCisJbWFpbi5vIFwKKwlzdGEubyBcCisJZGVidWcubword2Z4LSQoQ09ORklHX1NQSSkg
Kz0gYnVzX3NwaS5vCit3ZngtJChzdWJzdCBtLHksJChDT05GSUdfTU1DKSkgKz0gYnVzX3NkaW8u
bworCitvYmotJChDT05GSUdfV0ZYKSArPSB3ZngubwotLSAKMi4yOC4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2
ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJv
amVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
