Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC695A6BC4
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Aug 2022 20:08:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 08E8160FFE;
	Tue, 30 Aug 2022 18:08:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08E8160FFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7iohMVc4PgRt; Tue, 30 Aug 2022 18:08:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A69B260FFB;
	Tue, 30 Aug 2022 18:08:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A69B260FFB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 627CD1BF59A
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 18:08:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CD9640BBE
 for <devel@linuxdriverproject.org>; Tue, 30 Aug 2022 18:08:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3CD9640BBE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QhkentQWfr7x for <devel@linuxdriverproject.org>;
 Tue, 30 Aug 2022 18:08:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 250584024B
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01rlhn2146.outbound.protection.outlook.com [40.95.53.146])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 250584024B
 for <devel@driverdev.osuosl.org>; Tue, 30 Aug 2022 18:08:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R9uDQRL5VtCPbEFON0J1UuxfOWpzLiDnhMpDwZ8BVu/IdTBf1DFkrmY+leS31484Kzk4ktNLvRS6y17QTAqBoUIeS7QhMG3wU4z9GtBG8WGd3eaf45Ll2wEmSqshNelAVpQOOTfMMUjDG+HcDB6bx7Z04ikUPOYGuyjJvg/QtL7gi9CftktNxK2zcBKCwl5CGWDHMtEq0dXEl0xsvgwgq+IVd41FxqIxMCG7/yx+Clbr/Js/9uTekXVVIzDxCk7hkwKmRiii22KVx8i6fmc2Jq3X+6vO0bLIE2CYUGuU9uc7RBMceAXk0SFna/lbEDdWpGiTRIg/N3FIvG3lx+tnLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zhjSLwdK445sPHO/q1NSpdCkTIAvL+N4zhMGTXiUhFc=;
 b=LnTg3LwTGfqEBMJpVJKhyArRU4VbCLNWQf+zgtwS1E22tROy729mRSwWeKyg4ukw6S9Ng4N8yk43oVkWgVUFqm8ShNotfP97gc3n0mqCrlwYEfyLYti4AFcEoguM0B0gZVeebkZY+SA9olWvS23drck9I64jswx51zjIdeDoJMB3Nr+uw766sg/HJqmETSslkDVqHvGAzNklpc+/fcUiP9FM+x3U1eYcc7MkF2RMDlxmkM/hQwFlLsaSLahWORojZLZ84ob+xFZ8d4HkhaCBx5kbhD81pX93ojb2g7Ar8YoMMHUQfgDn5HM9/CEwbYSf36Pm3SNZzjf/3FA7/f5Mew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 35.187.122.58) smtp.rcpttodomain=gmail.com smtp.mailfrom=emerates.ae;
 dmarc=none action=none header.from=emerates.ae; dkim=none (message not
 signed); arc=none (0)
