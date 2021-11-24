Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BD54E45CE35
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 21:40:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DFB3340929;
	Wed, 24 Nov 2021 20:40:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id phkGD73ZEVOn; Wed, 24 Nov 2021 20:40:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 976B6402F0;
	Wed, 24 Nov 2021 20:40:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D9841BF4E2
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 20:40:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D525819C8
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 20:40:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=google.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EfuSna9qzp0k for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 20:39:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com
 [IPv6:2a00:1450:4864:20::12c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 736F381985
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 20:39:59 +0000 (UTC)
Received: by mail-lf1-x12c.google.com with SMTP id u3so10487857lfl.2
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 12:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=g5VSIqo187ofnG6oLTBIpD4H2Ww6hZPMwkppZyEmnx4=;
 b=PESpG4LoJzAR9EvE5Dqxk58ExAN5Ngc11Ri7JLjBo+nhWqnIW4ABrPvIzUUCCkiJQd
 jRik3dQlaqjHoELfFEclCQOi/ofOWlyLOXgvutkm4k25bSNpTElaU3XiEtQYX8WYYZAn
 a9+0vJfMFapz6tXc3xEQ+/IljoWax39s1YGfNstOlgnWX1qNaIi9zU1YxUs0NCJkWmse
 qAqozGs+4UIrvg9DWFhGEEFHTqDl4b49jdUdgz3tnVvEbs4HIbQAOohuRm7AQoQh8AjS
 yGsrqhvPKBrDiG/lt1TBfoXCx5u9gmM2i3UpNTzFOJviLqFdaor4pxeGbPLKRjzirC7O
 /fdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=g5VSIqo187ofnG6oLTBIpD4H2Ww6hZPMwkppZyEmnx4=;
 b=lzpA5+fkbT5aKJxiuru3ckS4TfFUehG52A8kL5bKZjkOt6DZSar04C7Jv0nkYBY0Ac
 bZ4t5Y2u5kEkU7j8+hEAEsKA0Ml50BuT/+O2+8IsrIeTSD/tYWH/oX9XK/8Zw90D+Nhl
 EEamhS0QkvfZSRtIV/WuSxTwEUn4VqhBHs2oVOFPjut9wuqjp16H+OQ9gJfE4Po0GFDJ
 CEartvb2IIPg1m6aR2/SgjB/gZB+cb4pLt+JIo60UJPupG4sMn18mALQuIHLLoOBF53S
 L6FbetwOX//4MYErOqwDUb+kIUaLJNzEoB586EXts0q3gaKbQO2W4f6yo07ifOVV6M+5
 526w==
X-Gm-Message-State: AOAM531hL5UrCsfOtt/HKlCD/r/NzruFK63rIV8WXDK/RWeYUtZBzDrg
 3NCkDVRFHCwSAUn3+cxcwH8JutcVjLnBdLVWSDrb8g==
X-Google-Smtp-Source: ABdhPJztquOdJSyB66C4CiTz44OHKSboHYCy4PfJZYVeI8vJOG4d0f7b4WEw5nmBC+Lzmfq7tCx+RO7zvJZ7d75kypw=
X-Received: by 2002:a19:7709:: with SMTP id s9mr18452579lfc.682.1637786397187; 
 Wed, 24 Nov 2021 12:39:57 -0800 (PST)
MIME-Version: 1.0
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-4-tkjos@google.com>
 <20211124110949.GF6514@kadam>
In-Reply-To: <20211124110949.GF6514@kadam>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 24 Nov 2021 12:39:44 -0800
Message-ID: <CAHRSSEzPXwho9OBhbMFbizTgkJkFUvaQQbqN2RmK_KF8cXhofQ@mail.gmail.com>
Subject: Re: [PATCH 3/3] binder: defer copies of pre-patched txn data
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

On Wed, Nov 24, 2021 at 3:10 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Nov 23, 2021 at 11:17:37AM -0800, Todd Kjos wrote:
> > +/**
> > + * binder_do_deferred_txn_copies() - copy and fixup scatter-gather data
> > + * @alloc:   binder_alloc associated with @buffer
> > + * @buffer:  binder buffer in target process
> > + * @sgc_head:        list_head of scatter-gather copy list
> > + * @pf_head: list_head of pointer fixup list
> > + *
> > + * Processes all elements of @sgc_head, applying fixups from @pf_head
> > + * and copying the scatter-gather data from the source process' user
> > + * buffer to the target's buffer. It is expected that the list creation
> > + * and processing all occurs during binder_transaction() so these lists
> > + * are only accessed in local context.
> > + *
> > + * Return: 0=success, else -errno
>       ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> This function is supposed to return negatives on error.
>
> > + */
> > +static int binder_do_deferred_txn_copies(struct binder_alloc *alloc,
> > +                                      struct binder_buffer *buffer,
> > +                                      struct list_head *sgc_head,
> > +                                      struct list_head *pf_head)
> > +{
> > +     int ret = 0;
> > +     struct list_head *entry, *tmp;
> > +     struct binder_ptr_fixup *pf =
> > +             list_first_entry_or_null(pf_head, struct binder_ptr_fixup,
> > +                                      node);
> > +
> > +     list_for_each_safe(entry, tmp, sgc_head) {
> > +             size_t bytes_copied = 0;
> > +             struct binder_sg_copy *sgc =
> > +                     container_of(entry, struct binder_sg_copy, node);
> > +
> > +             while (bytes_copied < sgc->length) {
> > +                     size_t copy_size;
> > +                     size_t bytes_left = sgc->length - bytes_copied;
> > +                     size_t offset = sgc->offset + bytes_copied;
> > +
> > +                     /*
> > +                      * We copy up to the fixup (pointed to by pf)
> > +                      */
> > +                     copy_size = pf ? min(bytes_left, (size_t)pf->offset - offset)
> > +                                    : bytes_left;
> > +                     if (!ret && copy_size)
> > +                             ret = binder_alloc_copy_user_to_buffer(
>                                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> "ret" is the number of bytes remaining to be copied.

Good catch. Thanks. Will fix.

>
>
> > +                                             alloc, buffer,
> > +                                             offset,
> > +                                             sgc->uaddr + bytes_copied,
> > +                                             copy_size);
> > +                     bytes_copied += copy_size;
> > +                     if (copy_size != bytes_left) {
> > +                             BUG_ON(!pf);
> > +                             /* we stopped at a fixup offset */
> > +                             if (pf->skip_size) {
> > +                                     /*
> > +                                      * we are just skipping. This is for
> > +                                      * BINDER_TYPE_FDA where the translated
> > +                                      * fds will be fixed up when we get
> > +                                      * to target context.
> > +                                      */
> > +                                     bytes_copied += pf->skip_size;
> > +                             } else {
> > +                                     /* apply the fixup indicated by pf */
> > +                                     if (!ret)
> > +                                             ret = binder_alloc_copy_to_buffer(
> > +                                                     alloc, buffer,
> > +                                                     pf->offset,
> > +                                                     &pf->fixup_data,
> > +                                                     sizeof(pf->fixup_data));
> > +                                     bytes_copied += sizeof(pf->fixup_data);
> > +                             }
> > +                             list_del(&pf->node);
> > +                             kfree(pf);
> > +                             pf = list_first_entry_or_null(pf_head,
> > +                                             struct binder_ptr_fixup, node);
> > +                     }
> > +             }
> > +             list_del(&sgc->node);
> > +             kfree(sgc);
> > +     }
> > +     BUG_ON(!list_empty(pf_head));
> > +     BUG_ON(!list_empty(sgc_head));
> > +
> > +     return ret;
> > +}
> > +
> > +/**
> > + * binder_cleanup_deferred_txn_lists() - free specified lists
> > + * @sgc_head:        list_head of scatter-gather copy list
> > + * @pf_head: list_head of pointer fixup list
> > + *
> > + * Called to clean up @sgc_head and @pf_head if there is an
> > + * error.
> > + */
> > +static void binder_cleanup_deferred_txn_lists(struct list_head *sgc_head,
> > +                                           struct list_head *pf_head)
> > +{
> > +     struct list_head *entry, *tmp;
> > +
> > +     list_for_each_safe(entry, tmp, sgc_head) {
> > +             struct binder_sg_copy *sgc =
> > +                     container_of(entry, struct binder_sg_copy, node);
> > +             list_del(&sgc->node);
> > +             kfree(sgc);
> > +     }
> > +     list_for_each_safe(entry, tmp, pf_head) {
> > +             struct binder_ptr_fixup *pf =
> > +                     container_of(entry, struct binder_ptr_fixup, node);
> > +             list_del(&pf->node);
> > +             kfree(pf);
> > +     }
> > +}
> > +
> > +/**
> > + * binder_defer_copy() - queue a scatter-gather buffer for copy
> > + * @sgc_head:        list_head of scatter-gather copy list
> > + * @offset:  binder buffer offset in target process
> > + * @uaddr:   user address in source process
> > + * @length:  bytes to copy
> > + *
> > + * Specify a scatter-gather block to be copied. The actual copy must
> > + * be deferred until all the needed fixups are identified and queued.
> > + * Then the copy and fixups are done together so un-translated values
> > + * from the source are never visible in the target buffer.
> > + *
> > + * We are guaranteed that repeated calls to this function will have
> > + * monotonically increasing @offset values so the list will naturally
> > + * be ordered.
> > + *
> > + * Return: 0=success, else -errno
> > + */
> > +static int binder_defer_copy(struct list_head *sgc_head, binder_size_t offset,
> > +                          const void __user *uaddr, size_t length)
> > +{
> > +     struct binder_sg_copy *bc = kzalloc(sizeof(*bc), GFP_KERNEL);
> > +
> > +     if (!bc)
> > +             return -ENOMEM;
> > +
> > +     bc->offset = offset;
> > +     bc->uaddr = uaddr;
> > +     bc->length = length;
> > +     INIT_LIST_HEAD(&bc->node);
> > +
> > +     /*
> > +      * We are guaranteed that the deferred copies are in-order
> > +      * so just add to the tail.
> > +      */
> > +     list_add_tail(&bc->node, sgc_head);
> > +
> > +     return 0;
> > +}
> > +
> > +/**
> > + * binder_add_fixup() - queue a fixup to be applied to sg copy
> > + * @pf_head: list_head of binder ptr fixup list
> > + * @offset:  binder buffer offset in target process
> > + * @fixup:   bytes to be copied for fixup
> > + * @skip_size:       bytes to skip when copying (fixup will be applied later)
> > + *
> > + * Add the specified fixup to a list ordered by @offset. When copying
> > + * the scatter-gather buffers, the fixup will be copied instead of
> > + * data from the source buffer. For BINDER_TYPE_FDA fixups, the fixup
> > + * will be applied later (in target process context), so we just skip
> > + * the bytes specified by @skip_size. If @skip_size is 0, we copy the
> > + * value in @fixup.
> > + *
> > + * This function is called *mostly* in @offset order, but there are
> > + * exceptions. Since out-of-order inserts are relatively uncommon,
> > + * we insert the new element by searching backward from the tail of
> > + * the list.
> > + *
> > + * Return: 0=success, else -errno
> > + */
> > +static int binder_add_fixup(struct list_head *pf_head, binder_size_t offset,
> > +                         binder_uintptr_t fixup, size_t skip_size)
> > +{
> > +     struct binder_ptr_fixup *pf = kzalloc(sizeof(*pf), GFP_KERNEL);
> > +     struct list_head *tmp;
> > +
> > +     if (!pf)
> > +             return -ENOMEM;
> > +
> > +     pf->offset = offset;
> > +     pf->fixup_data = fixup;
> > +     pf->skip_size = skip_size;
> > +     INIT_LIST_HEAD(&pf->node);
> > +
> > +     /* Fixups are *mostly* added in-order, but there are some
> > +      * exceptions. Look backwards through list for insertion point.
> > +      */
> > +     if (!list_empty(pf_head)) {
>
> This condition is not required.  If list is empty we add it to the tail,
> but when there is only one item on the list, the first and last item are
> going to be the same.

Good point.

>
> > +             list_for_each_prev(tmp, pf_head) {
> > +                     struct binder_ptr_fixup *tmppf =
> > +                             list_entry(tmp, struct binder_ptr_fixup, node);
> > +
> > +                     if (tmppf->offset < pf->offset) {
> > +                             list_add(&pf->node, tmp);
> > +                             return 0;
> > +                     }
> > +             }
> > +             /*
> > +              * if we get here, then the new offset is the lowest so
> > +              * insert at the head
> > +              */
> > +             list_add(&pf->node, pf_head);
> > +             return 0;
> > +     }
> > +     list_add_tail(&pf->node, pf_head);
> > +     return 0;
> > +}
> > +
>
> regards,
> dan carpenter

Dan, Thanks for the detailed review on all 3 patches.

>
> --
> To unsubscribe from this group and stop receiving emails from it, send an email to kernel-team+unsubscribe@android.com.
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
