Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AB8408722
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Sep 2021 10:37:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F08E84026F;
	Mon, 13 Sep 2021 08:37:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZ58rsnX16mx; Mon, 13 Sep 2021 08:37:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 970A5401CA;
	Mon, 13 Sep 2021 08:37:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 52FD51BF389
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:32:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CC48480F92
 for <devel@linuxdriverproject.org>; Mon, 13 Sep 2021 08:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=silabs.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oNlRQ4T1bblf for <devel@linuxdriverproject.org>;
 Mon, 13 Sep 2021 08:32:34 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam08on2061b.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e8c::61b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 20D1480F94
 for <devel@driverdev.osuosl.org>; Mon, 13 Sep 2021 08:32:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ENfmKONPZBu55mzzdTe74ooYvuk7AG3LqN4tSoFcxXc+0sxDCoINWGHl6/6ah1DamLb4aczTEbvoxf94nxro/0EOw3blz4GBOTCt8gDESaooZ6mz1lZsiYdqFqZLc1hWS8J0hAx0pfclfr2m5+sN+IvsHImLkmGtLKyTUzcv7TPSpt/tUl29TI9hSSHQ1XIiTi0MBaqCcXMx0x69X0cHe0H2hmAW1KSWuGc0xynQ8WttuaZXCejV/or1uOOC6GYHZdQnxwLk8dnHTvXk3GIWOntNQJxjNFqM4M6DBPUDVAXOE2D9p06FtBexiLftbPg6hP0iZb47I9+g8AvkT6ozAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=JAmRoT+yqJyVJqFuWU287ozQKOUwlLHdKHeabfJ8CtE=;
 b=F3JzMzASmEuT9eHa/L5VoG0qsqc5YjbV10qZ+yjgjQAgoXDRJJ6oNs/bPy4LNl+Vy9w4kYgtB8f1/BKS14rQB9yhmGNHnE8GGNaY2PYxvjAvYPuCV/0YBsOG8qtj597URfdYmQbG6etWh6kUc13zcMxeaAh9rfZLL7x+JtciOA1q6mU5q23o535L9MAJY/vpi4p1h+rYrnztbkXd00dphZmUuKKvlg8KnrRV+8VLxEBiY0Q7nWdd/9cBfHOSGlP7NvNSlDDvSsvJrDUmtfjSsgcUFah3cUro2iy7HlkjTfVeUN/OFmbkkUVsfzDyaaGaDlFbagInjWmUTDrIqjt1Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=silabs.com; dmarc=pass action=none header.from=silabs.com;
 dkim=pass header.d=silabs.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=silabs.onmicrosoft.com; s=selector2-silabs-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JAmRoT+yqJyVJqFuWU287ozQKOUwlLHdKHeabfJ8CtE=;
 b=khjoKvghstSIj42tkSR2nW4tA0YmcwEHiWYCoXAKRgnMEzB8KPKrLys4nhaH/JmDXN73o3Hqq0Dq+xgcZfQ4dPCkCnl5WnrH10z5J5Xe/5MYaM0v87cGVNZ/zLGHphdWr7C7IX0l/4P0Yuf8fjDWUD71SfNqC8m/PmX/jSrJq4U=
Authentication-Results: driverdev.osuosl.org; dkim=none (message not signed)
 header.d=none;driverdev.osuosl.org; dmarc=none action=none
 header.from=silabs.com;
Received: from SN6PR11MB2718.namprd11.prod.outlook.com (2603:10b6:805:63::18)
 by SN6PR11MB2717.namprd11.prod.outlook.com (2603:10b6:805:60::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 08:32:32 +0000
Received: from SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd]) by SN6PR11MB2718.namprd11.prod.outlook.com
 ([fe80::7050:a0a:415:2ccd%7]) with mapi id 15.20.4500.017; Mon, 13 Sep 2021
 08:32:32 +0000
From: Jerome Pouiller <Jerome.Pouiller@silabs.com>
To: devel@driverdev.osuosl.org,
	linux-wireless@vger.kernel.org
