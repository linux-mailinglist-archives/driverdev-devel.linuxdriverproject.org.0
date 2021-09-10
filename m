Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E32EF4066DF
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Sep 2021 07:38:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 230FC6063D;
	Fri, 10 Sep 2021 05:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dDMOJm5VV8s0; Fri, 10 Sep 2021 05:38:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FA8060644;
	Fri, 10 Sep 2021 05:38:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A94D91BF859
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 05:38:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 97A7940326
 for <devel@linuxdriverproject.org>; Fri, 10 Sep 2021 05:38:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1FsZLKHvMziW for <devel@linuxdriverproject.org>;
 Fri, 10 Sep 2021 05:38:16 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 962354031B
 for <devel@driverdev.osuosl.org>; Fri, 10 Sep 2021 05:38:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 884B9610A4;
 Fri, 10 Sep 2021 05:38:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1631252296;
 bh=UkvzRsFG9WTg1yXv7VFyTbQl8WUU/1hcYazJMYgXs3Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0Yn70zDDQH3hEZCqTWA55JqRaFgOh+xxJANfCfTkEttvL9q2YJm0Jly/xbAlNc+1a
 p6S+rn7ujgWEhtceYi390v5MwC7xhvbRyLyjoGyrnegkT2SQ1kkNg/ydAnl5oVhboh
 Tt6opXU792IwGtzlJ7ZbQ0pfEKNUgKK6i/AxDeB4=
Date: Fri, 10 Sep 2021 07:37:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v2 1/1] binder: fix freeze race
Message-ID: <YTrvMSm2oB91IhuK@kroah.com>
References: <20210910035316.2873554-1-dualli@chromium.org>
 <20210910035316.2873554-2-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210910035316.2873554-2-dualli@chromium.org>
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, kernel-team@android.com,
 linux-kernel@vger.kernel.org, joel@joelfernandes.org, arve@android.com,
 maco@google.com, hridya@google.com, surenb@google.com, christian@brauner.io,
 tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Sep 09, 2021 at 08:53:16PM -0700, Li Li wrote:
