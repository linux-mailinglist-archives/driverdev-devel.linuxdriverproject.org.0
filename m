Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 093A641198E
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Sep 2021 18:16:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9AFAE83B53;
	Mon, 20 Sep 2021 16:16:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oO_P0UYigmd8; Mon, 20 Sep 2021 16:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5DBC82D96;
	Mon, 20 Sep 2021 16:16:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4B8F01BF3D5
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:12:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 487CD40452
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:12:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jVIXzrrHbWfE for <devel@linuxdriverproject.org>;
 Mon, 20 Sep 2021 16:12:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2057.outbound.protection.outlook.com [40.107.92.57])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3CC864030D
 for <devel@driverdev.osuosl.org>; Mon, 20 Sep 2021 16:12:55 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LEwTOG1lmVLIgMOrLaCRiQ8zS12oTCN9bXIcdCv/73mEE4e7CFsKfW8YpdyE6xqES642YzJWCuYJxhnJfKZZmGa6ojlVsbudUMDVP1ZvQ1mhzGRpR4wMxKhLyAqe6d4j4BV9MAjVM0tzoHd3mqsZaWCujWJDLG50N1gfE3vYZhiaGwbKwnSJVgFXu86nf2Xkbg4HnGQsTTCP5OLdudnRcIhsF7XFnstuXg4cJLJYtj781IslEBLdAPhPOrST1oqpHm+RGUsgdZYGyVyTaTWqb4i3TeV5/dBirYXSG5WloXh2V+vFMaJFDUZmhEsozt2nKJdGZRLm+TWU7m3FYGMnkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=mUblQj3HYl3up8TQr4oInUGypnja+FbX2pQYP1SXPC0=;
 b=cTKEQ6gnTEo37oDUxYfSx/xZkn8fR1Ic7t/AY5A0rItDLNxJbWwFNgm4w07/gmLLaQUFEg/HJv+MqFMXkhqucJAUq0nRIFuR0kQ74yG2ZnCh9qhsrgXTMoUVYjx7JMhDFvIPY3ccE1rN+lfttkGQm/5H4U9TMdBicL+jUm3jKQaOkBPxAU8gkUtiBYWK6snDaX1dTt6WSHMRNzxZnmfZ8mFXEoRUbwswXeKdubcf0sE2s62v9EC8GaGOkyY/dXEzP7e8i7kLaqGYivKQz/T8udhdxC460CxQfvStcKOo2kDOE40QEzDiTTzXqvmq5apgiTcFfYq6ch6BdXTKABAbuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mUblQj3HYl3up8TQr4oInUGypnja+FbX2pQYP1SXPC0=;
 b=CBT7XMPEtFUZ5Eu5do5SpZfnrJUw7e5IUY3p/pf7hGB5tBVKtkNULlfsH+YEgY7qA1FcrEIGdK+Zrut3OzzBMx8qs4x3TW6HBpV7v/8ryTNzw06UHUXjujsuM1TEtYfaTPQQP8b6OvDdHttGCrqjNrxBuDiZguS9sPgZqwBBJa4=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB3168.namprd11.prod.outlook.com (2603:10b6:805:c4::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.18; Mon, 20 Sep
 2021 16:12:53 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 16:12:53 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v7 24/24] wfx: get out from the staging area
