Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 50C9228B2A4
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 12:48:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1E3C860C8;
	Mon, 12 Oct 2020 10:48:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tg3BIfLPKPQ9; Mon, 12 Oct 2020 10:48:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 39C68860EF;
	Mon, 12 Oct 2020 10:47:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 941961BF5B5
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 908E98727F
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wly9l3YkmalU for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 10:47:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2051.outbound.protection.outlook.com [40.107.223.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8C5488747B
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 10:47:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ARsIc1PD/Kup7vFBtZ0DNzvo9Cpj5gzYGOTxGRL5zwO7AHwEHLxJGCRw1nz7AMGkbz8ayhDoWrMP84Nsei1ZrwfwPzlloCdMclarLvHly0Q5/eLN2BvLOhnQlPtHcwA7+slsSLfT0cJMwkE4FUDoPhWhqjxybk/XQ7FzXrjVzsm8Mz8fgMdTiDLEzTpzbG1cX1a7BuB6iESh8GabqoXSrl84SR4FtdwO/Z10YwJHUJlAloOixgHZkew4jkzir8E5wCepUr3s4bqvCREBfege2zmmnNtcqYELUUROmokoXYpfYnZ3gLK8Qr7vaLETWZhpL3BYoVCS9Okdw7kJZYQj9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uBLvox2iXc57mCna1AZj9BmpOZQma4jp92Hg5KojRBg=;
 b=KtBjX586DCYeKZxFtAqqLUo+ltpCKxINY6+NL7mmjeRTWfp3712+RO9QzMLFSgAHwwhfPHsYHpo6LM36WlYkEbAdE8qStK+XxlGUS29qF8L1j4WGdqZtamB/mlfMQfjDEaRemiSg2v4wEEGDr2L95OyMptaXbBCKa7uw+QQZgqEpVQ1+diCbZCdTlBT3THYNVI3z8o4HXsMFBEkPil5i40Ns8Poa4JGXvt/OwnizyiR/HyLSAtTtuAby4HqnoJvKyySRfI5DiJDT4Us76AQQKk7lVnT1W2WtA+r+Wddwq6GQkp0Kq2LoqDNRFBJIb7Qe6rF9PQKmHh+N188Dx4BWcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uBLvox2iXc57mCna1AZj9BmpOZQma4jp92Hg5KojRBg=;
 b=i928r0XHkqqxT+CHKo/aMg8XgwG3Nq14VLKO+RPJomrmH0mDEBMOLSjjPhVDHfBlLHmiA13wjoq63OI7acB88afgMsPq7YQw8MdQMlkNumukQkDK4eHiVJe0QGmb/Qf/XKuuh5MeVO1ZM6wLW1K9uRaTS1uFIlsSkVdneq6/i5U=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Mon, 12 Oct
 2020 10:47:49 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 10:47:49 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 23/23] wfx: get out from the staging area
Date: Mon, 12 Oct 2020 12:46:48 +0200
Message-Id: <20201012104648.985256-24-Jerome.Pouiller@silabs.com>
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
 15.20.3455.21 via Frontend Transport; Mon, 12 Oct 2020 10:47:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 93c23425-7e99-4a50-13a9-08d86e9c430d
