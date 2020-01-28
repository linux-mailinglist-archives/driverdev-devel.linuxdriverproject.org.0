Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 261E114ACFE
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jan 2020 01:12:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 280FB84C1E;
	Tue, 28 Jan 2020 00:12:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mu4zRAmi5jp6; Tue, 28 Jan 2020 00:12:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4AB3481E3B;
	Tue, 28 Jan 2020 00:12:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 20DE41BF228
 for <devel@linuxdriverproject.org>; Tue, 28 Jan 2020 00:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 190CF85218
 for <devel@linuxdriverproject.org>; Tue, 28 Jan 2020 00:12:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hW0H1tDz6X4B for <devel@linuxdriverproject.org>;
 Tue, 28 Jan 2020 00:12:19 +0000 (UTC)
X-Greylist: delayed 00:06:15 by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EB1308507B
 for <devel@driverdev.osuosl.org>; Tue, 28 Jan 2020 00:12:18 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id j42so13884805wrj.12
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 16:12:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DjVrjeD3QJ+6PJ6qKZcWEoHjMRPEf3uOEfUKJ8JnHLI=;
 b=jgylNYI7FFPqPl0yj8XLVgEzfctkkIK1IgEcYRwwP0urotQmY6b1+D0B4p5fz50qyk
 pqvqBZhIvuAPBLybcLTvgXwi8xJK5DqnIYila8oWZlL1mnJsgr8/6IrHpJwjq/CUTrtb
 rEsc6LloiI6vjH+s/ob2yHadqW7/XTvB5ZFQe6GrVz4DZk9Lj0QKlTXTo8Y8ZItdmvol
 VLh9PoXSR4AH8n9sj6MMSvs1W+E3xvYrsJbk349ogXmvotRZ2OqsvrHJ4Vfv1yVJ91qL
 GtP3GvOO/lw4RKyew/krYJZO1hPtz/JvOG82GcMrBHJA8ikNNHFWC6lq6aTgdh/6le4/
 4m2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DjVrjeD3QJ+6PJ6qKZcWEoHjMRPEf3uOEfUKJ8JnHLI=;
 b=HYidhTUvpNi+aY4Y7zweC0TmvEwSgLK0G0OlS5iZYknM4+lfpwcGcy+BZX8cdoa4ia
 XSwsjmNzeAjrnC8j6MNZD5t1fMbsMi5738m39ohh/aByxalq2IhTxfG/ZlLRfV/sFFni
 oD+PcO++HueNhxQohi13zNOuxQXFoeBBfPtuVh6KOxJNtwlylL7FelWIned6+WLquMxh
 Sgu3O6oNAO/ixyfkHZ0LcalqZ9yfLV8Sem7a3VzfUUaSAvaSZNK4DgKzgwQ9nCgQQEOg
 2x12tfK43EyMGmsgYlDsBis7tebrMHftINEOZuPPc/BmZ11L6Mi+zv8Iq82jPaxDWmBW
 mjnw==
X-Gm-Message-State: APjAAAVFyt7KjD6TU7JnB5STh+fE23GegS8mZg77rohHsTU49Xe1YdSd
 EkMm/rhoF1YpI7a4kDKXLfatbk1qYZEI85tJo1Y3FoxQ
X-Google-Smtp-Source: APXvYqwxaQhqrgUqe/+ObXlT0KOHI2eBR504o0ZIi+HYSd8zO7ktcKNPRVp+Yvr8uwipS/G4h6OW7T0ou+wEi8SHI58=
X-Received: by 2002:adf:f508:: with SMTP id q8mr25440974wro.334.1580169961494; 
 Mon, 27 Jan 2020 16:06:01 -0800 (PST)
MIME-Version: 1.0
References: <20200127210014.5207-1-tkjos@google.com>
 <CAJWu+orT-A5HVi97ccKwMvs9MvXWV0MZhsKcZDNS8r-gqRmcDA@mail.gmail.com>
 <CAHRSSEw67bY9V7un_t1oV2dsfE72BCAtOj_OH4wyQLpuEAjUfg@mail.gmail.com>
