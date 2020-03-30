Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6F4197FB3
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 17:34:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A459987120;
	Mon, 30 Mar 2020 15:34:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8NjEqm+niBqC; Mon, 30 Mar 2020 15:34:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB68987618;
	Mon, 30 Mar 2020 15:34:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EBA5B1BF40E
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 15:34:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E440584E77
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 15:34:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KvcODH6-FQ54 for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 15:34:14 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-eopbgr150058.outbound.protection.outlook.com [40.107.15.58])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 860A884EEA
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 15:34:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dkyZTaP6tlZyeG/zHmJvGM0pkeCpm7Rz2wnUTv+OmTI5kQA+JdoEw62CgN4qw1y5MdQy/Z2EsnMSFpUa2s4f3ATXigXWVTtOvVuaxI27is/l8FdMC4MdmLY8D495A7VoCmzn5nyccQLH/hvYSECSngtUxB39Eeytteg420rS+xWj08fETTULXEI17z/DErlX7BLFdbf//MJy5HgKT9FVCpZ+NcAQ+w4JxmKX6Ceaq8r/Zp3UHtUkvGSF6lxrpaq90TeX7p7syUxPbZB1MT26rUvpdByR1x/sXN6UUwQxxTxtBCO3q6E7WAZ/eByQerKiWogWWfzRazV94foERnlIeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNY2aRkYTjKXdX/Abt5fvkct+yq4nGldoe4uzqbeZJU=;
 b=fYUBdgBeLIwsgE03oN68+4HF7MCahcvFiN3L3m+R0lAGC9Ht+TcVYkb3Zyc+sJnwHnpm0l/rLly0CaHj/lg7maS5Fify6rmZvSwRRpyMvfUgCcmjoSGWg5o2HROBTWR0K28wNOYU2//JFgNOUefxz0JBs3uhfNR5AkrQzs8liIXf/wkxDlarDBfjgCnnQ/Dxw9r9EOh7GOYYt8NiGKBXHYxMFBWpdoqVZq++sn+9Cx73ZhWuMcSx8LNEuiUpbMgkIIKEP3R+6uGKaIfEi0uuIyfQ62HqRWTWI5lkLhb3TZq+hmArTFFGcLUfhxB/P+vzOPiaD53401Z2+Gx3oZv57g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=itdev.co.uk; dmarc=pass action=none header.from=itdev.co.uk;
 dkim=pass header.d=itdev.co.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=itdevltd.onmicrosoft.com; s=selector2-itdevltd-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GNY2aRkYTjKXdX/Abt5fvkct+yq4nGldoe4uzqbeZJU=;
 b=IOSvy57wURB368jBg7PfD9cJbnZ7qXHkmh6A9IGEfrVEEJS6Ikx9sS3Gc6/sjZm/Aafb/+iUT71CfIa/7FJ3qDj0xV61BO6BjyCRBjkJ50cx85BKaSnFV5Iz1hXJ4L56t3WkCBttMl93m7XAPmeuSfm3BL6OJgCynAcvMJAFhzE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=quentin.deslandes@itdev.co.uk; 
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com (20.179.44.144) by
 DBBPR08MB4554.eurprd08.prod.outlook.com (20.179.44.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.19; Mon, 30 Mar 2020 15:34:08 +0000
Received: from DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659]) by DBBPR08MB4491.eurprd08.prod.outlook.com
 ([fe80::cce9:f055:f034:3659%4]) with mapi id 15.20.2856.019; Mon, 30 Mar 2020
 15:34:07 +0000
Date: Mon, 30 Mar 2020 16:34:04 +0100
From: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
To: Oscar Carter <oscar.carter@gmx.com>
Subject: Re: [PATCH] staging: vt6656: Refactor the
 vnt_update_pre_ed_threshold function
Message-ID: <20200330153404.GB60146@jiffies>
References: <20200328181706.14276-1-oscar.carter@gmx.com>
Content-Disposition: inline
In-Reply-To: <20200328181706.14276-1-oscar.carter@gmx.com>
X-ClientProxiedBy: LO2P265CA0377.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::29) To DBBPR08MB4491.eurprd08.prod.outlook.com
 (2603:10a6:10:d2::16)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from jiffies (5.151.93.48) by LO2P265CA0377.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.19 via Frontend
 Transport; Mon, 30 Mar 2020 15:34:06 +0000
