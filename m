Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E51C324C331
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 18:15:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60AEF881DE;
	Thu, 20 Aug 2020 16:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YaBrWSOurOHL; Thu, 20 Aug 2020 16:15:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DD7318806D;
	Thu, 20 Aug 2020 16:15:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F383A1BF2A9
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 16:15:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EA98A2026D
 for <devel@linuxdriverproject.org>; Thu, 20 Aug 2020 16:15:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uSbImv6iDUsL for <devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 16:15:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2077.outbound.protection.outlook.com [40.107.93.77])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A26F1FCB5
 for <devel@driverdev.osuosl.org>; Thu, 20 Aug 2020 16:15:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jjLE5pVLN57lpAx3z0nTDXLNChJVcFUqb6JG6ltCFD1kURWI1ePNBJPNtRZB2m+RNrcqwro9+SHq8BTICTfsdzN0BkRCQBbf2ttJKU0hAhRlTAwEQ38o3+Cek0ozrzErqtU9hjvxj7aKoa/p5+TDlEz94905+4csA489sC8Hr2czBkqHTQ4ECgNx4p4CK5FTLbNSS4FWCdFubeGVgN/yavixsoW34weFhPAL6F2kql8vkhzmOPtr/q0vrUpi26si+lclaag1P+87tzxUrAI39+lGWFoNzqmvW3/KS74pU2c57kMtgKnhevXb428yEQNVpen2Y7thSLTWE7ouVxk3Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qvHPU1fTvFig2Ymc0rY03r6D4O5Ye4R48U2j5KKlVVI=;
 b=OkIprQ5AarEI1Fwi4nHjeSSO/ONxN5eM8J4oPfoKeeyXgOiJlDtULcn7IURJp4Kid3veZILJJu/yr/4M+jIj2wQNA1wibCVifiU4++ha7OrWrlE1o/Yc5Vr4UyO/Tat91dNnUVmuAHb/xc0imKkxGkwATdMvYYMf10B8P7B1OLziWCpfWuSYrbzy6kOggFQ/oTJqYDS90TnWjmh/R4kRipWFKhk9W37cVHdkkeIzJY4i5K65v2fqsXZFDHBQagGrYHC49/ODSaXlHntRDIGAFwp/7ZEZHl8lio5yvu3bgoqmcGEVXbeKdBzb/XmKV14bvh0Hna55vqsSrKQdFG51Wg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qvHPU1fTvFig2Ymc0rY03r6D4O5Ye4R48U2j5KKlVVI=;
 b=AyK72QFdohWQXpWCrONqY4Jtml5lVgn/kP5jtZdVeGKxE84EwbE6jz3UdJfQfvJq3c1yKMP+2pcu0xdNSmKw3ee/DV3iUy4CwsD+Pu/SsrnFSuXPi5CmfBmCpSkLCJ3Y5eSdmhdVzlcwGKg8pmvb7LA84q8KWC71Sbmyu1Xdub0=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4541.namprd11.prod.outlook.com (2603:10b6:806:94::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.25; Thu, 20 Aug
 2020 15:59:28 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3305.026; Thu, 20 Aug 2020
 15:59:28 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 04/12] staging: wfx: fix spaces around binary operators
Date: Thu, 20 Aug 2020 17:58:50 +0200
Message-Id: <20200820155858.351292-4-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200820155858.351292-1-Jerome.Pouiller@silabs.com>
References: <20200820155858.351292-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0122.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1a::14) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from 255.255.255.255 (255.255.255.255) by
 PR0P264CA0122.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1a::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.24 via Frontend Transport; Thu, 20 Aug 2020 15:59:27 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8d066567-9b43-460e-1688-08d8452204db
