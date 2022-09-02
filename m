Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A03B55AB6A9
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Sep 2022 18:36:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0547B60D54;
	Fri,  2 Sep 2022 16:36:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0547B60D54
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nvFSjiZjh0Kz; Fri,  2 Sep 2022 16:36:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A97A7607B5;
	Fri,  2 Sep 2022 16:36:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A97A7607B5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6BD31BF3C8
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 16:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AECD560D54
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 16:36:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AECD560D54
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E3MEJl2NTt1W for <devel@linuxdriverproject.org>;
 Fri,  2 Sep 2022 16:36:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1BE1D607B5
Received: from APC01-TYZ-obe.outbound.protection.outlook.com
 (mail-tyzapc01hn2242.outbound.protection.outlook.com [52.100.223.242])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1BE1D607B5
 for <devel@driverdev.osuosl.org>; Fri,  2 Sep 2022 16:36:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LsRYWDTsNc8/7egRgZ3373lbcRTt1t17wNFzut7XblXJD81UmphDzragpJ9FeWAhCQJy7+W2ERLt0fxcPuFsxt5qPS9QnckYXj364roNy1D0xR4KmtOFJKlBxtbdYeazA0D8YobXvSMqR0zj+Lm+6IRCRBw9Hno1v7utN2mQ07o2Tr9tliJgH6oS/gNLizPuVVU2bRAT1nERE5S3zqpeffBZ/AnbBBMNRHeWbgxVoV48IKpb5MOApolNOT0B/uCZzR/PBfsgMbvq6StNsNYk9+HrgrXSZFhJwXeijd3Z0eyqMpAhEJIXPSeLyqtYqvSUpw7MfZSSemWdV9DZndIaMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N8sbhVjKEu/U/h+om1dH0/cpio6QH3jRtzf7gR3eSaM=;
 b=GWzVGGCG0bxWQeu5Nmxt0ZNTZYqLLFoM4x6FaQAwjdxtEd8udlloXHx/Kue2VUADoZ7YgxCCHRXR30XlIesgiUBDksFKgZonn9JEYkBHrB8nmnNed4uPwb/S7n9HAIph/tRGSMh2YQ+Ci9DlmS5j1RsOyF6uAUPCkGvLYySwmQSShk3eZL9hyV2fZFXXY2/IpAfMnsTZ/fZoSP2EjriW5z4dmk6/m6YawYiiDBP3rzWo4JYaDAbqMKeH5kBNql1EIhKn3hXFZAN0LA61dv7s0MtDHko0C8zJUgGpFmH6hW+upf0lyIyJFalcvPfGo1phyoST63QqbXccxBl2L0z9Rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 185.222.58.60) smtp.rcpttodomain=conference.pidgin.im
 smtp.mailfrom=t4.cims.jp; dmarc=bestguesspass action=none
 header.from=t4.cims.jp; dkim=none (message not signed); arc=none (0)
