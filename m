Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B1959260D
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Aug 2022 20:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9A69C830C0;
	Sun, 14 Aug 2022 18:55:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9A69C830C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aFVj-jRS_uZa; Sun, 14 Aug 2022 18:55:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C02E82BF4;
	Sun, 14 Aug 2022 18:55:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C02E82BF4
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CEB281BF3F2
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Aug 2022 18:55:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A368C830C0
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Aug 2022 18:55:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A368C830C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wGFMY8Yicmtq
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Aug 2022 18:55:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC22D82BF4
Received: from APC01-PSA-obe.outbound.protection.outlook.com
 (mail-psaapc01rlhn2152.outbound.protection.outlook.com [40.95.53.152])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BC22D82BF4
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 14 Aug 2022 18:55:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cQRMSvBTDxctFdam4K4xOYF0W8Xynoh1zgO5bGNtRYw+ffgy9Vzxc8PW28f46xtr9QhRgQLzsldKO+yomAegsSDMRV2R95Otbl46u6lX/KwTDnQ3UPPzHwJ1+8ULvjvyhmJn1tekAu1/rzDl0/bTMgSDJihB6NWi6AxXArH3AzyTmmImga+9PC9OVG8mTuZHFUoUXekzf9cc5+bwDSkrVtgGImVDWAl/Cse8u09a21YbBrANj8FBgISaUzvqO+PXy9trHmOFkcdhNU13MDzbsePqrKksRM8HJwwpG4ALJpZ5DGoPxxxPZqBYtxxS3sqzxvg0Ij44zxMGlh4py+f3ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=StuRR4ZGpKgQlqA4GtsTDE1z7cvXg5k2b1QmQ5v5s+s=;
 b=KRgtRiFJO8uKMZUI8sZ1AYg9NO2vsZClmIPbLibs20rHcTmOtrBJyDOFFhwPkPZaw+2HQ2a+Ilks/7ctOZo6/cbyvOuha9r+NAjcOsXDc4Ct193pOVto8EEuH0nS64IyL1hKnv9G/GIN8WGEHIq9mDkagk5fMDJa4V0ygIQZB6M1MK2JcmbSWnlDDa+CSvlMsgVOCWUnC02c69PMlJ3lWiRan7YvpztGoPlTi7+7c24Y5ZjYClVJiRbXnI0/3bskVA37Qwquxn9CJTgt6lXb9Iajp03McSo2GX5J0xzGkIuuj6xJ+9qHEuFFNoB4cFnaQ6VXZXlO3/KhOXIHbqLuPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 34.130.58.223) smtp.rcpttodomain=wal-mart.com smtp.mailfrom=mofaic.gov.ae; 
 dmarc=none action=none header.from=mofaic.gov.ae; dkim=none (message not
 signed); arc=none (0)
Received: from SG2PR02CA0076.apcprd02.prod.outlook.com (2603:1096:4:90::16) by
 SEYPR04MB5953.apcprd04.prod.outlook.com (2603:1096:101:68::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Sun, 14 Aug 2022 18:55:03 +0000
Received: from SG2APC01FT0026.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:90:cafe::f4) by SG2PR02CA0076.outlook.office365.com
 (2603:1096:4:90::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.18 via Frontend
 Transport; Sun, 14 Aug 2022 18:55:02 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 34.130.58.223) smtp.mailfrom=mofaic.gov.ae; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mofaic.gov.ae;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 mofaic.gov.ae discourages use of 34.130.58.223 as permitted sender)