X-MS-TrafficTypeDiagnostic: SA0PR11MB4734:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB4734B766568CDE065836A21D93070@SA0PR11MB4734.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: phu9cX0wbIbRxoqnhUaOxDBOwdDis5xw0fRoMR41vZYvILAXzLGazuj9GRH+2c7AmkuxSz8jFkFEy28mQgkPVCSNZmg2CTMGUGNYplHP3SRde7alpP0Sn+Z7p60P7+MK5eHE9kqmTlSy5NcC+7TdIqeG3c6kLfbfhuCoawqX30lLVCw45sKBC6iZUGjJXREgNqdDqEvkQI4C/Xa+xmUXmvTPCpAEVNUR1s8CpGeHrKS1VQNmJq7xKV1oq8b3VblIaDASVInZ4Ubk7HbCIlxT9859h6OeIvmZy/Owsh3urwDSUFQfj3ndCXZJE3VxrCWYjKZyHArBl5e7zWuYmWvBSpDRIfx0IuQKNOGLMd1klz35PpppBYK9uyEOTP/4UcXXMHLFkRQehRTOLYXtPrfFLg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(396003)(366004)(136003)(346002)(376002)(66556008)(66476007)(6512007)(26005)(36756003)(66946007)(16526019)(186003)(316002)(4326008)(2616005)(956004)(1076003)(5660300002)(107886003)(6486002)(54906003)(86362001)(966005)(8676002)(83380400001)(83080400001)(8936002)(66574015)(52116002)(2906002)(6506007)(8886007)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: 6qXfzDcdYrc+6PYIji1+U18d/YZgtrNXfQJT4MlIy2dKigtJCVrVE7HFxkW/zimTJIWcx/zngA7YPPtKMNNDBeeZElTlbbrb1DI05FWavZpi/9kvnreMcPjeLeix1mZB6i9UTNWSPAnp8CKJn6ExzLg2YujLtJXmLhNttFxYBEmGrFM24E3DoyCTh6y7GhLNhfoj8/HB7Xll3oZeiDK6eHYRqQGqEIlsWQl+oADH2uEWC0unP71lHQiw/xH1ptrUtjy97uxZaaDnf3BioIQ/vW+DOtOSMtoz4rNiOh0cn+K6E3eb69YqeOjw8G5QdcNvU32hyjOx4atbRn/rKG5PXOQg77nAmyMc2L1oBPGoHl4G8gUXkavzkKygWlGz+LTvRVaEEgdt0bi1nVSdsSkwNFqUkm0GNsjErinzf6mslN15Glg9EMCgO2ZuH83ZkcQzEK8NgR44MNC9+9zZTwaO8Lnb0hIXy8yf542GnhzKg3ihcEbZIl+EV/kPEYzjYh2gyPFny2X78uVzoG7BDvbaOUtCmsQFtkDa1dp1d9n66xVwts2bIJh6TGJP8ppyMRfWcfIiNwxHQ0U1stJJ0tqy+JZEPpyc4M30SSVaYd35iQLb+tdgMMK5Fv+QpHqCSSHUUo//lezUfNLgz+VHnirIrA==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93c23425-7e99-4a50-13a9-08d86e9c430d
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2020 10:47:49.3348 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uuUHvN2uCeZEE6d05jZGRBG0772BbiTaOeqU0BwnJ1OWcoKNkUWGo1FMVdhhOV7q0rUrp2mrjfrBZTHF++7mRw==
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKVGhl
IHdmeCBkcml2ZXIgaXMgbm93IG1hdHVyZSBlbm91Z2ggdG8gbGVhdmUgdGhlIHN0YWdpbmcgYXJl
YS4KClNpZ25lZC1vZmYtYnk6IErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2ls
YWJzLmNvbT4KLS0tCiBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMyAr
Ky0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL0tjb25maWcgICAgICAgICB8ICAxICsKIGRyaXZlcnMv
bmV0L3dpcmVsZXNzL01ha2VmaWxlICAgICAgICB8ICAxICsKIGRyaXZlcnMvbmV0L3dpcmVsZXNz
L3NpbGFicy9LY29uZmlnICB8IDE4ICsrKysrKysrKysrKysrKysrKwogZHJpdmVycy9uZXQvd2ly
ZWxlc3Mvc2lsYWJzL01ha2VmaWxlIHwgIDMgKysrCiBkcml2ZXJzL3N0YWdpbmcvS2NvbmZpZyAg
ICAgICAgICAgICAgfCAgMiAtLQogZHJpdmVycy9zdGFnaW5nL01ha2VmaWxlICAgICAgICAgICAg
IHwgIDEgLQogZHJpdmVycy9zdGFnaW5nL3dmeC9UT0RPICAgICAgICAgICAgIHwgIDYgLS0tLS0t
CiA4IGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy9LY29uZmlnCiBjcmVh
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL01ha2VmaWxlCiBkZWxl
dGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zdGFnaW5nL3dmeC9UT0RPCgpkaWZmIC0tZ2l0IGEvTUFJ
TlRBSU5FUlMgYi9NQUlOVEFJTkVSUwppbmRleCA1ZTEwNzM1YmU2NTQuLmQxNjcxYzU0Yjk2NyAx
MDA2NDQKLS0tIGEvTUFJTlRBSU5FUlMKKysrIGIvTUFJTlRBSU5FUlMKQEAgLTE1Nzk5LDcgKzE1
Nzk5LDggQEAgRjoJZHJpdmVycy9wbGF0Zm9ybS94ODYvdG91Y2hzY3JlZW5fZG1pLmMKIFNJTElD
T04gTEFCUyBXSVJFTEVTUyBEUklWRVJTIChmb3IgV0Z4eHggc2VyaWVzKQogTToJSsOpcsO0bWUg
UG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgogUzoJU3VwcG9ydGVkCi1GOglk
cml2ZXJzL3N0YWdpbmcvd2Z4LworRjoJRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC93aXJlbGVzcy9zaWxhYnMsd2Z4LnlhbWwKK0Y6CWRyaXZlcnMvbmV0L3dpcmVsZXNzL3Np
bGFicy93ZngvCiAKIFNJTElDT04gTU9USU9OIFNNNzEyIEZSQU1FIEJVRkZFUiBEUklWRVIKIE06
CVN1ZGlwIE11a2hlcmplZSA8c3VkaXBtLm11a2hlcmplZUBnbWFpbC5jb20+CmRpZmYgLS1naXQg
YS9kcml2ZXJzL25ldC93aXJlbGVzcy9LY29uZmlnIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvS2Nv
bmZpZwppbmRleCAxNzBhNjRlNjc3MDkuLjY5ZWE4MzI3OTkwNyAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9uZXQvd2lyZWxlc3MvS2NvbmZpZworKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9LY29uZmln
CkBAIC00NCw2ICs0NCw3IEBAIHNvdXJjZSAiZHJpdmVycy9uZXQvd2lyZWxlc3MvbWljcm9jaGlw
L0tjb25maWciCiBzb3VyY2UgImRyaXZlcnMvbmV0L3dpcmVsZXNzL3JhbGluay9LY29uZmlnIgog
c291cmNlICJkcml2ZXJzL25ldC93aXJlbGVzcy9yZWFsdGVrL0tjb25maWciCiBzb3VyY2UgImRy
aXZlcnMvbmV0L3dpcmVsZXNzL3JzaS9LY29uZmlnIgorc291cmNlICJkcml2ZXJzL25ldC93aXJl
bGVzcy9zaWxhYnMvS2NvbmZpZyIKIHNvdXJjZSAiZHJpdmVycy9uZXQvd2lyZWxlc3Mvc3QvS2Nv
bmZpZyIKIHNvdXJjZSAiZHJpdmVycy9uZXQvd2lyZWxlc3MvdGkvS2NvbmZpZyIKIHNvdXJjZSAi
ZHJpdmVycy9uZXQvd2lyZWxlc3MvenlkYXMvS2NvbmZpZyIKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L3dpcmVsZXNzL01ha2VmaWxlIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvTWFrZWZpbGUKaW5k
ZXggODBiMzI0NDk5Nzg2Li43Njg4NWU1ZjBlYTcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL01ha2VmaWxlCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL01ha2VmaWxlCkBAIC0x
Niw2ICsxNiw3IEBAIG9iai0kKENPTkZJR19XTEFOX1ZFTkRPUl9NSUNST0NISVApICs9IG1pY3Jv
Y2hpcC8KIG9iai0kKENPTkZJR19XTEFOX1ZFTkRPUl9SQUxJTkspICs9IHJhbGluay8KIG9iai0k
KENPTkZJR19XTEFOX1ZFTkRPUl9SRUFMVEVLKSArPSByZWFsdGVrLwogb2JqLSQoQ09ORklHX1dM
QU5fVkVORE9SX1JTSSkgKz0gcnNpLworb2JqLSQoQ09ORklHX1dMQU5fVkVORE9SX1NJTEFCUykg
Kz0gc2lsYWJzLwogb2JqLSQoQ09ORklHX1dMQU5fVkVORE9SX1NUKSArPSBzdC8KIG9iai0kKENP
TkZJR19XTEFOX1ZFTkRPUl9USSkgKz0gdGkvCiBvYmotJChDT05GSUdfV0xBTl9WRU5ET1JfWllE
QVMpICs9IHp5ZGFzLwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL0tj
b25maWcgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvS2NvbmZpZwpuZXcgZmlsZSBtb2Rl
IDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjYyNjJhNzk5YmYzNgotLS0gL2Rldi9udWxsCisr
KyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy9LY29uZmlnCkBAIC0wLDAgKzEsMTggQEAK
KyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKKworY29uZmlnIFdMQU5fVkVORE9S
X1NJTEFCUworCWJvb2wgIlNpbGljb24gTGFib3JhdG9yaWVzIGRldmljZXMiCisJZGVmYXVsdCB5
CisJaGVscAorCSAgSWYgeW91IGhhdmUgYSB3aXJlbGVzcyBjYXJkIGJlbG9uZ2luZyB0byB0aGlz
IGNsYXNzLCBzYXkgWS4KKworCSAgTm90ZSB0aGF0IHRoZSBhbnN3ZXIgdG8gdGhpcyBxdWVzdGlv
biBkb2Vzbid0IGRpcmVjdGx5IGFmZmVjdCB0aGUKKwkgIGtlcm5lbDogc2F5aW5nIE4gd2lsbCBq
dXN0IGNhdXNlIHRoZSBjb25maWd1cmF0b3IgdG8gc2tpcCBhbGwgdGhlCisJICBxdWVzdGlvbnMg
YWJvdXQgdGhlc2UgY2FyZHMuIElmIHlvdSBzYXkgWSwgeW91IHdpbGwgYmUgYXNrZWQgZm9yCisJ
ICB5b3VyIHNwZWNpZmljIGNhcmQgaW4gdGhlIGZvbGxvd2luZyBxdWVzdGlvbnMuCisKK2lmIFdM
QU5fVkVORE9SX1NJTEFCUworCitzb3VyY2UgImRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93
ZngvS2NvbmZpZyIKKworZW5kaWYgIyBXTEFOX1ZFTkRPUl9TSUxBQlMKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy9NYWtlZmlsZSBiL2RyaXZlcnMvbmV0L3dpcmVsZXNz
L3NpbGFicy9NYWtlZmlsZQpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAu
LmMyMjYzZWUyMTAwNgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3Np
bGFicy9NYWtlZmlsZQpAQCAtMCwwICsxLDMgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6
IEdQTC0yLjAKKworb2JqLSQoQ09ORklHX1dGWCkgICAgICArPSB3ZngvCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3N0YWdpbmcvS2NvbmZpZyBiL2RyaXZlcnMvc3RhZ2luZy9LY29uZmlnCmluZGV4IDJk
MDMxMDQ0OGViYS4uMmQzMjZiMTYyNzJlIDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvS2Nv
bmZpZworKysgYi9kcml2ZXJzL3N0YWdpbmcvS2NvbmZpZwpAQCAtMTE0LDggKzExNCw2IEBAIHNv
dXJjZSAiZHJpdmVycy9zdGFnaW5nL2twYzIwMDAvS2NvbmZpZyIKIAogc291cmNlICJkcml2ZXJz
L3N0YWdpbmcvcWxnZS9LY29uZmlnIgogCi1zb3VyY2UgImRyaXZlcnMvc3RhZ2luZy93ZngvS2Nv
bmZpZyIKLQogc291cmNlICJkcml2ZXJzL3N0YWdpbmcvaGlrZXk5eHgvS2NvbmZpZyIKIAogZW5k
aWYgIyBTVEFHSU5HCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvTWFrZWZpbGUgYi9kcml2
ZXJzL3N0YWdpbmcvTWFrZWZpbGUKaW5kZXggNzU3YTg5MmFiNWI5Li45ZGUyNjA4MDJkYjUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9NYWtlZmlsZQorKysgYi9kcml2ZXJzL3N0YWdpbmcv
TWFrZWZpbGUKQEAgLTQ3LDUgKzQ3LDQgQEAgb2JqLSQoQ09ORklHX1hJTF9BWElTX0ZJRk8pCSs9
IGF4aXMtZmlmby8KIG9iai0kKENPTkZJR19GSUVMREJVU19ERVYpICAgICArPSBmaWVsZGJ1cy8K
IG9iai0kKENPTkZJR19LUEMyMDAwKQkJKz0ga3BjMjAwMC8KIG9iai0kKENPTkZJR19RTEdFKQkJ
Kz0gcWxnZS8KLW9iai0kKENPTkZJR19XRlgpCQkrPSB3ZngvCiBvYmoteQkJCQkrPSBoaWtleTl4
eC8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93ZngvVE9ETyBiL2RyaXZlcnMvc3RhZ2lu
Zy93ZngvVE9ETwpkZWxldGVkIGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMWI0YmMyYWY5NGI2Li4w
MDAwMDAwMDAwMDAKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9UT0RPCisrKyAvZGV2L251bGwK
QEAgLTEsNiArMCwwIEBACi1UaGlzIGlzIGEgbGlzdCBvZiB0aGluZ3MgdGhhdCBuZWVkIHRvIGJl
IGRvbmUgdG8gZ2V0IHRoaXMgZHJpdmVyIG91dCBvZiB0aGUKLXN0YWdpbmcgZGlyZWN0b3J5Lgot
Ci0gIC0gQXMgc3VnZ2VzdGVkIGJ5IEZlbGl4LCByYXRlIGNvbnRyb2wgY291bGQgYmUgaW1wcm92
ZWQgZm9sbG93aW5nIHRoaXMgaWRlYToKLSAgICAgICAgaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
bGttbC8zMDk5NTU5Lmd2M1E3NUtuTjFAcGMtNDIvCi0KLS0gCjIuMjguMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRl
dmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnBy
b2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