Subject: [PATCH v2 32/33] staging: wfx: ensure IRQ is ready before enabling it
Date: Mon, 13 Sep 2021 10:30:44 +0200
Message-Id: <20210913083045.1881321-33-Jerome.Pouiller@silabs.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210913083045.1881321-1-Jerome.Pouiller@silabs.com>
References: <20210913083045.1881321-1-Jerome.Pouiller@silabs.com>
X-ClientProxiedBy: PAZP264CA0067.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:102:1fd::10) To SN6PR11MB2718.namprd11.prod.outlook.com
 (2603:10b6:805:63::18)
MIME-Version: 1.0
Received: from pc-42.silabs.com (37.71.187.125) by
 PAZP264CA0067.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:1fd::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Mon, 13 Sep 2021 08:32:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8363654b-1e33-49d1-6c37-08d97690f5c3
X-MS-TrafficTypeDiagnostic: SN6PR11MB2717:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <SN6PR11MB2717FF2A6E68C72576D06E2793D99@SN6PR11MB2717.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2582;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mbDcXuRDLE64NzRCBXjXgcuqbpz4HbpYfT1ggagFWwcXk83dSNaJ6h6QlveFbx/LNqjE6pHAdjV+MbGz18wHRFAwFyNxWUV+w6q4lAkMQf1il2VVG/RxZmtU2zpfZOwe/VYmRsCwu5Ncbpnt6UPfhU2aJ+lwlelJBvaTsPfyNiIiTdx3G69plpvFR6F48Pbdzt6qzTPxw2R56DKJllOth12CtoyGqmiTQyxqLEOt4GMNld+1igGwMbFlXPj3nsCzZGQZlAk2nJFVk3WYKed/3uGqAjz4FXwvEZ27rCKe9X/GBtw+ItSFWVfVKaaZesjr9JkZ1w2e6ac1vc52SbSCKTOD5pLXOz4mmGiHFcogHgDOeDcdCwi/XYmETWhBoSfaSeKluIjWzTsda+W1/3JDjtFlEWxZ4Dpu56rqPnAUUCkpsGDQiVnaunYTeBji/Lf67EfqsYZhmS1ucTkHZA/XZqL90KMN0Nw9rzT5BzOpK1xQYCvqkrTSh6wGfEx/jWQkl/hI3zRODHOz6Ep3bm2KBcyVC5Od1B2JT1KKm6iqeTYfq7AkwwEO8dc5LoIPxwG/j4xRgZyTjfY/JkGmEIOR102iw8OXPev+RvYnNLsMEAmSlHake0bc9hUWZqHjj73NZ2MfgCGb6Je4vAiSPkUFqG+GZ9UVcc7hZyAwyPLgD1uBE3MZeOEQwAtu8C0tUTP+l9/XelpPiG65vQJJ3CQVfQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(2906002)(107886003)(26005)(66946007)(38100700002)(52116002)(7696005)(1076003)(956004)(36756003)(316002)(8676002)(38350700002)(186003)(8936002)(83380400001)(54906003)(66556008)(66476007)(508600001)(6486002)(5660300002)(45080400002)(6666004)(86362001)(2616005)(66574015);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZnZDU2hkNlpaT3FnTzJ4OTI0QnM4OHBtZTNGa0xYZlBIaklJLzBjOTJib3Bn?=
 =?utf-8?B?V1Z0OWlmcnJreEExUS81d0E5VEhoR1l0TmlFcWFlT1J4TGlCUWVPUld0UVlY?=
 =?utf-8?B?U3BYSlBuUFhxUjNwdCtyUDN3SGE2MnZ4QWFYaHdBbFlyQTdOaG16YS9xUGZZ?=
 =?utf-8?B?Nnc1a0RFb2todmtSZTF2dHN6dXYyVXVFRU1ocTJ0KzgzMlJPQ0hYeUtOR0xE?=
 =?utf-8?B?T1lDL1JtVHFXd1RocHB6R2JEOEtDUVJBd0FkOVNuTERGWS9PbDJxTnFkS0x2?=
 =?utf-8?B?OGNZNkgvMWd6MnJ2am16eTJFeENtOVAvemNhcGp6akY5REpVdGY1U1UyeXNs?=
 =?utf-8?B?aHhaTmpiZXJRR0paL0htdUdWaW1xNEgxdkQwZGJ5Z1RTOEFKeVpPSk5FZXFt?=
 =?utf-8?B?YUZSSDlQQXJ1c1RWTnRmRTlZWjQ1NHRQdUs1QVY5K1dLQXBPSWdkTlZJeWwy?=
 =?utf-8?B?em5kdVMwdDYxUUQ0S0FoR3p0dzhtSFh4MlBpWFpXQUluYjZPUCtWNUFBekN3?=
 =?utf-8?B?TEVscFVHd3JVZkNxRkU0SFVVVkJ6Q3IrR1lCRlRiUC9rKzh3VkVNK245U2RR?=
 =?utf-8?B?OXpqNEY4L0N6cXUwcXJsdG9TOUM1ejh4NDdVVEUzSW5Zd0RpWTh4S0IwT1JR?=
 =?utf-8?B?N0NDL1QxaVpqOUdlajQ3cWhHSWZRak9SUXBPSjBHUEpQMG1nWUZjMk1RUlVh?=
 =?utf-8?B?RkNVb2xaV2tsZnpWaGllWGphd2xHOXR0bGE2K0ZZaFYycWdSam5CRnRJM0Rj?=
 =?utf-8?B?QVcvcVZzZk5OTnhSSitxQ2xJL2ladW03bWNzdHcycExpb1U4aDFNeUs5WFV5?=
 =?utf-8?B?bjZLSXNHblpQdDU5NEkzZGI1cmJzZUlZYjE0QW1naWdPcm5xUVRUc2ZPbGtY?=
 =?utf-8?B?U0ZFRGVjTW5Sd2hGNVVvRkZHTVo5d1RuUkVlRGd3M1BTcVlyaXdWK3NPK09N?=
 =?utf-8?B?c2JaQWYxRlRVWGZSVWFqMHdyVUROaEFpVVZ4c2Y5MEpIdlFCQlVxdCtoQzlG?=
 =?utf-8?B?TnV1Q1JBRkdKWFRrS05lZFVmNjlabUg4WXcvRFUxcjhtN0s4NEVwbkhBMFdR?=
 =?utf-8?B?UURLRlFtUkN4clMrOTczZ3h3ZDdydlpuNXhJSFM2a3lJTXdSL2x5clk0ZmlK?=
 =?utf-8?B?SlBSVnJyZ0NjaVB6OUdscjE5aVBKWDE3YzhVTjFGNmk2a0ZPYVYzOWMrU0pO?=
 =?utf-8?B?eGhzNEY3Q1daOEdjektkMThDdG5jdE9GcGxGSnJHbGtrWE92anFURlpya01D?=
 =?utf-8?B?dm9KcXB5Nnh4NWZlaGhHQlR0SUZNMEtCcS82aExMQ1ZlR1VaQmlzTlRwOWls?=
 =?utf-8?B?REpGWlpQM0hnTlg5cm1DdTZOZnRYVUY2dnFsaTc4Q25aRlhHVi9LMVlTMURt?=
 =?utf-8?B?VTY4endtZ2U4TzczdUVtQXlQUmFmM21kRTRiUit0Y2xKenJuOVhIUjRaaEdr?=
 =?utf-8?B?dkF5c2pVVzV4UGNZamRCYnVlWFZRbStJRGRFSFN4RForV1Z1ZUZtMmZzVmZl?=
 =?utf-8?B?OGZseWlyZFFTQnNjajRSUjRHT28xSWFSSXFJUTAzSHlVUWJJdk1aV0hlNzNK?=
 =?utf-8?B?RllyQWNNYjJkMzFaUnF5TGY5MlYrdTg2SHgzMDloTElXblBYWG43U0kyKzdR?=
 =?utf-8?B?UE9CY3MvbDQrY1EyYWVQbytZQXE3SVJRMGcyaXdVaVZiM29WK1RLT2tscHMx?=
 =?utf-8?B?VVI1WGo2dXhBTFNVbzlOczF0S3UvN0tSTG1rZk1XMUtaN2xjcTN3NCtQUk1H?=
 =?utf-8?Q?QMtsA3Ud8T6on7p3STJjCACojxYE9XlxVly/9Tx?=
