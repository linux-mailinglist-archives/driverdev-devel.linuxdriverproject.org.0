Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CF05ABC82
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Sep 2022 04:55:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E626A81AEA;
	Sat,  3 Sep 2022 02:55:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E626A81AEA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qjU86KtX6MpU; Sat,  3 Sep 2022 02:55:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6BDC819BC;
	Sat,  3 Sep 2022 02:55:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6BDC819BC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6E2811BF39C
 for <devel@linuxdriverproject.org>; Sat,  3 Sep 2022 02:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 488D4402D0
 for <devel@linuxdriverproject.org>; Sat,  3 Sep 2022 02:55:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 488D4402D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SHP4R5gooD59 for <devel@linuxdriverproject.org>;
 Sat,  3 Sep 2022 02:55:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B28A4015E
Received: from APC01-SG2-obe.outbound.protection.outlook.com
 (mail-sgaapc01hn2205.outbound.protection.outlook.com [52.100.164.205])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B28A4015E
 for <devel@driverdev.osuosl.org>; Sat,  3 Sep 2022 02:55:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GTmUqHhzwWTEmowfajYV4EfZgUo2RoiwHZOfwOiGrFKC3aLb+Nf93kvhdwDFVLKoyxfhofx45PrdUlbgcldxYzADOAE0RJh4iE0IcGeUnD1XaQct64KDlkopzEOW1TkIEILUrlSYPB5C6TLocDff/LPFlUXL10IsYgtVkro/kKC+IbraH4coF4uCMjZA6PkeK9lYgX/XK7zjV2DUoyr+lJfxOUACOSIKvLyGQmrRoSvSvvh1sHlMq3soTvpBu0iv1tz0rxr4FMOoUPdn5iJwG9luCMFTWmodrdhUWnj3SGvU1E4pi5rNOyxkskeUKduIFRep15DSyzZgGCll2+uHgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qu+E5tCWlZMzD8uYx/cLap0FO9ooNZ0CeVd2xJwr1Ro=;
 b=hnnzJB9IxgH3d2vGdF66OxdyhFOib5CBvSx6bkBjGJ6AvGFDQ7MNx3ePtn6BEOG5oxtj/+XqKnW6gxJgZFzmeOEbZDntGEP0qkOQk5kJ2r2myoC59fm0afRX8zwRX/vEihTXKQ/d03DlKlVkVRfBdXUzfc4ClM6SLHWYtmjTcfUyHeLxiEvskefvBO0GJxkTGzAYO25PDp257s4z9tp9QynSc3PWIGhCplQkmLhqO8h/Yv0urXGRj+ITqCciv3xWQLEIO6GzwDbEWWrHy5leTmhiS8FYTsk8iD77dDJQnSXj/T/3+4lHT0DznfqQHzj8ZUTZRl8UKSU4XhwJX17LOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 34.154.111.101) smtp.rcpttodomain=gmail.com smtp.mailfrom=t4.cims.jp;
 dmarc=bestguesspass action=none header.from=t4.cims.jp; dkim=none (message
 not signed); arc=none (0)