Date: Mon, 20 Sep 2021 18:11:36 +0200
Message-Id: <20210920161136.2398632-25-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
References: <20210920161136.2398632-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SA0PR11CA0064.namprd11.prod.outlook.com
 (2603:10b6:806:d2::9) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SA0PR11CA0064.namprd11.prod.outlook.com (2603:10b6:806:d2::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Mon, 20 Sep 2021 16:12:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 37f59b47-26d0-4cdf-433c-08d97c517fe6
X-MS-TrafficTypeDiagnostic: SN6PR11MB3168:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB3168E0E75F26AFC99534616493A09@SN6PR11MB3168.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hns0E1RxdzQJLafL3GOFFJmBwUihFO4+7NiwoilOy5MHYEroL2ITozvI2BSrWYlYsi4skYNL0P2a3OZD6LYTZ0TWkzWKP/m8FkOPdqM5CKw5oDhuUAi/H1URXISzk9djQ7fDA59/uJwFU4LKAJMqgXF1wa/wf12PwG5A9euOCdfeddiD7kYwhJ55jZQx32Dn/DMxzy9pb7vmQuFzK2cLXepeIR5Y4t9G/f/9nSaTt3bSdsS+bWyibt4zkPCTndcK+wDyv9h+HKwtmBZbZi7vWTMGePzEiWCE6uYKMxIaRGaGIpHGe4FyJPjZHcU82WoQEJOSqm+y4a7k8lAC3tWyEjEmEcyOVbTqSiofmuW79qJK1fNZRPIpzn0L+GjNf1b9pwPD/CBZfTB5WWt0ZeJrnJhLd2vBRS053HldXsuU1GGqvTvrxVdNuWPzrHWbXNBqybNro0vQ+6paSPrWKQ/pO1nvaSYCLiPti12FuV02VIxvK7qmaYKwO39Ve9Qe8dR91BilnVYaUNeAYs465BLQVEh7twQifOIYmEIeYXFyS63jMl2vYjf8f5ZURO0EMS/jGyEwdHlwRYDFrmLPxDDRGtixwCqxztSo3JoJuYwtNPFBQ3Zgjtv1iK9ZKkQrcc+hvW0Z7QMZ257MzH5AbFHR2rCc55Glvpl9YONdExRqCi9tK/0tPmMsvF1b9M7MZVgGE1NbRRihYhypIS7Oppv1HXVzIVSzR1vx+TK2ikBl4qI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(1076003)(6666004)(54906003)(5660300002)(8676002)(6916009)(2906002)(38100700002)(8936002)(107886003)(52116002)(186003)(66946007)(66574015)(6486002)(66476007)(4326008)(36756003)(2616005)(508600001)(7416002)(66556008)(966005)(7696005)(316002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: h8i+qqkR9JNsnXXulfIYdCeWuJgQiKLzhtzxP5vDeG08eG4XgggSDfBsf/UgfBntzj3LUWF0P5HCJlpSRzjtp/cqBgivGzBkGybVa81/d869V81JTMSZ8qhCRi0BFP6boYX/5o6vF7hfW5gTwZap9VKGpZ/ml7tLkMDuSICgfVECbTmPBVb0+sgzvgwfOdT1DtUjdJEcalcjTzeDDtRhH4iliiwIwrV/kkiQyzHc87em2UFVAMKEyL9Z5hFi7pwKynEP7V4v7aRidegNfnAHnwhm0xJKwHDgbJkiWldGvDkHPJw2EmxgsNBJfX65UP5TfCLlfRgQWJb2zKs0TJaqrR+51v5PXEDjGfTCqpemCPjORCBqiDQokC/iRA5czoHbjP/v6rzX37cQksohxqXY9Hy9REfF3/732cex7x8BA9lys4stc+ADBE0mlNbr8dmRHFk1ACHjDgoME7OQEvRDcy54kArF83sPctAtKH5m0p9PaBcpdAd0vVMBhNb5ONgwkZyg6I1wemD6kjZgGPuvgO8sBX9ccm3MAbGQIplOLxKVTzW91I+8JLmAmDzhChOq0ExQadWo7Mg/2JQgvj2nisdmhmC/4HGJyh8Jy4fiLGcAECWfB+885hAiDX9wQO4eCqvHNtaFYyMVCb+5gTPGzYvl2Xr3nvt9RydyOWCSr405ZDWBGWhe8sCKyg0WBRsvx1g3ZB+NZ2YYmULBaQTBzzLtnWonKwJzph8/mzpy0Zu4uzLolQQQvkECyZjiWwgBIV4NmJ9fqX2qEbR4o7mu2iCLCWSVfRAMxM/mLxk58xl62EcvSaMx8PXfOlYuw7Yb
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 37f59b47-26d0-4cdf-433c-08d97c517fe6
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2021 16:12:53.2026 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wthccZNlrKXLP+WuN21oQlvC977jlekzt/u9tjMKWGYQIWRRkE/osvhPVeoaJGwSc0q8OBodpTQwKdZotxT3vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3168
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
 Ulf Hansson <ulf.hansson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHdmeCBkcml2ZXIgaXMgbm93IG1hdHVyZSBlbm91Z2ggdG8gbGVhdmUgdGhlIHN0YWdpbmcgYXJl
YS4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2ls
YWJzLmNvbT4KLS0tCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyAr
Ky0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL0tjb25maWcgICAgICAgICB8ICAxICsKIGRyaXZlcnMv
bmV0L3dpcmVsZXNzL01ha2VmaWxlICAgICAgICB8ICAxICsKIGRyaXZlcnMvbmV0L3dpcmVsZXNz
L3NpbGFicy9LY29uZmlnICB8IDE4ICsrKysrKysrKysrKysrKysrKwogZHJpdmVycy9uZXQvd2ly
ZWxlc3Mvc2lsYWJzL01ha2VmaWxlIHwgIDMgKysrCiBkcml2ZXJzL3N0YWdpbmcvS2NvbmZpZyAg
ICAgICAgICAgICAgfCAgMSAtCiBkcml2ZXJzL3N0YWdpbmcvTWFrZWZpbGUgICAgICAgICAgICAg
fCAgMSAtCiBkcml2ZXJzL3N0YWdpbmcvd2Z4L1RPRE8gICAgICAgICAgICAgfCAgNiAtLS0tLS0K
IDggZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKIGNyZWF0
ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvS2NvbmZpZwogY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy9NYWtlZmlsZQogZGVsZXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2luZy93ZngvVE9ETwoKZGlmZiAtLWdpdCBhL01BSU5U
QUlORVJTIGIvTUFJTlRBSU5FUlMKaW5kZXggZWViNGM3MGIzZDViLi41MTk5M2Y2ODM3OWEgMTAw
NjQ0Ci0tLSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5UQUlORVJTCkBAIC0xNzA5OSw3ICsxNzA5
OSw4IEBAIEY6CWRyaXZlcnMvcGxhdGZvcm0veDg2L3RvdWNoc2NyZWVuX2RtaS5jCiBTSUxJQ09O
IExBQlMgV0lSRUxFU1MgRFJJVkVSUyAoZm9yIFdGeHh4IHNlcmllcykKIE06CUrDqXLDtG1lIFBv
dWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNvbT4KIFM6CVN1cHBvcnRlZAotRjoJZHJp
dmVycy9zdGFnaW5nL3dmeC8KK0Y6CURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9u
ZXQvd2lyZWxlc3Mvc2lsYWJzLHdmeC55YW1sCitGOglkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxh
YnMvd2Z4LwogCiBTSUxJQ09OIE1PVElPTiBTTTcxMiBGUkFNRSBCVUZGRVIgRFJJVkVSCiBNOglT
dWRpcCBNdWtoZXJqZWUgPHN1ZGlwbS5tdWtoZXJqZWVAZ21haWwuY29tPgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9uZXQvd2lyZWxlc3MvS2NvbmZpZyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL0tjb25m
aWcKaW5kZXggN2FkZDIwMDJmZjRjLi5lNzhmZjdhZjY1MTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL0tjb25maWcKKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvS2NvbmZpZwpA
QCAtMzEsNiArMzEsNyBAQCBzb3VyY2UgImRyaXZlcnMvbmV0L3dpcmVsZXNzL21pY3JvY2hpcC9L
Y29uZmlnIgogc291cmNlICJkcml2ZXJzL25ldC93aXJlbGVzcy9yYWxpbmsvS2NvbmZpZyIKIHNv
dXJjZSAiZHJpdmVycy9uZXQvd2lyZWxlc3MvcmVhbHRlay9LY29uZmlnIgogc291cmNlICJkcml2
ZXJzL25ldC93aXJlbGVzcy9yc2kvS2NvbmZpZyIKK3NvdXJjZSAiZHJpdmVycy9uZXQvd2lyZWxl
c3Mvc2lsYWJzL0tjb25maWciCiBzb3VyY2UgImRyaXZlcnMvbmV0L3dpcmVsZXNzL3N0L0tjb25m
aWciCiBzb3VyY2UgImRyaXZlcnMvbmV0L3dpcmVsZXNzL3RpL0tjb25maWciCiBzb3VyY2UgImRy
aXZlcnMvbmV0L3dpcmVsZXNzL3p5ZGFzL0tjb25maWciCmRpZmYgLS1naXQgYS9kcml2ZXJzL25l
dC93aXJlbGVzcy9NYWtlZmlsZSBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL01ha2VmaWxlCmluZGV4
IDgwYjMyNDQ5OTc4Ni4uNzY4ODVlNWYwZWE3IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC93aXJl
bGVzcy9NYWtlZmlsZQorKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9NYWtlZmlsZQpAQCAtMTYs
NiArMTYsNyBAQCBvYmotJChDT05GSUdfV0xBTl9WRU5ET1JfTUlDUk9DSElQKSArPSBtaWNyb2No
aXAvCiBvYmotJChDT05GSUdfV0xBTl9WRU5ET1JfUkFMSU5LKSArPSByYWxpbmsvCiBvYmotJChD
T05GSUdfV0xBTl9WRU5ET1JfUkVBTFRFSykgKz0gcmVhbHRlay8KIG9iai0kKENPTkZJR19XTEFO
X1ZFTkRPUl9SU0kpICs9IHJzaS8KK29iai0kKENPTkZJR19XTEFOX1ZFTkRPUl9TSUxBQlMpICs9
IHNpbGFicy8KIG9iai0kKENPTkZJR19XTEFOX1ZFTkRPUl9TVCkgKz0gc3QvCiBvYmotJChDT05G
SUdfV0xBTl9WRU5ET1JfVEkpICs9IHRpLwogb2JqLSQoQ09ORklHX1dMQU5fVkVORE9SX1pZREFT
KSArPSB6eWRhcy8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy9LY29u
ZmlnIGIvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL0tjb25maWcKbmV3IGZpbGUgbW9kZSAx
MDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi42MjYyYTc5OWJmMzYKLS0tIC9kZXYvbnVsbAorKysg
Yi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvS2NvbmZpZwpAQCAtMCwwICsxLDE4IEBACisj
IFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCisKK2NvbmZpZyBXTEFOX1ZFTkRPUl9T
SUxBQlMKKwlib29sICJTaWxpY29uIExhYm9yYXRvcmllcyBkZXZpY2VzIgorCWRlZmF1bHQgeQor
CWhlbHAKKwkgIElmIHlvdSBoYXZlIGEgd2lyZWxlc3MgY2FyZCBiZWxvbmdpbmcgdG8gdGhpcyBj
bGFzcywgc2F5IFkuCisKKwkgIE5vdGUgdGhhdCB0aGUgYW5zd2VyIHRvIHRoaXMgcXVlc3Rpb24g
ZG9lc24ndCBkaXJlY3RseSBhZmZlY3QgdGhlCisJICBrZXJuZWw6IHNheWluZyBOIHdpbGwganVz
dCBjYXVzZSB0aGUgY29uZmlndXJhdG9yIHRvIHNraXAgYWxsIHRoZQorCSAgcXVlc3Rpb25zIGFi
b3V0IHRoZXNlIGNhcmRzLiBJZiB5b3Ugc2F5IFksIHlvdSB3aWxsIGJlIGFza2VkIGZvcgorCSAg
eW91ciBzcGVjaWZpYyBjYXJkIGluIHRoZSBmb2xsb3dpbmcgcXVlc3Rpb25zLgorCitpZiBXTEFO
X1ZFTkRPUl9TSUxBQlMKKworc291cmNlICJkcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4
L0tjb25maWciCisKK2VuZGlmICMgV0xBTl9WRU5ET1JfU0lMQUJTCmRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvTWFrZWZpbGUgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9z
aWxhYnMvTWFrZWZpbGUKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5j
MjI2M2VlMjEwMDYKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxh
YnMvTWFrZWZpbGUKQEAgLTAsMCArMSwzIEBACisjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wCisKK29iai0kKENPTkZJR19XRlgpICAgICAgKz0gd2Z4LwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9zdGFnaW5nL0tjb25maWcgYi9kcml2ZXJzL3N0YWdpbmcvS2NvbmZpZwppbmRleCBlMDM2
MjdhZDQ0NjAuLjY2NmUyM2EzY2U3ZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL0tjb25m
aWcKKysrIGIvZHJpdmVycy9zdGFnaW5nL0tjb25maWcKQEAgLTEwMCw2ICsxMDAsNSBAQCBzb3Vy
Y2UgImRyaXZlcnMvc3RhZ2luZy9maWVsZGJ1cy9LY29uZmlnIgogCiBzb3VyY2UgImRyaXZlcnMv
c3RhZ2luZy9xbGdlL0tjb25maWciCiAKLXNvdXJjZSAiZHJpdmVycy9zdGFnaW5nL3dmeC9LY29u
ZmlnIgogCiBlbmRpZiAjIFNUQUdJTkcKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9NYWtl
ZmlsZSBiL2RyaXZlcnMvc3RhZ2luZy9NYWtlZmlsZQppbmRleCBjN2Y4ZDhkOGRkMTEuLjUyYTBh
ZTFlMWE1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL01ha2VmaWxlCisrKyBiL2RyaXZl
cnMvc3RhZ2luZy9NYWtlZmlsZQpAQCAtNDAsNCArNDAsMyBAQCBvYmotJChDT05GSUdfU09DX01U
NzYyMSkJKz0gbXQ3NjIxLWR0cy8KIG9iai0kKENPTkZJR19YSUxfQVhJU19GSUZPKQkrPSBheGlz
LWZpZm8vCiBvYmotJChDT05GSUdfRklFTERCVVNfREVWKSAgICAgKz0gZmllbGRidXMvCiBvYmot
JChDT05GSUdfUUxHRSkJCSs9IHFsZ2UvCi1vYmotJChDT05GSUdfV0ZYKQkJKz0gd2Z4LwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9UT0RPIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9U
T0RPCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAxYjRiYzJhZjk0YjYuLjAwMDAwMDAw
MDAwMAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L1RPRE8KKysrIC9kZXYvbnVsbApAQCAtMSw2
ICswLDAgQEAKLVRoaXMgaXMgYSBsaXN0IG9mIHRoaW5ncyB0aGF0IG5lZWQgdG8gYmUgZG9uZSB0
byBnZXQgdGhpcyBkcml2ZXIgb3V0IG9mIHRoZQotc3RhZ2luZyBkaXJlY3RvcnkuCi0KLSAgLSBB
cyBzdWdnZXN0ZWQgYnkgRmVsaXgsIHJhdGUgY29udHJvbCBjb3VsZCBiZSBpbXByb3ZlZCBmb2xs
b3dpbmcgdGhpcyBpZGVhOgotICAgICAgICBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzMw
OTk1NTkuZ3YzUTc1S25OMUBwYy00Mi8KLQotLSAKMi4zMy4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5v
cmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
