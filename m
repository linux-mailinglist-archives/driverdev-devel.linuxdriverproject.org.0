Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4504328B282
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Oct 2020 12:47:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F0F287277;
	Mon, 12 Oct 2020 10:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZO00uMT24J6; Mon, 12 Oct 2020 10:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6CE7D8721B;
	Mon, 12 Oct 2020 10:47:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C9B801BF5B5
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C54D987277
 for <devel@linuxdriverproject.org>; Mon, 12 Oct 2020 10:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C9w5q6B6+-oS for <devel@linuxdriverproject.org>;
 Mon, 12 Oct 2020 10:47:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2058.outbound.protection.outlook.com [40.107.223.58])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0ABB987227
 for <devel@driverdev.osuosl.org>; Mon, 12 Oct 2020 10:47:09 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DzeJa+QlC5BpyqQrvwxWx9/gmSeexlWepa3rxLudv9tOfqSDVRrNoN8EuX2ipe41WVFSz1ODMtstmgFWV+Cw9oTFi/MQqzub++ltZbST4CUvLQ/tZXyfXRDnejitcWpetn6Tkju6gfuBax2Rca2g4ScJie4kD1W1R+nLmbyGITH5XukG0amU3yFLAess9e4HUwD39WIMNP6Wk18FzsX6med9WK8bJ/Tr+xByWxUbAWNOsawm/rZgDVcTsZTWilPgcuUJfsojLuWeXNsdsLRlgeyMV66bl4C5cC/xQlQN0oX39fIWCaE2K+01E+u/BZo/RfDyQQlNLfllnWtwh8khdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qo32LwbmDuLR1/pvw0gLGFoQuy7lgCsd9hQ0X3be1/Y=;
 b=LcG9AZD0si6gS79X4tcwLLXS3Y7DcVf32djZfpP0TFdTZXXhcxBFPPULc+cOY56Vzh3SR60WY1NLZUq9YBqDGB3q0VynOishSDOhuQazhMv6wKmeCQTVYYlhcW4uA9GKxreSubIZ4fG1RCfNFJAJKKzRZV5NVkpuNXGINQaksraNHNnp1dFKFFRfbMiOc8Jl5C1KRvNt0K2XvBuo3qSjlnJACxHQNSzzDQ/4M2gGj6AbzbWaf11ceJuhtN9sdAMkJ3hIaCkD6mEPPdmQx0CjhgVkreJj+g6fga9Ozfq8mnkd55ukHpemHiDUUgQfvdZ0rZyi0wBJobPiRchwCyUDUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qo32LwbmDuLR1/pvw0gLGFoQuy7lgCsd9hQ0X3be1/Y=;
 b=ap83X+X2bLTzI137NLZRxJA69JLkM2Vu+SCfK1vQKkPlUDxaA3jjAIJk5z+P4wJU0+YyYxTXLc71i95RwkGMWvSJSNSQy5wjpWa9jj8U5SqFkY9bChin07FoymfDGmL8xAviGCOxJmawA1Rn5V7lRs8mEfSQE0wvthn6DCzRdX8=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none; vger.kernel.org; dmarc=none action=none header.from=silabs.com; 
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4734.namprd11.prod.outlook.com (2603:10b6:806:99::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3455.23; Mon, 12 Oct
 2020 10:47:08 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::4f5:fbe5:44a7:cb8a%5]) with mapi id 15.20.3455.029; Mon, 12 Oct 2020
 10:47:08 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org
Subject: [PATCH 01/23] dt-bindings: introduce silabs,wfx.yaml
Date: Mon, 12 Oct 2020 12:46:26 +0200
Message-Id: <20201012104648.985256-2-Jerome.Pouiller@silabs.com>
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
 15.20.3455.21 via Frontend Transport; Mon, 12 Oct 2020 10:47:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7aa97060-5e25-4435-9a66-08d86e9c2a61
