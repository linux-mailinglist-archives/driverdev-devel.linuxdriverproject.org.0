Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB748225A40
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Jul 2020 10:41:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A3C9E8825E;
	Mon, 20 Jul 2020 08:41:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rCaMKXyP2otY; Mon, 20 Jul 2020 08:41:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C1AFD88252;
	Mon, 20 Jul 2020 08:41:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DC8331BF5E0
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 08:41:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C974D20768
 for <devel@linuxdriverproject.org>; Mon, 20 Jul 2020 08:41:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-2gZ5SE+qUD for <devel@linuxdriverproject.org>;
 Mon, 20 Jul 2020 08:41:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by silver.osuosl.org (Postfix) with ESMTPS id 13E2D20529
 for <devel@driverdev.osuosl.org>; Mon, 20 Jul 2020 08:41:08 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06K8bDkh146748;
 Mon, 20 Jul 2020 08:41:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=N1tmgU/JSypAmYPQOpiVBV41mTd9aIjyYmi1clORZkI=;
 b=zhu8psgYhcnhxl1nzSkjx+NbGtep1wyuGT0v7k1NwC9iIP/a76UTjfXKgpwJgzTaLTTK
 9PHMrTjf8orCRaediSHaDSMNp31j4lmIvjvUpUfyVqjT6GGqrXhvAy+OfHh2K+AF9FML
 S9pOlx8mpmAMwo2P9deBMLdVllD3RbMZWvJJBi9aizHAH2x70bAVcdg3w5s2kI5lkdJW
 mZ6TYnCtTDDMDiqQ0e5/T89vm3Jtlwm6ZsypOgugXMiN0YZZXDpVfq1Su8Jje6uJlOE+
 3bRGMTzde/ExPVqyotblGq2sny4/a2gYFn3vlxEbVcEBbs4+X6ZEyhUd4wNjbyecIyuu tg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 32bs1m5hhd-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 20 Jul 2020 08:41:07 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 06K8cuXu020485;
 Mon, 20 Jul 2020 08:41:07 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 32d68g7swv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 20 Jul 2020 08:41:07 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 06K8f5gj007426;
 Mon, 20 Jul 2020 08:41:05 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 20 Jul 2020 01:41:05 -0700
Date: Mon, 20 Jul 2020 11:40:58 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Suraj Upadhyay <usuraj35@gmail.com>
Subject: Re: [PATCH v2] staging: media: atomisp: Replace depracated MSI APIs
Message-ID: <20200720084058.GG2549@kadam>
References: <20200719142623.GA31565@blackclown>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200719142623.GA31565@blackclown>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9687
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 malwarescore=0
 phishscore=0 mlxlogscore=999 suspectscore=2 spamscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007200065
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9687
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 bulkscore=0 adultscore=0
 lowpriorityscore=0 mlxlogscore=993 malwarescore=0 clxscore=1015
 spamscore=0 mlxscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007200065
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
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, mchehab@kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Jul 19, 2020 at 07:56:23PM +0530, Suraj Upadhyay wrote:
> Replace depracated MSI IRQ enabler and disabler
> with pci_alloc_irq_vectors and pci_free_irq_vectors respectively.
> And as a result handle the returned error as appropriate.
> Compile tested.
> 
> Signed-off-by: Suraj Upadhyay <usuraj35@gmail.com>
> ---
> Change:
> 	v2: Replace the MSI IRQ disabler too.
> ---
>  drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> index d36809a0182c..a5dea5521b36 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
> @@ -1735,8 +1735,8 @@ static int atomisp_pci_probe(struct pci_dev *dev,
>  	pci_set_master(dev);
>  	pci_set_drvdata(dev, isp);
>  
> -	err = pci_enable_msi(dev);
> -	if (err) {
> +	err = pci_alloc_irq_vectors(dev, 1, 1, PCI_IRQ_MSI);
> +	if (err < 0) {
>  		dev_err(&dev->dev, "Failed to enable msi (%d)\n", err);
>  		goto enable_msi_fail;
>  	}
> @@ -1857,7 +1857,7 @@ static int atomisp_pci_probe(struct pci_dev *dev,
>  initialize_modules_fail:
>  	cpu_latency_qos_remove_request(&isp->pm_qos);
>  	atomisp_msi_irq_uninit(isp, dev);
> -	pci_disable_msi(dev);
> +	pci_free_irq_vectors(dev);

Actually, my initial complaint was that I was just looking for to see if
the remove function was updated...  It turns out the remove function
never freed the IRQs to begin with so it was buggy from square one.

Anyway, the remove function should call pci_free_irq_vectors().  We may
as well fix it now that we have seen the bug.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
