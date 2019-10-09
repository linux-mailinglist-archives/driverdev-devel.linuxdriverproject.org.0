Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D27D12EE
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 17:37:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A508B883E4;
	Wed,  9 Oct 2019 15:37:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R2Bn-JBw0EdY; Wed,  9 Oct 2019 15:37:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB08688360;
	Wed,  9 Oct 2019 15:37:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 415101BF371
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:37:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3ACA387BB1
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:37:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yu3wajladtCp for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 15:37:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4B60D88360
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 15:37:12 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q7so1851703pfh.8
 for <devel@driverdev.osuosl.org>; Wed, 09 Oct 2019 08:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5ZGdcOkmNChI8GwI1qcidl2FDH4Bb9peSC073dz7RNI=;
 b=CJAd+CcAELyW05E819LLecs1+gJPqyY2RarShACD41RGixMe/lGk9gk+HKPTR0iujG
 9xuBZ/ZnoAXPZrSkM7jSeVMUUrHV/wbM3iX0EF/wFkliAQ97f6hs8Ygj7ZVpsUUk69wb
 KAINJ+IZp/QNxiqEXUtoUAgd/uU6Pgo5IT+O4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5ZGdcOkmNChI8GwI1qcidl2FDH4Bb9peSC073dz7RNI=;
 b=DT7OVEpkfkTW91xKVxyg7d6Sl4RLFPdHV6SzbJpgwW8fdzYHE+3pRInhRI27LxaRHX
 6ttV9D0QEuSSLkmlOtdGGiJm98lCzVS1m4SDm2FDKLo3S7mgMUPzVVW80y04Ctgy/BLk
 Hhcku5TIekcQ71c7ABHXq4JFxgRPwapniVX2sWNs5Ns43/Rkhw8UbUkHHpF9heQyw/vq
 lZjWg0Nam1vmnVDsFQXthiOoRjH50Edoo8CM8ECNrI3Lr7ulsJUR760Pg0LbqDVGOdUp
 ImZ3Vz+LSzmcBQRz4UpjrpVTh6Oy9PycuVsnp/ykK3krnZX/LYTo6aR2Ah8NxMUbXYHj
 fflw==
X-Gm-Message-State: APjAAAVubIpYyY1l5Bp2g0SyZ30dNmqXoRDoWgUtNKtJhMWD7pk1BNva
 BYTOSvFilYDkv/vHl17ftXZZaA==
X-Google-Smtp-Source: APXvYqwYRXAeX7S2oT8FjXdl9BCAH/zKp7xscFhn8VCIxBtgH911ZQui6ZAkGOu1jgRdabCyxN4ztg==
X-Received: by 2002:a17:90b:313:: with SMTP id
 ay19mr4821052pjb.25.1570635431802; 
 Wed, 09 Oct 2019 08:37:11 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id k5sm2222328pgo.45.2019.10.09.08.37.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 08:37:11 -0700 (PDT)
Date: Wed, 9 Oct 2019 11:37:10 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
Message-ID: <20191009153710.GC13654@google.com>
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
 <20191008180516.GB143258@google.com>
 <20191009104011.rzfdvq7otkkj533m@wittgenstein>
 <20191009142129.GD143258@google.com>
 <20191009142910.ggerxqxkft2ifhdn@wittgenstein>
 <20191009145558.GA96813@google.com>
 <20191009151044.t2jo3mo4acjtyhez@wittgenstein>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009151044.t2jo3mo4acjtyhez@wittgenstein>
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

