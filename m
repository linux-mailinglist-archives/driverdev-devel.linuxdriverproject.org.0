Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B71411910
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Sep 2021 18:12:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A2B940459;
	Mon, 20 Sep 2021 16:12:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HfQaud1RK4Rt; Mon, 20 Sep 2021 16:12:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74C4A40452;
	Mon, 20 Sep 2021 16:12:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 353451BF3D5
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:12:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24AFC60817
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 16:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-8BEvnSSgNb for <devel@linuxdriverproject.org>;
 Mon, 20 Sep 2021 16:12:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2077.outbound.protection.outlook.com [40.107.92.77])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D221C6066C
 for <devel@driverdev.osuosl.org>; Mon, 20 Sep 2021 16:11:59 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bb6Z6KAkAFmf3NV5PZIfeD6/1gNTsmTM40Rr//vB3AJeosl6+G2mIRAPPkiMuo8l5ibV4RCHZ1VVo4wTZHXxQkxKS4qLdmLf1KBb9HjPa+hKrgFJY2Itn3P3IyjgK5j0RQkQXIM4v58K+h4Oa0uLvsJqp5L5Ha2Gzimft4/tup0FobKY5DrSUAY9S6fmDnTqPjdHcdKvfqozrqKkAuGR6Vn6y0FETzl8FyLgcue+r/Ahi+WrFYzVWfhRaFibR8tfRlfUc36NL4LPIdZ9z1J+hO/n05Vwfwni0eaR+Oyx4d5eaobp44cR53H0U2D0OoTMJZ2DsiBvZhUhg/F5sTsJ2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=dRv4I+hELjkukyufIfYHuzZysN6ITNytJ3iPa3qM7eY=;
 b=JyIMEIbbqgwqCJcWT+vi42RAJHOeEkLA63MsIiHdzVpjL7tNbn8QMa98/rihJwV4SIuA6nycIMgxLU4CSsR2ogEnIR04VU6NjfWy5xcZJGE0d4Nvq+KElyZy5ejkPlPpcu3lALaOkOAZSY7TZkZ55QjxUCafTJ/0n0+0HD7Ijngh1Z8zarIjD2YHCDphx2cLp4LRmnGp9D59sqAHwndfb18EpVFWAK0NmBKlciyzGGqFit/YV0mlyn3ES7aXpVm+e3VnKFYZHGOAkeq+2jb8mg6DA4RMz9CRSdIylnLNVWCkuwx3uvyjHiSfIfRm0wd5L6WczLCAziY06+ca3wQJbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dRv4I+hELjkukyufIfYHuzZysN6ITNytJ3iPa3qM7eY=;
 b=VQS+EKdhmK97wGMg2fJTY96f7jB+Qqi3YldvTA78nki+0VMTgVUwWHjdjbn9A6xf8JMbCtyt+zm6mtPXTHhJddSTeVOWkJUYGrhpqM4tSdhknVJoW8POqwl2Oy7PIrTHN/RNN123P+2drb5H/CXtfgFNk8753YafTYmHhFmBUVw=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA2PR11MB5002.namprd11.prod.outlook.com (2603:10b6:806:fb::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.16; Mon, 20 Sep
 2021 16:11:58 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4523.018; Mon, 20 Sep 2021
 16:11:58 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v7 02/24] dt-bindings: introduce silabs,wfx.yaml
Date: Mon, 20 Sep 2021 18:11:14 +0200
Message-Id: <20210920161136.2398632-3-Jerome.Pouiller@silabs.com>
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
 15.20.4523.14 via Frontend Transport; Mon, 20 Sep 2021 16:11:56 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3be3e88b-bb58-42c0-3f31-08d97c515f18
