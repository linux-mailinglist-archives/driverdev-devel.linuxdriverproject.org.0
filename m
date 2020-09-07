Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F36E25F791
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 12:16:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D448B20791;
	Mon,  7 Sep 2020 10:16:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mpAb+YCFpKMl; Mon,  7 Sep 2020 10:16:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6BB2220509;
	Mon,  7 Sep 2020 10:16:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1119D1BF2FD
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:15:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0D99085EB8
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 10:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RJNjEBrEgg2h for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 10:15:58 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2067.outbound.protection.outlook.com [40.107.223.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7E3EB85EAF
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 10:15:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d1SFneJEMGqgE6KaHLOS0lOL9gZ4IKCYbb6VOxRM+6dubV87zoUH0WY4XJ6gnUz0/BPuOw3nGgt8y61trq7jF6Gukt8VwLiAkqRrIrURCzpnW8Im6aLpIouIWw9szQPd6Ffpmcqz/DRtrFyt1BSzLDwen5zsCgNPzW/OKqaxe8tL83C+/TV5Yqk87+zUpbDQXleQlGuDnKhpAGf68SezR15gKOrJVe8vnacwJlc1xaP9u0sch6077k9sWJBy/XyHZkWbpa57EnJhNMlSe+gODC7/qyXipnSqQTlVhjDHUoLIZLSOAqKaNMigV+fYSJXpwEgb5N7fpqaYqIfKJRMm5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4VvguwPKLn6fVkPke1B0DYGcov0Q3iXOmizoo2hE+DA=;
 b=ILFBUyQ/bmGvaqv7BVrZkt9R2RMVkil9dYDOynSvLAbtvkd7AA/DDunmbP3s82IXmPxPdFHJ+7b86piUmddCqzKVNnj+A1mlVo8swutuEg0i58yKc2BVSCYbXKmJlx/gBxA7fxG/188gxKWKfHHTxiyCGGlWS7ZZP1XNE5P595KLskT3NKZ0JINRnAgkqLYvGjABQWFaXc89TfDdKC39LzS1l4TrkJ+o8ayCNnojeFE4LGyTC8FtFBDtieiKwT6jvv7eveSld53SYv3NrzgpYCaJ+BSfo6QuyjFQKO83KxX/1jgM9dQJl/StswvujJwOoH/1f98C2l8ZWNh+v4z87Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4VvguwPKLn6fVkPke1B0DYGcov0Q3iXOmizoo2hE+DA=;
 b=QPXePh2CkTw6t4ia8Q6vUkQcQE/4Y0LngLbC/t3nEB+TBAzFTqz34ViW5zj08sd37eT2lo2oLbU7Qa+Eqiw2dxuTyLaC4O4lqYuuagwBaFQZQ5skjqhErgAsEnJOt6b6KkosSShNvvDOKnid86NyslhZ2mBoDicPmu5pya3Ngt8=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2606.namprd11.prod.outlook.com (2603:10b6:805:55::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.17; Mon, 7 Sep
 2020 10:15:57 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::85c9:1aa9:aeab:3fa6%4]) with mapi id 15.20.3348.019; Mon, 7 Sep 2020
 10:15:57 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 08/31] staging: wfx: drop useless enum hif_beacon
Date: Mon,  7 Sep 2020 12:14:58 +0200
Message-Id: <20200907101521.66082-9-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
References: <20200907101521.66082-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:19::25) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pc-42.silabs.com (37.71.187.125) by
 PR0P264CA0109.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:19::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3348.16 via Frontend Transport; Mon, 7 Sep 2020 10:15:55 +0000
