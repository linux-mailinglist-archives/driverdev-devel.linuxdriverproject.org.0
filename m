Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B04086D3B9D
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Apr 2023 03:54:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E45424109B;
	Mon,  3 Apr 2023 01:54:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E45424109B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ap8Keex5ti2H; Mon,  3 Apr 2023 01:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4393F410A7;
	Mon,  3 Apr 2023 01:54:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4393F410A7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CC0C1BF36C
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 01:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1316040441
 for <devel@linuxdriverproject.org>; Mon,  3 Apr 2023 01:54:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1316040441
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XyqxLRxIS68R for <devel@linuxdriverproject.org>;
 Mon,  3 Apr 2023 01:54:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5A33F4013D
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12rlhn2179.outbound.protection.outlook.com [40.95.45.179])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A33F4013D
 for <devel@driverdev.osuosl.org>; Mon,  3 Apr 2023 01:54:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ghS9ttFgAYAlm/IJAy/f0inW8258H2Fo8htaKsRWcj3zgufeL2Ocsy80R5vr+XDSiYI67ZyZRZlPK+ympsf3QUzpSm5pUGFY6+kOmA4ACaZApzF7/WoRWV5K8dAWc1LUAcGCtyOptpsoy/B4eyRL73ToEyVbwsOVRW9LRvblxxRJE1BAKNEwhdcssfCBKe6nUAcdA4UrYe0Zi0HfAqKh892FCOXlHWqnpK7csb9wpDsd/Ckl4aOOi3e/YnhJWnpNJVx5iPYqK/nJEiScpyoBOU8IeYWhoWfLirS3MrU0G/TuzZNhpQN4jsHiSZqzeMZ5Gn7wv2Ys6csY8qg9Ua/pEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gHsW1+xVmpse5DvcUqJa9N1DCECBTfxB1Tv+EUY4KH8=;
 b=MlrPFYNSnvOufF/gLj47ckgCWfi+BYA/519rYgRWowQJW3RqrS+PY8hkc4j03VwqHuUqTWxcc3//Y4pEeZPgbDqsDahlYn9Bt8Nje3SsT+9yrouMDD5Weqkl6gxED8gTNomUfeF7jEbgS7f/vBvtWjAO3wdSTS4bkwyvL1VcSDXFi4w4XBRkjDvoZvzI6tAmfJxpZKukPZwmkd8xLwzJBznVAAAGMFnCXgG6b2cpeTY+MAMCWDXtRiSDoD8UfNQA+nHpgGCrEATd62J/meGHft3w5svDBxCy1tMagIZ/6KIB6ZmEsdgDJSokMS3mCGaQq+ssHpBR7IbRIAzJL5nyBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 8.42.207.81) smtp.rcpttodomain=driverdev.osuosl.org
 smtp.mailfrom=gmail.com; dmarc=fail (p=none sp=quarantine pct=100)
 action=none header.from=gmail.com; dkim=none (message not signed); arc=none
Received: from MW4PR04CA0117.namprd04.prod.outlook.com (2603:10b6:303:83::32)
 by DS0PR01MB7964.prod.exchangelabs.com (2603:10b6:8:148::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6277.21; Mon, 3 Apr 2023 01:54:34 +0000
Received: from MW2NAM12FT011.eop-nam12.prod.protection.outlook.com
 (2603:10b6:303:83:cafe::86) by MW4PR04CA0117.outlook.office365.com
 (2603:10b6:303:83::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.44 via Frontend
 Transport; Mon, 3 Apr 2023 01:54:34 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is 8.42.207.81)
 smtp.mailfrom=gmail.com;
 dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=gmail.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 gmail.com discourages use of 8.42.207.81 as permitted sender)
