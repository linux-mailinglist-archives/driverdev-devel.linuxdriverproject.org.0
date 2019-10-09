Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF254D08F4
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 09:57:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E6A7A228BD;
	Wed,  9 Oct 2019 07:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kFeLMMXxTQFn; Wed,  9 Oct 2019 07:57:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8498F2286F;
	Wed,  9 Oct 2019 07:57:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 22A831BF3DB
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 07:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1D9C186FA6
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 07:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vg5r5SP-kQQ6 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 07:57:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 81BAB86E4F
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 07:57:18 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x997sXBm124958;
 Wed, 9 Oct 2019 07:57:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=XgsFcT5hGVYVzo6YrFsEdxjWbLcz+YMz59J3P6pk7wk=;
 b=bT7cxLKOpJ5m1amur6Nq92dDZ3w1IY/IotFEQAKazmgDUG6lAFViWWQlZnBwbuK7OrFv
 T54xGbJyxb9OtYUqhi7imVpCh9sHg7rO7SVLZuDrecgrUY2RM20wR9NrbJsvzeDcDiO2
 Gp6JDJ3Cz0XLp4EFP55tQUtDe//zo6dEzr+eH1Yg3up8L81x+teX8V8BUqTZJM35h1bV
 8qhHD5rjCpLWsHCm6uM4az64972JidxnIcUevXcY5wLWB6SEg4sNEL0wlmTujPX/Adlt
 NldHVqBGGQoko3IqgWYrQYTrnKyJVWoS8cqGr3uLe4fCj31UhkeItatP+eYVeDz4Xo1n oA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2vejkujcsy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 07:57:15 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x997rEih158629;
 Wed, 9 Oct 2019 07:57:15 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2vgev0s72h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 09 Oct 2019 07:57:15 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x997v7JE009598;
 Wed, 9 Oct 2019 07:57:07 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 09 Oct 2019 00:57:07 -0700
Date: Wed, 9 Oct 2019 10:57:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Chandra Annamaneni <chandra627@gmail.com>
Subject: Re: [PATCH] KPC2000: kpc2000_spi.c: Fix alignment and style problems.
Message-ID: <20191009075700.GK25098@kadam>
References: <1570593039-19059-1-git-send-email-chandra627@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570593039-19059-1-git-send-email-chandra627@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=924
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910090074
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9404
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=998 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910090074
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, michael.scheiderer@fau.de,
 fabian.krueger@fau.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, simon@nikanor.nu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 08:50:39PM -0700, Chandra Annamaneni wrote:
> diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
> index 3be33c4..a20f2d7 100644
> --- a/drivers/staging/kpc2000/kpc2000_spi.c
> +++ b/drivers/staging/kpc2000/kpc2000_spi.c
> @@ -30,19 +30,27 @@
>  #include "kpc.h"
>  
>  static struct mtd_partition p2kr0_spi0_parts[] = {
> -	{ .name = "SLOT_0",	.size = 7798784,		.offset = 0,                },
> -	{ .name = "SLOT_1",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> -	{ .name = "SLOT_2",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> -	{ .name = "SLOT_3",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> -	{ .name = "CS0_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
> +	{ .name = "SLOT_0",	.size = 7798784,	.offset = 0,},
> +	{ .name = "SLOT_1",	.size = 7798784,	.offset =
> +							 MTDPART_OFS_NXTBLK},

This looks worse than the original code...  :(  You could maybe make it
a little bit tighter if you used space characters.

	{ .name = "SLOT_0",    .size = 7798784,		 .offset = 0,                },
	{ .name = "SLOT_1",    .size = 7798784,		 .offset = MTDPART_OFS_NXTBLK},
	{ .name = "SLOT_2",    .size = 7798784,		 .offset = MTDPART_OFS_NXTBLK},
	{ .name = "SLOT_3",    .size = 7798784,	         .offset = MTDPART_OFS_NXTBLK},
	{ .name = "CS0_EXTRA", .size = MTDPART_SIZ_FULL, .offset = MTDPART_OFS_NXTBLK},

It still goes over 80 characters, but that's okay.  Or we could just
leave the original code as is.

[ snip ]

>  static struct flash_platform_data p2kr0_spi1_pdata = {
>  	.name =		"SPI1",
>  	.nr_parts =	ARRAY_SIZE(p2kr0_spi1_parts),
> @@ -165,7 +174,7 @@ kp_spi_read_reg(struct kp_spi_controller_state *cs, int idx)
>  	u64 val;
>  
>  	addr += idx;
> -	if ((idx == KP_SPI_REG_CONFIG) && (cs->conf_cache >= 0))
> +	if (idx == KP_SPI_REG_CONFIG && cs->conf_cache >= 0)

I like these changes but Greg doesn't.  So don't bother with this one.

>  		return cs->conf_cache;
>  
>  	val = readq(addr);

The rest of the changes are fine.  Split them into multiple patches and
resend.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