X-Mailer: git-send-email 2.28.0
X-Originating-IP: [37.71.187.125]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86562a5d-e933-4a69-09b6-08d8531702ea
X-MS-TrafficTypeDiagnostic: SN6PR11MB2606:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2606D4B5A056C8510BC3BE9F93280@SN6PR11MB2606.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:106;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: V1BnfImTKkIwO/WCAbzqa55GKkFuuk1zsZxBrlZrdgHAPf4WOuyUW0Q1tANRDYSJC1tob+DmrxY4zuWFvLTv1Lg9q6DRnV6QLyZuT9Slp1o6P3h4ikNMeLDNupZ8OOe5FEihyrNN9ykQGdytt1pF/QIbJ5N0NRn4WEFVYZHwrcnPP0DA3Ir6OPfwIYyIzm4m003z9iMv2Z5VasHa/SSB7dM1tfgxIGCqHlDkg8FISyxBs2PXb+NflGIv27rW3VtYPeEGSgIwfaJyTRznAnl8QkoX5nLvYXEbA/aZ8UNG07amnw1NnK5UMcdJSHJWfZXePRvt6X+lpjI4j8ELJZzbsQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(346002)(366004)(136003)(39850400004)(4744005)(66946007)(4326008)(5660300002)(2616005)(66476007)(316002)(956004)(478600001)(54906003)(52116002)(2906002)(66556008)(1076003)(36756003)(8676002)(86362001)(6486002)(8936002)(7696005)(83380400001)(26005)(107886003)(16526019)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: O656KAGfD0+/5CCB+dRnN+Gu+rA4VGNC+diD2wHYwt9sw6yXWXSJJQGmC3FRWNr/bNnJy6pKffw+jEUU3u12K56QsDSavrRs6iViMXSXDF2qYpy32l7mH8VM+J5zpgaQ8OpAIhB8tbWVb+ItMkNLHDdAABsg4nfu4v71nZQbuxz/o5JVqj0x/wc7lby+xJK0ekXjW2GDT2cUUbbzVCCY1MmYdPFa+3a19GWS8cdiYjrDAtwKyVLoWhumvI/qxmonDQyeomB5MSfI6SRGhKQZThMr9iNL2X2/vcLarrlO9t5iEcCCeigiVUEiGE/iG2H3ofm3LAEkBQ+dcj5y1RMapNABJtS8nsruVsh4A0/h3Ro5CtEDtD25IpUVHERxTrmDQyTadtJ5JmWX0ylqs5Lhexz8a422EDHOfOPgxkW01wf9NpQDzFSUc0bAwEQamW0teMBKi+Wa3p1xc5UAMpu1SPNbenio6v5uYZDBrbHIRPP5vjBpyv75r5idhMfs0XCYwwxkZUUz3z2zIOPwDfserb5T2zB1YfVpWvdPomwvvV/hZlu1bbSpaCsWbEG2hUaRSPD1IJ2JX1PNsxTsaSMYjB1W9UwK2C4VTLXFLO8TKTQgDVRapCVQysTz/+vfgZ1fXRbtxfEHAjcyq/MOqtsLXQ==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86562a5d-e933-4a69-09b6-08d8531702ea
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2020 10:15:57.4248 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BllQWofmIhTvMY0si1CnhFSspQsSDEL7zbF+3yIF4ewztOEsrsMzfH0qMrJ0k//sFEEO2riP0nHftJ/iibb/tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2606
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKRW51
bSBoaWZfYmVhY29uIGlzIG5vdCB1c2VkLiBNb3Jlb3ZlciwgaXQgaXMganVzdCBhbm90aGVyIGRl
ZmluaXRpb24gb2YKYSBib29sZWFuLiBBYnNvbHV0ZWx5IHVzZWxlc3MuCgpTaWduZWQtb2ZmLWJ5
OiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJp
dmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oIHwgNSAtLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBp
X2NtZC5oIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oCmluZGV4IDIxY2RlMTlj
ZmY3NS4uNzVlOGMyYTdmZGY5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2hpZl9h
cGlfY21kLmgKKysrIGIvZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfYXBpX2NtZC5oCkBAIC00NDAs
MTEgKzQ0MCw2IEBAIHN0cnVjdCBoaWZfY25mX3N0YXJ0IHsKIAlfX2xlMzIgc3RhdHVzOwogfSBf
X3BhY2tlZDsKIAotZW51bSBoaWZfYmVhY29uIHsKLQlISUZfQkVBQ09OX1NUT1AgICAgICAgICAg
ICAgICAgICAgICAgID0gMHgwLAotCUhJRl9CRUFDT05fU1RBUlQgICAgICAgICAgICAgICAgICAg
ICAgPSAweDEKLX07Ci0KIHN0cnVjdCBoaWZfcmVxX2JlYWNvbl90cmFuc21pdCB7CiAJdTggICAg
IGVuYWJsZV9iZWFjb25pbmc7CiAJdTggICAgIHJlc2VydmVkWzNdOwotLSAKMi4yOC4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
