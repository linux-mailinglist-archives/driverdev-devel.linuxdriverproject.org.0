Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 070743F4D90
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Aug 2021 17:33:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D17C980E4F;
	Mon, 23 Aug 2021 15:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 19HuyXY_6rPM; Mon, 23 Aug 2021 15:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E026680E1F;
	Mon, 23 Aug 2021 15:33:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A09B21BF3B0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Aug 2021 15:32:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9050D80E1F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Aug 2021 15:32:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jWyrnD0rgPe9
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Aug 2021 15:32:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A43E280E0B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 23 Aug 2021 15:32:52 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.0.43) with SMTP id 17NEa1AS008810;
 Mon, 23 Aug 2021 15:32:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=iipuR83M6gvfOpYK9bQAkv/vL75FHXN9w8dOd2Ue8E0=;
 b=YdgGIV63GOyNSqQVt2j/5xjQDuUtSU5GeJYPRo46L95pHQyRGy4DRJysX23paj1HYvED
 UE3snOmcyKXXUn+kRqsw94cDEsgA+WqGIe3czNZ22tfyfSLYePeYzcHKPJEXGQLxQfEt
 t8ub8jusFK9HoIyNMiAinOxkWFHe0zYMc5L2kLY7a0kK2DPucvGNPOeW0FEmeccRRO9x
 PFRzbx8UdpZ3DxzF+XOrgkZ0BMLTMdsW2ais0jTf/ljyTDtpytrV2s4vDvmr6K5K/0Y+
 CjXhJYaw0RKcwWHkVk5wPJUdiV5oxQZmVPS1HDv+VA8LMu4xUJfiKCM1QUwLNiio1nLO cw== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2020-01-29;
 bh=iipuR83M6gvfOpYK9bQAkv/vL75FHXN9w8dOd2Ue8E0=;
 b=LZ/Ui69RG+nteQ412KI+VFMS9l4nOo0Ws1df22FEpEQuknZc6glA3Fqs4t0lSl1E1jZE
 CC7hAoHovpSXPJUJ7JP2urt9+92AnSzZloH1tcju6JD9P/qyE6+ZnfL+KcwpQVTXJvG7
 fSvzDNndoCi3Uc8MFlkyoWrDaOgAUnDQpaX5ouqBGB4yz3sJwL1/c0nYBxJKGwswU+zn
 OCgfOWzmxYxZ/2VzBSaSEpoeEj9/dA6bEaFKvmdfp+UZARwAQ1N+HIn8p3KqhD1sVfNu
 kyNeMMST/oO3/GmVzJXvazC0WaUjUye0idZ9ziDcPKyhOBtUoe0eoRhY39lV1X3bNmVh eA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3akw7n9vvn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Aug 2021 15:32:51 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17NFFLL6030110;
 Mon, 23 Aug 2021 15:32:50 GMT
Received: from nam10-bn7-obe.outbound.protection.outlook.com
 (mail-bn7nam10lp2104.outbound.protection.outlook.com [104.47.70.104])
 by userp3020.oracle.com with ESMTP id 3akb8swjrf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 23 Aug 2021 15:32:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XKDxxOrkGoApCj/SbphakjzizW9xJhrvvjscU9/Ur7xkDM3yTkhCkhfDPMWGCvEgqbhJq//LYc0WoQ3r5VEFISLAybDVZct649qIuhvKtvNdhZlW0XMCqu5eUDTAGQr2nFxoM0CFaaCpxg1jmDLyusr3rNWLtp40CcM/+dY6xXa/ndVEnjTtn6dIlKsmPBdeNig4NA/a2kwf7mojFHBR6kiXmGAgs7pxRn8mxhUF6J7EJ31pun7O7uRMr4TQXHAvC8IQTD0F1PqGfK2BMIn+WUCfdH2tCwXokvBmYS4ZTbpZVk8VJHlD0QuPlcHkyl2c/vxZ1nkJ9kXWCNmQaBP00Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iipuR83M6gvfOpYK9bQAkv/vL75FHXN9w8dOd2Ue8E0=;
 b=lowLRxDjSXQ2N9cSSDF/p+8N04lx+uOQ+eiwSmsq0+9QBojYGBO7EObX1vHArYVT4KSRPKaIaX4gq3tA4SmU0LD9vlu3wWZcuNAjpFwKDmsDHDyYOkssWnrhC3eRm0zFn4ke2MpDIY81uiGMv6u/85vDk7RycICr1Yu6qZHro7lGIGoKzDlOceqz3CaelXZGfI1hwb6gJwAzd/IfXZ6/D/od1sDg70oMhzinJft6yiHBNxZxarQeS6WY5n6eyZRGjOHtJZgC3pOUXnw/Q9fz5hjT/lhFZnqrnlpmjlIVJpj+4Kr20qTt6tbX1vwXMQw7b0JVoM7WtRd1Pzacq7J7mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iipuR83M6gvfOpYK9bQAkv/vL75FHXN9w8dOd2Ue8E0=;
 b=vAqMo3BbA0RMQGXNijur0qLpcn/kEPPfDfHMo85OS5mGe38fi9MEv/zkMlZUWxN0VmrZ/v2cIvl9Xnos7fX8IEmOZo6xhYrKW0JwPriyJbE3x8cg75VVoALPlol7qfcTUnUntjoUyaywnAXtZn7hfN24FfKHgaG2Ai4zM3XDWtw=