Received: from TYWP286CA0032.JPNP286.PROD.OUTLOOK.COM (2603:1096:400:262::16)
 by TYZPR04MB6522.apcprd04.prod.outlook.com (2603:1096:400:281::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.21; Sat, 3 Sep
 2022 02:54:59 +0000
Received: from TYZAPC01FT009.eop-APC01.prod.protection.outlook.com
 (2603:1096:400:262:cafe::82) by TYWP286CA0032.outlook.office365.com
 (2603:1096:400:262::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10 via Frontend
 Transport; Sat, 3 Sep 2022 02:54:59 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 34.154.111.101)
 smtp.mailfrom=t4.cims.jp; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=t4.cims.jp;
Received-SPF: Pass (protection.outlook.com: domain of t4.cims.jp designates
 34.154.111.101 as permitted sender) receiver=protection.outlook.com;
 client-ip=34.154.111.101; helo=User; pr=M
Received: from mail.prasarana.com.my (58.26.8.159) by
 TYZAPC01FT009.mail.protection.outlook.com (10.118.152.185) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5588.10 via Frontend Transport; Sat, 3 Sep 2022 02:54:59 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-02.prasarana.com.my (10.128.66.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Sat, 3 Sep 2022 10:54:36 +0800
Received: from User (34.154.111.101) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Sat, 3 Sep 2022 10:54:23 +0800
From: "Mrs.  E. Al-Hashimi," <info1@t4.cims.jp>
Subject: Re: I Resent the Email Again ?
Date: Sat, 3 Sep 2022 02:54:36 +0000
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <f76c9bd1-406f-452f-9f64-b76e2c38b609@MRL-EXH-02.prasarana.com.my>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[34.154.111.101];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[34.154.111.101];domain=User
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb27556b-79c2-4ff2-1494-08da8d57b0f0
X-MS-TrafficTypeDiagnostic: TYZPR04MB6522:EE_
X-MS-Exchange-AtpMessageProperties: SA|SL
X-MS-Exchange-SenderADCheck: 0
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?ipqkoh64hFClkZ0ij2q/clDvTByodYmlv4nKJNGfsu9WQHakQe9t8RDP?=
 =?windows-1251?Q?JwOd0dilflt/P4MakjxMyHr+lDq1KrxrS2MX/tsBEZmR3qOztUhP3hcC?=
 =?windows-1251?Q?SPkdGoKgecZjvlBmoL3/znUVZsdPeNbCHVX/f9XrvZAMf/ItYst97YyY?=
 =?windows-1251?Q?ZPK2X381ONcizzT37RD4kWWnnPNzobbCIIESa/t8/QQU8tk3lP2SYsWh?=
 =?windows-1251?Q?1LT+nlivzP5eubyuTtxXfAqI2Kkc43gYl27SZhU4SDUe8FOfAClGMmmg?=
 =?windows-1251?Q?ETrQHh8FmfEzReg5Fws/PlKRM1X3AHfjQk4tuONHmm132AtygZnIeq0n?=
 =?windows-1251?Q?xZ5ITMZSOZFRFfesB28z+r64wjcrz1zNI201kLjQu/e3+yC65pIHlCVl?=
 =?windows-1251?Q?LVNyy36QosTqtG4hxIx+VrTGpAXNZ7XG/Quavu+UluWqKQCRZ4B96rya?=
 =?windows-1251?Q?6fd/d/o4satqa80Ri7C0XpVRuMwyYghBYBQ4co7ng7RYLy5u5WmAlqEO?=
 =?windows-1251?Q?UsAAETlwdq8HlhyY/6iFsWbjKFf91czbofQjysk+0aS7Nl0uX45PP/V4?=
 =?windows-1251?Q?7gtfN5Gs8UCklXSpl1BYbKMGqQyOWt25/VDv7p3HBblGzc880IzuBEX1?=
 =?windows-1251?Q?I608CkekYE9nmIrJgGqx71iNhiujQgIv1eFI1UBTeR5q6q+2mQzijSHp?=
 =?windows-1251?Q?KumkvEXOK30rqwxxVV+sY2XS+PJ6vjnGZEbKhVJ3V2ORXBk6pi50sEbY?=
 =?windows-1251?Q?4jQ8cdXwNiv5ynTP9gBqNif3AJszvayHW6FC+azfaZ03z9GyWKdZfMVc?=
 =?windows-1251?Q?cEyhN1YseT2uIxP5SnZX0QHsooZ4n44/5UrWGUkWIZuUbsLiT9CK9HC5?=
 =?windows-1251?Q?8uKhENN3i7W8hg/Tq+97rhcw2miP9qUrDegHuuHnzUSLPoYhv3qMTV6n?=
 =?windows-1251?Q?7WMpK/mLVG5XnTliRTL6xLr9ki2SDdIl6SDw2moGkXrKfhctn7gfrP3R?=
 =?windows-1251?Q?WHgIHuzNS8lRa4Lz9+eLVxqF+oFKw9fSsns+wyJnw7QXyTiVXl3qYpuD?=
 =?windows-1251?Q?K9i2q1NUz9lppldHExBjBmoFbU5rXBxVfXa99TUSWjpaTnwWT6xS8PzV?=
 =?windows-1251?Q?7Kzwi4WQonN873QfjO/i6Z1276S70S4ii2h3L2C2sFDam2lOkY8d5GJv?=
 =?windows-1251?Q?GCfZlST7KZwW8Embe9VgZ+yeIzKavkqs/FxTnGt9wwEuhADmo2NoZ+gH?=
 =?windows-1251?Q?soAHWRTLUmNwW6VfmayZnB6JKYmIuULH4WZdNNcFy+Kfg4SgK3a28jLH?=
 =?windows-1251?Q?iUgyslhnNuQGS5bFW4hTV4vLjJ5qYqMRItdr20eBtiD+bGRT?=
X-Forefront-Antispam-Report: CIP:58.26.8.159; CTRY:IT; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:User; PTR:101.111.154.34.bc.googleusercontent.com;
 CAT:OSPM;
 SFS:(13230016)(4636009)(39860400002)(346002)(136003)(396003)(376002)(40470700004)(9686003)(109986005)(40460700003)(31696002)(6666004)(70586007)(26005)(31686004)(8936002)(156005)(956004)(35950700001)(86362001)(498600001)(32850700003)(336012)(41300700001)(32650700002)(7366002)(82310400005)(40480700001)(2906002)(70206006)(81166007)(36906005)(316002)(8676002)(38500700001)(7406005)(82740400003)(7416002)(2860700004)(5660300002)(4744005)(2700400008);
 DIR:OUT; SFP:1501; 
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Sep 2022 02:54:59.3885 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cb27556b-79c2-4ff2-1494-08da8d57b0f0
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0; Ip=[58.26.8.159];
 Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: TYZAPC01FT009.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR04MB6522
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
Reply-To: annzainab@yandex.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

My name is Mrs. Reem E. Al-Hashimi, The Emirates Minister of State and Managing Director of the United Arab Emirates (Dubai) World Expo 2020/2021 Committee.

I have a great business proposal to discuss with you, if you are interested in foriegn investment/partnership please reply with your line of interest.

PLEASE REPLY ME ON THIS EMAIL: rrrhashimi2022@kakao.com

Regards,
Mrs. Reem
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
