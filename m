Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A7B3FC441
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Aug 2021 10:48:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A3EB81DAB;
	Tue, 31 Aug 2021 08:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IGK7hTFebKUk; Tue, 31 Aug 2021 08:48:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62A8481BD4;
	Tue, 31 Aug 2021 08:48:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 224611BF82B
 for <devel@linuxdriverproject.org>; Tue, 31 Aug 2021 08:47:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 121B581BD4
 for <devel@linuxdriverproject.org>; Tue, 31 Aug 2021 08:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kBPaR9ddPFG5 for <devel@linuxdriverproject.org>;
 Tue, 31 Aug 2021 08:47:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1AAFA81B58
 for <devel@driverdev.osuosl.org>; Tue, 31 Aug 2021 08:47:56 +0000 (UTC)
Received: from pps.filterd (m0246627.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17V56L9t013840; 
 Tue, 31 Aug 2021 08:47:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2021-07-09;
 bh=jz3I7NHlq3/KJm7SzpZpGWbYyGt5TPolP4ZSooOE/mU=;
 b=yGyaEzTJAG6Shtwqces/6Gx8z3t1JrQy15yFDrB5HIwNZMtcyKh2z7e4FRmUMdw6uC4l
 soApgeTjZrx38j+H+vFSAIae2I/VUPewi5Ci60re7UEp1OUaIK9AjOAFwIXEo+D8WY9q
 FMWmBo90zzMpbGiVqbw8x2wZRtDWdDSfo2MCyTPIVBBzqJ4/6DYBOfqsaN0u+jFvpMJ6
 s6LQESBdAhHqJgwSBF4OxW+B3I7xBpknlX05Ccq83LG2Cb79pwp9bD/N5aRnQd0RT6ly
 S5Y31JP1/KLkPXuhyZtwe9PzcHHbr/Ux+kw05St18RdJlYIHgB/JSoylZpwUxbxhPoq4 EA== 
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2020-01-29;
 bh=jz3I7NHlq3/KJm7SzpZpGWbYyGt5TPolP4ZSooOE/mU=;
 b=bVfHsB6LtCqRe3lpbyUo86tjuR3La90TB8ST2BOIsoXYCrRYB4hdAnjdAK1nBXbxoc6M
 WHCysfDFtmU+4WwJ+KnarZ5+H21DRMk0BxYaHwIA4WJMd8o5zkBQa/txUCQNK+0Ltd5x
 CXOmdhts4o+R/9dEvOw6iLKLBQ6FzFMSCa/32gXlpX3du3XXcwktXycclCZ7nerwVb4H
 3x/c7kQTLWZIwX9m2Sqz6NcGpTvnZYUEuhDJ4tSY4ktrWF2KHST5zZQROe61kyN6W4kq
 op9fp2leyehzn1bsC1d3yYlG99eJLCW4eNHf92V9XLNuYMBsHO90wdg+dXEPNrKVbpBV Wg== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 3ase028euw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Aug 2021 08:47:56 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 17V8jlx6196357;
 Tue, 31 Aug 2021 08:47:55 GMT
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
 by aserp3030.oracle.com with ESMTP id 3aqb6dff9v-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Aug 2021 08:47:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GdHyyg5rZKuEqOMCjN7n+3VTZt9G2D8CRJtd4Fp0nJDJeUUlahoxGtIEctUqTm9l8ZtadWzcgzmgk0aPtDGnOvP4IXNZFAKKQg59/7gIzKUWiE8Zmv67eCI8yj1PZ691sI7mR53IxtJthruRcvfJs7ZVwfczAG43zAJxdH1LynR8XDXmu1cJW9Wyqby8hGvs+anHVfwg27b8GQpDrCWGRzZF538+9gCgdSEsI7p9NAkzE7Sw1WvdpDI98LY9fhjjCiFVYULyH3gGCfcHaFm5xgXlMnMApCGvs2xHB5e9mZzijebKrWk6ngQHi09Z0+F+sLgV7B+hTQUSIK228ln0hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jz3I7NHlq3/KJm7SzpZpGWbYyGt5TPolP4ZSooOE/mU=;
 b=RVVObf79i+IySGMg0kcwA4L2cNUP+wC/y7hXKTCwdQOuqQ7xSYYn4+MoiNk1cmsOaJ6UL7cwfRtTOjs0/oMNooYMatfwH003pAe4vKse7BcA35PvomNKh+a7UnAyn76buR5+m+Xf9WzZt6ZHm7mIAB0y0hI6gPySfHq65I25evBdnuztppZW7X9WmEToZDEUAaq+32FymjCwKD2oXuX3TlS0mwuYmc0gsgvQray/rgAoK7655SkBe87X+a3ylTQ9j7P9n7TUWEhafnQQfJkvCEAv5wgA8QG6+WorM414E88/rsjz29PgMA7RNkEP4kb5rlocBGcAkOkqX70Io2KJ+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jz3I7NHlq3/KJm7SzpZpGWbYyGt5TPolP4ZSooOE/mU=;
 b=a7kQ7vJyDhbHK1FVy5N8NJ3vO7deqsE7dvm9JEdPPdNDT5EbN4d1OAZsIED4n6UeZ8t/VgJ393cPDCclGjMExpYx6260NnM+FR1vDGaLOTTgvr47hYvcaKQo9brUBcPo+27kIeONAuCiIt4wOERLyUmrVuKetVT25NQv6yVb1mQ=
Authentication-Results: itfac.mrt.ac.lk; dkim=none (message not signed)
 header.d=none; itfac.mrt.ac.lk; dmarc=none action=none header.from=oracle.com; 
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by CO6PR10MB5569.namprd10.prod.outlook.com
 (2603:10b6:303:144::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.24; Tue, 31 Aug
 2021 08:47:53 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::5820:e42b:73d7:4268%7]) with mapi id 15.20.4478.019; Tue, 31 Aug 2021
 08:47:53 +0000
