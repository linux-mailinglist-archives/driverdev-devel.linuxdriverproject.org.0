Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3678D45BDAF
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 13:38:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05C5040242;
	Wed, 24 Nov 2021 12:38:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VgEDUXEKwZ2y; Wed, 24 Nov 2021 12:38:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F09EB4018A;
	Wed, 24 Nov 2021 12:37:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A69051BF426
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 12:37:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 951DA60787
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 12:37:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="oa9fLBxN";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="uzs2xi5e"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NCTGYhwYANVi for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 12:37:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6038C60618
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 12:37:49 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AOBiuCt012791; 
 Wed, 24 Nov 2021 12:37:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=Ym4++ZCw/gkzLFQtOP4Wlh9kdGrbT3nkzEcPoGt18nI=;
 b=oa9fLBxNz4S/QS2yHmhDLjGV3rbeZfdqVGnMosCxVOqpAMYVPw+UPMjo0+7nmUcFn0mg
 SPA8Qf96x22DJeZqmKrkLAfi0LYZ9hUIrpmnipOZ7jaG9JpYTkXRMnM0ygbwbjvdU+Gj
 0L1LQk955kWRv6+ykaXrhduPioNYcWV0ZCyVkfphD7xMHZYwDHFHPBJ8krm1/PUuNUSk
 GmST8y99egdWbu+XNBf3NN9SaGvZk3S6C8l+/X8LIwp5eIjrI54xpjrf4Jq03Mx7KIq8
 jTa6+qrP6KqHOYfERUME79qst6PkhWjCgvcnifBhEz2QiNSRCc1EtYpWIc/h3RSXIGWE Qw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3chj7g15en-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Nov 2021 12:37:45 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AOCV598065973;
 Wed, 24 Nov 2021 12:37:44 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2104.outbound.protection.outlook.com [104.47.58.104])
 by aserp3030.oracle.com with ESMTP id 3ceq2fx5nq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Nov 2021 12:37:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ab61FHXgLO/Y3VQ/0zCH+DTZn3BP9r2aCA/vHsn63bNv8NLdAdiysTqyNWDcUJjFEr4sZzlvMZQ65iAHupG2PldNfqdWN9VVzntUqbq8HpvKzpG6b9pVbQW7cxUckrx+Z3wEeawcHRbJd/9RKK6t/W/IUM+kwBse98gaRwVV1FjInvo6hgwepGoX5hrdjif6AXPYcqLud5YkcfE4j963COZQ6YIk+NTrjxfy9SA61xz5PvQ6Mz5DbCwZjWMsekDytkeZjc2EEk/UxsJgDq+u80qSgfOnoE5nC3OW1OMjei1Uhs/d9s/0s/PFDZUcQcn30yVnPgS7kuVkKJqthNK3Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ym4++ZCw/gkzLFQtOP4Wlh9kdGrbT3nkzEcPoGt18nI=;
 b=hbm2haUjl0M2nNwxIX+NY8taEFB+RN6flmXYW23W7zmrrjOJACT4xpnVD9hRRGsEIXZVndiBHjdQ7S0hYhCvPfciuz0pPV7omz5ezvS9K3CvjJQFpFQ/56CBaAJBtBuIsLqddl0vKqdwMMBI73sk8I4gMt02UYyNuoWoRCU7weKEXAnS5kdrfmI581Yg/wplN7tDP1aVMjDOjfNu32rP5LHgv2iKzy9uA/3bG8JRHECwRvYvnrd8pyv3KXeRrCLe22yIYgVfTDfJVkogG7IQdUkhic3hjUcwjXgTdBw7L8jIlt1OETTHCeIS83SQviYlhLWi6ti6HKG+JBjd98wIew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ym4++ZCw/gkzLFQtOP4Wlh9kdGrbT3nkzEcPoGt18nI=;
 b=uzs2xi5edI7btJBKodACGXCKn8xFxHGjkllayebV/WbcFuMqihjf8Ojvjdah2Qhl4hon/U0rbawtoUvr1AMuFYGio5hhZ0qECRNJLXv+Qo9mOd7x4vP6lYmIgLZia5wsbm+UobAx2E9ab1CKIm6JLSkQ923ro3h+BtDor2l1zEw=