On Wed, Oct 09, 2019 at 05:10:45PM +0200, Christian Brauner wrote:
> On Wed, Oct 09, 2019 at 10:55:58AM -0400, Joel Fernandes wrote:
> > On Wed, Oct 09, 2019 at 04:29:11PM +0200, Christian Brauner wrote:
> > > On Wed, Oct 09, 2019 at 10:21:29AM -0400, Joel Fernandes wrote:
> > > > On Wed, Oct 09, 2019 at 12:40:12PM +0200, Christian Brauner wrote:
> > > > > On Tue, Oct 08, 2019 at 02:05:16PM -0400, Joel Fernandes wrote:
> > > > > > On Tue, Oct 08, 2019 at 03:01:59PM +0200, Christian Brauner wrote:
> > > > > > > When a binder transaction is initiated on a binder device coming from a
> > > > > > > binderfs instance, a pointer to the name of the binder device is stashed
> > > > > > > in the binder_transaction_log_entry's context_name member. Later on it
> > > > > > > is used to print the name in print_binder_transaction_log_entry(). By
> > > > > > > the time print_binder_transaction_log_entry() accesses context_name
> > > > > > > binderfs_evict_inode() might have already freed the associated memory
> > > > > > > thereby causing a UAF. Do the simple thing and prevent this by copying
> > > > > > > the name of the binder device instead of stashing a pointer to it.
> > > > > > > 
> > > > > > > Reported-by: Jann Horn <jannh@google.com>
> > > > > > > Fixes: 03e2e07e3814 ("binder: Make transaction_log available in binderfs")
> > > > > > > Link: https://lore.kernel.org/r/CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com
> > > > > > > Cc: Joel Fernandes <joel@joelfernandes.org>
> > > > > > > Cc: Todd Kjos <tkjos@android.com>
> > > > > > > Cc: Hridya Valsaraju <hridya@google.com>
> > > > > > > Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> > > > > > > ---
> > > > > > >  drivers/android/binder.c          | 4 +++-
> > > > > > >  drivers/android/binder_internal.h | 2 +-
> > > > > > >  2 files changed, 4 insertions(+), 2 deletions(-)
> > > > > > > 
> > > > > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > > > > > index c0a491277aca..5b9ac2122e89 100644
> > > > > > > --- a/drivers/android/binder.c
> > > > > > > +++ b/drivers/android/binder.c
> > > > > > > @@ -57,6 +57,7 @@
> > > > > > >  #include <linux/sched/signal.h>
> > > > > > >  #include <linux/sched/mm.h>
> > > > > > >  #include <linux/seq_file.h>
> > > > > > > +#include <linux/string.h>
> > > > > > >  #include <linux/uaccess.h>
> > > > > > >  #include <linux/pid_namespace.h>
> > > > > > >  #include <linux/security.h>
> > > > > > > @@ -66,6 +67,7 @@
> > > > > > >  #include <linux/task_work.h>
> > > > > > >  
> > > > > > >  #include <uapi/linux/android/binder.h>
> > > > > > > +#include <uapi/linux/android/binderfs.h>
> > > > > > >  
> > > > > > >  #include <asm/cacheflush.h>
> > > > > > >  
> > > > > > > @@ -2876,7 +2878,7 @@ static void binder_transaction(struct binder_proc *proc,
> > > > > > >  	e->target_handle = tr->target.handle;
> > > > > > >  	e->data_size = tr->data_size;
> > > > > > >  	e->offsets_size = tr->offsets_size;
> > > > > > > -	e->context_name = proc->context->name;
> > > > > > > +	strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NAME);
> > > > > > 
> > > > > > Strictly speaking, proc-context->name can also be initialized for !BINDERFS
> > > > > > so the BINDERFS in the MAX_NAME macro is misleading. So probably there should
> > > > > > be a BINDER_MAX_NAME (and associated checks for whether non BINDERFS names
> > > > > > fit within the MAX.
> > > > > 
> > > > > I know but I don't think it's worth special-casing non-binderfs devices.
> > > > > First, non-binderfs devices can only be created through a KCONFIG option
> > > > > determined at compile time. For stock Android the names are the same for
> > > > > all vendors afaik.
> > > > 
> > > > I am just talking about the name of weirdly named macro here.
> > > 
> > > You might miss context here: It's named that way because currently only
> > > binderfs binder devices are bound to that limit. That's a point I made
> > > further below in my previous mail. Non-binderfs devices are not subject
> > > to that restriction and when we tried to make them subject to the same
> > > it as rejected.
> > 
> > I know that. I am saying the memcpy is happening for regular binder devices
> > as well but the macro has BINDERFS in the name. That's all. It is not a
> > significant eye sore. But is a bit odd.
> 
> Right, and I told you that we _can't_ rename it to BINDER_MAX because
> that check only happens for binderfs devices since you were suggesting
> this. If you want to rename to get rid of the this being somehow
> apparently odd then you need to introduce that check for non-binderfs
> devices too. Or just rename the macro in a follow-up patch. I don't care.

Here in this patch we are doing mem copy for regular binder device name using
a BINDERFS macro name.

> > 
> > > <snip>
> > > 
> > > > 
> > > > > Fifth, I already tried to push for validation of non-binderfs binder
> > > > > devices a while back when I wrote binderfs and was told that it's not
> > > > > needed. Hrydia tried the same and we decided the same thing. So you get
> > > > > to be the next person to send a patch. :)
> > > > 
> > > > I don't follow why we are talking about non-binderfs validation. I am just
> > > 
> > > Because above you said
> > > 
> > > > > > so the BINDERFS in the MAX_NAME macro is misleading. So probably there should
> > > > > > be a BINDER_MAX_NAME (and associated checks for whether non BINDERFS names
> > > > > > fit within the MAX.
> > > 
> > > which to me reads like you want generic checks for _all_ binder devices
> > > not just for the ones from binderfs.
> > 
> > No I am not talking about the checks at all, I am talking about the unwanted
> > mem copy you are doing for regular binder devices now. Before binderfs this
> > would not have happened, but now for regular binder devices we have to do the
> > extra mem copies which were avoided before. That was what I was talking about.
> 
> I'm sorry but I did not get this at all from:
> "So probably there should be a BINDER_MAX_NAME (and associated checks
> for whether non BINDERFS names fit within the MAX." 

Sorry for the misleading statement. That means I have to improve my
communication game, sorry it is my fault.

> > 
> > But this discussing is getting to bike shedding at this point, and since the
> > overhead is likely small, I am Ok with the change (though I don't like very
> > much the additional memcpy and the associated space wastage in the
> > transaction buffer for regular binder devices).
> 
> Feel free to send a follow-up patch handling both separately.

Ok will do once I get a chance. Thanks for working on the fix!

-  Joel

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
