Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3681754CA
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 08:46:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8F2F20414;
	Mon,  2 Mar 2020 07:46:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C8CCNRpHqt29; Mon,  2 Mar 2020 07:46:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1F2B8203F0;
	Mon,  2 Mar 2020 07:46:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 32B171BF28C
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 07:46:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 276CC20353
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 07:46:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AOz-YsqZww7O for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 07:46:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 55D372034B
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 07:46:04 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0227hKVq187428;
 Mon, 2 Mar 2020 07:45:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=2mPZCjCiEQN8LuFrAx6hDaMcPmsg2dvMTzR2q4y1+UU=;
 b=AuDffj4x3FTTxai7qPvmM030rRwjEIy4kQdU76CHjdbNLFglvw+3GZ9/L34qBWawVUOu
 c2gxYcEvXORG6OvuMIXEPF2xg9qdlMPRMdaEb3iRkYfRVV6cmfsGC83zCHzDiy7o82PI
 5CBFu84rWALNAV2XAsuZ7FrCOhL5IC2QMveQ+aYwd0JWipIOhe0zUsp9e6gYCa5P6G6f
 PxLpDMuuOIVTaRDaAUoiLROfadK/oYmc+FFbSR+xCh90kwxqYmIR8rfcLLnP1b/zi2EO
 IrjAopXqvos01L4H4H6b3cInc0HrmQCMyJwHLkpZWE3RKeuBpos5a/yySS156aVDlqXK wQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2yghn2sv5h-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 07:45:59 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0227iTPd086420;
 Mon, 2 Mar 2020 07:45:58 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2yg1p12v6j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 02 Mar 2020 07:45:58 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0227jsep001123;
 Mon, 2 Mar 2020 07:45:54 GMT
Received: from kadam (/129.205.23.165) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Sun, 01 Mar 2020 23:45:52 -0800
Date: Mon, 2 Mar 2020 10:45:42 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
Subject: Re: [PATCH] staging: kpc2000: kpc2000_spi: Use new structure for SPI
 transfer delays
Message-ID: <20200302074542.GB4140@kadam>
References: <20200227144643.23195-1-sergiu.cuciurean@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227144643.23195-1-sergiu.cuciurean@analog.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9547
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 malwarescore=0
 mlxlogscore=999 mlxscore=0 spamscore=0 adultscore=0 bulkscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003020059
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9547
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 phishscore=0 spamscore=0
 impostorscore=0 mlxscore=0 adultscore=0 mlxlogscore=999 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 clxscore=1011 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003020059
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
Cc: devel@driverdev.osuosl.org, gneukum1@gmail.com, chandra627@gmail.com,
 michael.scheiderer@fau.de, fabian.krueger@fau.de, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, simon@nikanor.nu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 27, 2020 at 04:46:43PM +0200, Sergiu Cuciurean wrote:
> In a recent change to the SPI subsystem [1], a new `delay` struct was added

Don't do [1] footnote, just say "SPI subsystem in commit bebcfd272df6
("spi: introduce `delay` field for `spi_transfer` + spi_transfer_delay_exec()")
You can use footnotes for URLs if you want (not required).

> to replace the `delay_usecs`. This change replaces the current
> `delay_usecs` with `delay` for this driver.
> 
> The `spi_transfer_delay_exec()` function [in the SPI framework] makes sure
> that both `delay_usecs` & `delay` are used (in this order to preserve
> backwards compatibility).
> 
> [1] commit bebcfd272df6 ("spi: introduce `delay` field for
> `spi_transfer` + spi_transfer_delay_exec()")
> 
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> ---
>  drivers/staging/kpc2000/kpc2000_spi.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000_spi.c b/drivers/staging/kpc2000/kpc2000_spi.c
> index 1c360daa703d..cc9b147fd437 100644
> --- a/drivers/staging/kpc2000/kpc2000_spi.c
> +++ b/drivers/staging/kpc2000/kpc2000_spi.c
> @@ -386,8 +386,9 @@ kp_spi_transfer_one_message(struct spi_master *master, struct spi_message *m)
>  			}
>  		}
>  
> -		if (transfer->delay_usecs)
> -			udelay(transfer->delay_usecs);
> +		if (transfer->delay.value &&
> +		    (transfer->delay.unit == SPI_DELAY_UNIT_USECS))
> +			udelay(transfer->delay.value);

What if the units are in USEC now?  We should probably not just ignore
it right?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
