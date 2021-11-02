Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 348E4442F11
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Nov 2021 14:24:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 11FB680C2E;
	Tue,  2 Nov 2021 13:24:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZWflUl9x_PMc; Tue,  2 Nov 2021 13:24:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 781B180BCE;
	Tue,  2 Nov 2021 13:24:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 29F901BF301
 for <devel@linuxdriverproject.org>; Tue,  2 Nov 2021 13:24:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1355340318
 for <devel@linuxdriverproject.org>; Tue,  2 Nov 2021 13:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="RAyaQzEL";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="Pi4GRNul"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wm38iTQm2DC for <devel@linuxdriverproject.org>;
 Tue,  2 Nov 2021 13:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 192D0401D5
 for <devel@driverdev.osuosl.org>; Tue,  2 Nov 2021 13:24:03 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1A2BeQwd001786; 
 Tue, 2 Nov 2021 13:24:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=O9/IzLP6Gip53c+oOvfUk2feilagm+x7jp/Iyynpljw=;
 b=RAyaQzELd+82TfEXOWrsNUoFip9ximf/FXBymy5aL/hFYqa2D691zS4JBOOxX4MU4qlf
 sMxAa7W6iWxesX2ET1I/n+iUqlHUDap/su2FWQrP7kYmjNb1YZG/WVeLxmsXsrLf/7wh
 rmcsoTHcrbSUaAeoiZ5CfaqOUx51UQP6LXUOFYvDo9Y6g4JxUdWSJ0JFv+7+kDZbymjN
 xDKlFip6CFoycGW38DlpvbjyTEhFFXL0ngNECEiSknP6BEAFXLbkI0t9ts8xu5kSiqtG
 IKIEks03q2f9y3PnlZ/5kIqWBlHgoiVPASN3oelYsgbkE8GUQ6grSTG7SmatGs0lH5rs ew== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3c27r5f0mk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Nov 2021 13:24:00 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1A2DFbGV073035;
 Tue, 2 Nov 2021 13:23:59 GMT
Received: from nam02-bn1-obe.outbound.protection.outlook.com
 (mail-bn1nam07lp2041.outbound.protection.outlook.com [104.47.51.41])
 by aserp3030.oracle.com with ESMTP id 3c0v3dp74c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 02 Nov 2021 13:23:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JW8te68yRsTVlEm6c+mImXeSuKmVtKK/3SWtS4HduQb4IBfm11NUDJNwKv/+lW/fxLc0zLNc/Fq+kktQ46qtSUNoULOFjfdNbaTVQnpzwxaK3/XnOnNIpw5/GPK2H4s6F142lPCFxTo6/diYf1dEoPc06GYwoKhAERnLBqjc6YXEzIWHWNvI3UicSSdTr8FFJ11Gb8UqBjSyAlTJ1KTWe9Zd/s+ysZvIzO4hvrCK988/M8oMPFBjD2pgJFAC47BgEWKv9F649galYX66COuHW47BHITxlIU2ZuZZMxYuTsU9D2ndJuCMwOsJ6wx2IoGIrZUGqfYynQqKvpReaOZPSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O9/IzLP6Gip53c+oOvfUk2feilagm+x7jp/Iyynpljw=;
 b=Y8j8mzoaAW6MNIY9mpTOWHy+MCTCU90UYC1ekg4ptSFLdAj9PoMiv3kPdart+5wY8edhUWVZPrr+9nfyxQMCdElLHTmEb1iP4nhZOpT1P2Fa2xoZMt2OLsCLNBnHcuRCj2/MZtxDMczxhmqh1cRIo7tWj7N9FOL2Kg2ySm4zPvfM+/tXS8BpDBNkKViqIw8tFE8sdMqI1GBQ+OnmeOyWqffNT6uBFrYLV3LwG1l9X5t7C9Bg7e3zTyiL3minXVpfL0LgOSb5ACLtZtDeWq4gLYih7z2+/p9sZREEyK5nEahOL9lldJ5fNLzcP7GflEFO28WIv4UYKp04/uJ88XjxGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O9/IzLP6Gip53c+oOvfUk2feilagm+x7jp/Iyynpljw=;
 b=Pi4GRNul0PHForP4jNMpPM5mnOBWzMbUEOuBZTQvT3U7BzD/squq99+oM9mBYZki61zwlQskr/lb7swAiUKGjMcsW/uP8S1n8e5rPoSNaYjcZEx27r0YwNVgqpWDkOYnL6IQunbir01wUGvxJGfOb7FI7ciETxAJJUb3FXhkjw4=
