Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C69CF309275
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 07:38:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D664386FFC;
	Sat, 30 Jan 2021 06:38:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mz25etTGir3J; Sat, 30 Jan 2021 06:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2894486A90;
	Sat, 30 Jan 2021 06:38:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 897181BF568
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 06:38:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 864E58731D
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 06:38:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3xICHfe3Sp-F for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 06:38:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from CAN01-TO1-obe.outbound.protection.outlook.com
 (mail-to1can01hn2059.outbound.protection.outlook.com [52.100.146.59])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 44920872FF
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 06:38:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X2+25lGK5z01ZfF4YuJJMaIIS7a/QDVFcSdP2gNSC+DlGkygAX9eGgzMXCqtqKopy23gqbiaM/wdc5WKsWhpBdEFJbbyGfu/wj9hply2hmI4gKSahKzRqkflRQdi1E32r1dfWzTDe9RQ4OoDksahSWA9A35XPZ6E4Pg5QlloWd+sp17626jZU6n6b8BD/cgwZER979qmdbLuVK8ZRtQ57ISXbLt/X4g2AzaTHSEDyV9j/h+YPyNM9hPaoJ2tCHqU29ivYnURtfopRXk6LcTEba/cDLYF17vTgmpIqxEFSQmYZmNQO7E6HXKYtKp3kyWQBj6uMyF5mbkRpcmcG1ESlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nrnORU7YcilFO2hhFPw6d/8LB39SGHEP5JEf4+yYR5o=;
 b=BtKcRoZAgnCocYkh8mStzIRbS6fnxNDbhSfiC2m8RDT8d6Dm5aj4NAjY5lT0y1Ttu09LdnMoOjzaafAOT7+FqPUrtDkNhvcJfGsTxXV7osRulGhtiaqOdIizGiVDPxCI547sKHPeXueBzOSd6gMGXV10CTM6rvfJGHRVXfc/cOMl5eE+t3M5CgJW+mgxCDe9FYrp/dB9puOXahgALN2JltTkL7zmDpUyTWkhcGwsK2ZWscai4U/fZ4+q4ZsTz4M5FhZSpwD+od4bnO7JagXuDlCKEBqc8XC4g6I4Vc+a1z8UJanyUWR4dR7TwvQw0VXf8nUSm4DmwPI6vF8Ceuf8eQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 184.149.63.217) smtp.rcpttodomain=driverdev.osuosl.org
 smtp.mailfrom=portesmilette.com; dmarc=none action=none
 header.from=portesmilette.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=portesmiletteinc.onmicrosoft.com;
 s=selector1-portesmiletteinc-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nrnORU7YcilFO2hhFPw6d/8LB39SGHEP5JEf4+yYR5o=;
 b=Pt8cqiMeg5gHKe39/YqeSjHHV27+5ymPSXHc5f4Pef4vsrWRzCMcKLqkUClu+7J17MapIhiE+Uda8kZe0whz1l5KnMAln9pAlWAYwEYg+LLHUDql4Lo6OUJlZtcr80anHnRLH3nnz/27PJHbhXw1nvpW4aXhIV121RZaEg4cthBNN3iP0Z0Af2cbckrn8OczNiYU6PSGIAdgCW10/awGhu/zWgpBxj4ObEzvPAqu7gOQN61/xNT23FZpjd7Q10jw2dPXM0leATUaUGAdGpAarBExd9aa+k9yrDxe99m6PqyAGsOc/dKmqMBbQXaTDEMY+KM02BIZLzH3qUJUBUcfcQ==
Received: from CH2PR08CA0030.namprd08.prod.outlook.com (2603:10b6:610:5a::40)
 by YTBPR01MB3437.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:1c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.13; Sat, 30 Jan
 2021 06:23:38 +0000
