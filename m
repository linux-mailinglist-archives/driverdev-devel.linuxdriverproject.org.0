Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBFF2814D6
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Oct 2020 16:18:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9DA6086761;
	Fri,  2 Oct 2020 14:18:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cKc5vo11asHH; Fri,  2 Oct 2020 14:18:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49F6D86769;
	Fri,  2 Oct 2020 14:18:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 73D511BF311
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 14:18:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6DCB28671E
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 14:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZmYI5nWQx-NF for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 14:18:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 520AD86702
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 14:18:26 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id r24so1331736ljm.3
 for <devel@driverdev.osuosl.org>; Fri, 02 Oct 2020 07:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9VY0TMtB+PD4w/PGkD87eIO8STO152a3NwOONKkybCM=;
 b=qJQr3HmkHEjADvfTKNAcIYH8k+akWcXqV+6KzxTEK2bCiheruq4Rw9TNf3mF8WYtJQ
 +U3OCcpRtajXYsQs8yfeZTSJzpfrElCPcbld77Sa/rYdvFpdEizNLog1MAUK9xU9yFCU
 1jvxRPRIYOqdk+O2v6l6pPPvT5ogmugFIZ+irnK5xB+9GUwhq6xa9T7joESHDyM+CfU2
 Zg3JuCTEOGd39/rhwOD3QQLXkSLyvHN8z7SuLALdFkGHaaVn+5pjVGJfl75iUfjC6n7v
 i155KwVC2LgqYFpyyrOs73Uyuatf+iei3eeXvAtqEmFfbScInFdVsl0z4Gb+DDgE4W8o
 dL9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9VY0TMtB+PD4w/PGkD87eIO8STO152a3NwOONKkybCM=;
 b=rqyoc8gqvtCQFQmiL1mrivui9VieWdFK1mg7Eyio/S3FeuxEJNArJhv++4elQfPUj3
 SjuNQpXl9m1poohenacbQ+vY6+OHieOm4LGNEyh94lsgJ0ImIMUb8/7vi8iLbN1qLCOZ
 jgh1rx3HprWZ0Xeybkssm2O7QrT1/ZpqKDH14zaBf/zulY40KAXKNoECf+Zvb/9PRvNH
 udTVmeKmak+Yc1zA2akvT2hzRYf7ek6OsOcDZJAVXfQJQnl+XmxHN8nwlfCNasBl2C3H
 EoRU0FQ8fualqcyMfDpF0uTSvblYff5SC2cVL7WqhHdJEUENw7kq1iO8EN2lcI3kaRzZ
 shSQ==
X-Gm-Message-State: AOAM533CM+VG2dRPgnX+//of6f9VNaiLNvJUM05LsL1GRxPKiDKqqdJ8
 tl9vfVkLespM4NcEXBKRDF4Xf4RBbjc06eFEJLVgiw==
X-Google-Smtp-Source: ABdhPJxX9wXPVoxSi+AWpJZz2rsxaqiwG3xuJey+WWpKf6G1qA2bQDh6qFajWcVqDArLv9R+2erfPqaxuSje6w2UlYA=
X-Received: by 2002:a2e:6f17:: with SMTP id k23mr845455ljc.245.1601648304227; 
 Fri, 02 Oct 2020 07:18:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200927123538.GA292831@kroah.com>
 <20200929015216.1829946-1-liushixin2@huawei.com>
In-Reply-To: <20200929015216.1829946-1-liushixin2@huawei.com>
From: Martijn Coenen <maco@android.com>
Date: Fri, 2 Oct 2020 16:18:13 +0200
Message-ID: <CAB0TPYFb__cy5w88ySWY3AGEKXJLhVTQKCdp2PFomoek06VJnQ@mail.gmail.com>
Subject: Re: [PATCH v3 -next] binder: simplify the return expression of
 binder_mmap
To: Liu Shixin <liushixin2@huawei.com>
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
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Hridya Valsaraju <hridya@google.com>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks!

On Tue, Sep 29, 2020 at 3:30 AM Liu Shixin <liushixin2@huawei.com> wrote:
>
> Simplify the return expression.
>
> Signed-off-by: Liu Shixin <liushixin2@huawei.com>

Acked-by: Martijn Coenen <maco@android.com>

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
> -       int ret;
>         struct binder_proc *proc = filp->private_data;
> -       const char *failure_string;
>
>         if (proc->tsk != current->group_leader)
>                 return -EINVAL;
> @@ -5194,9 +5192,9 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
>                      (unsigned long)pgprot_val(vma->vm_page_prot));
>
>         if (vma->vm_flags & FORBIDDEN_MMAP_FLAGS) {
> -               ret = -EPERM;
> -               failure_string = "bad vm_flags";
> -               goto err_bad_arg;
> +               pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
> +                      proc->pid, vma->vm_start, vma->vm_end, "bad vm_flags", -EPERM);
> +               return -EPERM;
>         }
>         vma->vm_flags |= VM_DONTCOPY | VM_MIXEDMAP;
>         vma->vm_flags &= ~VM_MAYWRITE;
> @@ -5204,15 +5202,7 @@ static int binder_mmap(struct file *filp, struct vm_area_struct *vma)
>         vma->vm_ops = &binder_vm_ops;
>         vma->vm_private_data = proc;
>
> -       ret = binder_alloc_mmap_handler(&proc->alloc, vma);
> -       if (ret)
> -               return ret;
> -       return 0;
> -
> -err_bad_arg:
> -       pr_err("%s: %d %lx-%lx %s failed %d\n", __func__,
> -              proc->pid, vma->vm_start, vma->vm_end, failure_string, ret);
> -       return ret;
> +       return binder_alloc_mmap_handler(&proc->alloc, vma);
>  }
>
>  static int binder_open(struct inode *nodp, struct file *filp)
> --
> 2.25.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
