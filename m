Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F41E745C016
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 14:01:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD7C04056E;
	Wed, 24 Nov 2021 13:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DZL5ppvXO7rn; Wed, 24 Nov 2021 13:01:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0061B40288;
	Wed, 24 Nov 2021 13:01:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 52C9A1BF426
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 13:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 41E4C60D54
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 13:01:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="Y5oormlg";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="OFLCx7Hi"
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TAO3X9rMxJ_V for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 13:01:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6475E60C30
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 13:01:35 +0000 (UTC)
Received: from pps.filterd (m0246632.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AOBvoKT030842; 
 Wed, 24 Nov 2021 13:01:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=83boVu0GedHNS9XqeRhvW+G6ERI4Fz8H6t+rrAT6cwo=;
 b=Y5oormlgvSIktNbvQDLwAB0OMYAdRXlQuTf4scMRiR106hGF0/hj9m/Jcn2QR8fzUZKU
 eyhtQ6Ft8ple6yNb/3viW50Wx33PzCPJQIrNKeB4BvUDSqqnk7PUBIkOSmlt8Y9n5GDs
 g4tylhCajYavN1QGU1gkutmN+d9LqKgJszZsblL+eInlo6gf+jjbvexGn+/6XZxMPlCG
 lvky/jNBfTBlI2jAe/IESijLGdMJV6g0LojFgVvzi9el1NBNpp1PCjcFoDA3KcCTWjra
 6nCTQQ5Wii6Zd7xW3jhwk6TvCgxFFZwhq5Rh10rWsznNwT3obkLRa5EJ01brcK5052Dc /w== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3chmyy8abb-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Nov 2021 13:01:30 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AOD18MF116298;
 Wed, 24 Nov 2021 13:01:30 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2103.outbound.protection.outlook.com [104.47.55.103])
 by aserp3020.oracle.com with ESMTP id 3ceru6xq3s-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 24 Nov 2021 13:01:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dbwuzg1MMKGSCiOH20szPSQBL1Y4b15gTB8RnyauZqj+bbKVTeGe/VmWxRiPHXailw3sQQHqKe5uZHZYTCP8xqu2sYQ9xf/SfJGtaeYizUKe7Ac8fMMqHAYakU+GQrWGxATuib0xlgHMwyISwurtwsqpYj1bgGJsn/baT8CzFx18V1uGwBUCampdWdF26aAiIwZCdq2WnIPHEFzkRnv5LfQQ2iM7HkVS+kJ5aKC2o4QpmzAtCt8ohQFswqJMyu28nlfHJ42P3Lmy+ROmAQExKb6m9Poil5qfgdaarngG9R70yxmPzk85Q/3m3uulCb09L3//U/ge3NLIOflwDKOfDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=83boVu0GedHNS9XqeRhvW+G6ERI4Fz8H6t+rrAT6cwo=;
 b=BIrbpJTIpYbdrpAH+0ybVRjmXhu1QNmrJdpgOii3PBA5NERnPjh5Y7ABTVEI2u2NMNQmjkxfDCe2W8XaRFHpK+1RFRcHJzphgtKibcWJ6X3t3yL8mrL83MreNu229sWIPykPKYpmrouzhfCInLqkODcZIh+I2QfNQb+ZNx19kqW0R7TVHk1ilUQCTThwAx1NkxiZTFUjf3M+0wli3HgHeqXUwgQ4TYwV4Qa9QZIKtYUEb/k3jSNiyiZY0poTR7eB5rvQtMhsKZub5BswXDis8ebSbDlL8eNyPni+nIlztNx/WOuz0yvSjyE2zGzsCfx3dVSsCr2+Ow33sbyEa20dtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=83boVu0GedHNS9XqeRhvW+G6ERI4Fz8H6t+rrAT6cwo=;
 b=OFLCx7Hiz7wR0wKfuy8VSLYjlrREPXKkOULtIbjhXD1oLMviKe2GAEb+nzRhMgLWpBpWXZW+ozptBTgX85IlWPmQUrIXuH0wBjwdLsvj/rt6HO9k/TAEoX7W/oU90zvfZs5BVUOITdvRABBPKrMxv3Ilmi0szHmt1y83Q0MwHaI=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO1PR10MB4468.namprd10.prod.outlook.com
 (2603:10b6:303:6c::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Wed, 24 Nov
 2021 13:01:27 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::7194:c377:36cc:d9f0%6]) with mapi id 15.20.4734.022; Wed, 24 Nov 2021
 13:01:27 +0000