Received: from mail.prasarana.com.my (58.26.8.159) by
 SG2APC01FT0026.mail.protection.outlook.com (10.13.37.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5525.11 via Frontend Transport; Sun, 14 Aug 2022 18:55:02 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-02.prasarana.com.my (10.128.66.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Mon, 15 Aug 2022 02:54:38 +0800
Received: from User (34.130.58.223) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Mon, 15 Aug 2022 02:54:25 +0800
From: "Ms.  Al-Hashimi" <info@mofaic.gov.ae>
Subject: Re: Did You Receive My Last Email
Date: Sun, 14 Aug 2022 18:54:37 +0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <91084ef5-167a-4ec3-a3f5-dc66a7354555@MRL-EXH-02.prasarana.com.my>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[34.130.58.223];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[34.130.58.223];domain=User
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d6eab693-7b90-4fed-86b2-08da7e267e66
X-MS-TrafficTypeDiagnostic: SEYPR04MB5953:EE_
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?t/d8iSX3dtY93SkzblYJ9ZmDe5ulnv6G74Wlq3IQ0kiKXrXVcRr4CN6F?=
 =?windows-1251?Q?FBHD8Hqpl41vI1TQreXuCMgDaQT2ddxvw56vKAIvALfPhT7yB3TQhXYf?=
 =?windows-1251?Q?mzZ9za/jlasQSFndT87jjdm4sYUNyrIVxyyeoe7hErSEd+pbq4uZDriV?=
 =?windows-1251?Q?5/hT1q3r6H1u/YoLuN826CV2XLZeJEHQzdgAzsje4plApa0ezhRVDyvb?=
 =?windows-1251?Q?+k5mH8QEa6BwJ1iFv1k07jjyB/Mcwpa/4hf3elrrd7vTkt3RH5VB5KYf?=
 =?windows-1251?Q?UWSxCFlt1/S6p/dm+IKv6PmkO47EaFKEB8MdeuaKDOSIcadbKgnA0pkb?=
 =?windows-1251?Q?6112kBgM6tMswUwcttXJGkd3B9Z3vwZHCVSku+/lzhpdJZd6nuzL8lh6?=
 =?windows-1251?Q?AIRRqOtCbnetQPLqImw3YAR52KAQwXDCQzPDXgYRo6x7e5Q/oQ8LO7lr?=
 =?windows-1251?Q?l+GwjBkRbPu1pm9Vg6JO4yOYlcsA01se5DulkLFOKaqrTNpxthL+ehTC?=
 =?windows-1251?Q?BAy272QpPlEEj8E/A+hY/uoGlP7hO6Lb58MZJ2FO6CeY0pEhwPvTRnbF?=
 =?windows-1251?Q?ATIabT8ga5KbAFMiSrXZqy+pgeCtPwDml63npMy4GOf/ETPkBUEmq/AB?=
 =?windows-1251?Q?QiNbtaEerVjkWrQQBraFWeG26brtxsybbjGFxQRL23yqHZOxumxkldpN?=
 =?windows-1251?Q?Gi2DfGvIdoTWWMUTwpUNIUzCCGEOSeVqXm9xVfwkDRK4oVNJtaK2UsWC?=
 =?windows-1251?Q?8ntenWlg6jwuWNnTYDnRNK5J0RniwpWalkSXCTjWUduLP8t52EwvYfSn?=
 =?windows-1251?Q?czcttZxF9lD/GFUpvpC0prjRPfeyivKSwCruQLvj8HW6IsQIZP2gCojZ?=
 =?windows-1251?Q?lLzmsfkY1eooGGCr1DrHCig8LHhxj8h1mrktFK8/1yLjju322sED+qSK?=
 =?windows-1251?Q?RUMBZPnjrg66xJIohKpiyqv4j/ucVjkImSHHbuwAqtKy5jQ903zYXLO3?=
 =?windows-1251?Q?uxHtVyXtghw/EN1lKrdDW+nrzhEYAiEeaut202GYoB4Mnew25q2rTA8e?=
 =?windows-1251?Q?0JXozQ4mT2hJFSvhW9TFhq8+L0hPySbZKyuFqZLfcn6KQeqYWRMtEkFQ?=
 =?windows-1251?Q?nz1aI+3ZgMP945K9i3yS+C3vXg08lwNL1mVh6k2Gs5Tvj6yXysihtNwN?=
 =?windows-1251?Q?EA8/zmAGS07f9jXe90CRyjGHfc/xUnGg3Vh4+MiLbbpWxndAerWigFpi?=
 =?windows-1251?Q?6cDdR63wD5qfcDKyrW0IUjU+q4otzE26OBanS7n1d1kqyztnTxmFbK9q?=
 =?windows-1251?Q?n3OaiiMzgr7Doxj0ttCyrSCOMox6wYVJDaO94KJCLPcyXzoNaBxJcPKj?=
 =?windows-1251?Q?Xz5BLKVoobOBHeknFwTtmvPKcfuW9CzZYgA=3D?=
X-Forefront-Antispam-Report: CIP:58.26.8.159; CTRY:CA; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:User; PTR:223.58.130.34.bc.googleusercontent.com; CAT:OSPM;
 SFS:(13230016)(39860400002)(136003)(396003)(376002)(346002)(40470700004)(31696002)(38500700001)(32850700003)(86362001)(156005)(316002)(8676002)(70206006)(82740400003)(81166007)(83380400001)(8936002)(35950700001)(7406005)(40480700001)(7416002)(7366002)(498600001)(5660300002)(336012)(70586007)(82310400005)(26005)(109986005)(40460700003)(36906005)(41300700001)(2906002)(32650700002)(31686004)(9686003)(956004)(6666004)(2700400008);
 DIR:OUT; SFP:1023; 
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2022 18:55:02.0226 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d6eab693-7b90-4fed-86b2-08da7e267e66
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0; Ip=[58.26.8.159];
 Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT0026.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR04MB5953
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