Received: from SG2PR02CA0123.apcprd02.prod.outlook.com (2603:1096:4:188::22)
 by TY0PR04MB6266.apcprd04.prod.outlook.com (2603:1096:400:264::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.15; Tue, 30 Aug
 2022 18:08:26 +0000
Received: from SG2APC01FT0067.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:188:cafe::53) by SG2PR02CA0123.outlook.office365.com
 (2603:1096:4:188::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.21 via Frontend
 Transport; Tue, 30 Aug 2022 18:08:26 +0000
X-MS-Exchange-Authentication-Results: spf=none (sender IP is 35.187.122.58)
 smtp.mailfrom=emerates.ae; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=emerates.ae;
Received-SPF: None (protection.outlook.com: emerates.ae does not designate
 permitted sender hosts)
Received: from mail.prasarana.com.my (58.26.8.158) by
 SG2APC01FT0067.mail.protection.outlook.com (10.13.36.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5588.10 via Frontend Transport; Tue, 30 Aug 2022 18:08:26 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-01.prasarana.com.my (10.128.66.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Wed, 31 Aug 2022 02:08:12 +0800
Received: from User (35.187.122.58) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Wed, 31 Aug 2022 02:07:59 +0800
From: Reem A <reem@emerates.ae>
Subject: Re:
Date: Tue, 30 Aug 2022 18:08:12 +0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <f9e54b46-3a70-46fb-9580-8b8b2c472d9b@MRL-EXH-02.prasarana.com.my>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[35.187.122.58];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[35.187.122.58];domain=User
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cbe45b45-a090-4329-5991-08da8ab2a294
X-MS-TrafficTypeDiagnostic: TY0PR04MB6266:EE_
X-MS-Exchange-AtpMessageProperties: SA|SL
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?hqTDNWhDVYnZzLGsxNRgbpKGqWyWNUO+Utk5Tyc36suX5jHCg1dQJTeK?=
 =?windows-1251?Q?3cK88eZrGUDaWFAiAIzS+EdRfBj91nY+gAbF52ASQpZvJtufKYZpNHAg?=
 =?windows-1251?Q?LgzlmZ1Mxa2CoVkr/ZyPno0jw2gwfI2ml9RhCOoLfgfyj9J/VcyjjXNp?=
 =?windows-1251?Q?wxGxQ4IOlHZqrzlb+olZ8YY29AhDpDyY593EBIYj3Sm1k4e/rfrhGAiW?=
 =?windows-1251?Q?7BApDsDLitOdz8rM4TBSbvZ5tNDxBLbBDGrE31CQ8BK8og4JWrQ5eIPQ?=
 =?windows-1251?Q?DYak9S1wIOawkR16pEWOq+2nYwsShiNxG/tICOto5CCVEA2vTC56QL4W?=
 =?windows-1251?Q?SORpQ4OmjwEX+CnJiEPtfosfR2evgUVhnAUfOyeFEma1BY21at5IyU5P?=
 =?windows-1251?Q?lUno35GcJwbC+3zuXvnguIrXfVertnYsRZNaM+Nblbl4EV2ABpBhmBLm?=
 =?windows-1251?Q?KYRG9snBhZFBrrDwN0W3/nTYnGgqXyWIN2WTrlrsQrKbAVboAyKckL6o?=
 =?windows-1251?Q?yXQgocDNzpcSYyE2CnrviWcRfdRqh2Nuq70owpf2No+rjklvWjKLnz96?=
 =?windows-1251?Q?xAeiBRaH038C10pojeq8NVtNNr+ip6tSe+NQznFr/BazijB2GnG1E1fD?=
 =?windows-1251?Q?Z/C5+XGUyeYMFBctKS08ozEYpuyxITdsMrMIg4n++17VqR4XHAwPnzVp?=
 =?windows-1251?Q?e+korJOJwrCpGSZlTVc3uhJsu8hFE1h37Pzl4jSc9OYYrFIBDnecUj2q?=
 =?windows-1251?Q?XjEdkTy1nt0e2WsLs1GmcZJg9cXzE/dqM+gEjKOtUElCRZDCSB+AS+pJ?=
 =?windows-1251?Q?jJlYG4rx5aI7+oAoklUoh/1LASAs60C6mCOZU3i4RYrE8q/Cfe3HWYNf?=
 =?windows-1251?Q?lC70hB6foUmeaqDTs7RzN69FnqPZSQmuaMlc8oC3NyTET9X4w9s5U4TT?=
 =?windows-1251?Q?Uvb4ClGtNlndEcTl8hEhFQPNVINWaunIhnnPwgnSxkK7GiXlzC1hYof1?=
 =?windows-1251?Q?u4jUbZKiH3QowjADw1JMNijuAnxEaSYpWUbpOoROXvLgBo1m9me98Qed?=
 =?windows-1251?Q?Aan315qFeb/V/J02afI8HACUmMAoirHI7ppKlFzfWNYEuS8p6PFNAWVt?=
 =?windows-1251?Q?pyj2SBbp0cqF66NgnLNPMLK6UCV/CawtDAJ2MsqEeO8/KEa7RGakXiUT?=
 =?windows-1251?Q?AzJQu8/i6cYXodkQnz/1dg1O6FTlIMs2iEI1qv8eYZNM7lYAAUyIDRpS?=
 =?windows-1251?Q?UqooXn2YxC1iS0PP64FfejItLPwBSgR6BzeGYmF12RJwzH9QTwRgn1Pu?=
 =?windows-1251?Q?JW2LaZwTy0ND+RXsy+nYtVv8HLiyzZFLNcaG3Dm+iiqUTv5Y?=
X-Forefront-Antispam-Report: CIP:58.26.8.158; CTRY:BE; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:User; PTR:58.122.187.35.bc.googleusercontent.com; CAT:OSPM;
 SFS:(13230016)(346002)(39860400002)(376002)(136003)(396003)(40470700004)(86362001)(9686003)(109986005)(6666004)(26005)(336012)(31696002)(156005)(31686004)(3480700007)(35950700001)(83380400001)(498600001)(956004)(41300700001)(32650700002)(82740400003)(40480700001)(40460700003)(82310400005)(8676002)(70206006)(36906005)(70586007)(316002)(38500700001)(81166007)(8936002)(7416002)(7116003)(7406005)(7366002)(2906002)(5660300002)(32850700003)(2700400008);
 DIR:OUT; SFP:1023; 
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2022 18:08:26.2164 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cbe45b45-a090-4329-5991-08da8ab2a294
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0; Ip=[58.26.8.158];
 Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT0067.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR04MB6266
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
Reply-To: reem2018@daum.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear Friend,

Good day to you. Apparently this email will be coming to you as a surprise since we have not met before now. My name is Reem E. Al-Hashimi, the Emirates Minister of State for international cooperation and Managing Director of United Arab Emirates (Dubai) World Expo 2020 Committee. I am writing you to know if your would be willing to receive and invest a huge sum on my behalf. This fund is my share of gratification from foreign companies whom I helped during the bidding exercise towards the Dubai World Expo 2020.

As an Arab women  serving as a minister, there is a limit to my personal income and investment level and For this reason, I cannot receive such a huge sum back to my country or in my personal account, so an agreement was reached with the foreign companies to direct the gratifications to an open beneficiary account with a financial institution where it will be possible for me to instruct further transfer of the fund to a third party account for investment purpose which is the reason i contacted you to receive the fund as my partner for investment in your country.

The amount is however, valued at Euro ?47,745,533.00 Million Euro and the financial institution is waiting for my instruction to transfer the funds to any designated account. I have decided to compensate you with 30% of the total amount and you will also get benefit from the investment.


REPLY ONLY TO reem.alhashimi@yandex.com

kind Regards,
Reem B. Al Hashimi
PO Box 899
AbuDhabi, United Arab Emirates
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