X-OriginatorOrg: silabs.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8363654b-1e33-49d1-6c37-08d97690f5c3
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 08:32:02.2367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 54dbd822-5231-4b20-944d-6f4abcd541fb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8klp4O9AFot+eNfoPFOO1kPpH3IGSEEz5YRatSiT9PAUTJBkYBfe3QiffVVOGaBc8qXB33POea1ki8Xi7s/SpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2717
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

RnJvbTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMuY29tPgoKU2lu
Y2UgY29tbWl0IDU1NjE3NzBmODBiMSAoInN0YWdpbmc6IHdmeDogcmVwYWlyIGV4dGVybmFsIElS
USBmb3IKU0RJTyIpLCB3Znhfc2Rpb19pcnFfc3Vic2NyaWJlKCkgZW5mb3JjZSB0aGUgZGV2aWNl
IHRvIHVzZSBJUlFzLgpIb3dldmVyLCB0aGVyZSBpcyBjdXJyZW50bHkgYSByYWNlIGluIHRoaXMg
Y29kZS4gQW4gSVJRIG1heSBoYXBwZW4KYmVmb3JlIHRoZSBJUlEgaGFzIGJlZW4gcmVnaXN0ZXJl
ZC4KClRoZSBwcm9ibGVtIGhhcyBvYnNlcnZlZCBkdXJpbmcgZGVidWcgc2Vzc2lvbiB3aGVuIHRo
ZSBkZXZpY2UgY3Jhc2hlcwpiZWZvcmUgdGhlIElSUSBzZXQgdXA6CgogICAgWyAxLjU0Nl0gd2Z4
LXNkaW8gbW1jMDowMDAxOjE6IHN0YXJ0ZWQgZmlybXdhcmUgMy4xMi4yICJXRjIwMF9BU0lDX1dG
TV8oSmVua2lucylfRlczLjEyLjIiIChBUEk6IDMuNywga2V5c2V0OiBDMCwgY2FwczogMHgwMDAw
MDAwMikKICAgIFsgMi41NTldIHdmeC1zZGlvIG1tYzA6MDAwMToxOiB0aW1lIG91dCB3aGlsZSBw
b2xsaW5nIGNvbnRyb2wgcmVnaXN0ZXIKICAgIFsgMy41NjVdIHdmeC1zZGlvIG1tYzA6MDAwMTox
OiBjaGlwIGlzIGFibm9ybWFsbHkgbG9uZyB0byBhbnN3ZXIKICAgIFsgNi41NjNdIHdmeC1zZGlv
IG1tYzA6MDAwMToxOiBjaGlwIGRpZCBub3QgYW5zd2VyCiAgICBbIDYuNTY4XSB3Zngtc2RpbyBt
bWMwOjAwMDE6MTogaGFyZHdhcmUgcmVxdWVzdCBDT05GSUdVUkFUSU9OICgweDA5KSBvbiB2aWYg
MiByZXR1cm5lZCBlcnJvciAtMTEwCiAgICBbIDYuNTc3XSB3Zngtc2RpbyBtbWMwOjAwMDE6MTog
UERTIGJ5dGVzIDAgdG8gMTI6IGNoaXAgZGlkbid0IHJlcGx5IChjb3JydXB0ZWQgZmlsZT8pCiAg
ICBbIDYuNTg1XSBVbmFibGUgdG8gaGFuZGxlIGtlcm5lbCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVu
Y2UgYXQgdmlydHVhbCBhZGRyZXNzIDAwMDAwMDAwCiAgICBbIDYuNTkyXSBwZ2QgPSBjMDAwNDAw
MAogICAgWyA2LjU5NV0gWzAwMDAwMDAwXSAqcGdkPTAwMDAwMDAwCiAgICBbIDYuNTk4XSBJbnRl
cm5hbCBlcnJvcjogT29wcyAtIEJVRzogMTcgWyMxXSBUSFVNQjIKICAgIFsgNi42MDNdIE1vZHVs
ZXMgbGlua2VkIGluOgogICAgWyA2LjYwNl0gQ1BVOiAwIFBJRDogMjMgQ29tbToga3dvcmtlci91
MjoxIE5vdCB0YWludGVkIDMuMTguMTkgIzc4CiAgICBbIDYuNjEyXSBXb3JrcXVldWU6IGttbWNk
IG1tY19yZXNjYW4KICAgIFsgNi42MTZdIHRhc2s6IGMxNzZkMTAwIHRpOiBjMGU1MDAwMCB0YXNr
LnRpOiBjMGU1MDAwMAogICAgWyA2LjYyMV0gUEMgaXMgYXQgd2FrZV91cF9wcm9jZXNzKzB4YS8w
eDE0CiAgICBbIDYuNjI1XSBMUiBpcyBhdCBzZGlvX2lycSsweDYxLzB4MjUwCiAgICBbIDYuNjI5
XSBwYyA6IFs8YzAwMWU4YWU+XSBsciA6IFs8YzAwZWM1YmQ+XSBwc3I6IDYwMDAwMWIzCiAgICBb
IDYuNjI5XSBzcCA6IGMwZTUxYmQ4IGlwIDogYzBlNTFjYzggZnAgOiAwMDAwMDAwMQogICAgWyA2
LjY0MF0gcjEwOiAwMDAwMDAwMyByOSA6IDAwMDAwMDAwIHI4IDogYzAwMDNjMzQKICAgIFsgNi42
NDRdIHI3IDogYzBlNTFiZDggcjYgOiBjMDAwM2MzMCByNSA6IDAwMDAwMDAxIHI0IDogYzBlNzhj
MDAKICAgIFsgNi42NTFdIHIzIDogMDAwMDAwMDAgcjIgOiAwMDAwMDAwMCByMSA6IDAwMDAwMDAz
IHIwIDogMDAwMDAwMDAKICAgIFsgNi42NTddIEZsYWdzOiBuWkN2IElSUXMgb2ZmIEZJUXMgb24g
TW9kZSBTVkNfMzIgSVNBIFRodW1iIFNlZ21lbnQga2VybmVsCiAgICBbIDYuNjY0XSBDb250cm9s
OiA1MGM1M2M3ZCBUYWJsZTogMTFmZDgwNTkgREFDOiAwMDAwMDAxNQogICAgWyA2LjY3MF0gUHJv
Y2VzcyBrd29ya2VyL3UyOjEgKHBpZDogMjMsIHN0YWNrIGxpbWl0ID0gMHhjMGU1MDFiMCkKICAg
IFsgNi42NzZdIFN0YWNrOiAoMHhjMGU1MWJkOCB0byAweGMwZTUyMDAwKQogICAgWy4uLl0KICAg
IFsgNi45NDldIFs8YzAwMWU4YWU+XSAod2FrZV91cF9wcm9jZXNzKSBmcm9tIFs8YzAwZWM1YmQ+
XSAoc2Rpb19pcnErMHg2MS8weDI1MCkKICAgIFsgNi45NTZdIFs8YzAwZWM1YmQ+XSAoc2Rpb19p
cnEpIGZyb20gWzxjMDAyNTA5OT5dIChoYW5kbGVfaXJxX2V2ZW50X3BlcmNwdSsweDE3LzB4OTIp
CiAgICBbIDYuOTY0XSBbPGMwMDI1MDk5Pl0gKGhhbmRsZV9pcnFfZXZlbnRfcGVyY3B1KSBmcm9t
IFs8YzAwMjUxMmY+XSAoaGFuZGxlX2lycV9ldmVudCsweDFiLzB4MjQpCiAgICBbIDYuOTczXSBb
PGMwMDI1MTJmPl0gKGhhbmRsZV9pcnFfZXZlbnQpIGZyb20gWzxjMDAyNjU3Nz5dIChoYW5kbGVf
bGV2ZWxfaXJxKzB4NWQvMHg3NikKICAgIFsgNi45ODFdIFs8YzAwMjY1Nzc+XSAoaGFuZGxlX2xl
dmVsX2lycSkgZnJvbSBbPGMwMDI0Y2MzPl0gKGdlbmVyaWNfaGFuZGxlX2lycSsweDEzLzB4MWMp
CiAgICBbIDYuOTg5XSBbPGMwMDI0Y2MzPl0gKGdlbmVyaWNfaGFuZGxlX2lycSkgZnJvbSBbPGMw
MDI0ZGQ5Pl0gKF9faGFuZGxlX2RvbWFpbl9pcnErMHgzMS8weDQ4KQogICAgWyA2Ljk5N10gWzxj
MDAyNGRkOT5dIChfX2hhbmRsZV9kb21haW5faXJxKSBmcm9tIFs8YzAwMDgzNTk+XSAob3ZfaGFu
ZGxlX2lycSsweDMxLzB4ZTApCiAgICBbIDcuMDA1XSBbPGMwMDA4MzU5Pl0gKG92X2hhbmRsZV9p
cnEpIGZyb20gWzxjMDAwYWY1Yj5dIChfX2lycV9zdmMrMHgzYi8weDVjKQogICAgWyA3LjAxM10g
RXhjZXB0aW9uIHN0YWNrKDB4YzBlNTFjNjggdG8gMHhjMGU1MWNiMCkKICAgIFsuLi5dCiAgICBb
IDcuMDM4XSBbPGMwMDBhZjViPl0gKF9faXJxX3N2YykgZnJvbSBbPGMwMTc3NWFhPl0gKHdhaXRf
Zm9yX2NvbW1vbisweDllLzB4YzQpCiAgICBbIDcuMDQ1XSBbPGMwMTc3NWFhPl0gKHdhaXRfZm9y
X2NvbW1vbikgZnJvbSBbPGMwMGUxZGMzPl0gKG1tY193YWl0X2Zvcl9yZXErMHg0Yi8weGRjKQog
ICAgWyA3LjA1M10gWzxjMDBlMWRjMz5dIChtbWNfd2FpdF9mb3JfcmVxKSBmcm9tIFs8YzAwZTFl
ODM+XSAobW1jX3dhaXRfZm9yX2NtZCsweDJmLzB4MzQpCiAgICBbIDcuMDYxXSBbPGMwMGUxZTgz
Pl0gKG1tY193YWl0X2Zvcl9jbWQpIGZyb20gWzxjMDBlN2IyYj5dIChtbWNfaW9fcndfZGlyZWN0
X2hvc3QrMHg3MS8weGFjKQogICAgWyA3LjA3MF0gWzxjMDBlN2IyYj5dIChtbWNfaW9fcndfZGly
ZWN0X2hvc3QpIGZyb20gWzxjMDBlOGY3OT5dIChzZGlvX2NsYWltX2lycSsweDZiLzB4MTE2KQog
ICAgWyA3LjA3OF0gWzxjMDBlOGY3OT5dIChzZGlvX2NsYWltX2lycSkgZnJvbSBbPGMwMGQ4NDE1
Pl0gKHdmeF9zZGlvX2lycV9zdWJzY3JpYmUrMHgxOS8weDk0KQogICAgWyA3LjA4Nl0gWzxjMDBk
ODQxNT5dICh3Znhfc2Rpb19pcnFfc3Vic2NyaWJlKSBmcm9tIFs8YzAwZDUyMjk+XSAod2Z4X3By
b2JlKzB4MTg5LzB4MmFjKQogICAgWyA3LjA5NV0gWzxjMDBkNTIyOT5dICh3ZnhfcHJvYmUpIGZy
b20gWzxjMDBkODNiZj5dICh3Znhfc2Rpb19wcm9iZSsweDhmLzB4Y2MpCiAgICBbIDcuMTAyXSBb
PGMwMGQ4M2JmPl0gKHdmeF9zZGlvX3Byb2JlKSBmcm9tIFs8YzAwZTdmYmI+XSAoc2Rpb19idXNf
cHJvYmUrMHg1Zi8weGE4KQogICAgWyA3LjEwOV0gWzxjMDBlN2ZiYj5dIChzZGlvX2J1c19wcm9i
ZSkgZnJvbSBbPGMwMGJlMjI5Pl0gKGRyaXZlcl9wcm9iZV9kZXZpY2UrMHg1OS8weDEzNCkKICAg
IFsgNy4xMThdIFs8YzAwYmUyMjk+XSAoZHJpdmVyX3Byb2JlX2RldmljZSkgZnJvbSBbPGMwMGJk
NGQ3Pl0gKGJ1c19mb3JfZWFjaF9kcnYrMHgzZi8weDRhKQogICAgWyA3LjEyNl0gWzxjMDBiZDRk
Nz5dIChidXNfZm9yX2VhY2hfZHJ2KSBmcm9tIFs8YzAwYmUxYTU+XSAoZGV2aWNlX2F0dGFjaCsw
eDNiLzB4NTIpCiAgICBbIDcuMTM0XSBbPGMwMGJlMWE1Pl0gKGRldmljZV9hdHRhY2gpIGZyb20g
WzxjMDBiZGMyYj5dIChidXNfcHJvYmVfZGV2aWNlKzB4MTcvMHg0YykKICAgIFsgNy4xNDFdIFs8
YzAwYmRjMmI+XSAoYnVzX3Byb2JlX2RldmljZSkgZnJvbSBbPGMwMGJjZDY5Pl0gKGRldmljZV9h
ZGQrMHgyYzUvMHgzMzQpCiAgICBbIDcuMTQ5XSBbPGMwMGJjZDY5Pl0gKGRldmljZV9hZGQpIGZy
b20gWzxjMDBlODBiZj5dIChzZGlvX2FkZF9mdW5jKzB4MjMvMHg0NCkKICAgIFsgNy4xNTZdIFs8
YzAwZTgwYmY+XSAoc2Rpb19hZGRfZnVuYykgZnJvbSBbPGMwMGU3OWViPl0gKG1tY19hdHRhY2hf
c2RpbysweDE4Ny8weDFlYykKICAgIFsgNy4xNjRdIFs8YzAwZTc5ZWI+XSAobW1jX2F0dGFjaF9z
ZGlvKSBmcm9tIFs8YzAwZTMxYmQ+XSAobW1jX3Jlc2NhbisweDE4ZC8weDFmYykKICAgIFsgNy4x
NzJdIFs8YzAwZTMxYmQ+XSAobW1jX3Jlc2NhbikgZnJvbSBbPGMwMDFhMTRmPl0gKHByb2Nlc3Nf
b25lX3dvcmsrMHhkNy8weDE3MCkKICAgIFsgNy4xNzldIFs8YzAwMWExNGY+XSAocHJvY2Vzc19v
bmVfd29yaykgZnJvbSBbPGMwMDFhNTliPl0gKHdvcmtlcl90aHJlYWQrMHgxMDMvMHgxYmMpCiAg
ICBbIDcuMTg3XSBbPGMwMDFhNTliPl0gKHdvcmtlcl90aHJlYWQpIGZyb20gWzxjMDAxYzczMT5d
IChrdGhyZWFkKzB4N2QvMHg5MCkKICAgIFsgNy4xOTRdIFs8YzAwMWM3MzE+XSAoa3RocmVhZCkg
ZnJvbSBbPGMwMDA4Y2UxPl0gKHJldF9mcm9tX2ZvcmsrMHgxMS8weDMwKQogICAgWyA3LjIwMV0g
Q29kZTogMjEwMyBiNTgwIDIyMDAgYWYwMCAoNjgxYikgNDZiZAogICAgWyA3LjIwNl0gLS0tWyBl
bmQgdHJhY2UgM2FiNTBhY2VkNDJlZWRiNCBdLS0tCgpTaWduZWQtb2ZmLWJ5OiBKw6lyw7RtZSBQ
b3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5n
L3dmeC9idXNfc2Rpby5jIHwgMjEgKysrKysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgMTIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMK
aW5kZXggZWI3MGJlZjZiZDZlLi5hNjcwMTc2YmEwNmYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy93ZngvYnVzX3NkaW8uYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2Z4L2J1c19zZGlvLmMK
QEAgLTEyMCwxOSArMTIwLDIyIEBAIHN0YXRpYyBpbnQgd2Z4X3NkaW9faXJxX3N1YnNjcmliZSh2
b2lkICpwcml2KQogCQlyZXR1cm4gcmV0OwogCX0KIAotCXNkaW9fY2xhaW1faG9zdChidXMtPmZ1
bmMpOwotCWNjY3IgPSBzZGlvX2YwX3JlYWRiKGJ1cy0+ZnVuYywgU0RJT19DQ0NSX0lFTngsIE5V
TEwpOwotCWNjY3IgfD0gQklUKDApOwotCWNjY3IgfD0gQklUKGJ1cy0+ZnVuYy0+bnVtKTsKLQlz
ZGlvX2YwX3dyaXRlYihidXMtPmZ1bmMsIGNjY3IsIFNESU9fQ0NDUl9JRU54LCBOVUxMKTsKLQlz
ZGlvX3JlbGVhc2VfaG9zdChidXMtPmZ1bmMpOwogCWZsYWdzID0gaXJxX2dldF90cmlnZ2VyX3R5
cGUoYnVzLT5vZl9pcnEpOwogCWlmICghZmxhZ3MpCiAJCWZsYWdzID0gSVJRRl9UUklHR0VSX0hJ
R0g7CiAJZmxhZ3MgfD0gSVJRRl9PTkVTSE9UOwotCXJldHVybiBkZXZtX3JlcXVlc3RfdGhyZWFk
ZWRfaXJxKCZidXMtPmZ1bmMtPmRldiwgYnVzLT5vZl9pcnEsIE5VTEwsCi0JCQkJCSB3Znhfc2Rp
b19pcnFfaGFuZGxlcl9leHQsIGZsYWdzLAotCQkJCQkgIndmeCIsIGJ1cyk7CisJcmV0ID0gZGV2
bV9yZXF1ZXN0X3RocmVhZGVkX2lycSgmYnVzLT5mdW5jLT5kZXYsIGJ1cy0+b2ZfaXJxLCBOVUxM
LAorCQkJCQl3Znhfc2Rpb19pcnFfaGFuZGxlcl9leHQsIGZsYWdzLAorCQkJCQkid2Z4IiwgYnVz
KTsKKwlpZiAocmV0KQorCQlyZXR1cm4gcmV0OworCXNkaW9fY2xhaW1faG9zdChidXMtPmZ1bmMp
OworCWNjY3IgPSBzZGlvX2YwX3JlYWRiKGJ1cy0+ZnVuYywgU0RJT19DQ0NSX0lFTngsIE5VTEwp
OworCWNjY3IgfD0gQklUKDApOworCWNjY3IgfD0gQklUKGJ1cy0+ZnVuYy0+bnVtKTsKKwlzZGlv
X2YwX3dyaXRlYihidXMtPmZ1bmMsIGNjY3IsIFNESU9fQ0NDUl9JRU54LCBOVUxMKTsKKwlzZGlv
X3JlbGVhc2VfaG9zdChidXMtPmZ1bmMpOworCXJldHVybiAwOwogfQogCiBzdGF0aWMgaW50IHdm
eF9zZGlvX2lycV91bnN1YnNjcmliZSh2b2lkICpwcml2KQotLSAKMi4zMy4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QK
ZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVy
cHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
