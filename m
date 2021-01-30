Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 496D63094FB
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Jan 2021 12:50:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1156F204DD;
	Sat, 30 Jan 2021 11:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AbyDv2-kDmwM; Sat, 30 Jan 2021 11:50:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 42FF8204CC;
	Sat, 30 Jan 2021 11:50:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 574F51BF3C3
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 11:50:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5278786B67
 for <devel@linuxdriverproject.org>; Sat, 30 Jan 2021 11:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7mX8Sqk5tmT5 for <devel@linuxdriverproject.org>;
 Sat, 30 Jan 2021 11:50:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E0D5F86979
 for <devel@driverdev.osuosl.org>; Sat, 30 Jan 2021 11:50:21 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id EA26C60235;
 Sat, 30 Jan 2021 11:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1612007421;
 bh=FQPxWcFhh/A8I+cRdiPqm9YyczE+POdzVmbng+oRo2E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z0rRX/F96zqBM8IPF8slBfrDDmRJ9a76TzOPPEkHF+gnTY8l/fJfkKaD7B/uD1okr
 FRu21pGWbWCn0XK+YOPGYc47h9JkkeqyveBKllpltEfyJqGms74scyX3GLPBya3OSJ
 wehNIa1hMHAfFtp/MaTkvs81p2CTQbx5KBYwpbiI=
Date: Sat, 30 Jan 2021 12:50:18 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Ahana Datta <ahana.datta.ravenclaw@gmail.com>
Subject: Re: [PATCH] staging: android: ashmen.c: fixed a coding style issue
 with struct
Message-ID: <YBVH+hInjEDZjK0r@kroah.com>
References: <20210130110630.11612-1-ahana.datta.ravenclaw@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210130110630.11612-1-ahana.datta.ravenclaw@gmail.com>
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Jan 30, 2021 at 04:36:30PM +0530, Ahana Datta wrote:
> Fixed warning "struct file_operations should normally be const"
> 
> Signed-off-by: Ahana Datta <ahana.datta.ravenclaw@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index d66a64e42273..e675b7850044 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -376,7 +376,7 @@ ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
>  
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> -	static struct file_operations vmfile_fops;
> +	const struct file_operations vmfile_fops;
>  	struct ashmem_area *asma = file->private_data;
>  	int ret = 0;
>  
> -- 
> 2.25.1

Please always test-build your changes before sending them out.  To not
do so is a bit rude, don't you think?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
