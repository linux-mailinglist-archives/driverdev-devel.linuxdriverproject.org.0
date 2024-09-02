Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D9C9687BA
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Sep 2024 14:42:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 43B4160801;
	Mon,  2 Sep 2024 12:42:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aXo17IdJoRUL; Mon,  2 Sep 2024 12:42:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61C9560813
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61C9560813;
	Mon,  2 Sep 2024 12:42:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A25111BF40F
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2024 12:42:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8E91240260
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2024 12:42:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wsRyDY-JVxUx for <devel@linuxdriverproject.org>;
 Mon,  2 Sep 2024 12:42:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a01:111:f403:d918::1;
 helo=ch1pr09cu001.outbound.protection.outlook.com;
 envelope-from=bounces+srs=qsvhd=qa@salud.pr.gov; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org DAE2C40216
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DAE2C40216
Received: from CH1PR09CU001.outbound.protection.outlook.com
 (mail-northcentralusazhn150110001.outbound.protection.outlook.com
 [IPv6:2a01:111:f403:d918::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DAE2C40216
 for <devel@linuxdriverproject.org>; Mon,  2 Sep 2024 12:42:11 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HmXqq5NckQziIOo5baWhCo05WiaSJJtzvy5IwTRwR6c41+n+mgyIYMaQHEJJUOKtIsozvQXmZ/3PVArWdPXL1D5IuxcZEZ5IeI0WR+YRcVtK4MO2rtaTf8lHGeGMixEbkEMh6TM94Q+WDV8HR74WMohHbDmVPykxb4w3yoHTiBCyhAcjsvnBW5hsOjzEMfzwgR0x3Xcso4gqW9Lq0zd8Qmq8t67Omqj6ffwDLFfrvv3k3/Mdwd8GdSKyjs/yLdN8zaK96BD2haVfWBKGICEzyePrGFJLOsOUhjcvIdee59JfmQo/ebQN7fmJdFmFWd5Y+VSLCStMMxp2ZOmLsRvY9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3fHVe/egpCbLlen/76JM67py9SQ/eZ/yiiYHqoMoGdM=;
 b=WqHXDBE+MG9WC0zHE5DPyGx0p99KuWTH5IVZpYqPnQ+bzA0qXdljPr7j7AmrXqG7fARHuk6jozPPNXTCar45bWjQI2RQo1KQN8PWm47nBjd7UN07v+11n3IxN6FIXXBgi/QKFz9m571bDR7C7NN3fFt3bSsk2Bt520u9R8SiN5O3u3Z+G91kK+X/mTbXxMsQyI3os8EO9Cwy/rTleeAz9mg/8rlxgdQt2bbZqmRQTVK+p4n4ZdAInZdfgr+isWFYObdaHpwqgQqqQ/JN8Q9mnWsw2rFc0CT4wo0+WmtcTufHxpe/4xtB2R1BdvDl4qjET6rbW3SHV+bQPpPv2xB6sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 200.5.3.153) smtp.rcpttodomain=swbell.net
 smtp.mailfrom=capacityproviders.com; dmarc=none action=none
 header.from=capacityproviders.com; dkim=none (message not signed); arc=none
 (0)
Received: from BL0PR0901CA0029.namprd09.prod.outlook.com
 (2603:10b6:208:1c0::39) by SA1PR09MB10937.namprd09.prod.outlook.com
 (2603:10b6:806:368::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 2 Sep
 2024 12:42:01 +0000
Received: from DS4PEPF00000170.namprd09.prod.outlook.com
 (2603:10b6:208:1c0:cafe::80) by BL0PR0901CA0029.outlook.office365.com
 (2603:10b6:208:1c0::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25 via Frontend
 Transport; Mon, 2 Sep 2024 12:42:01 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 200.5.3.153)
 smtp.mailfrom=capacityproviders.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=capacityproviders.com;
Received-SPF: Fail (protection.outlook.com: domain of capacityproviders.com
 does not designate 200.5.3.153 as permitted sender)
 receiver=protection.outlook.com; client-ip=200.5.3.153;
 helo=mail.asem.pr.gov;
Received: from mail.asem.pr.gov (200.5.3.153) by
 DS4PEPF00000170.mail.protection.outlook.com (10.167.18.196) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.13 via Frontend Transport; Mon, 2 Sep 2024 12:42:01 +0000
Received: from AEX01V170.asem.org (10.12.31.170) by AEX01V170.asem.org
 (10.12.31.170) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.28; Mon, 2 Sep
 2024 08:41:39 -0400
Received: from User (10.12.31.254) by aex01v170.asem.org (10.12.31.170) with
 Microsoft SMTP Server id 15.2.1258.28 via Frontend Transport; Mon, 2 Sep 2024
 08:41:35 -0400
From: Lee Shau-Kee <support@capacityproviders.com>
Subject: [EXTERNAL]Charity Support/Donation
Date: Mon, 2 Sep 2024 14:41:39 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <f14cf369-2986-40f0-8717-c2168a2cea6b@AEX01V170.asem.org>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PEPF00000170:EE_|SA1PR09MB10937:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c0b71ee-d649-4b19-1707-08dccb4ca452
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 0
X-Forefront-Antispam-Report: CIP:200.5.3.153; CTRY:PR; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:mail.asem.pr.gov; PTR:InfoDomainNonexistent; CAT:OSPM;
 SFS:(13230040)(35950700016)(32650700017)(7416014)(82310400026)(61400799027)(23876020);
 DIR:OUT; SFP:1501; 
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|35950700016|32650700017|7416014|82310400026|61400799027|23876020;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?BT5VrmSD+3RbMqF6WoPI4IyTfha5GJXBU0CcvTfoFu7QuPBsOhiEsjqK?=
 =?windows-1251?Q?YvphzeUNjMmurGvZSKuyMFXLZsXKOQptpK8jd85HiqIOc62j6qrZm0PN?=
 =?windows-1251?Q?gFcJPb1TEi1/umJYi2P/2KzidX/ucIUqsUZgWlokQs21tYNM3uOzPy5+?=
 =?windows-1251?Q?1ezK0nYUrUFUX9rJRpkXJ/aUg/Z6EG4w4bgiGGusJLcsnNjHgDqYFj0I?=
 =?windows-1251?Q?8c7XH9rAlbsbF9ChKTprLoEQSBRGIZOU3WQsd57dCrS2tAEbFQi9SX4m?=
 =?windows-1251?Q?/yhkdODGwiO0HlqogR3qYQ+ff3pncdQ/Mot/vOquw4ga0IGyIGPwPC3V?=
 =?windows-1251?Q?b6KaPIC9ki7jDeMaUYJrInTljx6Sy0pHWh3fnkscqf+zuSTeifzBHZ3W?=
 =?windows-1251?Q?Bpx/S+wYfDdnjOxcS75Dy4C0KHLCw4pyv43OXDK8Hcoe2wF4V+eq9aKA?=
 =?windows-1251?Q?WMfsAcK8mFAK1NantGpqLwN8L5Yj/y1MkZp0gYYylxIpP/kaD6sABlhN?=
 =?windows-1251?Q?aPlQ5iTinxEEbqW/HVRzCZ71e1KBZg5EBBQqJhiFn3eVuUvqs9oEP0Tx?=
 =?windows-1251?Q?PocrS72xCQsczum7gNU/M8YjojXJNIuuL7nqNjOOM2eCQJyZhqxTCOfl?=
 =?windows-1251?Q?LUyZjRsJ0g0+ZhKAY5/t7NHr6+iH4lO8llnSHgNvFTIrVp/MMZDNJtWd?=
 =?windows-1251?Q?esOPpqXZ87DM8TRtwMGkppOR3VQm+DOmp5vqKzgSPHyjFj8ZbHdQ2k/S?=
 =?windows-1251?Q?w1sW6wvxzAqPGGN6h0xguDEwrjwENkmu3Vek27/7PFs+u5vaqswgehn4?=
 =?windows-1251?Q?KlBObVi6EAf6GqcAKMft2uOwQK2kvT/T8Iq6UsFPeKjyp+YMxAyzGnU1?=
 =?windows-1251?Q?U/+E6QX55UL87k36S7vi5t+vtcUgdskHdla+aqWIYJ5/fCJ6HjGL5zRk?=
 =?windows-1251?Q?bj/P2QXgKTsWYmK39UTpmYxbtndjc8SC2ibwCWNFw4n2vUjrAqAMGLjr?=
 =?windows-1251?Q?iJ0zVSu1cddB6ipX3ESruHl7S5ia9iZtYD/Tzu2QT6+RHUryeV13zURD?=
 =?windows-1251?Q?nBp3SXspN/zsDB3FsxrUUrfbxnGvfIFdYQjeNL7BmDZRe5+QnudPOoDY?=
 =?windows-1251?Q?UKmJ5Rp95e6nN0vTfrv9/ztQJ67eszcjP9EqcPa+hIRoOWPauDWzbJqI?=
 =?windows-1251?Q?BMRZ2/nkE9ehlzkFzF4+DsSwWQWVQQ/qUAQUij3kBm6P7o1oMGd25Dp8?=
 =?windows-1251?Q?y4WmtbB50fZM5wOZw8ZvHDubLxivI2jclmMANFH18bmemzM2YoFxfFZj?=
 =?windows-1251?Q?81V1NS87hDc9SgtnAP8Dnvh65BNZt1RgYpEnOcE2icmOojazz3tF5YV6?=
 =?windows-1251?Q?FOc+A74M/xzW9w3IqW+8LioI96L3sdqBeERRXCq/CUUGxBJKQfXk7Agq?=
 =?windows-1251?Q?p8KmqOCUwCiUgfsscgykNQ6PV6DpGIJCQtjLlUTYDukeUwteSFhNVTh8?=
 =?windows-1251?Q?OK7EYmuSaItAp4jr5TApVQ6jYTWHC8qvHSNGb5NbcszAs8HvDyXlAHDq?=
 =?windows-1251?Q?73Yw9sp+Wv0sllgqmFZ4cwGbF4UsxTXJVcyfs6lVkF1tfT74aEreT411?=
 =?windows-1251?Q?citpK25brAuaHZU/hiI+JUTOaCkxz3+OMk8jGuk2vn+RyHlBMzceAQ3k?=
 =?windows-1251?Q?Fzq9w6USUwBpCHHQukz7Vzw9ECVjIYOmDDwnM+93mAaNNl4m88I1Cx5O?=
 =?windows-1251?Q?SagxZ3H7XDFnSKNSQHCUTGKlP7fthQ7m6AmI1k05fDYv3zRuqcp4haYV?=
 =?windows-1251?Q?hCoojvezuQ2OC3MBjW3XzWPTdsYrghDUhTvdHhXiPsKyD918mf9TpSYw?=
 =?windows-1251?Q?W2hVHd/mJCi0R5BOy0LuwvOZiF+KmUL1RqADsZ6p52bGIShI9UwnnRV6?=
 =?windows-1251?Q?F/OS9gt8nSYYJIG8Zd6XWpZfJ0HEdGpOVWBLq0D1068ZwWm1FVGPszbq?=
 =?windows-1251?Q?O1LnnLu/SHvB+uRy4o+6KAqPUaokRGRxF3hKB9iHKYieY6vlHgzvcAuj?=
 =?windows-1251?Q?AUXVOiKpZfeTR5Ey?=
X-OriginatorOrg: salud.pr.gov
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2024 12:42:01.1907 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c0b71ee-d649-4b19-1707-08dccb4ca452
X-MS-Exchange-CrossTenant-Id: e906065a-f03e-47ad-a4c4-6b139a08445c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e906065a-f03e-47ad-a4c4-6b139a08445c; Ip=[200.5.3.153];
 Helo=[mail.asem.pr.gov]
X-MS-Exchange-CrossTenant-AuthSource: DS4PEPF00000170.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR09MB10937
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dsdepr.onmicrosoft.com; s=selector2-dsdepr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3fHVe/egpCbLlen/76JM67py9SQ/eZ/yiiYHqoMoGdM=;
 b=QWO6t1dY6EfHIVVEc0DNJx5l7b/XwADVaQJrmm8uwJfB5tKlfBfwz/a6ukPPlSJGi+cDmCfXNniE77wT7ymmeY8h0oNky35rrhpEEKl8Flb7AjzIFuIti0jA3hS9DOzc2SLUsoP5SCjqbbwh0PD07dSQFIkX24pb+TSwQOsgFhA=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=capacityproviders.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=dsdepr.onmicrosoft.com header.i=@dsdepr.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-dsdepr-onmicrosoft-com
 header.b=QWO6t1dY
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
Reply-To: mrleeshuakee@mail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

R3JlZXRpbmdzCgpJIGFtIExlZSBTaGF1LWtlZSwgYSByZXNwZWN0ZWQgYnVzaW5lc3MgbGVhZGVy
IGFuZCBwaGlsYW50aHJvcGlzdCBmcm9tIEhvbmcgS29uZy4gSSBhbSBwbGVhc2VkIHRvIGFubm91
bmNlIHRoYXQgSSBoYXZlIGRlc2lnbmF0ZWQgYSBjaGFyaXRhYmxlIGRvbmF0aW9uIG9mIDIsMDAw
LDAwMC4wMCBVU0QgZm9yIHlvdXIgb3JnYW5pemF0aW9uLiBUbyBkaXNjdXNzIHRoZSBkZXRhaWxz
IGFuZCBhcnJhbmdlbWVudHMgZm9yIHJlY2VpdmluZyB0aGlzIGRvbmF0aW9uLCBjb250YWN0IG15
IG9mZmljZSBhdCB5b3VyIGVhcmxpZXN0IGNvbnZlbmllbmNlLgoKU2luY2VyZWx5LApMZWUgU2hh
dS1rZWUKTk9UQSBERSBDT05GSURFTkNJQUxJREFEOiBMYSBpbmZvcm1hY2nDs24gY29udGVuaWRh
IGVuIGVzdGEgdHJhbnNtaXNpw7NuIGVzdMOhIGRlc3RpbmFkYSDDum5pY2FtZW50ZSBhIGxhcyBw
ZXJzb25hcyBvIGVudGlkYWRlcyBhIGxhIHF1ZSBzZSBkaXJpZ2UuIFB1ZWRlIGNvbnRlbmVyIGlu
Zm9ybWFjacOzbiBwcml2aWxlZ2lhZGEgeSBjb25maWRlbmNpYWwsIGluY2x1aWRhIEluZm9ybWFj
acOzbiBkZSBTYWx1ZCBQcm90ZWdpZGEgKFBISSkuIFNpIHVzdGVkIG5vIGVzIGVsIGRlc3RpbmF0
YXJpbywgc2UgbGUgbm90aWZpY2EgcXVlIGN1YWxxdWllciByZXZpc2nDs24sIGRpZnVzacOzbiwg
ZGlzdHJpYnVjacOzbiBvIGR1cGxpY2FjacOzbiBkZSBlc3RhIGNvbXVuaWNhY2nDs24gZXN0w6Eg
ZXN0cmljdGFtZW50ZSBwcm9oaWJpZGEuIFNpIHJlY2liZSBlc3RhIGNvbXVuaWNhY2nDs24gcG9y
IGVycm9yLCBub3RpZmlxdWUgYWwgcmVtaXRlbnRlIGlubWVkaWF0YW1lbnRlIHkgZGVzdHJ1eWEg
ZXN0ZSBtZW5zYWplLiBDT05GSURFTlRJQUxJVFkgTk9URTogVGhlIGluZm9ybWF0aW9uIGNvbnRh
aW5lZCBpbiB0aGlzIHRyYW5zbWlzc2lvbiBpcyBpbnRlbmRlZCBvbmx5IGZvciB0aGUgcGVyc29u
cyBvciBlbnRpdGllcyB0byB3aGljaCBpdCBpcyBhZGRyZXNzZWQuIEl0IG1heSBjb250YWluIHBy
aXZpbGVnZWQgYW5kIGNvbmZpZGVudGlhbCBpbmZvcm1hdGlvbiwgaW5jbHVkaW5nIFByb3RlY3Rl
ZCBIZWFsdGggSW5mb3JtYXRpb24gKFBISSkuIElmIHlvdSBhcmUgbm90IHRoZSByZWNpcGllbnQs
IHlvdSBhcmUgaGVyZWJ5IG5vdGlmaWVkIHRoYXQgYW55IHJldmlzaW9uLCBkaXNzZW1pbmF0aW9u
LCBkaXN0cmlidXRpb24gb3IgZHVwbGljYXRpb24gb2YgdGhpcyBjb21tdW5pY2F0aW9uIGlzIHN0
cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSByZWNlaXZlIHRoaXMgY29tbXVuaWNhdGlvbiBieSBl
cnJvciwgbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRlc3Ryb3kgdGhpcyBtZXNz
YWdlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZl
bCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVy
ZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2
ZWwK
