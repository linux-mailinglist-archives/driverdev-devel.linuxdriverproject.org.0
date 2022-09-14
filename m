Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A335B8EE4
	for <lists+driverdev-devel@lfdr.de>; Wed, 14 Sep 2022 20:30:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A83D340138;
	Wed, 14 Sep 2022 18:30:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A83D340138
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lZyQ3EXEsgy6; Wed, 14 Sep 2022 18:30:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 23F074012C;
	Wed, 14 Sep 2022 18:30:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23F074012C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2A00B1BF28A
 for <devel@linuxdriverproject.org>; Wed, 14 Sep 2022 18:30:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0F19B40149
 for <devel@linuxdriverproject.org>; Wed, 14 Sep 2022 18:30:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F19B40149
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V2i02SEZA6cw for <devel@linuxdriverproject.org>;
 Wed, 14 Sep 2022 18:30:39 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30B7A4012C
Received: from APC01-TYZ-obe.outbound.protection.outlook.com
 (mail-tyzapc01hn2204.outbound.protection.outlook.com [52.100.223.204])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 30B7A4012C
 for <devel@driverdev.osuosl.org>; Wed, 14 Sep 2022 18:30:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ie3QNr7Lq2g4FoTy7kCoffEVnJExTA0Y7NKIKct1alUfJeEuodUVjicgF7JlM8lz60NYc5JLE1gmzVAQQvcSxSNoVtw98dJdEUsC2wJqEkwjZRtOvlx7JnK45fhANBFNJdbSZRtyUtM49rqaBNkuYoIajXMGXIvamQj+KaPB7x/XpZ2qx4BLYfSeoN5pk2dJC5pVET4jqA6hO5UNjg4HeHYOAXvGPwu4VP5J5H7eov7wXO6L9gfcju8N9rE5DuWu7e7nsjXpC0c9mmFKbXU60M3B20ahDULpzYq2lrz6OFjKAJrkMJ0E6MM7YjUwt2BN52eB3YKpbDnouEfJy4raDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bs10Md+15nMnyayKLyd22Uv+/ZH79IcFcpzuzGLq1Fg=;
 b=cBS9+3Strqob0Pqe0o9wOyOn9107gWv37CIf8uiQZrNErKlAMfTOVjqfvvbe4cUNj5DPZsYWwrukV8hiCKTLhqIcvxV868FJleypRBxki8afg1Fn49MFOI8yW7bKSgZcLpQj9P80JBiBfUOG28z3KIxdfqFP9DPmjRIWfJofmcmLTXort0h2+5cTIgRonw7geXU7qmySiA0Ttr29YLs8ItBs3pKlrolPKI6FnXSko/22B2dC+p3QWinAMRjShC3/7bzx+ARulew10uaP304HcBopQe+2ZiFM6gg2luy7BEt6YqKCF2KsLBkl6/1Fjch4+1C1ybLzryoZ4W/fzRdClQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 37.19.199.139) smtp.rcpttodomain=basta.ml smtp.mailfrom=t4.cims.jp;
 dmarc=bestguesspass action=none header.from=t4.cims.jp; dkim=none (message
 not signed); arc=none (0)
