Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C910428B2A3
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 12:48:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5AEB9204D5;
	Mon, 12 Oct 2020 10:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pf3L5cdYhod4; Mon, 12 Oct 2020 10:48:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BA49120780;
	Mon, 12 Oct 2020 10:47:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7FD8C1BF5B5
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 75921207A4
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zMh9d9BZVR6R for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 10:47:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2067.outbound.protection.outlook.com [40.107.223.67])
 by silver.osuosl.org (Postfix) with ESMTPS id CA34D204DC
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 10:47:16 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yp5I2Xfxc5g6Fl0mcvMK6r3l3u4kzEP3O8dXgiCS4cjyHtAo5S1eszdAyIfpnWsJ9yGXKq0B5unajZsPUQqoEbS16KodYyeQKswnHwkd9wKEo4jKGla4yqMDDdps1VskG62xCvO/H8JIvpb1PYHvMOy9TKF2Qy3AiKYe7r9E+ND0DO8L2/eYQ8N+GvvSUZdEeaXHTCoiCCwLfCqNow98bosZYDUwbn7z+uX6Y8KdDbr6yP/ES5WwGXA4Hw5FU8ba+B6u40YYgyaony3IhEwusgNOJkGI6r86HGRAPOXvFAhNgUI7xpSJ6ZxlYUFc/JuhJG82ybKSf1azrT4K+Ndjmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sj+FvaSzNUL70rljsFsFSy63ayCemnk7bCXXALwJfCM=;
 b=Cvnbxi4Rd65j6SMAf8QQEG7j2+Se1V0nUp+55LP1wqRFREKS9Z2nOpnEguIjE2Ts1M+UtQRmBag7q8ziL+yCI+zAyeFgEfWy4Pi9L+1kp5l7PnV4SGki3Cv9k3m1vjphNXwl3A8GgSjXB1oQ3MZA0Y1PufkFxKXXDqOzBvxFifJl+dXlHZOzliHd8mbvobA032RvctPiNkAhV00kqOnqYIMSyQeWLZzR/vhDAFL+W0I3oiJHl8rw8llEjNeDqxcw3gWCRql8HAE2bqTKgiTOnVasiX1C5GbqhgX9m+TUsZZBceeo7B5nQe5MMkt/7b4hEOj/+28HCPeW3HP10WUTgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sj+FvaSzNUL70rljsFsFSy63ayCemnk7bCXXALwJfCM=;
 b=gmS9RX9KlhKl0RKceO8KXrooFs42kReYJWEBJVrBfBOd4RIHL7/jHR51lsZyPgMI3eFUSq+KlJzlJEh4MQDzxq9euUhua6tkZ8t4Tv0Yme6qnDSElMvJM+flymSm4uDNQmwafVXi6SwlldbkxjKEbol5FlpwqzoEukrYkCOSQ7s=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Mon, 12 Oct
 2020 10:47:15 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 10:47:15 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 05/23] wfx: add bus.h
Date: Mon, 12 Oct 2020 12:46:30 +0200
Message-Id: <20201012104648.985256-6-Jerome.Pouiller@silabs.com>
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
 15.20.3455.21 via Frontend Transport; Mon, 12 Oct 2020 10:47:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 75e56157-e27a-4e9e-68b3-08d86e9c2ec1