In-Reply-To: <CAHRSSEw67bY9V7un_t1oV2dsfE72BCAtOj_OH4wyQLpuEAjUfg@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Mon, 27 Jan 2020 16:05:50 -0800
Message-ID: <CAJuCfpEYUsBt2iNixkOd9L0Wd4+0tNDquC3_fgRKtN63ZU=sjg@mail.gmail.com>
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
Cc: Joel Fernandes <joelaf@google.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Jann Horn <jannh@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 Arve Hjonnevag <arve@android.com>, Martijn Coenen <maco@google.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 "Cc: Android Kernel" <kernel-team@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Jan 27, 2020 at 3:57 PM 'Todd Kjos' via kernel-team
<kernel-team@android.com> wrote:
>
> On Mon, Jan 27, 2020 at 2:30 PM Joel Fernandes <joelaf@google.com> wrote:
> >
> > On Mon, Jan 27, 2020 at 1:00 PM 'Todd Kjos' via kernel-team
> > <kernel-team@android.com> wrote:
> > >
> > > From: Suren Baghdasaryan <surenb@google.com>
> > >
> > > When ashmem file is being mmapped the resulting vma->vm_file points to the
> > > backing shmem file with the generic fops that do not check ashmem
> > > permissions like fops of ashmem do. Fix that by disallowing mapping
> > > operation for backing shmem file.
> >
> > Looks good, but I think the commit message is confusing. I had to read
> > the code a couple times to understand what's going on since there are
> > no links to a PoC for the security issue, in the commit message. I
> > think a better message could have been:
> >
> >  When ashmem file is mmapped, the resulting vma->vm_file points to the
> >  backing shmem file with the generic fops that do not check ashmem
> >  permissions like fops of ashmem do. If an mremap is done on the ashmem
> >  region, then the permission checks will be skipped. Fix that by disallowing
> >  mapping operation on the backing shmem file.
>
> Sent v2 with the suggested change.

Sorry for the delay. The suggestion makes sense to me. Thanks!

>
> >
> > Or did I miss something?
> >
> > thanks!
> >
> > - Joel
> >
> >
> >
> > >
> > > Reported-by: Jann Horn <jannh@google.com>
> > > Signed-off-by: Suren Baghdasaryan <surenb@google.com>
> > > Cc: stable <stable@vger.kernel.org> # 4.4,4.9,4.14,4.18,5.4
> > > Signed-off-by: Todd Kjos <tkjos@google.com>
> > > ---
> > >  drivers/staging/android/ashmem.c | 28 ++++++++++++++++++++++++++++
> > >  1 file changed, 28 insertions(+)
> > >
> > > diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> > > index 74d497d39c5a..c6695354b123 100644
> > > --- a/drivers/staging/android/ashmem.c
> > > +++ b/drivers/staging/android/ashmem.c
> > > @@ -351,8 +351,23 @@ static inline vm_flags_t calc_vm_may_flags(unsigned long prot)
> > >                _calc_vm_trans(prot, PROT_EXEC,  VM_MAYEXEC);
> > >  }
> > >
> > > +static int ashmem_vmfile_mmap(struct file *file, struct vm_area_struct *vma)
> > > +{
> > > +       /* do not allow to mmap ashmem backing shmem file directly */
> > > +       return -EPERM;
> > > +}
> > > +
> > > +static unsigned long
> > > +ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
> > > +                               unsigned long len, unsigned long pgoff,
> > > +                               unsigned long flags)
> > > +{
> > > +       return current->mm->get_unmapped_area(file, addr, len, pgoff, flags);
> > > +}
> > > +
> > >  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
> > >  {
> > > +       static struct file_operations vmfile_fops;
> > >         struct ashmem_area *asma = file->private_data;
> > >         int ret = 0;
> > >
> > > @@ -393,6 +408,19 @@ static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
> > >                 }
> > >                 vmfile->f_mode |= FMODE_LSEEK;
> > >                 asma->file = vmfile;
> > > +               /*
> > > +                * override mmap operation of the vmfile so that it can't be
> > > +                * remapped which would lead to creation of a new vma with no
> > > +                * asma permission checks. Have to override get_unmapped_area
> > > +                * as well to prevent VM_BUG_ON check for f_ops modification.
> > > +                */
> > > +               if (!vmfile_fops.mmap) {
> > > +                       vmfile_fops = *vmfile->f_op;
> > > +                       vmfile_fops.mmap = ashmem_vmfile_mmap;
> > > +                       vmfile_fops.get_unmapped_area =
> > > +                                       ashmem_vmfile_get_unmapped_area;
> > > +               }
> > > +               vmfile->f_op = &vmfile_fops;
> > >         }
> > >         get_file(asma->file);
> > >
> > > --
> > > 2.25.0.341.g760bfbb309-goog
> > >
> > > --
> > > To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
> > >
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
