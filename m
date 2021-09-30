Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C8541D6B9
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Sep 2021 11:47:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD946840AB;
	Thu, 30 Sep 2021 09:47:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j8aM0J5rfADA; Thu, 30 Sep 2021 09:47:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0291F8408D;
	Thu, 30 Sep 2021 09:47:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DAED1BF31A
 for <devel@linuxdriverproject.org>; Thu, 30 Sep 2021 09:47:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C7FF613C6
 for <devel@linuxdriverproject.org>; Thu, 30 Sep 2021 09:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="RL1dKMZS";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="f9b7JsEK"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IlGWpsz9wIIN for <devel@linuxdriverproject.org>;
 Thu, 30 Sep 2021 09:47:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B7B660778
 for <devel@driverdev.osuosl.org>; Thu, 30 Sep 2021 09:47:19 +0000 (UTC)
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18U9HF4h005479; 
 Thu, 30 Sep 2021 09:47:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=x9zN710GQesexp07I33EDu9Ve0pR++cEV7Txr2rtH9w=;
 b=RL1dKMZSr9l5MgTBsA8BsG2LO47dAixAESa/gpKWIo5B6CHLz4jw8f61R07ssj2UeVPC
 Y2q3e8J3wwiN+hdPgCRL/7Y1crO5YiT0Yq66i764gwI+TZk48Y6TyyZ+/Bo/BWaIYC5a
 4gzrUlP/uWJbctpQ2nKJ90i108sXdcoAmOETd2/s28kMm9hqsykREz3GO2UHXnX0f7W8
 pDGqL6IoO4q3qyyqDaGdsIStRhyAsGtgat79ZyKO6izzclnbzLNJOyeHnV8UWs13fxNJ
 zrSLFbUbBhgSDsKGCRhK5UDdHXpgoAZGd49TIxeOzpPGBhmc4Ed2gmuw9glpUhrbnmKt TQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3bcf6d244e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Sep 2021 09:47:17 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 18U9jAAh038784;
 Thu, 30 Sep 2021 09:47:16 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
 by aserp3030.oracle.com with ESMTP id 3bd5watpay-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 30 Sep 2021 09:47:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eKnj8prIimT7sH4ese85nrq7WupMREyDQarkMwYaq3WDZ0WT1khbhpCU3yNqFSePTOzMRFnOsTg48WnGOjGGl/9F7Jx+rfHJNmJwH/75IxbyEFzaDQehnbp6j/X/qBdOq0UYYSUunMIaMiavbMwRkm/nt9COuNj1pylZTiIT5EFFKFe8XNHP8LMGPTOr3Pq9SBlSTcmkreLmTDOnZujIBzu5vwOIe8Yttpa922UPhOIy7bxw9NfSdbjjaPev7qPVgSzgB/Wi30un3tM5x6ZutyhTMwOriJ4+JMgYc7SzEU+KeKnoE99rbFCqGuwW65R4fdbOsC32+/ViQgaQaN9LVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=x9zN710GQesexp07I33EDu9Ve0pR++cEV7Txr2rtH9w=;
 b=lW1yW2eSywo/sTHrrHJXi9XPdFkvNFmU1ZNVTZqUHtCTL/G+14s+3PSEbJAG3BsGInW0TcG8TFWO9YhhjJSrHBIPfJDBIaP+d3xCUJd9A2scNQ1fdDrxIlUcn1Dq6toVv9PZAMX1dZ0pspZkqcAiqLQ8Faj3pUqlEELgINySeWSoaXkzKsExMmEKl8CCtElGdldWj1iKh7bHMN0TyrVEtt1bvcjlFQTc7M6Glb4VvquUax5i+9dHmHl4uoPZ2zPKWOR98/UH3qRR70OxpZM+81gU++ujpFy7ueAgD3AJEGPOGTbZu/vQEWJmgg7vOFfUnL7LJvjwVij2WuiLihsF+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x9zN710GQesexp07I33EDu9Ve0pR++cEV7Txr2rtH9w=;
 b=f9b7JsEKJyPDP6FcaYbtC+yNIwCsuwSx/72gEvd+oTLMHd2cBLS2kHVf0HmRUnNvMzxdvGk4fiiBY1CDBXanaIk3TiLFFuaz0aXvL+4zfCXJtzorukqbaz4042ltvKlG2QjU5QOdelCZMMv0fFlf6g1uWQYSDGoL1KvDNnQphCU=
Authentication-Results: linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1549.namprd10.prod.outlook.com
 (2603:10b6:300:26::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.13; Thu, 30 Sep
 2021 09:47:13 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4544.021; Thu, 30 Sep 2021
 09:47:13 +0000
Date: Thu, 30 Sep 2021 12:46:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 1/2] fs/d_path.c:59 prepend() warn:
 unsigned 'p->len' is never less than zero.
