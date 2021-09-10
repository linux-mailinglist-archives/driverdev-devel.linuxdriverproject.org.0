Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A935406F00
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 18:08:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BEC1406F3;
	Fri, 10 Sep 2021 16:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cun6qdz_M_cW; Fri, 10 Sep 2021 16:08:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6C30240326;
	Fri, 10 Sep 2021 16:08:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 386141BF2C7
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3250940178
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 16:06:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DsVjKsP9xWfG for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 16:06:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam08on2080.outbound.protection.outlook.com [40.107.102.80])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3AB3240623
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 16:06:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Icf1AXE3DlHc/1pQeEd1GP4m4XcXYHEoiN8K9IijZz9ZrQP9dA+BS7lpmu7JXeu/bF+vckCObKBnujQw679mttFC5zJYzLQaQ7aThCfukrrm7K0ghq1SUaT19hPcUe7kNelum+HwF0ftxteWDT5COsSX4nGdwvejKntrq7jtFsyqx7EvrVoFQ7SvFJ8pi4rkWpUJK5MDAMKglcdLD5jijxwNvsT6DyNhXUk1OtXhBY7m+Oh2UcW98fJeLo2gksrcD0TI6y8nTa4I4GOovZHlIfaLrldubwl12/xQxPKdX+hokXI963CsdQV/gOO9U8WzvzHHjZjuZo4f4ywYYQj0oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=D2RF/Y6vM+Lj63470xCmRdZGPoY4c0kiDfF+JTD4zDA=;
 b=aNh6eV3UlKxpOssD/6lfX66jnwUpfkM5crp/yjEdfv6c1tZnsOwLlYbll3bGPcz8IPwTOsbYBzXK0s0Rsh/VBqSTecyKhTeimw/H7SYb6jIU/N5mDHWdiP6lZi9kw8f++oWb2vnvAnPu7pC8IOQAxQekWZRnYEc7obXRf8+LbrOOFZsbKVWcfnnvKJl6o2DaYnmQdhbuSJNWIF1A8TpyWn7cf8iTekEh2wIgWHKMk+AnbxPKnV2mLa3Lh2R7zt88RK3pKvD/0zsVWihB4+RYK33NRQqqJx7moNHlgsy+hFCYnW3UiS7JHmhNvIAZ+RB6j3luYSrisZhFv1qS9FpxQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D2RF/Y6vM+Lj63470xCmRdZGPoY4c0kiDfF+JTD4zDA=;
 b=md+pdWCvXTbadGJaANDVSL8V74RFPUx9KuBDvIlGKnylTpCit8fIN034o6oBaykZMHFHjjlF/m8lHOSsIYR7G8il5AuNYnnj6ZVuPAV1O8yyclsmwks5ca6gw8TIY+FZhdEDjkOfdRhuI7H1qJ1Qjdo3+RUqES9OkYvmZceqK+M=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SA0PR11MB4592.namprd11.prod.outlook.com (2603:10b6:806:98::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.17; Fri, 10 Sep
 2021 16:06:07 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 16:06:07 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH 18/31] staging: wfx: reorder function for slightly better eye
 candy
