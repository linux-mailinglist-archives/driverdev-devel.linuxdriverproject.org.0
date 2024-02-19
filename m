Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C775585A1F9
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Feb 2024 12:30:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6664740A50;
	Mon, 19 Feb 2024 11:30:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bYsl7j60bwpM; Mon, 19 Feb 2024 11:30:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B1CD40A5F
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3B1CD40A5F;
	Mon, 19 Feb 2024 11:30:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DF911BF370
 for <devel@linuxdriverproject.org>; Mon, 19 Feb 2024 11:30:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B81C81F95
 for <devel@linuxdriverproject.org>; Mon, 19 Feb 2024 11:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RsnXKERZ0eI5 for <devel@linuxdriverproject.org>;
 Mon, 19 Feb 2024 11:30:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.100.153.235;
 helo=gcc02-bl0-obe.outbound.protection.outlook.com;
 envelope-from=bounces+srs=//f32=j4@csosao365.onmicrosoft.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0016381F93
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0016381F93
Received: from GCC02-BL0-obe.outbound.protection.outlook.com
 (mail-bl0gcc02hn2235.outbound.protection.outlook.com [52.100.153.235])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0016381F93
 for <devel@linuxdriverproject.org>; Mon, 19 Feb 2024 11:30:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BGbXUOTTUer9d3qhGpXZ9gpht42/Dibw8DHE2Owsy25dC4EPpKTBZMfBgoXkXsN2WzAwe4r/Nlhga6GR42ZEZworHMPhXfcX0LLN7o1il9X+dW8bPiJDcKUHXMjFXhA23Lb2MEFCjs84SH9KpUzKLohyrT9SgVNEFDRGSMr+cJpDcG947s2/E8IVix1Fac6Jvm/73nwmwPL3X0mAk0FlBRjqkxE5mQNPBxsRf/PwTAvFDgitIci2VDqilpfUJKnXkYgnhB2JYxyRLngbCJQu4Vu23uKCWRXCvirbo3tIyDn82VAQ0NXkdSd3kQCXQ5NmXcIkI0TtoDqOlG8L+ALGtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9NIMxxUsMZJkRfA25odl9UMGVwYyNKLZmHeQxO0+QMk=;
 b=nPBYAY0zUXnRCH434+jxKR+j5WKI341oT5PyC3h6J7WUzkmOgRZ+o/KeicMdzAo9MRFGbtKuSP0x68wePQezxR2Gv82d9zUl/M1iDk86bkbJXfLGThLzUeKfd1T9NahvoCxGpaQXV1n4l0NFFmXH7NtGmV+26hL4PzDObbUJC+UWdHNTncbVxYCcfPi+BNz8rreAPvvOgYDnnGflbUAAPhQvZUGp17O5qhjkiz6gQopwqDn+1feARDAxq97LRuXuHjz1OvpcIww27UuVk7LFS6n4mmzFDHKg5MUSaU35VyQxkj7klfRHHCBX0teEGSe1lP6bvRUFiqdkBbaIyX15uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 149.101.1.116) smtp.rcpttodomain=t-online.de smtp.mailfrom=ownmail.net;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=ownmail.net;
 dkim=none (message not signed); arc=none (0)
Received: from CYXPR09CA0022.namprd09.prod.outlook.com (2603:10b6:930:d4::8)
 by SA0PR09MB6891.namprd09.prod.outlook.com (2603:10b6:806:aa::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.19; Mon, 19 Feb
 2024 11:30:26 +0000
Received: from DS4PEPF0000016F.namprd09.prod.outlook.com
 (2603:10b6:930:d4:cafe::f8) by CYXPR09CA0022.outlook.office365.com
 (2603:10b6:930:d4::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39 via Frontend
 Transport; Mon, 19 Feb 2024 11:30:26 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 149.101.1.116) smtp.mailfrom=ownmail.net; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=ownmail.net;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 ownmail.net discourages use of 149.101.1.116 as permitted sender)
