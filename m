Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB0F323E8E
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Feb 2021 14:44:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6BFAE430D6;
	Wed, 24 Feb 2021 13:44:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yNGqhP9l_pjj; Wed, 24 Feb 2021 13:44:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3EEC0430CE;
	Wed, 24 Feb 2021 13:44:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E6B9C1BF423
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D637C83AE4
 for <devel@linuxdriverproject.org>; Wed, 24 Feb 2021 13:43:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=xilinx.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z6V0wzbvdf8m for <devel@linuxdriverproject.org>;
 Wed, 24 Feb 2021 13:43:58 +0000 (UTC)
X-Greylist: delayed 00:17:59 by SQLgrey-1.8.0
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2041.outbound.protection.outlook.com [40.107.94.41])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6690783B1C
 for <devel@driverdev.osuosl.org>; Wed, 24 Feb 2021 13:43:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CJvndYSDriTmiNWm90ULEqqncTx51V1Tyqa+qreYAhLFeXEuIHL/6dRKOSbJr2ou3/8MhlB7+WO6ivM4y500yZxgX/jOYM2wu7DQDKoh0elJsZtKZ4dzY8nP+Hp0pOXsZrmElhG78vRhGHEQWatJimtcln2M9zKsk5Q61rRd2a2ZE5ZYgQ+NwdYPz509BH5eHtdWKcMV33DuIDObJAivP1e/nQlrQlawGi/yfV46N3RZokwbelsxLjMu+r3ZVeFy7Zo6/0gCrVuxDCe/RyIEMy+fNnWC4juRh5eDmF601fseCOehnOs4jNz06tXzgGwSa2d8m5qB3v1N4/qrW/LlEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fi4LM2CeSHuw8rZ/JRFntUEOkMFyB14PqZxVi3t2WOU=;
 b=VcaEYD7iQkkGdeb6QyOm0S8IRrBUP0/bst0DVXzKjsCl30lT9uK4kCDFaDdqEFh0xvQqqmFq90rNuZXiliHf6sYQb0EyQA/lXE3AlA1ylDAYRJ9R7i4md+x2g49cIT/u4b/dteCmSKDLQy/ItfQ0CRKKO7H/kbQ388621NiO7eC9NwI7G9a8o20DopJDAYCIOFW2hM0jomA4d0n2EsZiSqiZeatHrpgMsnrrBU94MwWc6rACK/KFpR+KrUCi8smFqOd2fAIaJLplIl1LhGFORqZBwX2I+g1yypyPwdywIf8VEX84eEWIHlI6lz0cLKpV+8b2PFWf2e8aGu/rzqrpfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.62.198) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=xilinx.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fi4LM2CeSHuw8rZ/JRFntUEOkMFyB14PqZxVi3t2WOU=;
 b=l9xU3ISqEh0Gv9BnNT7UrTlQVyCFnRCaFbzP8kIwd8dOSj1rZkarq1rMnmkiKXQlvwLoIR4vIMfxnyNzZEmnFrjIRAYhi0GE5Yvhz7kvjSB5adT+J1YSJTRf7hR39JqI51TzX7fOuKw61mXqearkQg9tlS5ePJV7SSXBrgGHKnY=
Received: from CY4PR22CA0059.namprd22.prod.outlook.com (2603:10b6:903:ae::21)
 by CH2PR02MB6952.namprd02.prod.outlook.com (2603:10b6:610:82::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.32; Wed, 24 Feb
 2021 13:12:06 +0000
Received: from CY1NAM02FT052.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:ae:cafe::c2) by CY4PR22CA0059.outlook.office365.com
 (2603:10b6:903:ae::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend
 Transport; Wed, 24 Feb 2021 13:12:06 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 149.199.62.198)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=pass action=none header.from=xilinx.com; 
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.62.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.62.198; helo=xsj-pvapexch02.xlnx.xilinx.com;
Received: from xsj-pvapexch02.xlnx.xilinx.com (149.199.62.198) by
 CY1NAM02FT052.mail.protection.outlook.com (10.152.74.123) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.3890.19 via Frontend Transport; Wed, 24 Feb 2021 13:12:06 +0000