Date: Wed, 24 Nov 2021 16:01:04 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH 1/3] binder: avoid potential data leakage when copying txn
Message-ID: <20211124130104.GI6514@kadam>
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-2-tkjos@google.com>
Content-Disposition: inline
In-Reply-To: <20211123191737.1296541-2-tkjos@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0027.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4d::17)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JNAP275CA0027.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4d::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.22 via Frontend Transport; Wed, 24 Nov 2021 13:01:20 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3cf4f486-704e-41a6-b1b7-08d9af4a8693
X-MS-TrafficTypeDiagnostic: CO1PR10MB4468:
X-Microsoft-Antispam-PRVS: <CO1PR10MB4468696CB4F24E5FB338A45A8E619@CO1PR10MB4468.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s3ZZNJ5HhtjoTirhHEf2JmZoIlou4YBMYX8cuDjawDgT6IFms0fV9GdrWpeeqpKwht9DImyDD/mNABcCNItp3dKFNqIxjFxz9FXgdv4MBLPryE/P4q3htpXnDpAR3IVh5g5FJpPCT60vgJFJ8XTPtXgoXbu0Rc7NW4T1WYMKKVMBIF4rp3HtGSFCzfv8j/Sm6kdsuLID3BZD2D3ylPPzKLQfm1taiWiL3Z4ZFzK/4ymmRaTU3YW+IiAqxRdHesDLdgNO0pG86OuE3b9Jtjt+JxsrpxqNe7EVihPpFPsJdxWQ+/nQARfz1FCndWdn8C4isBug8pTBORM8CrJXph/CWqvSgg8Fo7YK4Fwhreu4AysoFC4JcbAa+Xu+77Q+FbDSyCmucsrUAQTacr2EkL9BIhfgeVEQxO0RWPwiqFOwf7k6nq6DrEe/aoWM/dab84wnk9PbcieO8MmBEXuHgG/Aj+F7f8NthZFdX/fybjrhd/nnwP5zKT3KTyDo64OZBvLrvu1n9IUhb4yb1YFzve1WIR0TVktKvLp9Pqas2Yy3+0EqssOwzb80s7U5Xrik0c3eZYU2lZwL7jCQXFSCWL5+rVJe71Yxq7fOB0hdzz0jAI7xtAtjmfTUYgqlA9DNRFI51is0TcaFg0/J1mMJbCyyxtSkuVgGKizqSb6Rk09tMCLnbS/jJTa/45VYmbfKfxMUompMxaO8vOJ6Oh8/a0YJ4w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2906002)(956004)(33656002)(6496006)(26005)(6666004)(4326008)(9576002)(6916009)(316002)(44832011)(8936002)(186003)(86362001)(66556008)(1076003)(508600001)(66476007)(38100700002)(66946007)(52116002)(38350700002)(8676002)(55016003)(5660300002)(33716001)(9686003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?x4M3AtbhCG6I/YqwOUDWBxLp0i4LPMuZFmVSVUeKdBVNIf8rObZbAy15CWha?=
 =?us-ascii?Q?ZM66s7wOvdzW442gvUXGzdvJ+uEi6qo9KL5Xcua9X24mvxhfcx02loUPD/m3?=
 =?us-ascii?Q?znFWrbcbmLrzvLb6OaF0GZUW4HJo/a5uCYOGcWd0nmFjBcuCxCeooECuGftK?=
 =?us-ascii?Q?PM/SXJ4R+o1zlaVQhM/ZvCuDZfitCGKBsgVNVDVe3GUD0Arp9hZuVAgtKSoR?=
 =?us-ascii?Q?asxdKeshZOfXKDxa2mkMeCV9jU2kE/w7U69w97EhRHToWaSo1zLk4Gaz7BjO?=
 =?us-ascii?Q?q9qf3Yr9vMwJDYSC58+81c6mgx8+rXKs2A+I0fe1i+PPSYZ1X1spcQDzMcFi?=
 =?us-ascii?Q?qnpGBDB/aI4clvNyeg+a3BpyTF3jwtLJNNoiTrqR4UWC/hJcNxoEx8teqooH?=
 =?us-ascii?Q?Kt+lmD9JsmgTLU9HkfTjl+T0vRv/+AYgGDCDoEX7Al7bHbbs/M0LHvcFPfsg?=
 =?us-ascii?Q?VG/B6Kba253kca37ADj44OAXIDgWA4LNL/ZfKTZEB+4qJn9OR0QDTyDyEB+E?=
 =?us-ascii?Q?TW9CwuUuVOLxrrlFjGNL/Sxt5y/UB4Wtoj/FI01T1t/1jdbHMxVPJDrbrV8A?=
 =?us-ascii?Q?AdNzP5hmzPZXdPZ0xQowF1L+MkyJ+lyPuyB2kI4HhbY5eHC8iPtIylUHIAL6?=
 =?us-ascii?Q?fv4j6LbQfOMLqdFm3PiGVqhiGkg77BWgEKZ/rLfFPwEJlhMVj8LKT2mD3Sla?=
 =?us-ascii?Q?XYmXWlx0h7NdeomE+LvrF+TFQTvKMD+f8eMRWcHmIeSiXFPzbOdpGlJDFoT/?=
 =?us-ascii?Q?LPtSwaoN1Zwr8/4XXwCvpC/Bo3hs9eXDHMsEfsnS2j79plFFTm89cv05CznK?=
 =?us-ascii?Q?DprmAPywoKXiULJMQNVCkWYepZRODI0HbhM/Fo0uAyVOH3H02P35uFkqMIDK?=
 =?us-ascii?Q?RaDau9vsZ8uz9InpoteufNT70NgBigTpze3Wnc1xdwxai5qFv/P8N3nY9bov?=
 =?us-ascii?Q?cz2NwDoXXbbeQnqvb8k4KCzUlntiKTb3hE1T5We0fP9eVkkj3VlXd36oJyQ4?=
 =?us-ascii?Q?cAWANPfhyhoD91dudb/DnooSxlUzdxy6O8PO5NShhs3PipWx5YpXK0HRmy/R?=
 =?us-ascii?Q?M86V6fbFRK5clRREiCI/G5GqNV5/Pz2SxIg1t1Sij4ViB2GkPromI3CyYvB2?=
 =?us-ascii?Q?92ri0pfcfi5g0h/L4ZAGt/FzUGUAhKkxGK1xFC++rhSlKFLbd7g5djW/ViUP?=
 =?us-ascii?Q?8NQaw/zYfPHKPgXzcWky4WsWEQu4KumBrkY0wvDP+CXymSlBzRpDK1JEW2+I?=
 =?us-ascii?Q?vLiYpYTOE4FFyrDQw5Jc1qwtaappQJDZ+vuVTwZZL5pt9ECZrrnTsPZJ9o+4?=
 =?us-ascii?Q?cdYpBvN35ZaKS4TLkqfc9/GH4qnUjjB56ki0hbRP1YMRkCE84RPiGpes0Uh3?=
 =?us-ascii?Q?5NBeJo/fMjUDP2Zc60Ui49GKjoBJ5Dkpv8e/uMvobpme89UxVG9FJOvmOCb+?=
 =?us-ascii?Q?Z4V2adiswk9jTzRXrxBodQk74Bj5ud7TnphkY/7cBNZ9VcXaBhJT41VcnfmW?=
 =?us-ascii?Q?82MwlBhVxRXoJ0YjknEYYZSZRgMmGp28oecJwmyMSHZ8RW1knk1eRwgufk/v?=
 =?us-ascii?Q?HuG/0yCWQnYeZIi+NXUwomxSNfufDJY0SW0MfuXHJ6ULGQp4cbIQHFFSn77S?=
 =?us-ascii?Q?q0dc1vpA9st0+ZWGXHwVep/d96xhU98n6FLuNZRPJqKcCesOZ+99gFCxniTw?=
 =?us-ascii?Q?G8StInWXMQRPZ4l8TMhYxSNDI0k=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cf4f486-704e-41a6-b1b7-08d9af4a8693
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2021 13:01:27.1611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e0bI8UrEAnCXuFlYZJJsXHvGr/NMfGPHMOGsDiKZ9le0TJMz4TUmZPppv1WyQtW3gfCjL0RW2kzSsqTQfkQ92qKKWwXagagb1zwDzufNNbI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR10MB4468
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10177
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 mlxscore=0 spamscore=0
 mlxlogscore=952 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111240073
X-Proofpoint-ORIG-GUID: Jyd_dxjLc68gIjm1Da4YKmPqBPrfu5kF
X-Proofpoint-GUID: Jyd_dxjLc68gIjm1Da4YKmPqBPrfu5kF
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

On Tue, Nov 23, 2021 at 11:17:35AM -0800, Todd Kjos wrote:
> Transactions are copied from the sender to the target
> first and objects like BINDER_TYPE_PTR and BINDER_TYPE_FDA
> are then fixed up. This means there is a short period where
> the sender's version of these objects are visible to the
> target prior to the fixups.
> 
> Instead of copying all of the data first, copy data only
> after any needed fixups have been applied.
> 

This patch needs a fixes tag.

So this patch basically fixes the simple part of the info leak and
patch 3 fixes the complicated part.  Have I understood that correctly?

> @@ -2956,7 +2984,11 @@ static void binder_transaction(struct binder_proc *proc,
>  			}
>  			ret = binder_translate_fd_array(fda, parent, t, thread,
>  							in_reply_to);
> -			if (ret < 0) {
> +			if (ret < 0 ||
> +			    binder_alloc_copy_to_buffer(&target_proc->alloc,
> +							t->buffer,
> +							object_offset,
> +							fda, sizeof(*fda))) {
>  				return_error = BR_FAILED_REPLY;
>  				return_error_param = ret;

"ret" is not a negative error code if binder_translate_fd_array()
succeeds but binder_alloc_copy_to_buffer() fails.


>  				return_error_line = __LINE__;
> @@ -3028,6 +3060,19 @@ static void binder_transaction(struct binder_proc *proc,
>  			goto err_bad_object_type;
>  		}
>  	}

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