Received: from mail.csosa.gov (149.101.1.116) by
 DS4PEPF0000016F.mail.protection.outlook.com (10.167.18.197) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Mon, 19 Feb 2024 11:30:25 +0000
Received: from ExchHQ01.csosa.gov (10.150.51.85) by ExchHQ01.csosa.gov
 (10.150.51.85) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.28; Mon, 19 Feb
 2024 06:30:13 -0500
Received: from User (10.187.109.64) by ExchHQ01.csosa.gov (10.150.51.85) with
 Microsoft SMTP Server id 15.2.1258.28 via Frontend Transport;
 Mon, 19 Feb 2024 06:29:36 -0500
From: HSBC London Office <jmsbfrn@ownmail.net>
Subject: BANK ALERT ABOUT YOUR FUND  
Date: Mon, 19 Feb 2024 03:30:11 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <83c9bfb6-4de4-4bbe-8534-674ddbf0f26a@ExchHQ01.csosa.gov>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PEPF0000016F:EE_|SA0PR09MB6891:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d3e365c-9e63-4c73-6789-08dc313e2aa9
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?BPOdteaBcSgCRLw11tIqsHfBMXAokTy0e9oAnZDc/B4DGDh+6g9fmxOu?=
 =?windows-1251?Q?ImBg6M8srecw6Ap12YsF7K8JCJTk1zvDrQlipGBzlJVcl1B2hUHBD6Ko?=
 =?windows-1251?Q?JJG0eCFzNd/dBu3qqXcuTz1FlKDf7xaMUhqy0AShqStl6Mlf5YhookMs?=
 =?windows-1251?Q?v3M9a+d/Mab+CIgCxp8cwQ/ALh7BEJABL9nId1RltYVjUvfDgYhClaUi?=
 =?windows-1251?Q?EOQhS5sYbpS2iygF6qiuhNey5cdZNI0GW1IVnm+91MwuKb1JaaPdjt1H?=
 =?windows-1251?Q?sM5x6dvqjvfKHYller1w3WUkOY/QYe2K5cV1s5NLKBJFGUoqViFguxu4?=
 =?windows-1251?Q?MrYV+fW3tLRF9lu4yE35wmtFVw8jScKYi9DxEbXSw8v9C1WCOqmppaqv?=
 =?windows-1251?Q?c08Sq+stSJKKp7E+KVw3y5qD2tahWWVcg3swGxd0inTAaNLmArUoSDM7?=
 =?windows-1251?Q?aHQ8LSsmusimS1FHZGQepAZNGWeamxXm+ResAfSA4jtqyHE907mdAyTe?=
 =?windows-1251?Q?gJDTofSvpdlCjcOmwBcyrWFT6TQkrnV3seM7NUa2Ka2rG1+YuWMQ+N5C?=
 =?windows-1251?Q?wljdO7ho5wYo3E0l18KEBsRtfA2VSmzMxpT5qIVniEYMObVENZix9lVL?=
 =?windows-1251?Q?h2ivcq5LVz3Npy7Y8itvDKxY7fVk0URrSbuvKGjD68FCDpZlTipPFMY8?=
 =?windows-1251?Q?tpi5sTMiV5vOIKGiTEtF8AoEh+wAvP4OToviPTNl0+iE951IOtMUv3EG?=
 =?windows-1251?Q?WlYxtbP6rFnuvRUGKIPYCF0NamrmYxbh5JobpalK/J9n69LmZqDG4B/v?=
 =?windows-1251?Q?stPsnjJgJ5726rZzBaFJ2Sk3iMs8kcmhSsiaSs5VPQa+8fDLylMv+vNK?=
 =?windows-1251?Q?wXuX1aF/rP3cSTAkdsp3b2cgaklh5LUCo46ErJm8DWagaLx1oBB56Hm1?=
 =?windows-1251?Q?WGYOQWF/vsT3YShg6DuIAVAjDHyC+QpDM+9pZFLxWh4iw5JYjkN/Eids?=
 =?windows-1251?Q?nOz8fQkfv4L6d0ivx+BCi/Z0CB2Q4mjZu2LZZ3AOPRCZwU9h1yPHsLIV?=
 =?windows-1251?Q?giqlfDCySFLocLOjReHX9/mzIgd5uHYLFSDFhSaKpzG/qqbUzPekjzCj?=
 =?windows-1251?Q?n3gKOYW7Jklbv475B50xO802DRFPkrQBhPs/W06gWo1E6nf/MU4y3ZuY?=
 =?windows-1251?Q?cVquffExVC8=3D?=
