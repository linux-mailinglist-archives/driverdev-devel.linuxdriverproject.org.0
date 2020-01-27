Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9170214ACD5
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jan 2020 00:57:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 879D584B65;
	Mon, 27 Jan 2020 23:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VJOlN0yzzDev; Mon, 27 Jan 2020 23:57:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E276484553;
	Mon, 27 Jan 2020 23:57:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 49CAD1BF34E
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 23:57:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 42C0985039
 for <devel@linuxdriverproject.org>; Mon, 27 Jan 2020 23:57:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kbiRCM51l6Eh for <devel@linuxdriverproject.org>;
 Mon, 27 Jan 2020 23:57:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1E2DF8435A
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 23:57:13 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id o11so12830070ljc.6
 for <devel@driverdev.osuosl.org>; Mon, 27 Jan 2020 15:57:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0tgiIZ3Qy1g9mNO7VRbl57vkOmLmNl7iZKQGkzRYrdY=;
 b=kdrZc7JQdd3Ggq/Hn/zq9hgC+X0FhC/P5hlSrMkLTkSdpOcGrtCGVQf5XicHAnInu8
 P+1oMCYekCRgpwG/4iTw0rKaU6jwcINYhrFjqSyRP1eeAGz2vika79y/Gl4iZWvp/otp
 Bcrf+KF8odbP74f3I/t+wc85LJc9RX50rS3mqA5L7ag+xcZE5SVyHnWYTP7WBHgfBiy+
 LrXOaAET92DhkOI/p4miVRx5sue1RxAQjlN/dZtGN/pNjL52m7XhTm0tZQkMPw5kom6T
 INoNOjuO33HbCyNozU4S24NHyFGdMHaeRqXPesfXHxBg6kgsEUeaRrZX0xKmnU9O7atN
 aS1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0tgiIZ3Qy1g9mNO7VRbl57vkOmLmNl7iZKQGkzRYrdY=;
 b=uciGnVg2TQqrAA8qrHFvKmqxzM6H+OAcyNW/MMSi5F/mAlQt2GCZ2tam4/ibYMvL/+
 j5OTxeNPjTOxKYSzyXWg5bG2WjZyLx5hGSOQXurTTfIqrXADk4iGlJKQkxQh0YcwoYvb
 9rslfd2Fuu/bYj7dJHhJSJM9FoA4xtMwgftMPTc6YvTVXaRfsdSSPsFTqBFJpTA3bS3X
 rzZ+LvaguoQoM8vY3hyxiT2LP/lypwv7MjFIhEq8hfQinPmDxT6AZvN7eT5Xc0xFo3KZ
 SVkfNsKbhOwDGmIsAN0BVcO31o3Hrct0HxHIPjGl9ygRTGgAwgkwX1sdpi1CEHT7VK9O
 hehg==
X-Gm-Message-State: APjAAAUxpfWczrlJjnSlnk2kXhyIH8U+bwdUD7LMQzpwtg3cI8pb5OQi
 rR1FAb6NI5a2gs0AGtgOj9zGkycAhjqhgwe5Groqeg==
X-Google-Smtp-Source: APXvYqxpYQubOtvkyRXFQ0ff36F9KwyoM8OjErnQTImtzrOLGjTqJl8scX7mGePq5NWrxrYKaq0IYVFgTtLsC2DDvjE=
X-Received: by 2002:a2e:9a51:: with SMTP id k17mr10876576ljj.206.1580169430817; 
 Mon, 27 Jan 2020 15:57:10 -0800 (PST)
MIME-Version: 1.0
References: <20200127210014.5207-1-tkjos@google.com>
 <CAJWu+orT-A5HVi97ccKwMvs9MvXWV0MZhsKcZDNS8r-gqRmcDA@mail.gmail.com>
In-Reply-To: <CAJWu+orT-A5HVi97ccKwMvs9MvXWV0MZhsKcZDNS8r-gqRmcDA@mail.gmail.com>
From: Todd Kjos <tkjos@google.com>
Date: Mon, 27 Jan 2020 15:56:59 -0800
Message-ID: <CAHRSSEw67bY9V7un_t1oV2dsfE72BCAtOj_OH4wyQLpuEAjUfg@mail.gmail.com>
Subject: Re: [PATCH] staging: android: ashmem: Disallow ashmem memory from
 being remapped
