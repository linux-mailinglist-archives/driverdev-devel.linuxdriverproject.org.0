Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D15148B34C
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jan 2022 18:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F241F827AA;
	Tue, 11 Jan 2022 17:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FSzG8QVR0lEc; Tue, 11 Jan 2022 17:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4AD3813A7;
	Tue, 11 Jan 2022 17:16:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 001921BF368
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 17:15:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0ADF60E92
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 17:15:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u6bYqjw1Zr_Z for <devel@linuxdriverproject.org>;
 Tue, 11 Jan 2022 17:15:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on20601.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:fe5a::601])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3623960D5E
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 17:15:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AUY9xrpez9GoiURrNAGwXpX101BbI7suMwZ99em1BEsFFa77Py8d66Mv+cp2Nh+KAgph69j/SPQBTfJraBM3cUC2QeW6DPiNA2DVXZGqDPAQ4TatxCV75+HLOHDRPdUoOA+OdJyYhiN1Fwm1jJiz6zVhL6FtthU1GC0ucbRq1chS0taHE2UtSrjxfEPc7CwvchmsC2sggp1Uku+lkpmz1i0cUJ2nwRb3eSnQJD8geP/AwzCllt737FzQ4gfesC53Q8k/LnAYj84ZIkUVj/aVfYOBTU4nt6dQJtEkSly8eE1AJmQxcFlPS5BwoetjxPvjTFiv8hGFFhuIgfG6iYt+hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FKR/RqIimPfbxVdFm9QPX0JtwSB1m5A+/5JMbv21Loo=;
 b=VklzYCANVlkMvH73yLVqg2rDbT1LFEaf38TXjWbg9l9VlgXe617TkExT0QDYaoGerkuMdWkp0IY427X5cJIhAHi/FPYuYYnARP1OPYTbYqm9dYF1G1p4qqBlO8mfoXs79twNh0IR5gsQ4aCanJakO8u0T8WMezXwoV6RpPV+uD5QTQsiu0ALiB+k27/duVGPJwGsP+gDNs/vtELqGS2wA2f/o+/IAztKBsosDwlym1WZaGtNGsfOpwkLfSqTEe+G+0skYkZt+2THK+fB/jm2h7aRoT6s2qjLNv1Sb6N9zPRyBHdPChegOHqV6ffmjZc2vqiTbupWIHZ9PBl9O2vHGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FKR/RqIimPfbxVdFm9QPX0JtwSB1m5A+/5JMbv21Loo=;
 b=DBCXl8G48uIPRPXN0vE03BdB+PQqKySttV6nOoyAf0i/V3pm1CVRpdwuMBUwzm6eA5eFTYD//3z240KLGyf8K0labdIWGrImlokfz2aZ2jAnTZf8V6TqlaYFGTc4mLHozpuFpZ1RWwyVGg0Mf8r3M00FdzSCQ4wxqulL2SlQSoI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=silabs.com;
Received: from PH0PR11MB5657.namprd11.prod.outlook.com (2603:10b6:510:ee::19)
 by PH0PR11MB5595.namprd11.prod.outlook.com (2603:10b6:510:e5::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.7; Tue, 11 Jan
 2022 17:15:07 +0000
Received: from PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::d031:da9e:71a:73e4]) by PH0PR11MB5657.namprd11.prod.outlook.com
 ([fe80::d031:da9e:71a:73e4%6]) with mapi id 15.20.4867.012; Tue, 11 Jan 2022
 17:15:07 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 Kalle Valo <kvalo@codeaurora.org>
