Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1178B9668BF
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Aug 2024 20:13:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFD41605E9;
	Fri, 30 Aug 2024 18:13:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IXuhFx468teQ; Fri, 30 Aug 2024 18:13:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0B77613A5
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0B77613A5;
	Fri, 30 Aug 2024 18:13:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 753721BF3DC
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2024 18:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 616EC4044F
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2024 18:13:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gwVnDfeuxS9h for <devel@linuxdriverproject.org>;
 Fri, 30 Aug 2024 18:13:14 +0000 (UTC)
Received-SPF: Temperror (mailfrom) identity=mailfrom;
 client-ip=2a01:111:f403:d90e::;
 helo=sa9pr09cu002.outbound.protection.outlook.com;
 envelope-from=bounces+srs=obr2j=p5@salud.pr.gov; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 81DE740383
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81DE740383
Received: from SA9PR09CU002.outbound.protection.outlook.com
 (mail-southcentralusazhn150100000.outbound.protection.outlook.com
 [IPv6:2a01:111:f403:d90e::])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 81DE740383
 for <devel@linuxdriverproject.org>; Fri, 30 Aug 2024 18:12:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mhGUanYifNzvBUPzWDb//IOrgQsV0QppG+ChMBcHo1MSLBrLEsEG0uuc67fSV5QlQep8PxguFJd+KM33apkh3jk14UeUgaAA9n3pd97hlLyL7aZm4r52zbZvakP+vO1U1hxHFErtQzoQd0utEwqPA4x4YuggmkDviOdhJ3/miLePJ2i3DFT0pgoj9KDc7Jj3pLOaWafdvi4RGJZlrQKNbf2uHDX3nzoaZ1zsVHA8WZ4O0DaePuSw3wNaYOvlujGCDQ4qExoeO+1CbeCoyUbdKHNVXZe7uqXtYiZY99yjmDaXIY8V2UJGXCCs2J3zIvP8TxplsJIZHLIIsX2iUdmfBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3fHVe/egpCbLlen/76JM67py9SQ/eZ/yiiYHqoMoGdM=;
 b=c3tcmhevzULEQGoAOGN2wGog6swpgMldtDT6N+2jWU7K1FAF5e0INF3LQbsKP10VDN7VbnIYJNLb2TobWXrh/E3OixOQpwYYnIB/PwCqo+5HXf74o/30BNuhc+UtIK2U6Vevg+rqI7HuksuFKNR+phMwJQsVDVYK5CrrI8wzpxiRG1gyGHAKmUJat9WAtUEKWyZlffIMJQ0o6Jwjdy2hYbgtdhg0PyIrr993dg9A+lfXt4CUkUcHsIupQGQO19PsdXcK6eZ49C3H5KAstpm/fTkGvJUM7WkBa92Tr9FYVL71vZJsDjGk+MA3Rc0sOpp97mhQIMNb5Ii0maWQ+qH7fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 200.5.3.153) smtp.rcpttodomain=yahoo.com smtp.mailfrom=capacityproviders.com; 
 dmarc=none action=none header.from=capacityproviders.com; dkim=none (message
 not signed); arc=none (0)