Authentication-Results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1565.namprd10.prod.outlook.com
 (2603:10b6:300:24::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Tue, 2 Nov
 2021 13:23:57 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4649.020; Tue, 2 Nov 2021
 13:23:57 +0000
Date: Tue, 2 Nov 2021 16:23:36 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH] binder: don't detect sender/target during buffer cleanup
Message-ID: <20211102132336.GG2794@kadam>
References: <20211015233811.3532235-1-tkjos@google.com>
Content-Disposition: inline
In-Reply-To: <20211015233811.3532235-1-tkjos@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0017.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4c::22)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (62.8.83.22) by JNAP275CA0017.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:4c::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15 via Frontend
 Transport; Tue, 2 Nov 2021 13:23:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c6b4bf62-e630-4ddf-5d9a-08d99e040631
X-MS-TrafficTypeDiagnostic: MWHPR10MB1565:
X-Microsoft-Antispam-PRVS: <MWHPR10MB1565E12CE54687420E0102F28E8B9@MWHPR10MB1565.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wjUPHjgdKLcb803BUB85YjP0KtsyGK/LcTsvEONeWwatzsRQMoD9YHFBRUOg288pjYydGjymTBcTdSJLLyZASnNIgZhFFFxbtaYsNfNGH2fKBbWu8fpcfV4aLWWxch+/WDDZ56XtKJgyqg/3CM4LWi0dm/tCv0DUtRxZ9Pl+GfL241Aa/Z+BRSFF87Q7oD+CzAWoy/6FjSb88cJWnhrtkweiyxpO1mzgxS81MLgrZr8nx3UQheBRr4b/uTn7S4C9ZhjMvPeXy8evkgtI5o/g7HZaWb0H5HIheK8XB7G8cfhHw/5jYqtZQP0XAB2y3DeFIESZw6GomTd35ekF8zkoG/thxdS5N9CiyVA6w0PmXBgQTC3KrOUwULenhNo4350ovIzGKNiIA4NpR4AybOgzwGYhkqTDSOZ6RLcrtPqbANOGiDOFHafXcfGzAa1X7I5qYELw2ujYukrnFp8KbV9k+/9QmxGTuFaJPvCRDgaEK3ur0f+GsTlZWOefOnwwBYkzcQCRMhuHk7ejpdHCOg876s0shTH3GfsDFc0yuVPYa8XMvFQ3mt1Y6HreMtT1zeCmoK6kW8grvvVdSbQrZRI+4SsEFTIVOB8sD4CUVcJcE0Ca6vrQGfmS8F1EXVhxB/t/3TbahNfBewH8qq8/Hn3Ahlcco0MyomLBcJFkmjDPIe8jpOwmOlb64YBC6sG+ocbx0lyrOUd1RnOjVVLpBOjYDw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(9686003)(26005)(86362001)(956004)(7416002)(2906002)(508600001)(1076003)(66946007)(316002)(44832011)(66556008)(8936002)(66476007)(9576002)(6916009)(33656002)(4744005)(6496006)(4326008)(33716001)(186003)(38350700002)(38100700002)(52116002)(8676002)(6666004)(55016002)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bFYdTqQ0D8y5FxheNjlHMahcpy1wA09MDZfC/LDCBQ4VuHMnDw+CgFFu4bdl?=
 =?us-ascii?Q?3wTE9t9OOFuIuubD90bFyIJB7sRkTwsRHKSw5pRrAPZkRwJHWvhQJpcTjiuG?=
 =?us-ascii?Q?56v0VHhjgPig//zzZvMw9CIASwAMMFOQ7mGwK/u6xC0vu0ZURjov0ipn4x2q?=
 =?us-ascii?Q?QZxbQRJrlN3Ad9c9ADkQcZN7z0P1FswWvvqKcpsDL9Ng94slssdpNkq2Khtp?=
 =?us-ascii?Q?jZmQ6gk9vQoU6/UJuqCE9GWWEsIXJ/SlNw2A7dLuaYhIqb2TxF66JF9Si3q9?=
 =?us-ascii?Q?KYaBlI3YlF5lYQaO8IgS3EnUEHrGGA+Kpe589olzASY/uZD3Xt1iYT+6Whq7?=
 =?us-ascii?Q?+2coQtofEHv9EqZRdwMcJ+rsNuRf8D+52gkPk8SZU+PiE0puxOnXpT6xtKDu?=
 =?us-ascii?Q?iCvyrBj/9R8q4u9HADFvSkw3HLy8bjHC7BpH7PoNZEfKJt+gxMNwumJCkJ4H?=
 =?us-ascii?Q?MCRE2mhOcX3x8LCPHKSlsbLJuCYrA0PDa/77pxX2DQWRxh2tfj6iceFR0BAf?=
 =?us-ascii?Q?e4HXRr4jPcBFy1kgJDjH0hNyoeiWiOP4SkeY5o5BZWN0VcR48fGZgT/iEBcr?=
 =?us-ascii?Q?ytrrhNNJVwTRwingiRqq1rOMP676P6kIxrwTi1a3b4rY3mFigguKLsPit5F2?=
 =?us-ascii?Q?z5XnJ0hI8p36zeywDjHUTnjsFeiOoUmSy+Vqx6sqHtyLHckewSIqWOnE/KbH?=
 =?us-ascii?Q?IGemG3XZ0FijbgajkNG3SrrO3b6HxpWuJbPaU1iPTErig8tZHO6YUP8Sqr8H?=
 =?us-ascii?Q?gq9oaKznbFElP6I3hkb0MKx3OqtbjrMydYu9j3wNG/u/zMKg4gPi24MYlOTD?=
 =?us-ascii?Q?E/hSxs3qYZIdbxickmQsFwurQtjH0G4WBvFjo9cJpjds+np5ZIjkiysy6Iwo?=
 =?us-ascii?Q?5G5wFXz7XtleYZo9SATWWWjT/I9IudESBR+D0EL0hrmBoNj+kh/DFJ1tQuo9?=
 =?us-ascii?Q?jcJ6GQoCZwigr95EXz8QrfMuOHpQWIX7ZkuGW0Ngnv7xHKV2P8OZMGvWR4YO?=
 =?us-ascii?Q?ixlDiQM0Fb6mhukAY/ryUVeu9UwYvfX2TUpu4cr1kJ5fExlePLomvoy3QfBK?=
 =?us-ascii?Q?6jG5aPMqS2bM7l0YaSsKZ5tgCwgzUrxuJmMNw6Uorvv+BaFbqS3hitCOGY1p?=
 =?us-ascii?Q?MmWTQh/CNsyP3u0rfpwysHnN/+4PCWmzx5K86XrLNlXtrJNaYpk1Y/3fi0Wx?=
 =?us-ascii?Q?1pCGCQrspSvYnrhES+2bk31dvp4+2iLSO/8F1ViEyYmW7t0Zd6ej0gdXG+uV?=
 =?us-ascii?Q?lPe9NlbURPkbVmjt9Ah47q9tpTSsBTQqtUkisohVfvppd6bXA5jFp4RS4mY7?=
 =?us-ascii?Q?WrH3VHf5svCvSmL/2Uoq4mH2sxICRLwJQM3AbiBI1O5v9cJzIjYBFRgvD4qP?=
 =?us-ascii?Q?tY0CoZDWR3kNQRVPzwvanDuMzWzuDZkwrUXii80BpBnAIJDqK02w+KumKVed?=
 =?us-ascii?Q?pPlwPffwZfIBVjf8H5y9DAIzcb2bRfOehTh+oWNaLyj0VEjN/E2aoLS8bdt4?=
 =?us-ascii?Q?4jOgK1hKYSo4qCN9ZpiRzLHEq8ykqchdsR3UJLSD+Q65DaFcgwCMusmrMOTP?=
 =?us-ascii?Q?Eoa+KcqL1b+J0xWcagQk/zRI7OpH39SdxwhKv4zW/m4CiFx7L6Jdiou2sPFf?=
 =?us-ascii?Q?qa9BhsfKYI+70cXfFvaexBhWwAdYibll4curdQd6GPovGyQuosM+66/k2DW+?=
 =?us-ascii?Q?GhONoA=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6b4bf62-e630-4ddf-5d9a-08d99e040631
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2021 13:23:57.2760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nvmG2/jwuYrNconN5gRsuGUzL2xoHWawOqyCIjbJhpQOO7gXXfGkSaFhmyXZ1YzNPm42NP4PxJkQafhpBkPTdSjh4Y4mdTCaV6FCO9aiLoM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1565
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10155
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=679
 mlxscore=0 adultscore=0
 spamscore=0 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111020079
X-Proofpoint-ORIG-GUID: 8j4qCOCfcB1rjMDQB58bKiQ4fF6aS799
X-Proofpoint-GUID: 8j4qCOCfcB1rjMDQB58bKiQ4fF6aS799
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
Cc: devel@driverdev.osuosl.org, jannh@google.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 15, 2021 at 04:38:11PM -0700, Todd Kjos wrote:
> When freeing txn buffers, binder_transaction_buffer_release()
> attempts to detect whether the current context is the target by
> comparing current->group_leader to proc->tsk. This is an unreliable
> test. Instead explicitly pass an 'is_failure' boolean.
> 
> Detecting the sender was being used as a way to tell if the
> transaction failed to be sent.  When cleaning up after
> failing to send a transaction, there is no need to close
> the fds associated with a BINDER_TYPE_FDA object. Now
> 'is_failure' can be used to accurately detect this case.
> 

It's really hard for me to understand what this bug looks like to the
user?  Is it a memory leak or do we free the wrong thing?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