Date: Tue, 31 Aug 2021 11:47:35 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "F.A.Sulaiman" <asha.16@itfac.mrt.ac.lk>
Subject: Re: [PATCH] staging: rtl8723bs: fix memory leak error
Message-ID: <20210831084735.GL12231@kadam>
References: <20210830193355.11338-1-asha.16@itfac.mrt.ac.lk>
Content-Disposition: inline
In-Reply-To: <20210830193355.11338-1-asha.16@itfac.mrt.ac.lk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-ClientProxiedBy: JNXP275CA0046.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:18::34)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kadam (62.8.83.99) by JNXP275CA0046.ZAFP275.PROD.OUTLOOK.COM
 (2603:1086:0:18::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.17 via Frontend
 Transport; Tue, 31 Aug 2021 08:47:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e464b425-52ab-4fd8-0428-08d96c5c04cb
X-MS-TrafficTypeDiagnostic: CO6PR10MB5569:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO6PR10MB5569C5A1ECA467064167E9CC8ECC9@CO6PR10MB5569.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2043;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Not+pNh7dJVes9xYDiWCHFI59be3YpJXXBFPoj3bQgh/hBntdD5iXdpTjJKSs40/JsQVyFKkvgyo6OE7DdM2mcSB/Cro2wVPojyb4VViWzwAEi1RonRgCLxoGHN8rVa29l2HDMDWedTRGeYxQULPUl4oeJuhBAS0tEqSp7sda1ux7BbzEPwhsI5tJP4Mai+TiU0fDWYKkfOViqGh+i/86FxLVC4MK3+ys6HTtAG074duG9vBzKPTSLhWI8ksk5wwFy2q+bu0jc8ZTl6rhvMUSlmQtCR9EREhcVol1Kh8rH7Sghc0UGH3PeMScRxp4YjvLpin7QikHUAKtpicJdMzpenNZQ4UbVROZZJ0oDBcOAB5ksqF3RQBhKeStbsxKfdancKb+pY5n2A+7lAl49fBvkXw+E6+CPmrmkL4JuGoR0OeBE7BiWLFiHbg89BgtHcE1kmlGc+bmGynBWh0vD773CZ+A01q6fO/YhRgP14sjZh6N97MyYIyqUagmP63jLTYauC6ZXOb8UTwiIcznXN6LuVURzD0dS4DfgUIkErpah8hbp7OH0gD+icSm90Uu+AN034b9akbjF/1H0A0YMzGaWvXjKUyneZHOPwElnHDY8qFqfW/ttvU1S00MVYdBadFx4Re/wF2RGJrODC73wVyCOhNk0FHsiNj1B5flAEoh0WHkb7Br+Yovlr7DKoSgTgymTclhnYjnKc4fN65H4tV1A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(39860400002)(346002)(136003)(396003)(376002)(83380400001)(33716001)(38100700002)(4326008)(6666004)(6496006)(19627235002)(478600001)(186003)(44832011)(38350700002)(52116002)(8936002)(5660300002)(9576002)(2906002)(1076003)(8676002)(33656002)(66476007)(66946007)(6916009)(316002)(86362001)(956004)(26005)(9686003)(66556008)(55016002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7itHMNCxh/KVNY6SuZarRCbIIV0Cvz86eN54oeto2choGXbbU1xsDx8nrghd?=
 =?us-ascii?Q?4QFBEDZHO80I77Dg5Q0cCmKuIBS7Gtu5mdL1e8/i73fjCesZxjdJwvwRl/p8?=
 =?us-ascii?Q?Wf+wRLwtw09d10M5ewI67G7iT0AKaRCSxYJcq2ameE28jNdHDfi1fOmTEOod?=
 =?us-ascii?Q?psjqROuYOQWkx36qBZUs3UMQBmArob4LzRLy0GN36aHB4DiZ+SAJ0AABHR5B?=
 =?us-ascii?Q?s9rimR7MaygICwiYKayyrdXaUTke/GpV3cB6QESNFBXkP1R6MnlgF0C4ESM0?=
 =?us-ascii?Q?7OoVvJpw4xNQ0UddCrWkBJytviTqRw3Pv5SAOOb+dv/rDcg0T4dtLTYQToLd?=
 =?us-ascii?Q?v4x0jJqQG/zRmgwUzr/RJAM02H/1jGXMPEKyhITvh36Yc5PGJbMZhGGGw/8n?=
 =?us-ascii?Q?+oIAVrSp1M2qVgFmkGnp9S3BjJ4TICrdOiEnZet3+EuNnkfXZ5jtkDJ8VB4K?=
 =?us-ascii?Q?z9nt0q+kqCfV+F/jl732hW3/7T8Sm/Kz0Vk7/483uISjgZde5IJK6FfhbyFG?=
 =?us-ascii?Q?zRwicNMGfCs/KsfygtfozEobwuMqJiOK8HLX39wIby1fWp56WhmJa76MB1U5?=
 =?us-ascii?Q?bKSg8gp/5Nk9qaBirbKs02Vi8ZnL2ifqRBUP7RYLYUpwxt6RmB+Dwt+deE8u?=
 =?us-ascii?Q?KkBC3D7Sr7a7KVgNhAtxUzcWDvMqNKzrBbcoLPcrwy/XHXBgmxhcReoGDiM8?=
 =?us-ascii?Q?GiFHAwPOZ9VS7PqgXGPX9oiR/f4daPYeRgZDCRV/ChE0i4E1gKr3P2jUzosf?=
 =?us-ascii?Q?gktD/zXijG93Z5I5jeSrwlCPKez3NJnrRHDVjxhPLI2s0wR3tYqBaGyA6ShH?=
 =?us-ascii?Q?GFbsgGTTac2/OrWgsJNFgBMp7F+dZy9+YmFlrPhN6mwZW5nA/gellcPLET/K?=
 =?us-ascii?Q?R65N1dU7GgPgVBEuZUko4qdQPdI3ebd0RzxtoO2YOvnsD/6qGisz9JTjq6qN?=
 =?us-ascii?Q?njNDhJNvO2lr9m7dw1zabus1mZyeeLBZ44vW6jzMtIvb4Ab0PuBVykC6IQnE?=
 =?us-ascii?Q?Y+fhFDZx+aTUyQwpX+d23XLuae+jrqE3cvn+N8NDr6kqiGo5G58UZxYrtapu?=
 =?us-ascii?Q?05iWKDqY658WH8h+p+L2h7Taf4p57q2HMW+zZMR3XhR/CSUAbfIxI0EPVQ+8?=
 =?us-ascii?Q?CkmPZVMmA4Ett6hxciZD4qSxDe4e4QBmj8jebl/73tURdX9Cv0ja9RMrDS8i?=
 =?us-ascii?Q?1tYqtvdyL6kNYC6argGl10ZzleroYfJ6sCqRqq73y+duuCl5M2+gisip11FA?=
 =?us-ascii?Q?mxF5MkuGJuSjvyVD1Ub2dNfQJHDNbJxMuFBMeV9Fuuj3hGyPSUXtaEZoPmBG?=
 =?us-ascii?Q?VSrCWZMljXjbAKKYxpcSFZni?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e464b425-52ab-4fd8-0428-08d96c5c04cb
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2021 08:47:53.0975 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cidy6/UKY08FCqOvOOtAs4M2CSAwZUrhxpUQVXguLbZcN56RPPRMRT9XuFAwKc8Nlz7umTCW1b8YeHDBtvkPlEI0XY3EMJNNIrSqJjfRQE4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR10MB5569
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10092
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 phishscore=0 suspectscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2107140000
 definitions=main-2108310049
X-Proofpoint-GUID: T28Wl1t6UDfQfV4CTpKzVeZG-PF2xLlK
X-Proofpoint-ORIG-GUID: T28Wl1t6UDfQfV4CTpKzVeZG-PF2xLlK
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 31, 2021 at 01:03:55AM +0530, F.A.Sulaiman wrote:
> Smatch reported memory leak bug in rtl8723b_FirmwareDownload function. 
> The problem is pFirmware memory is not released in release_fw1. 
> Instead of redirecting to release_fw1 we can turn it into exit 
> and free the memory.
> 
> Signed-off-by: F.A. SULAIMAN <asha.16@itfac.mrt.ac.lk>
> ---
>  drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> index de8caa6cd418..b59c2aa3a9d8 100644
> --- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> +++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
> @@ -436,7 +436,7 @@ s32 rtl8723b_FirmwareDownload(struct adapter *padapter, bool  bUsedWoWLANFw)
>  	if (pFirmware->fw_length > FW_8723B_SIZE) {
>  		rtStatus = _FAIL;
>  		DBG_871X_LEVEL(_drv_emerg_, "Firmware size:%u exceed %u\n", pFirmware->fw_length, FW_8723B_SIZE);
> -		goto release_fw1;
> +		goto exit;
>  	}

The current tree doesn't have DBG_871X_LEVEL() so you must be working
against something old.  You need to work against linux-next or staging
next.

Your patch fixes a bug, but it would be better to just re-write the
error handling for this function.  There is another bug that a bunch
of error paths don't call release_firmware(fw).  Use the "Free the Last
Thing" method.

	pFirmware = kzalloc(sizeof(struct rt_firmware), GFP_KERNEL);
	if (!pFirmware)
		return _FAIL;

The last thing we allocated is "pFirmware" so free that if we have an
error.

	pBTFirmware = kzalloc(sizeof(struct rt_firmware), GFP_KERNEL);
	if (!pBTFirmware) {
		rtStatus = _FAIL;
		goto free_firmware;
	}

Now the last thing is pBTFirmware.

	rtStatus = request_firmware(&fw, fwfilepath, device);
	if (rtStatus) {
		rtStatus = _FAIL;
		goto free_bt_firmware;
	}

Now the last thing is "fw".  But this is a bit tricky because we're
going to release it as soon as possible and not wait until the end of
the function.  There isn't a reason for this...  We can change that or
keep it as-is.  If we keep it as is, then the we'll just call
release_firmware(fw); before the goto free_bt_firmware;  The current
code leaks fw on a bunch of error paths.

	pFirmware->fw_buffer_sz = kmemdup(fw->data, fw->size, GFP_KERNEL);
	if (!pFirmware->fw_buffer_sz) {
		rtStatus = _FAIL;
		release_firmware(fw);
		goto free_bt_firmware;
	}

Or:

	pFirmware->fw_buffer_sz = kmemdup(fw->data, fw->size, GFP_KERNEL);
	if (!pFirmware->fw_buffer_sz) {
		rtStatus = _FAIL;
		goto release_fw;
	}

Now the last thing is pFirmware->fw_buffer_sz.  Etc.

Then at the end it's just:

free_fw_buffer:
        kfree(pFirmware->fw_buffer_sz);
release_fw:
	release_firmware(fw);
free_bt_firmware:
	kfree(pBTFirmware);
free_firmware:
        kfree(pFirmware);

        return rtStatus;
}

regards,
dan carpenter
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
