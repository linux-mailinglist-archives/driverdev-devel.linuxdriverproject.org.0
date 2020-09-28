Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2423627A9AF
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 10:38:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5E5BA80A04;
	Mon, 28 Sep 2020 08:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id unGnnBUkX7FZ; Mon, 28 Sep 2020 08:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E4F71861E7;
	Mon, 28 Sep 2020 08:38:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 91E421BF32D
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 08:38:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8E839855DF
 for <devel@linuxdriverproject.org>; Mon, 28 Sep 2020 08:38:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tK8HhkSIO8Kd for <devel@linuxdriverproject.org>;
 Mon, 28 Sep 2020 08:38:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E7177855BE
 for <devel@driverdev.osuosl.org>; Mon, 28 Sep 2020 08:38:11 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08S8JYpT015484;
 Mon, 28 Sep 2020 08:38:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=86/iAUwFUu6lOEyflhOEnZLL8higwmAC2EE9++l0PVs=;
 b=t9PUQ9JS0qrUTDFQO3Ahtr5MaXHDD1Y7wIHgUjbq4d0DiLySattUltHT0I0G48psEYIa
 0CvdzVKsrjHaiAeqLfR9afCmje5iPgF7v/ncqC4Q/+F9lUTqf+EoX82Jv+F7sBLF5ntx
 +7S+E1hHCGSciQXD7tcTnoFspqad29t3Q9vUeOexc559Zm7zwuUfBiw75YixkmOJhGOx
 fGf/ZQkZQQwpzOLaMpM0LrLRyDYwdUpTBGlSnb/NsyefeKw4e3Xa7JZh3KpVmYmyCyXi
 BUaJmWZZI02HHvnpbFx6PPvj4aDpoJxjO/eyJGaW2aJs4gg2vKDtVsB8FGdgQ8AEVNNx Mg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by aserp2120.oracle.com with ESMTP id 33swkkkqp1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 28 Sep 2020 08:38:10 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08S8Lexm185767;
 Mon, 28 Sep 2020 08:38:10 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 33tfjumrvc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 28 Sep 2020 08:38:09 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08S8c6Er003257;
 Mon, 28 Sep 2020 08:38:06 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 28 Sep 2020 01:38:05 -0700
Date: Mon, 28 Sep 2020 11:37:57 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Souptick Joarder <jrdr.linux@gmail.com>
Subject: Re: [PATCH] media: atomisp: Fixed error handling path
Message-ID: <20200928083757.GA18329@kadam>
References: <1601219284-13275-1-git-send-email-jrdr.linux@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1601219284-13275-1-git-send-email-jrdr.linux@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9757
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 spamscore=0 mlxscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 suspectscore=2
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009280071
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9757
 signatures=668680
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0
 mlxscore=0 phishscore=0
 suspectscore=2 mlxlogscore=999 clxscore=1011 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2009280071
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
Cc: devel@driverdev.osuosl.org, walken@google.com, gregkh@linuxfoundation.org,
 gustavoars@kernel.org, daniel.m.jordan@oracle.com,
 sakari.ailus@linux.intel.com, John Hubbard <jhubbard@nvidia.com>,
 akpm@linux-foundation.org, mchehab@kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Sep 27, 2020 at 08:38:04PM +0530, Souptick Joarder wrote:
> Inside alloc_user_pages() based on flag value either pin_user_pages()
> or get_user_pages_fast() will be called. However, these API might fail.
> 
> But free_user_pages() called in error handling path doesn't bother
> about return value and will try to unpin bo->pgnr pages, which is
> incorrect.
> 
> Fix this by passing the page_nr to free_user_pages(). If page_nr > 0
> pages will be unpinned based on bo->mem_type. This will also take care
> of non error handling path.
> 
> Fixes: 14a638ab96c5 ("media: atomisp: use pin_user_pages() for memory
> allocation")
> Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>
> Cc: John Hubbard <jhubbard@nvidia.com>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/staging/media/atomisp/pci/hmm/hmm_bo.c | 13 ++++++++-----
>  1 file changed, 8 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> index f13af23..0168f98 100644
> --- a/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> +++ b/drivers/staging/media/atomisp/pci/hmm/hmm_bo.c
> @@ -857,16 +857,17 @@ static void free_private_pages(struct hmm_buffer_object *bo,
>  	kfree(bo->page_obj);
>  }
>  
> -static void free_user_pages(struct hmm_buffer_object *bo)
> +static void free_user_pages(struct hmm_buffer_object *bo,
> +			    unsigned int page_nr)
>  {
>  	int i;
>  
>  	hmm_mem_stat.usr_size -= bo->pgnr;
                              ^^^^^^^^^^^
This is still a problem.  It needs to be hmm_mem_stat.usr_size -= page_nr.

regards,
dan carpenter

>  
>  	if (bo->mem_type == HMM_BO_MEM_TYPE_PFN) {
> -		unpin_user_pages(bo->pages, bo->pgnr);
> +		unpin_user_pages(bo->pages, page_nr);
>  	} else {
> -		for (i = 0; i < bo->pgnr; i++)
> +		for (i = 0; i < page_nr; i++)
>  			put_page(bo->pages[i]);
>  	}
>  	kfree(bo->pages);

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
