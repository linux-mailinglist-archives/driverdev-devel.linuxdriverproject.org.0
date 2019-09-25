Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDFEBD92B
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 09:34:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C58A084BC1;
	Wed, 25 Sep 2019 07:34:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2haSS-Q4zyA8; Wed, 25 Sep 2019 07:34:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82915811F8;
	Wed, 25 Sep 2019 07:34:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06DCF1BF3D6
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 07:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 03A9E8147D
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 07:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sjCLzE0yNyqG for <devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 07:34:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7FD01811F8
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 07:34:11 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8P7XsZD066421;
 Wed, 25 Sep 2019 07:34:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2019-08-05;
 bh=rnwCP+yK6Y5sSERIDmHzeGo5Z0sHmxxaolBxB7tcZAU=;
 b=c7tkPZugFIf2O8S5EGXfb2sPCZIjOXyeTb15qd24WMNfj6jeFkPCMsuPHK76VntD4X7q
 9sjBdUPgD0AQyNO9nmuIGKC5dRsJd8sKTxrolWp9pBkO57pzDWbGSqB8b7P4eXVOG6xN
 TyZtOkN5ztdM0V1J6mxMELDZRoYG6VN+WviPeGZqFsXK41T0h59dq0mAZXe2yy7c2ChC
 A00huwvjQj+fasZso/Jk/s7h8OdCnBQ+/tRMPfJ39Nota9C/Lijc03GZb3bCVSxpv1Lv
 DOHDArrEQQsfESnFmhEHGv4jA8inyWtuBiL5J0dzVynrnrTYE10rpSLLbV3J1jRFtP9h Zg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2v5btq2t5t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 25 Sep 2019 07:34:09 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8P7Y3J5093490;
 Wed, 25 Sep 2019 07:34:09 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 2v7vnxeae8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 25 Sep 2019 07:34:07 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8P7XS1M005149;
 Wed, 25 Sep 2019 07:33:29 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 25 Sep 2019 00:33:28 -0700
Date: Wed, 25 Sep 2019 10:33:21 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Jerry Lin <wahahab11@gmail.com>
Subject: Re: [PATCH] staging: olpc_dcon: fix wrong dependencies in Kconfig file
Message-ID: <20190925073321.GB27389@kadam>
References: <20190925072533.GA18121@compute1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190925072533.GA18121@compute1>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9390
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1909250077
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9390
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1909250077
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
Cc: devel@driverdev.osuosl.org, Daniel Drake <dsd@laptop.org>,
 Jens Frederich <jfrederich@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jon Nettleton <jon.nettleton@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Sep 25, 2019 at 03:25:33PM +0800, Jerry Lin wrote:
> To allow simultaneous support for XO-1 and XO-1.5.
> This module require GPIO_CS5535 (for 1.0) and ACPI (for 1.5) now.
> 
> Reported-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Jerry Lin <wahahab11@gmail.com>
> ---
>  drivers/staging/olpc_dcon/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/olpc_dcon/Kconfig b/drivers/staging/olpc_dcon/Kconfig
> index 4ae271f..c2429e4 100644
> --- a/drivers/staging/olpc_dcon/Kconfig
> +++ b/drivers/staging/olpc_dcon/Kconfig
> @@ -3,7 +3,7 @@ config FB_OLPC_DCON
>  	tristate "One Laptop Per Child Display CONtroller support"
>  	depends on OLPC && FB
>  	depends on I2C
> -	depends on (GPIO_CS5535 || ACPI)
> +	depends on (GPIO_CS5535 && ACPI)

Please, remove the parentheses as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
