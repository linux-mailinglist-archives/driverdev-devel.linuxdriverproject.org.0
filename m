Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 009E4A1E9A
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 17:13:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D158C25B92;
	Thu, 29 Aug 2019 15:13:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bjrjhjrpc2dY; Thu, 29 Aug 2019 15:13:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 146E520499;
	Thu, 29 Aug 2019 15:13:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DB6071BF487
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:13:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D81162582B
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 15:13:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q2ZF9WhHe+HC for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 15:13:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 7E32D20499
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 15:13:27 +0000 (UTC)
Received: from 162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 ([162.237.133.238] helo=elm)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <tyhicks@canonical.com>)
 id 1i3M71-0001ey-7k; Thu, 29 Aug 2019 15:13:23 +0000
Date: Thu, 29 Aug 2019 10:13:20 -0500
From: Tyler Hicks <tyhicks@canonical.com>
To: Sasha Levin <sashal@kernel.org>
Subject: Re: [PATCH AUTOSEL 4.19 11/29] binder: take read mode of mmap_sem in
 binder_alloc_free_page()
Message-ID: <20190829151320.GC27650@elm>
References: <20190829105009.2265-1-sashal@kernel.org>
 <20190829105009.2265-11-sashal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829105009.2265-11-sashal@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 Todd Kjos <tkjos@android.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello, Sasha!

On 2019-08-29 06:49:51, Sasha Levin wrote:
> From: Tyler Hicks <tyhicks@canonical.com>
> 
> [ Upstream commit 60d4885710836595192c42d3e04b27551d30ec91 ]
> 
> Restore the behavior of locking mmap_sem for reading in
> binder_alloc_free_page(), as was first done in commit 3013bf62b67a
> ("binder: reduce mmap_sem write-side lock"). That change was
> inadvertently reverted by commit 5cec2d2e5839 ("binder: fix race between
> munmap() and direct reclaim").
> 
> In addition, change the name of the label for the error path to
> accurately reflect that we're taking the lock for reading.
> 
> Backporting note: This fix is only needed when *both* of the commits
> mentioned above are applied. That's an unlikely situation since they
> both landed during the development of v5.1 but only one of them is
> targeted for stable.

This patch isn't meant to be applied to 4.19 since commit 3013bf62b67a
("binder: reduce mmap_sem write-side lock") was never brought back to
4.19.

Tyler

> 
> Fixes: 5cec2d2e5839 ("binder: fix race between munmap() and direct reclaim")
> Signed-off-by: Tyler Hicks <tyhicks@canonical.com>
> Acked-by: Todd Kjos <tkjos@android.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
>  drivers/android/binder_alloc.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
> index a654ccfd1a222..21dc20c52cd4d 100644
> --- a/drivers/android/binder_alloc.c
> +++ b/drivers/android/binder_alloc.c
> @@ -962,8 +962,8 @@ enum lru_status binder_alloc_free_page(struct list_head *item,
>  	mm = alloc->vma_vm_mm;
>  	if (!mmget_not_zero(mm))
>  		goto err_mmget;
> -	if (!down_write_trylock(&mm->mmap_sem))
> -		goto err_down_write_mmap_sem_failed;
> +	if (!down_read_trylock(&mm->mmap_sem))
> +		goto err_down_read_mmap_sem_failed;
>  	vma = binder_alloc_get_vma(alloc);
>  
>  	list_lru_isolate(lru, item);
> @@ -978,7 +978,7 @@ enum lru_status binder_alloc_free_page(struct list_head *item,
>  
>  		trace_binder_unmap_user_end(alloc, index);
>  	}
> -	up_write(&mm->mmap_sem);
> +	up_read(&mm->mmap_sem);
>  	mmput(mm);
>  
>  	trace_binder_unmap_kernel_start(alloc, index);
> @@ -993,7 +993,7 @@ enum lru_status binder_alloc_free_page(struct list_head *item,
>  	mutex_unlock(&alloc->mutex);
>  	return LRU_REMOVED_RETRY;
>  
> -err_down_write_mmap_sem_failed:
> +err_down_read_mmap_sem_failed:
>  	mmput_async(mm);
>  err_mmget:
>  err_page_already_freed:
> -- 
> 2.20.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