To: Joel Fernandes <joelaf@google.com>
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

On Mon, Jan 27, 2020 at 2:30 PM Joel Fernandes <joelaf@google.com> wrote:
>
> On Mon, Jan 27, 2020 at 1:00 PM 'Todd Kjos' via kernel-team
> <kernel-team@android.com> wrote:
> >
> > From: Suren Baghdasaryan <surenb@google.com>
> >
> > When ashmem file is being mmapped the resulting vma->vm_file points to the
> > backing shmem file with the generic fops that do not check ashmem
> > permissions like fops of ashmem do. Fix that by disallowing mapping
> > operation for backing shmem file.
>
> Looks good, but I think the commit message is confusing. I had to read
> the code a couple times to understand what's going on since there are
> no links to a PoC for the security issue, in the commit message. I
> think a better message could have been:
>
>  When ashmem file is mmapped, the resulting vma->vm_file points to the
>  backing shmem file with the generic fops that do not check ashmem
>  permissions like fops of ashmem do. If an mremap is done on the ashmem
>  region, then the permission checks will be skipped. Fix that by disallowing
>  mapping operation on the backing shmem file.

Sent v2 with the suggested change.

>
> Or did I miss something?
>
> thanks!
>
> - Joel
>
>
>
> >
> > Reported-by: Jann Horn <jannh@google.com>
> > Signed-off-by: Suren Baghdasaryan <surenb@google.com>
> > Cc: stable <stable@vger.kernel.org> # 4.4,4.9,4.14,4.18,5.4
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > ---
> >  drivers/staging/android/ashmem.c | 28 ++++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> > index 74d497d39c5a..c6695354b123 100644
> > --- a/drivers/staging/android/ashmem.c
> > +++ b/drivers/staging/android/ashmem.c
> > @@ -351,8 +351,23 @@ static inline vm_flags_t calc_vm_may_flags(unsigned long prot)
> >                _calc_vm_trans(prot, PROT_EXEC,  VM_MAYEXEC);
> >  }
> >
> > +static int ashmem_vmfile_mmap(struct file *file, struct vm_area_struct *vma)
> > +{
> > +       /* do not allow to mmap ashmem backing shmem file directly */
> > +       return -EPERM;
> > +}
> > +
> > +static unsigned long
> > +ashmem_vmfile_get_unmapped_area(struct file *file, unsigned long addr,
> > +                               unsigned long len, unsigned long pgoff,
> > +                               unsigned long flags)
> > +{
> > +       return current->mm->get_unmapped_area(file, addr, len, pgoff, flags);
> > +}
> > +
> >  static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
> >  {
> > +       static struct file_operations vmfile_fops;
> >         struct ashmem_area *asma = file->private_data;
> >         int ret = 0;
> >
> > @@ -393,6 +408,19 @@ static int ashmem_mmap(struct file *file, struct vm_area_struct *vma)
> >                 }
> >                 vmfile->f_mode |= FMODE_LSEEK;
> >                 asma->file = vmfile;
> > +               /*
> > +                * override mmap operation of the vmfile so that it can't be
> > +                * remapped which would lead to creation of a new vma with no
> > +                * asma permission checks. Have to override get_unmapped_area
> > +                * as well to prevent VM_BUG_ON check for f_ops modification.
> > +                */
> > +               if (!vmfile_fops.mmap) {
> > +                       vmfile_fops = *vmfile->f_op;
> > +                       vmfile_fops.mmap = ashmem_vmfile_mmap;
> > +                       vmfile_fops.get_unmapped_area =
> > +                                       ashmem_vmfile_get_unmapped_area;
> > +               }
> > +               vmfile->f_op = &vmfile_fops;
> >         }
> >         get_file(asma->file);
> >
> > --
> > 2.25.0.341.g760bfbb309-goog
> >
> > --
> > To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
