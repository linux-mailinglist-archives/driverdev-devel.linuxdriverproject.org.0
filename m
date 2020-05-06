Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 101341C70DF
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 14:54:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60D6C885E0;
	Wed,  6 May 2020 12:54:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3EsN8+KM1SMn; Wed,  6 May 2020 12:54:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C52FC88318;
	Wed,  6 May 2020 12:54:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9EA0A1BF82D
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 12:54:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 955B825043
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 12:54:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YoxrYSZ5HkeJ for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 12:54:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 2F5EF24F92
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 12:54:16 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 046CrGOY135206;
 Wed, 6 May 2020 12:54:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=Q//xXX00B7/TVN4RISX5EFMGkinEKz/HRr2Wvyujl/c=;
 b=GD+ZwYjbp6s/Z+yEPbCzG6NTjToFNXJDFZNfzKuTgxCjIl+lIdQZ6dR605AIRFt1M7ht
 zPSPAbGnT2q/xdC3ZQ7eaX2LIlpiPK67r55e5oxSNjQDyEDy8NwZ08JfZZcvWtXi008E
 ixM1Qt1cTWdFfYx14jts6pbS1ZAVsP6k+sHB0FX74/JsIwOFSsmTnPojL8FCwx0ek7Jw
 0PN4DQNN3Zfxs8sS6Zm9SnxlY/SDqGHa2p0TUQ+hZjlcJ+/MR1nDEkmdJzNlKHCOV1OJ
 QAGVEh4Ugp1lohxb9IWLBZHzlBICJ/AD45f/SkQ7dfh0Yv73iFHTvydYus1YXe8U6Pqe 4A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by aserp2120.oracle.com with ESMTP id 30usgq17y0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 May 2020 12:54:10 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 046CqnPM088039;
 Wed, 6 May 2020 12:54:10 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3030.oracle.com with ESMTP id 30sjdvf6vf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 06 May 2020 12:54:10 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 046Cs7LX015783;
 Wed, 6 May 2020 12:54:07 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 06 May 2020 05:54:06 -0700
Date: Wed, 6 May 2020 15:53:59 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH -next] staging: kpc2000: fix error return code in
 kp2000_pcie_probe()
Message-ID: <20200506125359.GK1992@kadam>
References: <20200506125255.90336-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506125255.90336-1-weiyongjun1@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 suspectscore=0 mlxscore=0
 bulkscore=0 adultscore=0 phishscore=0 mlxlogscore=999 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005060101
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9612
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 impostorscore=0
 mlxscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1011
 mlxlogscore=999 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005060101
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 simon@nikanor.nu
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, May 06, 2020 at 12:52:55PM +0000, Wei Yongjun wrote:
> Fix to return a negative error code from the error handling
> case instead of 0, as done elsewhere in this function. Also
> removed var 'rv' since we can use 'err' instead.
> 
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/staging/kpc2000/kpc2000/core.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
> index 7b00d7069e21..14e07742dc9d 100644
> --- a/drivers/staging/kpc2000/kpc2000/core.c
> +++ b/drivers/staging/kpc2000/kpc2000/core.c
> @@ -298,7 +298,6 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
>  {
>  	int err = 0;
>  	struct kp2000_device *pcard;
> -	int rv;
>  	unsigned long reg_bar_phys_addr;
>  	unsigned long reg_bar_phys_len;
>  	unsigned long dma_bar_phys_addr;
> @@ -445,11 +444,11 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
>  	if (err < 0)
>  		goto err_release_dma;
>  
> -	rv = request_irq(pcard->pdev->irq, kp2000_irq_handler, IRQF_SHARED,
> +	err = request_irq(pcard->pdev->irq, kp2000_irq_handler, IRQF_SHARED,
>  			 pcard->name, pcard);
                        ^
Could you add a space character here so the white space still aligns?

Otherwise it looks good.  :)

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
