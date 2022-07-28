Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 739615851E1
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jul 2022 16:57:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2950840300;
	Fri, 29 Jul 2022 14:57:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2950840300
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vpdIx0xDZGne; Fri, 29 Jul 2022 14:57:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 979FA402F9;
	Fri, 29 Jul 2022 14:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 979FA402F9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9335D1BF30B
 for <devel@linuxdriverproject.org>; Fri, 29 Jul 2022 14:57:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6936C400C2
 for <devel@linuxdriverproject.org>; Fri, 29 Jul 2022 14:57:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6936C400C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id milZ_8_9rDgj for <devel@linuxdriverproject.org>;
 Fri, 29 Jul 2022 14:57:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0C77540301
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01rlhn2177.outbound.protection.outlook.com [40.95.53.177])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0C77540301
 for <devel@driverdev.osuosl.org>; Fri, 29 Jul 2022 14:57:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B9jwxBkyn18g2pTktf5bKRBWvgbUcPB9X9KFsxEGeELpn4V4DqzVba/ASWcsj7cqnTk91OAhDG/dNZ0PPqJ1VqrFy18ND/Ao+KE3JdCCiRCYKytWKoN4D8mguFsEWo7ZwM9zI4DxQ616dW52AAhZM60KXhypjLAP8zv3D9/+9r6AyNEo3MYkuNGiNs+NQnfSWumhkEoiQTl8mrBYWwj65r+OFD9eu+uVR3b2jPL4/8NVbnNFgy5pGbVN4aD3zi8YVyVnGlXHVIgFlvWG2jb6E0Rpywe1mdZDD1uE+oz1DKD1BTqwbz607k5F+rEx88maZjH7agjYu5Deizr+y0qpxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=an7HwnOTBUt9OI7O4r4LMloEYcSbH+I7Wf0ScaCI12k=;
 b=Def9BbUX0YuC5YTqUFSdo+sokEFAoCVPYMdJ0oMtnDuL5BbWqf+6o8ImTQUpwkGQdeVA/21NnDYhP3w5PnZ5KI/zHgqlWhRIOoW7HGw9uaxd8DVeWa+fftU4VQh447iyPkJ3lwPqwvEQQ8V7PfmVQMIQXQbIbCTWOg+tdv74ewo7DAJBDFnQ7B/khkxpWC6TlFt53iovpyB4yRQhQzRqmLqT33Bu5SItM2/M5tTVmGT1m3Is5m3E570eZSw5IFIZLv8mJuUnqos2e+sZpMDelizIK4jT6njR+qxsfh8Fb7kN5ytER9KTtdCXkzL79uSK0BxW0OZtTyqoH3M5a///1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 91.206.168.51) smtp.rcpttodomain=udl.cat smtp.mailfrom=shilp.co.in;
 dmarc=none action=none header.from=shilp.co.in; dkim=none (message not
 signed); arc=none (0)
Received: from SL2P216CA0097.KORP216.PROD.OUTLOOK.COM (2603:1096:101:3::12) by
 SG2PR04MB2491.apcprd04.prod.outlook.com (2603:1096:4:8::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.21; Fri, 29 Jul 2022 14:57:21 +0000
Received: from PSAAPC01FT061.eop-APC01.prod.protection.outlook.com
 (2603:1096:101:3:cafe::c0) by SL2P216CA0097.outlook.office365.com
 (2603:1096:101:3::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.10 via Frontend
 Transport; Fri, 29 Jul 2022 14:57:21 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 91.206.168.51) smtp.mailfrom=shilp.co.in; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=shilp.co.in;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 shilp.co.in discourages use of 91.206.168.51 as permitted sender)