Received: from TY2PR02CA0048.apcprd02.prod.outlook.com (2603:1096:404:a6::36)
 by SG2PR04MB4106.apcprd04.prod.outlook.com (2603:1096:0:4::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.10; Fri, 2 Sep 2022 16:36:19 +0000
Received: from TYZAPC01FT059.eop-APC01.prod.protection.outlook.com
 (2603:1096:404:a6:cafe::b) by TY2PR02CA0048.outlook.office365.com
 (2603:1096:404:a6::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.16 via Frontend
 Transport; Fri, 2 Sep 2022 16:36:18 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 185.222.58.60)
 smtp.mailfrom=t4.cims.jp; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=t4.cims.jp;
Received-SPF: Pass (protection.outlook.com: domain of t4.cims.jp designates
 185.222.58.60 as permitted sender) receiver=protection.outlook.com;
 client-ip=185.222.58.60; helo=User; pr=M
Received: from mail.prasarana.com.my (58.26.8.158) by
 TYZAPC01FT059.mail.protection.outlook.com (10.118.152.109) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5588.10 via Frontend Transport; Fri, 2 Sep 2022 16:36:17 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-01.prasarana.com.my (10.128.66.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Sat, 3 Sep 2022 00:35:52 +0800
Received: from User (185.222.58.60) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Sat, 3 Sep 2022 00:35:38 +0800
From: "Mrs. R. E. Al-Hashimi" <account@t4.cims.jp>
Subject: Re:Re: Did You Receive My last Email....
Date: Fri, 2 Sep 2022 18:35:51 +0200
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <4bb8fcfd-3df6-4811-ac6d-942e0e0d986b@MRL-EXH-02.prasarana.com.my>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[185.222.58.60];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[185.222.58.60];domain=User
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8bbb5c2a-0340-4d26-5c74-08da8d014278
X-MS-TrafficTypeDiagnostic: SG2PR04MB4106:EE_
X-MS-Exchange-AtpMessageProperties: SA|SL
X-MS-Exchange-SenderADCheck: 0
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?czyO0z4TBbwt0we41Q44G4NoSp7K/SshuomOUHZXnOZLlB00notlf/Pm?=
 =?windows-1251?Q?ORLqqsn9P5ATSKanbvRyQMecsr2XEYW71thFwuLo74mfjyTGeOMFTohI?=
 =?windows-1251?Q?vtBagHnX+HLlzzVJ6p0+5TWt6xFvk9cI7yDDkr+8I06YY8XAfa61ZzGa?=
 =?windows-1251?Q?/XiFd9mYyyWKuFeKmPjhnkDtx/nVzoaZpf7XvMExGJMW6/r84MaMCcKK?=
 =?windows-1251?Q?38K80FLivKjruR63LODtEVvdS+iKnEMxxM8do1Tgy4SENYxszTJf95/m?=
 =?windows-1251?Q?O/ZbWEeHgCxLDT9QqOJQynrv4xzO0kvpp9Uuv1Ky+kostPHTpzBksPnP?=
 =?windows-1251?Q?Z6fzgJUkkRE4xHE8uMkW82Q95SI2B7aYL9IRlxI5Iz6DNOKNdFWf8dSd?=
 =?windows-1251?Q?norozsuTl3AB7ZFckYdLsi1deg1dhP9d5lXOpnbn1lbDGohPY4zPYrTF?=
 =?windows-1251?Q?SuxCdkdXvAyB9JYJaTyhqRZ5wQ3XOLLVNy6M40/z24VNjF+44jS/+aQX?=
 =?windows-1251?Q?g8BpvR3BNJKVZyOEIXQcwqlJd6Rzfr+wV3mt1PvCliXpSi4Y5Irt0kD9?=
 =?windows-1251?Q?fjqzDl180x3Zf164YaPylzh144lEd25zM/hJdoFqrBVOWfEzBOeHSCYH?=
 =?windows-1251?Q?4XyL1XFk4b+jFOUAuiYZaToft+Ko5VCCHo8W3Dc+Kzs4L2Tcm24LN5Wr?=
 =?windows-1251?Q?48LJDdNKeoDcGMhWTn5UmP4ARDiOMmqeF6NdliivtKEuzO2wGyO0nLHU?=
 =?windows-1251?Q?BpiDPLT8NDDTTS6nO1S275B2rjsossgqstyIxLdbi7DZOFYBfN92aFGV?=
 =?windows-1251?Q?2m2ce+bYDIVf3U0K0GaSo6U/dCTkO2q3jDueD9STKB2fOWKJJu7jdWqN?=
 =?windows-1251?Q?r+SHhVyW4qPq8rqhJq62iHEy/EDJVSWIUrpK5EAfngOHOjJjU5/ELEPR?=
 =?windows-1251?Q?l7561ikJQbbWlBC4YbMFf3Ogq2Y0k09dR8PQ3tEth2NBsZzMBicBvy1d?=
 =?windows-1251?Q?nw+1fvmKu2al6UFnqzQ540GeDrKh8MXlljxkmywEwKSz9yYvG+jW/CVP?=
 =?windows-1251?Q?95/HtsU1y1eUShOgQewUdhNvb0+WhlyaSc/09g3f6i4j8+a7PYXI4OJx?=
 =?windows-1251?Q?Z9z2npHoiN5ds5Vd3p57opzeqSqmdj3qYPCuN58SvpO40UkxSNMZIgfK?=
 =?windows-1251?Q?0051i+Te8c0GuSNNS6O0yUiRfTSKQxIBQpL1MYIQ0TJFy2tsZKTcK0SY?=
 =?windows-1251?Q?4zWcf5Pfb3lX7aS/KbOLUVb8Mt/v64cesEB7dpeiAAbZ5LJtzRbTMOKk?=
 =?windows-1251?Q?CwlmAFLKFHztSvI5sIAd2rr1v10EuVUct7Nd6DJkOiltqVeTXhZSxhfe?=
 =?windows-1251?Q?s8K6vxV5L1TUBL2BF5U048NSouxY5bbT9pAZO/z6LqTG7C4neKb+V5dR?=
 =?windows-1251?Q?brXHL9nPaamTYOh5MGuOAqGevMWH/aaztrmcCMzGQMqybazZ880sCbiC?=
 =?windows-1251?Q?5x7GKjDU+uztGi477u+nT+RP78myNGydTV9LZjVKiDQv1s1kBniyl00L?=
 =?windows-1251?Q?7801M4n4pzdKrB1DmHl0di9yKExD4/8IGgKJBdxccGR6EDWX/e1gu5x4?=
 =?windows-1251?Q?yesA1siWdgAOEkg/Cj57MXFT5aeqFWrlVhcBrl/CXhPJ5kT67vOzP0gY?=
 =?windows-1251?Q?wNht3ujZqmHEuMW5YaMwJAWIGkvFiFnZNoih+q5slpPARvbd8oV61xL4?=
 =?windows-1251?Q?Jrpi8Zh96MLRNJMLFUtZIcQ6GfQwNXkZwz9mNCE8iSTTCV3A311zU6D6?=
 =?windows-1251?Q?+yEZLQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:58.26.8.158; CTRY:NL; LANG:en; SCL:9; SRV:;
 IPV:NLI; SFV:SPM; H:User; PTR:modularisation.naturescar.com; CAT:OSPM;
 SFS:(13230016)(4636009)(346002)(39860400002)(376002)(396003)(136003)(40470700004)(26005)(82310400005)(156005)(40480700001)(32850700003)(2906002)(9686003)(35950700001)(336012)(956004)(32650700002)(70586007)(70206006)(8676002)(31686004)(498600001)(81166007)(82740400003)(40460700003)(316002)(109986005)(41300700001)(6666004)(86362001)(7366002)(7406005)(7416002)(5660300002)(8936002)(4744005)(31696002)(2700400008);
 DIR:OUT; SFP:1501; 
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2022 16:36:17.3202 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bbb5c2a-0340-4d26-5c74-08da8d014278
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0; Ip=[58.26.8.158];
 Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: TYZAPC01FT059.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR04MB4106
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
Reply-To: nationalbureau@kakao.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,
My name is Mrs. Reem E. Al-Hashimi, The Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020/2021 Committee.

I have a great business proposal to discuss with you, if you are interested in foriegn investment/partnership please reply with your line of interest.

PLEASE REPLY ME ON THIS EMAIL: rrrhashimi2022@kakao.com

Regards,Mrs. Reem
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
