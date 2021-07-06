Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BF23BC840
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Jul 2021 11:05:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A70DA607B8;
	Tue,  6 Jul 2021 09:05:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7ZsIYBmW93_o; Tue,  6 Jul 2021 09:05:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E407B60630;
	Tue,  6 Jul 2021 09:05:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 706E11BF2F4
 for <devel@linuxdriverproject.org>; Tue,  6 Jul 2021 09:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6CFE1833CD
 for <devel@linuxdriverproject.org>; Tue,  6 Jul 2021 09:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=oracle.com header.b="n2n9Rg4M";
 dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com
 header.b="E9MfMD3E"
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wu1hH_u39Jrx for <devel@linuxdriverproject.org>;
 Tue,  6 Jul 2021 09:05:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com
 [205.220.165.32])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 74FD783180
 for <devel@linuxdriverproject.org>; Tue,  6 Jul 2021 09:05:18 +0000 (UTC)
Received: from pps.filterd (m0246617.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id
 166924Ut013105; Tue, 6 Jul 2021 09:05:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : content-type : in-reply-to :
 mime-version; s=corp-2020-01-29;
 bh=8nFRQBMYHh/WmyvNAO3FgtkR9QgQ43fr6oGNCntT2Ug=;
 b=n2n9Rg4MYSu54d7ph0+s2eaWq0nQ+eRBoHot43MuJSE//mSCsv2YuBcOE4vT834AS1Me
 MXqiFLvBaUn2EQQmM7igxrcl0Qpvl+Mo9vfP/rwDGPXVw72jKpnZU/sEhx5WShHduJkn
 wEpo33lUzmPhzD8yH5Pk94EAxvGdMyL4NTzjLD7tyxlDtiB7uFk0rMShX2xuHDZC4cpj
 sahmTHyhiefdXiQRvbDGZ9YHrWsYjK01RsQ9Ct+sv0k/5v15jfoeegMxPxfTRKM323LX
 Xm19zfh9WaIt+a9j3UwT4N7SOTlz+3i7KCDP05WU4Eao/jYv2qZWIaJQ2NehGLjN0EuX hw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by mx0b-00069f02.pphosted.com with ESMTP id 39m3mh99ej-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Jul 2021 09:05:17 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 1668qTLQ089564;
 Tue, 6 Jul 2021 09:05:16 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2170.outbound.protection.outlook.com [104.47.55.170])
 by aserp3030.oracle.com with ESMTP id 39jdxgufpe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 06 Jul 2021 09:05:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Phf6cgk2rcX7syluy2INhpm9r7uGb6AU0Y0rHx7BgBA4W17UiS6koTJVAwCFgMEXOhtOixHJTCKcy/UpuMuGvVdoHfQqFH+Oko6jNVPa9dCEW5/YoINtZ8iclP+9A8bJvQ99j4Z0v9YpLiTbl9a4ZvOzUbZkSCyA6e467EL8et9/nmpYMTpo32GRbQuo07vkKQDa8fgZPe6XqZAWcS07Xu/f0V7jE5DGDcGy3wXIx8zDb19/vq4CyBgHuTX2gBbdUrDVZZZSrdUEec5N6T8BlrfsGpMv8n65LCvzS1oeBNDwDHNv6UMGZROmorTlEMG7QpzoFj3dCQgh2iDGh9D2Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8nFRQBMYHh/WmyvNAO3FgtkR9QgQ43fr6oGNCntT2Ug=;
 b=Bkuq+klnssAAmujRPyJN08woHv3ZCZE2xoUrM+rJO0CTZXXueGT7Rj+cnS1npoeOvS9x/xwPBmeWFoRlJVERgnVX17ftmywSUcurRd4iJNC3t5cDEmR4dCPOqAVBVP+jl58zCuHRsRTNlOcwGH75qtRuEWCLhKjfgPZwXBBu4Om+LmCafrJmmGgdYxryJXl18APyMhHBckam5x0Fb2DF8OIE+S0mJ8ZkWXW9RuGg0s6sfhG9DMUpMtcHXGEx8gtDCfSFB+ohOJJdDmexLIdEe5hgZJoGB1/P9HEELYvwp6KI2SusvCvhGmmJlusN9U2ftk/xF4pwDXQ/T6Jure/vhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8nFRQBMYHh/WmyvNAO3FgtkR9QgQ43fr6oGNCntT2Ug=;
 b=E9MfMD3Eicwp5zbuf1jXgycSm0n7MTMceUP/W/8rhZJtY4LcCuqg5A1Vw4v9+rgMfUfirr0bt1xz7OWavJVdl3kAYx0lLYIfdubHjjmtC+IV/og39i7rt/KosZnj9BvltJjyLqdogCs0GuunH9hnXWLNKcc4hvwNkZQeCmFnXLw=