Subject: [PATCH v9 08/24] wfx: add bus_sdio.c
Date: Tue, 11 Jan 2022 18:14:08 +0100
Message-Id: <20220111171424.862764-9-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN1PR12CA0099.namprd12.prod.outlook.com
 (2603:10b6:802:21::34) To PH0PR11MB5657.namprd11.prod.outlook.com
 (2603:10b6:510:ee::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 36914231-a93f-42f4-55a8-08d9d525ea1e
X-MS-TrafficTypeDiagnostic: PH0PR11MB5595:EE_
X-Microsoft-Antispam-PRVS: <PH0PR11MB5595382ECEF2077F58472C7C93519@PH0PR11MB5595.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2512;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WPs0kDfrgTZ9NsOp7KGNnEsXzwWb0DQSMWplmVeidHXCQ8uYl7NixdvgLbCE0QuNTDnKHggdlVGfGf85fYb+NvC2NM7HT8iGGY/0wkz4culmyPURcyivL8gjih+IYJgL9fUmXjw0Bumb43nGfZHyB943MLfZ4uZwwmtGt5Zb5odx7HiHoS8H7bOINiEh475Y+tMuwa6xOCaLCXSc8AJmrK/EnKapE8MT65FfCuukANKNCDFxtV5cFp9E6MPPGZcpKCdmkl2Po64g/7fqRTEVG6tc00rKomxb//0POd+H71OOZZ2QgP6dvQTXR2CM9x+p0zP1OmkMl84VjHFeW5PqM+gGeIiQ8hjt0AJ1wvS141Kl7+Ts02lysWI9ScIdO27a0knshY6QrfCKs8rwqiIX6oS2NGBVtlXzyJ6UVx/gFuzkUkfJ0OzjUmKq1q7Xj2oORe0nMWmQwn4W5gGvw/malRUD+XSBF6UmgZsIjZRV9K9Mnsmyu/s1wCVWJpwPK/BPqY3278xiV9KLeBXa7VmTNUOCJHsUABlGFXyp7YUO3slMDwIqgxye7gO022ADsFRIevcF7+gfXK3v+TL5TMoi6OywOyx7a6ipy642d980JR5B0ZZIYelpL17LPXgOk+65VBVmGKl88iFXc0Ka6AsbDA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(36756003)(66946007)(6512007)(2906002)(107886003)(66574015)(8936002)(2616005)(7416002)(38100700002)(6506007)(4326008)(66476007)(8676002)(54906003)(6916009)(316002)(66556008)(83380400001)(52116002)(86362001)(186003)(5660300002)(6486002)(508600001)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THBkYTNJc0I1anM1aThYdnVHd0x0ZytMK0pBVThnODB3d01CTVpoVEY3cXVD?=
 =?utf-8?B?aXA2ZU04a1VCVXpDQ2pZZ0NXc0ppT2lYZ0Qvd3RxQmxwUDZCdlZTVmVlZ01s?=
 =?utf-8?B?enc2V1NqUXcvZ2diNGhQRlJSYisrcHd6Q0FlRUdzNlg2SVgrdnFGVGJXZWQw?=
 =?utf-8?B?K1VUL0JrSGxzbzZGUUhKajVkbDFzNEkyaGNMOGlISW1zTkl1Vm9KNVRQQVBi?=
 =?utf-8?B?TkVqWC9zQ3BLRm85NjQzaytUNlFKNFlVL1dkbmNZcFFHUUZzSk5abWwvbVNj?=
 =?utf-8?B?VXdScmVZaXdWSkkwL2IyNk1zdHVkc2lRTHBpY2J4TzhEcnQyM1h0dmx2d09F?=
 =?utf-8?B?Ry9aaWo3dnpWaHZXeVRGQ2Irdk1OSm9pbEQ0UjZQU2RDNm0wT1A2eVJDcUVM?=
 =?utf-8?B?SEttZXROQVhndjd3WXlQdUZ1T0kyamg2emZad05YTllVMXN2WU9RaWZTcDZE?=
 =?utf-8?B?U0hpc3RUcDVHNGhzNWtpMkgzaWJGeGJ2WEVjblF2bkNSVi9wM2JmQm5xbjlL?=
 =?utf-8?B?ZXJNczdrWnh2VnN1TGZoMUhad3F3a2J1azBVakRHa2JpNU1NNmpBVStWWHlw?=
 =?utf-8?B?SkdFRDFhVWttR2t1OExmVHI3cnRiVzFTMnRjSy9ZaWpuMmhCT28xL0tMV0or?=
 =?utf-8?B?bk1OcVFuVEYzVEw5a2t2NkQ3QXh4ZDY4OHF0QzJGSnR5OTlyRXVkRjJiZ3JE?=
 =?utf-8?B?N0lYcmRSaGgycDN2NWdoWjlJRUgyOUV6VUhKN3BrZXhDaGMrZHhsV2lIRWpK?=
 =?utf-8?B?cHZxdk5iZ1AxM2Q1TGF0YVgzQTJTWWpzV1VMV0hXeUozNEFIL1VRdDkyQnpv?=
 =?utf-8?B?Mzk1b2tGa241YnhkNDN3K3doNllVL2owejFlSm4zd29BUEdsTnU1d2JDUHg3?=
 =?utf-8?B?ZHIrWXl2NzJDU0sxVCtmZ0NOWnNZbndJM3owaU90Wm9sRDR2R1pNMXJZeVlW?=
 =?utf-8?B?Qk5ET0tKMTR1RXYxSjJ4S0l3TkJyQ2Y4cVF1SUpVS1JsWjVPUmxQa2ErRllT?=
 =?utf-8?B?RVRhQ09RcTNBZjZqV1Y5eTA1NzBEdjJLVTdKMXR5SFM0SDFLVXRZYWZSa3I1?=
 =?utf-8?B?bml6ckpSdVZ4Vkh6bGRpWXI3cnQ2QWlHRjJIVjVGRXhJZUdoR0ZkUWYvOVd3?=
 =?utf-8?B?LzZLbWZ3OXE3ZGtuRXYzM3paSXR0cFl4Q1U2WFRBTzh6aWdrZkN4YTZZOFQv?=
 =?utf-8?B?UVZ3WWNlaksyRjFYTHJJaWkrWkJzMzhWYUVRYlV4djNKclJtTit4T0EzVG5w?=
 =?utf-8?B?SXgzVkRwaENHZ2pVK1lMcG9jYUxjNGRlZGdaNENGK0dyanl2cnhPNmdGdDIx?=
 =?utf-8?B?ZWtyODA5ZW1DRlNjZCtpU3hqeFllMVg1Y0hqZlA5Mzk3WVNVZEVEM2xycis4?=
 =?utf-8?B?Y0FmamlISFFYZlo0TnhvMkgwWVk5RnFhd2FaOEh5aTRKMis5TGxQQW42RkIy?=
 =?utf-8?B?bHdzdTA1dmlUbFlnbjFieW5RZDhGcUxrQkVMVmNSTis5a0NheHcwNWdKWUtO?=
 =?utf-8?B?SU93MStGRm1SY0duaHZRRU91NllzMmdLdm1oVXhuaGhXSFBpdDZqZlA4VS9h?=
 =?utf-8?B?VkJBYVpRY0xPS2NaUFpiRFhyOHFUUHhzN29Bdm9YTGhlMXZTQ1RNREtGaXgx?=
 =?utf-8?B?YXpON2tmbXYzaXlSb2g2ZjRRVXRpeHFvT21ZOFpLUnhid01FVzZ0YzUwTkxx?=
 =?utf-8?B?Ulp2ckd5UCszNHpNUFMraDlzMjNJWVI0TWdYWFl6V0xnb3l1amg3Ykl0Z2Y4?=
 =?utf-8?B?WVYzUFNjdjYxU1A0LzNqVk54cDdBMlJ2MHpxaTZham5FbzhxdUw4OGJ4S0Zz?=
 =?utf-8?B?RjBOVmdMSWFUNzBkdFFRZVV5QlNjVWtxNDRVcHVjSEdZa2IrSTMycEljQnhD?=
 =?utf-8?B?eWxVNW4vTTQrcjIwejM4akZXQStiVGZjeHBjcC9ET3NCRncxcW1GOUxxcnhZ?=
 =?utf-8?B?T3h1MXlpS09iUEtLdTFDTkNwSnM0RjNYdURCVkZpZlA0eUJaVjAvZW1Ib0hC?=
 =?utf-8?B?NGFpb1paK2YwdWlWN1Zvc3JHb1hsRTZQamJpRncvY0xhU1BDNll2NUlyd2ht?=
 =?utf-8?B?Z0RYT05BZjZJZFgzYTlpTmR4VC85WVllU01BSlg4d3d2NXZ2bTc2ZkNMNWFT?=
 =?utf-8?B?R09peGtQb05jRHdUQktRcytIWkZYZE9RdGkxNlFDZ3RFS1pxTUxiUnpDV056?=
 =?utf-8?B?QWlucEk3WDFSQ2hiTFFGZ1dnYXNPUkowZFMzWjV4RzY5d1htTHdvMDdBTzFC?=
 =?utf-8?Q?I+aK+oZS44zRqRloaXX+in0SL+/K4Xy1HvXv0rBdUk=3D?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36914231-a93f-42f4-55a8-08d9d525ea1e
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2022 17:15:07.0019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: he71OrWnXT8CX8vtILnX1ZPJJztt8+WvEpyMverHSt6fQqr7QCNkCkCewjypc+YSZEzNsQKGx8skAPp3Bmjz6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5595
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2ln
bmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29t
PgotLS0KIGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8uYyB8IDI4MyAr
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyODMgaW5zZXJ0aW9ucygrKQog
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3Nk
aW8uYwoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3Nk
aW8uYyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8uYwpuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLmNlODczYWJlMjc0MAotLS0gL2Rldi9u
dWxsCisrKyBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL3NpbGFicy93ZngvYnVzX3NkaW8uYwpAQCAt
MCwwICsxLDI4MyBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQor
LyoKKyAqIFNESU8gaW50ZXJmYWNlLgorICoKKyAqIENvcHlyaWdodCAoYykgMjAxNy0yMDIwLCBT
aWxpY29uIExhYm9yYXRvcmllcywgSW5jLgorICogQ29weXJpZ2h0IChjKSAyMDEwLCBTVC1Fcmlj
c3NvbgorICovCisjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+CisjaW5jbHVkZSA8bGludXgvbW1j
L3NkaW8uaD4KKyNpbmNsdWRlIDxsaW51eC9tbWMvc2Rpb19mdW5jLmg+CisjaW5jbHVkZSA8bGlu
dXgvbW1jL3NkaW9faWRzLmg+CisjaW5jbHVkZSA8bGludXgvbW1jL2NhcmQuaD4KKyNpbmNsdWRl
IDxsaW51eC9pbnRlcnJ1cHQuaD4KKyNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KKyNpbmNs
dWRlIDxsaW51eC9vZl9pcnEuaD4KKyNpbmNsdWRlIDxsaW51eC9pcnEuaD4KKyNpbmNsdWRlIDxs
aW51eC9hbGlnbi5oPgorCisjaW5jbHVkZSAiYnVzLmgiCisjaW5jbHVkZSAid2Z4LmgiCisjaW5j
bHVkZSAiaHdpby5oIgorI2luY2x1ZGUgIm1haW4uaCIKKyNpbmNsdWRlICJiaC5oIgorCitzdGF0
aWMgY29uc3Qgc3RydWN0IHdmeF9wbGF0Zm9ybV9kYXRhIHBkYXRhX3dmMjAwID0geworCS5maWxl
X2Z3ID0gIndmeC93Zm1fd2YyMDAiLAorCS5maWxlX3BkcyA9ICJ3Zngvd2YyMDAucGRzIiwKK307
CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgd2Z4X3BsYXRmb3JtX2RhdGEgcGRhdGFfYnJkNDAwMWEg
PSB7CisJLmZpbGVfZncgPSAid2Z4L3dmbV93ZjIwMCIsCisJLmZpbGVfcGRzID0gIndmeC9icmQ0
MDAxYS5wZHMiLAorfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCB3ZnhfcGxhdGZvcm1fZGF0YSBw
ZGF0YV9icmQ4MDIyYSA9IHsKKwkuZmlsZV9mdyA9ICJ3Zngvd2ZtX3dmMjAwIiwKKwkuZmlsZV9w
ZHMgPSAid2Z4L2JyZDgwMjJhLnBkcyIsCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IHdmeF9w
bGF0Zm9ybV9kYXRhIHBkYXRhX2JyZDgwMjNhID0geworCS5maWxlX2Z3ID0gIndmeC93Zm1fd2Yy
MDAiLAorCS5maWxlX3BkcyA9ICJ3ZngvYnJkODAyM2EucGRzIiwKK307CisKKy8qIExlZ2FjeSBE
VCBkb24ndCB1c2UgaXQgKi8KK3N0YXRpYyBjb25zdCBzdHJ1Y3Qgd2Z4X3BsYXRmb3JtX2RhdGEg
cGRhdGFfd2Z4X3NkaW8gPSB7CisJLmZpbGVfZncgPSAid2ZtX3dmMjAwIiwKKwkuZmlsZV9wZHMg
PSAid2YyMDAucGRzIiwKK307CisKK3N0cnVjdCB3Znhfc2Rpb19wcml2IHsKKwlzdHJ1Y3Qgc2Rp
b19mdW5jICpmdW5jOworCXN0cnVjdCB3ZnhfZGV2ICpjb3JlOworCXU4IGJ1Zl9pZF90eDsKKwl1
OCBidWZfaWRfcng7CisJaW50IG9mX2lycTsKK307CisKK3N0YXRpYyBpbnQgd2Z4X3NkaW9fY29w
eV9mcm9tX2lvKHZvaWQgKnByaXYsIHVuc2lnbmVkIGludCByZWdfaWQsIHZvaWQgKmRzdCwgc2l6
ZV90IGNvdW50KQoreworCXN0cnVjdCB3Znhfc2Rpb19wcml2ICpidXMgPSBwcml2OworCXVuc2ln
bmVkIGludCBzZGlvX2FkZHIgPSByZWdfaWQgPDwgMjsKKwlpbnQgcmV0OworCisJV0FSTihyZWdf
aWQgPiA3LCAiY2hpcCBvbmx5IGhhcyA3IHJlZ2lzdGVycyIpOworCVdBUk4oIUlTX0FMSUdORUQo
KHVpbnRwdHJfdClkc3QsIDQpLCAidW5hbGlnbmVkIGJ1ZmZlciBhZGRyZXNzIik7CisJV0FSTigh
SVNfQUxJR05FRChjb3VudCwgNCksICJ1bmFsaWduZWQgYnVmZmVyIHNpemUiKTsKKworCS8qIFVz
ZSBxdWV1ZSBtb2RlIGJ1ZmZlcnMgKi8KKwlpZiAocmVnX2lkID09IFdGWF9SRUdfSU5fT1VUX1FV
RVVFKQorCQlzZGlvX2FkZHIgfD0gKGJ1cy0+YnVmX2lkX3J4ICsgMSkgPDwgNzsKKwlyZXQgPSBz
ZGlvX21lbWNweV9mcm9taW8oYnVzLT5mdW5jLCBkc3QsIHNkaW9fYWRkciwgY291bnQpOworCWlm
ICghcmV0ICYmIHJlZ19pZCA9PSBXRlhfUkVHX0lOX09VVF9RVUVVRSkKKwkJYnVzLT5idWZfaWRf
cnggPSAoYnVzLT5idWZfaWRfcnggKyAxKSAlIDQ7CisKKwlyZXR1cm4gcmV0OworfQorCitzdGF0
aWMgaW50IHdmeF9zZGlvX2NvcHlfdG9faW8odm9pZCAqcHJpdiwgdW5zaWduZWQgaW50IHJlZ19p
ZCwgY29uc3Qgdm9pZCAqc3JjLCBzaXplX3QgY291bnQpCit7CisJc3RydWN0IHdmeF9zZGlvX3By
aXYgKmJ1cyA9IHByaXY7CisJdW5zaWduZWQgaW50IHNkaW9fYWRkciA9IHJlZ19pZCA8PCAyOwor
CWludCByZXQ7CisKKwlXQVJOKHJlZ19pZCA+IDcsICJjaGlwIG9ubHkgaGFzIDcgcmVnaXN0ZXJz
Iik7CisJV0FSTighSVNfQUxJR05FRCgodWludHB0cl90KXNyYywgNCksICJ1bmFsaWduZWQgYnVm
ZmVyIGFkZHJlc3MiKTsKKwlXQVJOKCFJU19BTElHTkVEKGNvdW50LCA0KSwgInVuYWxpZ25lZCBi
dWZmZXIgc2l6ZSIpOworCisJLyogVXNlIHF1ZXVlIG1vZGUgYnVmZmVycyAqLworCWlmIChyZWdf
aWQgPT0gV0ZYX1JFR19JTl9PVVRfUVVFVUUpCisJCXNkaW9fYWRkciB8PSBidXMtPmJ1Zl9pZF90
eCA8PCA3OworCS8qIEZJWE1FOiBkaXNjYXJkcyAnY29uc3QnIHF1YWxpZmllciBmb3Igc3JjICov
CisJcmV0ID0gc2Rpb19tZW1jcHlfdG9pbyhidXMtPmZ1bmMsIHNkaW9fYWRkciwgKHZvaWQgKilz
cmMsIGNvdW50KTsKKwlpZiAoIXJldCAmJiByZWdfaWQgPT0gV0ZYX1JFR19JTl9PVVRfUVVFVUUp
CisJCWJ1cy0+YnVmX2lkX3R4ID0gKGJ1cy0+YnVmX2lkX3R4ICsgMSkgJSAzMjsKKworCXJldHVy
biByZXQ7Cit9CisKK3N0YXRpYyB2b2lkIHdmeF9zZGlvX2xvY2sodm9pZCAqcHJpdikKK3sKKwlz
dHJ1Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzID0gcHJpdjsKKworCXNkaW9fY2xhaW1faG9zdChidXMt
PmZ1bmMpOworfQorCitzdGF0aWMgdm9pZCB3Znhfc2Rpb191bmxvY2sodm9pZCAqcHJpdikKK3sK
KwlzdHJ1Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzID0gcHJpdjsKKworCXNkaW9fcmVsZWFzZV9ob3N0
KGJ1cy0+ZnVuYyk7Cit9CisKK3N0YXRpYyB2b2lkIHdmeF9zZGlvX2lycV9oYW5kbGVyKHN0cnVj
dCBzZGlvX2Z1bmMgKmZ1bmMpCit7CisJc3RydWN0IHdmeF9zZGlvX3ByaXYgKmJ1cyA9IHNkaW9f
Z2V0X2RydmRhdGEoZnVuYyk7CisKKwl3ZnhfYmhfcmVxdWVzdF9yeChidXMtPmNvcmUpOworfQor
CitzdGF0aWMgaXJxcmV0dXJuX3Qgd2Z4X3NkaW9faXJxX2hhbmRsZXJfZXh0KGludCBpcnEsIHZv
aWQgKnByaXYpCit7CisJc3RydWN0IHdmeF9zZGlvX3ByaXYgKmJ1cyA9IHByaXY7CisKKwlzZGlv
X2NsYWltX2hvc3QoYnVzLT5mdW5jKTsKKwl3ZnhfYmhfcmVxdWVzdF9yeChidXMtPmNvcmUpOwor
CXNkaW9fcmVsZWFzZV9ob3N0KGJ1cy0+ZnVuYyk7CisJcmV0dXJuIElSUV9IQU5ETEVEOworfQor
CitzdGF0aWMgaW50IHdmeF9zZGlvX2lycV9zdWJzY3JpYmUodm9pZCAqcHJpdikKK3sKKwlzdHJ1
Y3Qgd2Z4X3NkaW9fcHJpdiAqYnVzID0gcHJpdjsKKwl1MzIgZmxhZ3M7CisJaW50IHJldDsKKwl1
OCBjY2NyOworCisJaWYgKCFidXMtPm9mX2lycSkgeworCQlzZGlvX2NsYWltX2hvc3QoYnVzLT5m
dW5jKTsKKwkJcmV0ID0gc2Rpb19jbGFpbV9pcnEoYnVzLT5mdW5jLCB3Znhfc2Rpb19pcnFfaGFu
ZGxlcik7CisJCXNkaW9fcmVsZWFzZV9ob3N0KGJ1cy0+ZnVuYyk7CisJCXJldHVybiByZXQ7CisJ
fQorCisJZmxhZ3MgPSBpcnFfZ2V0X3RyaWdnZXJfdHlwZShidXMtPm9mX2lycSk7CisJaWYgKCFm
bGFncykKKwkJZmxhZ3MgPSBJUlFGX1RSSUdHRVJfSElHSDsKKwlmbGFncyB8PSBJUlFGX09ORVNI
T1Q7CisJcmV0ID0gZGV2bV9yZXF1ZXN0X3RocmVhZGVkX2lycSgmYnVzLT5mdW5jLT5kZXYsIGJ1
cy0+b2ZfaXJxLCBOVUxMLAorCQkJCQl3Znhfc2Rpb19pcnFfaGFuZGxlcl9leHQsIGZsYWdzLCAi
d2Z4IiwgYnVzKTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCXNkaW9fY2xhaW1faG9zdChi
dXMtPmZ1bmMpOworCWNjY3IgPSBzZGlvX2YwX3JlYWRiKGJ1cy0+ZnVuYywgU0RJT19DQ0NSX0lF
TngsIE5VTEwpOworCWNjY3IgfD0gQklUKDApOworCWNjY3IgfD0gQklUKGJ1cy0+ZnVuYy0+bnVt
KTsKKwlzZGlvX2YwX3dyaXRlYihidXMtPmZ1bmMsIGNjY3IsIFNESU9fQ0NDUl9JRU54LCBOVUxM
KTsKKwlzZGlvX3JlbGVhc2VfaG9zdChidXMtPmZ1bmMpOworCXJldHVybiAwOworfQorCitzdGF0
aWMgaW50IHdmeF9zZGlvX2lycV91bnN1YnNjcmliZSh2b2lkICpwcml2KQoreworCXN0cnVjdCB3
Znhfc2Rpb19wcml2ICpidXMgPSBwcml2OworCWludCByZXQ7CisKKwlpZiAoYnVzLT5vZl9pcnEp
CisJCWRldm1fZnJlZV9pcnEoJmJ1cy0+ZnVuYy0+ZGV2LCBidXMtPm9mX2lycSwgYnVzKTsKKwlz
ZGlvX2NsYWltX2hvc3QoYnVzLT5mdW5jKTsKKwlyZXQgPSBzZGlvX3JlbGVhc2VfaXJxKGJ1cy0+
ZnVuYyk7CisJc2Rpb19yZWxlYXNlX2hvc3QoYnVzLT5mdW5jKTsKKwlyZXR1cm4gcmV0OworfQor
CitzdGF0aWMgc2l6ZV90IHdmeF9zZGlvX2FsaWduX3NpemUodm9pZCAqcHJpdiwgc2l6ZV90IHNp
emUpCit7CisJc3RydWN0IHdmeF9zZGlvX3ByaXYgKmJ1cyA9IHByaXY7CisKKwlyZXR1cm4gc2Rp
b19hbGlnbl9zaXplKGJ1cy0+ZnVuYywgc2l6ZSk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3Qg
d2Z4X2h3YnVzX29wcyB3Znhfc2Rpb19od2J1c19vcHMgPSB7CisJLmNvcHlfZnJvbV9pbyAgICA9
IHdmeF9zZGlvX2NvcHlfZnJvbV9pbywKKwkuY29weV90b19pbyAgICAgID0gd2Z4X3NkaW9fY29w
eV90b19pbywKKwkuaXJxX3N1YnNjcmliZSAgID0gd2Z4X3NkaW9faXJxX3N1YnNjcmliZSwKKwku
aXJxX3Vuc3Vic2NyaWJlID0gd2Z4X3NkaW9faXJxX3Vuc3Vic2NyaWJlLAorCS5sb2NrICAgICAg
ICAgICAgPSB3Znhfc2Rpb19sb2NrLAorCS51bmxvY2sgICAgICAgICAgPSB3Znhfc2Rpb191bmxv
Y2ssCisJLmFsaWduX3NpemUgICAgICA9IHdmeF9zZGlvX2FsaWduX3NpemUsCit9OworCitzdGF0
aWMgY29uc3Qgc3RydWN0IG9mX2RldmljZV9pZCB3Znhfc2Rpb19vZl9tYXRjaFtdID0geworCXsg
LmNvbXBhdGlibGUgPSAic2lsYWJzLHdmMjAwIiwgICAgLmRhdGEgPSAmcGRhdGFfd2YyMDAgfSwK
Kwl7IC5jb21wYXRpYmxlID0gInNpbGFicyxicmQ0MDAxYSIsIC5kYXRhID0gJnBkYXRhX2JyZDQw
MDFhIH0sCisJeyAuY29tcGF0aWJsZSA9ICJzaWxhYnMsYnJkODAyMmEiLCAuZGF0YSA9ICZwZGF0
YV9icmQ4MDIyYSB9LAorCXsgLmNvbXBhdGlibGUgPSAic2lsYWJzLGJyZDgwMjNhIiwgLmRhdGEg
PSAmcGRhdGFfYnJkODAyM2EgfSwKKwl7IC5jb21wYXRpYmxlID0gInNpbGFicyx3Zngtc2RpbyIs
IC5kYXRhID0gJnBkYXRhX3dmeF9zZGlvIH0sCisJeyB9LAorfTsKK01PRFVMRV9ERVZJQ0VfVEFC
TEUob2YsIHdmeF9zZGlvX29mX21hdGNoKTsKKworc3RhdGljIGludCB3Znhfc2Rpb19wcm9iZShz
dHJ1Y3Qgc2Rpb19mdW5jICpmdW5jLCBjb25zdCBzdHJ1Y3Qgc2Rpb19kZXZpY2VfaWQgKmlkKQor
eworCWNvbnN0IHN0cnVjdCB3ZnhfcGxhdGZvcm1fZGF0YSAqcGRhdGEgPSBvZl9kZXZpY2VfZ2V0
X21hdGNoX2RhdGEoJmZ1bmMtPmRldik7CisJc3RydWN0IGRldmljZV9ub2RlICpucCA9IGZ1bmMt
PmRldi5vZl9ub2RlOworCXN0cnVjdCB3Znhfc2Rpb19wcml2ICpidXM7CisJaW50IHJldDsKKwor
CWlmIChmdW5jLT5udW0gIT0gMSkgeworCQlkZXZfZXJyKCZmdW5jLT5kZXYsICJTRElPIGZ1bmN0
aW9uIG51bWJlciBpcyAlZCB3aGlsZSBpdCBzaG91bGQgYWx3YXlzIGJlIDEgKHVuc3VwcG9ydGVk
IGNoaXA/KVxuIiwKKwkJCWZ1bmMtPm51bSk7CisJCXJldHVybiAtRU5PREVWOworCX0KKworCWlm
ICghcGRhdGEpIHsKKwkJZGV2X3dhcm4oJmZ1bmMtPmRldiwgIm5vIGNvbXBhdGlibGUgZGV2aWNl
IGZvdW5kIGluIERUXG4iKTsKKwkJcmV0dXJuIC1FTk9ERVY7CisJfQorCisJYnVzID0gZGV2bV9r
emFsbG9jKCZmdW5jLT5kZXYsIHNpemVvZigqYnVzKSwgR0ZQX0tFUk5FTCk7CisJaWYgKCFidXMp
CisJCXJldHVybiAtRU5PTUVNOworCisJYnVzLT5mdW5jID0gZnVuYzsKKwlidXMtPm9mX2lycSA9
IGlycV9vZl9wYXJzZV9hbmRfbWFwKG5wLCAwKTsKKwlzZGlvX3NldF9kcnZkYXRhKGZ1bmMsIGJ1
cyk7CisJZnVuYy0+Y2FyZC0+cXVpcmtzIHw9IE1NQ19RVUlSS19MRU5JRU5UX0ZOMCB8CisJCQkg
ICAgICBNTUNfUVVJUktfQkxLU1pfRk9SX0JZVEVfTU9ERSB8CisJCQkgICAgICBNTUNfUVVJUktf
QlJPS0VOX0JZVEVfTU9ERV81MTI7CisKKwlzZGlvX2NsYWltX2hvc3QoZnVuYyk7CisJcmV0ID0g
c2Rpb19lbmFibGVfZnVuYyhmdW5jKTsKKwkvKiBCbG9jayBvZiA2NCBieXRlcyBpcyBtb3JlIGVm
ZmljaWVudCB0aGFuIDUxMkIgZm9yIGZyYW1lIHNpemVzIDwgNGsgKi8KKwlzZGlvX3NldF9ibG9j
a19zaXplKGZ1bmMsIDY0KTsKKwlzZGlvX3JlbGVhc2VfaG9zdChmdW5jKTsKKwlpZiAocmV0KQor
CQlyZXR1cm4gcmV0OworCisJYnVzLT5jb3JlID0gd2Z4X2luaXRfY29tbW9uKCZmdW5jLT5kZXYs
IHBkYXRhLCAmd2Z4X3NkaW9faHdidXNfb3BzLCBidXMpOworCWlmICghYnVzLT5jb3JlKSB7CisJ
CXJldCA9IC1FSU87CisJCWdvdG8gc2Rpb19yZWxlYXNlOworCX0KKworCXJldCA9IHdmeF9wcm9i
ZShidXMtPmNvcmUpOworCWlmIChyZXQpCisJCWdvdG8gc2Rpb19yZWxlYXNlOworCisJcmV0dXJu
IDA7CisKK3NkaW9fcmVsZWFzZToKKwlzZGlvX2NsYWltX2hvc3QoZnVuYyk7CisJc2Rpb19kaXNh
YmxlX2Z1bmMoZnVuYyk7CisJc2Rpb19yZWxlYXNlX2hvc3QoZnVuYyk7CisJcmV0dXJuIHJldDsK
K30KKworc3RhdGljIHZvaWQgd2Z4X3NkaW9fcmVtb3ZlKHN0cnVjdCBzZGlvX2Z1bmMgKmZ1bmMp
Cit7CisJc3RydWN0IHdmeF9zZGlvX3ByaXYgKmJ1cyA9IHNkaW9fZ2V0X2RydmRhdGEoZnVuYyk7
CisKKwl3ZnhfcmVsZWFzZShidXMtPmNvcmUpOworCXNkaW9fY2xhaW1faG9zdChmdW5jKTsKKwlz
ZGlvX2Rpc2FibGVfZnVuYyhmdW5jKTsKKwlzZGlvX3JlbGVhc2VfaG9zdChmdW5jKTsKK30KKwor
c3RhdGljIGNvbnN0IHN0cnVjdCBzZGlvX2RldmljZV9pZCB3Znhfc2Rpb19pZHNbXSA9IHsKKwl7
IFNESU9fREVWSUNFKFNESU9fVkVORE9SX0lEX1NJTEFCUywgU0RJT19ERVZJQ0VfSURfU0lMQUJT
X1dGMjAwKSB9LAorCXsgfSwKK307CitNT0RVTEVfREVWSUNFX1RBQkxFKHNkaW8sIHdmeF9zZGlv
X2lkcyk7CisKK3N0cnVjdCBzZGlvX2RyaXZlciB3Znhfc2Rpb19kcml2ZXIgPSB7CisJLm5hbWUg
PSAid2Z4LXNkaW8iLAorCS5pZF90YWJsZSA9IHdmeF9zZGlvX2lkcywKKwkucHJvYmUgPSB3Znhf
c2Rpb19wcm9iZSwKKwkucmVtb3ZlID0gd2Z4X3NkaW9fcmVtb3ZlLAorCS5kcnYgPSB7CisJCS5v
d25lciA9IFRISVNfTU9EVUxFLAorCQkub2ZfbWF0Y2hfdGFibGUgPSB3Znhfc2Rpb19vZl9tYXRj
aCwKKwl9Cit9OwotLSAKMi4zNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
