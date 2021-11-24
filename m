Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B369045B8EC
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 12:10:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8C21660D6A;
	Wed, 24 Nov 2021 11:10:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KeedFLe-x_Ti; Wed, 24 Nov 2021 11:10:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3304B60BB2;
	Wed, 24 Nov 2021 11:10:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C62031BF3A0
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 11:10:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B2D9960BAA
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 11:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KWjNesFzGo_v for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 11:10:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F0B960BB2
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 11:10:22 +0000 (UTC)
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AOA5hdN012856; 
 Wed, 24 Nov 2021 11:10:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=RXrvtLxCM782woLG/cQt+jX+ATIY+oXqoRDGcYEnRXo=;
 b=nE/bRLSM+83hfrc/DhPzhEnkPurqKdw77izNycFY3v3VbnGvKJGgfXyTuST0jeENDOiA
 9FhhkcCIriVSQ8Yj97A0G+3cEoQmI7iATaah6W9gvIxCkgLTfLYRr4mO8mDbjk4x5Qp/
 ucHCgk+FPkXVn56gvZ3VLOz80ttE7oEyeoj1VUYxaTMX/7Tg0o3b2vhSq/T0645xF+zV
 yFE8a0HMSACKplbcIwLVG0HRUSq1o64q9RRF0/vRnOdg9Skgljwtf7/wzHW8ecthmWPa
 AP3Eirz7bN4mZSORBi5Cum0V7zer5lvD1dsXJZ3TlUVNA99BB41GuTvwPWyhxenAREHx WA== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3chj7g0s8q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Nov 2021 11:10:17 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AOB6ppw044004;
 Wed, 24 Nov 2021 11:10:16 GMT
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
 by aserp3030.oracle.com with ESMTP id 3ceq2fte57-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Nov 2021 11:10:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fTi0b67NLT/fa10pJ3wzUof3rs/S/usW6p7bfBICJ64MuGPf8DSYSUj5rbFuW2I0Wq0RVx9g5wk7tN0wMKRHwWVqpy0WJWFAoF4Xcr+sfaHtxP0c789H2YmNtt9+KtYqVczOvKS93VExQQaBjS3ID7vNBaQtByHj9RqvalzcVYvQjDcMg8K7OL8apwCVVHXZvYv0VCu6me/vGU1KVLfGmGDGqnza4vTH9RKQ5n/rmjXTPVNyqcLSkWakS53qV0eY1Xiuc4nJh6HL4pOQLmpwo9IzN/aj96uggUsbnfkp2lyygbYWhpFAGXzIVvtKgSrzmROvDDtA7/1zPKJ6ZHv28w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RXrvtLxCM782woLG/cQt+jX+ATIY+oXqoRDGcYEnRXo=;
 b=MX0VzKtN2qA1cGo0TMG0GpUkWBoDPJjAEna806b0xASyCeIg3GbHUNEo0AiiQ/t5jq+eZeTsCwW3TM379seaVl24TPgTOUHz0o5p2tK1sT8L+8f50uIod6ZyP8mnPLTyxk4xZCr+FttNw4xfwBwpHg6L75i/oKuhnEGXSGZS0Hso98jgWtMF3OkaLeWZr5L3jTG6qXhTY8jjVJmmsvF9I8Qx8rmFNF0Bz/d+BQUjAgKwVShnZdrUjh46ECnFY9XazmsgHZfA7vfyxRyWM5svZw8vFoVx9QvKFwfZMtZRi9pcAXIhvWji1KF5DKG5zinAcUj8j9pPmP4rLrNVFiBe+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RXrvtLxCM782woLG/cQt+jX+ATIY+oXqoRDGcYEnRXo=;
 b=s6vj397KTM5C2nwNxcYv3sZDXiS/nzclsQACwTMegIz7xtsQVR8apaT1VHBdC0EMMfW3KWe1QBGfelo0AwTgNjlE8oEMw9nZv0aQSIEQoFFrk4wCF0uMzo0SSRLd/OXzmoQJ1aLSlsHqecIIsRX0ULDRidezSBtxmiEMofEjQ14=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1245.namprd10.prod.outlook.com
 (2603:10b6:301:9::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.22; Wed, 24 Nov
 2021 11:10:14 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.022; Wed, 24 Nov 2021
 11:10:14 +0000
Date: Wed, 24 Nov 2021 14:09:49 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH 3/3] binder: defer copies of pre-patched txn data
Message-ID: <20211124110949.GF6514@kadam>
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-4-tkjos@google.com>
Content-Disposition: inline
In-Reply-To: <20211123191737.1296541-4-tkjos@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0025.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::13)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JN2P275CA0025.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:2::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.20 via Frontend Transport; Wed, 24 Nov 2021 11:10:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4130b860-dc67-49a8-e329-08d9af3afcf7
X-MS-TrafficTypeDiagnostic: MWHPR10MB1245:
X-Microsoft-Antispam-PRVS: <MWHPR10MB1245711A8C01D14D7AC9DBDD8E619@MWHPR10MB1245.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xs0WQJti8zvvbiFPlZI11bN1jbIk8m52EdxLJkvWVCWb/8hcocWJyG+QAgKJ1IlYSonsCYsZI0w+FcS3cektgEs3uSd7J38ZTsx0F9Ax/8wWC9LtL9JJVck4FC19KHdcLMRjTk2tsD56bMexj9g/Ojd0xyV8Ah9KwlYwlyBz/egoxDGecQghF6FKR5CkuooIIilUdCllPa6SX/siBgdGebdLU7eKiGwagrCDcEsSPwtdvretx4O89BMD5GajDFyIX3s6IoJO2p+M8raOv88KNZp7bsI1kownR0KPNdpHbR4iTLcl6ZLIcl0C6TCt7BZnG4EKdI+fE1jSCZ4R9eBrqtfFfqeQnMex4XhgP0aoSULfqMFNCFdceO9dTKAT6HlDvjNT/xLmoa/DUhQy8xJ4pvGo0LPsUuemF85cImhijNveEElFUAqDnnim2quLFBwxL5p/TmcoFps5QGp/3HlRLb29fpQTSH3X8d1P4/FDPn8HpVLsQ1BaqDLIJIfDwP+P3B99X2vhYFQfM1oqurkFCbz/p/ULu6AKCa2rzbm3U4c0HRU+K+iyf2OEkiidw+IojjfrG9lnvY6VgugBxb3AZbgQgt9zxGNYbXjKI94tCIx+rFl1VCKytq1dfWmS6tNaRJrvjrvH8U0mYQyE7Kuptlsbb7PEJSrjKiBy24A1Do2myqikS7lrmHEy3pimLFrXLaoRJdE7CnNp8ZsI4vR/og==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(956004)(1076003)(38100700002)(33656002)(66476007)(186003)(4326008)(66946007)(44832011)(33716001)(2906002)(508600001)(316002)(83380400001)(9576002)(6916009)(9686003)(8676002)(6666004)(8936002)(6496006)(86362001)(38350700002)(55016003)(5660300002)(66556008)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ldQ1iPE54uw3kh0SVyB3RoVmH95BgNuvj/ka5SScyr192mKMfHJaC9Q/gvPX?=
 =?us-ascii?Q?qT5VCjJ1K28geeeQJvIi2McEj8c1FZbhjTcD/MgYZB66dMiFejFK9XO0HlGn?=
 =?us-ascii?Q?wl5m6suxMv3gwMHTBPa5ODBKKIc7uL9iCBnWalGnk3FOyT37KfmNc2kjJO5/?=
 =?us-ascii?Q?DJU0Sv7KmxiZmIRYyGoK8P+jMjrmuh+aUF9qGjyYNi1vxIyi+561Fh4YbTYo?=
 =?us-ascii?Q?NO9lz3q7yJvezUUHddr1D1M2Xvk8U8VNxC8EGkJuwt8q/MrBmj/q43z3+z5/?=
 =?us-ascii?Q?vaXMzuJUR5D8qwzEh2erPJ2rSeBb5yevvOMYDMLOeOWh+N7PJX9wnH4+QiKj?=
 =?us-ascii?Q?zOPvkaA/wMMwVjnTurfakqgOe9ztqH+Him2WfcQ92NIUhk4VTr7NiBxh3jJE?=
 =?us-ascii?Q?nXPhd2Jyb5+b4AuOCB+R5tHCDTavSYtr501PkI1+eLwHZQSB4OYIjte0R8W3?=
 =?us-ascii?Q?j0PlPhZCYjFmkvONGtBrnXxXmak7k3L7PdhK8PDLkhGmvrfyaNJ8HQ4zNpUf?=
 =?us-ascii?Q?BbUDaFd+ZktBUXzVc4uQGo10lEzJu3vVwgxPKu4UGoi78fjRbj8UCQqgn0QZ?=
 =?us-ascii?Q?76pC58jyTnZASk6cICiBgooZ4o0M5YFNOmsWNPdzPPtodlyAW70KvU7im2/b?=
 =?us-ascii?Q?bm82TO8WPYWapl8hWhV4WQfrBb3nXdOzoXQMkCT8Wqf7UugVTREjd1cBvkyJ?=
 =?us-ascii?Q?LJ0jyPW8hS90KLdLGCK3auO/7hhMHdOGwu0AAjwyVl1zzjthU2Na6qqleJtu?=
 =?us-ascii?Q?aL9PchUfXuZgf7LXbf2FTMSwDBybLWGXgMFDBP4HXzYDpHQPszYnCliogFDe?=
 =?us-ascii?Q?5tl7WLtNw8hB69RWEuXQ5KraX+T1IfRebRCFWVab4H64unui8Ai6eleS184F?=
 =?us-ascii?Q?MZmRXr0UMaFnesbruY3fQoIoQ3/QZaBF1Byi21ft2JYLceNtl4iiOcmZICWX?=
 =?us-ascii?Q?vOQKnJJyCibO3bfmZJvx5AfHmDbzGZqzYWRhKUPG+OCmKt5WScVsZpLQeEVA?=
 =?us-ascii?Q?I0r7BwzZfrzhzmh78T43HaTH5TOzesVpIry6UrpA2bI7HpdUTxU/hhZAwItg?=
 =?us-ascii?Q?6wR/yAepn9CU4Dnx3PzEG9ATzSWvC7fOInPqTCAEAboE1/lZ7sh1S2dChUf2?=
 =?us-ascii?Q?xcfCsW1pgqEr2do2HquulbWsVpD/Vnr8Y8kIN2uM+OwKcbHfdbQKEsFPw5u2?=
 =?us-ascii?Q?Jh82QN4UPlFC6PWsVn/ibqCXASPtwFlRSUahj1sgQF4N4IxR3+I2fkuMIr1W?=
 =?us-ascii?Q?PSSHiOF8Zuaj1fXeaD0kqfjgTkjMZoJ+rI1EAE0rhT6w6sBZS6/mrZAqfObl?=
 =?us-ascii?Q?G96D/JLna2NEJKTtMN6kD1vyOsIdxMsmt6nuPLjvmoY/utuNe+jzFbmLNEwW?=
 =?us-ascii?Q?xhnvK8eVX8CgksrtwQZZXIQblru2FAzwiakVpxNN5CYArZnWJ6mw73+tz0PK?=
 =?us-ascii?Q?euWFBa+QWr7w+tEc8S0T0E/rBWKt1n6470cKwcKq3c7R6dQsc9Ay2umlhK4n?=
 =?us-ascii?Q?5q0ymlTtnopvgTzrH8vTbTUmkZGpbUdHXeZsjG+rMn8M2Buwe3QTUKG1GsPg?=
 =?us-ascii?Q?QENrq1hK3OGbU1xLdD0ft5iYWaw5hSL8OC4kSd61Mdq/dMJINiBoA7hBXfX9?=
 =?us-ascii?Q?CSPZ/yWiIAvpwA+l6g1oMclxg4mwZP/SWv9LKo0I0Kxss7Hdt5xbTH5zAqMW?=
 =?us-ascii?Q?VEeEVg=3D=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4130b860-dc67-49a8-e329-08d9af3afcf7
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2021 11:10:14.4489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HuVvQzTxDcGDbEBveY+pkvJk8o893KZfMWiiNLEHie2/5rANi9KZUT07R62FTDy1jzZ3T9H/wZ8U7Hhcxre06SGr46HrQxcVgJjnjTnbMkI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1245
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10177
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0 spamscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111240063
X-Proofpoint-ORIG-GUID: 5ugZRNNf5rgJdNAmBVIfhCVCx5vwZZD0
X-Proofpoint-GUID: 5ugZRNNf5rgJdNAmBVIfhCVCx5vwZZD0
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
> +/**
> + * binder_do_deferred_txn_copies() - copy and fixup scatter-gather data
> + * @alloc:	binder_alloc associated with @buffer
> + * @buffer:	binder buffer in target process
> + * @sgc_head:	list_head of scatter-gather copy list
> + * @pf_head:	list_head of pointer fixup list
> + *
> + * Processes all elements of @sgc_head, applying fixups from @pf_head
> + * and copying the scatter-gather data from the source process' user
> + * buffer to the target's buffer. It is expected that the list creation
> + * and processing all occurs during binder_transaction() so these lists
> + * are only accessed in local context.
> + *
> + * Return: 0=success, else -errno
      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
This function is supposed to return negatives on error.

> + */
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
> +		size_t bytes_copied = 0;
> +		struct binder_sg_copy *sgc =
> +			container_of(entry, struct binder_sg_copy, node);
> +
> +		while (bytes_copied < sgc->length) {
> +			size_t copy_size;
> +			size_t bytes_left = sgc->length - bytes_copied;
> +			size_t offset = sgc->offset + bytes_copied;
> +
> +			/*
> +			 * We copy up to the fixup (pointed to by pf)
> +			 */
> +			copy_size = pf ? min(bytes_left, (size_t)pf->offset - offset)
> +				       : bytes_left;
> +			if (!ret && copy_size)
> +				ret = binder_alloc_copy_user_to_buffer(
                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
"ret" is the number of bytes remaining to be copied.


> +						alloc, buffer,
> +						offset,
> +						sgc->uaddr + bytes_copied,
> +						copy_size);
> +			bytes_copied += copy_size;
> +			if (copy_size != bytes_left) {
> +				BUG_ON(!pf);
> +				/* we stopped at a fixup offset */
> +				if (pf->skip_size) {
> +					/*
> +					 * we are just skipping. This is for
> +					 * BINDER_TYPE_FDA where the translated
> +					 * fds will be fixed up when we get
> +					 * to target context.
> +					 */
> +					bytes_copied += pf->skip_size;
> +				} else {
> +					/* apply the fixup indicated by pf */
> +					if (!ret)
> +						ret = binder_alloc_copy_to_buffer(
> +							alloc, buffer,
> +							pf->offset,
> +							&pf->fixup_data,
> +							sizeof(pf->fixup_data));
> +					bytes_copied += sizeof(pf->fixup_data);
> +				}
> +				list_del(&pf->node);
> +				kfree(pf);
> +				pf = list_first_entry_or_null(pf_head,
> +						struct binder_ptr_fixup, node);
> +			}
> +		}
> +		list_del(&sgc->node);
> +		kfree(sgc);
> +	}
> +	BUG_ON(!list_empty(pf_head));
> +	BUG_ON(!list_empty(sgc_head));
> +
> +	return ret;
> +}
> +
> +/**
> + * binder_cleanup_deferred_txn_lists() - free specified lists
> + * @sgc_head:	list_head of scatter-gather copy list
> + * @pf_head:	list_head of pointer fixup list
> + *
> + * Called to clean up @sgc_head and @pf_head if there is an
> + * error.
> + */
> +static void binder_cleanup_deferred_txn_lists(struct list_head *sgc_head,
> +					      struct list_head *pf_head)
> +{
> +	struct list_head *entry, *tmp;
> +
> +	list_for_each_safe(entry, tmp, sgc_head) {
> +		struct binder_sg_copy *sgc =
> +			container_of(entry, struct binder_sg_copy, node);
> +		list_del(&sgc->node);
> +		kfree(sgc);
> +	}
> +	list_for_each_safe(entry, tmp, pf_head) {
> +		struct binder_ptr_fixup *pf =
> +			container_of(entry, struct binder_ptr_fixup, node);
> +		list_del(&pf->node);
> +		kfree(pf);
> +	}
> +}
> +
> +/**
> + * binder_defer_copy() - queue a scatter-gather buffer for copy
> + * @sgc_head:	list_head of scatter-gather copy list
> + * @offset:	binder buffer offset in target process
> + * @uaddr:	user address in source process
> + * @length:	bytes to copy
> + *
> + * Specify a scatter-gather block to be copied. The actual copy must
> + * be deferred until all the needed fixups are identified and queued.
> + * Then the copy and fixups are done together so un-translated values
> + * from the source are never visible in the target buffer.
> + *
> + * We are guaranteed that repeated calls to this function will have
> + * monotonically increasing @offset values so the list will naturally
> + * be ordered.
> + *
> + * Return: 0=success, else -errno
> + */
> +static int binder_defer_copy(struct list_head *sgc_head, binder_size_t offset,
> +			     const void __user *uaddr, size_t length)
> +{
> +	struct binder_sg_copy *bc = kzalloc(sizeof(*bc), GFP_KERNEL);
> +
> +	if (!bc)
> +		return -ENOMEM;
> +
> +	bc->offset = offset;
> +	bc->uaddr = uaddr;
> +	bc->length = length;
> +	INIT_LIST_HEAD(&bc->node);
> +
> +	/*
> +	 * We are guaranteed that the deferred copies are in-order
> +	 * so just add to the tail.
> +	 */
> +	list_add_tail(&bc->node, sgc_head);
> +
> +	return 0;
> +}
> +
> +/**
> + * binder_add_fixup() - queue a fixup to be applied to sg copy
> + * @pf_head:	list_head of binder ptr fixup list
> + * @offset:	binder buffer offset in target process
> + * @fixup:	bytes to be copied for fixup
> + * @skip_size:	bytes to skip when copying (fixup will be applied later)
> + *
> + * Add the specified fixup to a list ordered by @offset. When copying
> + * the scatter-gather buffers, the fixup will be copied instead of
> + * data from the source buffer. For BINDER_TYPE_FDA fixups, the fixup
> + * will be applied later (in target process context), so we just skip
> + * the bytes specified by @skip_size. If @skip_size is 0, we copy the
> + * value in @fixup.
> + *
> + * This function is called *mostly* in @offset order, but there are
> + * exceptions. Since out-of-order inserts are relatively uncommon,
> + * we insert the new element by searching backward from the tail of
> + * the list.
> + *
> + * Return: 0=success, else -errno
> + */
> +static int binder_add_fixup(struct list_head *pf_head, binder_size_t offset,
> +			    binder_uintptr_t fixup, size_t skip_size)
> +{
> +	struct binder_ptr_fixup *pf = kzalloc(sizeof(*pf), GFP_KERNEL);
> +	struct list_head *tmp;
> +
> +	if (!pf)
> +		return -ENOMEM;
> +
> +	pf->offset = offset;
> +	pf->fixup_data = fixup;
> +	pf->skip_size = skip_size;
> +	INIT_LIST_HEAD(&pf->node);
> +
> +	/* Fixups are *mostly* added in-order, but there are some
> +	 * exceptions. Look backwards through list for insertion point.
> +	 */
> +	if (!list_empty(pf_head)) {

This condition is not required.  If list is empty we add it to the tail,
but when there is only one item on the list, the first and last item are
going to be the same.

> +		list_for_each_prev(tmp, pf_head) {
> +			struct binder_ptr_fixup *tmppf =
> +				list_entry(tmp, struct binder_ptr_fixup, node);
> +
> +			if (tmppf->offset < pf->offset) {
> +				list_add(&pf->node, tmp);
> +				return 0;
> +			}
> +		}
> +		/*
> +		 * if we get here, then the new offset is the lowest so
> +		 * insert at the head
> +		 */
> +		list_add(&pf->node, pf_head);
> +		return 0;
> +	}
> +	list_add_tail(&pf->node, pf_head);
> +	return 0;
> +}
> +

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
