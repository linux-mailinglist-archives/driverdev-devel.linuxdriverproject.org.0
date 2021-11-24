Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1ABA45CE12
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 21:33:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BF2661BBA;
	Wed, 24 Nov 2021 20:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NCNNlS1Zh_Bu; Wed, 24 Nov 2021 20:33:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFCE0605F7;
	Wed, 24 Nov 2021 20:33:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 253C51BF616
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 20:33:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B87C80BE3
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 20:33:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nQ7B8pYnF_pQ for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 20:33:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com
 [IPv6:2a00:1450:4864:20::12e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 870AD80BC4
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 20:33:35 +0000 (UTC)
Received: by mail-lf1-x12e.google.com with SMTP id u3so10449121lfl.2
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 12:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MhL0kxFEHaqyOrBFQv6DgBdmfil+zC1/DunqGCWJ7dE=;
 b=SY2lZmurMNRui/CzWSIpvpB/CdU7GDeMvTgPGi+6Ke7C2Pe0BbvB0yiPdPmztPGk2r
 pgniHv+F2qw2vyIhbiSlLsazOIZo4vJhhO0fIXoz/fMSwoTMv5duRtcwcMGSleJg17Kj
 vCGObHN6NYXviM1PB7L/31ADMHmVaIH/3hkiTio6fmFW20p929rjmLf2cE9FLSppRVuS
 1nBYTHKuPemtuY4mb8WYV/GHQNcSzv2QY2aMxyOYGtVeNtD+X4aFmJnhUzYaLSzZ8Kom
 RVWHZGEVF58LOWiQACvqsMjQqrqfml7KzgyyB2xRervcod6K/hGRlJ+c8Sq/r0qIAo81
 ozsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MhL0kxFEHaqyOrBFQv6DgBdmfil+zC1/DunqGCWJ7dE=;
 b=MLxSsNMXfAZnF1PKWw/mrDrQGW5cLWcPAJyoJjijte7YEpku5tzlEQOyqVVBnEkxyc
 JLV4FWHHJlbzHwXTeW1cPOpMhYYxyvm/aJ3I/YvFh+4MzNCcGti7YH658BKh970dF2nK
 3nSI8/ykIopgddMIjSi4dSZP5hMy15dOPbRLsNZAmMEE7kMnMehULjeeMuvXJU4tCL+T
 WwvDb2sa8mpTTFaTukcNR+vQSxgj9Ky5qciD8YwCfuAfT1lX8MR4Ki7tOtoBlL28VrfU
 Og+MRIAfiqxoOZrpaGdf9LKrVMZxvr3TbKn/1Ws4kejmbVNTurZynSmfwDuXzEZVIbaZ
 ip+g==
X-Gm-Message-State: AOAM531Da1gMNl5SlBivrT7A9c3er9YMzyKImCcDOFDlSpsZQRx7eNjg
 N5vTllFlLwm4+qCfKnJp4/xd60Tw0oTal9X0pCt+hw==
X-Google-Smtp-Source: ABdhPJxdZ/m0KOr70Ixo3v80AyzJnc5BRnL3sqeuVTWa/4erFFMJvR3o1EjXxENGxfiVgRrJKdlFzWEtLAaEF/rsvsQ=
X-Received: by 2002:a05:6512:22c7:: with SMTP id
 g7mr18223275lfu.668.1637786013075; 
 Wed, 24 Nov 2021 12:33:33 -0800 (PST)
MIME-Version: 1.0
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-3-tkjos@google.com>
 <20211124123719.GG6514@kadam>
In-Reply-To: <20211124123719.GG6514@kadam>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 24 Nov 2021 12:33:20 -0800
Message-ID: <CAHRSSEzj10quNV6mK9QQezPRMyO49xNA14O4wCsx+eY_UkjQWQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] binder: read pre-translated fds from sender buffer
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@google.com,
 joel@joelfernandes.org, kernel-team@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 24, 2021 at 4:37 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Nov 23, 2021 at 11:17:36AM -0800, Todd Kjos wrote:
> > Since we are no longer going to copy the pre-fixup
> > data from the target buffer, we need to read
> > pre-translated FD array information from the source
> > buffer.
> >
>
> The commit message is really misleading.  From the commit message it
> sounds like the commit is changing runtime but it's not.  What I want is
> a commit message like this:
>
>   This patch is to prepare for an up coming patch where we read
>   pre-translated fds from the sender buffer and translate them before
>   copying them to the target.  It does not change run time.
>
>   The patch adds two new parameters to binder_translate_fd_array() to
>   hold the sender buffer and sender buffer parent.  These parameters let
>   us call copy_from_user() directly instead of using
>   binder_alloc_copy_from_buffer() which is a cleanup.  Also the patch
>   adds some new alignment checks.  Previously the alignment checks would
>   have been done in a different place, but this lets us print more
>   useful error messages.

Got it. Will fix in update.