X-Originating-IP: [5.151.93.48]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fc977f4f-ab4a-408e-435e-08d7d4bfc907
X-MS-TrafficTypeDiagnostic: DBBPR08MB4554:
X-Microsoft-Antispam-PRVS: <DBBPR08MB4554AF029673AA6AB5A3852EB3CB0@DBBPR08MB4554.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0358535363
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4491.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(346002)(136003)(396003)(366004)(376002)(39830400003)(86362001)(66556008)(5660300002)(4326008)(66476007)(8676002)(8936002)(186003)(316002)(508600001)(1076003)(55016002)(16526019)(26005)(33656002)(9576002)(54906003)(2906002)(30864003)(81166006)(9686003)(81156014)(33716001)(53546011)(66946007)(6496006)(44832011)(956004)(6916009)(52116002)(518174003);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: itdev.co.uk does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P9txXLDLV6kPl/JH/o1Aakhm75pLjKw8Mz2KQwL/xEPWzW1qe3m7HftlUXPQ2SGVHk2WvKI0SjV1rOad8P/weusge8xsKN+5UDa7+DoFiktwsP+018+0fI/EYyIcuabslQ4nEqRPZro1fBDEm+5OwDrTgwFKd/UmR9I9jfYOrjHi72Av4gnESviayOOaZZNg7cEZutaIArVC7K9RPws61JRtZaNyY05xi7FJRXMSpTtrZd1WFbBXtIp5SpcgTmwpUl/+KMNEbG8o7YOk9pZqGVh8y/efpW0AnDWHDJihkVy3Xw1FyBkOUmhQHQQapsoLyIvRBEKS68Et9rQgGxtSDqzvs7u0ez1Ma+eS6izpMx9MNsKwkpvLwScIqAk7zNZszZbmkwhsP/M4ua3gnF+mM4S51LfgCtqaUsElruYiDh+zePZqmIda4ZWGCFaFE8HPCG/G6Ezx38pZOF4lqdcULyFzG4ukwIgoHYhOLaCXTCjzMomt9AexAhA6tw2cJoew
X-MS-Exchange-AntiSpam-MessageData: kSfjyJULGHgPcELcNo9xjXrNxD+ctk3Ovqkq75zR4KWFsh8JWaIT0Af29sV+fgIzfI7JNqDmq0xnouzmROr5fP7fR+1GX+3jPX51VntFnVQhyDm229e+91zTZYt0Dbrjfykx73lrAHP8VdeWuyEQ2g==
X-OriginatorOrg: itdev.co.uk
X-MS-Exchange-CrossTenant-Network-Message-Id: fc977f4f-ab4a-408e-435e-08d7d4bfc907
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2020 15:34:07.4711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2d2930c4-2251-45b4-ad79-3582c5f41740
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MziKk2ajQzdsHzdVb9rAErz4MdRAFGEX1RvE3t9S3bxYL+iH2pXI8nBHZ+XrJiabnko43AjmjUAJdKPNrOAwcT40s9Tn2Ds4u2pirs26cR0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB4554
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
Cc: devel@driverdev.osuosl.org, Malcolm Priestley <tvboxspy@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Forest Bond <forest@alittletooquiet.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 03/28/20 19:17:06, Oscar Carter wrote:
> Create three arrays with the threshold data use in the switch statement
> of the vnt_update_pre_ed_threshold function. These three arrays contains
> elements of struct vnt_threshold new type.
> 
> Create a for loop in the vnt_update_pre_ed_threshold function to do
> exactly the same that the if-elseif-else statements in the switch
> statement.
> 
> Also, remove the if check against the !cr_201 && !cr_206 due to now it
> is replace by the NULL check against the threshold pointer. When this
> pointer is NULL means that the cr_201 and cr_206 variables have not been
> assigned, that is the same that the old comparison against cr_201 and
> cr_206 due to these variables were initialized with 0.
> 
> The statistics of the old baseband object file are:
> 
> section              size   addr
> .text                3415      0
> .data                 576      0
> .bss                    0      0
> .rodata               120      0
> .comment               45      0
> .note.GNU-stack         0      0
> .note.gnu.property     28      0
> Total                4184
> 
> The statistics of the new baseband object file are:
> 
> section              size   addr
> .text                2209      0
> .data                 576      0
> .bss                    0      0
> .rodata               344      0
> .comment               45      0
> .note.GNU-stack         0      0
> .note.gnu.property     28      0
> Total                3202
> 
> With this refactoring it increase a little the readonly data but it
> decrease much more the .text section. This refactoring decrease the
> footprint and makes the code more clear.
> 
> Signed-off-by: Oscar Carter <oscar.carter@gmx.com>
> ---
>  drivers/staging/vt6656/baseband.c | 335 +++++++++---------------------
>  1 file changed, 100 insertions(+), 235 deletions(-)
> 
> diff --git a/drivers/staging/vt6656/baseband.c b/drivers/staging/vt6656/baseband.c
> index a19a563d8bcc..e03f83e1c394 100644
> --- a/drivers/staging/vt6656/baseband.c
> +++ b/drivers/staging/vt6656/baseband.c
> @@ -115,6 +115,86 @@ static const u16 vnt_frame_time[MAX_RATE] = {
>  	10, 20, 55, 110, 24, 36, 48, 72, 96, 144, 192, 216
>  };
> 
> +struct vnt_threshold {
> +	u8 bb_pre_ed_rssi;
> +	u8 cr_201;
> +	u8 cr_206;
> +};
> +
> +static const struct vnt_threshold al2230_vnt_threshold[] = {
> +	{0, 0x00, 0x30},	/* Max sensitivity */
> +	{68, 0x00, 0x36},
> +	{67, 0x00, 0x43},
> +	{66, 0x00, 0x51},
> +	{65, 0x00, 0x62},
> +	{64, 0x00, 0x79},
> +	{63, 0x00, 0x93},
> +	{62, 0x00, 0xb9},
> +	{61, 0x00, 0xe3},
> +	{60, 0x01, 0x18},
> +	{59, 0x01, 0x54},
> +	{58, 0x01, 0xa0},
> +	{57, 0x02, 0x20},
> +	{56, 0x02, 0xa0},
> +	{55, 0x03, 0x00},
> +	{53, 0x06, 0x00},
> +	{51, 0x09, 0x00},
> +	{49, 0x0e, 0x00},
> +	{47, 0x15, 0x00},
> +	{46, 0x1a, 0x00},
> +	{45, 0xff, 0x00}
> +};
> +
> +static const struct vnt_threshold vt3226_vnt_threshold[] = {
> +	{0, 0x00, 0x24},	/* Max sensitivity */
> +	{68, 0x00, 0x2d},
> +	{67, 0x00, 0x36},
> +	{66, 0x00, 0x43},
> +	{65, 0x00, 0x52},
> +	{64, 0x00, 0x68},
> +	{63, 0x00, 0x80},
> +	{62, 0x00, 0x9c},
> +	{61, 0x00, 0xc0},
> +	{60, 0x00, 0xea},
> +	{59, 0x01, 0x30},
> +	{58, 0x01, 0x70},
> +	{57, 0x01, 0xb0},
> +	{56, 0x02, 0x30},
> +	{55, 0x02, 0xc0},
> +	{53, 0x04, 0x00},
> +	{51, 0x07, 0x00},
> +	{49, 0x0a, 0x00},
> +	{47, 0x11, 0x00},
> +	{45, 0x18, 0x00},
> +	{43, 0x26, 0x00},
> +	{42, 0x36, 0x00},
> +	{41, 0xff, 0x00}
> +};
> +
> +static const struct vnt_threshold vt3342_vnt_threshold[] = {
> +	{0, 0x00, 0x38},	/* Max sensitivity */
> +	{66, 0x00, 0x43},
> +	{65, 0x00, 0x52},
> +	{64, 0x00, 0x68},
> +	{63, 0x00, 0x80},
> +	{62, 0x00, 0x9c},
> +	{61, 0x00, 0xc0},
> +	{60, 0x00, 0xea},
> +	{59, 0x01, 0x30},
> +	{58, 0x01, 0x70},
> +	{57, 0x01, 0xb0},
> +	{56, 0x02, 0x30},
> +	{55, 0x02, 0xc0},
> +	{53, 0x04, 0x00},
> +	{51, 0x07, 0x00},
> +	{49, 0x0a, 0x00},
> +	{47, 0x11, 0x00},
> +	{45, 0x18, 0x00},
> +	{43, 0x26, 0x00},
> +	{42, 0x36, 0x00},
> +	{41, 0xff, 0x00}
> +};
> +
>  /*
>   * Description: Calculate data frame transmitting time
>   *
> @@ -572,254 +652,42 @@ int vnt_exit_deep_sleep(struct vnt_private *priv)
> 
>  void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
>  {
> -	u8 cr_201 = 0x0, cr_206 = 0x0;
> +	const struct vnt_threshold *threshold = NULL;
> +	u8 length;
> +	u8 cr_201, cr_206;
>  	u8 ed_inx = priv->bb_pre_ed_index;
> 
>  	switch (priv->rf_type) {
>  	case RF_AL2230:
>  	case RF_AL2230S:
>  	case RF_AIROHA7230:
> -		if (scanning) { /* Max sensitivity */
> -			ed_inx = 0;
> -			cr_206 = 0x30;
> -			break;
> -		}
> -
> -		if (priv->bb_pre_ed_rssi <= 45) {
> -			ed_inx = 20;
> -			cr_201 = 0xff;
> -		} else if (priv->bb_pre_ed_rssi <= 46) {
> -			ed_inx = 19;
> -			cr_201 = 0x1a;
> -		} else if (priv->bb_pre_ed_rssi <= 47) {
> -			ed_inx = 18;
> -			cr_201 = 0x15;
> -		} else if (priv->bb_pre_ed_rssi <= 49) {
> -			ed_inx = 17;
> -			cr_201 = 0xe;
> -		} else if (priv->bb_pre_ed_rssi <= 51) {
> -			ed_inx = 16;
> -			cr_201 = 0x9;
> -		} else if (priv->bb_pre_ed_rssi <= 53) {
> -			ed_inx = 15;
> -			cr_201 = 0x6;
> -		} else if (priv->bb_pre_ed_rssi <= 55) {
> -			ed_inx = 14;
> -			cr_201 = 0x3;
> -		} else if (priv->bb_pre_ed_rssi <= 56) {
> -			ed_inx = 13;
> -			cr_201 = 0x2;
> -			cr_206 = 0xa0;
> -		} else if (priv->bb_pre_ed_rssi <= 57) {
> -			ed_inx = 12;
> -			cr_201 = 0x2;
> -			cr_206 = 0x20;
> -		} else if (priv->bb_pre_ed_rssi <= 58) {
> -			ed_inx = 11;
> -			cr_201 = 0x1;
> -			cr_206 = 0xa0;
> -		} else if (priv->bb_pre_ed_rssi <= 59) {
> -			ed_inx = 10;
> -			cr_201 = 0x1;
> -			cr_206 = 0x54;
> -		} else if (priv->bb_pre_ed_rssi <= 60) {
> -			ed_inx = 9;
> -			cr_201 = 0x1;
> -			cr_206 = 0x18;
> -		} else if (priv->bb_pre_ed_rssi <= 61) {
> -			ed_inx = 8;
> -			cr_206 = 0xe3;
> -		} else if (priv->bb_pre_ed_rssi <= 62) {
> -			ed_inx = 7;
> -			cr_206 = 0xb9;
> -		} else if (priv->bb_pre_ed_rssi <= 63) {
> -			ed_inx = 6;
> -			cr_206 = 0x93;
> -		} else if (priv->bb_pre_ed_rssi <= 64) {
> -			ed_inx = 5;
> -			cr_206 = 0x79;
> -		} else if (priv->bb_pre_ed_rssi <= 65) {
> -			ed_inx = 4;
> -			cr_206 = 0x62;
> -		} else if (priv->bb_pre_ed_rssi <= 66) {
> -			ed_inx = 3;
> -			cr_206 = 0x51;
> -		} else if (priv->bb_pre_ed_rssi <= 67) {
> -			ed_inx = 2;
> -			cr_206 = 0x43;
> -		} else if (priv->bb_pre_ed_rssi <= 68) {
> -			ed_inx = 1;
> -			cr_206 = 0x36;
> -		} else {
> -			ed_inx = 0;
> -			cr_206 = 0x30;
> -		}
> +		threshold = al2230_vnt_threshold;
> +		length = ARRAY_SIZE(al2230_vnt_threshold);
>  		break;
> 
>  	case RF_VT3226:
>  	case RF_VT3226D0:
> -		if (scanning)	{ /* Max sensitivity */
> -			ed_inx = 0;
> -			cr_206 = 0x24;
> -			break;
> -		}
> -
> -		if (priv->bb_pre_ed_rssi <= 41) {
> -			ed_inx = 22;
> -			cr_201 = 0xff;
> -		} else if (priv->bb_pre_ed_rssi <= 42) {
> -			ed_inx = 21;
> -			cr_201 = 0x36;
> -		} else if (priv->bb_pre_ed_rssi <= 43) {
> -			ed_inx = 20;
> -			cr_201 = 0x26;
> -		} else if (priv->bb_pre_ed_rssi <= 45) {
> -			ed_inx = 19;
> -			cr_201 = 0x18;
> -		} else if (priv->bb_pre_ed_rssi <= 47) {
> -			ed_inx = 18;
> -			cr_201 = 0x11;
> -		} else if (priv->bb_pre_ed_rssi <= 49) {
> -			ed_inx = 17;
> -			cr_201 = 0xa;
> -		} else if (priv->bb_pre_ed_rssi <= 51) {
> -			ed_inx = 16;
> -			cr_201 = 0x7;
> -		} else if (priv->bb_pre_ed_rssi <= 53) {
> -			ed_inx = 15;
> -			cr_201 = 0x4;
> -		} else if (priv->bb_pre_ed_rssi <= 55) {
> -			ed_inx = 14;
> -			cr_201 = 0x2;
> -			cr_206 = 0xc0;
> -		} else if (priv->bb_pre_ed_rssi <= 56) {
> -			ed_inx = 13;
> -			cr_201 = 0x2;
> -			cr_206 = 0x30;
> -		} else if (priv->bb_pre_ed_rssi <= 57) {
> -			ed_inx = 12;
> -			cr_201 = 0x1;
> -			cr_206 = 0xb0;
> -		} else if (priv->bb_pre_ed_rssi <= 58) {
> -			ed_inx = 11;
> -			cr_201 = 0x1;
> -			cr_206 = 0x70;
> -		} else if (priv->bb_pre_ed_rssi <= 59) {
> -			ed_inx = 10;
> -			cr_201 = 0x1;
> -			cr_206 = 0x30;
> -		} else if (priv->bb_pre_ed_rssi <= 60) {
> -			ed_inx = 9;
> -			cr_206 = 0xea;
> -		} else if (priv->bb_pre_ed_rssi <= 61) {
> -			ed_inx = 8;
> -			cr_206 = 0xc0;
> -		} else if (priv->bb_pre_ed_rssi <= 62) {
> -			ed_inx = 7;
> -			cr_206 = 0x9c;
> -		} else if (priv->bb_pre_ed_rssi <= 63) {
> -			ed_inx = 6;
> -			cr_206 = 0x80;
> -		} else if (priv->bb_pre_ed_rssi <= 64) {
> -			ed_inx = 5;
> -			cr_206 = 0x68;
> -		} else if (priv->bb_pre_ed_rssi <= 65) {
> -			ed_inx = 4;
> -			cr_206 = 0x52;
> -		} else if (priv->bb_pre_ed_rssi <= 66) {
> -			ed_inx = 3;
> -			cr_206 = 0x43;
> -		} else if (priv->bb_pre_ed_rssi <= 67) {
> -			ed_inx = 2;
> -			cr_206 = 0x36;
> -		} else if (priv->bb_pre_ed_rssi <= 68) {
> -			ed_inx = 1;
> -			cr_206 = 0x2d;
> -		} else {
> -			ed_inx = 0;
> -			cr_206 = 0x24;
> -		}
> +		threshold = vt3226_vnt_threshold;
> +		length = ARRAY_SIZE(vt3226_vnt_threshold);
>  		break;
> 
>  	case RF_VT3342A0:
> -		if (scanning) { /* need Max sensitivity */
> -			ed_inx = 0;
> -			cr_206 = 0x38;
> -			break;
> -		}
> -
> -		if (priv->bb_pre_ed_rssi <= 41) {
> -			ed_inx = 20;
> -			cr_201 = 0xff;
> -		} else if (priv->bb_pre_ed_rssi <= 42) {
> -			ed_inx = 19;
> -			cr_201 = 0x36;
> -		} else if (priv->bb_pre_ed_rssi <= 43) {
> -			ed_inx = 18;
> -			cr_201 = 0x26;
> -		} else if (priv->bb_pre_ed_rssi <= 45) {
> -			ed_inx = 17;
> -			cr_201 = 0x18;
> -		} else if (priv->bb_pre_ed_rssi <= 47) {
> -			ed_inx = 16;
> -			cr_201 = 0x11;
> -		} else if (priv->bb_pre_ed_rssi <= 49) {
> -			ed_inx = 15;
> -			cr_201 = 0xa;
> -		} else if (priv->bb_pre_ed_rssi <= 51) {
> -			ed_inx = 14;
> -			cr_201 = 0x7;
> -		} else if (priv->bb_pre_ed_rssi <= 53) {
> -			ed_inx = 13;
> -			cr_201 = 0x4;
> -		} else if (priv->bb_pre_ed_rssi <= 55) {
> -			ed_inx = 12;
> -			cr_201 = 0x2;
> -			cr_206 = 0xc0;
> -		} else if (priv->bb_pre_ed_rssi <= 56) {
> -			ed_inx = 11;
> -			cr_201 = 0x2;
> -			cr_206 = 0x30;
> -		} else if (priv->bb_pre_ed_rssi <= 57) {
> -			ed_inx = 10;
> -			cr_201 = 0x1;
> -			cr_206 = 0xb0;
> -		} else if (priv->bb_pre_ed_rssi <= 58) {
> -			ed_inx = 9;
> -			cr_201 = 0x1;
> -			cr_206 = 0x70;
> -		} else if (priv->bb_pre_ed_rssi <= 59) {
> -			ed_inx = 8;
> -			cr_201 = 0x1;
> -			cr_206 = 0x30;
> -		} else if (priv->bb_pre_ed_rssi <= 60) {
> -			ed_inx = 7;
> -			cr_206 = 0xea;
> -		} else if (priv->bb_pre_ed_rssi <= 61) {
> -			ed_inx = 6;
> -			cr_206 = 0xc0;
> -		} else if (priv->bb_pre_ed_rssi <= 62) {
> -			ed_inx = 5;
> -			cr_206 = 0x9c;
> -		} else if (priv->bb_pre_ed_rssi <= 63) {
> -			ed_inx = 4;
> -			cr_206 = 0x80;
> -		} else if (priv->bb_pre_ed_rssi <= 64) {
> -			ed_inx = 3;
> -			cr_206 = 0x68;
> -		} else if (priv->bb_pre_ed_rssi <= 65) {
> -			ed_inx = 2;
> -			cr_206 = 0x52;
> -		} else if (priv->bb_pre_ed_rssi <= 66) {
> -			ed_inx = 1;
> -			cr_206 = 0x43;
> -		} else {
> -			ed_inx = 0;
> -			cr_206 = 0x38;
> -		}
> +		threshold = vt3342_vnt_threshold;
> +		length = ARRAY_SIZE(vt3342_vnt_threshold);
>  		break;
>  	}
> 
> +	if (!threshold)
> +		return;
> +
> +	for (ed_inx = scanning ? 0 : length - 1; ed_inx > 0; ed_inx--) {
> +		if (priv->bb_pre_ed_rssi <= threshold[ed_inx].bb_pre_ed_rssi)
> +			break;
> +	}
> +
> +	cr_201 = threshold[ed_inx].cr_201;
> +	cr_206 = threshold[ed_inx].cr_206;
> +
>  	if (ed_inx == priv->bb_pre_ed_index && !scanning)
>  		return;
> 
> @@ -828,9 +696,6 @@ void vnt_update_pre_ed_threshold(struct vnt_private *priv, int scanning)
>  	dev_dbg(&priv->usb->dev, "%s bb_pre_ed_rssi %d\n",
>  		__func__, priv->bb_pre_ed_rssi);
> 
> -	if (!cr_201 && !cr_206)
> -		return;
> -
>  	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xc9, cr_201);
>  	vnt_control_out_u8(priv, MESSAGE_REQUEST_BBREG, 0xce, cr_206);
>  }
> --
> 2.20.1
> 

Looks good to me, nice job.

Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>

Thanks,
Quentin
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
