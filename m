Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E6FD0CEF
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 12:40:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E02CC87864;
	Wed,  9 Oct 2019 10:40:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YK6p9HI3OsQN; Wed,  9 Oct 2019 10:40:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C7A4F87855;
	Wed,  9 Oct 2019 10:40:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 29BE91BF3C6
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 10:40:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 24287228EF
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 10:40:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MQUCLT3e3KBG for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 10:40:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by silver.osuosl.org (Postfix) with ESMTPS id 9F708229D4
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 10:40:17 +0000 (UTC)
Received: from [79.140.115.128] (helo=wittgenstein)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <christian.brauner@ubuntu.com>)
 id 1iI9O9-0003Mv-7o; Wed, 09 Oct 2019 10:40:13 +0000
Date: Wed, 9 Oct 2019 12:40:12 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Joel Fernandes <joel@joelfernandes.org>, Todd Kjos <tkjos@android.com>
Subject: Re: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
Message-ID: <20191009104011.rzfdvq7otkkj533m@wittgenstein>
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
 <20191008180516.GB143258@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008180516.GB143258@google.com>
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

On Tue, Oct 08, 2019 at 02:05:16PM -0400, Joel Fernandes wrote:
> On Tue, Oct 08, 2019 at 03:01:59PM +0200, Christian Brauner wrote:
> > When a binder transaction is initiated on a binder device coming from a
> > binderfs instance, a pointer to the name of the binder device is stashed
> > in the binder_transaction_log_entry's context_name member. Later on it
> > is used to print the name in print_binder_transaction_log_entry(). By
> > the time print_binder_transaction_log_entry() accesses context_name
> > binderfs_evict_inode() might have already freed the associated memory
> > thereby causing a UAF. Do the simple thing and prevent this by copying
> > the name of the binder device instead of stashing a pointer to it.
> > 
> > Reported-by: Jann Horn <jannh@google.com>
> > Fixes: 03e2e07e3814 ("binder: Make transaction_log available in binderfs")
> > Link: https://lore.kernel.org/r/CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com
> > Cc: Joel Fernandes <joel@joelfernandes.org>
> > Cc: Todd Kjos <tkjos@android.com>
> > Cc: Hridya Valsaraju <hridya@google.com>
> > Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> > ---
> >  drivers/android/binder.c          | 4 +++-
> >  drivers/android/binder_internal.h | 2 +-
> >  2 files changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> > index c0a491277aca..5b9ac2122e89 100644
> > --- a/drivers/android/binder.c
> > +++ b/drivers/android/binder.c
> > @@ -57,6 +57,7 @@
> >  #include <linux/sched/signal.h>
> >  #include <linux/sched/mm.h>
> >  #include <linux/seq_file.h>
> > +#include <linux/string.h>
> >  #include <linux/uaccess.h>
> >  #include <linux/pid_namespace.h>
> >  #include <linux/security.h>
> > @@ -66,6 +67,7 @@
> >  #include <linux/task_work.h>
> >  
> >  #include <uapi/linux/android/binder.h>
> > +#include <uapi/linux/android/binderfs.h>
> >  
> >  #include <asm/cacheflush.h>
> >  
> > @@ -2876,7 +2878,7 @@ static void binder_transaction(struct binder_proc *proc,
> >  	e->target_handle = tr->target.handle;
> >  	e->data_size = tr->data_size;
> >  	e->offsets_size = tr->offsets_size;
> > -	e->context_name = proc->context->name;
> > +	strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NAME);
> 
> Strictly speaking, proc-context->name can also be initialized for !BINDERFS
> so the BINDERFS in the MAX_NAME macro is misleading. So probably there should
> be a BINDER_MAX_NAME (and associated checks for whether non BINDERFS names
> fit within the MAX.

I know but I don't think it's worth special-casing non-binderfs devices.
First, non-binderfs devices can only be created through a KCONFIG option
determined at compile time. For stock Android the names are the same for
all vendors afaik.
Second, BINDERFS_MAX_NAME is set to the maximum path name component
length that nearly all filesystems support (256 chars). If you exceed
that then you run afoul of a bunch of other assumptions already and will
cause trouble.
Third, even if there is someone crazy and uses more than 256 chars for a
non-binderfs device at KCONFIG time strscpy will do the right thing and
truncate and you'd see a truncated binder device name. This doesn't seem
to be a big deal for a debugfs interface.
Fourth, the check for non-binderfs devices technically has nothing to do
with this patch. This patch should really just do the minimal thing and
fix the UAF. Which it does.
Fifth, I already tried to push for validation of non-binderfs binder
devices a while back when I wrote binderfs and was told that it's not
needed. Hrydia tried the same and we decided the same thing. So you get
to be the next person to send a patch. :)

> 
> >  	if (reply) {
> 
> >  		binder_inner_proc_lock(proc);
> > diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> > index bd47f7f72075..ae991097d14d 100644
> > --- a/drivers/android/binder_internal.h
> > +++ b/drivers/android/binder_internal.h
> > @@ -130,7 +130,7 @@ struct binder_transaction_log_entry {
> >  	int return_error_line;
> >  	uint32_t return_error;
> >  	uint32_t return_error_param;
> > -	const char *context_name;
> > +	char context_name[BINDERFS_MAX_NAME + 1];
> 
> Same comment here, context_name can be used for non-BINDERFS transactions as
> well such as default binder devices.

See above.

> 
> One more thought, this can be made dependent on CONFIG_BINDERFS since regular
> binder devices cannot be unregistered AFAICS and as Jann said, the problem is
> BINDERFS specific. That way we avoid the memcpy for _every_ transaction.
> These can be thundering when Android starts up.

Unless Todd sees this as a real performance problem I'm weary to
introduce additional checking and record a pointer for non-binderfs and
a memcpy() for binderfs devices. :)

> 
> (I secretly wish C strings could be refcounted to avoid exactly this issue,
> that should not be hard to develop but I am not sure if it is worth it for
> this problem :) - For one, it will avoid having to do the strcpy for _every_
> transaction).
> 
> Other than these nits, please add my tag on whichever is the final solution:
> 
> Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

Thanks for the review, Joel. :)
Christian
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
