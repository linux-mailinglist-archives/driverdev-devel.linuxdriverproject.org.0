Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A051FCBEF
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Jun 2020 13:13:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E4B9089374;
	Wed, 17 Jun 2020 11:13:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORNA7qOV0ObA; Wed, 17 Jun 2020 11:13:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72CF78917B;
	Wed, 17 Jun 2020 11:13:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACACE1BF3A1
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 11:13:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A8D0287386
 for <devel@linuxdriverproject.org>; Wed, 17 Jun 2020 11:13:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sFSMfuGNTThy for <devel@linuxdriverproject.org>;
 Wed, 17 Jun 2020 11:13:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0E00387293
 for <devel@driverdev.osuosl.org>; Wed, 17 Jun 2020 11:13:40 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HBD7dx118817;
 Wed, 17 Jun 2020 11:13:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=cuNGorMCGRL2h1N6XRNC1GY6mItog4OtrSLpqxId5mo=;
 b=A2dLbOXcLXjWH4ngUp9sSdKtQGnN8HjUtHi+IMOBdN/OfpbMrsLVjiYgts+NbLwfFU+r
 veJcPV3EuoS9iaVbn30dR8uAufSE8s0GTKYgVmPUqpMz3rXFGjtcQpvVWOrMjCuUp/uY
 CpAKRY1wUnhDkXiYtQGMk7YhhxYgRGJom65xHxZxFcFlmt2N/V2Mn8egOo6a5HceycSl
 Lwj2SxwFKhZtrdV+O3J7unD1OM/g8vU7A3bxLPkqHeoBRHpvyZQJ/JlHi0QdbI+wib5p
 r3z3270/Pb3GfMF18+aOJlOOZbMo1dYeC9PK0DXJAn2MUZQUQApWf4aadd3YLw48Xv6B Vw== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 31qecks591-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jun 2020 11:13:39 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 05HBD8Ds161596;
 Wed, 17 Jun 2020 11:13:38 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 31q66nr3r8-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 17 Jun 2020 11:13:38 +0000
Received: from abhmp0019.oracle.com (abhmp0019.oracle.com [141.146.116.25])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 05HBDUql031357;
 Wed, 17 Jun 2020 11:13:30 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 17 Jun 2020 04:13:29 -0700
Date: Wed, 17 Jun 2020 14:13:22 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Souptick Joarder <jrdr.linux@gmail.com>
Subject: Re: [PATCH 1/4] staging: kpc2000: Unpin partial pinned pages
Message-ID: <20200617111321.GP4282@kadam>
References: <1592360843-3440-1-git-send-email-jrdr.linux@gmail.com>
 <1592360843-3440-2-git-send-email-jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1592360843-3440-2-git-send-email-jrdr.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxlogscore=999
 bulkscore=0 adultscore=0 phishscore=0 suspectscore=2 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170088
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9654
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 cotscore=-2147483648 malwarescore=0
 clxscore=1011 adultscore=0 suspectscore=2 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 bulkscore=0 phishscore=0 mlxscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2006170088
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
 gregkh@linuxfoundation.org, pakki001@umn.edu, linux-kernel@vger.kernel.org,
 simon@nikanor.nu, ldufour@linux.ibm.com, walken@google.com,
 jane.pnx9@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jun 17, 2020 at 07:57:20AM +0530, Souptick Joarder wrote:
> There is a bug, when get_user_pages() failed but partially pinned
> pages are not unpinned. Fixed it.
> 
> Also, int is more appropriate type for rv. Changed it.
> 
> Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> Cc: John Hubbard <jhubbard@nvidia.com>
> Cc: Bharath Vedartham <linux.bhar@gmail.com>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/kpc2000/kpc_dma/fileops.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
> index 8975346..b136353 100644
> --- a/drivers/staging/kpc2000/kpc_dma/fileops.c
> +++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
> @@ -35,7 +35,7 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  			    unsigned long iov_base, size_t iov_len)
>  {
>  	unsigned int i = 0;
> -	long rv = 0;
> +	int rv = 0;
>  	struct kpc_dma_device *ldev;
>  	struct aio_cb_data *acd;
>  	DECLARE_COMPLETION_ONSTACK(done);
> @@ -193,6 +193,10 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
>  		put_page(acd->user_pages[i]);
                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  
>   err_get_user_pages:
> +	if (rv > 0) {
> +		for (i = 0; i < rv; i++)
> +			put_pages(acd->user_pages[i])
                        ^^^^^^^^^^^^^^^^^^^^^^^^^^^^

> +	}

This isn't a complete fix.  "rv" is the negative error code but here we
are returning a positive value on this path.  Also it's ugly to have
same put_page() loop repeated twice.

It would be better to write it like this:

	rv = get_user_pages(iov_base, acd->page_count, FOLL_TOUCH | FOLL_WRITE | FOLL_GET, acd->user_pages, NULL);
	mmap_read_unlock(current->mm);        /*  release the semaphore */
	if (rv < 0)
		goto free_pages;
	if (rv != acd->page_count) {
		acd->page_count = rv;
		rv = -EFAULT;
		goto put_pages;
	}

	...

put_pages:
	for (i = 0 ; i < acd->page_count ; i++)
		put_pages(acd->user_pages[i]);
free_pages:
	kfree(acd->user_pages);

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
