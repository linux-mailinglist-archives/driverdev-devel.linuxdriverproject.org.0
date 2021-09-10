Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC1F740670A
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 08:03:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 743034025C;
	Fri, 10 Sep 2021 06:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GiQO0AHlhvEX; Fri, 10 Sep 2021 06:03:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4058140181;
	Fri, 10 Sep 2021 06:03:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA75C1BF9C8
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 06:03:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B769C4035D
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 06:03:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="dFKrO7Yl";
 dkim=pass (2048-bit key) header.d=oracle.com header.b="bqoskg9g";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="kXVlWSpo"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CbDIc1_scGri for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 06:03:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 747EC4036E
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 06:03:23 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18A5RBto013688; 
 Fri, 10 Sep 2021 06:03:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=76U4HskFZZjKH0ny7CsUqdmxHICje4dIL+F1hS7+Ris=;
 b=dFKrO7YlkcppHQuC5WEnQ8cwK6J6YZcpZrAlTVVdgSG8Myg38onJcJfFNgakM5Sc/rGv
 qwQZ1WPPlx1QWn2pPRwIMSjF8auiZCefnzlSVBu4OobHhA00imWe5beB4yX1/jyrdEh1
 1Nu2ZEuJ5EpbnyEO/QFIC7JU3S2epuFVH9Te9Nj9IPjTI9PAfg1EoMYjeZVHEbJydh4x
 az8oLaIM74paRmaEo0KS4mCvgPmIwi3BekCfZP9c1XCT5EiXQKUFfg07MlObXycdCAjb
 NV/cSeAiHJnpO7kNWHeZMd4NDKs0b5w/+DuskEy5uHa8T56OGso9/y7gyvDedczB9XY2 /g== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2020-01-29;
 bh=76U4HskFZZjKH0ny7CsUqdmxHICje4dIL+F1hS7+Ris=;
 b=bqoskg9gsPGoI/sSxPcTC31NDa3v68KlAEOuvMI5cg/oieB9oyZGc5sQ5DM7DdXxY2Wa
 S05GDsoGYAPmHk2Wyo5SbaGAmd2JDCWSQRgz07FLV0twIQHFbq305fAQv1+Dqjj8qNQP
 sV5K9mrz9c16jYLXoniwA7M4WdZDoqyDO42Oc+Cjq7aP1hdjq4KpCBYUbEHZH7tIgBXV
 NdMc0Ux1fkxUIU9ehcDW7NvOSm8XmYuAQsjokhWbsjcaKx6+I0Cag+++J6cJywCwYrEi
 nLrwCURGsYfYxR1SQCsIMAXGunMehjplX44etr8Z0rqlT7ZaEUgJrcrCa3jBLOwHnPKb 3w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3ayty48swk-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 10 Sep 2021 06:03:16 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 18A60BtM092365;
 Fri, 10 Sep 2021 06:03:15 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam11lp2174.outbound.protection.outlook.com [104.47.58.174])
 by aserp3020.oracle.com with ESMTP id 3aytfxx1f8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 10 Sep 2021 06:03:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oLiJlx+gPOCjsULahNOAefBNxGyjIA5LpaTMW1DPTS1RvEEbY9UAPV6Ga2vOTGjD8GGNOCBa4mqqZDq2C7Mno1ogWdxnBnYrtJIqziWgTxMRwQAPdJGJV24IhqO0VZD/dxpdHVg7brffFEfc+H2dFkGVPIGByYfiuAbl058AvUAIxMElz4qG6w/NMe0FSo6hHFdQiGhR2XfSAVpbdVe3j4ET3uM3FUk7EVLMQC2C7jmqs1m/sjyv6tQ0ywS9WW1RB+JLoO1LJ9/YJlhPM8R3bEisPUljavdV46PlRA0Dy47XyPqnSUjsUFqeA5baWHksQMz+eXMJdEUF6OdLvoYw6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=76U4HskFZZjKH0ny7CsUqdmxHICje4dIL+F1hS7+Ris=;
 b=L/3XfLfFzmZ10x+GalxCn08/i51ik2c1uY3Mc6v46rxAeO2ryNgkqQMbqPVlaj1Czpp2U+gg5ikwWnjTFIgUlmdPzKQr4mXWMv1vQnzSaz7KqzXuIgSYkj5Tv7nEej+IvZjRrueqZDoOFzNtqcClkwq1s8ROqzjrGle9+qPcgH9kBHkqoa81lgEycN0djMqXkXjhw+BVEJpZqPhd9oxAwvlZTMghk7m5q65Sfyun2pv4HhDW6O5cvNzZO1fj8KVIc/+lI+zCIdU7T60wfeszZtwjzGp8C326LeIAHmrs/UgnmyYh6PCSvqqPt6F7WxAtsaHFBwMax++rnn/gZMWrQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=76U4HskFZZjKH0ny7CsUqdmxHICje4dIL+F1hS7+Ris=;
 b=kXVlWSpoN75RrKbZzjmCmtidg1b1cZvCh48nYgw1c+YQIIRJkso/3ERmTpE72+GbMczxyPBmCFsTeLFPIxZH3nSvtq75bNSYiczZCmU/3WScyl96YJm0lR6iGZvyIxem9njSapW6NB00qtAwoLrcdjvjzVbqcXcldjEhg8DxYCY=