Received: from TO1CAN01FT015.eop-CAN01.prod.protection.outlook.com
 (2603:10b6:610:5a:cafe::86) by CH2PR08CA0030.outlook.office365.com
 (2603:10b6:610:5a::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.17 via Frontend
 Transport; Sat, 30 Jan 2021 06:23:38 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 184.149.63.217) smtp.mailfrom=portesmilette.com; driverdev.osuosl.org;
 dkim=none (message not signed) header.d=none; driverdev.osuosl.org; dmarc=none
 action=none header.from=portesmilette.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 portesmilette.com discourages use of 184.149.63.217 as permitted sender)
Received: from DC2020.portesmilette.com (184.149.63.217) by
 TO1CAN01FT015.mail.protection.outlook.com (10.152.122.72) with Microsoft SMTP
 Server id 15.20.3784.11 via Frontend Transport; Sat, 30 Jan 2021 06:23:37
 +0000
Received: from User ([199.101.103.19]) by DC2020.portesmilette.com with
 Microsoft SMTPSVC(10.0.17763.1); Sat, 30 Jan 2021 01:23:22 -0500
From: "Elizabeth C Shroeder"<info@portesmilette.com>
Subject: Private information d
Date: Sat, 30 Jan 2021 01:23:34 -0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <DC2020LSAQV6uPDVniS00000e7f@DC2020.portesmilette.com>
X-OriginalArrivalTime: 30 Jan 2021 06:23:22.0081 (UTC)
 FILETIME=[687F4510:01D6F6D0]
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 178c16e1-1886-497e-520a-08d8c4e79416
X-MS-TrafficTypeDiagnostic: YTBPR01MB3437:
X-Microsoft-Antispam-PRVS: <YTBPR01MB3437C80CB95217B53000A2DA92B89@YTBPR01MB3437.CANPRD01.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?8a+pfEGMP8DKV55PZwhtm1KVJyLgB5nvd6lApFBhpXoUKPnjDEk0v3BG?=
 =?windows-1251?Q?jTg+LdbVCbtUzdO8VmQJ04h+2BoTxQwleIqW/l0+Ibj8XT3wFDW0+kVC?=
 =?windows-1251?Q?6WRL+JoX+ngHtnk2H6ZSRIC7dYQWLF/ByNKG0/HKjxzH75QBtBWFyrpG?=
 =?windows-1251?Q?4OZ5S3e+7Az8F0RoA8KfMrOnWw2vr312s36fpcS/iy8KHEu7gV2iG0Tk?=
 =?windows-1251?Q?l8iO4HFwZ+0SgH6IsnHq8KCq+AqQE0gLlCDO90Em5FU4NrgQXet8qgN2?=
 =?windows-1251?Q?lho+Yqav9vEvGHolsXzudMfh+WANE2VCvC7K/RuvDcFfQgz5FVRdB9nW?=
 =?windows-1251?Q?tYarJh6kK8R3TB2VuKLX5qyuSNtnKe8iYlsK/L7e9q00z6qYxoS4delI?=
 =?windows-1251?Q?mbxHhN+dDYRGaE/rYMEtA/0MopuyRXbqJjbwa1XpAmgRayACNLIGC3pt?=
 =?windows-1251?Q?+3s0evbte9R1QZ6fZHFQ3j7nq+AfkskiLiK0rrNgpgKvMKbeR9MHxRua?=
 =?windows-1251?Q?JHc6GcmTUYaczfzQJUgAlLp3A/UaD0fuappkUQe+RhR1Esi8ERcD22uh?=
 =?windows-1251?Q?fmX3TzgxCoqa2aFx0dpUJRc94kotxsWnh7EdjmkfuvmYHCb2nrG2kyp5?=
 =?windows-1251?Q?7cfOQrkovlRxXEfwqypwznRP1t4AGXQE0uD3SnAGMcaAPZQdunylBnwb?=
 =?windows-1251?Q?BXVKifn/BJaL8w/ViRcy+u2s6/a85i5+9o4AyLoiqQ0cdYpIMhyfjvi3?=
 =?windows-1251?Q?K6amIiMWYRHbqlW6hTCtTf6BXBfnX6urMFW6qE3NXLuq+50S52Lm4geJ?=
 =?windows-1251?Q?OBZKaHPwqtkEoQ9DObRkiNtyUORjHZpY0hvzFUzrqKzlIlDzCduKIY8x?=
 =?windows-1251?Q?IyQ+jdYhkMVm+9CEMYS0cjKSvDffqFP32Xdt551qBIrGbbEyX9+OzFnS?=
 =?windows-1251?Q?drTvVv2KovCgD22rtjnrEcmk43mxrDu5YM2KyasT2aK8uICEFE8lOwRT?=
 =?windows-1251?Q?G0luVkfmOcTNNFv/Wbn0UURumd4K+g=3D=3D?=
