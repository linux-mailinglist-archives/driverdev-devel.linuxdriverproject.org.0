Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CA4C167F7
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 18:35:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E45918618F;
	Tue,  7 May 2019 16:35:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lr8PCspWa11V; Tue,  7 May 2019 16:35:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7441D8614E;
	Tue,  7 May 2019 16:35:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD0EB1BF5B4
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:35:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B526C2EC4F
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 16:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wX8vGbo8h782 for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 16:35:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 547B82E6B2
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 16:35:26 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id c3so839818otr.3
 for <devel@driverdev.osuosl.org>; Tue, 07 May 2019 09:35:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uaftBA0UoN/VSNTOzbOYMh9Vy7eqJmh/fNyQY1SouuI=;
 b=a7y9xqgIFbNIcParnrVZSUnXl19XKR1qZKB3tRb+WNL3KXie7MzzhTNHXYObHZSus1
 kWLk4MCTnljaqmY4vPGOWfzLtQMI/jyQMzpkKQ8w24FdtyqgZQIc6qcojSjpBOx0rVIg
 D/fSKsKTP6/Hxzjtz8gREQwH7BstN4dVv+9VbtDHwKQ9MfBNYPdNhpsGwMjNdAssVNSJ
 iajeTCanuGIhDVg5yJeHb1CPigd++DWm/Flb99dCI2CxBhI22dcxKDJJyx/LPPLOZ7TS
 C+30cv4OWM9bC9f+v1uSeB/JR6TSalk5x0zNXJeQqM83cwrLlKJ3HES5yi4sc4WB5ou+
 lOaQ==
X-Gm-Message-State: APjAAAXynaLzac/WkaEx6CVJ+Kpxqgpgl4svwOepuut5ciGAlhVMOd0S
 RHIs6c7XfpxBgWiOe5OyTL0=
X-Google-Smtp-Source: APXvYqydLIte/a5y0Qbp7koBb1lz2oKeDENbD0wbuwwQYduw/mFVNSh7ERvEKJGGr0YtfDzHEXQceQ==
X-Received: by 2002:a9d:6c51:: with SMTP id g17mr13323687otq.171.1557246925490; 
 Tue, 07 May 2019 09:35:25 -0700 (PDT)
Received: from sultan-box.localdomain ([107.193.118.89])
 by smtp.gmail.com with ESMTPSA id p4sm3559359oti.70.2019.05.07.09.35.22
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 09:35:24 -0700 (PDT)
Date: Tue, 7 May 2019 09:35:20 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507163520.GA1131@sultan-box.localdomain>
References: <20190317114238.ab6tvvovpkpozld5@brauner.io>
 <CAKOZuetZPhqQqSgZpyY0cLgy0jroLJRx-B93rkQzcOByL8ih_Q@mail.gmail.com>
 <20190318002949.mqknisgt7cmjmt7n@brauner.io>
 <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507153154.GA5750@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507153154.GA5750@redhat.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
 Daniel Colascione <dancol@google.com>, kernel-team <kernel-team@android.com>,
 Todd Kjos <tkjos@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Tim Murray <timmurray@google.com>,
 Michal Hocko <mhocko@kernel.org>, linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Martijn Coenen <maco@android.com>,
 Steven Rostedt <rostedt@goodmis.org>, Joel Fernandes <joel@joelfernandes.org>,
 Andy Lutomirski <luto@amacapital.net>, Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 07, 2019 at 05:31:54PM +0200, Oleg Nesterov wrote:
> I am not going to comment the intent, but to be honest I am skeptical too.

The general sentiment has been that this is a really bad idea, but I'm just a
frustrated Android user who wants his phone to not require mountains of zRAM
only to still manage memory poorly. Until I can go out and buy a non-Pixel phone
that uses PSI to make these decisions (and does a good job of it), I'm going to
stick to my hacky little driver for my personal devices. Many others who like to
hack their Android devices to make them last longer will probably find value in
this as well, since there are millions of people who use devices that'll never
seen any of PSI ported to their ancient 3.x kernels.

And yes, I know this would never be accepted to upstream in a million years. I
mostly wanted some code review and guidance, since mm code is pretty tricky :)