X-MS-TrafficTypeDiagnostic: SA2PR11MB5002:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA2PR11MB5002E3A38618CB060895942593A09@SA2PR11MB5002.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Py4qAE5CCuF/BAJS4xMn4upRZ7sQqbDat1PXUNt3g0RkPZHsX4JFq+PKC833wRse4o3W2bGWch+atmIJun5DvcHSHfjO3YWl+Y8IvHG+ibwz+3ZgELsFl/VT5GHYp28kmXJGSJRJRd1q2Z34nD/REgsjxxf/iKY2MTPjR51AyhGd5qtsUPgqOL16+TMSMiqCrFX8vY2uHfeYEqlDVolPApy0dB1665zatVi5Ga/4+NSWFVKcse/ygmBx32i5Mr1z+jxA9+nS+wUxt+z83h2L+QH3sunJTmvpG3pr9ymsNfFbyqKo37msc/dKp2bQxXFYdByEzJSdflzAr0NFvBeZuG4AownUff6xQwGpuToxFd8/UTeR7LL04vEaj/EAppeIZkB4ambWMYy41ILNpeDjPT7y/d4zx3cTInfSzP9/bCM1V6ChPqzI7oJ9Gj1uJmXH2sbI1p1n2Slsk5ItVUfnT8rM6L4fOkpn2Zhw5PZAxbLsFF1ye/ygxhDqFbJ+b+nsZ61jIn1q1qiwvmja69nso2RLd9W6yF/O1kEbO4QD8Ezdm+N5FMEnvUPdxprKLgv476RVhXuq/r9NItVHTyjwDlbZQWutxpSSg08EKt5L+pNDBpg2p5cM5YNgTrlfLjp+teqHCK/rYLsPvc623v1orcq6hvYgF5An4VLgyRBo+8qJSbFyJrcGLO9Nh6KDYd8c/ao5oXHedbD6PdOQFxw+o2yNtLo6c5ABM66sQoMjkPg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66476007)(36756003)(2616005)(66556008)(107886003)(186003)(54906003)(5660300002)(6486002)(66946007)(52116002)(38100700002)(7696005)(6916009)(2906002)(1076003)(4326008)(8936002)(316002)(8676002)(508600001)(86362001)(6666004)(7416002)(966005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: sc5TZxy/Cb4ejXycCR3phKPXWF8ePGjTNUdgbABHhITsGgmUhUyj1e/Ovod5zHRz4AjBhyckUl1K/GNYEoTOCnsg3sxo/ysmhYwaps/LA5f/j6jkgJOHRMXCcTB7SS+v3q2l7uRBqvLoGcnoFWG5qptSn12EmAKf2tSyXlWiqgTU58l0EhG9u7RidKeYE3FMMb6DjyzlOuYPmbvkjLk6675RKd8jCWogPmWUD+JxTZDMCdyobcCQIJuKPrv2XGeMh1STmYbPWpUnheGbDXbFOKJRHG3R3H3BUj+hy6OoZhv1HyT4mUruKPoHc5KplNQUhW1Uy6qprsJIOknFIR6uQBgQyrNjL7bhhlLoYZlT76pl68w2hMhzKh/CnklxnlhcHzODeHDLU5i76r5IfitqBFkAmc5iya3DrzXfmOvR9cUlc8dQ5uo1jxfJN84PJRWFoj20wro9J5pmo7KK8YNIeH7976MByf93lva2ONrioZQs9MqrLyAeP5k9ZSx0hI9zm2idG872hRPEFMk10dplnumlOyUzLx7P3x7cSvcJwUn/EqiKQTwLHjX2e0cSGp0mcbT/om/DqxgkAi2m+oqG89mkMlTt3MfAVXDlJK29DcxNdvMHPSOSCxDwZ/bf8FaymYitkDNu56aEbR1Ei4XwN0cyBsnYaWLYZgKYTKodudcuoqElYvoW7gbpARLJnanAurG4f1dsQ4nyQeBsichZJ+9+zc/r0K8IkGxCEozlG3xAL2nM/qesPNSBpmm8Zvp6nFxLnx8faNbOoI3224cQ4eYPkolpPahkYHWUmWiA49ZYvv9jYNAshStem6BdKs11
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3be3e88b-bb58-42c0-3f31-08d97c515f18
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2021 16:11:58.2333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UqIps7Bx3GD8sHE06vxxbtNGib7SIECEteUeMs3+vM6g831QJ3QJo8UHoT/EfvucRwGUCayaIRop0QunGCsxww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5002
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKUHJl
cGFyZSB0aGUgaW5jbHVzaW9uIG9mIHRoZSB3ZnggZHJpdmVyIGluIHRoZSBrZXJuZWwuCgpTaWdu
ZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+
Ci0tLQogLi4uL2JpbmRpbmdzL25ldC93aXJlbGVzcy9zaWxhYnMsd2Z4LnlhbWwgICAgIHwgMTMz
ICsrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEzMyBpbnNlcnRpb25zKCspCiBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93
aXJlbGVzcy9zaWxhYnMsd2Z4LnlhbWwKCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL3NpbGFicyx3ZngueWFtbCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsYWJzLHdmeC55YW1sCm5ldyBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uOGEyNDlhZGE0NWRkCi0tLSAvZGV2
L251bGwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVz
cy9zaWxhYnMsd2Z4LnlhbWwKQEAgLTAsMCArMSwxMzMgQEAKKyMgU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IChHUEwtMi4wLW9ubHkgT1IgQlNELTItQ2xhdXNlKQorIyBDb3B5cmlnaHQgKGMpIDIw
MjAsIFNpbGljb24gTGFib3JhdG9yaWVzLCBJbmMuCislWUFNTCAxLjIKKy0tLQorCiskaWQ6IGh0
dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL25ldC93aXJlbGVzcy9zaWxhYnMsd2Z4LnlhbWwj
Ciskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMK
KwordGl0bGU6IFNpbGljb24gTGFicyBXRnh4eCBkZXZpY2V0cmVlIGJpbmRpbmdzCisKK21haW50
YWluZXJzOgorICAtIErDqXLDtG1lIFBvdWlsbGVyIDxqZXJvbWUucG91aWxsZXJAc2lsYWJzLmNv
bT4KKworZGVzY3JpcHRpb246ID4KKyAgU3VwcG9ydCBmb3IgdGhlIFdpZmkgY2hpcCBXRnh4eCBm
cm9tIFNpbGljb24gTGFicy4gQ3VycmVudGx5LCB0aGUgb25seSBkZXZpY2UKKyAgZnJvbSB0aGUg
V0Z4eHggc2VyaWVzIGlzIHRoZSBXRjIwMCBkZXNjcmliZWQgaGVyZToKKyAgICAgaHR0cHM6Ly93
d3cuc2lsYWJzLmNvbS9kb2N1bWVudHMvcHVibGljL2RhdGEtc2hlZXRzL3dmMjAwLWRhdGFzaGVl
dC5wZGYKKworICBUaGUgV0YyMDAgY2FuIGJlIGNvbm5lY3RlZCB2aWEgU1BJIG9yIHZpYSBTRElP
LgorCisgIEZvciBTRElPOgorCisgICAgRGVjbGFyaW5nIHRoZSBXRnh4eCBjaGlwIGluIGRldmlj
ZSB0cmVlIGlzIG1hbmRhdG9yeSAodXN1YWxseSwgdGhlIFZJRC9QSUQgaXMKKyAgICBzdWZmaWNp
ZW50IGZvciB0aGUgU0RJTyBkZXZpY2VzKS4KKworICAgIEl0IGlzIHJlY29tbWVuZGVkIHRvIGRl
Y2xhcmUgYSBtbWMtcHdyc2VxIG9uIFNESU8gaG9zdCBhYm92ZSBXRnguIFdpdGhvdXQKKyAgICBp
dCwgeW91IG1heSBlbmNvdW50ZXIgaXNzdWVzIGR1cmluZyByZWJvb3QuIFRoZSBtbWMtcHdyc2Vx
IHNob3VsZCBiZQorICAgIGNvbXBhdGlibGUgd2l0aCBtbWMtcHdyc2VxLXNpbXBsZS4gUGxlYXNl
IGNvbnN1bHQKKyAgICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbW1jL21tYy1w
d3JzZXEtc2ltcGxlLnlhbWwgZm9yIG1vcmUKKyAgICBpbmZvcm1hdGlvbi4KKworICBGb3IgU1BJ
OgorCisgICAgSW4gYWRkIG9mIHRoZSBwcm9wZXJ0aWVzIGJlbG93LCBwbGVhc2UgY29uc3VsdAor
ICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3BpLWNvbnRyb2xsZXIu
eWFtbCBmb3Igb3B0aW9uYWwgU1BJCisgICAgcmVsYXRlZCBwcm9wZXJ0aWVzLgorCitwcm9wZXJ0
aWVzOgorICBjb21wYXRpYmxlOgorICAgIGNvbnN0OiBzaWxhYnMsd2YyMDAKKworICByZWc6Cisg
ICAgZGVzY3JpcHRpb246CisgICAgICBXaGVuIHVzZWQgb24gU0RJTyBidXMsIDxyZWc+IG11c3Qg
YmUgc2V0IHRvIDEuIFdoZW4gdXNlZCBvbiBTUEkgYnVzLCBpdCBpcworICAgICAgdGhlIGNoaXAg
c2VsZWN0IGFkZHJlc3Mgb2YgdGhlIGRldmljZSBhcyBkZWZpbmVkIGluIHRoZSBTUEkgZGV2aWNl
cworICAgICAgYmluZGluZ3MuCisgICAgbWF4SXRlbXM6IDEKKworICBzcGktbWF4LWZyZXF1ZW5j
eTogdHJ1ZQorCisgIGludGVycnVwdHM6CisgICAgZGVzY3JpcHRpb246IFRoZSBpbnRlcnJ1cHQg
bGluZS4gVHJpZ2dlcnMgSVJRX1RZUEVfTEVWRUxfSElHSCBhbmQKKyAgICAgIElSUV9UWVBFX0VE
R0VfUklTSU5HIGFyZSBib3RoIHN1cHBvcnRlZCBieSB0aGUgY2hpcCBhbmQgdGhlIGRyaXZlci4g
V2hlbgorICAgICAgU1BJIGlzIHVzZWQsIHRoaXMgcHJvcGVydHkgaXMgcmVxdWlyZWQuIFdoZW4g
U0RJTyBpcyB1c2VkLCB0aGUgImluLWJhbmQiCisgICAgICBpbnRlcnJ1cHQgcHJvdmlkZWQgYnkg
dGhlIFNESU8gYnVzIGlzIHVzZWQgdW5sZXNzIGFuIGludGVycnVwdCBpcyBkZWZpbmVkCisgICAg
ICBpbiB0aGUgRGV2aWNlIFRyZWUuCisgICAgbWF4SXRlbXM6IDEKKworICByZXNldC1ncGlvczoK
KyAgICBkZXNjcmlwdGlvbjogKFNQSSBvbmx5KSBQaGFuZGxlIG9mIGdwaW8gdGhhdCB3aWxsIGJl
IHVzZWQgdG8gcmVzZXQgY2hpcAorICAgICAgZHVyaW5nIHByb2JlLiBXaXRob3V0IHRoaXMgcHJv
cGVydHksIHlvdSBtYXkgZW5jb3VudGVyIGlzc3VlcyB3aXRoIHdhcm0KKyAgICAgIGJvb3QuIChG
b3IgbGVnYWN5IHB1cnBvc2UsIHRoZSBncGlvIGluIGludmVydGVkIHdoZW4gY29tcGF0aWJsZSA9
PQorICAgICAgInNpbGFicyx3Zngtc3BpIikKKworICAgICAgRm9yIFNESU8sIHRoZSByZXNldCBn
cGlvIHNob3VsZCBkZWNsYXJlZCB1c2luZyBhIG1tYy1wd3JzZXEuCisgICAgbWF4SXRlbXM6IDEK
KworICB3YWtldXAtZ3Bpb3M6CisgICAgZGVzY3JpcHRpb246IFBoYW5kbGUgb2YgZ3BpbyB0aGF0
IHdpbGwgYmUgdXNlZCB0byB3YWtlLXVwIGNoaXAuIFdpdGhvdXQgdGhpcworICAgICAgcHJvcGVy
dHksIGRyaXZlciB3aWxsIGRpc2FibGUgbW9zdCBvZiBwb3dlciBzYXZpbmcgZmVhdHVyZXMuCisg
ICAgbWF4SXRlbXM6IDEKKworICBzaWxhYnMsYW50ZW5uYS1jb25maWctZmlsZToKKyAgICAkcmVm
OiAvc2NoZW1hcy90eXBlcy55YW1sIy9kZWZpbml0aW9ucy9zdHJpbmcKKyAgICBkZXNjcmlwdGlv
bjogVXNlIGFuIGFsdGVybmF0aXZlIGZpbGUgZm9yIGFudGVubmEgY29uZmlndXJhdGlvbiAoYWth
CisgICAgICAiUGxhdGZvcm0gRGF0YSBTZXQiIGluIFNpbGFicyBqYXJnb24pLiBEZWZhdWx0IGlz
ICd3ZjIwMC5wZHMnLgorCisgIGxvY2FsLW1hYy1hZGRyZXNzOiB0cnVlCisKKyAgbWFjLWFkZHJl
c3M6IHRydWUKKworYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCisKK3JlcXVpcmVkOgorICAt
IGNvbXBhdGlibGUKKyAgLSByZWcKKworZXhhbXBsZXM6CisgIC0gfAorICAgICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9ncGlvL2dwaW8uaD4KKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50ZXJy
dXB0LWNvbnRyb2xsZXIvaXJxLmg+CisKKyAgICBzcGkwIHsKKyAgICAgICAgI2FkZHJlc3MtY2Vs
bHMgPSA8MT47CisgICAgICAgICNzaXplLWNlbGxzID0gPDA+OworCisgICAgICAgIHdpZmlAMCB7
CisgICAgICAgICAgICBjb21wYXRpYmxlID0gInNpbGFicyx3ZjIwMCI7CisgICAgICAgICAgICBw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworICAgICAgICAgICAgcGluY3RybC0wID0gPCZ3Znhf
aXJxICZ3ZnhfZ3Bpb3M+OworICAgICAgICAgICAgcmVnID0gPDA+OworICAgICAgICAgICAgaW50
ZXJydXB0cy1leHRlbmRlZCA9IDwmZ3BpbyAxNiBJUlFfVFlQRV9FREdFX1JJU0lORz47CisgICAg
ICAgICAgICB3YWtldXAtZ3Bpb3MgPSA8JmdwaW8gMTIgR1BJT19BQ1RJVkVfSElHSD47CisgICAg
ICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbyAxMyBHUElPX0FDVElWRV9MT1c+OworICAgICAg
ICAgICAgc3BpLW1heC1mcmVxdWVuY3kgPSA8NDIwMDAwMDA+OworICAgICAgICB9OworICAgIH07
CisKKyAgLSB8CisgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgorICAgICNp
bmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9pcnEuaD4KKworICAgIHdm
eF9wd3JzZXE6IHdmeF9wd3JzZXEgeworICAgICAgICBjb21wYXRpYmxlID0gIm1tYy1wd3JzZXEt
c2ltcGxlIjsKKyAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKyAgICAgICAgcGlu
Y3RybC0wID0gPCZ3ZnhfcmVzZXQ+OworICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbyAxMyBH
UElPX0FDVElWRV9MT1c+OworICAgIH07CisKKyAgICBtbWMwIHsKKyAgICAgICAgbW1jLXB3cnNl
cSA9IDwmd2Z4X3B3cnNlcT47CisgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+OworICAgICAg
ICAjc2l6ZS1jZWxscyA9IDwwPjsKKworICAgICAgICB3aWZpQDEgeworICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJzaWxhYnMsd2YyMDAiOworICAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJk
ZWZhdWx0IjsKKyAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmd2Z4X3dha2V1cD47CisgICAgICAg
ICAgICByZWcgPSA8MT47CisgICAgICAgICAgICB3YWtldXAtZ3Bpb3MgPSA8JmdwaW8gMTIgR1BJ
T19BQ1RJVkVfSElHSD47CisgICAgICAgIH07CisgICAgfTsKKy4uLgotLSAKMi4zMy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
