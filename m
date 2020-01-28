Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5D914AD30
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jan 2020 01:25:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC76287A6E;
	Tue, 28 Jan 2020 00:25:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iWPJ7oTvQpCW; Tue, 28 Jan 2020 00:25:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AFA00879F0;
	Tue, 28 Jan 2020 00:25:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 83C291BF228
 for <devel@linuxdriverproject.org>; Tue, 28 Jan 2020 00:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F5A620198
 for <devel@linuxdriverproject.org>; Tue, 28 Jan 2020 00:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jbnRg9tSrv8G for <devel@linuxdriverproject.org>;
 Tue, 28 Jan 2020 00:25:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com
 [209.85.216.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 920EC1FE65
 for <devel@driverdev.osuosl.org>; Tue, 28 Jan 2020 00:25:28 +0000 (UTC)
Received: by mail-pj1-f68.google.com with SMTP id a6so218595pjh.2
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 16:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=V+BSVtOjuS68/b2v0f7OT648Jg3O+3AV7imEPIWfZyw=;
 b=EUj614/He5DI6FobTl5392ZqO7A6CzV7kdXT1PuB3EGx3J+GPDqLfqgd7QXlznNm4L
 y68b4WVm1dxVr+tnmypR/Z01rMwkubTzy9Vx1vFZQafxAHSbcHtK7iIENoEBTbXwULWv
 mkg8C12/yJRbY/G32Fwa4JEd4z8MXuoel0JtM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=V+BSVtOjuS68/b2v0f7OT648Jg3O+3AV7imEPIWfZyw=;
 b=krQsuDrTpH9F1RryzbPhbOtR0b5thGazaqSjxtEb9+uF9BdVdlI1tmimo44YTbEly0
 leLIKmJ0GD5xUYs1W5/vE8z/FydzJ4lWayByQp6d8nVTLrMwn2Bnb0YhlDqBd4OpG5gQ
 FEPiFM9L3DNXfoTRTsBlJHftdcmRys4O2cy130514M0QYP8NQjq34+M1cY2e5+zig423
 vBpxmJqEDGtogIJJyS9RStGMv6OPmoGrHZEgiQ3Ki63c5/wtx4o5FF5dNJNiNTUr2m7W
 bvtpICnnTB4dr+5KMy8C4wdgcf7IwxfIYNQpIWVUCOtUTrvtgCu89GgaC3aO3RwAHuP9
 rjjw==
X-Gm-Message-State: APjAAAXm+TMR2vZpfNcJxFMoKEK4Fr/ugkjNToZNkhYuS71P71knxfz5
 +MiA9Z17zNSbOslIpVvrCpob7w==
X-Google-Smtp-Source: APXvYqxjSyhkagCwOGrSkkXQiY8CYWhpKHQ6EdsasKmr4x2185dIVpT5C1eC06D1ybeI/kMaN6i9Rw==
X-Received: by 2002:a17:902:7d8c:: with SMTP id
 a12mr19193277plm.47.1580171128071; 
 Mon, 27 Jan 2020 16:25:28 -0800 (PST)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id u20sm17009658pgf.29.2020.01.27.16.25.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 27 Jan 2020 16:25:27 -0800 (PST)
Date: Mon, 27 Jan 2020 19:25:26 -0500
From: Joel Fernandes <joel@joelfernandes.org>
To: Todd Kjos <tkjos@google.com>
Subject: Re: [PATCH v2] staging: android: ashmem: Disallow ashmem memory from
 being remapped
Message-ID: <20200128002526.GC175575@google.com>
References: <20200127235616.48920-1-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127235616.48920-1-tkjos@google.com>
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
Cc: devel@driverdev.osuosl.org, kernel-team@android.com,
 Jann Horn <jannh@google.com>, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, stable <stable@vger.kernel.org>,
 arve@android.com, maco@google.com, surenb@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 27, 2020 at 03:56:16PM -0800, Todd Kjos wrote:
> From: Suren Baghdasaryan <surenb@google.com>
> 
> When ashmem file is mmapped, the resulting vma->vm_file points to the
> backing shmem file with the generic fops that do not check ashmem
> permissions like fops of ashmem do. If an mremap is done on the ashmem
> region, then the permission checks will be skipped. Fix that by disallowing
> mapping operation on the backing shmem file.

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks!

 - Joel

> 
> Reported-by: Jann Horn <jannh@google.com>
> Signed-off-by: Suren Baghdasaryan <surenb@google.com>
> Cc: stable <stable@vger.kernel.org> # 4.4,4.9,4.14,4.18,5.4
> Signed-off-by: Todd Kjos <tkjos@google.com>
> ---
>  drivers/staging/android/ashmem.c | 28 ++++++++++++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> v2: update commit message as suggested by joelaf@google.com.
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 74d497d39c5a..c6695354b123 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -351,8 +351,23 @@ static inline vm_flags_t calc_vm_may_flags(unsigned long prot)
>  	       _calc_vm_trans(prot, PROT_EXEC,  VM_MAYEXEC);
>  }
>  
> +static int ashmem_vmfile_mmap(struct file *file, struct vm_area_struct *vma)
> +{
> +	/* do not allow to mmap ashmem backing shmem file directly */
> +	return -EPERM;
> +}
> +
> +static unsigned long
> +ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
> +				unsigned long len, unsigned long pgoff,
> +				unsigned long flags)
> +{
> +	return current->mm->get_unmapped_area(file, addr, len, pgoff, flags);
> +}
> +
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> +	static struct file_operations vmfile_fops;
>  	struct ashmem_area *asma = file->private_data;
>  	int ret = 0;
>  
> @@ -393,6 +408,19 @@ static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  		}
>  		vmfile->f_mode |= FMODE_LSEEK;
>  		asma->file = vmfile;
> +		/*
> +		 * override mmap operation of the vmfile so that it can't be
> +		 * remapped which would lead to creation of a new vma with no
> +		 * asma permission checks. Have to override get_unmapped_area
> +		 * as well to prevent VM_BUG_ON check for f_ops modification.
> +		 */
> +		if (!vmfile_fops.mmap) {
> +			vmfile_fops = *vmfile->f_op;
> +			vmfile_fops.mmap = ashmem_vmfile_mmap;
> +			vmfile_fops.get_unmapped_area =
> +					ashmem_vmfile_get_unmapped_area;
> +		}
> +		vmfile->f_op = &vmfile_fops;
>  	}
>  	get_file(asma->file);
>  
> -- 
> 2.25.0.341.g760bfbb309-goog
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