Received: from SL2P216CA0224.KORP216.PROD.OUTLOOK.COM (2603:1096:101:18::12)
 by TY0PR04MB5958.apcprd04.prod.outlook.com (2603:1096:400:217::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 18:30:36 +0000
Received: from PSAAPC01FT068.eop-APC01.prod.protection.outlook.com
 (2603:1096:101:18:cafe::1a) by SL2P216CA0224.outlook.office365.com
 (2603:1096:101:18::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.12 via Frontend
 Transport; Wed, 14 Sep 2022 18:30:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 37.19.199.139)
 smtp.mailfrom=t4.cims.jp; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=t4.cims.jp;
Received-SPF: Pass (protection.outlook.com: domain of t4.cims.jp designates
 37.19.199.139 as permitted sender) receiver=protection.outlook.com;
 client-ip=37.19.199.139; helo=User; pr=M
Received: from mail.prasarana.com.my (58.26.8.158) by
 PSAAPC01FT068.mail.protection.outlook.com (10.13.38.174) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.20.5632.12 via Frontend Transport; Wed, 14 Sep 2022 18:30:35 +0000
Received: from MRL-EXH-02.prasarana.com.my (10.128.66.101) by
 MRL-EXH-01.prasarana.com.my (10.128.66.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.14; Thu, 15 Sep 2022 02:30:16 +0800
Received: from User (37.19.199.139) by MRL-EXH-02.prasarana.com.my
 (10.128.66.101) with Microsoft SMTP Server id 15.1.2176.14 via Frontend
 Transport; Thu, 15 Sep 2022 02:29:42 +0800
From: Consultant Swift Capital Loans Ltd <info@t4.cims.jp>
Subject: I hope you are doing well, and business is great!
Date: Thu, 15 Sep 2022 02:30:25 +0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <ecb6d0d5-2973-492d-80dd-2798a30e4f51@MRL-EXH-02.prasarana.com.my>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: ip=[37.19.199.139];domain=User
X-MS-Exchange-ExternalOriginalInternetSender: ip=[37.19.199.139];domain=User
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PSAAPC01FT068:EE_|TY0PR04MB5958:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f528465-42f5-4454-a428-08da967f3723
X-MS-Exchange-AtpMessageProperties: SA|SL
X-MS-Exchange-SenderADCheck: 0
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?Sc03ZkZgHUHEAoATpQCBkFG3b4/1pZFakUTAT9QIoxziRchtClnS41Fq?=
 =?windows-1251?Q?D0Vi11MkO2P9eAST4FJpxsZ4tEuOQ0WEL5wdWyKf5+oX9DAD2QxNdZjE?=
 =?windows-1251?Q?40qLYTJdI4waoxbURSifPtehkUNfChJQlgFD22urov7FCCem8NctLlRw?=
 =?windows-1251?Q?XRybvXRZOA33ybFmB3X8OY9sIzY0CAgwH6xzj/eHDaqXfK9YMKyWasO6?=
 =?windows-1251?Q?UUFL+cVWusnuU86cDgNDzvp8d4qJWbroD1YI3PgjqCANeeHZr0VEnndM?=
 =?windows-1251?Q?hBLcT8YU76k3vBPKGTEDgW4qDPUuNPZuiWzxgseN28PkTScqFVQlpVve?=
 =?windows-1251?Q?fdV1BZXvTasFz8Atk9EAcoPjk4E0T6kYVs5uscquaOF4yyVPeK6uc4Cb?=
 =?windows-1251?Q?W0puLiSeJH6SMeWWEa052IcfEMC/Ss7chP5JEFAd/zXAsVeRdVj3zaEG?=
 =?windows-1251?Q?IZBUPSzysP6gYvuSb29W/kUpUIRTVO48qBnYSfwpMfn8C9fZgHKXROtJ?=
 =?windows-1251?Q?jynq6MJ7Xh0hSJ2lgtb2PfYqRF1ZHqycTsdvYZyMu0ftDDiTkPdQwuya?=
 =?windows-1251?Q?Up7gkHJqgjBYPLyKMQzV4xeAgHvB1av7sGWQtixHEOBw6cKQ0gygc4vD?=
 =?windows-1251?Q?u/2e8ta6uFx2DSKfk9k62Ickoo7KpVbFIb6AFOOvCJgcwP7eTsRKQNE5?=
 =?windows-1251?Q?EB//JPZCjLT+TRdAJ5sICOle84En6X53UdF4NKcIwQccboFNNNKoHECZ?=
 =?windows-1251?Q?wsLIKmxct5bUHAFpTnyKM4QCPO43D7H74F3ChVviIyCmXBiqDKNEvy3x?=
 =?windows-1251?Q?gCA9lWwNoxMFqKsWwaIEAyULzZ4T9MRvFzo35WH6Rhker1V1NgGXMeSx?=
 =?windows-1251?Q?oyRiSkUdJjNizLa5L0s/+LZCK/CA8CgnWA7oeM6As+bQO6Ouh00k51K1?=
 =?windows-1251?Q?MKhy0tegK54x/xQ9gyXzlpbOn6oimWTmZXZyvrlZEhhSS5Jb223yXeIw?=
 =?windows-1251?Q?iLl57ysYJh2z2eS1hROpP/oGhHA/51hnUzYtWpNw8KoMPhbjsExRE42B?=
 =?windows-1251?Q?sYAw/gs6OC+Xk4lrWZxfpQPZPHHy5otXaBukL9pz4de7RVBuZ6GWPQXd?=
 =?windows-1251?Q?7mN2nIJpM7ZIceUWWV0pK8wxcgheyZRh18vEXOWJd/G4Ztx9vNcSRZHP?=
 =?windows-1251?Q?uLRoXeYuOTs8QwnIHDPzwRvyl6zZsdxI+tkfMWpuf0FS0/M8BfVPiowU?=
 =?windows-1251?Q?b96oasuj9MENvDUrvgxDGtJQjzerMvVF28RbRYeZ6W+YrRYplOfoFDVn?=
 =?windows-1251?Q?efmzARkKn2RwBNp44shUlp8KgEYFIQbXeaS8J5LPf0jgHqTr?=
X-Forefront-Antispam-Report: CIP:58.26.8.158; CTRY:US; LANG:en; SCL:5; SRV:;
 IPV:NLI; SFV:SPM; H:User; PTR:unn-37-19-199-139.datapacket.com; CAT:OSPM;
 SFS:(13230022)(4636009)(346002)(39860400002)(136003)(376002)(396003)(451199015)(40470700004)(81166007)(9686003)(336012)(82740400003)(41300700001)(26005)(40480700001)(4744005)(5660300002)(86362001)(70206006)(32650700002)(156005)(498600001)(109986005)(82310400005)(36906005)(32850700003)(6666004)(31686004)(8676002)(70586007)(35950700001)(31696002)(316002)(40460700003)(7406005)(956004)(7416002)(2906002)(8936002)(7366002)(2700400008);
 DIR:OUT; SFP:1501; 
X-OriginatorOrg: myprasarana.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 18:30:35.4879 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f528465-42f5-4454-a428-08da967f3723
X-MS-Exchange-CrossTenant-Id: 3cbb2ff2-27fb-4993-aecf-bf16995e64c0
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3cbb2ff2-27fb-4993-aecf-bf16995e64c0; Ip=[58.26.8.158];
 Helo=[mail.prasarana.com.my]
X-MS-Exchange-CrossTenant-AuthSource: PSAAPC01FT068.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY0PR04MB5958
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
Reply-To: rhashimi202222@kakao.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

I hope you are doing well, and business is great!
However, if you need working capital to further grow and expand your business, we may be a perfect fit for you. I am Ms. Kaori Ichikawa Swift Capital Loans Ltd Consultant, Our loans are NOT based on your personal credit, and NO collateral is required.

We are a Direct Lender who can approve your loan today, and fund as Early as Tomorrow.

Once your reply I will send you the official website to complete your application

Waiting for your reply.

Regards
Ms. Kaori Ichikawa
Consultant Swift Capital Loans Ltd
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
