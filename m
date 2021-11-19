Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA74456BE1
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Nov 2021 09:52:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 567E661BE4;
	Fri, 19 Nov 2021 08:52:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eRJDtMhYn5tx; Fri, 19 Nov 2021 08:52:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A604060A6E;
	Fri, 19 Nov 2021 08:52:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EAA1C1BF2B3
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 08:52:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E5A2F405AA
 for <devel@linuxdriverproject.org>; Fri, 19 Nov 2021 08:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="FXvTOkB3";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="Y0d1SXOg"
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rw03UY3GCFRm for <devel@linuxdriverproject.org>;
 Fri, 19 Nov 2021 08:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E5D60400DF
 for <devel@driverdev.osuosl.org>; Fri, 19 Nov 2021 08:52:05 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1AJ8V1GU009978; 
 Fri, 19 Nov 2021 08:52:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=pJKkTTXw2ojLLV5kTSbtowsFejGaySHj0EzO0uWBNvE=;
 b=FXvTOkB3k6lNYRquCFxxD4WRZFReFr3n2N8adFa7H0oVkCNTDo65jaTjJoawCuFTvoxe
 oFB2liPetmDTL2h12TUqctwOeyJglq8EeB4kZCJleOneoSCdxoxVO5O2q+5NnbnxQRu5
 4gNpDSCCEEX0bKo0Cvsc2/ZBCHvSVz6vDob+ZGQg0oz13Q1afR0W4Ji8uA2fJnqVTn9/
 rSW8rqp0wiHvk3v6xTCVzVfagoLUz2+PysFhCR4nqMxo8xVmswFJ4FSeJpCXTGkm28Sz
 ySOJEVq11EkuvE935pG6KSsCrUlnFq+A//yz+wVHujsvR2S+g0AqhKwyrPXWk4vN5Sq+ mQ== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by mx0b-00069f02.pphosted.com with ESMTP id 3cd382ny1j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Nov 2021 08:52:03 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1AJ8oncv003681;
 Fri, 19 Nov 2021 08:52:02 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam08lp2040.outbound.protection.outlook.com [104.47.74.40])
 by aserp3020.oracle.com with ESMTP id 3ca569xgxp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Nov 2021 08:52:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G1w294GPpWjE3N2sT/JRT9o5AetVX0QzuJTQTZRTh/LoDrVWa9Nh5q/e9A8TD5pVIqET4L2GgWhArjPKEqhaq8yM88/Iq6aNmi6SRnvO5eHcdBreb09o4gtoc2eEW6OhZzj/6PF3S/KOBbqPTnqejv6N8OW3KculTv8roLMIurby3lQp8GV/WqOES4HFw4hel0Znt4cGkNpUiVhp6x/ZTfGqAQuPayrogorvVWo1/2wVrJDd3gy9dNCTzREx5odEv0enKDoiJWmxkYeHnGbjrUsV+H4PMpICxKhOw8pfKEGzLUj5x3IMr6PUO+YtTDs0aFz/Gkl1j4I9430wRfLqVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pJKkTTXw2ojLLV5kTSbtowsFejGaySHj0EzO0uWBNvE=;
 b=moUmsTIXG3Q4MczIu9iBKMqjlaAr417RWEawsxaqYkTieO5ZhAkJdgiwU3r7NK/9tGIeM2+LrxNJsmwDCHyc9x3FhgAz9qS1CxuGJpv/MEV2pprGsniOIRvc0/L8G7+IsiLnF9PfhKTb7Agq/8x6m9dWOokx+NamwpcCWukhhu2uE4wGlStzsiGHhJRsnjzrPh1302RWWwf1bNcj3Y594opFWohzzmGL0UuPGtjReRXGFE0pHHPAxZcSgBtts7oDOJXBAaNcF/Hr3JNXUSYGokqa0Yebd+f+cs98D3mZ194taLQiutGSQt/gNJKs7vWhaoaEdBNwGJHkDF4IC4Iqog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pJKkTTXw2ojLLV5kTSbtowsFejGaySHj0EzO0uWBNvE=;
 b=Y0d1SXOgNQ3XvyKvzmCKQsQY84KKLeqEDP/LvF0KAjudW+M8noVLZZKWqj5rtY371+ARUvZQu42mseDsb7YdiGktzHu91pLL4xBW65oa+OCJMy0RKOtHdnGFNIlcxsPuMo0tdagAFr/qjNyDvQEm52XlsRwNMfOG1bkN2PKEyHs=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR10MB1423.namprd10.prod.outlook.com
 (2603:10b6:300:23::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19; Fri, 19 Nov
 2021 08:51:59 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4690.016; Fri, 19 Nov 2021
 08:51:59 +0000
Date: Fri, 19 Nov 2021 11:51:38 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Subject: Re: [PATCH v3] staging: vt6655: refactor camelcase uCurrRSSI to
 current_rssi
Message-ID: <20211119085138.GR26989@kadam>
References: <20211118202718.GA152832@t470p>
Content-Disposition: inline
In-Reply-To: <20211118202718.GA152832@t470p>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNAP275CA0011.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4c::16)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (102.222.70.114) by
 JNAP275CA0011.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4c::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4713.19 via Frontend Transport; Fri, 19 Nov 2021 08:51:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8eca547e-6257-484e-121f-08d9ab39d918