X-MS-TrafficTypeDiagnostic: SA0PR11MB4734:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB473411F02885CEB4BBA06FF793070@SA0PR11MB4734.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LBYZVJJaUhG8I3RVnFkcgdUY9q7uIxGcTF6P+Z+pmKsyUidOwruBslwR8RoPK3AzJDQFnb+4wcGOKrpCsBHHpgTPMwpYI12g+RH6Ph2zNATk8WLtFHASQ2U/CwlgO+A2NRId4lbKrkHqrP2TL+6+pvQeXxXUdleAaHIauK7GYhZ6twhmhZWUrxXE/WSirvue65AHr/w2kvc4MZQRTm5YU+CcAz02YCmmXvThRVNjxny7JCJOCOTxx7XIrN+7AB4o0LUDTAir1gq7R3Lk2z950+qnMWpua4IuVclS2su4Gzat7m05jMh86f76J7WCsQfgYZuVar58sKl2vDvDhMX2yBOKEvd1Bkm+c7a/qarintk21eS4RpAoWRhw7XTXiiUOiKaghSGU0u/tlzQjXKbpjQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39850400004)(396003)(366004)(136003)(346002)(376002)(66556008)(66476007)(6512007)(26005)(36756003)(66946007)(16526019)(186003)(316002)(4326008)(2616005)(956004)(1076003)(5660300002)(107886003)(6486002)(54906003)(86362001)(966005)(8676002)(83380400001)(83080400001)(8936002)(66574015)(52116002)(2906002)(6506007)(8886007)(6666004)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: +YC+Ss8JfeTo+rluBKMtfpRuicQ++qUgWtAq+oMVkUbmS8sbFV6agEq8ms4UK+fFylQC5C1JPhK4pXUSX3dmy/rAlu/FeJexXGrBjgVHkOAKq9nxb6vmeJUZrco3Z1el2m9kqlUtRtJN6Kh8V/VkGWbz8XMU+KTeCPP01see8L5RgZaccRzE/abqh9Obe4P9vfbbveNvIE2hfhy8XrrSifbcOAYe72mAmG+pngU9T1s9syrI0HfNDQplPHWbmQkRI7CWgqaaFUFh5gXBAtxoFaGLZXlBCGBKsalaqfc4RP25OrcKLVV8wy+SzKm4DmKuawNiywC7fCoQijigtVl1T1z9X2K17grimYg2zlVkLIY8gu/0hnNfVndCgcOm6bQH5SbaHrQaMG9KtwPHg8xNt99o0kxD+Z/zXhnn2cyY5BUUwZ6v+L224UJvr2uwhntImXCIwyeGYa1/qoCK/fyrcuoUlgsCAkj2vQLivhcbMdmj9MSEwtD1KTIwtIkSui/zulUC5rWUaYa1ySzVGYCH7m4hUre4lRYvcfnec3U7LGfV9LNwm1ryB7OEYRCx05+3ylGe5h5pzCdpilnZVSyX5AfNzpKb08gw+VmKYZlcm8Bav4dIXJDXKFFTm6yDbNq+lmkcfTFbvLUy3Ub3H7K2TQ==
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aa97060-5e25-4435-9a66-08d86e9c2a61
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2020 10:47:08.0816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dZqHb6lD8/VWEVbTPWT7Z9+ah5ekvtunAqhecSMXpGX8wT6DbLy1DFqush3mpRtiAAAf8hO6Temwykd4APbt6A==
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
PgotLS0KIC4uLi9iaW5kaW5ncy9uZXQvd2lyZWxlc3Mvc2lsYWJzLHdmeC55YW1sICAgICB8IDEy
NSArKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMjUgaW5zZXJ0aW9ucygrKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
d2lyZWxlc3Mvc2lsYWJzLHdmeC55YW1sCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL25ldC93aXJlbGVzcy9zaWxhYnMsd2Z4LnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3dpcmVsZXNzL3NpbGFicyx3ZngueWFtbApuZXcg
ZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjQzYjU2MzBjMDQwNwotLS0gL2Rl
di9udWxsCisrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvd2lyZWxl
c3Mvc2lsYWJzLHdmeC55YW1sCkBAIC0wLDAgKzEsMTI1IEBACisjIFNQRFgtTGljZW5zZS1JZGVu
dGlmaWVyOiAoR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZSkKKyMgQ29weXJpZ2h0IChjKSAy
MDIwLCBTaWxpY29uIExhYm9yYXRvcmllcywgSW5jLgorJVlBTUwgMS4yCistLS0KKworJGlkOiBo
dHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9uZXQvd2lyZWxlc3Mvc2lsYWJzLHdmeC55YW1s
IworJHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwj
CisKK3RpdGxlOiBTaWxpY29uIExhYnMgV0Z4eHggZGV2aWNldHJlZSBiaW5kaW5ncworCittYWlu
dGFpbmVyczoKKyAgLSBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5j
b20+CisKK2Rlc2NyaXB0aW9uOgorICBUaGUgV0Z4eHggY2hpcCBzZXJpZXMgY2FuIGJlIGNvbm5l
Y3RlZCB2aWEgU1BJIG9yIHZpYSBTRElPLgorCisgIEZvciBTRElPJzonCisKKyAgICBUaGUgZHJp
dmVyIGlzIGFibGUgdG8gZGV0ZWN0IGEgV0Z4eHggY2hpcCBvbiBTRElPIGJ1cyBieSBtYXRjaGlu
ZyBpdHMgVmVuZG9yCisgICAgSUQgYW5kIFByb2R1Y3QgSUQuIEhvd2V2ZXIsIGRyaXZlciB3aWxs
IG9ubHkgcHJvdmlkZSBsaW1pdGVkIGZlYXR1cmVzIGluCisgICAgdGhpcyBjYXNlLiBUaHVzIGRl
Y2xhcmluZyBXRnh4eCBjaGlwIGluIGRldmljZSB0cmVlIGlzIHJlY29tbWVuZGVkIChhbmQgbWF5
CisgICAgYmVjb21lIG1hbmRhdG9yeSBpbiB0aGUgZnV0dXJlKS4KKworICAgIEluIGFkZGl0aW9u
LCBpdCBpcyByZWNvbW1lbmRlZCB0byBkZWNsYXJlIGEgbW1jLXB3cnNlcSBvbiBTRElPIGhvc3Qg
YWJvdmUKKyAgICBXRnguIFdpdGhvdXQgaXQsIHlvdSBtYXkgZW5jb3VudGVyIGlzc3VlcyB3aXRo
IHdhcm0gYm9vdC4gVGhlIG1tYy1wd3JzZXEKKyAgICBzaG91bGQgYmUgY29tcGF0aWJsZSB3aXRo
IG1tYy1wd3JzZXEtc2ltcGxlLiBQbGVhc2UgY29uc3VsdAorICAgIERvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9tbWMvbW1jLXB3cnNlcS1zaW1wbGUudHh0IGZvciBtb3JlCisgICAg
aW5mb3JtYXRpb24uCisKKyAgRm9yIFNQSSc6JworCisgICAgSW4gYWRkIG9mIHRoZSBwcm9wZXJ0
aWVzIGJlbG93LCBwbGVhc2UgY29uc3VsdAorICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9zcGkvc3BpLWNvbnRyb2xsZXIueWFtbCBmb3Igb3B0aW9uYWwgU1BJCisgICAgcmVs
YXRlZCBwcm9wZXJ0aWVzLgorCisgIE5vdGUgdGhhdCBpbiBhZGQgb2YgdGhlIHByb3BlcnRpZXMg
YmVsb3csIHRoZSBXRnggZHJpdmVyIGFsc28gc3VwcG9ydHMKKyAgYG1hYy1hZGRyZXNzYCBhbmQg
YGxvY2FsLW1hYy1hZGRyZXNzYCBhcyBkZXNjcmliZWQgaW4KKyAgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL25ldC9ldGhlcm5ldC50eHQKKworcHJvcGVydGllczoKKyAgY29tcGF0
aWJsZToKKyAgICBjb25zdDogc2lsYWJzLHdmMjAwCisgIHJlZzoKKyAgICBkZXNjcmlwdGlvbjoK
KyAgICAgIFdoZW4gdXNlZCBvbiBTRElPIGJ1cywgPHJlZz4gbXVzdCBiZSBzZXQgdG8gMS4gV2hl
biB1c2VkIG9uIFNQSSBidXMsIGl0IGlzCisgICAgICB0aGUgY2hpcCBzZWxlY3QgYWRkcmVzcyBv
ZiB0aGUgZGV2aWNlIGFzIGRlZmluZWQgaW4gdGhlIFNQSSBkZXZpY2VzCisgICAgICBiaW5kaW5n
cy4KKyAgICBtYXhJdGVtczogMQorICBzcGktbWF4LWZyZXF1ZW5jeToKKyAgICBkZXNjcmlwdGlv
bjogKFNQSSBvbmx5KSBNYXhpbXVtIFNQSSBjbG9ja2luZyBzcGVlZCBvZiBkZXZpY2UgaW4gSHou
CisgICAgbWF4SXRlbXM6IDEKKyAgaW50ZXJydXB0czoKKyAgICBkZXNjcmlwdGlvbjogVGhlIGlu
dGVycnVwdCBsaW5lLiBUcmlnZ2VycyBJUlFfVFlQRV9MRVZFTF9ISUdIIGFuZAorICAgICAgSVJR
X1RZUEVfRURHRV9SSVNJTkcgYXJlIGJvdGggc3VwcG9ydGVkIGJ5IHRoZSBjaGlwIGFuZCB0aGUg
ZHJpdmVyLiBXaGVuCisgICAgICBTUEkgaXMgdXNlZCwgdGhpcyBwcm9wZXJ0eSBpcyByZXF1aXJl
ZC4gV2hlbiBTRElPIGlzIHVzZWQsIHRoZSAiaW4tYmFuZCIKKyAgICAgIGludGVycnVwdCBwcm92
aWRlZCBieSB0aGUgU0RJTyBidXMgaXMgdXNlZCB1bmxlc3MgYW4gaW50ZXJydXB0IGlzIGRlZmlu
ZWQKKyAgICAgIGluIHRoZSBEZXZpY2UgVHJlZS4KKyAgICBtYXhJdGVtczogMQorICByZXNldC1n
cGlvczoKKyAgICBkZXNjcmlwdGlvbjogKFNQSSBvbmx5KSBQaGFuZGxlIG9mIGdwaW8gdGhhdCB3
aWxsIGJlIHVzZWQgdG8gcmVzZXQgY2hpcAorICAgICAgZHVyaW5nIHByb2JlLiBXaXRob3V0IHRo
aXMgcHJvcGVydHksIHlvdSBtYXkgZW5jb3VudGVyIGlzc3VlcyB3aXRoIHdhcm0KKyAgICAgIGJv
b3QuIChGb3IgbGVnYWN5IHB1cnBvc2UsIHRoZSBncGlvIGluIGludmVydGVkIHdoZW4gY29tcGF0
aWJsZSA9PQorICAgICAgInNpbGFicyx3Zngtc3BpIikKKworICAgICAgRm9yIFNESU8sIHRoZSBy
ZXNldCBncGlvIHNob3VsZCBkZWNsYXJlZCB1c2luZyBhIG1tYy1wd3JzZXEuCisgICAgbWF4SXRl
bXM6IDEKKyAgd2FrZXVwLWdwaW9zOgorICAgIGRlc2NyaXB0aW9uOiBQaGFuZGxlIG9mIGdwaW8g
dGhhdCB3aWxsIGJlIHVzZWQgdG8gd2FrZS11cCBjaGlwLiBXaXRob3V0IHRoaXMKKyAgICAgIHBy
b3BlcnR5LCBkcml2ZXIgd2lsbCBkaXNhYmxlIG1vc3Qgb2YgcG93ZXIgc2F2aW5nIGZlYXR1cmVz
LgorICAgIG1heEl0ZW1zOiAxCisgIGNvbmZpZy1maWxlOgorICAgIGRlc2NyaXB0aW9uOiBVc2Ug
YW4gYWx0ZXJuYXRpdmUgZmlsZSBhcyBQRFMuIERlZmF1bHQgaXMgYHdmMjAwLnBkc2AuIE9ubHkK
KyAgICAgIG5lY2Vzc2FyeSBmb3IgZGV2ZWxvcG1lbnQvZGVidWcgcHVycG9zZS4KKyAgICBtYXhJ
dGVtczogMQorCityZXF1aXJlZDoKKyAgLSBjb21wYXRpYmxlCisgIC0gcmVnCisKK2V4YW1wbGVz
OgorICAtIHwKKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+CisgICAgI2lu
Y2x1ZGUgPGR0LWJpbmRpbmdzL2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPgorCisgICAgc3Bp
MCB7CisgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDE+OworICAgICAgICAjc2l6ZS1jZWxscyA9
IDwwPjsKKworICAgICAgICB3ZnhAMCB7CisgICAgICAgICAgICBjb21wYXRpYmxlID0gInNpbGFi
cyx3ZjIwMCI7CisgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworICAgICAg
ICAgICAgcGluY3RybC0wID0gPCZ3ZnhfaXJxICZ3ZnhfZ3Bpb3M+OworICAgICAgICAgICAgcmVn
ID0gPDA+OworICAgICAgICAgICAgaW50ZXJydXB0cy1leHRlbmRlZCA9IDwmZ3BpbyAxNiBJUlFf
VFlQRV9FREdFX1JJU0lORz47CisgICAgICAgICAgICB3YWtldXAtZ3Bpb3MgPSA8JmdwaW8gMTIg
R1BJT19BQ1RJVkVfSElHSD47CisgICAgICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbyAxMyBH
UElPX0FDVElWRV9MT1c+OworICAgICAgICAgICAgc3BpLW1heC1mcmVxdWVuY3kgPSA8NDIwMDAw
MDA+OworICAgICAgICB9OworICAgIH07CisKKyAgLSB8CisgICAgI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL2dwaW8vZ3Bpby5oPgorICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29u
dHJvbGxlci9pcnEuaD4KKworICAgIHdmeF9wd3JzZXE6IHdmeF9wd3JzZXEgeworICAgICAgICBj
b21wYXRpYmxlID0gIm1tYy1wd3JzZXEtc2ltcGxlIjsKKyAgICAgICAgcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKKyAgICAgICAgcGluY3RybC0wID0gPCZ3ZnhfcmVzZXQ+OworICAgICAgICBy
ZXNldC1ncGlvcyA9IDwmZ3BpbyAxMyBHUElPX0FDVElWRV9MT1c+OworICAgIH07CisKKyAgICBt
bWMwIHsKKyAgICAgICAgbW1jLXB3cnNlcSA9IDwmd2Z4X3B3cnNlcT47CisgICAgICAgICNhZGRy
ZXNzLWNlbGxzID0gPDE+OworICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsKKworICAgICAgICBt
bWNAMSB7CisgICAgICAgICAgICBjb21wYXRpYmxlID0gInNpbGFicyx3ZjIwMCI7CisgICAgICAg
ICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOworICAgICAgICAgICAgcGluY3RybC0wID0g
PCZ3Znhfd2FrZXVwPjsKKyAgICAgICAgICAgIHJlZyA9IDwxPjsKKyAgICAgICAgICAgIHdha2V1
cC1ncGlvcyA9IDwmZ3BpbyAxMiBHUElPX0FDVElWRV9ISUdIPjsKKyAgICAgICAgfTsKKyAgICB9
OworLi4uCi0tIAoyLjI4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3Jn
Cmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2RyaXZlcmRldi1kZXZlbAo=