X-Forefront-Antispam-Report: CIP:149.101.1.116; CTRY:US; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:mail.csosa.gov; PTR:InfoDomainNonexistent; CAT:OSPM;
 SFS:(13230031)(32650700005)(35950700004)(40470700004)(17650700003)(2700400011);
 DIR:OUT; SFP:1501; 
X-OriginatorOrg: csosao365.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2024 11:30:25.2152 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d3e365c-9e63-4c73-6789-08dc313e2aa9
X-MS-Exchange-CrossTenant-Id: cee06d03-d4ac-4cc3-8d8c-88a4b0623d59
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=cee06d03-d4ac-4cc3-8d8c-88a4b0623d59; Ip=[149.101.1.116];
 Helo=[mail.csosa.gov]
X-MS-Exchange-CrossTenant-AuthSource: DS4PEPF0000016F.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR09MB6891
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csosao365.onmicrosoft.com; s=selector1-csosao365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9NIMxxUsMZJkRfA25odl9UMGVwYyNKLZmHeQxO0+QMk=;
 b=rpVVZRguQkd6vkdbX6UKNLDk3W/z1tsiUbvXPoaLSd2P3Uqs7GUX1B8MW0n6ccqxmcu+Hx6LqJ5KWFioGJr/uCQTyXtHW7Gop3qVWDrNs2N4mAUeKhdOdc4RaJVLAn4syVg6LnSlbF/7bzVpUqEylFN+NL5L9RFcyzbk9akwO68=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=fail (p=none dis=none)
 header.from=ownmail.net
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=csosao365.onmicrosoft.com
 header.i=@csosao365.onmicrosoft.com header.a=rsa-sha256
 header.s=selector1-csosao365-onmicrosoft-com header.b=rpVVZRgu
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
Reply-To: jrdonley@donley.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

HSBC BANK PLC LONDON.(REGISTERED NO.1026167). 
ADDRESS: 8 CANADA SQUARE, CANARY WHARF, LONDON E14 5HQ, UK.

Attn: Beneficiary,

We write to inform you that Series of meetings that was held with the Secretary General of United Nations,U.S Department of State and Africa Union Organization this ended last week.

During the meeting we discovered that you have not receive your funds due to past corrupt Government Officials who almost held the funds to themselves for their selfish reason, who have taken advantage of your fund all in an attempt to defraud you, which has led to unnecessary delay in releasing the funds to you.

The as stated above has already passed a payment mandate to our bank, to clear all over due Contract funds, Lottery winnings and Inheritance/Investment funds owed to you and other individuals/organizations who have been found not to receive their long overdue payment.

A woman by name (MRS: CINDY MAY A CITIZEN OF USA) contact us with an application stating that you gave her the power of attorney to be the beneficiary of your Outstanding funds. She made us to believe that you are dead and that she is your next of kin. We decided to send you email through this address hoping to find out if what she said is true before we can take any action because of the sensitive nature of the transaction and the amount of money that is involved:

For the immediate release of the sum of $21.5M to you legally as the legal recipient if you are alive and did not authorize Cindy May, you are required to send YOUR FULL NAME, CURRENT ADDRESS, CELL PHONE AND FAX NUMBER if any for onward proceeding on how you are going to receive the said funds legally without any problem either now or in future. Treat as urgent.

Yours Sincerely,

Mr. Noel Quinn
HSBC Chief Executive Officer .
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
