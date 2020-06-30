Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F56F20F1E5
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Jun 2020 11:46:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6F89086F49;
	Tue, 30 Jun 2020 09:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VgB0SCrrOVRG; Tue, 30 Jun 2020 09:46:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDACF86F13;
	Tue, 30 Jun 2020 09:46:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 569571BF281
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 09:46:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 52EB2878BA
 for <devel@linuxdriverproject.org>; Tue, 30 Jun 2020 09:46:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dOr5QJ6EJ2ss for <devel@linuxdriverproject.org>;
 Tue, 30 Jun 2020 09:46:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0FA2187A05
 for <devel@driverdev.osuosl.org>; Tue, 30 Jun 2020 09:46:19 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05U9c84t161731;
 Tue, 30 Jun 2020 09:46:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=8W/fVzANCEAAJwkiLCTynyBy83jeITaD6MofcLzSNKE=;
 b=H/mC0Z6dj83bB3ATv0UOMFpGK9al8GcYKabxjscV5Jqn6gI6Ofkxwh8kmrh7eTQW4E2Z
 /mRmsZsVGM1bGK04DXZJ8dgakogb8jk4NNA3rK/ykLtb0zSQZgVihtbSWaW3xRh2ksQH
 M8M+tAADc4W+dg+QDQ35LyTlAAneUvOhLohpNPoZ//+23bVi1I/T8+ifF0/xp0ICZfWW
 YiHcG48koP30L8lG+nTbrbiM41By2rBsQiE61jYfCQ8iEe3MvWwW+56EtCT+1i1awdF4
 zqGeDBwDqr/xI2zMysBYxb6evzd3PF7BB2oJpSc7Qvxb8Y4xQrK+2TPPHlREhzAgypC5 Cg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 31wxrn3deg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Jun 2020 09:46:17 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05U9gfAX179729;
 Tue, 30 Jun 2020 09:46:17 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3020.oracle.com with ESMTP id 31xg12vykv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 30 Jun 2020 09:46:17 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 05U9kChb011743;
 Tue, 30 Jun 2020 09:46:13 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 30 Jun 2020 09:46:12 +0000
Date: Tue, 30 Jun 2020 12:46:05 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Souptick Joarder <jrdr.linux@gmail.com>
Subject: Re: [PATCH v2 4/4] staging: kpc2000: kpc_dma: Remove additional goto
 statements
Message-ID: <20200630094604.GK2571@kadam>
References: <1593503539-18649-1-git-send-email-jrdr.linux@gmail.com>
 <1593503539-18649-5-git-send-email-jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1593503539-18649-5-git-send-email-jrdr.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9667
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 malwarescore=0
 mlxlogscore=999 suspectscore=2 bulkscore=0 mlxscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006300070
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9667
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 mlxlogscore=999
 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 phishscore=0 adultscore=0 cotscore=-2147483648
 lowpriorityscore=0 suspectscore=2 spamscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2006300069
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
Cc: devel@driverdev.osuosl.org, Bharath Vedartham <linux.bhar@gmail.com>,
 harshjain32@gmail.com, John Hubbard <jhubbard@nvidia.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, pakki001@umn.edu,
 ldufour@linux.ibm.com, jane.pnx9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 30, 2020 at 01:22:19PM +0530, Souptick Joarder wrote:
> As 3 goto level referring to same common code, those can be
> accomodated with a single goto level and renameing it to
> unpin_pages. Set the -ERRNO when returning partial mapped
> pages in more appropriate place.
> 
> Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> Cc: John Hubbard <jhubbard@nvidia.com>
> Cc: Bharath Vedartham <linux.bhar@gmail.com>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index 8cd20ad..d21a4fd 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -35,7 +35,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  			    unsigned long iov_base, size_t iov_len)
>  {
>  	unsigned int i = 0;
> -	int rv = 0;
> +	int rv = 0, nr_pages = 0;
>  	struct kpc_dma_device *ldev;
>  	struct aio_cb_data *acd;
>  	DECLARE_COMPLETION_ONSTACK(done);
> @@ -79,22 +79,27 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  	rv = pin_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE, acd->user_pages, NULL);
>  	mmap_read_unlock(current->mm);        /*  release the semaphore */
>  	if (rv != acd->page_count) {
> +		nr_pages = rv;
> +		if (rv > 0)
> +			rv = -EFAULT;
> +
>  		dev_err(&priv->ldev->pldev->dev, "Couldn't pin_user_pages (%d)\n", rv);
> -		goto err_get_user_pages;
> +		goto unpin_pages;
>  	}
> +	nr_pages = acd->page_count;
>  
>  	// Allocate and setup the sg_table (scatterlist entries)
>  	rv = sg_alloc_table_from_pages(&acd->sgt, acd->user_pages, acd->page_count, iov_base & (PAGE_SIZE - 1), iov_len, GFP_KERNEL);
>  	if (rv) {
>  		dev_err(&priv->ldev->pldev->dev, "Couldn't alloc sg_table (%d)\n", rv);
> -		goto err_alloc_sg_table;
> +		goto unpin_pages;
>  	}
>  
>  	// Setup the DMA mapping for all the sg entries
>  	acd->mapped_entry_count = dma_map_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
>  	if (acd->mapped_entry_count <= 0) {
>  		dev_err(&priv->ldev->pldev->dev, "Couldn't dma_map_sg (%d)\n", acd->mapped_entry_count);
> -		goto err_dma_map_sg;
> +		goto unpin_pages;

This wasn't introduced by your patch but the most recent successful
allocation is sg_alloc_table_from_pages() so this should be goto
free_table:

free_table:
	sg_free_table(&acd->sgt);
unpin_pages:
	if (nr_pages > 0)
		unpin_user_pages(acd->user_pages, nr_pages);

Always just keep track of the most recent allocation and check that the
"goto free_foo" matches what you would expect to release the most
recent thing.

>  	}
>  
>  	// Calculate how many descriptors are actually needed for this transfer.
> @@ -187,15 +192,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  	unlock_engine(ldev);
>  	dma_unmap_sg(&ldev->pldev->dev, acd->sgt.sgl, acd->sgt.nents, ldev->dir);
>  	sg_free_table(&acd->sgt);
        ^^^^^^^^^^^^^^^^^^^^^^^^

> - err_dma_map_sg:
> - err_alloc_sg_table:
> -	unpin_user_pages(acd->user_pages, acd->page_count);
>  
> - err_get_user_pages:
> -	if (rv > 0) {
> -		unpin_user_pages(acd->user_pages, rv);
> -		rv = -EFAULT;
> -	}
> + unpin_pages:
> +	if (nr_pages > 0)
> +		unpin_user_pages(acd->user_pages, nr_pages);
>  	kfree(acd->user_pages);
>   err_alloc_userpages:
>  	kfree(acd);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