Authentication-Results: chromium.org; dkim=none (message not signed)
 header.d=none;chromium.org; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1614.namprd10.prod.outlook.com
 (2603:10b6:301:8::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Fri, 10 Sep
 2021 06:03:10 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 06:03:10 +0000
Date: Fri, 10 Sep 2021 09:02:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v1 1/1] binder: fix freeze race
Message-ID: <20210910060251.GC7203@kadam>
References: <20210909232141.2489691-1-dualli@chromium.org>
 <20210909232141.2489691-2-dualli@chromium.org>
Content-Disposition: inline
In-Reply-To: <20210909232141.2489691-2-dualli@chromium.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0039.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::6)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (62.8.83.99) by JNAP275CA0039.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:4e::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21 via Frontend
 Transport; Fri, 10 Sep 2021 06:03:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7c7550ca-791b-4bf0-1f92-08d97420aaa4
X-MS-TrafficTypeDiagnostic: MWHPR10MB1614:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB161461093A3C15A281728A9B8ED69@MWHPR10MB1614.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xHkeofoUkJay4rBM40KT7hZTk30pL7u1CJkj46seS1QTIx6Xo90eTEd4PwApZCaE5R5Vs+QFqUsHn8DrAFeq2ZrIKvhN3ZLzf9m3uhpwo9maxrHBGjwXUZyvIg4KEQT4r5/Q60LOXRVZaSQoHjUuNPmEnxK2xd0gFni3BcN+ESp7/jrD4sTu1msTlRNzlVwz39U9MxlwtTHpGFj5H2tw4lya0rnu66Viwd0zUq76HWjdoDsNJOXl2km02nJ9/tQ/00gwwiOPYOfKCugEmKwLbOmTqvliWE846PI9kUaHPbr4wP3IkUZAEKOCLnXymcvtM9cFd6Sx2qossQppJUM8bNwM7Thse45kGlcXbeMck0ln5082YYfe1ht2+0h4McvGW72KzXjALsNRheWTBotNxR30H7L2Rn4KTE8jPMY7qmkYQNm9DWN2cp91Q8H+LR4QLOD1X5zlYH/We9twTYUBrP5hFB1IcIZOt9d2s8HZyEbvvquUag/p48Q+jAwVk/IgoubgaYuE7cQ1evAAn0CtiLDkdZzUf0VenEO+ganDdfWfz/LI0fCDrV2ddEeyP/1C9Hjsdc9Ou5YQOEYUXvvHr5U9hkcTmNsq05tbcz/e2XONmKWrMigYMdGed2dnrH9Rm4CoQVSigbpUGtNsdROWKsdHZmcZcMtCwk/MXtY3is9N8bLDIv2oFagtjh6+0XnXekrgjgLPvI2SI05rKyPfHw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(376002)(136003)(366004)(346002)(39860400002)(33716001)(83380400001)(38100700002)(6666004)(38350700002)(1076003)(66946007)(55016002)(956004)(33656002)(4326008)(86362001)(9576002)(186003)(478600001)(8936002)(44832011)(2906002)(6916009)(8676002)(6496006)(9686003)(7416002)(316002)(66476007)(66556008)(52116002)(5660300002)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pAl8Crx/2uBzXR68vQMouNh78f0b5XWrFCENwMUveKu6Ax4ohKvs1cm4kQu3?=
 =?us-ascii?Q?nnUzBCpGfuozyVJp7Xnwu24K55qgGEfqJ/+r+qaw/Op3MvK6163444LjZYBx?=
 =?us-ascii?Q?my8xEUQa4g0yp5uRQZMFTp1MNJ80I8J+6dnEwCf5pvnk0KHAmC9gH7j6V7lS?=
 =?us-ascii?Q?5QW0atAdKrKQpIFhgajr3Pyr3wyKQJAdtIeQkZPOb0RlZ8Pj/WGLJir74oEW?=
 =?us-ascii?Q?JyUPUAzb+U7x7Amd+sfcCDLr0E+Sf5IMgahk2aFgQMC86pixLNF/UYdABuRe?=
 =?us-ascii?Q?xNVaRo6Ejj41I0Fno920v9GWJ0bwGNJ4zhXfwxYgyF3tdvohCYZFTxdYrXIH?=
 =?us-ascii?Q?tP4ZJxVAmaTSJ6OuUft6daaoZa/PUu3XH5xVvX9gQmv3jQaOuDAarJjqOFSw?=
 =?us-ascii?Q?TDD00WCB4FS44566fP03jViCT4gvdo1UPq8CSCZLHCuaTEQciPI2WmvhrHts?=
 =?us-ascii?Q?JNOcsggcxMI/ZLVvxynpy5Fl86oOFmccUNVaooDb+DDvGNcqpRTEFyh5Xv6u?=
 =?us-ascii?Q?w+lahI9o5guvhBAxBaVvAnQnjPUFR50uDHpwadiKbyfSn+4V9IWe2yJfqGbW?=
 =?us-ascii?Q?dHu0U+woaZqqVFBu+6rgHfGxSnJJxh+NzZx0y3E8Oa+4oXFAd9Lbsix7d5FY?=
 =?us-ascii?Q?NvK2wGVzJAtSPDSpxenak8wtpIEi3YXZ0b2qUdhdP6u4HAVRF45KrcjPjko+?=
 =?us-ascii?Q?Co8x26VRvkVSxsDOJF4P2er0UQS81ivfgnDraYBv0HkOy+oo0h25XFV18gKF?=
 =?us-ascii?Q?A9EnWsgeCd7oFjBbaCUprgYcM9CeSYetqLKtKZPVYQ4d3DbPPf/htNhmODmr?=
 =?us-ascii?Q?HxxN/lqqrrbYd28j3O6dJynYdhJxv5usdTK6z1qQMfEmm9NbEBz4DS9pg2xq?=
 =?us-ascii?Q?9Tis4WubornCuGEzJM7zMWmbxVEE4VwzJCtm4hsCNuuMyj9uBwQGQ9d/3P7r?=
 =?us-ascii?Q?uU3LZdYJRg3+DpxTKZnsbQzRp1mt0dxl3q03GoSNMhSXFkEmGLjwWfE23esM?=
 =?us-ascii?Q?W1xAVD03FY+35IC+KzdbM9kapSovC7QiMTm0UtoTfiRfI2GfvTAefMrb7+F8?=
 =?us-ascii?Q?G9Mkz5lqKCQ1lMH1GNk+0s4FRb/Vz35jsAgE13ukZgAPYmc+ZB3st896jGT7?=
 =?us-ascii?Q?RI4soGdabf6VnW34yFOV2ZwHAoZi2i2kc6aWBeoyl/jcJENbQuTFPScj7dqp?=
 =?us-ascii?Q?Rcpuqia26EKMOAN9uC+wZsSix2jn10Ivr2gTOl2LfGQdGbjgj5D8U/zonNDP?=
 =?us-ascii?Q?nQ8KvrrSdcEqgrLeNtj84v6kgl71XzSEcpaWLWECGF0pbWJPGvDoH2myDPEv?=
 =?us-ascii?Q?XI8Hp/FE0yAqSGUTOlqEw7oy?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c7550ca-791b-4bf0-1f92-08d97420aaa4
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 06:03:10.2912 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KTUecoZpM4JUgIHD8UYQ11nS8kCuswWKIZL0dQ9wIb6sWvMZPrE0bQ3LlmQ9iUNDKJHlKxnGzg7fxUA2ART3R2QEl+8KJm7sFtIsUaSLUp4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1614
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10102
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 phishscore=0 mlxscore=0
 suspectscore=0 spamscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109030001
 definitions=main-2109100036
