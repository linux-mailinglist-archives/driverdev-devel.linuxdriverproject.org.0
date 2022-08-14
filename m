Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D33365925A0
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Aug 2022 18:55:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 995044197D;
	Sun, 14 Aug 2022 16:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 995044197D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o8G5VAdZkpvq; Sun, 14 Aug 2022 16:55:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D165F4197C;
	Sun, 14 Aug 2022 16:55:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D165F4197C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C846F1BF410
 for <devel@linuxdriverproject.org>; Sun, 14 Aug 2022 16:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A214382C04
 for <devel@linuxdriverproject.org>; Sun, 14 Aug 2022 16:55:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A214382C04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qC8LQyLPcsoQ for <devel@linuxdriverproject.org>;
 Sun, 14 Aug 2022 16:55:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED27281C0A
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01rlhn2173.outbound.protection.outlook.com [40.95.53.173])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ED27281C0A
 for <devel@driverdev.osuosl.org>; Sun, 14 Aug 2022 16:55:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XsuxgjJDZ/6ObdmG8hYNOp56PilGlMk+tOMkWO8oELTvdnppzPfqYQuRvZ0ehkRaT6/79iXEqnXiZcNSuxkw37FXarn9MFOZBKaFMgCdCdTkKROllP8HkiMRdlVe8NGEQ1x4nx23KOsro3YsJvjHlUppwr8ESMxmoLxynuLyvaaGvd/zeYQJb204O94ondNpiBYirMJVthcuQnqhdQUn66lUm+XkLOuEMVS7U1GEunWe05HNHRbwtqChP953mjNXVbVPsT+SZ9UB2tz9QMuEiaNgVv5Hn3HRW/owgSXolzGv3OiIRUhypxd35sfKVxXp6gT3Cd92I7jYjHi1D4D3jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=StuRR4ZGpKgQlqA4GtsTDE1z7cvXg5k2b1QmQ5v5s+s=;
 b=gtLNUX1USaqHg2P41CG6hxnIOZ+oVSVzjj67ZxlrSXTbf+rL/Oa+AbSgLypYkwqWy+zaLxEBapQc2T/M+XPH8x3mdG5NNmU87v0ichq72bDXIj3z2v0KxTAx8UPwmtCCXPhtCE6fZURPfXXydse6t8MJ+voyIBuq8XRocEm6Q7cBvcqOo3rEx2ORto2arqyKbkkXylItvcVYXzwduXgCaNldrRXOv38bIP/hsbeQQLOJX4az2GGizmRGf3etGEX5fCU+6F0inu3L7gN+rIuVtiTafh8rOCRhzoy/qPrVQNpXyqzmI2KCemcLM+Fogw19JrZHSOR8X74EvpSy0zG94g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 34.130.58.223) smtp.rcpttodomain=gmail.com smtp.mailfrom=mofaic.gov.ae;
 dmarc=none action=none header.from=mofaic.gov.ae; dkim=none (message not
 signed); arc=none (0)
Received: from PS1PR01CA0024.apcprd01.prod.exchangelabs.com
 (2603:1096:300:75::36) by SEZPR04MB6575.apcprd04.prod.outlook.com
 (2603:1096:101:ab::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Sun, 14 Aug
 2022 16:55:14 +0000
Received: from PSAAPC01FT045.eop-APC01.prod.protection.outlook.com
 (2603:1096:300:75:cafe::13) by PS1PR01CA0024.outlook.office365.com
 (2603:1096:300:75::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.18 via Frontend
 Transport; Sun, 14 Aug 2022 16:55:14 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 34.130.58.223) smtp.mailfrom=mofaic.gov.ae; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mofaic.gov.ae;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 mofaic.gov.ae discourages use of 34.130.58.223 as permitted sender)
