Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E1054DFB
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:53:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2121E20535;
	Tue, 25 Jun 2019 11:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Z+WZDM7auGm; Tue, 25 Jun 2019 11:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 16EE020008;
	Tue, 25 Jun 2019 11:53:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B56AB1BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:53:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B1984203BF
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:53:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KZicN-h9ZDB0 for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:53:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id BD31720008
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:53:08 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5PBiEhA023805;
 Tue, 25 Jun 2019 11:53:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=QS/FwtA7Qs3eEw01dKZNBc0EiiHhw6dRdKdRcwxdSCc=;
 b=hA5KM+URLhz4CXIkZipMXKSXWwR8UB+1zeMa+aU3c7z39J0w/8GNLCH5+ueSPz1VMgT7
 z11/gK2xUHIPJHPVsgx03GWUBKUQjqWmdrYgEZMMWbIW7KFLcBCrSpQvQevu+ows2zpB
 eRTNcsJJfc8DAvk/bL9X4vem+dtHpWncSEqTCV7+loinnQyX64sTMD8pTQ2a+8YAHA0x
 n7OByMjNvIK5Ltrj+QyUl8Hf+GZooHoQ9O9kGuhbDdBvxd5YcwpTg1jULwSnSVQnDjyj
 dYyklFj5Sjcu9zoWyc7L1Qhd/aJjK83y84XIhV1xche4nWw3O3QW24yYLyo/iTOnDpo5 BA== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2t9cyqbtg4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 11:53:06 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5PBr5RS125808;
 Tue, 25 Jun 2019 11:53:06 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2t99f3tyk8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 11:53:06 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x5PBr0qZ019970;
 Tue, 25 Jun 2019 11:53:00 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Jun 2019 04:52:59 -0700
Date: Tue, 25 Jun 2019 14:52:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Fabian Krueger <fabian.krueger@fau.de>
Subject: Re: [PATCH 1/8] staging: kpc2000: add line breaks
Message-ID: <20190625115251.GA28859@kadam>
References: <20190625112725.10154-1-fabian.krueger@fau.de>
 <20190625112725.10154-2-fabian.krueger@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625112725.10154-2-fabian.krueger@fau.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906250096
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906250095
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Scheiderer <michael.scheiderer@fau.de>, linux-kernel@vger.kernel.org,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2019 at 01:27:12PM +0200, Fabian Krueger wrote:
> diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
> index c3e5c1848f53..7ed0fb6b4abb 100644
> --- a/drivers/staging/kpc2000/kpc2000_spi.c
> +++ b/drivers/staging/kpc2000/kpc2000_spi.c
> @@ -30,18 +30,46 @@
>  #include "kpc.h"
>  
>  static struct mtd_partition p2kr0_spi0_parts[] = {
> -	{ .name = "SLOT_0",	.size = 7798784,		.offset = 0,                },
> -	{ .name = "SLOT_1",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> -	{ .name = "SLOT_2",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> -	{ .name = "SLOT_3",	.size = 7798784,		.offset = MTDPART_OFS_NXTBLK},
> -	{ .name = "CS0_EXTRA",	.size = MTDPART_SIZ_FULL,	.offset = MTDPART_OFS_NXTBLK},
> +	{.name = "SLOT_0",
> +	 .size = 7798784,
> +	 .offset = 0,},
> +
> +	{.name = "SLOT_1",
> +	 .size = 7798784,
> +	 .offset = MTDPART_OFS_NXTBLK},
> +
> +	{.name = "SLOT_2",
> +	 .size = 7798784,
> +	 .offset = MTDPART_OFS_NXTBLK},
> +
> +	{.name = "SLOT_3",
> +	 .size = 7798784,
> +	 .offset = MTDPART_OFS_NXTBLK},
> +
> +	{.name = "CS0_EXTRA",
> +	 .size = MTDPART_SIZ_FULL,
> +	 .offset = MTDPART_OFS_NXTBLK},
>  };

The original is fine/better.

> @@ -215,7 +244,9 @@ kp_spi_txrx_pio(struct spi_device *spidev, struct spi_transfer *transfer)
>  		for (i = 0 ; i < c ; i++) {
>  			char val = *tx++;
>  
> -			if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS, KP_SPI_REG_STATUS_TXS) < 0) {
> +			if (kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS,
> +						    KP_SPI_REG_STATUS_TXS)
> +			    < 0) {

I don't like how the < 0 is on the next line.  It would be better to
introduce an "int ret;"
			ret = kp_spi_wait_for_reg_bit(cs, KP_SPI_REG_STATUS,
						      KP_SPI_REG_STATUS_TXS);
			if (ret < 0)
				goto out;


>  				goto out;
>  			}
>  

> @@ -317,7 +353,8 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
>  			dev_dbg(kpspi->dev, "  transfer -EINVAL\n");
>  			return -EINVAL;
>  		}
> -		if (transfer->speed_hz && (transfer->speed_hz < (KP_SPI_CLK >> 15))) {
> +		if (transfer->speed_hz && (transfer->speed_hz <
> +					   (KP_SPI_CLK >> 15))) {


Move the whole conition down:

		if (transfer->speed_hz &&
		    transfer->speed_hz < (KP_SPI_CLK >> 15)) {

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