Authentication-Results: madcow.dev; dkim=none (message not signed)
 header.d=none;madcow.dev; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1903.namprd10.prod.outlook.com
 (2603:10b6:300:10b::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 15:32:47 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 15:32:47 +0000
Date: Mon, 23 Aug 2021 18:32:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Leon Krieg <info@madcow.dev>
Subject: Re: [PATCH] staging/ks7010: Fix coding style problems [Version 2]
Message-ID: <20210823153233.GK1931@kadam>
References: <20210816180447.GA17851@mad-cln-mothership-1.local>
Content-Disposition: inline
In-Reply-To: <20210816180447.GA17851@mad-cln-mothership-1.local>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JN2P275CA0014.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:3::26)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (62.8.83.99) by JN2P275CA0014.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:3::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend
 Transport; Mon, 23 Aug 2021 15:32:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 31d22d76-14a9-4fff-f471-08d9664b4274
X-MS-TrafficTypeDiagnostic: MWHPR10MB1903:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR10MB1903490484BFB57C5549F90B8EC49@MWHPR10MB1903.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: G55i4gnEMRIUL255UvN3ZOWvLoA0Ra0ooblGakarplwY7fjlokqRqOPIol9NlpUGLs1k3yHlHpBV8+90KldL+dLBWdwmdKwqEasLiBMSunGRlLo6KoOtZiGpmnPnCtgQBOq4m6jAgTfDpahJ6zzoFfYkU1Gn2xi4H1dR4sqPB8DZhyF9fKBxQFOqCzruXfw1toIQahiAalFDSQAVq+6gN/utiDDTG/OBaah5ZmiXDArzciIU6YkW99dd8SNiSB/qoY2gvgSkxd33CjYJPIuNUX1WM69QgG1v6uYN0sBuivV7s9svfXEkIRMMX898NMgunMDF0jmlDoIVhTH9wSlN2QTaaGtncXRGE8ozfk+Q+GhaPDzd/stuTeSQSvCwqCKJDS/CPfQY+rLJPOgHp1M0q7MtjnxIlycWuvd3Pc56P0rKsPdGzfiKpHLN5SxLXG7xP6fXxilhYP02UkgEIx+OG3gth09CSwrB8Riqd9REEKxqKghVXMDiDHj4gjDwNbuKZLTTKFQRXkKCoLgTEoLjmNCM7O6WiNfTsrm1J5g4QMnsiUaROVDU60HHVBzkMNFg/OpdZDJQNdBd44X3rcMm4lWsNnJCvVOnu8piy8CiKZjk8pCHB35FkfQppJt+LFWED8B7UDEmKewZVuKVqHwGKuWlWpA6dUGCwFm2wg7bzThTxaplC7xSG+WFJTTjOJlSsyFwXEQtCBwwNX2jMokTJw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(346002)(366004)(39860400002)(376002)(33716001)(55016002)(8676002)(66476007)(66946007)(66556008)(6666004)(26005)(38100700002)(38350700002)(5660300002)(9686003)(186003)(8936002)(956004)(33656002)(52116002)(9576002)(4326008)(4744005)(6496006)(478600001)(86362001)(83380400001)(6916009)(316002)(44832011)(1076003)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tM5cSpYXQ2z5QjN0B9FszfYKdUzmbdI2InePxXLrMpeAL5h8cchPNuS4oXBK?=
 =?us-ascii?Q?ITuheT7fBBplFsf6vhN+U5b3HnJZn00K57Cgkl8onWSsdY2zbi/0n6eSX9+c?=
 =?us-ascii?Q?jqRYIBeOxZxKRE+XIdTckJGG85zcdj/BY3tBfd2LQ0GaWD/07dQ/Z5t65Lo+?=
 =?us-ascii?Q?YDs27PgGz3UN9NfS7AzArUdDpa34Tr6kVs8CAAikb8DMw6FA9FTj+gvklYl+?=
 =?us-ascii?Q?Isj7W2ar/ZkOWFSASal/cEshBxswJ8MsIXeK6gahOrJgE9N6O4mD47yWy2Eg?=
 =?us-ascii?Q?o1gO4LirQRM5oV7fZTRHXXLpRJB/reZgrfVnj+reyVhHNFDrOnbkgxr2Q7xS?=
 =?us-ascii?Q?N7HDWS6Pasj5RtV+7I5AXXZVchtHFA66t8AtvfkREQQ+V2b8FyjuCvK8AZMY?=
 =?us-ascii?Q?djm2Ep1R1+v2zqruSxWFLCF4/zCdzbFvpsDzaCrmPOteJ8HaVRmaY+ZQYEwv?=
 =?us-ascii?Q?rGp1KPXhDCIPsmX/RGWs2/k4L8Cm5Wa1nMVuoT8whFCuhqXC07wohtWAjjvK?=
 =?us-ascii?Q?1qc7U2Icl9JGgG8YPkfRnit+kLU3S0HM1yHLt5jpTbRGRckbexAi+SY6AwM2?=
 =?us-ascii?Q?+CkjOkSArP3KCOHhzhEIEmSaE18LR5xqGaSj5nGDC9NYdnQt95Ldlp4TaFzA?=
 =?us-ascii?Q?0cgaEYtS3SijEVkwLIzkI7206sYr8jUKp4q28jIZKhrPtSSRftqPLHtKq3Kg?=
 =?us-ascii?Q?MkeqhV73jQTGvy2aqSYrFS4IVPpzdODYn1177MZ0MptkpkKdd46D832V5lOP?=
 =?us-ascii?Q?Nnu39CZ5AvK3yxX41Rw5o3gwOpzPFPwvKI3NVcld482Zreoy6lqpkQlEPmh1?=
 =?us-ascii?Q?N7m4CJ7Oocwa2jwmA5Z21pMdD3tzUJZPOjZro2Ql8w0L+Se6fuaCFU6qdm4/?=
 =?us-ascii?Q?+agJ7SLBJhw+3KCf5gcxd7y52duF4Ifxs3Yl2aaO11tO6zdFr0lzmGBkAmMo?=
 =?us-ascii?Q?kEcM4QyZ4ISaxxwT+oaxDl/2myW0Pusndr/EGk+eYAPaZ5EFSTXbWLhJ+/Oi?=
 =?us-ascii?Q?mDmsOxhdCpxaulsjO3B0V3Z2Ss3oLcwSWiwGZ92Mx/qoUQBQ2zwWHYR7XmrL?=
 =?us-ascii?Q?BBIAy9BU5SvzMZmYJ7OF/7yjdEmEMnwvcm+b1QM6O1TRwuiRvYzFBpWDiLyd?=
 =?us-ascii?Q?IKSVvluSUXRyZeMIoc+D58BaN8gNX8jx5PqnlyxWeyI72S0GE+peTJOIQvz8?=
 =?us-ascii?Q?TjgR20GOiJoBEDGOFjCt2sgDVc9Z/8VkJX1+7q9YSKtVf/xkwlmOmLPELNeC?=
 =?us-ascii?Q?/tOV0WKGKXUYDYH2Z6ZbLxPKXAX3n1gs6qD2KedCeWjX0wN0nGpEfPueh/7O?=
 =?us-ascii?Q?zPjt8khlvEf5HX+Og96vWt2r?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31d22d76-14a9-4fff-f471-08d9664b4274
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 15:32:47.7334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hnpV0ETHbjNJI2y2US1CoyeZnSINAxiNc8ZjYmy0CUo1ixvOsa3itvuYhkWZkr3oituNxQUC+3663QphIax5EE7EI67rRsQNNKpv3BGnlng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1903
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10085
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 phishscore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 adultscore=0 mlxscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108230106
X-Proofpoint-GUID: 1OPxz2wzN-bd5LB60DAYeaIBrbUCUbEt
X-Proofpoint-ORIG-GUID: 1OPxz2wzN-bd5LB60DAYeaIBrbUCUbEt
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
Cc: gregkh@linuxfoundation.org, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Google for how to format a v2 patch.

On Mon, Aug 16, 2021 at 08:04:47PM +0200, Leon Krieg wrote:
> By doing some last-second wording changes directly in the diff I've
> screwed up and managed to use spaces instead of tabs for the Kconfig file.
> This is embarrassing!
> 

I love adding backstory to my commit messages and but this is a bit
much.  :P  Just say "Use tabs instead of spaces".  Add the backstory
under the --- cut off line if necessary.

Also it doesn't just change the Kconfig file.  There are a lot of
unrelated changes as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