X-MS-TrafficTypeDiagnostic: SA0PR11MB4734:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB4734CA9699199F4BE8351BBE93070@SA0PR11MB4734.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:421;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QlwIENSUku9CEEzsmC5PoND4QrVt6Oqjbb8z+BR/2Yk3v0bEJ3s72rp/wAHoJNmKPYyiH78BVzxzjb7Wscv5rxOVHHmmC6WX2kRO7VcVK63b4WAM2PpJtfrssYEDqN+jp1ikWpEWi49dNrhGpUNSskiIAb2aXUCCUrl0PpxMYQb2dbgtW+m+F0s8ieO/7bA57kDSgP3uaPFUYwyWzbMf3WZccTULMhqdql40jWV+VoqFYRTPFAB+Dw27p/guzE3e3vb4SB02AqwzTcuDAnsnPsepRJ+RvnZkrowIbUiAwvZihblXGBpvvfREkq6G+K3m
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(396003)(366004)(136003)(346002)(376002)(66556008)(66476007)(6512007)(26005)(36756003)(66946007)(16526019)(186003)(316002)(4326008)(2616005)(956004)(1076003)(5660300002)(107886003)(6486002)(54906003)(86362001)(8676002)(83380400001)(8936002)(66574015)(52116002)(2906002)(6506007)(8886007)(6666004)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: sPbv9VrGdaXTwnbPr6nADWjtYZEWkmRR6bb/AQNb0C05iyhgHCe+kxENEkO3YRnaaISLyNgccXWtAU5Hi39K1mTDzfxoy1GmgprUIZSYrTY0kEeYC4sPtlYXYguxee/kD2pD4GXOxAsBNPMum6/rSMkuiDfVmEQFy27fgmWqpfkKXxi59HCpgV0p+BtC99T54hVJMIUS/xMDTUTaXq0HXgw3do+Lms+HsVyjxMySgNgk8PiaRtQzI/KsIRlC/1VfETJxTsyUcH6DOh2TQyHfNMAqFKiC9g/GKZhfNKovvMt+42XWH24WDi832+6y2krWnTO9Fu8XbHLxd76A4NOjNX2r7Zehzspk7zObVXRWwm3islLhfyDpF76d7zwqUPim5DJMrBIUL4wO+l/05OqXVgshqzuF8maBJzbWUiKXVsxAVMH1pSvGengnme+YFBhgXEg0kUVh3yVV8Nh80e/IuSz4N+YUzy98i15hHr58DNkd7ID9gJJ3Lo154u7r6FGISkNEj7gl9hj0NRrHeOq36C5fswO2xiSSJSOJkyzwnUmAcv6qiubd78TnTFVNHbcw7C5cbel5riAzh0MHfiyCFuHDXsKebO6LOsQFGl9kzU4BJx9SbjA4DiSeHJAYFNzKFOJCmkKQOIkUZOTaREm16w==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75e56157-e27a-4e9e-68b3-08d86e9c2ec1
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2020 10:47:15.2725 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5FfGzmN3Zn1UIhrzrhxzdVzh4mHUId/+qkqhTvwubuOHfjx6KSFSXCYdkxumlFoE3frlmtaDDGOiqFBiu5iy/Q==
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
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzLmggfCAzOCArKysrKysr
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspCiBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXMuaAoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzLmggYi9kcml2
ZXJzL25ldC93aXJlbGVzcy9zaWxhYnMvd2Z4L2J1cy5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0Cmlu
ZGV4IDAwMDAwMDAwMDAwMC4uY2EwNGIzZGE2MjA0Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVy
cy9uZXQvd2lyZWxlc3Mvc2lsYWJzL3dmeC9idXMuaApAQCAtMCwwICsxLDM4IEBACisvKiBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCisvKgorICogQ29tbW9uIGJ1cyBh
YnN0cmFjdGlvbiBsYXllci4KKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIwMTctMjAyMCwgU2lsaWNv
biBMYWJvcmF0b3JpZXMsIEluYy4KKyAqIENvcHlyaWdodCAoYykgMjAxMCwgU1QtRXJpY3Nzb24K
KyAqLworI2lmbmRlZiBXRlhfQlVTX0gKKyNkZWZpbmUgV0ZYX0JVU19ICisKKyNpbmNsdWRlIDxs
aW51eC9tbWMvc2Rpb19mdW5jLmg+CisjaW5jbHVkZSA8bGludXgvc3BpL3NwaS5oPgorCisjZGVm
aW5lIFdGWF9SRUdfQ09ORklHICAgICAgICAweDAKKyNkZWZpbmUgV0ZYX1JFR19DT05UUk9MICAg
ICAgIDB4MQorI2RlZmluZSBXRlhfUkVHX0lOX09VVF9RVUVVRSAgMHgyCisjZGVmaW5lIFdGWF9S
RUdfQUhCX0RQT1JUICAgICAweDMKKyNkZWZpbmUgV0ZYX1JFR19CQVNFX0FERFIgICAgIDB4NAor
I2RlZmluZSBXRlhfUkVHX1NSQU1fRFBPUlQgICAgMHg1CisjZGVmaW5lIFdGWF9SRUdfU0VUX0dF
Tl9SX1cgICAweDYKKyNkZWZpbmUgV0ZYX1JFR19GUkFNRV9PVVQgICAgIDB4NworCitzdHJ1Y3Qg
aHdidXNfb3BzIHsKKwlpbnQgKCpjb3B5X2Zyb21faW8pKHZvaWQgKmJ1c19wcml2LCB1bnNpZ25l
ZCBpbnQgYWRkciwKKwkJCSAgICB2b2lkICpkc3QsIHNpemVfdCBjb3VudCk7CisJaW50ICgqY29w
eV90b19pbykodm9pZCAqYnVzX3ByaXYsIHVuc2lnbmVkIGludCBhZGRyLAorCQkJICBjb25zdCB2
b2lkICpzcmMsIHNpemVfdCBjb3VudCk7CisJaW50ICgqaXJxX3N1YnNjcmliZSkodm9pZCAqYnVz
X3ByaXYpOworCWludCAoKmlycV91bnN1YnNjcmliZSkodm9pZCAqYnVzX3ByaXYpOworCXZvaWQg
KCpsb2NrKSh2b2lkICpidXNfcHJpdik7CisJdm9pZCAoKnVubG9jaykodm9pZCAqYnVzX3ByaXYp
OworCXNpemVfdCAoKmFsaWduX3NpemUpKHZvaWQgKmJ1c19wcml2LCBzaXplX3Qgc2l6ZSk7Cit9
OworCitleHRlcm4gc3RydWN0IHNkaW9fZHJpdmVyIHdmeF9zZGlvX2RyaXZlcjsKK2V4dGVybiBz
dHJ1Y3Qgc3BpX2RyaXZlciB3Znhfc3BpX2RyaXZlcjsKKworI2VuZGlmCi0tIAoyLjI4LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxp
bmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGlu
dXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
