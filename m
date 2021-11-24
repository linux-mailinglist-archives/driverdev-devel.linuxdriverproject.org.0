Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 560A345CDAF
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Nov 2021 21:11:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9208F40922;
	Wed, 24 Nov 2021 20:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Earz4kFbZsP0; Wed, 24 Nov 2021 20:11:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1B6A140915;
	Wed, 24 Nov 2021 20:11:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C6841BF616
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 20:11:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9889240915
 for <devel@linuxdriverproject.org>; Wed, 24 Nov 2021 20:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xNAqgh2SVk19 for <devel@linuxdriverproject.org>;
 Wed, 24 Nov 2021 20:11:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E2FCC402BE
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 20:11:43 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id k37so10327850lfv.3
 for <devel@driverdev.osuosl.org>; Wed, 24 Nov 2021 12:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=p7+nz+d0O2KsjI45EJDPKEH22C4YsE6p71ZBSyN6O34=;
 b=qE8Z007HokAZKK5WJ3/ggWkoeHTPrnv53wPZA4dOawT7uYth8b4e2Jbbi/eLD+JYAW
 8J9yDisDSo9RsSbBenbFP180nKbmZU3mOUW3/ITqiKtJScJ/F7qJ5m14o7hj/rlomqD1
 DuwBjcUUX0j0Fy0ZZ9qgZXghV3MKmLVmeXUcq+ofPjMRYma2bKVeMkFb5Aehf7cdeOmY
 MHr1Vi8a3IJwGB4aJ+4yhRTb0Sm/Hoy51XLvHscmwtgocX2MIKIm/27umFtC26RuLLEs
 wLwyILx3Oy+iP2LjDqYzrFjbE4g2/Hr50Pi5AZvTOlJhokRqgBqca3BYdFCOvkMcYAFp
 WQpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=p7+nz+d0O2KsjI45EJDPKEH22C4YsE6p71ZBSyN6O34=;
 b=pwpxEsu2qqOn+Z6adMb/MRPWzTmxJPmbLuO7DFDHBeCOWfnTFUTAQC1dZ3h/jwX92j
 45OFET4Ybnvag9gz6ciRKupIAbvV26hss5sOLjCgyheCVezbTvUzyM5tLW22Ek4qvQvT
 aX2dzGecgtLh0rDo4xeMxCh9UYO+ci/vNDtZOlCK7YkK1QJMzlzpQkbHVOaqHiMJw13e
 kUhtj1J4ev3J6/ft0D2vkfSoMIo6fHH4XgjOYFs2oh6Yj6xOUq95c6DL+cZj4NiANezP
 JPuCgd1xCkv0Jw/zJPiQKBHGsXDH/51fneJfdTqa+yErHkvDAv1wfrIJZwQJov4CQxWG
 tS/g==
X-Gm-Message-State: AOAM532oJHGCJ45qksgb2MFMcgo6ldwofBw269MrPSiXXJ7+b9iP3USr
 6iKOC3Q5xfeA+dd85k+wyTxJe1fT14g0/25qyxw9KA==
X-Google-Smtp-Source: ABdhPJzpcVU/KymiI6k3iLbMjLX31V/8O0TsCpf1d6Lsp75R7AlqzB55CN7UWmmrxpEXx+e27qWr5uwUHh7JKO1vEl8=
X-Received: by 2002:a19:7417:: with SMTP id v23mr18329865lfe.19.1637784701487; 
 Wed, 24 Nov 2021 12:11:41 -0800 (PST)
MIME-Version: 1.0
References: <20211123191737.1296541-1-tkjos@google.com>
 <20211123191737.1296541-2-tkjos@google.com>
 <20211124130104.GI6514@kadam>
In-Reply-To: <20211124130104.GI6514@kadam>
From: Todd Kjos <tkjos@google.com>
Date: Wed, 24 Nov 2021 12:11:29 -0800
Message-ID: <CAHRSSEzKbKuuoUi1DkH6e7mbUSawt0Zi591TsiYBt1b9j69CFQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] binder: avoid potential data leakage when copying txn
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

On Wed, Nov 24, 2021 at 5:01 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Tue, Nov 23, 2021 at 11:17:35AM -0800, Todd Kjos wrote:
> > Transactions are copied from the sender to the target
> > first and objects like BINDER_TYPE_PTR and BINDER_TYPE_FDA
> > are then fixed up. This means there is a short period where
> > the sender's version of these objects are visible to the
> > target prior to the fixups.
> >
> > Instead of copying all of the data first, copy data only
> > after any needed fixups have been applied.
> >
>
> This patch needs a fixes tag.

Sure, it goes back to the original submission, so I'll add:

Fixes: 457b9a6f09f0 ("Staging: android: add binder driver")

>
> So this patch basically fixes the simple part of the info leak and
> patch 3 fixes the complicated part.  Have I understood that correctly?

Yes.

>
> > @@ -2956,7 +2984,11 @@ static void binder_transaction(struct binder_proc *proc,
> >                       }
> >                       ret = binder_translate_fd_array(fda, parent, t, thread,
> >                                                       in_reply_to);
> > -                     if (ret < 0) {
> > +                     if (ret < 0 ||
> > +                         binder_alloc_copy_to_buffer(&target_proc->alloc,
> > +                                                     t->buffer,
> > +                                                     object_offset,
> > +                                                     fda, sizeof(*fda))) {
> >                               return_error = BR_FAILED_REPLY;
> >                               return_error_param = ret;
>
> "ret" is not a negative error code if binder_translate_fd_array()
> succeeds but binder_alloc_copy_to_buffer() fails.

You are right. return_error_param would be 0 in this case. Will
capture the return of binder_alloc_copy_to_buffer(). Thanks.

>
>
> >                               return_error_line = __LINE__;
> > @@ -3028,6 +3060,19 @@ static void binder_transaction(struct binder_proc *proc,
> >                       goto err_bad_object_type;
> >               }
> >       }
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