Message-ID: <202109301219.cZqUlzDk-lkp@intel.com>
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0038.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::9)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (62.8.83.99) by JNAP275CA0038.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:4e::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21 via Frontend
 Transport; Thu, 30 Sep 2021 09:47:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a8795bdc-5afb-45c2-5049-08d983f747ac
X-MS-TrafficTypeDiagnostic: MWHPR10MB1549:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB15490BDB4B9B1D256374FA388EAA9@MWHPR10MB1549.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:202;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: O8pK5R3YZtxLbK3Pe7SvC7IxCQgbcpaITHXx6dI98EbI4/6u0Dp1djrljpGa2hL9/+MUAImBhynuiCQJL3G2PSDjsGpIxNL9MnvvZGCPKBYC20M9iHKq3+XyOi3D74s1C33xOi4GOzEVFkZA7IMxcui6hv/94yThZ17nGE9mDWjGqfdL82MaH9GDkm5bPRvW9vhvTiPqItB+cneJ6LkLVp5LTYksNPf+0mQVBPCKw9jnfky4FQEi4uHeFzfOXeOczGTXF7AfkX1tXVkj7TTiCEIGf3iC+NxZbBCoIW+W0Mt5kpEYNkn5qByilnBT+jXWs7n62DyPZriHZ9jSy3JCW1xz0TJZtsmFmpKFm+E1qH6dEn5GZ6TeoaWRGde+BMVJ1KDyUsXhr4TEkCqrntIUWVYYIDFNuHf8KPk6BXaPeaE9mwWn4lPQ8SoR3Ng1j75HDS6hzS9mQ8eCpq1FyEuAYs5hmOQ6dkphbrbQHitQdPcwiAwc3bH8oLdKsZtO17T0UOD3FcSOfvGcEpVJJGRK0i2PLyM6vaiEbQlrH9cVjb+JaFLwJzaQxMl2h9Suk9tPOg7xA9AM8ayuScMf3AKy8WCg7CEMajlgAyJz6W7NvAxOjBTUfeOzlNDNo6g5rypR7X9ep12zKvgqbl5bl7qC7tM+NT+ZHsnOF1Wv3ZlSQ+WKkENC+PPDJNnGD6x1MHKNVFV5DVqZDITENoA2oJ1hstK/XQc/bnOguY6kYptTYkPvs3RH/mPbUyqRhwlg3lxgFDdIFmRjvf+WRN8TvAwZ86OTzUwiWUm77QNwQgSVEJW4TQDS6ffpMhARB7Gz4nf7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(8936002)(66946007)(38100700002)(8676002)(1076003)(4326008)(86362001)(66556008)(956004)(38350700002)(2906002)(66476007)(6486002)(6496006)(52116002)(83380400001)(186003)(6916009)(9686003)(5660300002)(966005)(26005)(36756003)(6666004)(508600001)(44832011)(316002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qr/m13Hs4p3PyKRcnoOMfwybyRTKo7UAhui8eonCMhsVTTRb/KXclrP17hdw?=
 =?us-ascii?Q?Mqhbuy79nZvNZFrhovHBLsZDNQRRA2BJladnpq5Iy22nX4u//4g9d0nrWG6w?=
 =?us-ascii?Q?o0gdZabbVEOrt06qvIZ/AxptTHHKfBUeulOkIZfip0sHE8GZlSzKoh7J/ybo?=
 =?us-ascii?Q?5z/q69FUK0v3Uzf6xGtB7cVFJSzudEblHMh3BT9QbEhc/o5HpR9sglKJq0Eu?=
 =?us-ascii?Q?yTFSv6iEK8tiUo5EKrpkmn+0kDE5RdwpxdqgIE8337Fh0fgC5vLsjOrQpUhh?=
 =?us-ascii?Q?bslFBDzNiLlwPcZllvnpaMkSSkrs0gHIECYa3Nou9ZUAcKIhhuj2xJrKy6Q+?=
 =?us-ascii?Q?+utAww1AntRfjXNE041WojtO04S97KFZwI4pgNWjdPXcu/uvLAYkEd8YarEM?=
 =?us-ascii?Q?IS6YOfdqHEk8q6l8nYc4krxhgSgdxTuhmpXHTq8jy7sy+jtzuF8ZsQkwtVqr?=
 =?us-ascii?Q?UWIifHEODdVwqViOyk5LU/LOBEhFc9N9ywhHXfu0NmEFN6OpRcBeYVuebHAq?=
 =?us-ascii?Q?hTtoE2s0A82u9IkJEO7oJuGLt5f4Ak3CuTH6XM4+f5pY6wS2BbJYPffAIv7r?=
 =?us-ascii?Q?rCXimnPlvebDBixVF5KnJz2GbRUjFITJxOMlW3mQn6qUaiQ3fBJQpBjJ1/85?=
 =?us-ascii?Q?Kl9m7rzEvaIiJ9k3OSrsDmcV74bsefnos3b0dk6RPktI6def70UTyrc17dIR?=
 =?us-ascii?Q?JYMGGvraWqh/+JWGwU75oU2Th8n8ul3dJ6tlJKxd3mvGjyZ9XQpTffnbqEc+?=
 =?us-ascii?Q?iiCX/YR42EuOP/mpEaCDYyzlYww6e1bVMGTRZNLebrLgBliORGPswLmZY1bz?=
 =?us-ascii?Q?//hEjbVnBea0ZjE82iFtSyziamwu8oui21l+Igj2ItwMqxHUBHQ7Ax8cS+hj?=
 =?us-ascii?Q?q1RXNtOhMBBmD4t9Nf2ztIEE4z/Qf3z4Bq5fSYIUEnMZaCeerXL+iaK+qH2J?=
 =?us-ascii?Q?astDGqZzrz1F5XYejQRxI1Eq8dOFlGEQEnmxt93+ZvcGp0F/hcz3N/XI4Urk?=
 =?us-ascii?Q?Vsw6s48qlZFHPXSVwDx0O6f6GsH9T7dZVflolqumWTbTJE1fNKWFDzvN4BkA?=
 =?us-ascii?Q?nBvu3CeRITdbSRFgr/+o3Z8MaHGgaQKIi9lk5J4lQewbwtYM+jUBxV19v08m?=
 =?us-ascii?Q?VCVp61hbgm2jv5L61RvuWB2GNk9quIrGqG8VzJmVNvT4eVhC4hq/XAYc+CFt?=
 =?us-ascii?Q?gdG+j1RyLSAxH6v4N1UKaY2jCHCGHVquF6d2i6ZLJ4Zjipe0/FRfrpZ4CU+z?=
 =?us-ascii?Q?2Ki2x1fxBN2R5iu9BYDxIdi9lJkOePWFIRjWoQO+I7gxjBSrIL2eCgWqW4W6?=
 =?us-ascii?Q?uiLLwClmaZo6XrLZi5MXoNUV?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a8795bdc-5afb-45c2-5049-08d983f747ac
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2021 09:47:13.6868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XUEZVnNIx4rNh7LStal/FynC4hUcQhM+5xNpwNDqoPK3t49w7VyTq6/+FJYhcbJHDtN5AtvPud3zYC6mp+DBbHd9zJH7eihYcr5/gp+lW/Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1549
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10122
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 phishscore=0 malwarescore=0
 suspectscore=0 spamscore=0 mlxlogscore=999 bulkscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2109230001
 definitions=main-2109300060
X-Proofpoint-GUID: -6RhgHx3nc7sTB8AblRJt3PSXzs6_NBa
X-Proofpoint-ORIG-GUID: -6RhgHx3nc7sTB8AblRJt3PSXzs6_NBa
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   c4535d1b074f3fdd9476e83526d4e9b53f41a7b5
commit: 473082c5bbad92c5909ccf75fb28df699b94de82 [1/2] fs: make d_path-like functions all have unsigned size
config: i386-randconfig-m021-20210929 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-22) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