X-Forefront-Antispam-Report: CIP:184.149.63.217; CTRY:CA; LANG:en; SCL:6; SRV:;
 IPV:NLI; SFV:SPM; H:DC2020.portesmilette.com;
 PTR:ipagstaticip-afa6a52d-1753-3797-a225-43deffca4f0b.sdsl.bell.ca; CAT:OSPM;
 SFS:(396003)(39860400002)(376002)(346002)(136003)(46966006)(7116003)(70586007)(186003)(26005)(70206006)(2906002)(47076005)(336012)(5660300002)(109986005)(316002)(3480700007)(8936002)(66574015)(83380400001)(36906005)(426003)(508600001)(81166007)(356005)(956004)(2860700004)(8676002)(6666004)(340484013)(82310400003)(82740400003)(5456005);
 DIR:OUT; SFP:1501; 
X-OriginatorOrg: portesmilette.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2021 06:23:37.3585 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 178c16e1-1886-497e-520a-08d8c4e79416
X-MS-Exchange-CrossTenant-Id: 4a02b35e-e720-46a3-b8d9-173d6bcbe131
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=4a02b35e-e720-46a3-b8d9-173d6bcbe131; Ip=[184.149.63.217];
 Helo=[DC2020.portesmilette.com]
X-MS-Exchange-CrossTenant-AuthSource: TO1CAN01FT015.eop-CAN01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YTBPR01MB3437
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
Reply-To: zbthschroder1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My Beloved In God.

Greetings in the name of our lord Jesus Christ. I am Mrs Elizabeth Schroder  from Germany, a widow to late Dr. A. Schroder  l am 51 years old and a converted born again Christian, suffering from long time cancer of the breast, from all indication my condition is really deteriorating and it is quite obvious that I might not live more than two (2) months, according to my doctor because the cancer has gotten to a very worst / dangerous stage.

My late husband and my only child died last five years ago, his death was politically motivated. My late husband was a very rich and wealthy oil business man who was running his oil,Gold/Diamond Business here in West Africa Nigeria. After his death, I inherited all his business and wealth.

My doctors has advised me that I may not live for more than two (2) months, so I now decided to divide the part of this wealth, to contribute to the development of the church in Africa, America, Asia, and Europe. I collected your email address during my desperate search on the internet and I prayed over it. I decided to donate the sum of $17,500,000.00 USD (Seventeen  Million Five hundred thousand United States dollars) to the less privileged because I cannot take this money to the grave.

Please I want you to note that this fund is lodged in a private bank here in Africa(Standard Trust Bank Africa). Once I hear from you, I will forward to you all the information's you will use to get this fund released from the bank and to be transferred to your bank account. I honestly pray that this money when transferred to you will be used for the said purpose because l have come to find out that wealth acquisition without Christ is vanity. May the grace of our lord Jesus the love of God and the fellowship of God be with you and your family.

Reply me on my private email address zbthschroder1@gmail.com Thanks and God bless you.

Your beloved sister in Christ.

Mrs. Elizabeth Schroder
Donor
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