X-MS-TrafficTypeDiagnostic: MWHPR10MB1423:
X-Microsoft-Antispam-PRVS: <MWHPR10MB1423B95CF6D92E96D353DE628E9C9@MWHPR10MB1423.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:398;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mD2sDp8KhtPd5rucuFx+LyQ9sN/s9XM6LJdSHQDnvClO7+VodnuDE3nfB4VdeDzJWeFBi98dx0RcwOzSh1l6jMbcRqaWJWCOmVXVdpXMXkEx5x/i+4Yo64LHnhVLtYUOZgFcHwDnhyc5RpNZ/mt32cB9RX17CMjXedxnO39oR0Kz70AGlOBZNKlJjQu6rGf6NT2djx1tpxmrcxIgK863G6CsYv9HsBm71prEasYC6KMbFrZeOv2utRFfuc/wGBd/bzUA6QqyhNgiwvWtiuXfTqJ3PKWdd9rUhNxe+6f7vkW3uwCKAVBVGf2svbNbT/yyJNEyXDoZpUAJ/+lwtvrl9WdcsezfBd2+cUNZWBQ/c8wPpbNYosyFy6Hqqgf/YVWuVnImbVHt4go6JjxfHJBV3XnZhIL7Wu85jzhHIjgNgaP//LKIRYVUU/xwuVWs1uU93E/BFF8X2JT+zeIV+QKp+7/oEYYsnP13Of3LoyFQeRwVe9cGi18GCaZ7H3qEKyIsLiPBJFluEUhXft7neRKPZ128EWRW2Hy4YoEmg1y5cpvk/37johRM3k5nYe/3bpMvzWKE5HVkpDsYBhzRpmnyw2hCsnpbnSojSUdac12dQSyDJ/ikD+qnGKTIbgDRAvTSUeLyVwyG0bT7H3yD3YeysQ8le7u5BfN2z5pmCq9FLyiMLUXa1ZIkRNyCm7HzTadX+fPVMWcOAynWUY9SlRfFenDnX7hiNP0+M25VWpYgcws=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(508600001)(9576002)(86362001)(33656002)(6916009)(44832011)(55016002)(186003)(5660300002)(33716001)(316002)(38350700002)(66946007)(4744005)(8676002)(66476007)(52116002)(9686003)(66556008)(1076003)(8936002)(6666004)(4326008)(956004)(6496006)(2906002)(38100700002)(26005)(49343001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Tkk8mYAfkUU5ledDlgRLqnJM9LjCLkDWaHEScynaJWIM931t+veLmPFz3E2O?=
 =?us-ascii?Q?deO+orm+IyrLMbUdCCJB12TG+uM/UyF1E+doiOfR2AzHdOHRKpgR087npuhI?=
 =?us-ascii?Q?PvPTfZw0UdixFxCbdtWH3sJCsmTPqU+t/ZbRXP8JSzUSAsbhNOOVzR/NEOis?=
 =?us-ascii?Q?mnC3fRWH1G8fHLU/nvQcuxh38DAoN772pPe0hJNTvsRRdfBVoH6MK30muX1t?=
 =?us-ascii?Q?Fcxt6yuXUxq+uHK6TLhjtouU2R0P9F9HZBCAlOSBDPCfXOfUfdyMuuVUOqOS?=
 =?us-ascii?Q?7h9lJQ6XGM36dhXVq600Tqy/pd2HdctJADxH3TVONYaenE+GmYzQzIV7/mi9?=
 =?us-ascii?Q?g/R4922cKeS7//wbNy6p3WtGilLHjdRClkzNCJU7cXoNGfqXTeYm54mDm24L?=
 =?us-ascii?Q?+fcz8N92VufO30OtQUmMWPs3g5QCkYJRCpySLCYi4iaBdt5zGRv2CAoXPFmj?=
 =?us-ascii?Q?/Ap/SEKj+GQptv7aa8Iyo0KRr3hodaw8s3ksr8XiJ4eKPn0kbHpMJS8Xi69S?=
 =?us-ascii?Q?OqK2SZXLCx60WoywNPWSVB44Ml85/DMX3JXLYwwrRKTYGJbC+p9JOri4gfP7?=
 =?us-ascii?Q?E3EwZ36kgwjQ2a28dBZuvpXdY/2dLJa+Dx9mN+d1Mq2kvmeoK5mAVnGRUTcD?=
 =?us-ascii?Q?tCt8CgFXCHrwaUIjjsWF9wjL8oWIpRNQwLi9K9XhNL4P8aVukCRZK6OxsVgJ?=
 =?us-ascii?Q?vFhHbNP31oiXq98Y+IkcKt6goGr7tRf1T5HChL2k1aNCG9QEBq72EIwuobGx?=
 =?us-ascii?Q?Jr4VvqBisQn1+DMKQ11mixwJ/35h35cTlnfKY/d4CPKLJlApD9gbwkb3POLg?=
 =?us-ascii?Q?BSTRgj4AE3d0qyp5YTpc2Z2xAUUXo+kTXinNrtpM4p3FNU1Yfdmo9SRiY6ju?=
 =?us-ascii?Q?/Rwe/uHMdVMpQypdd/YR/oiow0BOI6izLp/caGtcy07aR1cxwN+yeVQd6tHA?=
 =?us-ascii?Q?74sLLw+XXaqImwGvsLIbGFD6rscmvxfZQ/W2P8oF+7O/fcz8t3QaEkv+COmA?=
 =?us-ascii?Q?B3YFNYoVc3/jxqgBFFb+ior95oa9YbRZK+gtqAn1YbMAm6UpuSM/qdR42m1c?=
 =?us-ascii?Q?BkOnG3Pfnuogf1RuuRso/N1jbSvGgjfZwBB93cL+k3UM1Sp+HJ7XJdoJyuXv?=
 =?us-ascii?Q?plD86alx9k8DqWxRYiqClXzcfnub0nFang2lqbDynlp3c+tqb5Fln30p8WJ4?=
 =?us-ascii?Q?zoZk5Kutzj+L1FnRYOX0E8H7ljd31nRjTzt1GXs+lIm5uoAkhmjN/K08utyt?=
 =?us-ascii?Q?L8GvvPgOQ815sDMl3dyLOpmE4eF37msaXZILYit9UgiqxYcSCV22Xy6PJukn?=
 =?us-ascii?Q?yzniMan8U4+HKs0sP6ZDQNIIJP36KPGtTf6mnp5EHbBUW4krh+leNlrbCW5B?=
 =?us-ascii?Q?+Lixas5iYFCnWX4x1XPIdBem9Usbe7Vkh/nPJdQyKkImiMgqcsTvrKl+Pre+?=
 =?us-ascii?Q?Wm+2GLc8Ss294BTgc2wibxIMJtE1a58pqCOP5gogg2uLO5nou6vsGpbKJCnd?=
 =?us-ascii?Q?djD9tHBsgYrqY04m/xV9y8p+4IE+Gz74SqreWJyz+kYDb6ee/4FJoOewNJHP?=
 =?us-ascii?Q?evXggLmOI/vbFT0VfPrgGFA2kWL8MowPGu7hjlOaYq4ITTPMJePAKaPxGElz?=
 =?us-ascii?Q?kDWUExhJ/li0eNOm26NcFPzOYEKzf4leJPFM6/meoH9ol3j1fVr2YJrr11ia?=
 =?us-ascii?Q?NOswN0DJ+ukyS3TNDxoTatFMsFI=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eca547e-6257-484e-121f-08d9ab39d918
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2021 08:51:59.7162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M7/gBiO7rMFlI7KKNAjO0YQIrqEXYpJmuDhTiOSn9pOHh6Ygl34/n1kOfYgVD0qHP5PPO3IH5azNFEKyM5hl5P+0V9K8kaiS2ljO8uB59hM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR10MB1423
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10172
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 adultscore=0 mlxscore=0
 spamscore=0 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111190048
X-Proofpoint-ORIG-GUID: etod9WBdOkGQxtemC14xCFNKRCnmN5We
X-Proofpoint-GUID: etod9WBdOkGQxtemC14xCFNKRCnmN5We
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
 forest@alittletooquiet.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Nov 18, 2021 at 09:27:18PM +0100, Alberto Merciai wrote:
> Replace camelcase variable "uCurrRSSI" (current Received Signal Strength
> Indicator) into linux kernel coding style equivalent
> variable "current_rssi".
> 
> Signed-off-by: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
> ---
> 
> v2
> - correct mailing list

Are you using the staging-next tree?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