smatch warnings:
fs/d_path.c:59 prepend() warn: unsigned 'p->len' is never less than zero.

vim +59 fs/d_path.c

b0cfcdd9b9672ea Linus Torvalds 2021-07-16  56  static bool prepend(struct prepend_buffer *p, const char *str, int namelen)
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  57  {
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  58  	// Already overflowed?
b0cfcdd9b9672ea Linus Torvalds 2021-07-16 @59  	if (p->len < 0)

This is impossible now.

b0cfcdd9b9672ea Linus Torvalds 2021-07-16  60  		return false;
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  61  
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  62  	// Will overflow?
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  63  	if (p->len < namelen) {
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  64  		// Fill as much as possible from the end of the name
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  65  		str += namelen - p->len;
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  66  		p->buf -= p->len;
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  67  		prepend_copy(p->buf, str, p->len);
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  68  		p->len = -1;
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  69  		return false;
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  70  	}
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  71  
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  72  	// Fits fully
ad08ae586586ea9 Al Viro        2021-05-12  73  	p->len -= namelen;
ad08ae586586ea9 Al Viro        2021-05-12  74  	p->buf -= namelen;
b0cfcdd9b9672ea Linus Torvalds 2021-07-16  75  	return prepend_copy(p->buf, str, namelen);
7a5cf791a747640 Al Viro        2018-03-05  76  }

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
