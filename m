Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3C0166C4
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 17:32:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 27E932E7DA;
	Tue,  7 May 2019 15:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6M9j4U-l48Sf; Tue,  7 May 2019 15:32:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8AD692E379;
	Tue,  7 May 2019 15:32:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 170AA1BF5AC
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 15:32:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EF99E2E2F8
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 15:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gqDIWteF7qcq for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 15:32:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by silver.osuosl.org (Postfix) with ESMTPS id EE4AB2206E
 for <devel@driverdev.osuosl.org>; Tue,  7 May 2019 15:32:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id BB055308424E;
 Tue,  7 May 2019 15:31:59 +0000 (UTC)
Received: from dhcp-27-174.brq.redhat.com (unknown [10.43.17.159])
 by smtp.corp.redhat.com (Postfix) with SMTP id 648915C225;
 Tue,  7 May 2019 15:31:55 +0000 (UTC)
Received: by dhcp-27-174.brq.redhat.com (nbSMTP-1.00) for uid 1000
 oleg@redhat.com; Tue,  7 May 2019 17:31:59 +0200 (CEST)
Date: Tue, 7 May 2019 17:31:54 +0200
From: Oleg Nesterov <oleg@redhat.com>
To: Sultan Alsawaf <sultan@kerneltoast.com>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190507153154.GA5750@redhat.com>
References: <20190317015306.GA167393@google.com>
 <20190317114238.ab6tvvovpkpozld5@brauner.io>
 <CAKOZuetZPhqQqSgZpyY0cLgy0jroLJRx-B93rkQzcOByL8ih_Q@mail.gmail.com>
 <20190318002949.mqknisgt7cmjmt7n@brauner.io>
 <20190318235052.GA65315@google.com>
 <20190319221415.baov7x6zoz7hvsno@brauner.io>
 <CAKOZuessqcjrZ4rfGLgrnOhrLnsVYiVJzOj4Aa=o3ZuZ013d0g@mail.gmail.com>
 <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507021622.GA27300@sultan-box.localdomain>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 07 May 2019 15:32:00 +0000 (UTC)
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

I am not going to comment the intent, but to be honest I am skeptical too.

On 05/06, Sultan Alsawaf wrote:
>
> +static unsigned long find_victims(struct victim_info *varr, int *vindex,
> +				  int vmaxlen, int min_adj, int max_adj)
> +{
> +	unsigned long pages_found = 0;
> +	int old_vindex = *vindex;
> +	struct task_struct *tsk;
> +
> +	for_each_process(tsk) {
> +		struct task_struct *vtsk;
> +		unsigned long tasksize;
> +		short oom_score_adj;
> +
> +		/* Make sure there's space left in the victim array */
> +		if (*vindex == vmaxlen)
> +			break;
> +
> +		/* Don't kill current, kthreads, init, or duplicates */
> +		if (same_thread_group(tsk, current) ||
> +		    tsk->flags & PF_KTHREAD ||
> +		    is_global_init(tsk) ||
> +		    vtsk_is_duplicate(varr, *vindex, tsk))
> +			continue;
> +
> +		vtsk = find_lock_task_mm(tsk);

Did you test this patch with lockdep enabled?

If I read the patch correctly, lockdep should complain. vtsk_is_duplicate()
ensures that we do not take the same ->alloc_lock twice or more, but lockdep
can't know this.

> +static void scan_and_kill(unsigned long pages_needed)
> +{
> +	static DECLARE_WAIT_QUEUE_HEAD(victim_waitq);
> +	struct victim_info victims[MAX_VICTIMS];
> +	int i, nr_to_kill = 0, nr_victims = 0;
> +	unsigned long pages_found = 0;
> +	atomic_t victim_count;
> +
> +	/*
> +	 * Hold the tasklist lock so tasks don't disappear while scanning. This
> +	 * is preferred to holding an RCU read lock so that the list of tasks
> +	 * is guaranteed to be up to date. Keep preemption disabled until the
> +	 * SIGKILLs are sent so the victim kill process isn't interrupted.
> +	 */
> +	read_lock(&tasklist_lock);
> +	preempt_disable();

read_lock() disables preemption, every task_lock() too, so this looks
unnecessary.

> +	for (i = 1; i < ARRAY_SIZE(adj_prio); i++) {
> +		pages_found += find_victims(victims, &nr_victims, MAX_VICTIMS,
> +					    adj_prio[i], adj_prio[i - 1]);
> +		if (pages_found >= pages_needed || nr_victims == MAX_VICTIMS)
> +			break;
> +	}
> +
> +	/*
> +	 * Calculate the number of tasks that need to be killed and quickly
> +	 * release the references to those that'll live.
> +	 */
> +	for (i = 0, pages_found = 0; i < nr_victims; i++) {
> +		struct victim_info *victim = &victims[i];
> +		struct task_struct *vtsk = victim->tsk;
> +
> +		/* The victims' mm lock is taken in find_victims; release it */
> +		if (pages_found >= pages_needed) {
> +			task_unlock(vtsk);
> +			continue;
> +		}
> +
> +		/*
> +		 * Grab a reference to the victim so it doesn't disappear after
> +		 * the tasklist lock is released.
> +		 */
> +		get_task_struct(vtsk);

The comment doesn't look correct. the victim can't dissapear until task_unlock()
below, it can't pass exit_mm().

> +		pages_found += victim->size;
> +		nr_to_kill++;
> +	}
> +	read_unlock(&tasklist_lock);
> +
> +	/* Kill the victims */
> +	victim_count = (atomic_t)ATOMIC_INIT(nr_to_kill);
> +	for (i = 0; i < nr_to_kill; i++) {
> +		struct victim_info *victim = &victims[i];
> +		struct task_struct *vtsk = victim->tsk;
> +
> +		pr_info("Killing %s with adj %d to free %lu kiB\n", vtsk->comm,
> +			vtsk->signal->oom_score_adj,
> +			victim->size << (PAGE_SHIFT - 10));
> +
> +		/* Configure the victim's mm to notify us when it's freed */
> +		vtsk->mm->slmk_waitq = &victim_waitq;
> +		vtsk->mm->slmk_counter = &victim_count;
> +
> +		/* Accelerate the victim's death by forcing the kill signal */
> +		do_send_sig_info(SIGKILL, SIG_INFO_TYPE, vtsk, true);
                                                               ^^^^
this should be PIDTYPE_TGID

> +
> +		/* Finally release the victim's mm lock */
> +		task_unlock(vtsk);
> +	}
> +	preempt_enable_no_resched();

See above. And I don't understand how can _no_resched() really help...

> +
> +	/* Try to speed up the death process now that we can schedule again */
> +	for (i = 0; i < nr_to_kill; i++) {
> +		struct task_struct *vtsk = victims[i].tsk;
> +
> +		/* Increase the victim's priority to make it die faster */
> +		set_user_nice(vtsk, MIN_NICE);
> +
> +		/* Allow the victim to run on any CPU */
> +		set_cpus_allowed_ptr(vtsk, cpu_all_mask);
> +
> +		/* Finally release the victim reference acquired earlier */
> +		put_task_struct(vtsk);
> +	}
> +
> +	/* Wait until all the victims die */
> +	wait_event(victim_waitq, !atomic_read(&victim_count));

Can't we avoid the new slmk_waitq/slmk_counter members in mm_struct?

I mean, can't we export victim_waitq and victim_count and, say, set/test
MMF_OOM_VICTIM. In fact I think you should try to re-use mark_oom_victim()
at least.

Oleg.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
