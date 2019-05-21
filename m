Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 172A225391
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 17:13:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 909C5279B5;
	Tue, 21 May 2019 15:13:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ltyfk5xFmeDZ; Tue, 21 May 2019 15:13:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 540B126A59;
	Tue, 21 May 2019 15:13:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D9101BF4DA
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:13:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 588A985FDE
 for <devel@linuxdriverproject.org>; Tue, 21 May 2019 15:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uxbFYbYiudkq for <devel@linuxdriverproject.org>;
 Tue, 21 May 2019 15:13:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B75F885B99
 for <devel@driverdev.osuosl.org>; Tue, 21 May 2019 15:13:08 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4LF1pIG100322;
 Tue, 21 May 2019 15:13:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=iO87e8oapsoYBD3zmv3BtHcDp0cXYi516sKUqZMvPys=;
 b=vbLZCEXGMm5UNDj4qRSgu28oVsptVtrdFpa5OHgJ5PLPFjEtl5CrsoUu5+w2g1hH1S63
 dyi10F/801xUQ514nWbHn7MwsVhyytAV72cqXevdoLnyJZrgWICVuxVhLg2oRx5VwEfQ
 sM5hpShJRVSiJbVlPb9d+TeeENsRHbVAmwXSZxPb6tH6++cufZg0a/7fYy7DV/DHqMlM
 9s+xU9bH97oCbwpGkm+Th8b3UXR5rHD89QXLdS8juFFQjbUSb4FUSYOYJ0m5aPAlW6AV
 HavjjsV4uRE/yArWHiYC6QqROJmit91lsAnvsPKZPHPEHlZ1+yk/QoyWsfmwYZpNtqzl BA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 2sj7jdpadn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 15:13:07 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4LFA3ft126309;
 Tue, 21 May 2019 15:11:07 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2sm0471jqh-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 21 May 2019 15:11:06 +0000
Received: from abhmp0016.oracle.com (abhmp0016.oracle.com [141.146.116.22])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4LFB6HG032315;
 Tue, 21 May 2019 15:11:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 21 May 2019 15:11:06 +0000
Date: Tue, 21 May 2019 18:10:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sven Van Asbroeck <thesven73@gmail.com>
Subject: Re: [PATCH] staging: fieldbus: anybuss: force address space conversion
Message-ID: <20190521151059.GM31203@kadam>
References: <20190521145116.24378-1-TheSven73@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521145116.24378-1-TheSven73@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9264
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905210094
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9264
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905210094
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 21, 2019 at 10:51:16AM -0400, Sven Van Asbroeck wrote:
> The regmap's context (stored as 'void *') consists of a pointer to
> __iomem. Mixing __iomem and non-__iomem addresses generates
> sparse warnings.
> 
> Fix by using __force when converting to/from 'void __iomem *' and
> the regmap's context.
> 
> Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
> ---
>  drivers/staging/fieldbus/anybuss/arcx-anybus.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/fieldbus/anybuss/arcx-anybus.c b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> index a167fb68e355..8126e5535ada 100644
> --- a/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> +++ b/drivers/staging/fieldbus/anybuss/arcx-anybus.c
> @@ -114,7 +114,7 @@ static void export_reset_1(struct device *dev, bool assert)
>  static int read_reg_bus(void *context, unsigned int reg,
>  			unsigned int *val)
>  {
> -	void __iomem *base = context;
> +	void __iomem *base = (__force void __iomem *)context;


There is no need to use __force.  Just:

	void __iomem *base = (void __iomem *)context;

For the rest as well.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