Received: from mail.prasarana.com.my (58.26.8.159) by
 PSAAPC01FT061.mail.protection.outlook.com (10.13.38.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5482.10 via Frontend Transport; Fri, 29 Jul 2022 14:57:20 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-02.prasarana.com.my (10.128.66.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Fri, 29 Jul 2022 22:56:52 +0800
Received: from User (91.206.168.51) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Fri, 29 Jul 2022 22:56:21 +0800
From: "Ms. Reem E. Al-Hashimi" <account@shilp.co.in>
Subject: Re: Did you received my last email?
Date: Thu, 28 Jul 2022 22:53:52 +0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <59f7fc3e-fd85-4c59-a2f1-5a4d25db6483@MRL-EXH-02.prasarana.com.my>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[91.206.168.51];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[91.206.168.51];domain=User
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2353cf90-ce3c-46d3-2105-08da7172a330
X-MS-TrafficTypeDiagnostic: SG2PR04MB2491:EE_
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?vgNZnkb+Y1UoCn9A9QSFhjD0vm04Au/aahXRwk9cNQOw7iVYWn7Tyszd?=
 =?windows-1251?Q?AXXKEkUU6TSqmM2QJS/zT3ghayaQ5jh7m+0CiAjmx7XH+0uIaWmIWIvv?=
 =?windows-1251?Q?Brz9qNuhOb2aOvKJVzgbWQvuoLkN0TI+CudWNEvdd/KLAiWqKRsEXUwT?=
 =?windows-1251?Q?FPyUDbkFMm6evLHTOGF5x7+KkRxkVN2elYJKfTHKoF3jSMFHo0JJz2Wc?=
 =?windows-1251?Q?qwguv/JIxhvPYfrN1UgCkF8Uff0e02kkJSbxCuaQThfWfyDbzCCKwm7N?=
 =?windows-1251?Q?LC4GIJDqxyI41o30ftA2eJb3B0NbTxoBEihoiiCiFDXN3tMK3lV6Df0i?=
 =?windows-1251?Q?/08dXieEWilJkVuhA8nFf+aSX9fk3i0JvpeI0bzC2qb48Xa4Gf++YnSm?=
 =?windows-1251?Q?sZo0Ty06eeHgGlzmdy7yiRbs2gpmBBuWeQvzNO/HNAWrsYiClza4kVxC?=
 =?windows-1251?Q?7Rght/FusLEIEruvuryD0aud0DM7di3CbQKz4rTxMI229H8R5i4gHILc?=
 =?windows-1251?Q?2a132hgka9jMZsw0TacLTIc3Qx+R0/rlBIRIM4V1fGxUQppFAJ5Bqg3e?=
 =?windows-1251?Q?Qc8SO8ghdLKNrGamybBaqZpt8fP5JD5hCDtK2rAYK7jtLVEFH5IMxc0h?=
 =?windows-1251?Q?EpbXp7ke1OFDsL3ZoB6IlEJ6IITgDhkbz81Ppw3X1qofGqIGaIPz79sG?=
 =?windows-1251?Q?RIZ1UqgAtIw7CMcS9z2WFH6Y4SSGnberQ85CgEOiRpR2Rl3JU61UuP7Z?=
 =?windows-1251?Q?Ow1ISrpiDvIWPAjYGmsrrpYMfDb6HSImllWiR3HAz0Frl6cLrUAkrOH7?=
 =?windows-1251?Q?zKlAtNJw82vQfuH3cOgRyAsW0c0PdQ+Px5QVHg+FzR73FVC8yHa2W6JS?=
 =?windows-1251?Q?BBDkmHxf8CcDOx1odDR0xFdJc477chCqgZ4EFX1DNeM6c3w0QCH5NL/X?=
 =?windows-1251?Q?fobm+vnwaHzhj1s1BlN4XTYIJ8s6cxgP1/j0YKGb+uFZWkOfCeYZREp7?=
 =?windows-1251?Q?0alqNY//ubdvLg12s3JgZ+8Uzp/8LxxssAy8JckGM787Rwg6K+X0pFmR?=
 =?windows-1251?Q?IWRBsbRroPQYq5lBy2DnvLizDEMSXYQ0uwyLD2rUGH5UbmcQsyiGyR0o?=
 =?windows-1251?Q?MMjKxX/FHu8TgDrLEADeGIpSLwsdqebsww0ufXWjCPpp4hOQ1+Kk0hnf?=
 =?windows-1251?Q?QfzSv+9Ve1ca4iuFt5pxzzUz5wmme1W9w528bZLnBHuofwCrPJ99VXk7?=
 =?windows-1251?Q?Qyq0dil2cjP0E3n3GWtFSlXHDEhGE821KUTTiRNaRadtQf3eX+sRFEHk?=
 =?windows-1251?Q?5KS1nw=3D=3D?=
X-Forefront-Antispam-Report: CIP:58.26.8.159; CTRY:AR; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:User; PTR:InfoDomainNonexistent; CAT:OSPM;
 SFS:(13230016)(136003)(396003)(346002)(376002)(39860400002)(40470700004)(46966006)(70586007)(31686004)(35950700001)(156005)(316002)(41300700001)(32850700003)(4270600006)(82310400005)(81166007)(82740400003)(70206006)(8676002)(86362001)(9686003)(7416002)(40480700001)(7366002)(2906002)(40460700003)(558084003)(8936002)(498600001)(31696002)(7406005)(26005)(47076005)(5660300002)(6666004)(956004)(336012)(109986005)(2700400008);
 DIR:OUT; SFP:1023; 
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2022 14:57:20.1741 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2353cf90-ce3c-46d3-2105-08da7172a330
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0; Ip=[58.26.8.159];
 Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: PSAAPC01FT061.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR04MB2491
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
Reply-To: hashimirrr22@kakao.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If you can handle the funds in a good investment ?

Regards,
Ms. Reem  Al-hashimi
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
