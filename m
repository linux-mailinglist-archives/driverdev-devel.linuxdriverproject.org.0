Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D2345BE60
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 13:44:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1CBF081A64;
	Wed, 24 Nov 2021 12:44:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1srrxaW-vJec; Wed, 24 Nov 2021 12:44:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8677980CD8;
	Wed, 24 Nov 2021 12:44:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C2DD1BF426
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 12:44:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 06F51401C0
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 12:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="JrD1n54R";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="MIEh2Tyd"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pdoaFK1Lk7AB for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 12:44:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 990774014D
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 12:44:11 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AOBNfbF006304; 
 Wed, 24 Nov 2021 12:44:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=GxO4TSafaDLgYTDnDTQKYfzhJmNj6eUKOuXGQiS4ZlQ=;
 b=JrD1n54R1b7sxm7l5s9//ex4RmBHbAY9f/WHkZE/Ao2SjLerppbH7F6iknFQ7wWxjH9N
 OaQYwJmayufQOC2rMn4bm/ziH42/FVxwZZ36L79laXh+r36NGD2Kkudw5cs0kV8zY8Lg
 ocqUSHfcH/p8lMUHcizdRId9YW8gGht+n3tMl4MrN1L/rPNtskxEpTEqwjvIb6BlAUIi
 1mvOaF/D+zjSxbMA7sodASy1AKLaO0yi8Fw9yzt0Y9q3mnuyf1kAETnaE4yDLLMNa/JC
 /e6mPlfLjGrlctgnkudIqpq7uOFPzXqodMTSRlE2PJLl6K6PCom3uWO+K/8vCUNHJnFo cA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cg5gjgm19-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Nov 2021 12:44:08 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AOCepDn114042;
 Wed, 24 Nov 2021 12:43:51 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
 by aserp3030.oracle.com with ESMTP id 3ceq2fxetu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Nov 2021 12:43:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bJE+km87/izYDQ7rJr9K9VPbnKmF40Y/vsR0+9gIvD3ybBpVGMSMmspKLLykDXogSdTxk7gj9txeEPaGgOMWRlWIB+8veFAwTuxTmVRxG8L0tVCEy786juNsybsIkTdBqglSyEfMtATrv3d8ro/kunpQAQqOMgDwCfwoEPRi7M8EZW9a5iDzoNJiKSj+He4e5B7SpvnqGclPrWYg6q/USzpNgA5TbJUF6K4qi+JZctpxj6/dugK/reG7XMkNn23u1HaZ+JInqK4iHc54gF4vJ46VSVm+iPgEfQ0oqawclqNQYIieFpZEXfDlFtHh0Fijl7Lz9kALPSAn+jhochUv0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GxO4TSafaDLgYTDnDTQKYfzhJmNj6eUKOuXGQiS4ZlQ=;
 b=m+/56sMSOw8daMZj7VpjEYj8dRFMRVuWvpHojSUn7A6gaDUZbU9bDYBBkITM698LtmWQfxOzSlV7fXO/7+qJ/wyFQrD6cs4pjfrS1et4SXsRNAmnDJKkiSITKGQZEQzaW+BnWPj2+1SC0A8ODoZ0kuxuSFoxs3NfGh+PJzQPvdmE5M7WS1bzcfJQU21KWKGRwbUP/4W4Ml3cG8LZwR570+ntxCR5xydg7tClfVs6UhW4fbV9W25wVMPoDJWY0K3e37aK8yo57YtR0xPtDljrvO84pqmj1pq6OjXAXs8OF24tcq15wpB4SSHiW3/3/PRJ52wN3YkDsb/1NNmgm5bMbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GxO4TSafaDLgYTDnDTQKYfzhJmNj6eUKOuXGQiS4ZlQ=;
 b=MIEh2TydM+MjOBlWqyr6eMpV0HRbJdqxXzzfpPYGUS0UBt0jaYb57TNvIgInQHamB9pT0m7MWRHp1caFT+a0dIGSwpDeijYXdf6p7GQXacuSjb6peL70kJ8F7LPLfOjlewZeR8E3tuXJwmmS5BUNe0YjC9bn+a8yLZ9Dd6FRbz0=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2256.namprd10.prod.outlook.com
 (2603:10b6:301:31::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.20; Wed, 24 Nov
 2021 12:43:35 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.022; Wed, 24 Nov 2021
 12:43:35 +0000
Date: Wed, 24 Nov 2021 15:43:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH 3/3] binder: defer copies of pre-patched txn data
Message-ID: <20211124124313.GH6514@kadam>
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-4-tkjos@google.com>
Content-Disposition: inline
In-Reply-To: <20211123191737.1296541-4-tkjos@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0066.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4f::10)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JNAP275CA0066.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4f::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.20 via Frontend Transport; Wed, 24 Nov 2021 12:43:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 53352a7a-7be6-42a8-2556-08d9af4807b7
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2256:
X-Microsoft-Antispam-PRVS: <MWHPR1001MB2256278D03D589D25D27E6D28E619@MWHPR1001MB2256.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YxiLPwl/IalLUCujWcDKVWW3RXagesuExoueqJUtwXlYonUSuawQON99Z7hlCKOM5+Ib6Da3EpvXT03MfP8KIU1y8i0gKfDox3gC2xkri9zt6ZFZ1Oa+ct9VfWetI1t11NgAPPHc9LiojVqHntfwTgNxEATPBwRjpg7PGqT8JmOP96T7XSZC0lFrSjKea9eMhIdytn+lHAJYPWl4xagFWmROZJCtl2hc5xp8qsPNbGVDrfyirK69JAcrtFrgPAovhLI2Nm15Sn2qEwhjO8xy+1pCzsOTbJb+IRZFdPbWOPqFujJS71hO3SYEg5k+8KpcFQC45eJLZbVXH+XhyA1ICsQmdPWk5vHH9I0VD51T+hhpOsKj5NahtS6i8KMSJOTTH3Mir1QpOlGxvSReto7thvMbVaJ8NlZMR+t8W5ZMs5BY2XOxOiT1WYQqedSbPqVXikUrEM3Lysagv2a6zW1cot5bGhqLD+3AY4ACUPfLRONgt95xAz/DtZpw/ccE3kpUdab2hKVaa+Cm8/ZS0CopeWxBroA5Q+PbnYKbG6mzTMNTdxIDcc7fT/yKZoiJb1fG/zSi93dMh8Sh3vjmfuUWKavNreLfAaTZAPfz/tIsiOUfaEZQMkdnSIwgyLLBCL1YVQp+lKZQqmx1zQb8d1B1cF3VUemzOMHcgNoZ303knYjcb9uubLPP64nmcPEqPHDjNIe7pHnO+ZcdM0faVGGhEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(4744005)(9576002)(8936002)(508600001)(66476007)(4326008)(5660300002)(66946007)(33656002)(83380400001)(316002)(956004)(26005)(1076003)(6496006)(38350700002)(8676002)(186003)(6666004)(6916009)(55016003)(52116002)(2906002)(66556008)(38100700002)(9686003)(44832011)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4oGq9YMj4NJjScWJpq3qfhg7ZdjVRWdAPMjulzR4S0pt9SSM0UYTMsvLkxWW?=
 =?us-ascii?Q?uCyRzWxmV3M7ebAx5JSsgzhAjVR+iujjfSnTRpzfsoYIsiqo3EXT6ikD0pfj?=
 =?us-ascii?Q?vfxN1Ha0IdlH4Pr1U8k+9XoEs2xeKThQyw29s/qMGgtB7d4thJ76fB9O5PmL?=
 =?us-ascii?Q?1zTtySq7EYdFpLvOzYUCcX9Fj/di1wIXqRBNs1WuLPXvwtdM1JAPehL+vGvI?=
 =?us-ascii?Q?4a4XhkXRsyObSI/cyqVOA2dBRZWF3IuqnVjl5RuaSIjhK72ZxP5tvampr9hj?=
 =?us-ascii?Q?iYkda05D27/nFAkHblkui4nEOvRq+A8L4/Y/SYcmK73MynVk7Yiu3IybpY9+?=
 =?us-ascii?Q?NSNyvyauyZVWh8DtnqlaL+gXiQ1iEY661G0bPtF331e4DPonwalAYBe4TUu3?=
 =?us-ascii?Q?PrdhD3C7fXNhsuaVTNSnthIeh7YJWYrzRBX4gmwQ7l+FOQGAYw0Zwa+5NJ3m?=
 =?us-ascii?Q?OYjvN80HSPd6ytRg7rP59tCsZgVgKkuFqEcQAvqPcDWmokG3sRZFZr92EXo7?=
 =?us-ascii?Q?0yNhwsjkEe89mmcGGg3Q/AsOJ3O3y1Ob4oBQKU/PbFczbBbMvgQzsh1P2Nsa?=
 =?us-ascii?Q?VjJu5ZzwXO7TJw+CrOgj0Hg4/Cb3vpW1y/kfOiH8MyRUpDzJ45oKVaEKXt5G?=
 =?us-ascii?Q?xvbhsns+m4/WD/oF20fi0lDdAVatJhXt0Kz9Ccz1us1vGbLQAMY4l4c1BsRU?=
 =?us-ascii?Q?zHdRtpK5yUplD3dL/Y5sbxNvAMHxXRSVlQCiW11tro56TJpbmJWtyRiEbDj4?=
 =?us-ascii?Q?ysg5AYUzkTwQPADb2Y5Ob8bYFab+dQrGKlQGov/vu7DaPJskinVT300/DDhJ?=
 =?us-ascii?Q?d4EKxj/mSKBDJZZSKcSYOiY/G2j6PKBruUPiihQd4NMho0GM/CvmF2rgsjLb?=
 =?us-ascii?Q?qDp3wAPsf83JG9BSZYZbdXHLzes1AjZ9gxrxFJ92biFFfMQCl+SGnBFw6aTQ?=
 =?us-ascii?Q?PCmoFDwimgrvP1vf+b9+vzsjqVU98IZq4f5xfAQozbHl68o2K/LgLnhQP3My?=
 =?us-ascii?Q?ICWM7COonULkZU9BmdEvsS2ruf5t22SOpbJVxUaTYuY1E3C6Ju1cAsaeSXAW?=
 =?us-ascii?Q?WE8v0N2tU53O12CMnTmbd2vUatz2e8j/zEl5UE8aINH9IBd/11UxXVdiFCIx?=
 =?us-ascii?Q?wOym5222s2sWzny5aFZNUQ8q3yQXpZz5vdLUKXuRue4/q4SEz4Ixl3z5Pmi1?=
 =?us-ascii?Q?S0eZ6FyVa/OmOxdCz0+j7BNgUbJzWmVcTUegsxmMOUtNQ6zwzCf/6x+SWGJC?=
 =?us-ascii?Q?oHtQLJ0lGM+EGwItzZowo7LiySEDJb1GLFvRPZ93w4S23RLY/xSxVbnSmgkf?=
 =?us-ascii?Q?coq9GCSE1RCKrm+fmgmnIsIj4UPMLGdFOp2NbmMjWvcDVp7jOHtThIMCh+38?=
 =?us-ascii?Q?NhqGChn3Wv3qaYpMahq0y3r6vQx1pRbRLu1/8Y/pxWTHTp6xaO7uPDtL62Wr?=
 =?us-ascii?Q?JOMDhsAEPYUPH4RraNUmhw/grx26qXEFyHLwNsZ2BWAj/bfAuQJB6l0UOMQ9?=
 =?us-ascii?Q?DLqT2XaDed4oN0WPN53M/KOe5pjjsaQ2c8pQXt7UucYBwmJb0chU7S7VGudf?=
 =?us-ascii?Q?p5EIryVmy1dKvYelsnGl4mUTZI5/yqAXTv46h8hmoBywRb/qLBh0KvTWLSVp?=
 =?us-ascii?Q?x7IYHLVZeub7vPiXN93N/zz/E/Wf4fhFKAjVAoFGBhOdUcykSedN4suruOIO?=
 =?us-ascii?Q?lvGQn/oQ3nB++bZwclYm3Qb1t1E=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53352a7a-7be6-42a8-2556-08d9af4807b7
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2021 12:43:35.6332 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9M1oTZFuKEX+hWy2xn36zSxUK/u3G692wVYdndq01IFRzoxr2djkvHjvWsk0AlEgD51aM0ckAmTsS4vvHRu0gVhLCAbqyCcQO/3Y5/UTvtc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2256
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10177
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 mlxlogscore=872 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111240071
X-Proofpoint-GUID: e4aixtxB-8ByQd1qxuKkf6Aaz1E1-Z-P
X-Proofpoint-ORIG-GUID: e4aixtxB-8ByQd1qxuKkf6Aaz1E1-Z-P
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 23, 2021 at 11:17:37AM -0800, Todd Kjos wrote:
> +static int binder_do_deferred_txn_copies(struct binder_alloc *alloc,
> +					 struct binder_buffer *buffer,
> +					 struct list_head *sgc_head,
> +					 struct list_head *pf_head)
> +{
> +	int ret = 0;
> +	struct list_head *entry, *tmp;
> +	struct binder_ptr_fixup *pf =
> +		list_first_entry_or_null(pf_head, struct binder_ptr_fixup,
> +					 node);
> +
> +	list_for_each_safe(entry, tmp, sgc_head) {
        ^^^^^^^^^^^^^^^^^^^
All the list_for_each() loops can be changed to list_for_each_entry().


	list_for_each_entry_safe(sgc, tmp, sgc_head, node) {

regards,
dan carpenter



> +		size_t bytes_copied = 0;
> +		struct binder_sg_copy *sgc =
> +			container_of(entry, struct binder_sg_copy, node);
> +

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