Received: from mail.prasarana.com.my (58.26.8.158) by
 PSAAPC01FT045.mail.protection.outlook.com (10.13.38.132) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5525.11 via Frontend Transport; Sun, 14 Aug 2022 16:55:13 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-01.prasarana.com.my (10.128.66.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 15 Aug 2022 00:55:02 +0800
Received: from User (34.130.58.223) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Mon, 15 Aug 2022 00:54:49 +0800
From: "Ms.  Al-Hashimi" <info@mofaic.gov.ae>
Subject: Re: Did You Receive My Last Email
Date: Sun, 14 Aug 2022 16:55:01 +0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <2e3f4eca-749a-4532-9471-29cee5b8efe6@MRL-EXH-02.prasarana.com.my>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[34.130.58.223];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[34.130.58.223];domain=User
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 340cf2e7-80f1-46c3-284c-08da7e15c1ff
X-MS-TrafficTypeDiagnostic: SEZPR04MB6575:EE_
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?FLTpveKS3hd4MvPIhVmCzOV3A9r0h5IeId2L1XpjSiAZJYJj+kjXtBZC?=
 =?windows-1251?Q?IP1Gv9bVY7F16/8wdxnPP+MPWKscSqQKCk0j2yTfbLkP2UJL2Ikb20rw?=
 =?windows-1251?Q?/jaSyk1IUW9OGzCj86bpJt6uM5MfpqWd16+1P4TFhL4VsmWBVLJSpZOq?=
 =?windows-1251?Q?BYCKbyn4rZDl6B2gsUr8mZzyoqXk7SqECYSCeXK7Ibf8Wbx+txP4wwj9?=
 =?windows-1251?Q?aq3zfge2Wg+F5raQJxMTEkE59w/LqWGkgEPt5M+LIusR8ddzaRXc4It3?=
 =?windows-1251?Q?M6ZQWg+L80gmKZbNhhicplvjx0bFEQ39t0GkRMaH9T1LCd2Belwno8K1?=
 =?windows-1251?Q?kkC8cjtAhkuIrlutOgJyoKspmKmOgXjc8HjC8yL+lBC+r1eZSWBL09+V?=
 =?windows-1251?Q?i3wITI5Nc4yi3ryGSAgqFRoJ2833pT2XfPVr/4EgYbR3E4frpZfDm09C?=
 =?windows-1251?Q?0ue6n8qHDg58P+WPC/iFxAgfDXEWKTZExVP/ztxS4SHr4a02fwGoT5gm?=
 =?windows-1251?Q?aQ2iFdPzBLzrXjCQO2PXENQu/z6sh+1Fept9gBWZEcHBGm6+SYVtut3t?=
 =?windows-1251?Q?I/RdI5HzVwNzS3OTudq/aNqFPGw8vZqauRTucUzHuxsn49vOq3uFiC4e?=
 =?windows-1251?Q?lvAPcSARvD6gpz//pY2kTp9Tg+ABfTmFQEMxsmfT5hJXIcSSRQkG/UQL?=
 =?windows-1251?Q?e3ySObmbi1w/emzi4OmWrqGr906J6GNbX8tPKt5PVoWotU+nTC39rHgx?=
 =?windows-1251?Q?czo3mRnsvytZf8ZQTF5Cq/Vv/yIx2RhYTP87oQKfudISOMT2CdLlYAXq?=
 =?windows-1251?Q?NliMlCXc6s43s4FPXux340Ys/OKQEhjE7zpvYi/x80eDdjpy6FoFjLqZ?=
 =?windows-1251?Q?TOfiKBm3GgBEaIxE2qdANdQP3FYUf8UA9BDk5aEqJ4nBK9Fslq/FsQ3N?=
 =?windows-1251?Q?nr9mI/3QzZvABNgtOIu529BtusAWiGV9Zve3hcp51/emNzGxVh21lugS?=
 =?windows-1251?Q?V8GDZACWyAy4LeeFZZ5CKTZSwjVaOBkeby/xqvxmsbfUcaAIACJSHvUW?=
 =?windows-1251?Q?XivlvP793b+RMgDtaT/JTLKgIcZH7JuaMcwA2HeFgRfQ/1ccsjVZXukb?=
 =?windows-1251?Q?GlpwYTf8jX5LalJFehptF6iTjLW7akn0PKT2AjYvwBmoSp8r4fU4aJ8t?=
 =?windows-1251?Q?gyFQ/YyMIxhcd1vtrI8+71cN75IdcgjbfdrbFDX8CIYMBLnHVerxHMfY?=
 =?windows-1251?Q?BEV0fnPsPZ3VdkfjyZ7mpLcb2QSfM+ZxNROgzeLZ5+BmjAPxs8Qq1zto?=
 =?windows-1251?Q?rFyq4pP+5H+DVAPwd1TjffDVuD6fEEKbiCgEv+siusVkXmS8Szy45LFH?=
 =?windows-1251?Q?WU3fxNA2XSLPRaboV5/AwxeeMOAm7UQ1OPA=3D?=
X-Forefront-Antispam-Report: CIP:58.26.8.158; CTRY:CA; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:User; PTR:223.58.130.34.bc.googleusercontent.com; CAT:OSPM;
 SFS:(13230016)(376002)(136003)(39860400002)(396003)(346002)(40470700004)(31696002)(2906002)(86362001)(81166007)(7406005)(7366002)(8936002)(70206006)(70586007)(38500700001)(8676002)(5660300002)(32650700002)(82310400005)(316002)(156005)(40460700003)(32850700003)(82740400003)(35950700001)(498600001)(41300700001)(109986005)(6666004)(31686004)(956004)(7416002)(336012)(83380400001)(9686003)(40480700001)(26005)(2700400008);
 DIR:OUT; SFP:1023; 
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2022 16:55:13.8921 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 340cf2e7-80f1-46c3-284c-08da7e15c1ff
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0; Ip=[58.26.8.158];
 Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: PSAAPC01FT045.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEZPR04MB6575
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

<HTML><HEAD><TITLE></TITLE>
</HEAD>
<BODY bgcolor=#FFFFFF leftmargin=5 topmargin=5 rightmargin=5 bottommargin=5>
<FONT size=2 color=#000000 face="Arial">
<DIV>
Hello,</DIV>
<DIV>
 </DIV>
<DIV>
My name is Reem E. Al-Hashimi, the Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020/2021 Committee. I am writing to you to stand as my partner to receive my share of gratification from foreign companies whom I helped during the bidding exercise towards the Dubai World Expo 2020/2021 Committee.</DIV>
<DIV>
 </DIV>
<DIV>
I"m serving as a Minister. I have a limit to my personal income and investment level, I cannot receive such a huge sum back to my country or my personal account. I reached with the foreign companies to direct the gratifications to an open beneficiary account with a financial institution where it will be possible for me to instruct further transfer of the fund to a third party account.</DIV>
<DIV>
 </DIV>
<DIV>
The amount is valued at $ 47,745,533.00 with a financial institution waiting my instruction for further transfer to a destination account as soon as I have your information indicating interest and I will compensate you with 30% of the total amount and you will also get benefit from the investment.</DIV>
<DIV>
 </DIV>
<DIV>
If you can handle the fund in a good investment.PLEASE REPLY ME ON THIS EMAIL: rrrhashimi2022@kakao.com</DIV>
<DIV>
Regards,</DIV>
<DIV>
Reem</DIV>
</FONT>
</BODY></HTML>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