Received: from xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) by
 xsj-pvapexch02.xlnx.xilinx.com (172.19.86.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1913.5; Wed, 24 Feb 2021 05:11:28 -0800
Received: from smtp.xilinx.com (172.19.127.96) by
 xsj-pvapexch01.xlnx.xilinx.com (172.19.86.40) with Microsoft SMTP Server id
 15.1.1913.5 via Frontend Transport; Wed, 24 Feb 2021 05:11:28 -0800
Envelope-to: git@xilinx.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com,
 shubhrajyoti.datta@gmail.com, miquel.raynal@bootlin.com,
 devel@driverdev.osuosl.org
Received: from [10.140.6.59] (port=34848 helo=xhdshubhraj40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1lEtwt-0001ry-Rn; Wed, 24 Feb 2021 05:11:28 -0800
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: <devicetree@vger.kernel.org>
Subject: [PATCH v10 9/9] clk: clock-wizard: Add the clockwizard to clk
 directory
Date: Wed, 24 Feb 2021 18:40:41 +0530
Message-ID: <1614172241-17326-10-git-send-email-shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
References: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f15f33f6-4391-446e-7947-08d8d8c5c8bc
X-MS-TrafficTypeDiagnostic: CH2PR02MB6952:
X-Microsoft-Antispam-PRVS: <CH2PR02MB695267B5C1C715706CD351CDAA9F9@CH2PR02MB6952.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YQcpWvphMi8Q7ZTH4+wuhsLtJ4FvmZzPMUZWtvsurLQTOr5pxrMqYqykaE8hWrZ8UkyIcnciWmfJTRw0aGiTX0wQcHL0OtpXmJw/aBZ3EH8w4jBuUGNjyz3A8CwTEO5ekL6vK26k9cwWJTeCFv007oEsVsM2cxGSVz0gElNNMw5guY0/Pfywt2bGpKrE2a+VdrYf9cA3tbedyT9YaArv/IPIKvY9aiTLTZtghE8/Jwvoe+YWTyJSSKZU1ciEnWN7pVTRoMf7zKniAnyHa/IsY5wugb0Su2EVEQ3aiD0ddITxRkWZWj6h0DGTS5OPpVlwmOv/GuegcuT8VjF+coTxXJ2mcHfsjoksaCzgWX1lt9QBln9SLXepyfa708v4OFxRkFOVOAPhojx/4o+IYQ6RejPta2TbvzE142Rz/Cmn3sctlPq2Ei21WcEY56Lji89ERGMihNLYxbiPjON76pXLiBicfbhDXbhy9gjKxuRgauz3mLYUdpJFVgHImgOAlTq/pU3XqDGRUB8NA/4FwP9YRyAXnR3IOECMxv6OH41XSMSzOK/SGwO1nuIskbpIi64SHBpk0YrZXRlUWAlUveAfMLljW9Yo858cyhc7jpwHFI1LWJEbIPY0QQ0CT7bZHyVyYNYoEuKJH5aQYuPj2KoVjSoC9zbXn3F251GmPOHLkgUdvcANlv+oRkKy/PRJd5v8HUud97K8S9IwXgjolcg11fWDeH7LM+uLM5fOhixPZ5cpeJzXCiLnNGODUP/BfmR8a7Lvt5VTUEEx+YpW7bVnEA==
X-Forefront-Antispam-Report: CIP:149.199.62.198; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapexch02.xlnx.xilinx.com;
 PTR:unknown-62-198.xilinx.com; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(36840700001)(46966006)(966005)(36756003)(6916009)(107886003)(426003)(9786002)(478600001)(47076005)(8936002)(186003)(4326008)(82310400003)(8676002)(2616005)(36906005)(70586007)(70206006)(336012)(7636003)(44832011)(54906003)(356005)(82740400003)(66574015)(6666004)(26005)(316002)(83380400001)(5660300002)(2906002)(36860700001)(7696005)(102446001);
 DIR:OUT; SFP:1101; 
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2021 13:12:06.0197 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f15f33f6-4391-446e-7947-08d8d8c5c8bc
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.62.198];
 Helo=[xsj-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-AuthSource: CY1NAM02FT052.eop-nam02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6952
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
Cc: devel@driverdev.osuosl.org, shubhrajyoti.datta@gmail.com, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>, robh+dt@kernel.org,
 git@xilinx.com, miquel.raynal@bootlin.com, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

QWRkIGNsb2NraW5nIHdpemFyZCBkcml2ZXIgdG8gY2xrLgpBbmQgZGVsZXRlIHRoZSBkcml2ZXIg
ZnJvbSB0aGUgc3RhZ2luZyBhcyBpdCBpcyBpbiBkcml2ZXJzL2Nsay4KClNpZ25lZC1vZmYtYnk6
IFNodWJocmFqeW90aSBEYXR0YSA8c2h1YmhyYWp5b3RpLmRhdHRhQHhpbGlueC5jb20+Ci0tLQog
ZHJpdmVycy9jbGsvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgOSAr
KysrKysrCiBkcml2ZXJzL2Nsay9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAxICsKIC4uLi9jbGsteGxueC1jbG9jay13aXphcmQuYyAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDMgKystCiBkcml2ZXJzL3N0YWdpbmcvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICB8ICAyIC0tCiBkcml2ZXJzL3N0YWdpbmcvTWFrZWZpbGUgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8ICAxIC0KIGRyaXZlcnMvc3RhZ2luZy9jbG9ja2luZy13aXphcmQvS2NvbmZp
ZyAgICAgICAgICAgIHwgMTAgLS0tLS0tLS0KIGRyaXZlcnMvc3RhZ2luZy9jbG9ja2luZy13aXph
cmQvTWFrZWZpbGUgICAgICAgICAgIHwgIDIgLS0KIGRyaXZlcnMvc3RhZ2luZy9jbG9ja2luZy13
aXphcmQvVE9ETyAgICAgICAgICAgICAgIHwgMTIgLS0tLS0tLS0tCiBkcml2ZXJzL3N0YWdpbmcv
Y2xvY2tpbmctd2l6YXJkL2R0LWJpbmRpbmcudHh0ICAgICB8IDMwIC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KIDkgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNTggZGVsZXRpb25zKC0p
CiByZW5hbWUgZHJpdmVycy97c3RhZ2luZy9jbG9ja2luZy13aXphcmQgPT4gY2xrfS9jbGsteGxu
eC1jbG9jay13aXphcmQuYyAoOTklKQogZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3RhZ2lu
Zy9jbG9ja2luZy13aXphcmQvS2NvbmZpZwogZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvc3Rh
Z2luZy9jbG9ja2luZy13aXphcmQvTWFrZWZpbGUKIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L3N0YWdpbmcvY2xvY2tpbmctd2l6YXJkL1RPRE8KIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L3N0YWdpbmcvY2xvY2tpbmctd2l6YXJkL2R0LWJpbmRpbmcudHh0CgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9jbGsvS2NvbmZpZyBiL2RyaXZlcnMvY2xrL0tjb25maWcKaW5kZXggODU4NTZjZmYuLjAz
Y2NkNzcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvY2xrL0tjb25maWcKKysrIGIvZHJpdmVycy9jbGsv
S2NvbmZpZwpAQCAtMzY4LDYgKzM2OCwxNSBAQCBjb25maWcgQ09NTU9OX0NMS19GSVhFRF9NTUlP
CiAJaGVscAogCSAgU3VwcG9ydCBmb3IgTWVtb3J5IE1hcHBlZCBJTyBGaXhlZCBjbG9ja3MKIAor
Y29uZmlnIENPTU1PTl9DTEtfWExOWF9DTEtXWlJECisJdHJpc3RhdGUgIlhpbGlueCBDbG9ja2lu
ZyBXaXphcmQiCisJZGVwZW5kcyBvbiBDT01NT05fQ0xLICYmIE9GCisJaGVscAorCSAgU3VwcG9y
dCBmb3IgdGhlIFhpbGlueCBDbG9ja2luZyBXaXphcmQgSVAgY29yZSBjbG9jayBnZW5lcmF0b3Iu
CisJICBBZGRzIHN1cHBvcnQgZm9yIGNsb2NraW5nIHdpemFyZCBhbmQgY29tcGF0aWJsZS4KKwkg
IFRoaXMgZHJpdmVyIHN1cHBvcnRzIHRoZSBYaWxpbnggY2xvY2tpbmcgd2l6YXJkIHByb2dyYW1t
YWJsZSBjbG9jaworCSAgc3ludGhlc2l6ZXIuIFRoZSBudW1iZXIgb2Ygb3V0cHV0IGlzIGNvbmZp
Z3VyYWJsZSBpbiB0aGUgZGVzaWduLgorCiBzb3VyY2UgImRyaXZlcnMvY2xrL2FjdGlvbnMvS2Nv
bmZpZyIKIHNvdXJjZSAiZHJpdmVycy9jbGsvYW5hbG9nYml0cy9LY29uZmlnIgogc291cmNlICJk
cml2ZXJzL2Nsay9iYWlrYWwtdDEvS2NvbmZpZyIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xrL01h
a2VmaWxlIGIvZHJpdmVycy9jbGsvTWFrZWZpbGUKaW5kZXggZGJkYzU5MC4uYjFjYzQ0NyAxMDA2
NDQKLS0tIGEvZHJpdmVycy9jbGsvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9jbGsvTWFrZWZpbGUK
QEAgLTcwLDYgKzcwLDcgQEAgb2JqLSQoQ09ORklHX0FSQ0hfVlQ4NTAwKQkJKz0gY2xrLXZ0ODUw
MC5vCiBvYmotJChDT05GSUdfQ09NTU9OX0NMS19WQzUpCQkrPSBjbGstdmVyc2FjbG9jazUubwog
b2JqLSQoQ09ORklHX0NPTU1PTl9DTEtfV004MzFYKQkJKz0gY2xrLXdtODMxeC5vCiBvYmotJChD
T05GSUdfQ09NTU9OX0NMS19YR0VORSkJCSs9IGNsay14Z2VuZS5vCitvYmotJChDT05GSUdfQ09N
TU9OX0NMS19YTE5YX0NMS1daUkQpCSs9IGNsay14bG54LWNsb2NrLXdpemFyZC5vCiAKICMgcGxl
YXNlIGtlZXAgdGhpcyBzZWN0aW9uIHNvcnRlZCBsZXhpY29ncmFwaGljYWxseSBieSBkaXJlY3Rv
cnkgcGF0aCBuYW1lCiBvYmoteQkJCQkJKz0gYWN0aW9ucy8KZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy9jbG9ja2luZy13aXphcmQvY2xrLXhsbngtY2xvY2std2l6YXJkLmMgYi9kcml2ZXJz
L2Nsay9jbGsteGxueC1jbG9jay13aXphcmQuYwpzaW1pbGFyaXR5IGluZGV4IDk5JQpyZW5hbWUg
ZnJvbSBkcml2ZXJzL3N0YWdpbmcvY2xvY2tpbmctd2l6YXJkL2Nsay14bG54LWNsb2NrLXdpemFy
ZC5jCnJlbmFtZSB0byBkcml2ZXJzL2Nsay9jbGsteGxueC1jbG9jay13aXphcmQuYwppbmRleCBi
MGNlZDQyLi42Y2I4Yjc5IDEwMDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvY2xvY2tpbmctd2l6
YXJkL2Nsay14bG54LWNsb2NrLXdpemFyZC5jCisrKyBiL2RyaXZlcnMvY2xrL2Nsay14bG54LWNs
b2NrLXdpemFyZC5jCkBAIC0yLDkgKzIsMTAgQEAKIC8qCiAgKiBYaWxpbnggJ0Nsb2NraW5nIFdp
emFyZCcgZHJpdmVyCiAgKgotICogIENvcHlyaWdodCAoQykgMjAxMyAtIDIwMTQgWGlsaW54Cisg
KiAgQ29weXJpZ2h0IChDKSAyMDEzIC0gMjAyMSBYaWxpbngKICAqCiAgKiAgU8O2cmVuIEJyaW5r
bWFubiA8c29yZW4uYnJpbmttYW5uQHhpbGlueC5jb20+CisgKgogICovCiAKICNpbmNsdWRlIDxs
aW51eC9wbGF0Zm9ybV9kZXZpY2UuaD4KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9LY29u
ZmlnIGIvZHJpdmVycy9zdGFnaW5nL0tjb25maWcKaW5kZXggYjIyZjczZC4uZDAzMmZiNSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL0tjb25maWcKKysrIGIvZHJpdmVycy9zdGFnaW5nL0tj
b25maWcKQEAgLTc0LDggKzc0LDYgQEAgc291cmNlICJkcml2ZXJzL3N0YWdpbmcvZ3NfZnBnYWJv
b3QvS2NvbmZpZyIKIAogc291cmNlICJkcml2ZXJzL3N0YWdpbmcvdW5pc3lzL0tjb25maWciCiAK
LXNvdXJjZSAiZHJpdmVycy9zdGFnaW5nL2Nsb2NraW5nLXdpemFyZC9LY29uZmlnIgotCiBzb3Vy
Y2UgImRyaXZlcnMvc3RhZ2luZy9mYnRmdC9LY29uZmlnIgogCiBzb3VyY2UgImRyaXZlcnMvc3Rh
Z2luZy9mc2wtZHBhYTIvS2NvbmZpZyIKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9NYWtl
ZmlsZSBiL2RyaXZlcnMvc3RhZ2luZy9NYWtlZmlsZQppbmRleCAyMjQ1MDU5Li4yMzI3MTg1IDEw
MDY0NAotLS0gYS9kcml2ZXJzL3N0YWdpbmcvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9zdGFnaW5n
L01ha2VmaWxlCkBAIC0yNyw3ICsyNyw2IEBAIG9iai0kKENPTkZJR19MVEVfR0RNNzI0WCkJKz0g
Z2RtNzI0eC8KIG9iai0kKENPTkZJR19GSVJFV0lSRV9TRVJJQUwpCSs9IGZ3c2VyaWFsLwogb2Jq
LSQoQ09ORklHX0dTX0ZQR0FCT09UKQkrPSBnc19mcGdhYm9vdC8KIG9iai0kKENPTkZJR19VTklT
WVNTUEFSKQkrPSB1bmlzeXMvCi1vYmotJChDT05GSUdfQ09NTU9OX0NMS19YTE5YX0NMS1daUkQp
CSs9IGNsb2NraW5nLXdpemFyZC8KIG9iai0kKENPTkZJR19GQl9URlQpCQkrPSBmYnRmdC8KIG9i
ai0kKENPTkZJR19GU0xfRFBBQTIpCQkrPSBmc2wtZHBhYTIvCiBvYmotJChDT05GSUdfTU9TVCkJ
CSs9IG1vc3QvCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvY2xvY2tpbmctd2l6YXJkL0tj
b25maWcgYi9kcml2ZXJzL3N0YWdpbmcvY2xvY2tpbmctd2l6YXJkL0tjb25maWcKZGVsZXRlZCBm
aWxlIG1vZGUgMTAwNjQ0CmluZGV4IDY5Y2Y1MTQuLjAwMDAwMDAKLS0tIGEvZHJpdmVycy9zdGFn
aW5nL2Nsb2NraW5nLXdpemFyZC9LY29uZmlnCisrKyAvZGV2L251bGwKQEAgLTEsMTAgKzAsMCBA
QAotIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAotIwotIyBYaWxpbnggQ2xvY2tp
bmcgV2l6YXJkIERyaXZlcgotIwotCi1jb25maWcgQ09NTU9OX0NMS19YTE5YX0NMS1daUkQKLQl0
cmlzdGF0ZSAiWGlsaW54IENsb2NraW5nIFdpemFyZCIKLQlkZXBlbmRzIG9uIENPTU1PTl9DTEsg
JiYgT0YgJiYgSU9NRU0KLQloZWxwCi0JICBTdXBwb3J0IGZvciB0aGUgWGlsaW54IENsb2NraW5n
IFdpemFyZCBJUCBjb3JlIGNsb2NrIGdlbmVyYXRvci4KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3Rh
Z2luZy9jbG9ja2luZy13aXphcmQvTWFrZWZpbGUgYi9kcml2ZXJzL3N0YWdpbmcvY2xvY2tpbmct
d2l6YXJkL01ha2VmaWxlCmRlbGV0ZWQgZmlsZSBtb2RlIDEwMDY0NAppbmRleCBiMWY5MTUyLi4w
MDAwMDAwCi0tLSBhL2RyaXZlcnMvc3RhZ2luZy9jbG9ja2luZy13aXphcmQvTWFrZWZpbGUKKysr
IC9kZXYvbnVsbApAQCAtMSwyICswLDAgQEAKLSMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQ
TC0yLjAKLW9iai0kKENPTkZJR19DT01NT05fQ0xLX1hMTlhfQ0xLV1pSRCkJKz0gY2xrLXhsbngt
Y2xvY2std2l6YXJkLm8KZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9jbG9ja2luZy13aXph
cmQvVE9ETyBiL2RyaXZlcnMvc3RhZ2luZy9jbG9ja2luZy13aXphcmQvVE9ETwpkZWxldGVkIGZp
bGUgbW9kZSAxMDA2NDQKaW5kZXggZWJlOTlkYi4uMDAwMDAwMAotLS0gYS9kcml2ZXJzL3N0YWdp
bmcvY2xvY2tpbmctd2l6YXJkL1RPRE8KKysrIC9kZXYvbnVsbApAQCAtMSwxMiArMCwwIEBACi1U
T0RPOgotCS0gc3VwcG9ydCBmb3IgZnJhY3Rpb25hbCBtdWx0aXBsaWVyCi0JLSBzdXBwb3J0IGZv
ciBmcmFjdGlvbmFsIGRpdmlkZXIgKG91dHB1dCAwIG9ubHkpCi0JLSBzdXBwb3J0IGZvciBzZXRf
cmF0ZSgpIG9wZXJhdGlvbnMgKG1heSBiZW5lZml0IGZyb20gU3RlcGhlbiBCb3lkJ3MKLQkgIHJl
ZmFjdG9yaW5nIG9mIHRoZSBjbGsgcHJpbWl0aXZlczogaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIw
MTQvOS81Lzc2NikKLQktIHJldmlldyBhcml0aG1ldGljCi0JICAtIG92ZXJmbG93IGFmdGVyIG11
bHRpcGxpY2F0aW9uPwotCSAgLSBtYXhpbWl6ZSBhY2N1cmFjeSBiZWZvcmUgZGl2aXNpb25zCi0K
LVBhdGNoZXMgdG86Ci0JR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9u
Lm9yZz4KLQlTw7ZyZW4gQnJpbmttYW5uIDxzb3Jlbi5icmlua21hbm5AeGlsaW54LmNvbT4KZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9jbG9ja2luZy13aXphcmQvZHQtYmluZGluZy50eHQg
Yi9kcml2ZXJzL3N0YWdpbmcvY2xvY2tpbmctd2l6YXJkL2R0LWJpbmRpbmcudHh0CmRlbGV0ZWQg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCBlZmI2N2ZmLi4wMDAwMDAwCi0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9jbG9ja2luZy13aXphcmQvZHQtYmluZGluZy50eHQKKysrIC9kZXYvbnVsbApAQCAtMSwz
MCArMCwwIEBACi1CaW5kaW5nIGZvciBYaWxpbnggQ2xvY2tpbmcgV2l6YXJkIElQIENvcmUKLQot
VGhpcyBiaW5kaW5nIHVzZXMgdGhlIGNvbW1vbiBjbG9jayBiaW5kaW5nWzFdLiBEZXRhaWxzIGFi
b3V0IHRoZSBkZXZpY2VzIGNhbiBiZQotZm91bmQgaW4gdGhlIHByb2R1Y3QgZ3VpZGVbMl0uCi0K
LVsxXSBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xvY2svY2xvY2stYmluZGlu
Z3MudHh0Ci1bMl0gQ2xvY2tpbmcgV2l6YXJkIFByb2R1Y3QgR3VpZGUKLWh0dHBzOi8vd3d3Lnhp
bGlueC5jb20vc3VwcG9ydC9kb2N1bWVudGF0aW9uL2lwX2RvY3VtZW50YXRpb24vY2xrX3dpei92
NV8xL3BnMDY1LWNsay13aXoucGRmCi0KLVJlcXVpcmVkIHByb3BlcnRpZXM6Ci0gLSBjb21wYXRp
YmxlOiBNdXN0IGJlICd4bG54LGNsb2NraW5nLXdpemFyZCcKLSAtIHJlZzogQmFzZSBhbmQgc2l6
ZSBvZiB0aGUgY29yZXMgcmVnaXN0ZXIgc3BhY2UKLSAtIGNsb2NrczogSGFuZGxlIHRvIGlucHV0
IGNsb2NrCi0gLSBjbG9jay1uYW1lczogVHVwbGUgY29udGFpbmluZyAnY2xrX2luMScgYW5kICdz
X2F4aV9hY2xrJwotIC0gY2xvY2stb3V0cHV0LW5hbWVzOiBOYW1lcyBmb3IgdGhlIG91dHB1dCBj
bG9ja3MKLQotT3B0aW9uYWwgcHJvcGVydGllczoKLSAtIHNwZWVkLWdyYWRlOiBTcGVlZCBncmFk
ZSBvZiB0aGUgZGV2aWNlICh2YWxpZCB2YWx1ZXMgYXJlIDEuLjMpCi0KLUV4YW1wbGU6Ci0JY2xv
Y2stZ2VuZXJhdG9yQDQwMDQwMDAwIHsKLQkJcmVnID0gPDB4NDAwNDAwMDAgMHgxMDAwPjsKLQkJ
Y29tcGF0aWJsZSA9ICJ4bG54LGNsb2NraW5nLXdpemFyZCI7Ci0JCXNwZWVkLWdyYWRlID0gPDE+
OwotCQljbG9jay1uYW1lcyA9ICJjbGtfaW4xIiwgInNfYXhpX2FjbGsiOwotCQljbG9ja3MgPSA8
JmNsa2MgMTU+LCA8JmNsa2MgMTU+OwotCQljbG9jay1vdXRwdXQtbmFtZXMgPSAiY2xrX291dDAi
LCAiY2xrX291dDEiLCAiY2xrX291dDIiLAotCQkJCSAgICAgImNsa19vdXQzIiwgImNsa19vdXQ0
IiwgImNsa19vdXQ1IiwKLQkJCQkgICAgICJjbGtfb3V0NiIsICJjbGtfb3V0NyI7Ci0JfTsKLS0g
CjIuMS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
