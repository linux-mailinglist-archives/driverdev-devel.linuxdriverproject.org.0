Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 166735B9719
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Sep 2022 11:12:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5DC778346C;
	Thu, 15 Sep 2022 09:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DC778346C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BtdzFbR4cA5t; Thu, 15 Sep 2022 09:12:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1457C83486;
	Thu, 15 Sep 2022 09:12:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1457C83486
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DE2A81BF3C3
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 09:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B70B9400D7
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 09:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B70B9400D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vtA6x8Ipyh_W for <devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 09:12:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FE89400BC
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4FE89400BC
 for <devel@driverdev.osuosl.org>; Thu, 15 Sep 2022 09:12:30 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 30B1362227;
 Thu, 15 Sep 2022 09:12:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39B64C433D7;
 Thu, 15 Sep 2022 09:12:28 +0000 (UTC)
Date: Thu, 15 Sep 2022 11:12:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jonathan Bergh <bergh.jonathan@gmail.com>
Subject: Re: [PATCH] Staging: Android: ashmem.c: Fixed missing const modifier
Message-ID: <YyLsllPVvPYGMPVJ@kroah.com>
References: <20220915085827.19701-1-bergh.jonathan@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220915085827.19701-1-bergh.jonathan@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=linuxfoundation.org; 
 s=korg; t=1663233148;
 bh=R/7gzoZyZtcDcz0ChQ8ZQqu10K6dtueUhIX1ohc1BkM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ra0KTlto5YC6BGB7CsBHd8sDcafZ1dMbXsuz+g7epQMzrQ3WTaz+61BE1u3FsGtxu
 OUlcbcbOmB7rJB1exEoLXMr99iLWBlt0KiW1+nDbwfgIcZcQeFlGeQqPkP1mi2gFS5
 pHy7nQ/U4Ik5gCXmJPmjjqbsxt4myzeoZIk0NMn8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
 header.i=@linuxfoundation.org header.a=rsa-sha256 header.s=korg
 header.b=ra0KTlto
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 15, 2022 at 08:58:27PM +1200, Jonathan Bergh wrote:
> Fixed missing const modifier line 370
> 
> Signed-off-by: Jonathan Bergh <bergh.jonathan@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index c05a214191da..a04488efd5f2 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -367,7 +367,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	static struct const file_operations vmfile_fops;
>  	struct ashmem_area *asma = file->private_data;
>  	int ret = 0;
>  
> -- 
> 2.34.1
> 

Always test-build your patches before sending them out so you don't get
grumpy emails from maintainers asking you to test-build your patches
before sending them out.

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