Authentication-Results: loongson.cn; dkim=none (message not signed)
 header.d=none;loongson.cn; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2094.namprd10.prod.outlook.com
 (2603:10b6:301:2b::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.33; Tue, 6 Jul
 2021 09:05:14 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::3413:3c61:5067:ba73]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::3413:3c61:5067:ba73%5]) with mapi id 15.20.4287.033; Tue, 6 Jul 2021
 09:05:14 +0000
Date: Tue, 6 Jul 2021 12:05:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: lichenyang <lichenyang@loongson.cn>
Subject: Re: [PATCH 3/3] drm/loongson: Add interrupt driver for LS7A
Message-ID: <20210706090501.GD26651@kadam>
References: <20210706063631.180665-1-lichenyang@loongson.cn>
 <20210706063631.180665-3-lichenyang@loongson.cn>
Content-Disposition: inline
In-Reply-To: <20210706063631.180665-3-lichenyang@loongson.cn>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Originating-IP: [102.222.70.252]
X-ClientProxiedBy: JNAP275CA0048.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::11)
 To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from kadam (102.222.70.252) by
 JNAP275CA0048.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:4e::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4287.22 via Frontend Transport; Tue, 6 Jul 2021 09:05:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 737b8de4-e634-4357-cb12-08d9405d2ab7
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2094:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR1001MB20948F35F4F5C9B189D591378E1B9@MWHPR1001MB2094.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M0cFpGROl0FUayIuSdzR7c7FEAsfTqUlAKqcqOBXvVut14PL6TQKIHM4Ovt3UrNskWL6Zf3LL6I+v3385ZS6xmoiC1OUcp563WDki/lHOngICarevHf2uzmbIzQde9WXDVorJIA3Qv/qU9XusIQFbQOGjhwoQLIdysqFIK8m5wwmkxwYGcwo8Bw1+lfFwO+3xfIEBk/iMpRseZDBjru3mOqG91kg9mjlBQd/AQdbXx8w9/yeffBv4f/AH7bGc7XaQ2wcywR2+M6FOrr3VqdGBHtlXZmSm0My3nd+S/x/fLML78AW1ri9AK9vkyU51aAc2IkpQgmYhSJnsOzPivzxAh1Bhds2usURQ16IzwfkboC6Q5seGAaAbx45m2cLH2b0X8n2f6PqKimvUfiPArTNa8yChueGx3VJuw95QHmE1X/64UqilID7qQ0zwCpvia7KZYsN/xkGSsKNzcoodwFyBgl2lWK1Qj5v/KsqvO6CCXGsLvfCj/uQh5sa0ESjOKtxiN8XHaV1vJT30tYlMEb7EJPrarlVSOR8yfdQjaX52M9E/X/yP9w/WkgYX9SK9tG13FTRDRubniQGjuib7N2NKxcBvAo/3I7QQY0Be5vwZh0UAbkXChkid12meU7YLeIUR0gXM1MBEtiLz0rJ5tJY7VBPksgl3y+jj1kuuBbi7QOf5acaGl79UY6y81QncIUeMmCups468X1XAJD5mkt0nA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(136003)(366004)(39860400002)(376002)(346002)(478600001)(33656002)(8936002)(2906002)(66556008)(52116002)(6666004)(66476007)(6916009)(8676002)(33716001)(4744005)(55016002)(66946007)(9686003)(956004)(186003)(16526019)(26005)(44832011)(6496006)(4326008)(316002)(38100700002)(38350700002)(86362001)(1076003)(5660300002)(9576002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CDgE1THdDwwPi3RD9xMzYPVbeQSzmvLvu4+AvdCIFeDEPGxqtuO5LCHoqIcw?=
 =?us-ascii?Q?rGkB/H270rvLy+G7K6DN6DO1kAHnK3Ff9RR8Uh1Avescliyhgzv2YXJVVlDN?=
 =?us-ascii?Q?CjpAozszEZX5CNs1L3P/iibn+g7uZySwS798GhtoLSEs60wm3c7z1J7tiQs0?=
 =?us-ascii?Q?gqimOD7cggudYA59aHX2KZ/El9efrublx+K4d39gbv7/5US+nqyreQCuKtfV?=
 =?us-ascii?Q?Puk7MPp3oPLbyNHosYm6GaKjH++qZk2KIuJWKh/2Zs0JkwRMfhd8GN0WPQuK?=
 =?us-ascii?Q?9elus0Evn5QfKxuxLpiIgznFWExFPDL07K/UwjmLWdXPcWKXr1yhbhHaHWT3?=
 =?us-ascii?Q?FcxGYJzsVU+mXtJ7LiO130lZpacElTm0xgCWpnajGgMSrUvJvx+lsVA/GwGP?=
 =?us-ascii?Q?vJIVNUIuNak7Sp2YjJEVhjc6e+Awi0pfuGVNI6dzYvlg5swLm9WLFtc5RxFB?=
 =?us-ascii?Q?j513T3S3gqStIlFPIhFgBmdjFWiJj4gXpItcTume9DAdEfbhruyUkxhKEbOL?=
 =?us-ascii?Q?yuw98ezeDgtLLePX20EebEz44kXUN5K8egY6Ftx6q/j77TqNLEn+mVE9jxjt?=
 =?us-ascii?Q?ieeg2fe0e58a+syGM6efSbWM4GkMBfv1KaxyvG+9tGv1FNYHQ05KAO8mEejN?=
 =?us-ascii?Q?27QuMOUU+i8WpO0GgKALfxqo2EVygIttceNdGOVM2PSGoWkG1rQKf9ipgAc5?=
 =?us-ascii?Q?uR460fkaxfaey71hUR7iWqWibZVJH4p27wuimvt3GjL/dp3eXX9lv3wqyUnj?=
 =?us-ascii?Q?67bMvGJOFFqlO3uim4WOvFD0mFhsqwv5cyvHsUuDJYdcKNNcEsEXrquOz+j/?=
 =?us-ascii?Q?bNnkyKL8bukGBS0zrx0u9IMk4VghrFFYMoJmmXkJ2IeAT6go1wVOC7Zw/3Jh?=
 =?us-ascii?Q?c5fEmzcoasqGZ9ZTq3xeM4c6VqoWl5yjbNUUN5we2XYVV7DKqUJWMr47lSqs?=
 =?us-ascii?Q?EeOFGHpnznVTKO1ygG9Xy/NVQlHIRtkU8lS+KzFX1PWDCTJyczt3BtJNKJiR?=
 =?us-ascii?Q?ac/W6Bx/Hn9NcXIKbnxMe01sgl5lH0BtGqbggra9rDenFTK1RqwcpT7oGE5H?=
 =?us-ascii?Q?0QCa8j0ZKR+MuvY1T2mq48ojxhP0gKarW0rtmeQacpKRzA3Y4QpkhNNQBF+/?=
 =?us-ascii?Q?jHeTmFSyswrKK+1UTOHgMfwmwexwh8vuSmq3/M6ME6ekDxGd9NPonfxK/HWv?=
 =?us-ascii?Q?g1Ri3Wnf85PMtUl1xu0blw5zbKO88SUrzrNf0CqRY85R3MYMzB5wgRrBAMqQ?=
 =?us-ascii?Q?g7NVYkHyMHQZKrMw+CdHl/H9M8oZS+AUNTQqqYJ9/KXyfAi+JxBQy+1BBVzb?=
 =?us-ascii?Q?ZjghHS6ePkobotDRYCyyhfJ+?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 737b8de4-e634-4357-cb12-08d9405d2ab7
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2021 09:05:14.4888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7R2J5AGnJy7nBevplfkt/wVeKJTqx4jKDsFLy9NuHc9WH2BdFPe9Gq9G3jAB1H+WkZMKWAh2yhDwPeJ6GL/pTYHG0+UEhQRWul9ys5fR/88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2094
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=10036
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 suspectscore=0
 spamscore=0 adultscore=0 malwarescore=0 mlxscore=0 phishscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107060043
X-Proofpoint-GUID: K1BwV7p99vgfi_NRCP5ZP3GqdYWCfIrw
X-Proofpoint-ORIG-GUID: K1BwV7p99vgfi_NRCP5ZP3GqdYWCfIrw
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
Cc: devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 06, 2021 at 02:36:31PM +0800, lichenyang wrote:
>  int loongson_crtc_init(struct loongson_device *ldev, int index)
> diff --git a/drivers/gpu/drm/loongson/loongson_drv.c b/drivers/gpu/drm/loongson/loongson_drv.c
> index 252be9e25aff..89450c8c9102 100644
> --- a/drivers/gpu/drm/loongson/loongson_drv.c
> +++ b/drivers/gpu/drm/loongson/loongson_drv.c
> @@ -167,6 +167,10 @@ static int loongson_drm_load(struct drm_device *dev, unsigned long flags)
>  	if (ret)
>  		dev_err(dev->dev, "Fatal error during modeset init: %d\n", ret);
>  
> +	ret = loongson_irq_init(ldev);
> +	if (ret)
> +		dev_err(dev->dev, "Fatal error during irq init: %d\n", ret);

It feel like there should be proper cleanup and error handling on this
path instead of just printing an error and continuing.

> +
>  	drm_kms_helper_poll_init(dev);
>  	drm_mode_config_reset(dev);
>  

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
