Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D678D1114
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 16:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C3F6A86E1D;
	Wed,  9 Oct 2019 14:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X5hI4xSE4V-S; Wed,  9 Oct 2019 14:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 981A68625C;
	Wed,  9 Oct 2019 14:21:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A02CD1BF423
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9A44E23026
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 14:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fWaEZIkXcUGm for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 14:21:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 72B9B20764
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 14:21:32 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q7so1720598pfh.8
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 07:21:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DmUxhazUy7VP9f4USa8aSKP02spUxp65a86AeoMf0gQ=;
 b=STZuVvggKL55zLM9vCBJ+A2pfA7as9WNdrmpGbK3WnzSxjC/cF+rYR4+iN1xvo1GlC
 STsgQUY4G6+vZmw371freyyNJqFnRQcmN/m+f4E46bzSzHZpXU3Nhk/97eUI6l8wV5pL
 ovf7GJ80HIVPdZYmZaLydX0tSlgTVxXbcoHCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DmUxhazUy7VP9f4USa8aSKP02spUxp65a86AeoMf0gQ=;
 b=KzchmWW+OznbpWoIkXb1rqX+APgfeBdzh2XLp+WsH4+e7w9OpFt7URGv/kcuAB8zwP
 76xME4MW0xEGcKt4rZ74AgUKR5SPx/dUVOtOo8I+JMvs+Sy5zmKkcEB7ZoMBr+x0gFWv
 u02M1pI92ZfxK8Ompv7WFM5a0vJahJhmcqqgIF/vYwEhWmUxF2MJBE2wv1TdVpVqHAtc
 cw0mlXf5gCiTSnSjdiMEJ3N1NbYqrnRjmjsKDhEErT9DJjiBfy3O/EF/tqzssLoei95H
 YiEH1LUGQQ8GvcJqSA63YTjpqvokcx8pgf+/CRATHpeXGJ4qukN8h1DdRXyXIfcmCrUs
 6OVQ==
X-Gm-Message-State: APjAAAW8p8Fc2FHloBe48BrFBW2X1vBs/QLVOHV1pl5poEDPUvEkl8EU
 ruSVTd98QXbsZ2yeD2n0tCHW+w==
X-Google-Smtp-Source: APXvYqw77zW9Asq12JCLJ75JsyifGbzBz5mJqgDeKYP8fCzNXqlPP+xWxreUUqKJMtKtic9hp0dZIw==
X-Received: by 2002:a63:1050:: with SMTP id 16mr4552328pgq.295.1570630891701; 
 Wed, 09 Oct 2019 07:21:31 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id s97sm2289836pjc.4.2019.10.09.07.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 07:21:30 -0700 (PDT)
Date: Wed, 9 Oct 2019 10:21:29 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
Message-ID: <20191009142129.GD143258@google.com>
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
 <20191008180516.GB143258@google.com>
 <20191009104011.rzfdvq7otkkj533m@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009104011.rzfdvq7otkkj533m@wittgenstein>
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

