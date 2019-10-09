Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5E0D1224
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 17:10:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9029A883C9;
	Wed,  9 Oct 2019 15:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mm9tS3w4Ds-L; Wed,  9 Oct 2019 15:10:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CC8AC8838E;
	Wed,  9 Oct 2019 15:10:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3C62A1BF371
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:10:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3891A2042A
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 15:10:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3EyHNyITD0LE for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 15:10:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D9C92039D
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 15:10:50 +0000 (UTC)
Received: from [213.220.153.21] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iIDby-0007Jf-7z; Wed, 09 Oct 2019 15:10:46 +0000
Date: Wed, 9 Oct 2019 17:10:45 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Joel Fernandes <joel@joelfernandes.org>
Subject: Re: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
Message-ID: <20191009151044.t2jo3mo4acjtyhez@wittgenstein>
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
 <20191008180516.GB143258@google.com>
 <20191009104011.rzfdvq7otkkj533m@wittgenstein>
 <20191009142129.GD143258@google.com>
 <20191009142910.ggerxqxkft2ifhdn@wittgenstein>
 <20191009145558.GA96813@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009145558.GA96813@google.com>
User-Agent: NeoMutt/20180716
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

On Wed, Oct 09, 2019 at 10:55:58AM -0400, Joel Fernandes wrote:
> On Wed, Oct 09, 2019 at 04:29:11PM +0200, Christian Brauner wrote:
> > On Wed, Oct 09, 2019 at 10:21:29AM -0400, Joel Fernandes wrote:
> > > On Wed, Oct 09, 2019 at 12:40:12PM +0200, Christian Brauner wrote:
> > > > On Tue, Oct 08, 2019 at 02:05:16PM -0400, Joel Fernandes wrote:
> > > > > On Tue, Oct 08, 2019 at 03:01:59PM +0200, Christian Brauner wrote:
> > > > > > When a binder transaction is initiated on a binder device coming from a
> > > > > > binderfs instance, a pointer to the name of the binder device is stashed
> > > > > > in the binder_transaction_log_entry's context_name member. Later on it
> > > > > > is used to print the name in print_binder_transaction_log_entry(). By
> > > > > > the time print_binder_transaction_log_entry() accesses context_name
> > > > > > binderfs_evict_inode() might have already freed the associated memory
> > > > > > thereby causing a UAF. Do the simple thing and prevent this by copying
> > > > > > the name of the binder device instead of stashing a pointer to it.
> > > > > > 
> > > > > > Reported-by: Jann Horn <jannh@google.com>
> > > > > > Fixes: 03e2e07e3814 ("binder: Make transaction_log available in binderfs")
> > > > > > Link: https://lore.kernel.org/r/CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com
> > > > > > Cc: Joel Fernandes <joel@joelfernandes.org>
> > > > > > Cc: Todd Kjos <tkjos@android.com>
> > > > > > Cc: Hridya Valsaraju <hridya@google.com>
> > > > > > Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> > > > > > ---
> > > > > >  drivers/android/binder.c          | 4 +++-
> > > > > >  drivers/android/binder_internal.h | 2 +-
> > > > > >  2 files changed, 4 insertions(+), 2 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > > > > > index c0a491277aca..5b9ac2122e89 100644
> > > > > > --- a/drivers/android/binder.c
> > > > > > +++ b/drivers/android/binder.c
> > > > > > @@ -57,6 +57,7 @@
> > > > > >  #include <linux/sched/signal.h>
> > > > > >  #include <linux/sched/mm.h>
> > > > > >  #include <linux/seq_file.h>
> > > > > > +#include <linux/string.h>
> > > > > >  #include <linux/uaccess.h>
> > > > > >  #include <linux/pid_namespace.h>
> > > > > >  #include <linux/security.h>
> > > > > > @@ -66,6 +67,7 @@
> > > > > >  #include <linux/task_work.h>
> > > > > >  
> > > > > >  #include <uapi/linux/android/binder.h>
> > > > > > +#include <uapi/linux/android/binderfs.h>
> > > > > >  
> > > > > >  #include <asm/cacheflush.h>
> > > > > >  
> > > > > > @@ -2876,7 +2878,7 @@ static void binder_transaction(struct binder_proc *proc,
> > > > > >  	e->target_handle = tr->target.handle;
> > > > > >  	e->data_size = tr->data_size;
> > > > > >  	e->offsets_size = tr->offsets_size;
> > > > > > -	e->context_name = proc->context->name;
> > > > > > +	strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NAME);
> > > > > 
> > > > > Strictly speaking, proc-context->name can also be initialized for !BINDERFS
> > > > > so the BINDERFS in the MAX_NAME macro is misleading. So probably there should
> > > > > be a BINDER_MAX_NAME (and associated checks for whether non BINDERFS names
> > > > > fit within the MAX.
> > > > 
> > > > I know but I don't think it's worth special-casing non-binderfs devices.
> > > > First, non-binderfs devices can only be created through a KCONFIG option
> > > > determined at compile time. For stock Android the names are the same for
> > > > all vendors afaik.
> > > 
> > > I am just talking about the name of weirdly named macro here.
> > 
> > You might miss context here: It's named that way because currently only
> > binderfs binder devices are bound to that limit. That's a point I made
> > further below in my previous mail. Non-binderfs devices are not subject
> > to that restriction and when we tried to make them subject to the same
> > it as rejected.
> 
> I know that. I am saying the memcpy is happening for regular binder devices
> as well but the macro has BINDERFS in the name. That's all. It is not a
> significant eye sore. But is a bit odd.

Right, and I told you that we _can't_ rename it to BINDER_MAX because
that check only happens for binderfs devices since you were suggesting
this. If you want to rename to get rid of the this being somehow
apparently odd then you need to introduce that check for non-binderfs
devices too. Or just rename the macro in a follow-up patch. I don't care.

> 
> > <snip>
> > 
> > > 
> > > > Fifth, I already tried to push for validation of non-binderfs binder
> > > > devices a while back when I wrote binderfs and was told that it's not
> > > > needed. Hrydia tried the same and we decided the same thing. So you get
> > > > to be the next person to send a patch. :)
> > > 
> > > I don't follow why we are talking about non-binderfs validation. I am just
> > 
> > Because above you said
> > 
> > > > > so the BINDERFS in the MAX_NAME macro is misleading. So probably there should
> > > > > be a BINDER_MAX_NAME (and associated checks for whether non BINDERFS names
> > > > > fit within the MAX.
> > 
> > which to me reads like you want generic checks for _all_ binder devices
> > not just for the ones from binderfs.
> 
> No I am not talking about the checks at all, I am talking about the unwanted
> mem copy you are doing for regular binder devices now. Before binderfs this
> would not have happened, but now for regular binder devices we have to do the
> extra mem copies which were avoided before. That was what I was talking about.

I'm sorry but I did not get this at all from:
"So probably there should be a BINDER_MAX_NAME (and associated checks
for whether non BINDERFS names fit within the MAX." 

> 
> But this discussing is getting to bike shedding at this point, and since the
> overhead is likely small, I am Ok with the change (though I don't like very
> much the additional memcpy and the associated space wastage in the
> transaction buffer for regular binder devices).

Feel free to send a follow-up patch handling both separately.

Thanks!
Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
