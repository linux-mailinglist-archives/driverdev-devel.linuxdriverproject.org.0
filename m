Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0FE281471
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Oct 2020 15:48:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 91FBD8671E;
	Fri,  2 Oct 2020 13:48:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bOvx3EKaXxdK; Fri,  2 Oct 2020 13:48:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 78AF7866C4;
	Fri,  2 Oct 2020 13:48:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CBB381BF2E3
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 13:48:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BCD1F2751C
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 13:48:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SNs8o9aztfhS for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 13:48:08 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B2C76274ED
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 13:48:08 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC501206DB;
 Fri,  2 Oct 2020 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601646488;
 bh=On3C6AfBq5WmH6YaiAH/EGrBVGtl6dZcNpQ/eG3ByxI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dJd81BsySM3V/uiUgereBBHUniSuHI6LNzwiRtqQvVwFhVvvvmQI7PbhFu//68h8J
 KoWhasogTnpsuiJuRC523JF1soNGRrR1oZyMkcOJB8dR+xqeiIGYeUaVp9nW//AHGf
 jC52MwoE8uH6tmzC2otG80LzL5HHEc68nlRYMAwI=
Date: Fri, 2 Oct 2020 15:48:07 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Liu Shixin <liushixin2@huawei.com>
Subject: Re: [PATCH v3 -next] binder: simplify the return expression of
 binder_mmap
Message-ID: <20201002134807.GA3427371@kroah.com>
References: <20200927123538.GA292831@kroah.com>
 <20200929015216.1829946-1-liushixin2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929015216.1829946-1-liushixin2@huawei.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 Joel Fernandes <joel@joelfernandes.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Sep 29, 2020 at 09:52:16AM +0800, Liu Shixin wrote:
> Simplify the return expression.
> 
> Signed-off-by: Liu Shixin <liushixin2@huawei.com>
> ---
> v3: Add the change description.
> v2: Get rid of the "ret" and "failure string" variables.
> v1: Simplify the return expression.
> ---
>  drivers/android/binder.c | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 37a505c41dec..49c0700816a5 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -5180,9 +5180,7 @@ static const struct vm_operations_struct binder_vm_ops = {
>  
>  static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
>  {
> -	int ret;
>  	struct binder_proc *proc = filp->private_data;
> -	const char *failure_string;
>  
>  	if (proc->tsk != current->group_leader)
>  		return -EINVAL;
> @@ -5194,9 +5192,9 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
>  		     (unsigned long)pgprot_val(vma->vm_page_prot));
>  
>  	if (vma->vm_flags & FORBIDDEN_MMAP_FLAGS) {
> -		ret = -EPERM;
> -		failure_string = "bad vm_flags";
> -		goto err_bad_arg;
> +		pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
> +		       proc->pid, vma->vm_start, vma->vm_end, "bad vm_flags", -EPERM);
> +		return -EPERM;
>  	}
>  	vma->vm_flags |= VM_DONTCOPY | VM_MIXEDMAP;
>  	vma->vm_flags &= ~VM_MAYWRITE;
> @@ -5204,15 +5202,7 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
>  	vma->vm_ops = &binder_vm_ops;
>  	vma->vm_private_data = proc;
>  
> -	ret = binder_alloc_mmap_handler(&proc->alloc, vma);
> -	if (ret)
> -		return ret;
> -	return 0;
> -
> -err_bad_arg:
> -	pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
> -	       proc->pid, vma->vm_start, vma->vm_end, failure_string, ret);
> -	return ret;
> +	return binder_alloc_mmap_handler(&proc->alloc, vma);
>  }
>  
>  static int binder_open(struct inode *nodp, struct file *filp)
> -- 
> 2.25.1

Todd and other Binder maintainers, what do you think of this?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