X-MS-TrafficTypeDiagnostic: SA0PR11MB4541:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB45418B5C1418FF37226F1968935A0@SA0PR11MB4541.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:241;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 00CvqWl13gmsGRbZ/KkrMBD1+uhkgOKicVYK3CTNP/v8X0M40LpkhemZ+myYYQSmsgoElXGR5u2DW8kS7nWqUyjwF2p3pJK+giaLOPFGeoAekmVSWwJSr0MXTNk3gHCyFbdlB9gqy/1UCfgoyvNfWeHGZieCHDa6dxgnOGmG2aP5fwcQpnPoEH5qXr+w+oM7bX1KwOcBXmCVghkQwKgIoTNI/s856iTk6poWOIzs7uPvd5ldBrsnqFEGw+KP//lSzc37no2ZQ6/OWP72mwaT5yAOp9sD2cAlnr1HfKXqzBjJXGY4y9KMh4jMg4wXGlZES3GGDc4wPi2WVIimtEqjnYfYIz0QdMUDVqKSlNSPrdl7xok7sB9iS20ZHvVnBgui
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(396003)(39850400004)(366004)(346002)(136003)(186003)(6666004)(2906002)(8676002)(316002)(16576012)(54906003)(956004)(26005)(8936002)(2616005)(110011004)(52116002)(83380400001)(107886003)(1076003)(5660300002)(478600001)(36756003)(4326008)(66476007)(66556008)(66946007)(86362001)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: qmtZFxWVePLBx4X5KxfivnO3vVTFbOBPlx4PoIxCmENapK+GUWiAUsDlUoD+k1j58aWtdtKC+AKdKxVbAu7lOWw1h85o+G+FjgOo0uftpD8ZCjGM3iGJTPDXuvBSuIU7ZkYVZC1CdYz4YG8A7QxSH50hxFMVwGmbc3YvxfPTMbEeIwYcCLGbCw8PmO02azBvNR6h32Wi2lCvBGQx29VuOUbzyFSKBgTGP4wPQdAE2avHjPV/Wgw1jA9fMgwJNoX0hDNKmeJqrwiSBAJUcPwidof8Y1AcMn1RejmcsyIPs+yqjUV1X1WrooAtr3RKdeI25VATxqT5vsJNmy1wzwXdkhpLVaq9XBLp0dWE90ScllAI1vMWve2908jt4WUkoxfP4VHWvkbuAIRKpiDry3XWMoMbtO8JRV8ybO0HVK2h1BcYlIzpNHhJJKZ9EPJxwncMNGtuRg3FSq99nd3HDnl04jg25sXch+AyskA1HItDWKbKQ77rAmebBvLAyEPXc2C7nmZ9WLqw2/sHxY6ELcOS85C2nkt/xuYprKqiujXfgNv6Ox0oCdVNfVkQ8qPhGk7S1jEwvjlMqU2vpNRIZSVYZ7EaYc/5/E0EsT27OkGDjAxARPeAbQZsxlgE3PBcoqLCzqcRpG6QzgyrWpL00h+dPQ==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d066567-9b43-460e-1688-08d8452204db
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2020 15:59:28.7095 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tk2q8oGD+LR6iU1/ELKEj22GlhfOtMvoJ5CeOupruCHlRKeak8DOpvM3QcfAS5U2dbffY2mSQUBn0gmdu5E/RA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4541
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKQSBi
aW5hcnkgb3BlcmF0b3Igc2hvdWxkIGJlIGZvbGxvd2VkIGJ5IGV4YWN0bHkgb25lIHNwYWNlLgoK
U2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMu
Y29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93Zngva2V5LmMgfCA2ICsrKy0tLQogMSBmaWxlIGNo
YW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL3N0YWdpbmcvd2Z4L2tleS5jIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9rZXkuYwppbmRleCA1
ZWUyZmZjNWY5MzUuLjYxNjVkZjU5ZWNmOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dm
eC9rZXkuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2tleS5jCkBAIC0xNzEsNyArMTcxLDcg
QEAgc3RhdGljIGludCB3ZnhfYWRkX2tleShzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IGll
ZWU4MDIxMV9zdGEgKnN0YSwKIAlrLmludF9pZCA9IHd2aWYtPmlkOwogCWsuZW50cnlfaW5kZXgg
PSBpZHg7CiAJaWYgKGtleS0+Y2lwaGVyID09IFdMQU5fQ0lQSEVSX1NVSVRFX1dFUDQwIHx8Ci0J
ICAgIGtleS0+Y2lwaGVyID09ICBXTEFOX0NJUEhFUl9TVUlURV9XRVAxMDQpIHsKKwkgICAga2V5
LT5jaXBoZXIgPT0gV0xBTl9DSVBIRVJfU1VJVEVfV0VQMTA0KSB7CiAJCWlmIChwYWlyd2lzZSkK
IAkJCWsudHlwZSA9IGZpbGxfd2VwX3BhaXIoJmsua2V5LndlcF9wYWlyd2lzZV9rZXksIGtleSwK
IAkJCQkJICAgICAgIHN0YS0+YWRkcik7CkBAIC0xOTEsMTMgKzE5MSwxMyBAQCBzdGF0aWMgaW50
IHdmeF9hZGRfa2V5KHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVlZTgwMjExX3N0YSAq
c3RhLAogCQllbHNlCiAJCQlrLnR5cGUgPSBmaWxsX2NjbXBfZ3JvdXAoJmsua2V5LmFlc19ncm91
cF9rZXksIGtleSwKIAkJCQkJCSAmc2VxKTsKLQl9IGVsc2UgaWYgKGtleS0+Y2lwaGVyID09ICBX
TEFOX0NJUEhFUl9TVUlURV9TTVM0KSB7CisJfSBlbHNlIGlmIChrZXktPmNpcGhlciA9PSBXTEFO
X0NJUEhFUl9TVUlURV9TTVM0KSB7CiAJCWlmIChwYWlyd2lzZSkKIAkJCWsudHlwZSA9IGZpbGxf
c21zNF9wYWlyKCZrLmtleS53YXBpX3BhaXJ3aXNlX2tleSwga2V5LAogCQkJCQkJc3RhLT5hZGRy
KTsKIAkJZWxzZQogCQkJay50eXBlID0gZmlsbF9zbXM0X2dyb3VwKCZrLmtleS53YXBpX2dyb3Vw
X2tleSwga2V5KTsKLQl9IGVsc2UgaWYgKGtleS0+Y2lwaGVyID09ICBXTEFOX0NJUEhFUl9TVUlU
RV9BRVNfQ01BQykgeworCX0gZWxzZSBpZiAoa2V5LT5jaXBoZXIgPT0gV0xBTl9DSVBIRVJfU1VJ
VEVfQUVTX0NNQUMpIHsKIAkJay50eXBlID0gZmlsbF9hZXNfY21hY19ncm91cCgmay5rZXkuaWd0
a19ncm91cF9rZXksIGtleSwKIAkJCQkJICAgICAmc2VxKTsKIAl9IGVsc2UgewotLSAKMi4yOC4w
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBt
YWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2
LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