>
>
> > Signed-off-by: Todd Kjos <tkjos@google.com>
> > ---
> >  drivers/android/binder.c | 40 +++++++++++++++++++++++++++++++++-------
> >  1 file changed, 33 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index 571d3c203557..2300fa8e09d5 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -2234,15 +2234,17 @@ static int binder_translate_fd(u32 fd, binder_size_t fd_offset,
> >  }
> >
> >  static int binder_translate_fd_array(struct binder_fd_array_object *fda,
> > +                                  const void __user *u,
>
> I wish we could use sender/target terminology everywhere.  Please change
> every place that has "u" or "user" to either "sender" or "target" as
> appropriate.

Ok (all "u/user" cases are sender).

>
> >                                    struct binder_buffer_object *parent,
> > +                                  struct binder_buffer_object *uparent,
>                                                                   ^
>
> >                                    struct binder_transaction *t,
> >                                    struct binder_thread *thread,
> >                                    struct binder_transaction *in_reply_to)
> >  {
> >       binder_size_t fdi, fd_buf_size;
> >       binder_size_t fda_offset;
> > +     const void __user *ufda_base;
>                            ^
>
> >       struct binder_proc *proc = thread->proc;
> > -     struct binder_proc *target_proc = t->to_proc;
> >
> >       fd_buf_size = sizeof(u32) * fda->num_fds;
> >       if (fda->num_fds >= SIZE_MAX / sizeof(u32)) {
> > @@ -2266,7 +2268,10 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
> >        */>    fda_offset = (parent->buffer - (uintptr_t)t->buffer->user_data) +
> >               fda->parent_offset;
> > -     if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32))) {
> > +     ufda_base = (void __user *)uparent->buffer + fda->parent_offset;
> > +
> > +     if (!IS_ALIGNED((unsigned long)fda_offset, sizeof(u32)) ||
> > +         !IS_ALIGNED((unsigned long)ufda_base, sizeof(u32))) {
> >               binder_user_error("%d:%d parent offset not aligned correctly.\n",
> >                                 proc->pid, thread->pid);
> >               return -EINVAL;
> > @@ -2275,10 +2280,9 @@ static int binder_translate_fd_array(struct binder_fd_array_object *fda,
> >               u32 fd;
> >               int ret;
> >               binder_size_t offset = fda_offset + fdi * sizeof(fd);
> > +             binder_size_t uoffset = fdi * sizeof(fd);
> >
> > -             ret = binder_alloc_copy_from_buffer(&target_proc->alloc,
> > -                                                 &fd, t->buffer,
> > -                                                 offset, sizeof(fd));
> > +             ret = copy_from_user(&fd, ufda_base + uoffset, sizeof(fd));
> >               if (!ret)
> >                       ret = binder_translate_fd(fd, offset, t, thread,
> >                                                 in_reply_to);
>
> This is something from the original code but if the copy_from_user()
> fails, then we just skip that "fd" without informing the user.

Here is the whole code fragment(the diff doesn't include the "if
(ret<0) return ret"):

  ret = copy_from_user(&fd, ufda_base + uoffset, sizeof(fd));
  if (!ret)
    ret = binder_translate_fd(fd, offset, t, thread, in_reply_to);
  if (ret < 0)
    return ret;

I agree -- if copy_from_user() for some reason doesn't copy the whole
buffer, it might return a positive integer. Then it would skip
binder_translate_fd(), but not return. That should probably be
something like:

  if (ret)
    return ret > 0 ? -EINVAL : ret;

Will fix in next version.

> It feels wrong.  Does that not lead to a bug in the target app?
>

If copy_from_user() returned a positive integer, we would translate
some random fd. Most likely it would be invalid, but it might not be.
Definitely would be a bug.

>
> > @@ -2951,6 +2955,8 @@ static void binder_transaction(struct binder_proc *proc,
> >               case BINDER_TYPE_FDA: {
> >                       struct binder_object ptr_object;
> >                       binder_size_t parent_offset;
> > +                     struct binder_object user_object;
> > +                     size_t user_parent_size;
> >                       struct binder_fd_array_object *fda =
> >                               to_binder_fd_array_object(hdr);
> >                       size_t num_valid = (buffer_offset - off_start_offset) /
> > @@ -2982,8 +2988,28 @@ static void binder_transaction(struct binder_proc *proc,
> >                               return_error_line = __LINE__;
> >                               goto err_bad_parent;
> >                       }
> > -                     ret = binder_translate_fd_array(fda, parent, t, thread,
> > -                                                     in_reply_to);
> > +
> > +                     /*
> > +                      * We need to read the user version of the parent
> > +                      * object to get the original user offset
> > +                      */
> > +                     user_parent_size =
> > +                             binder_get_object(proc, user_buffer, t->buffer,
> > +                                               parent_offset, &user_object);
> > +                     if (user_parent_size != sizeof(user_object.bbo)) {
> > +                             binder_user_error("%d:%d invalid ptr object size: %lld vs %lld\n",
>
> Apparently %lld breaks the build on my .config.  The correct format for
> size_t is %zd.
>
> > +                                               proc->pid, thread->pid,
> > +                                               user_parent_size,
> > +                                               sizeof(user_object.bbo));
> > +                             return_error = BR_FAILED_REPLY;
> > +                             return_error_param = -EINVAL;
> > +                             return_error_line = __LINE__;
> > +                             goto err_bad_parent;
> > +                     }
> > +                     ret = binder_translate_fd_array(fda, user_buffer,
> > +                                                     parent,
> > +                                                     &user_object.bbo, t,
> > +                                                     thread, in_reply_to);
>
> regards,
> dan carpenter
>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
