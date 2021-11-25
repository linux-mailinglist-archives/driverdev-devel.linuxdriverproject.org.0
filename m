Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5B345D2EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 03:06:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C527F404FD;
	Thu, 25 Nov 2021 02:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GpLstEYoWKJu; Thu, 25 Nov 2021 02:06:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4FD844015E;
	Thu, 25 Nov 2021 02:06:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BAFB1BF32D
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 02:06:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79C9E40526
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 02:06:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TS52m4XZeApM for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 02:06:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F318440521
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 02:06:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="235664019"
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="235664019"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 18:06:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="538825064"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 24 Nov 2021 18:06:13 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mq49M-0005bB-I8; Thu, 25 Nov 2021 02:06:12 +0000
Date: Thu, 25 Nov 2021 10:05:14 +0800
From: kernel test robot <lkp@intel.com>
To: Todd Kjos <tkjos@google.com>, gregkh@linuxfoundation.org,
 christian@brauner.io, arve@android.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, maco@google.com
Subject: Re: [PATCH 1/3] binder: avoid potential data leakage when copying txn
Message-ID: <202111251005.ZQfHG0PB-lkp@intel.com>
References: <20211123191737.1296541-2-tkjos@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123191737.1296541-2-tkjos@google.com>
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
Cc: joel@joelfernandes.org, kernel-team@android.com, kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Todd,

I love your patch! Perhaps something to improve:

[auto build test WARNING on staging/staging-testing]
[also build test WARNING on v5.16-rc2 next-20211124]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Todd-Kjos/binder-Prevent-untranslated-sender-data-from-being-copied-to-target/20211124-031908
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 1189d2fb15a4b09b2e8dd01d60a0817d985d933d
config: nds32-buildonly-randconfig-r004-20211123 (https://download.01.org/0day-ci/archive/20211125/202111251005.ZQfHG0PB-lkp@intel.com/config)
compiler: nds32le-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/d51c5e7a3791e9e748200416f85456c826d3030e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Todd-Kjos/binder-Prevent-untranslated-sender-data-from-being-copied-to-target/20211124-031908
        git checkout d51c5e7a3791e9e748200416f85456c826d3030e
        # save the config file to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross ARCH=nds32 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from include/asm-generic/bug.h:22,
                    from ./arch/nds32/include/generated/asm/bug.h:1,
                    from include/linux/bug.h:5,
                    from include/linux/thread_info.h:13,
                    from include/asm-generic/preempt.h:5,
                    from ./arch/nds32/include/generated/asm/preempt.h:1,
                    from include/linux/preempt.h:78,
                    from include/linux/spinlock.h:55,
                    from include/linux/fdtable.h:11,
                    from drivers/android/binder.c:45:
   drivers/android/binder.c: In function 'binder_transaction':
>> drivers/android/binder.c:2711:30: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
    2711 |                              (u64)user_buffer,
         |                              ^
   include/linux/printk.h:418:33: note: in definition of macro 'printk_index_wrap'
     418 |                 _p_func(_fmt, ##__VA_ARGS__);                           \
         |                                 ^~~~~~~~~~~
   include/linux/printk.h:640:17: note: in expansion of macro 'printk'
     640 |                 printk(fmt, ##__VA_ARGS__);                             \
         |                 ^~~~~~
   include/linux/printk.h:660:9: note: in expansion of macro 'printk_ratelimited'
     660 |         printk_ratelimited(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
         |         ^~~~~~~~~~~~~~~~~~
   drivers/android/binder.c:139:25: note: in expansion of macro 'pr_info_ratelimited'
     139 |                         pr_info_ratelimited(x); \
         |                         ^~~~~~~~~~~~~~~~~~~
   drivers/android/binder.c:2707:17: note: in expansion of macro 'binder_debug'
    2707 |                 binder_debug(BINDER_DEBUG_TRANSACTION,
         |                 ^~~~~~~~~~~~
   drivers/android/binder.c:2720:30: warning: cast from pointer to integer of different size [-Wpointer-to-int-cast]
    2720 |                              (u64)user_buffer,
         |                              ^
   include/linux/printk.h:418:33: note: in definition of macro 'printk_index_wrap'
     418 |                 _p_func(_fmt, ##__VA_ARGS__);                           \
         |                                 ^~~~~~~~~~~
   include/linux/printk.h:640:17: note: in expansion of macro 'printk'
     640 |                 printk(fmt, ##__VA_ARGS__);                             \
         |                 ^~~~~~
   include/linux/printk.h:660:9: note: in expansion of macro 'printk_ratelimited'
     660 |         printk_ratelimited(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
         |         ^~~~~~~~~~~~~~~~~~
   drivers/android/binder.c:139:25: note: in expansion of macro 'pr_info_ratelimited'
     139 |                         pr_info_ratelimited(x); \
         |                         ^~~~~~~~~~~~~~~~~~~
   drivers/android/binder.c:2716:17: note: in expansion of macro 'binder_debug'
    2716 |                 binder_debug(BINDER_DEBUG_TRANSACTION,
         |                 ^~~~~~~~~~~~


vim +2711 drivers/android/binder.c

  2457	
  2458	static void binder_transaction(struct binder_proc *proc,
  2459				       struct binder_thread *thread,
  2460				       struct binder_transaction_data *tr, int reply,
  2461				       binder_size_t extra_buffers_size)
  2462	{
  2463		int ret;
  2464		struct binder_transaction *t;
  2465		struct binder_work *w;
  2466		struct binder_work *tcomplete;
  2467		binder_size_t buffer_offset = 0;
  2468		binder_size_t off_start_offset, off_end_offset;
  2469		binder_size_t off_min;
  2470		binder_size_t sg_buf_offset, sg_buf_end_offset;
  2471		binder_size_t user_offset = 0;
  2472		struct binder_proc *target_proc = NULL;
  2473		struct binder_thread *target_thread = NULL;
  2474		struct binder_node *target_node = NULL;
  2475		struct binder_transaction *in_reply_to = NULL;
  2476		struct binder_transaction_log_entry *e;
  2477		uint32_t return_error = 0;
  2478		uint32_t return_error_param = 0;
  2479		uint32_t return_error_line = 0;
  2480		binder_size_t last_fixup_obj_off = 0;
  2481		binder_size_t last_fixup_min_off = 0;
  2482		struct binder_context *context = proc->context;
  2483		int t_debug_id = atomic_inc_return(&binder_last_id);
  2484		char *secctx = NULL;
  2485		u32 secctx_sz = 0;
  2486		const void __user *user_buffer = (const void __user *)
  2487					(uintptr_t)tr->data.ptr.buffer;
  2488	
  2489		e = binder_transaction_log_add(&binder_transaction_log);
  2490		e->debug_id = t_debug_id;
  2491		e->call_type = reply ? 2 : !!(tr->flags & TF_ONE_WAY);
  2492		e->from_proc = proc->pid;
  2493		e->from_thread = thread->pid;
  2494		e->target_handle = tr->target.handle;
  2495		e->data_size = tr->data_size;
  2496		e->offsets_size = tr->offsets_size;
  2497		strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NAME);
  2498	
  2499		if (reply) {
  2500			binder_inner_proc_lock(proc);
  2501			in_reply_to = thread->transaction_stack;
  2502			if (in_reply_to == NULL) {
  2503				binder_inner_proc_unlock(proc);
  2504				binder_user_error("%d:%d got reply transaction with no transaction stack\n",
  2505						  proc->pid, thread->pid);
  2506				return_error = BR_FAILED_REPLY;
  2507				return_error_param = -EPROTO;
  2508				return_error_line = __LINE__;
  2509				goto err_empty_call_stack;
  2510			}
  2511			if (in_reply_to->to_thread != thread) {
  2512				spin_lock(&in_reply_to->lock);
  2513				binder_user_error("%d:%d got reply transaction with bad transaction stack, transaction %d has target %d:%d\n",
  2514					proc->pid, thread->pid, in_reply_to->debug_id,
  2515					in_reply_to->to_proc ?
  2516					in_reply_to->to_proc->pid : 0,
  2517					in_reply_to->to_thread ?
  2518					in_reply_to->to_thread->pid : 0);
  2519				spin_unlock(&in_reply_to->lock);
  2520				binder_inner_proc_unlock(proc);
  2521				return_error = BR_FAILED_REPLY;
  2522				return_error_param = -EPROTO;
  2523				return_error_line = __LINE__;
  2524				in_reply_to = NULL;
  2525				goto err_bad_call_stack;
  2526			}
  2527			thread->transaction_stack = in_reply_to->to_parent;
  2528			binder_inner_proc_unlock(proc);
  2529			binder_set_nice(in_reply_to->saved_priority);
  2530			target_thread = binder_get_txn_from_and_acq_inner(in_reply_to);
  2531			if (target_thread == NULL) {
  2532				/* annotation for sparse */
  2533				__release(&target_thread->proc->inner_lock);
  2534				return_error = BR_DEAD_REPLY;
  2535				return_error_line = __LINE__;
  2536				goto err_dead_binder;
  2537			}
  2538			if (target_thread->transaction_stack != in_reply_to) {
  2539				binder_user_error("%d:%d got reply transaction with bad target transaction stack %d, expected %d\n",
  2540					proc->pid, thread->pid,
  2541					target_thread->transaction_stack ?
  2542					target_thread->transaction_stack->debug_id : 0,
  2543					in_reply_to->debug_id);
  2544				binder_inner_proc_unlock(target_thread->proc);
  2545				return_error = BR_FAILED_REPLY;
  2546				return_error_param = -EPROTO;
  2547				return_error_line = __LINE__;
  2548				in_reply_to = NULL;
  2549				target_thread = NULL;
  2550				goto err_dead_binder;
  2551			}
  2552			target_proc = target_thread->proc;
  2553			target_proc->tmp_ref++;
  2554			binder_inner_proc_unlock(target_thread->proc);
  2555		} else {
  2556			if (tr->target.handle) {
  2557				struct binder_ref *ref;
  2558	
  2559				/*
  2560				 * There must already be a strong ref
  2561				 * on this node. If so, do a strong
  2562				 * increment on the node to ensure it
  2563				 * stays alive until the transaction is
  2564				 * done.
  2565				 */
  2566				binder_proc_lock(proc);
  2567				ref = binder_get_ref_olocked(proc, tr->target.handle,
  2568							     true);
  2569				if (ref) {
  2570					target_node = binder_get_node_refs_for_txn(
  2571							ref->node, &target_proc,
  2572							&return_error);
  2573				} else {
  2574					binder_user_error("%d:%d got transaction to invalid handle, %u\n",
  2575							  proc->pid, thread->pid, tr->target.handle);
  2576					return_error = BR_FAILED_REPLY;
  2577				}
  2578				binder_proc_unlock(proc);
  2579			} else {
  2580				mutex_lock(&context->context_mgr_node_lock);
  2581				target_node = context->binder_context_mgr_node;
  2582				if (target_node)
  2583					target_node = binder_get_node_refs_for_txn(
  2584							target_node, &target_proc,
  2585							&return_error);
  2586				else
  2587					return_error = BR_DEAD_REPLY;
  2588				mutex_unlock(&context->context_mgr_node_lock);
  2589				if (target_node && target_proc->pid == proc->pid) {
  2590					binder_user_error("%d:%d got transaction to context manager from process owning it\n",
  2591							  proc->pid, thread->pid);
  2592					return_error = BR_FAILED_REPLY;
  2593					return_error_param = -EINVAL;
  2594					return_error_line = __LINE__;
  2595					goto err_invalid_target_handle;
  2596				}
  2597			}
  2598			if (!target_node) {
  2599				/*
  2600				 * return_error is set above
  2601				 */
  2602				return_error_param = -EINVAL;
  2603				return_error_line = __LINE__;
  2604				goto err_dead_binder;
  2605			}
  2606			e->to_node = target_node->debug_id;
  2607			if (WARN_ON(proc == target_proc)) {
  2608				return_error = BR_FAILED_REPLY;
  2609				return_error_param = -EINVAL;
  2610				return_error_line = __LINE__;
  2611				goto err_invalid_target_handle;
  2612			}
  2613			if (security_binder_transaction(proc->cred,
  2614							target_proc->cred) < 0) {
  2615				return_error = BR_FAILED_REPLY;
  2616				return_error_param = -EPERM;
  2617				return_error_line = __LINE__;
  2618				goto err_invalid_target_handle;
  2619			}
  2620			binder_inner_proc_lock(proc);
  2621	
  2622			w = list_first_entry_or_null(&thread->todo,
  2623						     struct binder_work, entry);
  2624			if (!(tr->flags & TF_ONE_WAY) && w &&
  2625			    w->type == BINDER_WORK_TRANSACTION) {
  2626				/*
  2627				 * Do not allow new outgoing transaction from a
  2628				 * thread that has a transaction at the head of
  2629				 * its todo list. Only need to check the head
  2630				 * because binder_select_thread_ilocked picks a
  2631				 * thread from proc->waiting_threads to enqueue
  2632				 * the transaction, and nothing is queued to the
  2633				 * todo list while the thread is on waiting_threads.
  2634				 */
  2635				binder_user_error("%d:%d new transaction not allowed when there is a transaction on thread todo\n",
  2636						  proc->pid, thread->pid);
  2637				binder_inner_proc_unlock(proc);
  2638				return_error = BR_FAILED_REPLY;
  2639				return_error_param = -EPROTO;
  2640				return_error_line = __LINE__;
  2641				goto err_bad_todo_list;
  2642			}
  2643	
  2644			if (!(tr->flags & TF_ONE_WAY) && thread->transaction_stack) {
  2645				struct binder_transaction *tmp;
  2646	
  2647				tmp = thread->transaction_stack;
  2648				if (tmp->to_thread != thread) {
  2649					spin_lock(&tmp->lock);
  2650					binder_user_error("%d:%d got new transaction with bad transaction stack, transaction %d has target %d:%d\n",
  2651						proc->pid, thread->pid, tmp->debug_id,
  2652						tmp->to_proc ? tmp->to_proc->pid : 0,
  2653						tmp->to_thread ?
  2654						tmp->to_thread->pid : 0);
  2655					spin_unlock(&tmp->lock);
  2656					binder_inner_proc_unlock(proc);
  2657					return_error = BR_FAILED_REPLY;
  2658					return_error_param = -EPROTO;
  2659					return_error_line = __LINE__;
  2660					goto err_bad_call_stack;
  2661				}
  2662				while (tmp) {
  2663					struct binder_thread *from;
  2664	
  2665					spin_lock(&tmp->lock);
  2666					from = tmp->from;
  2667					if (from && from->proc == target_proc) {
  2668						atomic_inc(&from->tmp_ref);
  2669						target_thread = from;
  2670						spin_unlock(&tmp->lock);
  2671						break;
  2672					}
  2673					spin_unlock(&tmp->lock);
  2674					tmp = tmp->from_parent;
  2675				}
  2676			}
  2677			binder_inner_proc_unlock(proc);
  2678		}
  2679		if (target_thread)
  2680			e->to_thread = target_thread->pid;
  2681		e->to_proc = target_proc->pid;
  2682	
  2683		/* TODO: reuse incoming transaction for reply */
  2684		t = kzalloc(sizeof(*t), GFP_KERNEL);
  2685		if (t == NULL) {
  2686			return_error = BR_FAILED_REPLY;
  2687			return_error_param = -ENOMEM;
  2688			return_error_line = __LINE__;
  2689			goto err_alloc_t_failed;
  2690		}
  2691		INIT_LIST_HEAD(&t->fd_fixups);
  2692		binder_stats_created(BINDER_STAT_TRANSACTION);
  2693		spin_lock_init(&t->lock);
  2694	
  2695		tcomplete = kzalloc(sizeof(*tcomplete), GFP_KERNEL);
  2696		if (tcomplete == NULL) {
  2697			return_error = BR_FAILED_REPLY;
  2698			return_error_param = -ENOMEM;
  2699			return_error_line = __LINE__;
  2700			goto err_alloc_tcomplete_failed;
  2701		}
  2702		binder_stats_created(BINDER_STAT_TRANSACTION_COMPLETE);
  2703	
  2704		t->debug_id = t_debug_id;
  2705	
  2706		if (reply)
  2707			binder_debug(BINDER_DEBUG_TRANSACTION,
  2708				     "%d:%d BC_REPLY %d -> %d:%d, data %016llx-%016llx size %lld-%lld-%lld\n",
  2709				     proc->pid, thread->pid, t->debug_id,
  2710				     target_proc->pid, target_thread->pid,
> 2711				     (u64)user_buffer,
  2712				     (u64)tr->data.ptr.offsets,
  2713				     (u64)tr->data_size, (u64)tr->offsets_size,
  2714				     (u64)extra_buffers_size);
  2715		else
  2716			binder_debug(BINDER_DEBUG_TRANSACTION,
  2717				     "%d:%d BC_TRANSACTION %d -> %d - node %d, data %016llx-%016llx size %lld-%lld-%lld\n",
  2718				     proc->pid, thread->pid, t->debug_id,
  2719				     target_proc->pid, target_node->debug_id,
  2720				     (u64)user_buffer,
  2721				     (u64)tr->data.ptr.offsets,
  2722				     (u64)tr->data_size, (u64)tr->offsets_size,
  2723				     (u64)extra_buffers_size);
  2724	
  2725		if (!reply && !(tr->flags & TF_ONE_WAY))
  2726			t->from = thread;
  2727		else
  2728			t->from = NULL;
  2729		t->sender_euid = proc->cred->euid;
  2730		t->to_proc = target_proc;
  2731		t->to_thread = target_thread;
  2732		t->code = tr->code;
  2733		t->flags = tr->flags;
  2734		t->priority = task_nice(current);
  2735	
  2736		if (target_node && target_node->txn_security_ctx) {
  2737			u32 secid;
  2738			size_t added_size;
  2739	
  2740			security_cred_getsecid(proc->cred, &secid);
  2741			ret = security_secid_to_secctx(secid, &secctx, &secctx_sz);
  2742			if (ret) {
  2743				return_error = BR_FAILED_REPLY;
  2744				return_error_param = ret;
  2745				return_error_line = __LINE__;
  2746				goto err_get_secctx_failed;
  2747			}
  2748			added_size = ALIGN(secctx_sz, sizeof(u64));
  2749			extra_buffers_size += added_size;
  2750			if (extra_buffers_size < added_size) {
  2751				/* integer overflow of extra_buffers_size */
  2752				return_error = BR_FAILED_REPLY;
  2753				return_error_param = -EINVAL;
  2754				return_error_line = __LINE__;
  2755				goto err_bad_extra_size;
  2756			}
  2757		}
  2758	
  2759		trace_binder_transaction(reply, t, target_node);
  2760	
  2761		t->buffer = binder_alloc_new_buf(&target_proc->alloc, tr->data_size,
  2762			tr->offsets_size, extra_buffers_size,
  2763			!reply && (t->flags & TF_ONE_WAY), current->tgid);
  2764		if (IS_ERR(t->buffer)) {
  2765			/*
  2766			 * -ESRCH indicates VMA cleared. The target is dying.
  2767			 */
  2768			return_error_param = PTR_ERR(t->buffer);
  2769			return_error = return_error_param == -ESRCH ?
  2770				BR_DEAD_REPLY : BR_FAILED_REPLY;
  2771			return_error_line = __LINE__;
  2772			t->buffer = NULL;
  2773			goto err_binder_alloc_buf_failed;
  2774		}
  2775		if (secctx) {
  2776			int err;
  2777			size_t buf_offset = ALIGN(tr->data_size, sizeof(void *)) +
  2778					    ALIGN(tr->offsets_size, sizeof(void *)) +
  2779					    ALIGN(extra_buffers_size, sizeof(void *)) -
  2780					    ALIGN(secctx_sz, sizeof(u64));
  2781	
  2782			t->security_ctx = (uintptr_t)t->buffer->user_data + buf_offset;
  2783			err = binder_alloc_copy_to_buffer(&target_proc->alloc,
  2784							  t->buffer, buf_offset,
  2785							  secctx, secctx_sz);
  2786			if (err) {
  2787				t->security_ctx = 0;
  2788				WARN_ON(1);
  2789			}
  2790			security_release_secctx(secctx, secctx_sz);
  2791			secctx = NULL;
  2792		}
  2793		t->buffer->debug_id = t->debug_id;
  2794		t->buffer->transaction = t;
  2795		t->buffer->target_node = target_node;
  2796		t->buffer->clear_on_free = !!(t->flags & TF_CLEAR_BUF);
  2797		trace_binder_transaction_alloc_buf(t->buffer);
  2798	
  2799		if (binder_alloc_copy_user_to_buffer(
  2800					&target_proc->alloc,
  2801					t->buffer,
  2802					ALIGN(tr->data_size, sizeof(void *)),
  2803					(const void __user *)
  2804						(uintptr_t)tr->data.ptr.offsets,
  2805					tr->offsets_size)) {
  2806			binder_user_error("%d:%d got transaction with invalid offsets ptr\n",
  2807					proc->pid, thread->pid);
  2808			return_error = BR_FAILED_REPLY;
  2809			return_error_param = -EFAULT;
  2810			return_error_line = __LINE__;
  2811			goto err_copy_data_failed;
  2812		}
  2813		if (!IS_ALIGNED(tr->offsets_size, sizeof(binder_size_t))) {
  2814			binder_user_error("%d:%d got transaction with invalid offsets size, %lld\n",
  2815					proc->pid, thread->pid, (u64)tr->offsets_size);
  2816			return_error = BR_FAILED_REPLY;
  2817			return_error_param = -EINVAL;
  2818			return_error_line = __LINE__;
  2819			goto err_bad_offset;
  2820		}
  2821		if (!IS_ALIGNED(extra_buffers_size, sizeof(u64))) {
  2822			binder_user_error("%d:%d got transaction with unaligned buffers size, %lld\n",
  2823					  proc->pid, thread->pid,
  2824					  (u64)extra_buffers_size);
  2825			return_error = BR_FAILED_REPLY;
  2826			return_error_param = -EINVAL;
  2827			return_error_line = __LINE__;
  2828			goto err_bad_offset;
  2829		}
  2830		off_start_offset = ALIGN(tr->data_size, sizeof(void *));
  2831		buffer_offset = off_start_offset;
  2832		off_end_offset = off_start_offset + tr->offsets_size;
  2833		sg_buf_offset = ALIGN(off_end_offset, sizeof(void *));
  2834		sg_buf_end_offset = sg_buf_offset + extra_buffers_size -
  2835			ALIGN(secctx_sz, sizeof(u64));
  2836		off_min = 0;
  2837		for (buffer_offset = off_start_offset; buffer_offset < off_end_offset;
  2838		     buffer_offset += sizeof(binder_size_t)) {
  2839			struct binder_object_header *hdr;
  2840			size_t object_size;
  2841			struct binder_object object;
  2842			binder_size_t object_offset;
  2843			binder_size_t copy_size;
  2844	
  2845			if (binder_alloc_copy_from_buffer(&target_proc->alloc,
  2846							  &object_offset,
  2847							  t->buffer,
  2848							  buffer_offset,
  2849							  sizeof(object_offset))) {
  2850				return_error = BR_FAILED_REPLY;
  2851				return_error_param = -EINVAL;
  2852				return_error_line = __LINE__;
  2853				goto err_bad_offset;
  2854			}
  2855	
  2856			/*
  2857			 * Copy the source user buffer up to the next object
  2858			 * that will be processed.
  2859			 */
  2860			copy_size = object_offset - user_offset;
  2861			if (copy_size && (user_offset > object_offset ||
  2862					binder_alloc_copy_user_to_buffer(
  2863						&target_proc->alloc,
  2864						t->buffer, user_offset,
  2865						user_buffer + user_offset,
  2866						copy_size))) {
  2867				binder_user_error("%d:%d got transaction with invalid data ptr\n",
  2868						proc->pid, thread->pid);
  2869				return_error = BR_FAILED_REPLY;
  2870				return_error_param = -EFAULT;
  2871				return_error_line = __LINE__;
  2872				goto err_copy_data_failed;
  2873			}
  2874			object_size = binder_get_object(target_proc, user_buffer,
  2875					t->buffer, object_offset, &object);
  2876			if (object_size == 0 || object_offset < off_min) {
  2877				binder_user_error("%d:%d got transaction with invalid offset (%lld, min %lld max %lld) or object.\n",
  2878						  proc->pid, thread->pid,
  2879						  (u64)object_offset,
  2880						  (u64)off_min,
  2881						  (u64)t->buffer->data_size);
  2882				return_error = BR_FAILED_REPLY;
  2883				return_error_param = -EINVAL;
  2884				return_error_line = __LINE__;
  2885				goto err_bad_offset;
  2886			}
  2887			/*
  2888			 * Set offset to the next buffer fragment to be
  2889			 * copied
  2890			 */
  2891			user_offset = object_offset + object_size;
  2892	
  2893			hdr = &object.hdr;
  2894			off_min = object_offset + object_size;
  2895			switch (hdr->type) {
  2896			case BINDER_TYPE_BINDER:
  2897			case BINDER_TYPE_WEAK_BINDER: {
  2898				struct flat_binder_object *fp;
  2899	
  2900				fp = to_flat_binder_object(hdr);
  2901				ret = binder_translate_binder(fp, t, thread);
  2902	
  2903				if (ret < 0 ||
  2904				    binder_alloc_copy_to_buffer(&target_proc->alloc,
  2905								t->buffer,
  2906								object_offset,
  2907								fp, sizeof(*fp))) {
  2908					return_error = BR_FAILED_REPLY;
  2909					return_error_param = ret;
  2910					return_error_line = __LINE__;
  2911					goto err_translate_failed;
  2912				}
  2913			} break;
  2914			case BINDER_TYPE_HANDLE:
  2915			case BINDER_TYPE_WEAK_HANDLE: {
  2916				struct flat_binder_object *fp;
  2917	
  2918				fp = to_flat_binder_object(hdr);
  2919				ret = binder_translate_handle(fp, t, thread);
  2920				if (ret < 0 ||
  2921				    binder_alloc_copy_to_buffer(&target_proc->alloc,
  2922								t->buffer,
  2923								object_offset,
  2924								fp, sizeof(*fp))) {
  2925					return_error = BR_FAILED_REPLY;
  2926					return_error_param = ret;
  2927					return_error_line = __LINE__;
  2928					goto err_translate_failed;
  2929				}
  2930			} break;
  2931	
  2932			case BINDER_TYPE_FD: {
  2933				struct binder_fd_object *fp = to_binder_fd_object(hdr);
  2934				binder_size_t fd_offset = object_offset +
  2935					(uintptr_t)&fp->fd - (uintptr_t)fp;
  2936				int ret = binder_translate_fd(fp->fd, fd_offset, t,
  2937							      thread, in_reply_to);
  2938	
  2939				fp->pad_binder = 0;
  2940				if (ret < 0 ||
  2941				    binder_alloc_copy_to_buffer(&target_proc->alloc,
  2942								t->buffer,
  2943								object_offset,
  2944								fp, sizeof(*fp))) {
  2945					return_error = BR_FAILED_REPLY;
  2946					return_error_param = ret;
  2947					return_error_line = __LINE__;
  2948					goto err_translate_failed;
  2949				}
  2950			} break;
  2951			case BINDER_TYPE_FDA: {
  2952				struct binder_object ptr_object;
  2953				binder_size_t parent_offset;
  2954				struct binder_fd_array_object *fda =
  2955					to_binder_fd_array_object(hdr);
  2956				size_t num_valid = (buffer_offset - off_start_offset) /
  2957							sizeof(binder_size_t);
  2958				struct binder_buffer_object *parent =
  2959					binder_validate_ptr(target_proc, t->buffer,
  2960							    &ptr_object, fda->parent,
  2961							    off_start_offset,
  2962							    &parent_offset,
  2963							    num_valid);
  2964				if (!parent) {
  2965					binder_user_error("%d:%d got transaction with invalid parent offset or type\n",
  2966							  proc->pid, thread->pid);
  2967					return_error = BR_FAILED_REPLY;
  2968					return_error_param = -EINVAL;
  2969					return_error_line = __LINE__;
  2970					goto err_bad_parent;
  2971				}
  2972				if (!binder_validate_fixup(target_proc, t->buffer,
  2973							   off_start_offset,
  2974							   parent_offset,
  2975							   fda->parent_offset,
  2976							   last_fixup_obj_off,
  2977							   last_fixup_min_off)) {
  2978					binder_user_error("%d:%d got transaction with out-of-order buffer fixup\n",
  2979							  proc->pid, thread->pid);
  2980					return_error = BR_FAILED_REPLY;
  2981					return_error_param = -EINVAL;
  2982					return_error_line = __LINE__;
  2983					goto err_bad_parent;
  2984				}
  2985				ret = binder_translate_fd_array(fda, parent, t, thread,
  2986								in_reply_to);
  2987				if (ret < 0 ||
  2988				    binder_alloc_copy_to_buffer(&target_proc->alloc,
  2989								t->buffer,
  2990								object_offset,
  2991								fda, sizeof(*fda))) {
  2992					return_error = BR_FAILED_REPLY;
  2993					return_error_param = ret;
  2994					return_error_line = __LINE__;
  2995					goto err_translate_failed;
  2996				}
  2997				last_fixup_obj_off = parent_offset;
  2998				last_fixup_min_off =
  2999					fda->parent_offset + sizeof(u32) * fda->num_fds;
  3000			} break;
  3001			case BINDER_TYPE_PTR: {
  3002				struct binder_buffer_object *bp =
  3003					to_binder_buffer_object(hdr);
  3004				size_t buf_left = sg_buf_end_offset - sg_buf_offset;
  3005				size_t num_valid;
  3006	
  3007				if (bp->length > buf_left) {
  3008					binder_user_error("%d:%d got transaction with too large buffer\n",
  3009							  proc->pid, thread->pid);
  3010					return_error = BR_FAILED_REPLY;
  3011					return_error_param = -EINVAL;
  3012					return_error_line = __LINE__;
  3013					goto err_bad_offset;
  3014				}
  3015				if (binder_alloc_copy_user_to_buffer(
  3016							&target_proc->alloc,
  3017							t->buffer,
  3018							sg_buf_offset,
  3019							(const void __user *)
  3020								(uintptr_t)bp->buffer,
  3021							bp->length)) {
  3022					binder_user_error("%d:%d got transaction with invalid offsets ptr\n",
  3023							  proc->pid, thread->pid);
  3024					return_error_param = -EFAULT;
  3025					return_error = BR_FAILED_REPLY;
  3026					return_error_line = __LINE__;
  3027					goto err_copy_data_failed;
  3028				}
  3029				/* Fixup buffer pointer to target proc address space */
  3030				bp->buffer = (uintptr_t)
  3031					t->buffer->user_data + sg_buf_offset;
  3032				sg_buf_offset += ALIGN(bp->length, sizeof(u64));
  3033	
  3034				num_valid = (buffer_offset - off_start_offset) /
  3035						sizeof(binder_size_t);
  3036				ret = binder_fixup_parent(t, thread, bp,
  3037							  off_start_offset,
  3038							  num_valid,
  3039							  last_fixup_obj_off,
  3040							  last_fixup_min_off);
  3041				if (ret < 0 ||
  3042				    binder_alloc_copy_to_buffer(&target_proc->alloc,
  3043								t->buffer,
  3044								object_offset,
  3045								bp, sizeof(*bp))) {
  3046					return_error = BR_FAILED_REPLY;
  3047					return_error_param = ret;
  3048					return_error_line = __LINE__;
  3049					goto err_translate_failed;
  3050				}
  3051				last_fixup_obj_off = object_offset;
  3052				last_fixup_min_off = 0;
  3053			} break;
  3054			default:
  3055				binder_user_error("%d:%d got transaction with invalid object type, %x\n",
  3056					proc->pid, thread->pid, hdr->type);
  3057				return_error = BR_FAILED_REPLY;
  3058				return_error_param = -EINVAL;
  3059				return_error_line = __LINE__;
  3060				goto err_bad_object_type;
  3061			}
  3062		}
  3063		/* Done processing objects, copy the rest of the buffer */
  3064		if (binder_alloc_copy_user_to_buffer(
  3065					&target_proc->alloc,
  3066					t->buffer, user_offset,
  3067					user_buffer + user_offset,
  3068					tr->data_size - user_offset)) {
  3069			binder_user_error("%d:%d got transaction with invalid data ptr\n",
  3070					proc->pid, thread->pid);
  3071			return_error = BR_FAILED_REPLY;
  3072			return_error_param = -EFAULT;
  3073			return_error_line = __LINE__;
  3074			goto err_copy_data_failed;
  3075		}
  3076		if (t->buffer->oneway_spam_suspect)
  3077			tcomplete->type = BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT;
  3078		else
  3079			tcomplete->type = BINDER_WORK_TRANSACTION_COMPLETE;
  3080		t->work.type = BINDER_WORK_TRANSACTION;
  3081	
  3082		if (reply) {
  3083			binder_enqueue_thread_work(thread, tcomplete);
  3084			binder_inner_proc_lock(target_proc);
  3085			if (target_thread->is_dead) {
  3086				return_error = BR_DEAD_REPLY;
  3087				binder_inner_proc_unlock(target_proc);
  3088				goto err_dead_proc_or_thread;
  3089			}
  3090			BUG_ON(t->buffer->async_transaction != 0);
  3091			binder_pop_transaction_ilocked(target_thread, in_reply_to);
  3092			binder_enqueue_thread_work_ilocked(target_thread, &t->work);
  3093			target_proc->outstanding_txns++;
  3094			binder_inner_proc_unlock(target_proc);
  3095			wake_up_interruptible_sync(&target_thread->wait);
  3096			binder_free_transaction(in_reply_to);
  3097		} else if (!(t->flags & TF_ONE_WAY)) {
  3098			BUG_ON(t->buffer->async_transaction != 0);
  3099			binder_inner_proc_lock(proc);
  3100			/*
  3101			 * Defer the TRANSACTION_COMPLETE, so we don't return to
  3102			 * userspace immediately; this allows the target process to
  3103			 * immediately start processing this transaction, reducing
  3104			 * latency. We will then return the TRANSACTION_COMPLETE when
  3105			 * the target replies (or there is an error).
  3106			 */
  3107			binder_enqueue_deferred_thread_work_ilocked(thread, tcomplete);
  3108			t->need_reply = 1;
  3109			t->from_parent = thread->transaction_stack;
  3110			thread->transaction_stack = t;
  3111			binder_inner_proc_unlock(proc);
  3112			return_error = binder_proc_transaction(t,
  3113					target_proc, target_thread);
  3114			if (return_error) {
  3115				binder_inner_proc_lock(proc);
  3116				binder_pop_transaction_ilocked(thread, t);
  3117				binder_inner_proc_unlock(proc);
  3118				goto err_dead_proc_or_thread;
  3119			}
  3120		} else {
  3121			BUG_ON(target_node == NULL);
  3122			BUG_ON(t->buffer->async_transaction != 1);
  3123			binder_enqueue_thread_work(thread, tcomplete);
  3124			return_error = binder_proc_transaction(t, target_proc, NULL);
  3125			if (return_error)
  3126				goto err_dead_proc_or_thread;
  3127		}
  3128		if (target_thread)
  3129			binder_thread_dec_tmpref(target_thread);
  3130		binder_proc_dec_tmpref(target_proc);
  3131		if (target_node)
  3132			binder_dec_node_tmpref(target_node);
  3133		/*
  3134		 * write barrier to synchronize with initialization
  3135		 * of log entry
  3136		 */
  3137		smp_wmb();
  3138		WRITE_ONCE(e->debug_id_done, t_debug_id);
  3139		return;
  3140	
  3141	err_dead_proc_or_thread:
  3142		return_error_line = __LINE__;
  3143		binder_dequeue_work(proc, tcomplete);
  3144	err_translate_failed:
  3145	err_bad_object_type:
  3146	err_bad_offset:
  3147	err_bad_parent:
  3148	err_copy_data_failed:
  3149		binder_free_txn_fixups(t);
  3150		trace_binder_transaction_failed_buffer_release(t->buffer);
  3151		binder_transaction_buffer_release(target_proc, NULL, t->buffer,
  3152						  buffer_offset, true);
  3153		if (target_node)
  3154			binder_dec_node_tmpref(target_node);
  3155		target_node = NULL;
  3156		t->buffer->transaction = NULL;
  3157		binder_alloc_free_buf(&target_proc->alloc, t->buffer);
  3158	err_binder_alloc_buf_failed:
  3159	err_bad_extra_size:
  3160		if (secctx)
  3161			security_release_secctx(secctx, secctx_sz);
  3162	err_get_secctx_failed:
  3163		kfree(tcomplete);
  3164		binder_stats_deleted(BINDER_STAT_TRANSACTION_COMPLETE);
  3165	err_alloc_tcomplete_failed:
  3166		if (trace_binder_txn_latency_free_enabled())
  3167			binder_txn_latency_free(t);
  3168		kfree(t);
  3169		binder_stats_deleted(BINDER_STAT_TRANSACTION);
  3170	err_alloc_t_failed:
  3171	err_bad_todo_list:
  3172	err_bad_call_stack:
  3173	err_empty_call_stack:
  3174	err_dead_binder:
  3175	err_invalid_target_handle:
  3176		if (target_thread)
  3177			binder_thread_dec_tmpref(target_thread);
  3178		if (target_proc)
  3179			binder_proc_dec_tmpref(target_proc);
  3180		if (target_node) {
  3181			binder_dec_node(target_node, 1, 0);
  3182			binder_dec_node_tmpref(target_node);
  3183		}
  3184	
  3185		binder_debug(BINDER_DEBUG_FAILED_TRANSACTION,
  3186			     "%d:%d transaction failed %d/%d, size %lld-%lld line %d\n",
  3187			     proc->pid, thread->pid, return_error, return_error_param,
  3188			     (u64)tr->data_size, (u64)tr->offsets_size,
  3189			     return_error_line);
  3190	
  3191		{
  3192			struct binder_transaction_log_entry *fe;
  3193	
  3194			e->return_error = return_error;
  3195			e->return_error_param = return_error_param;
  3196			e->return_error_line = return_error_line;
  3197			fe = binder_transaction_log_add(&binder_transaction_log_failed);
  3198			*fe = *e;
  3199			/*
  3200			 * write barrier to synchronize with initialization
  3201			 * of log entry
  3202			 */
  3203			smp_wmb();
  3204			WRITE_ONCE(e->debug_id_done, t_debug_id);
  3205			WRITE_ONCE(fe->debug_id_done, t_debug_id);
  3206		}
  3207	
  3208		BUG_ON(thread->return_error.cmd != BR_OK);
  3209		if (in_reply_to) {
  3210			thread->return_error.cmd = BR_TRANSACTION_COMPLETE;
  3211			binder_enqueue_thread_work(thread, &thread->return_error.work);
  3212			binder_send_failed_reply(in_reply_to, return_error);
  3213		} else {
  3214			thread->return_error.cmd = return_error;
  3215			binder_enqueue_thread_work(thread, &thread->return_error.work);
  3216		}
  3217	}
  3218	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