Received: from mail1.jas.com (8.42.207.81) by
 MW2NAM12FT011.mail.protection.outlook.com (10.13.180.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6277.26 via Frontend Transport; Mon, 3 Apr 2023 01:54:34 +0000
Received: from USBCDPSMBX02.jas1.ds.Jas.com (172.29.10.52) by
 USBCDPSMBX01.jas1.ds.Jas.com (172.29.10.51) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.26; Sun, 2 Apr 2023 21:54:14 -0400
Received: from User (45.81.243.115) by USBCDPSMBX02.jas1.ds.Jas.com
 (172.29.10.52) with Microsoft SMTP Server id 15.2.1118.26 via Frontend
 Transport; Sun, 2 Apr 2023 21:53:55 -0400
From: "Mrs. Sharon S. Chao" <sc894284@gmail.com>
Subject: Hello Beloved,  
Date: Sun, 2 Apr 2023 18:54:13 -0700
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2600.0000
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2600.0000
Message-ID: <d92d26c9-d949-4a90-8b24-5e5e043d1f98@USBCDPSMBX02.jas1.ds.Jas.com>
To: Undisclosed recipients:;
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW2NAM12FT011:EE_|DS0PR01MB7964:EE_
X-MS-Office365-Filtering-Correlation-Id: 1baae25e-b96f-4608-9dbe-08db33e65f8d
X-MS-Exchange-SenderADCheck: 2
X-MS-Exchange-AntiSpam-Relay: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?windows-1251?Q?3RMGr2NWNotNI3GjiqyYoGAfTLkge3n4dmspKjD6g5/Q2/Q4qtlLbq+V?=
 =?windows-1251?Q?uQ/f0afB4QWPThjVybv63aEst5E7BvBADvm7WVV4g20IEnVHc5WN1T3P?=
 =?windows-1251?Q?ZrXphGAXJrywW1U6HISWlcC4UrbIHvs8CpN1RKoX8Pn1qP8kIHUQZTNi?=
 =?windows-1251?Q?RJ9fLqJ4Y+Sqbtbp+86CLkKLl+ApRG99fsJoGtCcrXgQ4l5mrVSzAdmu?=
 =?windows-1251?Q?jDRUyRVtmyaKf6rvPsWRT/Wrj6geq9PaCN43igfAz1teeSXIk/yTuyRE?=
 =?windows-1251?Q?jgfoWXL3jj1ly3DObACLQpzSjBkt2chnW5bHnCUlmulb+7+vC1wBxyUv?=
 =?windows-1251?Q?xoaM0MY5DCUptf/93UtIQrTqWmnTVB+YCbWd1yaB/fdn5Y3ETYP91tqW?=
 =?windows-1251?Q?7pTM6l9eUHrx18uk8Z0CejcW31Lig88tsZBmzPmrhveP6adEjeshNuiD?=
 =?windows-1251?Q?DW5z+6srjHf3Fy1l71a+6MSFJCdsB3d872k1Xbs9ADTLzB8zrXj41uI6?=
 =?windows-1251?Q?dpwDJSvlHjkTWcvG3J5GNfEKu/9xn7p8VzqtkSialyZSZrE6dkvycRTm?=
 =?windows-1251?Q?FIXXkKDGekYh5a22h2Xn8imxjnZGVKAtzOaU1TMwsVHxxHBF80Rvqtv3?=
 =?windows-1251?Q?ZC48Vr/4sblPo7V9HA9/S5y8y+52W8hsL2bXvaRM4AIAGz2pDMwzzTdb?=
 =?windows-1251?Q?NkidJWfS5grEZVSbg1OZJQFGc3DUlQrEiJ12Ie3gLn3/KoGVwWkJvIOQ?=
 =?windows-1251?Q?SIOZCz/7kn8s7LMr060ekshVQ5jZB1LOowK75wrGojmYqMVRvxRLdgp2?=
 =?windows-1251?Q?JaN3NKKgCAea5uYazF/uUrAIrPKklL9QmHXWc2U3Bx1V59GmPFlVreOv?=
 =?windows-1251?Q?DFJc7M82SMjABFLZTRBZv49a5NhdINAGF1zbkNa9nO1krdsGjES8fX7f?=
 =?windows-1251?Q?meyqh3BAfy0zi4UhTyvqf33m7/PKi2or/szu8142+Fm6Q7XoGLtZV/o+?=
 =?windows-1251?Q?i9zlDmprYglIX97kCM8s4Rw2C1HCL2B5Z6StnLD0fZBLtSKNoBqf2Yvd?=
 =?windows-1251?Q?q3s8er8Gpurxes86Nx3VwFBwq5mbJXKEuk9k/Dhs2Jfxm2F254FTJeYk?=
 =?windows-1251?Q?kTESUo5u8608mbHgWlep9XsSA1oDgyfXJIUakozexHRvjhTHWa/K1eJg?=
 =?windows-1251?Q?6owy5myHYDGTYdQx+F5v6e4SoePuCTYj?=
X-Forefront-Antispam-Report: CIP:8.42.207.81; CTRY:US; LANG:en; SCL:6; SRV:;
 IPV:NLI; SFV:SPM; H:mail1.jas.com; PTR:InfoDomainNonexistent; CAT:OSPM;
 SFS:(13230028)(4636009)(376002)(39860400002)(136003)(346002)(396003)(84050400002)(109986019)(451199021)(40470700004)(40460700003)(40480700001)(32650700002)(76482006)(498600001)(41300700001)(356005)(81166007)(82740400003)(2860700004)(316002)(35950700001)(336012)(73392003)(83380400001)(956004)(70586007)(9686003)(6666004)(3480700007)(70206006)(26005)(31686004)(82202003)(86362001)(31696002)(82310400005)(2906002)(5660300002)(7116003)(7416002)(8676002)(7366002)(7406005)(8936002)(242984002);
 DIR:OUT; SFP:1023; 
X-OriginatorOrg: WWJWM.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2023 01:54:34.0418 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1baae25e-b96f-4608-9dbe-08db33e65f8d
X-MS-Exchange-CrossTenant-Id: fa3414ca-197f-48b7-8ff3-892f8bdd8e93
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=fa3414ca-197f-48b7-8ff3-892f8bdd8e93; Ip=[8.42.207.81];
 Helo=[mail1.jas.com]
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM12FT011.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR01MB7964
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=wwjwm.onMicrosoft.com; 
 s=selector2-wwjwm-onMicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gHsW1+xVmpse5DvcUqJa9N1DCECBTfxB1Tv+EUY4KH8=;
 b=bwOsYvLmghy5PEXhaLnwfHSwe1aN9v/peS2UylacGWcyBRtiBB2YgYkd49PFuxgI7xGIfxnpMPHYX7Ud45/GwITImKdiNRkWrqborDffHK5vXS0q3iS18bHhqwjMIapCkhcf27Q//HiIcWVNQzsHKqxsIrJo9+w8Ys1/StnMZHk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=wwjwm.onMicrosoft.com
 header.i=@wwjwm.onMicrosoft.com header.a=rsa-sha256
 header.s=selector2-wwjwm-onMicrosoft-com header.b=bwOsYvLm
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
Reply-To: mrssharonchao@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Beloved,


I am Mrs.Sharon S. Chao the wife of the late Mr. Richard Chao. I am an Indonesian American Citizen. My husband worked with the Brunei Shell Petroleum Co Sdn Bhd (BSP) for twenty years before he died in 2010.

We were married for ten years without a child. My Husband died after a brief illness that lasted for only two weeks. Since his death I decided not to remarry or get a child outside my matrimonial home. When my late husband was alive we deposited the sum of $15.2 million with a bank which I will tell you later. The bank management just wrote me as the beneficiary to come forward to sign for the release of this fund or rather issue a letter of authorization to somebody to receive it on my behalf if I cannot come over.

Presently, I'm in a hospital where I have been undergoing treatment for esophageal cancer. My doctor has told me that I have only a few months to live. It is my last wish to see this money distributed to charity organizations, because my husband, relatives and friends have plundered so much of my wealth since my illness, I cannot live with the agony of entrusting this huge responsibility to any of them.

Please, I'm seeking for any honest person who will get the Funds from the Bank. And use this money to fund the poor, orphanages, widows and charity organizations.

I took this decision because I don't have any child that will inherit this money and I don't want my husband's hard earned money to be misused by his greedy relatives.

I don't want a situation where this money will be used in an ungodly manner. Hence the reason for taking this bold decision. I am not afraid of death hence I know where I am going if I die. Due to the state of my health. I cannot communicate by phone because my illness has affected my throat. I prefer to communicate by email.

As soon as I receive your reply I shall give you the contact details of my lawyer who is conversant with the unclaimed funds and my present situation. However I shall forward to you the bank details with the letter I will give you as she will be the one to assist you in laying claims for these funds.

Above all, I wish to assure you that the funds in question are not an act of Terrorist Funding, neither Money Laundering nor Drug-funding. Thus, the transfer will follow the normal protocol of funds transfer, backed up with its papers so that you will not encounter any difficulties/problems with your Federal Monetary Control authorities. Contact me with my private email (mrssharonchao@gmail.com) or you can drop your Email address with me .

Thanks
Yours Truly,
Mrs.Sharon S. Chao      
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
