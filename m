Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1AAD11FD
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 17:02:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 21C268790A;
	Wed,  9 Oct 2019 15:02:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0BVWD-YmpOYO; Wed,  9 Oct 2019 15:02:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 88FF7878F1;
	Wed,  9 Oct 2019 15:02:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFF421BF423
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:02:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ACEB5878F0
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id InAQTJn9-6Hy for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 15:02:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A507C878DB
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 15:02:20 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id u40so3821647qth.11
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 08:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=aOgn8mw5G0zCorohTbiBhErE9Htr2eH0PTcfAgZzeCI=;
 b=VstX66QSqpiEh6mLaTLvPTUKIxieH1clx0lHan9qg0sh7wSLa9o1SAHAsDn45Y1LEX
 VnvHVqpzptArvIVOzmNnYmTvkQoS8/kmuZZoq6M0C8NPelxANZI7SXzH1WJ+NCXymblC
 8P4YVNu/EppaFy48zVDd4SMI+oGovUArNlnRM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=aOgn8mw5G0zCorohTbiBhErE9Htr2eH0PTcfAgZzeCI=;
 b=d6aEy3qLrBFYuSGvRSAOr/YA59o9exiVra7n4rg3wgKf7RsfYVyeOzOhQzENYl2ObZ
 bwLzJvaKZ4XNg9mAZQ2lMj5Z2I6hYBZaojIJa8DRGBAx7z1DIkBG+kUMbjeAYzZherEa
 FRIuaT8O/f2pFY2httEFJ5p8+nu8LXtyMFcd04Tso7aRLiWbiyKHkYpxYkNjZK929f2R
 GFUjBSQSzQcBv7aAtgO2eLCxHk1aWJnYdG/xj/39H31GccKDQtjuzbiMoDD8oX5cA3Sa
 +cphh8msQmY01SQ4t7g76BIO2sDHs5F+qd2OFYCglN+FyIK9gDAfoHpSlyqSEny3+yMv
 w2VQ==
X-Gm-Message-State: APjAAAX96rR0OjZ+5IR51ynDr/vB4lvVqoGVbOjwr7Bh+CgCcRuw/3ru
 YMKTxS94FGK78J48iebx+48E3b9TCwY=
X-Google-Smtp-Source: APXvYqxG4MfEe0DJOggwz01Le1Ib2Ew4XpzR9Ciw+7fCKsEz4kX7uyIeV9AIXk2h68uhE2I+UsKqfg==
X-Received: by 2002:a63:287:: with SMTP id 129mr4814068pgc.190.1570632960950; 
 Wed, 09 Oct 2019 07:56:00 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id v9sm2866264pfe.1.2019.10.09.07.55.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 07:56:00 -0700 (PDT)
Date: Wed, 9 Oct 2019 10:55:58 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
Message-ID: <20191009145558.GA96813@google.com>
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
 <20191008180516.GB143258@google.com>
 <20191009104011.rzfdvq7otkkj533m@wittgenstein>
 <20191009142129.GD143258@google.com>
 <20191009142910.ggerxqxkft2ifhdn@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009142910.ggerxqxkft2ifhdn@wittgenstein>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>, jannh@google.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 Hridya Valsaraju <hridya@google.com>, maco@android.com, christian@brauner.io,
 tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Oct 09, 2019 at 04:29:11PM +0200, Christian Brauner wrote:
> On Wed, Oct 09, 2019 at 10:21:29AM -0400, Joel Fernandes wrote:
> > On Wed, Oct 09, 2019 at 12:40:12PM +0200, Christian Brauner wrote:
> > > On Tue, Oct 08, 2019 at 02:05:16PM -0400, Joel Fernandes wrote:
> > > > On Tue, Oct 08, 2019 at 03:01:59PM +0200, Christian Brauner wrote:
> > > > > When a binder transaction is initiated on a binder device coming from a
> > > > > binderfs instance, a pointer to the name of the binder device is stashed
> > > > > in the binder_transaction_log_entry's context_name member. Later on it
> > > > > is used to print the name in print_binder_transaction_log_entry(). By
> > > > > the time print_binder_transaction_log_entry() accesses context_name
> > > > > binderfs_evict_inode() might have already freed the associated memory
> > > > > thereby causing a UAF. Do the simple thing and prevent this by copying
> > > > > the name of the binder device instead of stashing a pointer to it.
> > > > > 
> > > > > Reported-by: Jann Horn <jannh@google.com>
> > > > > Fixes: 03e2e07e3814 ("binder: Make transaction_log available in binderfs")
> > > > > Link: https://lore.kernel.org/r/CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com
> > > > > Cc: Joel Fernandes <joel@joelfernandes.org>
> > > > > Cc: Todd Kjos <tkjos@android.com>
> > > > > Cc: Hridya Valsaraju <hridya@google.com>
> > > > > Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> > > > > ---
> > > > >  drivers/android/binder.c          | 4 +++-
> > > > >  drivers/android/binder_internal.h | 2 +-
> > > > >  2 files changed, 4 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > > > index c0a491277aca..5b9ac2122e89 100644
> > > > > --- a/drivers/android/binder.c
> > > > > +++ b/drivers/android/binder.c
> > > > > @@ -57,6 +57,7 @@
> > > > >  #include <linux/sched/signal.h>
> > > > >  #include <linux/sched/mm.h>
> > > > >  #include <linux/seq_file.h>
> > > > > +#include <linux/string.h>
> > > > >  #include <linux/uaccess.h>
> > > > >  #include <linux/pid_namespace.h>
> > > > >  #include <linux/security.h>
> > > > > @@ -66,6 +67,7 @@
> > > > >  #include <linux/task_work.h>
> > > > >  
> > > > >  #include <uapi/linux/android/binder.h>
> > > > > +#include <uapi/linux/android/binderfs.h>
> > > > >  
> > > > >  #include <asm/cacheflush.h>
> > > > >  
> > > > > @@ -2876,7 +2878,7 @@ static void binder_transaction(struct binder_proc *proc,
> > > > >  	e->target_handle = tr->target.handle;
> > > > >  	e->data_size = tr->data_size;
> > > > >  	e->offsets_size = tr->offsets_size;
> > > > > -	e->context_name = proc->context->name;
> > > > > +	strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NAME);
> > > > 
> > > > Strictly speaking, proc-context->name can also be initialized for !BINDERFS
> > > > so the BINDERFS in the MAX_NAME macro is misleading. So probably there should
> > > > be a BINDER_MAX_NAME (and associated checks for whether non BINDERFS names
> > > > fit within the MAX.
> > > 
> > > I know but I don't think it's worth special-casing non-binderfs devices.
> > > First, non-binderfs devices can only be created through a KCONFIG option
> > > determined at compile time. For stock Android the names are the same for
> > > all vendors afaik.
> > 
> > I am just talking about the name of weirdly named macro here.
> 
> You might miss context here: It's named that way because currently only
> binderfs binder devices are bound to that limit. That's a point I made
> further below in my previous mail. Non-binderfs devices are not subject
> to that restriction and when we tried to make them subject to the same
> it as rejected.

I know that. I am saying the memcpy is happening for regular binder devices
as well but the macro has BINDERFS in the name. That's all. It is not a
significant eye sore. But is a bit odd.

> <snip>
> 
> > 
> > > Fifth, I already tried to push for validation of non-binderfs binder
> > > devices a while back when I wrote binderfs and was told that it's not
> > > needed. Hrydia tried the same and we decided the same thing. So you get
> > > to be the next person to send a patch. :)
> > 
> > I don't follow why we are talking about non-binderfs validation. I am just
> 
> Because above you said
> 
> > > > so the BINDERFS in the MAX_NAME macro is misleading. So probably there should
> > > > be a BINDER_MAX_NAME (and associated checks for whether non BINDERFS names
> > > > fit within the MAX.
> 
> which to me reads like you want generic checks for _all_ binder devices
> not just for the ones from binderfs.

No I am not talking about the checks at all, I am talking about the unwanted
mem copy you are doing for regular binder devices now. Before binderfs this
would not have happened, but now for regular binder devices we have to do the
extra mem copies which were avoided before. That was what I was talking about.

But this discussing is getting to bike shedding at this point, and since the
overhead is likely small, I am Ok with the change (though I don't like very
much the additional memcpy and the associated space wastage in the
transaction buffer for regular binder devices).

thanks!

 - Joel

> 
> (Btw, I didn't read your comments as pointing it out the patch is buggy.
> I mostly wanted to provide context why we ended up with the
> binderfs-specific restriction. Maybe the list sounded like a complaint
> but it wasn't meant to. :))
> 
> Thanks!
> Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