Received: from DM6PR09CA0020.namprd09.prod.outlook.com (2603:10b6:5:160::33)
 by MN2PR09MB4763.namprd09.prod.outlook.com (2603:10b6:208:216::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.20; Fri, 30 Aug
 2024 18:12:37 +0000
Received: from DS1PEPF00017E09.namprd09.prod.outlook.com
 (2603:10b6:5:160:cafe::74) by DM6PR09CA0020.outlook.office365.com
 (2603:10b6:5:160::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.21 via Frontend
 Transport; Fri, 30 Aug 2024 18:12:37 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 200.5.3.153)
 smtp.mailfrom=capacityproviders.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=capacityproviders.com;
Received-SPF: Fail (protection.outlook.com: domain of capacityproviders.com
 does not designate 200.5.3.153 as permitted sender)
 receiver=protection.outlook.com; client-ip=200.5.3.153;
 helo=mail.asem.pr.gov;
Received: from mail.asem.pr.gov (200.5.3.153) by
 DS1PEPF00017E09.mail.protection.outlook.com (10.167.18.166) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7918.13 via Frontend Transport; Fri, 30 Aug 2024 18:12:37 +0000
Received: from AEX01V170.asem.org (10.12.31.170) by AEX01V170.asem.org
 (10.12.31.170) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.28; Fri, 30 Aug
 2024 14:12:21 -0400
Received: from User (10.12.31.254) by aex01v170.asem.org (10.12.31.170) with
 Microsoft SMTP Server id 15.2.1258.28 via Frontend Transport; Fri, 30 Aug
 2024 14:12:17 -0400
From: Lee Shau-Kee <support@capacityproviders.com>
Subject: [EXTERNAL]Charity Support/Donation
Date: Fri, 30 Aug 2024 20:12:21 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <cc93befb-d741-454b-9f37-fab4fa2a8f48@AEX01V170.asem.org>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS1PEPF00017E09:EE_|MN2PR09MB4763:EE_
X-MS-Office365-Filtering-Correlation-Id: 62a30e62-6c33-469d-cd7d-08dcc91f5446
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 0
X-Forefront-Antispam-Report: CIP:200.5.3.153; CTRY:PR; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:mail.asem.pr.gov; PTR:InfoDomainNonexistent; CAT:OSPM;
 SFS:(13230040)(32650700017)(35950700016)(61400799027)(7416014)(82310400026)(23876020);
 DIR:OUT; SFP:1501; 
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|32650700017|35950700016|61400799027|7416014|82310400026|23876020;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?RHPe2GlIQ22MVFJX945G5Kv7kd++31Xh8F9kdUOKCB5zk6XDPhBLAsv4?=
 =?windows-1251?Q?kq9bNkForIc1MIfPWX0MBOE1ECmDFWo97fCtMAyrj2spfKAhePC2jVCC?=
 =?windows-1251?Q?njOc+sYmWOei1TA5Lgs70RABUZ7RQ8KJgt8PsTu2pLspZcsoeBhxwDvp?=
 =?windows-1251?Q?51M5ow2wZ1yxe2HfRmf7254z94R8+o6OYYv/8WojW0Zv3AL3N7fRbRK2?=
 =?windows-1251?Q?/5WclypaPybvpdxHoZcq91OEFGFSBBdT2AyRWc4RW/SMM+i3DHuMGPoS?=
 =?windows-1251?Q?lT3XOIyr3Akb6SQjhGGopo2/SlzatiwZ7WOfjZSfwMboZ+pqQoWuhnik?=
 =?windows-1251?Q?AB11M3QIHtiIrZpGe7wqtNMaoEAeLrITL4OjpRWDKf0L/cEhIOOUoE2v?=
 =?windows-1251?Q?yf+jF6qUdF60USZa3FL7bg77ehyttDunjtJfeTiZfQRDLjSjGqIVOl0s?=
 =?windows-1251?Q?Mye2Lq2IVFxFvf5jGtoh++rlZ95c0sZRPo1Qn37xNTVkMGcED+rfWcxO?=
 =?windows-1251?Q?htPEPiaKUKCcAOAAUvuoPif0CTzaIEO5yIlHjWxwKjTnQOptoAB1qqnw?=
 =?windows-1251?Q?JfHe290ko2W9xBZR8JNcK8dkg4Utd24U9TgPNZEWm9EIygnPiE2kKlRV?=
 =?windows-1251?Q?9yPCZT8gOXo3SqJcxiR3dbSYMGbMUfL/M993GLgNQs+G5SpWIaOuYUBB?=
 =?windows-1251?Q?9c9vYWKPsKHwb7q61cNqC4XoHAN/OGhDUK8+ebzLYoXD+2nVypY31zRz?=
 =?windows-1251?Q?+NdzL3/BRTZ2yg8OEQJEHzbfpELtgswNAi4bFU5aKA+WnU1f2wadXLWp?=
 =?windows-1251?Q?zhg4w6EGysxxZSl1ogx7CMucBJKKu5EBV5WyB5wZduwOUU+uYdWuU2QC?=
 =?windows-1251?Q?nD+tXJSOGoQgadQMleOWrOy+JrIoBv9WTe7SPV3vHKfWB6Q3zu8kUxg/?=
 =?windows-1251?Q?kZsHkjCOtPAjMCAeHLZYT39bhyQaMkrmdSOOxrQLn9x4fukY/B+X1Irk?=
 =?windows-1251?Q?Za63Lnxldf/ilDcoAn68lTi7aPUrW2g2GBxRWFqH3cVaLNowovCGuikQ?=
 =?windows-1251?Q?Cp+kLiKyUphv9TrcWv9BCI2Dd+/j3hNZ9Tbh50uGhAyUixF6dmahuKbf?=
 =?windows-1251?Q?RjsxL6UWJEReXN+oipcPAbLNs1DRKMBworMnm6/H1BGfFK+1OQnPlRP9?=
 =?windows-1251?Q?cUEeLOPWDBU1bbp2z626lXtqsgDlI/nBVUq002msJEKSd4PT68uJXsZh?=
 =?windows-1251?Q?CQwxX99QWsIWuhmEwjdeDyqoi6H4YM2UNQGujkWohylSTEw9tmNLn1od?=
 =?windows-1251?Q?UIskRuSmTJJyxTwK/qGulNkoz2dvSSx53uCZ4ZUsmgfDM0fYPBWrORSF?=
 =?windows-1251?Q?SU2xe7tPEScEh3sui9ldb7X2yZPwcvu3jk2mLOJlJiKH/jJMmsZsXL16?=
 =?windows-1251?Q?ohiMApnW+uxU3DXOUlN+7qn3kN7XGbxZm3fqGI8kVIObFSp+QOT30BSm?=
 =?windows-1251?Q?HzY+I7EB7iKcILPhCj//Zc2shRpaVgklFKL0rmniCkJgE44yTpWPX0rc?=
 =?windows-1251?Q?ePUEEdJYlAgQfPf1XqhcZ4Bqe8w1E7gSkSBl9L/ahiMsxdaEyBEQcIi0?=
 =?windows-1251?Q?PZ+cgtGF4UJvXgFpKCZYDqIBBoq3HVZkm1dMBa4Ya8lRjcCp8VeEzKPK?=
 =?windows-1251?Q?ELGA9PFaZI65q9Vw2gfHFBueAo6khMSmUf/P5TkZWuEpfsKmTh1svqhX?=
 =?windows-1251?Q?ReAAI8yw7RSJ+0V810fKG1gEkWYfPVHHbdHeAYs+c/6x7uE5Wi12Z8IP?=
 =?windows-1251?Q?HUStGYDx/39gPrqE7gFkDghNMMFYxPkXpbnD8GMbw5c74YvnWmYqCmP3?=
 =?windows-1251?Q?tRIS5MhLjB9W6lZpo4W7xJVURNH+J73XY5JHsN1RgFn0XDsvkq8MVQjx?=
 =?windows-1251?Q?gKHb7RP5pn6R4kgDX22gi/BdsVTzDgh3dy2mxGfu/TZgkoPqYWyb7WDE?=
 =?windows-1251?Q?4l8m6blNfQIdByjq7BLWQh87csci1gcOCQHHCeoCnkqBOO3ySkBGqPxH?=
 =?windows-1251?Q?dtTZXLZkLg4gdavl?=
X-OriginatorOrg: salud.pr.gov
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2024 18:12:37.2050 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 62a30e62-6c33-469d-cd7d-08dcc91f5446
X-MS-Exchange-CrossTenant-Id: e906065a-f03e-47ad-a4c4-6b139a08445c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e906065a-f03e-47ad-a4c4-6b139a08445c; Ip=[200.5.3.153];
 Helo=[mail.asem.pr.gov]
X-MS-Exchange-CrossTenant-AuthSource: DS1PEPF00017E09.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB4763
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dsdepr.onmicrosoft.com; s=selector2-dsdepr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3fHVe/egpCbLlen/76JM67py9SQ/eZ/yiiYHqoMoGdM=;
 b=mg+CVvSNDtABWzwhAV2lN1KJL1MN17bZLDzk7FUoqi6zRW2MLUTmIDxIp8Y7ChRSxNgG36t1gOKbY/lqlwlLqMmGJ4oAX0M7LpZQhdmnO/Vty/yDKYvhVQGbTHdqZ0KCp2akQm9okguXOtaXxpvhXON1UVhIH0ivGKKEMsEnkU4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=capacityproviders.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=dsdepr.onmicrosoft.com header.i=@dsdepr.onmicrosoft.com
 header.a=rsa-sha256 header.s=selector2-dsdepr-onmicrosoft-com
 header.b=mg+CVvSN
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