On Wed, Oct 09, 2019 at 12:40:12PM +0200, Christian Brauner wrote:
> On Tue, Oct 08, 2019 at 02:05:16PM -0400, Joel Fernandes wrote:
> > On Tue, Oct 08, 2019 at 03:01:59PM +0200, Christian Brauner wrote:
> > > When a binder transaction is initiated on a binder device coming from a
> > > binderfs instance, a pointer to the name of the binder device is stashed
> > > in the binder_transaction_log_entry's context_name member. Later on it
> > > is used to print the name in print_binder_transaction_log_entry(). By
> > > the time print_binder_transaction_log_entry() accesses context_name
> > > binderfs_evict_inode() might have already freed the associated memory
> > > thereby causing a UAF. Do the simple thing and prevent this by copying
> > > the name of the binder device instead of stashing a pointer to it.
> > > 
> > > Reported-by: Jann Horn <jannh@google.com>
> > > Fixes: 03e2e07e3814 ("binder: Make transaction_log available in binderfs")
> > > Link: https://lore.kernel.org/r/CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com
> > > Cc: Joel Fernandes <joel@joelfernandes.org>
> > > Cc: Todd Kjos <tkjos@android.com>
> > > Cc: Hridya Valsaraju <hridya@google.com>
> > > Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> > > ---
> > >  drivers/android/binder.c          | 4 +++-
> > >  drivers/android/binder_internal.h | 2 +-
> > >  2 files changed, 4 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > index c0a491277aca..5b9ac2122e89 100644
> > > --- a/drivers/android/binder.c
> > > +++ b/drivers/android/binder.c
> > > @@ -57,6 +57,7 @@
> > >  #include <linux/sched/signal.h>
> > >  #include <linux/sched/mm.h>
> > >  #include <linux/seq_file.h>
> > > +#include <linux/string.h>
> > >  #include <linux/uaccess.h>
> > >  #include <linux/pid_namespace.h>
> > >  #include <linux/security.h>
> > > @@ -66,6 +67,7 @@
> > >  #include <linux/task_work.h>
> > >  
> > >  #include <uapi/linux/android/binder.h>
> > > +#include <uapi/linux/android/binderfs.h>
> > >  
> > >  #include <asm/cacheflush.h>
> > >  
> > > @@ -2876,7 +2878,7 @@ static void binder_transaction(struct binder_proc *proc,
> > >  	e->target_handle = tr->target.handle;
> > >  	e->data_size = tr->data_size;
> > >  	e->offsets_size = tr->offsets_size;
> > > -	e->context_name = proc->context->name;
> > > +	strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NAME);
> > 
> > Strictly speaking, proc-context->name can also be initialized for !BINDERFS
> > so the BINDERFS in the MAX_NAME macro is misleading. So probably there should
> > be a BINDER_MAX_NAME (and associated checks for whether non BINDERFS names
> > fit within the MAX.
> 
> I know but I don't think it's worth special-casing non-binderfs devices.
> First, non-binderfs devices can only be created through a KCONFIG option
> determined at compile time. For stock Android the names are the same for
> all vendors afaik.

I am just talking about the name of weirdly named macro here.

> Second, BINDERFS_MAX_NAME is set to the maximum path name component
> length that nearly all filesystems support (256 chars). If you exceed
> that then you run afoul of a bunch of other assumptions already and will
> cause trouble.

Again, just talking about the name.

> Third, even if there is someone crazy and uses more than 256 chars for a
> non-binderfs device at KCONFIG time strscpy will do the right thing and
> truncate and you'd see a truncated binder device name. This doesn't seem
> to be a big deal for a debugfs interface.

Sure I never said the patch has a bug.

> Fourth, the check for non-binderfs devices technically has nothing to do
> with this patch. This patch should really just do the minimal thing and
> fix the UAF. Which it does.

Again, never said the patch is buggy.

> Fifth, I already tried to push for validation of non-binderfs binder
> devices a while back when I wrote binderfs and was told that it's not
> needed. Hrydia tried the same and we decided the same thing. So you get
> to be the next person to send a patch. :)

I don't follow why we are talking about non-binderfs validation. I am just
saying a memcpy of the name could have been avoided for regular binder
devices. But since Todd Acked it, I wont stand in the way..

> > One more thought, this can be made dependent on CONFIG_BINDERFS since regular
> > binder devices cannot be unregistered AFAICS and as Jann said, the problem is
> > BINDERFS specific. That way we avoid the memcpy for _every_ transaction.
> > These can be thundering when Android starts up.
> 
> Unless Todd sees this as a real performance problem I'm weary to
> introduce additional checking and record a pointer for non-binderfs and
> a memcpy() for binderfs devices. :)

Ok.

> > (I secretly wish C strings could be refcounted to avoid exactly this issue,
> > that should not be hard to develop but I am not sure if it is worth it for
> > this problem :) - For one, it will avoid having to do the strcpy for _every_
> > transaction).
> > 
> > Other than these nits, please add my tag on whichever is the final solution:
> > 
> > Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
> 
> Thanks for the review, Joel. :)

My duty!! ;-)

thanks,

 - Joel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