> From: Li Li <dualli@google.com>
> 
> Currently cgroup freezer is used to freeze the application threads, and
> BINDER_FREEZE is used to freeze the corresponding binder interface.
> There's already a mechanism in ioctl(BINDER_FREEZE) to wait for any
> existing transactions to drain out before actually freezing the binder
> interface.
> 
> But freezing an app requires 2 steps, freezing the binder interface with
> ioctl(BINDER_FREEZE) and then freezing the application main threads with
> cgroupfs. This is not an atomic operation. The following race issue
> might happen.
> 
> 1) Binder interface is frozen by ioctl(BINDER_FREEZE);
> 2) Main thread A initiates a new sync binder transaction to process B;
> 3) Main thread A is frozen by "echo 1 > cgroup.freeze";
> 4) The response from process B reaches the frozen thread, which will
> unexpectedly fail.
> 
> This patch provides a mechanism to check if there's any new pending
> transaction happening between ioctl(BINDER_FREEZE) and freezing the
> main thread. If there's any, the main thread freezing operation can
> be rolled back to finish the pending transaction.
> 
> Furthermore, the response might reach the binder driver before the
> rollback actually happens. That will still cause failed transaction.
> 
> As the other process doesn't wait for another response of the response,
> the response transaction failure can be fixed by treating the response
> transaction like an oneway/async one, allowing it to reach the frozen
> thread. And it will be consumed when the thread gets unfrozen later.
> 
> Fixes: 432ff1e91694 ("binder: BINDER_FREEZE ioctl")
> Signed-off-by: Li Li <dualli@google.com>
> ---
>  drivers/android/binder.c            | 34 +++++++++++++++++++++++++----
>  drivers/android/binder_internal.h   |  2 ++
>  include/uapi/linux/android/binder.h |  7 ++++++
>  3 files changed, 39 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index d9030cb6b1e4..eaffdf5f692c 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -3038,9 +3038,8 @@ static void binder_transaction(struct binder_proc *proc,
>  	if (reply) {
>  		binder_enqueue_thread_work(thread, tcomplete);
>  		binder_inner_proc_lock(target_proc);
> -		if (target_thread->is_dead || target_proc->is_frozen) {
> -			return_error = target_thread->is_dead ?
> -				BR_DEAD_REPLY : BR_FROZEN_REPLY;
> +		if (target_thread->is_dead) {
> +			return_error = BR_DEAD_REPLY;
>  			binder_inner_proc_unlock(target_proc);
>  			goto err_dead_proc_or_thread;
>  		}
> @@ -4648,6 +4647,22 @@ static int binder_ioctl_get_node_debug_info(struct binder_proc *proc,
>  	return 0;
>  }
>  
> +static int binder_txns_pending_ilocked(struct binder_proc *proc)
> +{
> +	struct rb_node *n;
> +	struct binder_thread *thread;
> +
> +	if (proc->outstanding_txns > 0)
> +		return 1;
> +
> +	for (n = rb_first(&proc->threads); n; n = rb_next(n)) {
> +		thread = rb_entry(n, struct binder_thread, rb_node);
> +		if (thread->transaction_stack)
> +			return 1;
> +	}
> +	return 0;
> +}
> +
>  static int binder_ioctl_freeze(struct binder_freeze_info *info,
>  			       struct binder_proc *target_proc)
>  {
> @@ -4682,6 +4697,14 @@ static int binder_ioctl_freeze(struct binder_freeze_info *info,
>  	if (!ret && target_proc->outstanding_txns)
>  		ret = -EAGAIN;
>  
> +	/* Also check pending transactions that wait for reply */
> +	if (ret >= 0) {
> +		binder_inner_proc_lock(target_proc);
> +		if (binder_txns_pending_ilocked(target_proc))
> +			ret = -EAGAIN;
> +		binder_inner_proc_unlock(target_proc);
> +	}
> +
>  	if (ret < 0) {
>  		binder_inner_proc_lock(target_proc);
>  		target_proc->is_frozen = false;
> @@ -4696,6 +4719,7 @@ static int binder_ioctl_get_freezer_info(
>  {
>  	struct binder_proc *target_proc;
>  	bool found = false;
> +	int txns_pending;
>  
>  	info->sync_recv = 0;
>  	info->async_recv = 0;
> @@ -4705,7 +4729,9 @@ static int binder_ioctl_get_freezer_info(
>  		if (target_proc->pid == info->pid) {
>  			found = true;
>  			binder_inner_proc_lock(target_proc);
> -			info->sync_recv |= target_proc->sync_recv;
> +			txns_pending = binder_txns_pending_ilocked(target_proc);
> +			info->sync_recv |= target_proc->sync_recv |
> +					(txns_pending << 1);
>  			info->async_recv |= target_proc->async_recv;
>  			binder_inner_proc_unlock(target_proc);
>  		}
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index 810c0b84d3f8..402c4d4362a8 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -378,6 +378,8 @@ struct binder_ref {
>   *                        binder transactions
>   *                        (protected by @inner_lock)
>   * @sync_recv:            process received sync transactions since last frozen
> + *                        bit 0: received sync transaction after being frozen
> + *                        bit 1: new pending sync transaction during freezing
>   *                        (protected by @inner_lock)
>   * @async_recv:           process received async transactions since last frozen
>   *                        (protected by @inner_lock)
> diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
> index 20e435fe657a..3246f2c74696 100644
> --- a/include/uapi/linux/android/binder.h
> +++ b/include/uapi/linux/android/binder.h
> @@ -225,7 +225,14 @@ struct binder_freeze_info {
>  
>  struct binder_frozen_status_info {
>  	__u32            pid;
> +
> +	/* process received sync transactions since last frozen
> +	 * bit 0: received sync transaction after being frozen
> +	 * bit 1: new pending sync transaction during freezing
> +	 */
>  	__u32            sync_recv;

You just changed a user/kernel api here, did you just break existing
userspace applications?  If not, how did that not happen?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
