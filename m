Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61FE7305650
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 10:00:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B8293851C2;
	Wed, 27 Jan 2021 09:00:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 210thwYfKbNt; Wed, 27 Jan 2021 09:00:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A2F5484FB2;
	Wed, 27 Jan 2021 09:00:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 805AA1BF2B0
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 09:00:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CC4287092
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 09:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A6wAugRWqhpx for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 09:00:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C606E85F29
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 09:00:16 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10R8xGPO003059;
 Wed, 27 Jan 2021 09:00:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=+3iyfWJfnNqZE0f/gVuM8vxYgIblkdhX0Yx0XwqHHpw=;
 b=BZ9SwiJS2hHbGkRyjSifYkMjRv0aQK/SaoxtnW/UEvKKP+4yF9R1mqb5fRSQeQZ4Yk56
 hCACaeBsVRl/xh455+nDR+DqO6ei/s+UtZ1foFtHsfPUY+MliGxWv9BvgGu8Zfi3Agsz
 WHndYBJJVzVVijGIvwHT6hYgV2CbhIp7GMxYgda8dzjAA3LBy+bxC0tk0ff9kkwKXLZc
 T34Pn8baNe+XYnvXEUlaGG9w9D/3zg0JkEecdUMwAl2dpnEUQv5twCPC5RdtkphbQRlt
 ci8Po53F/VaIZ0qY6xYXx88xyvcuAamUKtpK1KFXsYouSJGob7CyX6EkLueFO7RWUF9u ZA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2130.oracle.com with ESMTP id 3689aap3fe-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 Jan 2021 09:00:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 10R8vRxj071729;
 Wed, 27 Jan 2021 09:00:10 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 368wq00pqw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 Jan 2021 09:00:10 +0000
Received: from abhmp0008.oracle.com (abhmp0008.oracle.com [141.146.116.14])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 10R901QC009743;
 Wed, 27 Jan 2021 09:00:01 GMT
Received: from kadam (/102.36.221.92) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 Jan 2021 01:00:00 -0800
Date: Wed, 27 Jan 2021 11:59:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Carlis <zhangxuezhi3@gmail.com>
Subject: Re: [PATCH v6] fbtft: add tearing signal detect
Message-ID: <20210127085951.GE2696@kadam>
References: <1611732502-99639-1-git-send-email-zhangxuezhi3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1611732502-99639-1-git-send-email-zhangxuezhi3@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9876
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 mlxscore=0 spamscore=0
 adultscore=0 bulkscore=0 phishscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101270049
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=9876
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 adultscore=0
 lowpriorityscore=0 mlxlogscore=999 clxscore=1015 phishscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 impostorscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2101270050
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, gregkh@linuxfoundation.org,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sbrivio@redhat.com, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 27, 2021 at 03:28:22PM +0800, Carlis wrote:
>  static int init_display(struct fbtft_par *par)
>  {
> +	int rc;
> +	struct device *dev = par->info->device;
> +
> +	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0, GPIOD_IN);
> +	if (IS_ERR(par->gpio.te)) {
> +		rc = PTR_ERR(par->gpio.te);
> +		pr_err("Failed to request te gpio: %d\n", rc);
> +		par->gpio.te = NULL;
> +	}
> +	if (par->gpio.te) {
> +		init_completion(&spi_panel_te);
> +		mutex_init(&te_mutex);
> +		rc = devm_request_irq(dev,
> +				      gpiod_to_irq(par->gpio.te),
> +				     spi_panel_te_handler, IRQF_TRIGGER_RISING,
> +				     "TE_GPIO", par);
> +		if (rc) {
> +			pr_err("TE request_irq failed.\n");
> +			devm_gpiod_put(dev, par->gpio.te);
> +			par->gpio.te = NULL;
> +		} else {
> +			disable_irq_nosync(gpiod_to_irq(par->gpio.te));
> +			pr_info("TE request_irq completion.\n");

#SadFaceEmoji

> +		}
> +	} else {
> +		pr_info("%s:%d, TE gpio not specified\n",
> +			__func__, __LINE__);
> +	}

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
