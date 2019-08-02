Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5F77EBA3
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Aug 2019 06:53:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D58FC88427;
	Fri,  2 Aug 2019 04:53:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id btz4W-mrTmHK; Fri,  2 Aug 2019 04:53:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E29F2882E0;
	Fri,  2 Aug 2019 04:53:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 98F961BF36D
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 04:53:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 945E6882E0
 for <devel@linuxdriverproject.org>; Fri,  2 Aug 2019 04:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ghBmaWZ4DYKF for <devel@linuxdriverproject.org>;
 Fri,  2 Aug 2019 04:53:50 +0000 (UTC)
X-Greylist: delayed 00:16:54 by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2C3EE8823A
 for <devel@driverdev.osuosl.org>; Fri,  2 Aug 2019 04:53:50 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 56E85AD2B;
 Fri,  2 Aug 2019 04:36:53 +0000 (UTC)
Subject: Re: [PATCH 20/34] xen: convert put_page() to put_user_page*()
To: john.hubbard@gmail.com, Andrew Morton <akpm@linux-foundation.org>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
 <20190802022005.5117-21-jhubbard@nvidia.com>
From: Juergen Gross <jgross@suse.com>
Message-ID: <4471e9dc-a315-42c1-0c3c-55ba4eeeb106@suse.com>
Date: Fri, 2 Aug 2019 06:36:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190802022005.5117-21-jhubbard@nvidia.com>
Content-Language: de-DE
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, ceph-devel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 02.08.19 04:19, john.hubbard@gmail.com wrote:
> From: John Hubbard <jhubbard@nvidia.com>
> 
> For pages that were retained via get_user_pages*(), release those pages
> via the new put_user_page*() routines, instead of via put_page() or
> release_pages().
> 
> This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
> ("mm: introduce put_user_page*(), placeholder versions").
> 
> Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
> Cc: Juergen Gross <jgross@suse.com>
> Cc: xen-devel@lists.xenproject.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---
>   drivers/xen/gntdev.c  | 5 +----
>   drivers/xen/privcmd.c | 7 +------
>   2 files changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/xen/gntdev.c b/drivers/xen/gntdev.c
> index 4c339c7e66e5..2586b3df2bb6 100644
> --- a/drivers/xen/gntdev.c
> +++ b/drivers/xen/gntdev.c
> @@ -864,10 +864,7 @@ static int gntdev_get_page(struct gntdev_copy_batch *batch, void __user *virt,
>   
>   static void gntdev_put_pages(struct gntdev_copy_batch *batch)
>   {
> -	unsigned int i;
> -
> -	for (i = 0; i < batch->nr_pages; i++)
> -		put_page(batch->pages[i]);
> +	put_user_pages(batch->pages, batch->nr_pages);
>   	batch->nr_pages = 0;
>   }
>   
> diff --git a/drivers/xen/privcmd.c b/drivers/xen/privcmd.c
> index 2f5ce7230a43..29e461dbee2d 100644
> --- a/drivers/xen/privcmd.c
> +++ b/drivers/xen/privcmd.c
> @@ -611,15 +611,10 @@ static int lock_pages(
>   
>   static void unlock_pages(struct page *pages[], unsigned int nr_pages)
>   {
> -	unsigned int i;
> -
>   	if (!pages)
>   		return;
>   
> -	for (i = 0; i < nr_pages; i++) {
> -		if (pages[i])
> -			put_page(pages[i]);
> -	}
> +	put_user_pages(pages, nr_pages);

You are not handling the case where pages[i] is NULL here. Or am I
missing a pending patch to put_user_pages() here?


Juergen
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
