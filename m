Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9746254DF0
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 13:49:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E8DF85F15;
	Tue, 25 Jun 2019 11:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YDavjwEusx5L; Tue, 25 Jun 2019 11:49:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7D07A85E99;
	Tue, 25 Jun 2019 11:49:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8564A1BF20B
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:49:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8249C85EBE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 11:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JfHn1jiHB_b5 for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 11:49:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 59B5F85E99
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:49:14 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5PBiFa7023814;
 Tue, 25 Jun 2019 11:49:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2018-07-02;
 bh=RjXvwXwiK8oNcaMDX+TKVS4HTCF0lBMLgFaDA9RxUNc=;
 b=PzWoxPqTv2OzBkzG3UhCFsH0V14ueOaL6KFOwaMjDfqqsfgZXsiNGdsSSK1F67tDHq01
 6wvNbIMDlTKQlI6U8Z6RgaA/SWD8QtBXSyZ9x2gfgZNSpENlCniMjKtZQ/sN5B77FFhK
 xv8HS7eCJ+PHci6Kzxp+UOrjk07qXkhr8Kd6p8K8bYRBHFDkM0q7iHRz9Sz8EicZErSt
 xzVWqizwBdlqZEIBt0OYHtSbbfR8aqpwTjq+15NaFMB5kD7RimC9sQ6vGufAlHgDkKky
 1Hp1jyNscDJrQNmKkAhhZujpEp3veRD6K22PEAzNl3LXTIBOi6y9LBYCsRfesjkmO8Gl oA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 2t9cyqbsy7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 11:49:13 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x5PBkiG8106256;
 Tue, 25 Jun 2019 11:47:12 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2t9p6u4vh7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 25 Jun 2019 11:47:12 +0000
Received: from abhmp0014.oracle.com (abhmp0014.oracle.com [141.146.116.20])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x5PBl9DC004578;
 Tue, 25 Jun 2019 11:47:10 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 25 Jun 2019 04:47:09 -0700
Date: Tue, 25 Jun 2019 14:47:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ian Abbott <abbotti@mev.co.uk>
Subject: Re: [PATCH] staging: comedi: use dma_mmap_coherent for DMA-able
 buffer mmap
Message-ID: <20190625114700.GZ28859@kadam>
References: <20190625112659.13016-1-abbotti@mev.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625112659.13016-1-abbotti@mev.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=2
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=838
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906250094
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9298
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=2 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=891 adultscore=0
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
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jun 25, 2019 at 12:26:59PM +0100, Ian Abbott wrote:
>  drivers/staging/comedi/comedi_buf.c  | 150 ++++++++++++++++++---------
>  drivers/staging/comedi/comedi_fops.c |  39 ++++---
>  2 files changed, 125 insertions(+), 64 deletions(-)
> 
> diff --git a/drivers/staging/comedi/comedi_buf.c b/drivers/staging/comedi/comedi_buf.c
> index d2c8cc72a99d..3ef3ddabf139 100644
> --- a/drivers/staging/comedi/comedi_buf.c
> +++ b/drivers/staging/comedi/comedi_buf.c
> @@ -27,18 +27,19 @@ static void comedi_buf_map_kref_release(struct kref *kref)
>  	unsigned int i;
>  
>  	if (bm->page_list) {
> -		for (i = 0; i < bm->n_pages; i++) {
> -			buf = &bm->page_list[i];
> -			clear_bit(PG_reserved,
> -				  &(virt_to_page(buf->virt_addr)->flags));
> -			if (bm->dma_dir != DMA_NONE) {
> -#ifdef CONFIG_HAS_DMA
> -				dma_free_coherent(bm->dma_hw_dev,
> -						  PAGE_SIZE,
> -						  buf->virt_addr,
> -						  buf->dma_addr);
> -#endif
> -			} else {
> +		if (bm->dma_dir != DMA_NONE) {
> +			/*
> +			 * DMA buffer was allocated as a single block.
> +			 * Address is in page_list[0].
> +			 */
> +			buf = &bm->page_list[0];
> +			dma_free_coherent(bm->dma_hw_dev,
> +					  PAGE_SIZE * bm->n_pages,
> +					  buf->virt_addr, buf->dma_addr);
> +		} else {
> +			for (i = 0; i < bm->n_pages; i++) {
> +				buf = &bm->page_list[i];
> +				ClearPageReserved(virt_to_page(buf->virt_addr));

I think we need a NULL check here:

	if (!buf->virt_addr)
		continue;

>  				free_page((unsigned long)buf->virt_addr);
>  			}
>  		}
> @@ -57,7 +58,8 @@ static void __comedi_buf_free(struct comedi_device *dev,

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