Authentication-Results: google.com; dkim=none (message not signed)
 header.d=none;google.com; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MW5PR10MB5713.namprd10.prod.outlook.com
 (2603:10b6:303:19a::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.15; Wed, 24 Nov
 2021 12:37:41 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.022; Wed, 24 Nov 2021
 12:37:41 +0000
Date: Wed, 24 Nov 2021 15:37:19 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH 2/3] binder: read pre-translated fds from sender buffer
Message-ID: <20211124123719.GG6514@kadam>
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-3-tkjos@google.com>
Content-Disposition: inline
In-Reply-To: <20211123191737.1296541-3-tkjos@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0031.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4d::7)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JNAP275CA0031.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4d::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.21 via Frontend Transport; Wed, 24 Nov 2021 12:37:34 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 137593b9-b649-4611-73ba-08d9af473466
X-MS-TrafficTypeDiagnostic: MW5PR10MB5713:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MW5PR10MB57139F25894861B912DDC5C88E619@MW5PR10MB5713.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4O5LPeLoODlN+pqmiDCn80pq+/3KqQ/M/imAjOLOJ/Yb07I4FvoMABJSK58dP1KJ2TcTmzwc2CsDkpE0U2e6LJ5qNiaewW0OorwzyltLlIUhukzPqcQNL46ggAjWJ9E7KXt/UYNLgpj4KZJGlUfX/WbJV/YU+WDkuuWCvbeSxTD1KSHWTwf3fqidnZU6Awd2ccOCnPKnnfelEt5tVR8ufInD2L/awcj8SXvsUv4xkXDU/8DpZrOAeZm42f7oimfmIsHrPc8z9D8A0iNuiWn4oKXy+OwmXniOc+LVMz1BYzppmomd7szTaa4XGpXMmuk/HGv4MeukyEcdsL4YAe3fPigm+fj0Qn5rjXMYv9lzWFkYt0D1Ov7S/hBWe/cdvvcXkOx7yuOuWtYRfO9cueAl+GFnXrk9V4iqA2r1ekg7pIAyBBW+Pcguv51KCojnG5qJ1HRw+MLMAZmoJ/AVmF/axbkBrR3EXuGwcgTPxIv0JW2QvBTuFuB2HO3+w6OheoeXuuWeOOwlrKuJy5k7NXbldWrzUVvxl1cSZ6mM6NIIxCHeSE0K5jpwOviP6Z8l+4/3RGDOcwsntKtmzWAwEC751N2NB8V/WZJ+2tZNVdtfyOOk1BoB3/ImXzib6N8lRbrKu8zuWx4Oxw77AJERBQ3Hz+7YKi3wG+zhTdb9gzBFAbpoB6n7j7B405yhDMMFgTKR0C7Z0+YOdpps4xllaQuiTg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(9576002)(508600001)(8936002)(8676002)(6666004)(26005)(316002)(44832011)(956004)(83380400001)(9686003)(5660300002)(86362001)(6916009)(1076003)(2906002)(55016003)(6496006)(52116002)(33716001)(38350700002)(38100700002)(186003)(66556008)(66946007)(66476007)(33656002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lEpU+7Q7MGEpsxrc8mmY+6u6848HocHl6fvz9v22Dizfin81FOIrBVtw5JI9?=
 =?us-ascii?Q?BY78dezeWjG4kK9skJbHkdqxfJFq4kBD1w3/b8+ftctSkUK0b7I/XHTrT89k?=
 =?us-ascii?Q?Z9RIXwAddiP3Dux1k+vR40rfKMlUPVOddHs3rWiMMNB+Yjde2+XWbUzpEGTh?=
 =?us-ascii?Q?DoBIbxVqnuh0xPI04lOyAv5/fnEH5vvGP+mWI7fZTMdcCf05Fb4TFMXwuA0u?=
 =?us-ascii?Q?50UGtg63ejn3WxOj/M67DHTNidl5AfbUiYquxN2eNYmkbyn1acFSfxtHjurD?=
 =?us-ascii?Q?g8av0bYLCuGZzkv1LzGx/njWjRsIomWoBj4UbdcfSsnuwB7Ka2x6wkOP9r2q?=
 =?us-ascii?Q?nCJfXMX4Bx4J/mKzqGEKVTOrzFnGS0aVPld1Dv8IWgdDsW1pfZsGvwuC6nGn?=
 =?us-ascii?Q?c+iuOnZ2+N2BpPW2wkPl86fBurAle/NO/xKcBsLCDcdFi2AFNT3mGyp1K+df?=
 =?us-ascii?Q?TqI+kfnCdF5cw+5OS1Vcwm+ANaNUSvkbc4zjPgd+WOShu1KcXFTLCt4KW2sa?=
 =?us-ascii?Q?NcRflDUfvrRWU0PKfVv6ebuqfWqemnoAHXxgVlkzee8vSkuQ6yClPhM/VB1S?=
 =?us-ascii?Q?EYepSuRBp3DntRlCV+dma0hv2YVWdhHcR4EzebIOZ2iVmkTdEP66u3sX+Tz+?=
 =?us-ascii?Q?iyQYG9i+3Fd2HGs5Dj719tDr08HBoMAYRMEwMiEt0z4+CEv4V87rYrgho7M+?=
 =?us-ascii?Q?OzMLlZ7ffoQpGqA2odEdUQ9EEzxsfni43RFbQvLSoNcYB5nHDpWYTVJ+2CbO?=
 =?us-ascii?Q?IPEXHjyMLbrWkJGUuHHuLaSMJNFEG/l3ntT33yaX0QVPuHVk/ATuG3+UMes4?=
 =?us-ascii?Q?Ld69Z/jj+WyxXIzDu0uthAtCGy+6czP0gvndNvgNn1T2UBtOiviu5KRGenIO?=
 =?us-ascii?Q?3cE1bKghhOscawQKfZXH19tJ4CLsT/pWp7KyKj/RwO/euS6yKZ772SH9pMeu?=
 =?us-ascii?Q?CO0SlKd9ODvKRXkON+sjVqguzmUjvexnOVa6wN30qEhDSAbTNKyZ55XcpNsV?=
 =?us-ascii?Q?4CwBXWcF/NHRLW5XFKT6mq2Y0m/vPc3QKrYlqkxtjOh8lcrwinzZFS195UQH?=
 =?us-ascii?Q?mcZFpFdNq/gi5KIwB9dDOHN+aJutDAOsHvXSF6lzIBmLTybm5+vZtL2a/ZQi?=
 =?us-ascii?Q?QGlJACb4ixbdZJq9+4unjm7IGxjWARZINtJ6/HDJDh7AZsCKjOz1yvkXy7id?=
 =?us-ascii?Q?3fov8xojNHjd/7+Iaptd7P+PHwvzqATRlDWE0WADOykdIoWYVC3r1LeMUrEw?=
 =?us-ascii?Q?CdLcRO7egPCRf6Wz0lSIBMUNJ1ExszPfDpugFEnQt7EHMH8J8J1ZrRl/7WRs?=
 =?us-ascii?Q?14lTvLDnl4N1uOY3Gto8+DWR?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 137593b9-b649-4611-73ba-08d9af473466
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2021 12:37:40.9972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yWqk6smELWL39y5ytPrFKAiq93Q3nphwt2CTNvou5fnmcMITCB2sM5Q4wd6jfY8liSSVOVqufOVtBTC7v4fM8VZdPkfDF1ryrCpCp6ZHtaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR10MB5713
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10177
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111240070
X-Proofpoint-ORIG-GUID: NiSeaDl8giGX16aNUfCEap0djvomBQAp
X-Proofpoint-GUID: NiSeaDl8giGX16aNUfCEap0djvomBQAp
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

On Tue, Nov 23, 2021 at 11:17:36AM -0800, Todd Kjos wrote:
> Since we are no longer going to copy the pre-fixup
> data from the target buffer, we need to read
> pre-translated FD array information from the source
> buffer.
> 

The commit message is really misleading.  From the commit message it
sounds like the commit is changing runtime but it's not.  What I want is
a commit message like this:

  This patch is to prepare for an up coming patch where we read
  pre-translated fds from the sender buffer and translate them before
  copying them to the target.  It does not change run time.

  The patch adds two new parameters to binder_translate_fd_array() to
  hold the sender buffer and sender buffer parent.  These parameters let
  us call copy_from_user() directly instead of using
  binder_alloc_copy_from_buffer() which is a cleanup.  Also the patch
  adds some new alignment checks.  Previously the alignment checks would
  have been done in a different place, but this lets us print more
  useful error messages.


> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---
>  drivers/android/binder.c | 40 +++++++++++++++++++++++++++++++++-------
>  1 file changed, 33 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 571d3c203557..2300fa8e09d5 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2234,15 +2234,17 @@ static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
>  }
>  
>  static int binder_translate_fd_array(struct binder_fd_array_object *fda,
> +				     const void __user *u,

I wish we could use sender/target terminology everywhere.  Please change
every place that has "u" or "user" to either "sender" or "target" as
appropriate.

>  				     struct binder_buffer_object *parent,
> +				     struct binder_buffer_object *uparent,
                                                                  ^

>  				     struct binder_transaction *t,
>  				     struct binder_thread *thread,
>  				     struct binder_transaction *in_reply_to)
>  {
>  	binder_size_t fdi, fd_buf_size;
>  	binder_size_t fda_offset;
> +	const void __user *ufda_base;
                           ^

>  	struct binder_proc *proc = thread->proc;
> -	struct binder_proc *target_proc = t->to_proc;
>  
>  	fd_buf_size = sizeof(u32) * fda->num_fds;
>  	if (fda->num_fds >= SIZE_MAX / sizeof(u32)) {
> @@ -2266,7 +2268,10 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
>  	 */>  	fda_offset = (parent->buffer - (uintptr_t)t->buffer->user_data) +
>  		fda->parent_offset;
> -	if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32))) {
> +	ufda_base = (void __user *)uparent->buffer + fda->parent_offset;
> +
> +	if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32)) ||
> +	    !IS_ALIGNED((unsigned long)ufda_base, sizeof(u32))) {
>  		binder_user_error("%d:%d parent offset not aligned correctly.\n",
>  				  proc->pid, thread->pid);
>  		return -EINVAL;
> @@ -2275,10 +2280,9 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
>  		u32 fd;
>  		int ret;
>  		binder_size_t offset = fda_offset + fdi * sizeof(fd);
> +		binder_size_t uoffset = fdi * sizeof(fd);
>  
> -		ret = binder_alloc_copy_from_buffer(&target_proc->alloc,
> -						    &fd, t->buffer,
> -						    offset, sizeof(fd));
> +		ret = copy_from_user(&fd, ufda_base + uoffset, sizeof(fd));
>  		if (!ret)
>  			ret = binder_translate_fd(fd, offset, t, thread,
>  						  in_reply_to);

This is something from the original code but if the copy_from_user()
fails, then we just skip that "fd" without informing the user.  It feels
wrong.  Does that not lead to a bug in the target app?


> @@ -2951,6 +2955,8 @@ static void binder_transaction(struct binder_proc *proc,
>  		case BINDER_TYPE_FDA: {
>  			struct binder_object ptr_object;
>  			binder_size_t parent_offset;
> +			struct binder_object user_object;
> +			size_t user_parent_size;
>  			struct binder_fd_array_object *fda =
>  				to_binder_fd_array_object(hdr);
>  			size_t num_valid = (buffer_offset - off_start_offset) /
> @@ -2982,8 +2988,28 @@ static void binder_transaction(struct binder_proc *proc,
>  				return_error_line = __LINE__;
>  				goto err_bad_parent;
>  			}
> -			ret = binder_translate_fd_array(fda, parent, t, thread,
> -							in_reply_to);
> +
> +			/*
> +			 * We need to read the user version of the parent
> +			 * object to get the original user offset
> +			 */
> +			user_parent_size =
> +				binder_get_object(proc, user_buffer, t->buffer,
> +						  parent_offset, &user_object);
> +			if (user_parent_size != sizeof(user_object.bbo)) {
> +				binder_user_error("%d:%d invalid ptr object size: %lld vs %lld\n",

Apparently %lld breaks the build on my .config.  The correct format for
size_t is %zd.

> +						  proc->pid, thread->pid,
> +						  user_parent_size,
> +						  sizeof(user_object.bbo));
> +				return_error = BR_FAILED_REPLY;
> +				return_error_param = -EINVAL;
> +				return_error_line = __LINE__;
> +				goto err_bad_parent;
> +			}
> +			ret = binder_translate_fd_array(fda, user_buffer,
> +							parent,
> +							&user_object.bbo, t,
> +							thread, in_reply_to);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