X-Proofpoint-ORIG-GUID: 4JhqHQalGeD8FkNNurXeFP-Psa6McBwc
X-Proofpoint-GUID: 4JhqHQalGeD8FkNNurXeFP-Psa6McBwc
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, kernel-team@android.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 joel@joelfernandes.org, arve@android.com, maco@google.com, hridya@google.com,
 surenb@google.com, christian@brauner.io, tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 09, 2021 at 04:21:41PM -0700, Li Li wrote:
> @@ -4648,6 +4647,22 @@ static int binder_ioctl_get_node_debug_info(struct binder_proc *proc,
>  	return 0;
>  }
>  
> +static int binder_txns_pending(struct binder_proc *proc)
> +{
> +	struct rb_node *n;
> +	struct binder_thread *thread;
> +
> +	if (proc->outstanding_txns > 0)
> +		return 1;

Make this function bool.

> +
> +	for (n = rb_first(&proc->threads); n; n = rb_next(n)) {
> +		thread = rb_entry(n, struct binder_thread, rb_node);
> +		if (thread->transaction_stack)
> +			return 1;
> +	}
> +	return 0;
> +}
> +
>  static int binder_ioctl_freeze(struct binder_freeze_info *info,
>  			       struct binder_proc *target_proc)
>  {
> @@ -4682,6 +4697,14 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
>  	if (!ret && target_proc->outstanding_txns)
>  		ret = -EAGAIN;

These two lines can be deleted now because binder_txns_pending() checks
->outstanding_txns.

>  
> +	/* Also check pending transactions that wait for reply */
> +	if (ret >= 0) {
> +		binder_inner_proc_lock(target_proc);
> +		if (binder_txns_pending(target_proc))
> +			ret = -EAGAIN;
> +		binder_inner_proc_unlock(target_proc);
> +	}
> +
>  	if (ret < 0) {
>  		binder_inner_proc_lock(target_proc);
>  		target_proc->is_frozen = false;

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
