Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E313914AC0A
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Jan 2020 23:30:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC9F486566;
	Mon, 27 Jan 2020 22:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mJHN4lCCrA6h; Mon, 27 Jan 2020 22:30:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A894684FA4;
	Mon, 27 Jan 2020 22:30:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B78B81BF282
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 22:30:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B027D85044
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 22:30:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s1Ur7R+lPfr4 for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 22:30:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D0BE284FA4
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 22:30:49 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id s187so11383478qke.8
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 14:30:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/xn6Inxb6zuojs0iU7vTmsWoRmbZmQqG7zN5KkIu1iw=;
 b=RXYubqq5Vbt9/Yqh8rRc3gW77GBTJ9ktqMwX5BzBMFzzOT2bfEFFer+ZATdml4q/L8
 yeUOXdIXzpuY6tZZqtw3VnhfsjSheZCS0/Gla/Xdu7BNRdS4IpGlq4doJ5Bkrzt4xX6A
 szH+cb+WI7yNz8moAdV/Kr2o5h5MW7f9s8NyngUeHka78W+CdMlAM41W/l19UsOM96tl
 XdWQ0NvsVIuflJlp87Lsp8b5jFxwqtmUOaizejZb+TkDnH1G1uVVvhWbqDycJoI1H35g
 WyAdOfAKKVRFvXixsNa5QQkHdeIC085SjF1Ebd1YCifclqVFWwV3CSQkl/gYtzNQtvlJ
 ll/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/xn6Inxb6zuojs0iU7vTmsWoRmbZmQqG7zN5KkIu1iw=;
 b=DRXPESnubxXKOcBUbF3zl+FCjwtz3z0lJKMcA19K4GhvhJBqSxM52IfpzL+3yCaCYp
 DBy6eGvrwDSdzeV3UsZ1s7SflZY/rb4YFkUkJbWBQbEQaPKNQ/0lHYnwLP8MsN2aZzRt
 gWYRGEiUx65lPKJtWnz/pWamFx2wc7HOYDI6Up2YzXje90qahHQWP3j1GQvPgSj/ByMm
 dPpxJm67rZst/IgXCflTsF6vdiwgEMsk0ozDqZgSRVZC7b9pRTWCyuv5JnkmACMrRare
 YU+Xu5Jly92yRVWTiUhhUGHqnvkjfN8Z9FCVIjqaV9QkiJhhlwsdVHJjOefG02WM+RKk
 9FIw==
X-Gm-Message-State: APjAAAUGULGhrd4bVVVI6Km2q9jr8nz+b7cfVNg2NkA/2+w27Svr1bVC
 EDfvfyD3/NmwcV8gULKIT50Kk6yYG5UqQUI3+/H18A==
X-Google-Smtp-Source: APXvYqxCSQrirUnN+FZ82T0KdKjdeTod7OErds5KLF8UmezscEdKL2MJ9VbnHcnHl/RVaw2STHVzvy/g3A5rXPztxxQ=
X-Received: by 2002:a37:6794:: with SMTP id
 b142mr19240197qkc.216.1580164248519; 
 Mon, 27 Jan 2020 14:30:48 -0800 (PST)
MIME-Version: 1.0
References: <20200127210014.5207-1-tkjos@google.com>
In-Reply-To: <20200127210014.5207-1-tkjos@google.com>
From: Joel Fernandes <joelaf@google.com>
Date: Mon, 27 Jan 2020 14:30:36 -0800
Message-ID: <CAJWu+orT-A5HVi97ccKwMvs9MvXWV0MZhsKcZDNS8r-gqRmcDA@mail.gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Disallow ashmem memory from
 being remapped
To: Todd Kjos <tkjos@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 "Cc: Android Kernel" <kernel-team@android.com>, Jann Horn <jannh@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 Arve Hjonnevag <arve@android.com>, Martijn Coenen <maco@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Suren Baghdasaryan <surenb@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 27, 2020 at 1:00 PM 'Todd Kjos' via kernel-team
<kernel-team@android.com> wrote:
>
> From: Suren Baghdasaryan <surenb@google.com>
>
> When ashmem file is being mmapped the resulting vma->vm_file points to the
> backing shmem file with the generic fops that do not check ashmem
> permissions like fops of ashmem do. Fix that by disallowing mapping
> operation for backing shmem file.

Looks good, but I think the commit message is confusing. I had to read
the code a couple times to understand what's going on since there are
no links to a PoC for the security issue, in the commit message. I
think a better message could have been:

 When ashmem file is mmapped, the resulting vma->vm_file points to the
 backing shmem file with the generic fops that do not check ashmem
 permissions like fops of ashmem do. If an mremap is done on the ashmem
 region, then the permission checks will be skipped. Fix that by disallowing
 mapping operation on the backing shmem file.

Or did I miss something?

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
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 74d497d39c5a..c6695354b123 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -351,8 +351,23 @@ static inline vm_flags_t calc_vm_may_flags(unsigned long prot)
>                _calc_vm_trans(prot, PROT_EXEC,  VM_MAYEXEC);
>  }
>
> +static int ashmem_vmfile_mmap(struct file *file, struct vm_area_struct *vma)
> +{
> +       /* do not allow to mmap ashmem backing shmem file directly */
> +       return -EPERM;
> +}
> +
> +static unsigned long
> +ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
> +                               unsigned long len, unsigned long pgoff,
> +                               unsigned long flags)
> +{
> +       return current->mm->get_unmapped_area(file, addr, len, pgoff, flags);
> +}
> +
>  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>  {
> +       static struct file_operations vmfile_fops;
>         struct ashmem_area *asma = file->private_data;
>         int ret = 0;
>
> @@ -393,6 +408,19 @@ static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
>                 }
>                 vmfile->f_mode |= FMODE_LSEEK;
>                 asma->file = vmfile;
> +               /*
> +                * override mmap operation of the vmfile so that it can't be
> +                * remapped which would lead to creation of a new vma with no
> +                * asma permission checks. Have to override get_unmapped_area
> +                * as well to prevent VM_BUG_ON check for f_ops modification.
> +                */
> +               if (!vmfile_fops.mmap) {
> +                       vmfile_fops = *vmfile->f_op;
> +                       vmfile_fops.mmap = ashmem_vmfile_mmap;
> +                       vmfile_fops.get_unmapped_area =
> +                                       ashmem_vmfile_get_unmapped_area;
> +               }
> +               vmfile->f_op = &vmfile_fops;
>         }
>         get_file(asma->file);
>
> --
> 2.25.0.341.g760bfbb309-goog
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