Date: Fri, 10 Sep 2021 18:04:51 +0200
Message-Id: <20210910160504.1794332-19-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
References: <20210910160504.1794332-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: SN4PR0601CA0006.namprd06.prod.outlook.com
 (2603:10b6:803:2f::16) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (2a01:e34:ecb5:66a0:9876:e1d7:65be:d294) by
 SN4PR0601CA0006.namprd06.prod.outlook.com (2603:10b6:803:2f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.15 via Frontend
 Transport; Fri, 10 Sep 2021 16:06:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea30b75f-3db9-434e-50f5-08d97474e59e
X-MS-TrafficTypeDiagnostic: SA0PR11MB4592:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SA0PR11MB459247FD19C5200492D153F593D69@SA0PR11MB4592.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:483;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M604ZMDTbZzQoR4+okgpQpHe9Z/r18qV3bvyOcwvQHPNpqLTaG3itl6wbIUTJ0ricgOYDy18KiAUVFGT+ZYgKpIeUiqi8WjM+QQ37i+7UcKGzhpkUWpO9wRdAzIME2c5CRQRQzts5l60YtwJ6RWILivlk18OuSR8/cfFD2jvJa/R6OXEtVkmP7eeetk97vBg6DVuUH+bmJJk9tzwS3+AN3QE0kK25yPTBtM2i+KfSZRM37XujBklufRd1zOIne89XO/9Do7J16ef6xGTSI0lNknKaCNgO19I5XkzZumL0rNRFp+MFbDOxyOyzeBoa/rcdSmYlvnWwU0/I7NAH/WbVqxucl9NWLn5pdXWD3cnKYTkEsvMySHO86/RwJfxQQFGNala4ZTGr7xzFGK1w9i43mvCBGUO4iBF5jp3uQe+c9AHzEUhrfQmoicv7E9EK2/SfYGhiQ3NaAN+Z+4Y5cCU2o2lL61pRQ7259Cnvy98eiMhw98+YNPdvd81IzSas7C9KdZBbDA5eQt0mTFi6clPa4NiUeXCHLIIg6ae6FaoU62t8A/9VW4i081EC8fsYS18YHvUlhT8rWOZAvNa0fytF12+GRgfTIIsH9z0KZMBwAKADgwYv4NQw1QBCMQQJAMlkO7wu7b8awagOYXBuLpT/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(2906002)(66556008)(6666004)(66476007)(316002)(66946007)(83380400001)(8676002)(8936002)(36756003)(86362001)(6486002)(107886003)(7696005)(52116002)(54906003)(2616005)(5660300002)(4326008)(38100700002)(1076003)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGRTMlUzNlRjYmtyTWo2UE5VZkxQaG5LSjB6VWtOVEdvN2JUMkZ5bzhIU3Fx?=
 =?utf-8?B?RzlES1hqSEhQMjBIcmJVeU4wTXU5bUF1SU14YmRmRU1oY0tNRE1ETGN3Z2p4?=
 =?utf-8?B?R3M4c0t3SW84Nm95T25pd01meUVpdnVkOVEwV0NTUjhwajNLQ1J4Q21wcHJB?=
 =?utf-8?B?U3NpTUdBZjZtd2tjS1pITUE3L2I2MnJ4Q1l3L0wvaEU4ZTd4SENrOHF1SEpI?=
 =?utf-8?B?aGRTcVg2dXNRRDV3ZXFreDJWdFNySnNIbTVOUnVkY1Z3c3hLc0dBRWlKV2dJ?=
 =?utf-8?B?YXI3bG1hVThZM3J1SEZwYzYzTjBpVllxWU1xVEdCWTZYazVJUjY0eFJlUHpJ?=
 =?utf-8?B?MmljNHoxTW1RRitINmtVZEQ5Y1VOTmFSTnBlTVIzK2tVTVZmZTRRY1BHcmN3?=
 =?utf-8?B?RnUvMU5MS3dZaklMd1Nxa3pJck51cjhBZ3dmNnMyWnRFWEtrdGg2Qk12cTJk?=
 =?utf-8?B?QmxmSnhGY2VUUlpnRjR1U0xiM1dsNFpzSWlZL1BPdWl5TFlNQmpidFBMa3NO?=
 =?utf-8?B?WDBGYnJQd0hXTjY0SVkzRi9jZHVzdms5eVpYSkg5aEtqdmxuM1lSTHdLL1F2?=
 =?utf-8?B?T0ZZY0hadWVBTk4rRHZoTFZwQk50Ym5oU1BLQmhENjBtQXFCaDd3YllibzlK?=
 =?utf-8?B?aWlnOGlKVEY3MmJHNks0amhreWRuV0xLS0hMOC96ZEJrMy93UDByYTBBZUtv?=
 =?utf-8?B?RFFQTUdQaWdUcGhOQlcyalhvUzluK3Z2YnpuRVJaRUdDNWZXOENnc0x2V3NS?=
 =?utf-8?B?ZGo1UVdheW1CUEJGMWUyQmwybW9HcWJIV2VoN0tRZ3h2UmJCRkdOY2ZiRyt0?=
 =?utf-8?B?UWZaWjFESVlJMmN6ajRMWjRmazFMdzU0Ylp5QTdOeWp2V2h6VURNN2RZMm02?=
 =?utf-8?B?VGZoR1hvVldnMEZXVDk0RWdLVFNXTWs2d1hXYzVhSkNqY2srbklwSVFFamFK?=
 =?utf-8?B?dm9nUUxQSzdQVDY1WFhlZHJDYzROSUtaVEMxd3FSMmJUU21CTm14MEl3ME43?=
 =?utf-8?B?dko5cHRsUFM5SFFnVmpaUTRZQUcyN0V4VERqZHYrWC8rWk9WZWVObklqL2Yv?=
 =?utf-8?B?QnVsc3ZoSUw4VzkwTjVoL2t6WjlOTWxHSmQ4b2NOeUx4OExnMWZBcE95d1py?=
 =?utf-8?B?S3lDVGdLQlFVcmtsTUVqRFBKbTAreXFtaHBPRGgrSzN3aFpPMWIwU3VHVWdT?=
 =?utf-8?B?bk5nbzYrY2tZWHFKcENhdHlKSzQzdmx2eEpFUlBhSEdqQ1QyWU1tRk5PdUVF?=
 =?utf-8?B?SG9HRjA4U2tCZTZXNzNaamlrWTNCaHcyWUQ4STNkL3VHV2ZSYkFuN3E0dmdI?=
 =?utf-8?B?Zm1SRnhiczRhNE1uUS9mdjA5Y3RnL3l6YnJYc1crU2VJYVI2RENaazVBL2l5?=
 =?utf-8?B?dFk0WVlOdWxkZFFhRWFjMkhqMzdJekhRektKU0FmZHpFckJIbXJvQXJEUHhz?=
 =?utf-8?B?MEh4b0JMODFnRlhWZnR6aG5QRk4yeSsrcHJVTDJucmtPcHRVT3p1R0hmajJi?=
 =?utf-8?B?b1pGYUM2MWsvdzdpcFFLOHluSmxKOGxIbHU2bjVScjFaMzR5V3U5SUNwclIz?=
 =?utf-8?B?Yi8wNFR0N25COHU5QnRjRnZpUXRMYlJrRnU3NC9tWllaOE1BOWNXMnpibElt?=
 =?utf-8?B?R3o3SExubENCTUU3RCt1UE1mOUJkbktFRVZzT3lVNTdTTjA3TmhOWTIrK05D?=
 =?utf-8?B?OWdZU3grZnV3QmZNZHBvWFlVMHBJOWNuamNiTGhVeGhGLzRsaUlnaDJRQ09t?=
 =?utf-8?B?Q3J5bUlhVkMxcFFBVFIxZU0wdUdjeEZNSmVwbEdxOWlQc25MZ2g1UHlBeVFo?=
 =?utf-8?B?elFwYnc0dmVHeTI5UXNLSlhtQWdYRVFuTU9lSEVkRkkrUzlKQS96Mkl0eXZN?=
 =?utf-8?Q?jQnjeJPHMNz7G?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea30b75f-3db9-434e-50f5-08d97474e59e
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 16:06:06.9410 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3uWbEVRdG2UCksarqFQLQsPVZ9dQDfy9uunTP1Pzl0GviYKzyOj2utlh2cZTtz/jWFG3xe0lr/OtwWbRqwuZ+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4592
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKRm9y
IGEgY29kZSBtb3JlIGV5ZSBjYW5keSwgZ3JvdXAgYWxsIHRoZSB1bmNvbmRpdGlvbmFsIGFzc2ln
bm1lbnRzCnRvZ2V0aGVyLgoKU2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9t
ZS5wb3VpbGxlckBzaWxhYnMuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy93ZngvZGF0YV90eC5j
IHwgNiArKystLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2RhdGFfdHguYwppbmRleCAwMGMzMDVmMTkyYmIuLjc3ZDY5ZWQ3M2UyOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKKysrIGIvZHJpdmVycy9z
dGFnaW5nL3dmeC9kYXRhX3R4LmMKQEAgLTM3NiwxNSArMzc2LDE1IEBAIHN0YXRpYyBpbnQgd2Z4
X3R4X2lubmVyKHN0cnVjdCB3ZnhfdmlmICp3dmlmLCBzdHJ1Y3QgaWVlZTgwMjExX3N0YSAqc3Rh
LAogCXJlcS0+cGFja2V0X2lkIHw9IHF1ZXVlX2lkIDw8IDI4OwogCiAJcmVxLT5mY19vZmZzZXQg
PSBvZmZzZXQ7Ci0JaWYgKHR4X2luZm8tPmZsYWdzICYgSUVFRTgwMjExX1RYX0NUTF9TRU5EX0FG
VEVSX0RUSU0pCi0JCXJlcS0+YWZ0ZXJfZHRpbSA9IDE7Ci0JcmVxLT5wZWVyX3N0YV9pZCA9IHdm
eF90eF9nZXRfbGlua19pZCh3dmlmLCBzdGEsIGhkcik7CiAJLy8gUXVldWUgaW5kZXggYXJlIGlu
dmVydGVkIGJldHdlZW4gZmlybXdhcmUgYW5kIExpbnV4CiAJcmVxLT5xdWV1ZV9pZCA9IDMgLSBx
dWV1ZV9pZDsKKwlyZXEtPnBlZXJfc3RhX2lkID0gd2Z4X3R4X2dldF9saW5rX2lkKHd2aWYsIHN0
YSwgaGRyKTsKIAlyZXEtPnJldHJ5X3BvbGljeV9pbmRleCA9IHdmeF90eF9nZXRfcmV0cnlfcG9s
aWN5X2lkKHd2aWYsIHR4X2luZm8pOwogCXJlcS0+ZnJhbWVfZm9ybWF0ID0gd2Z4X3R4X2dldF9m
cmFtZV9mb3JtYXQodHhfaW5mbyk7CiAJaWYgKHR4X2luZm8tPmRyaXZlcl9yYXRlc1swXS5mbGFn
cyAmIElFRUU4MDIxMV9UWF9SQ19TSE9SVF9HSSkKIAkJcmVxLT5zaG9ydF9naSA9IDE7CisJaWYg
KHR4X2luZm8tPmZsYWdzICYgSUVFRTgwMjExX1RYX0NUTF9TRU5EX0FGVEVSX0RUSU0pCisJCXJl
cS0+YWZ0ZXJfZHRpbSA9IDE7CiAKIAkvLyBBdXhpbGlhcnkgb3BlcmF0aW9ucwogCXdmeF90eF9x
dWV1ZXNfcHV0KHd2aWYsIHNrYik7Ci0tIAoyLjMzLjAKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