> On 05/06, Sultan Alsawaf wrote:
> >
> > +static unsigned long find_victims(struct victim_info *varr, int *vindex,
> > +				  int vmaxlen, int min_adj, int max_adj)
> > +{
> > +	unsigned long pages_found = 0;
> > +	int old_vindex = *vindex;
> > +	struct task_struct *tsk;
> > +
> > +	for_each_process(tsk) {
> > +		struct task_struct *vtsk;
> > +		unsigned long tasksize;
> > +		short oom_score_adj;
> > +
> > +		/* Make sure there's space left in the victim array */
> > +		if (*vindex == vmaxlen)
> > +			break;
> > +
> > +		/* Don't kill current, kthreads, init, or duplicates */
> > +		if (same_thread_group(tsk, current) ||
> > +		    tsk->flags & PF_KTHREAD ||
> > +		    is_global_init(tsk) ||
> > +		    vtsk_is_duplicate(varr, *vindex, tsk))
> > +			continue;
> > +
> > +		vtsk = find_lock_task_mm(tsk);
> 
> Did you test this patch with lockdep enabled?
> 
> If I read the patch correctly, lockdep should complain. vtsk_is_duplicate()
> ensures that we do not take the same ->alloc_lock twice or more, but lockdep
> can't know this.

Yeah, lockdep is fine with this, at least on 4.4.

> > +static void scan_and_kill(unsigned long pages_needed)
> > +{
> > +	static DECLARE_WAIT_QUEUE_HEAD(victim_waitq);
> > +	struct victim_info victims[MAX_VICTIMS];
> > +	int i, nr_to_kill = 0, nr_victims = 0;
> > +	unsigned long pages_found = 0;
> > +	atomic_t victim_count;
> > +
> > +	/*
> > +	 * Hold the tasklist lock so tasks don't disappear while scanning. This
> > +	 * is preferred to holding an RCU read lock so that the list of tasks
> > +	 * is guaranteed to be up to date. Keep preemption disabled until the
> > +	 * SIGKILLs are sent so the victim kill process isn't interrupted.
> > +	 */
> > +	read_lock(&tasklist_lock);
> > +	preempt_disable();
> 
> read_lock() disables preemption, every task_lock() too, so this looks
> unnecessary.

Good point.

> > +	for (i = 1; i < ARRAY_SIZE(adj_prio); i++) {
> > +		pages_found += find_victims(victims, &nr_victims, MAX_VICTIMS,
> > +					    adj_prio[i], adj_prio[i - 1]);
> > +		if (pages_found >= pages_needed || nr_victims == MAX_VICTIMS)
> > +			break;
> > +	}
> > +
> > +	/*
> > +	 * Calculate the number of tasks that need to be killed and quickly
> > +	 * release the references to those that'll live.
> > +	 */
> > +	for (i = 0, pages_found = 0; i < nr_victims; i++) {
> > +		struct victim_info *victim = &victims[i];
> > +		struct task_struct *vtsk = victim->tsk;
> > +
> > +		/* The victims' mm lock is taken in find_victims; release it */
> > +		if (pages_found >= pages_needed) {
> > +			task_unlock(vtsk);
> > +			continue;
> > +		}
> > +
> > +		/*
> > +		 * Grab a reference to the victim so it doesn't disappear after
> > +		 * the tasklist lock is released.
> > +		 */
> > +		get_task_struct(vtsk);
> 
> The comment doesn't look correct. the victim can't dissapear until task_unlock()
> below, it can't pass exit_mm().

I was always unsure about this and decided to hold a reference to the
task_struct to be safe. Thanks for clearing that up.

> > +		pages_found += victim->size;
> > +		nr_to_kill++;
> > +	}
> > +	read_unlock(&tasklist_lock);
> > +
> > +	/* Kill the victims */
> > +	victim_count = (atomic_t)ATOMIC_INIT(nr_to_kill);
> > +	for (i = 0; i < nr_to_kill; i++) {
> > +		struct victim_info *victim = &victims[i];
> > +		struct task_struct *vtsk = victim->tsk;
> > +
> > +		pr_info("Killing %s with adj %d to free %lu kiB\n", vtsk->comm,
> > +			vtsk->signal->oom_score_adj,
> > +			victim->size << (PAGE_SHIFT - 10));
> > +
> > +		/* Configure the victim's mm to notify us when it's freed */
> > +		vtsk->mm->slmk_waitq = &victim_waitq;
> > +		vtsk->mm->slmk_counter = &victim_count;
> > +
> > +		/* Accelerate the victim's death by forcing the kill signal */
> > +		do_send_sig_info(SIGKILL, SIG_INFO_TYPE, vtsk, true);
>                                                                ^^^^
> this should be PIDTYPE_TGID

Thanks, I didn't realize the last argument to do_send_sig_info changed in newer
kernels. The compiler didn't complain, so it went over my head.

> > +
> > +		/* Finally release the victim's mm lock */
> > +		task_unlock(vtsk);
> > +	}
> > +	preempt_enable_no_resched();
> 
> See above. And I don't understand how can _no_resched() really help...

Yeah, good point.

> > +
> > +	/* Try to speed up the death process now that we can schedule again */
> > +	for (i = 0; i < nr_to_kill; i++) {
> > +		struct task_struct *vtsk = victims[i].tsk;
> > +
> > +		/* Increase the victim's priority to make it die faster */
> > +		set_user_nice(vtsk, MIN_NICE);
> > +
> > +		/* Allow the victim to run on any CPU */
> > +		set_cpus_allowed_ptr(vtsk, cpu_all_mask);
> > +
> > +		/* Finally release the victim reference acquired earlier */
> > +		put_task_struct(vtsk);
> > +	}
> > +
> > +	/* Wait until all the victims die */
> > +	wait_event(victim_waitq, !atomic_read(&victim_count));
> 
> Can't we avoid the new slmk_waitq/slmk_counter members in mm_struct?
> 
> I mean, can't we export victim_waitq and victim_count and, say, set/test
> MMF_OOM_VICTIM. In fact I think you should try to re-use mark_oom_victim()
> at least.

This makes the patch less portable across different kernel versions, which is
kind of one of its major goals.

Thanks for the code review, Oleg.

Sultan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
