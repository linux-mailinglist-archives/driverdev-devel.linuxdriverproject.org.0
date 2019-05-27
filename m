Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ADE2AF66
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 May 2019 09:32:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F241C868AD;
	Mon, 27 May 2019 07:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VXp+GrfFHIn3; Mon, 27 May 2019 07:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4369B86503;
	Mon, 27 May 2019 07:32:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B79B41BF951
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 07:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B016D21563
 for <devel@linuxdriverproject.org>; Mon, 27 May 2019 07:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t5P0LhKwBFiD for <devel@linuxdriverproject.org>;
 Mon, 27 May 2019 07:32:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id B532D21538
 for <devel@driverdev.osuosl.org>; Mon, 27 May 2019 07:32:14 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4R7Sp3Y025804;
 Mon, 27 May 2019 07:32:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=Dj/c4jygPsLOwoeXy2QzAi6Z5tucTz7dWZXb8pwrNIY=;
 b=LF7vLq5dVtLXBIjepZ2FjTaw9k6FsyFAt6nYbD4PYk91TIeK3SKmjHkpsZPS9FMEnVqf
 XMYbeBLruRwmwGqQGatmtQQqGq94j7rEpn9t3sq1MIvSLXTfiVik3Gtp4iA4n1sT5jG4
 6lyqraSaDRLj7mOwbWwGmbGJMmCVqKjyKbXLU3BLCSY49/5aM0jsOBBcNU9Tambk+mZP
 KCoJbrwrBDKlvv2BFOovdUAok0Cp1P6LDwusQy23uMnwS7r1Io6lbaoaWfDwL3Xyc13v
 fa3QlZv7LJ6FRcfQAi0hGSgDjiOHsfNMoGJdDGFMbE+UcDMwJkEuneJu9DK5KdC5f1FL 5g== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2spw4t4p1f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 May 2019 07:32:12 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4R7VjON196133;
 Mon, 27 May 2019 07:32:12 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3030.oracle.com with ESMTP id 2srbdw844a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 27 May 2019 07:32:12 +0000
Received: from abhmp0006.oracle.com (abhmp0006.oracle.com [141.146.116.12])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4R7W6rb021727;
 Mon, 27 May 2019 07:32:09 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 27 May 2019 00:32:06 -0700
Date: Mon, 27 May 2019 10:31:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Simon =?iso-8859-1?Q?Sandstr=F6m?= <simon@nikanor.nu>
Subject: Re: [PATCH 3/4] staging: kpc2000: add missing spaces in core.c
Message-ID: <20190527073159.GX31203@kadam>
References: <20190524110802.2953-1-simon@nikanor.nu>
 <20190524110802.2953-4-simon@nikanor.nu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524110802.2953-4-simon@nikanor.nu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9269
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905270053
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9269
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905270053
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 24, 2019 at 01:08:01PM +0200, Simon Sandstr=F6m wrote:
> Fixes checkpatch.pl errors "space required before the open brace '{'"
> and "(foo*)" should be "(foo *)".
> =

> Signed-off-by: Simon Sandstr=F6m <simon@nikanor.nu>
> ---
>  drivers/staging/kpc2000/kpc2000/core.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc=
2000/kpc2000/core.c
> index 40f65f96986b..bb3b427a72b1 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -308,7 +308,7 @@ static long kp2000_cdev_ioctl(struct file *filp, unsi=
gned int ioctl_num,
>  =

>  	dev_dbg(&pcard->pdev->dev, "kp2000_cdev_ioctl(filp =3D [%p], ioctl_num =
=3D 0x%08x, ioctl_param =3D 0x%016lx) pcard =3D [%p]\n", filp, ioctl_num, i=
octl_param, pcard);
>  =

> -	switch (ioctl_num){
> +	switch (ioctl_num) {
>  	case KP2000_IOCTL_GET_CPLD_REG:             return readq(pcard->sysinfo=
_regs_base + REG_CPLD_CONFIG);
>  	case KP2000_IOCTL_GET_PCIE_ERROR_REG:       return readq(pcard->sysinfo=
_regs_base + REG_PCIE_ERROR_COUNT);
>  =

> @@ -326,7 +326,7 @@ static long kp2000_cdev_ioctl(struct file *filp, unsi=
gned int ioctl_num,
>  		temp.ddna =3D pcard->ddna;
>  		temp.cpld_reg =3D readq(pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
>  =

> -		ret =3D copy_to_user((void*)ioctl_param, (void*)&temp, sizeof(temp));
> +		ret =3D copy_to_user((void *)ioctl_param, (void *)&temp, sizeof(temp));
>  		if (ret)
>  			return -EFAULT;

This should really be written like so:

		if (copy_to_user((void __user *)ioctl_param, &temp,
				 sizeof(temp)))
			return -EFAULT;

temp is really the wrong name.  "temp" is for temperatures.  "tmp" means
temporary.  But also "tmp" is wrong here because it's not a temporary
variable.  It's better to call it "regs" here.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
