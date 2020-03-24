Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D5110190B36
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Mar 2020 11:37:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3978B87FED;
	Tue, 24 Mar 2020 10:37:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GnKNtOSt9ZRh; Tue, 24 Mar 2020 10:37:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0641387DD6;
	Tue, 24 Mar 2020 10:37:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BAE6B1BF2EA
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 10:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B1FA087DD6
 for <devel@linuxdriverproject.org>; Tue, 24 Mar 2020 10:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uuJdWguJOFtd for <devel@linuxdriverproject.org>;
 Tue, 24 Mar 2020 10:37:39 +0000 (UTC)
X-Greylist: delayed 00:19:02 by SQLgrey-1.7.6
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
 (mail-eopbgr00055.outbound.protection.outlook.com [40.107.0.55])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 106DF87DCC
 for <devel@driverdev.osuosl.org>; Tue, 24 Mar 2020 10:37:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SXL567Yr/keS7/3gQLxdf0Jk8pGFTsyRlTj8ej36Luqz2O4qcynb6TgQKbGIEhPnGlBy/WhnmsShF0Iegz43zUJ3/WQACrZhumhMVYYSweL1a1bY5EHdkjv2KK6GnS7NUB3dHSxU0LqrNnePDGGzV/ERPCxNi5DaR8uh9D3Ge4f25DZ5hL9uMjgnNRLe5obpS1shx3TOmwMWBr2Xo0OCVqLJQmZdX++f1Nd4Zk++UUys62ALyfBLxXaRn3U5r1ldW+R2G17eLM9sU+LzgmjvdDjr4yBFWldQCIuUN9Rn9SZrbJQlx5bf7/5IyRZkOxfGaKhcR+KyvCmphTc2MDFj8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuO8IivCQlPjR/s0qI+xVFMzQNpMXrnAmCVmzXoLJPw=;
 b=Rl/CravGpjKkalGg5cDPtl3NEA+oi58qELJzDhArVsl0+0ya+d27pwralfR0k1gLb/Bk0LNiaSl4Va8K7QAUPcMQow1xD/xuTk2pWR4tmWqKJlY2jwIXW1z18jeQHKR6fZQUXH1roR0XfqufOLp3Sdl8BC6u1d4RM7GtqJ7gOAmbsgvzd+SosBgfBj18C7MD2q/SWBM8Xcu2XARiG6GEXBk0J3XkWmTmhoDWKh81NnaicVt3vZo9U+KljPY4lCLqTP+G2RHAcMBAaZxw8LbtWNsdYEqFKrAF34hzQQ0eSdK96EP58ujW5CTRP0dHhWnsfKpGD6pAgr6DBB0HufmvXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuO8IivCQlPjR/s0qI+xVFMzQNpMXrnAmCVmzXoLJPw=;
 b=phsdt6tngVVDJ1+6L2wNvXWnO6cgFFp+q8uc9aXEkYj4CtP3WG4uEUbooDRA36sKIzqBMdmtZHEcQ9UToXgodBk7UNSbxyQfay3uFb+ZndWDTqjBs0v9uuvVK2ARQAcrk3KX59ojhi2d91IRitQuat4BELTiCmd+HxOp/aWtUeg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4903.eurprd08.prod.outlook.com (10.255.78.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.18; Tue, 24 Mar 2020 10:03:25 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2835.023; Tue, 24 Mar 2020
 10:03:25 +0000
Date: Tue, 24 Mar 2020 10:03:23 +0000
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: Re: [PATCH 1/2] staging: vt6656: remove unneeded variable: ret
Message-ID: <20200324100323.GB7693@jiffies>
References: <20200324064545.1832227-1-jbwyatt4@gmail.com>
 <20200324064545.1832227-2-jbwyatt4@gmail.com>
Content-Disposition: inline
In-Reply-To: <20200324064545.1832227-2-jbwyatt4@gmail.com>
X-ClientProxiedBy: CWLP265CA0278.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:401:5c::26) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (54.37.17.75) by CWLP265CA0278.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:401:5c::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend
 Transport; Tue, 24 Mar 2020 10:03:25 +0000
X-Originating-IP: [54.37.17.75]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 137de9bf-3e9d-401f-1b0e-08d7cfda97e0
X-MS-TrafficTypeDiagnostic: DBBPR08MB4903:
X-Microsoft-Antispam-PRVS: <DBBPR08MB49031A57317C3C953CF05121B3F10@DBBPR08MB4903.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 03524FBD26
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(366004)(136003)(396003)(39830400003)(66556008)(66476007)(53546011)(66946007)(33716001)(9576002)(1076003)(33656002)(9686003)(4744005)(5660300002)(55016002)(2906002)(44832011)(956004)(508600001)(26005)(8936002)(186003)(81166006)(81156014)(8676002)(7416002)(6916009)(16526019)(54906003)(316002)(4326008)(86362001)(52116002)(6496006)(55236004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DBBPR08MB4903;
 H:DBBPR08MB4491.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; 
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b9/ZtjxGUvbkXl9ykYE2Sq4X92CrpAT4zIv0DYKJz/hf+aR328O7fScGUntfAiXgZCTbizsiUMzBddKJO5qdH+PO3ov//VWikhKupVJYHrm1Q2GECdFwjL4RXMs8zROLeCCCE/5+UYB0Q02mwizlT2v/zHqh0M7+4aPTPevR7Nx/KVWD7V3NfIumIEJlvGCXga9XY3S7kFPI/LROHV1g2Of5NcM9cOeVhoin5L5TbwdQ2uNW6rpMQXXctkWMRLWmb8N/9wItUUBBFqRp8tzeGNjkQW8PeiGJ4XZwegsC0GJ/8SxH6ZECMVD3mB6bUpIOWNIvdXuVth8syZf7RkMEV7t07mNg8YHD1DWBiiODFn/CC7ZZ0l8u8hkrzJst6lGDEkBYRAPPnBrS6cPV0gDyYkS7jPfJdWrPtOP0h4U0YTteKJs+pGmEjdZAlzk6tu+D
X-MS-Exchange-AntiSpam-MessageData: s7/1nt5+DX/OWO1oUmPTJ2wMwA0uoDX0z7Y2oubNFBcRXyFungZpfDckDViuR8GtH5Tf6k6dWbe9pSUHBbU27cATpFBqZciyRhw8DcFozgNEo9XbrgD6wOAR67ImukK5lVLqs02KdTi/2yuxVfe6wA==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: 137de9bf-3e9d-401f-1b0e-08d7cfda97e0
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2020 10:03:25.5450 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +9DR1fMR85MFCQN54oLzAjDXpRE8zn8O64SKQSxzIYuSCDinVkp+rIT25guvKXAFcldHLBZyS37RiXX/TYkPf+WRo0sybK3nTrEM9n0hvsI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4903
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
Cc: devel@driverdev.osuosl.org, Oscar Carter <oscar.carter@gmx.com>,
 Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com,
 Forest Bond <forest@alittletooquiet.net>,
 Colin Ian King <colin.king@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03/23/20 23:45:44, John B. Wyatt IV wrote:
>  	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);

This function, and all the functions called in vnt_radio_power_on() returns
a value, why don't you catch it and act accordingly (forward error code
for example) instead of silencing it?

Thanks,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
