Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECC6637064
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Nov 2022 03:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B56778204F;
	Thu, 24 Nov 2022 02:25:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B56778204F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MIE_aBwMF_Zu; Thu, 24 Nov 2022 02:25:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49EDB81E4B;
	Thu, 24 Nov 2022 02:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49EDB81E4B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E884D1BF3EA
 for <devel@linuxdriverproject.org>; Thu, 24 Nov 2022 02:25:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C05C6404A0
 for <devel@linuxdriverproject.org>; Thu, 24 Nov 2022 02:25:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C05C6404A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n_S11sSUZxdJ for <devel@linuxdriverproject.org>;
 Thu, 24 Nov 2022 02:25:52 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 005FB4026A
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 005FB4026A
 for <devel@driverdev.osuosl.org>; Thu, 24 Nov 2022 02:25:51 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id z26so426081pff.1
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 18:25:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=OVyY+Lem6rXMPxrvGyjLojbHBN4Xv+GoXSLGi7mgKXY=;
 b=aVly1RusTiWqv91/ti6tweA4ALWEhNfrBZhNCLiPqqQPEPC/VajfLz9j21GN2PUs17
 KJfAGXAAgLR1iOXjVLEnf7evvGogi1vftSp7vedDQET2qPE1c0QkXU6yu3RBVcxDSyRo
 NQViqMsLEqoOv9pWqwDVUImCodQ5l/Q2WRduhwK2Dwa+FkiutTMWFClF/ktvHcMGRZfH
 JRJqtKVhG2YYOB7uRZt4rEeATl6mS5q0cj+xYrqR42EqMHMU+SLZhPZQUXNdL+kjgB3e
 JWPu2XJvjk7HsxBYIVzp7LVA/xvcLrhWpwC2EOdWywmwmL09SaK8VLIfprra57fdVr0z
 OUFw==
X-Gm-Message-State: ANoB5pn0bevQphrJXCbJJsApiX8PxAWEXSSNdQU0rEKzlVwAFCzL0vyd
 MwU4lWt98nNepGZUZlMe44g+0w==
X-Google-Smtp-Source: AA0mqf5BdxTMoVtYGUwM3RwLSzcZrKVZJvh0wJ8MrQKD4JwI0Zb2PUJX7R9atq9G1sjFRIG4OZG3jg==
X-Received: by 2002:a65:6753:0:b0:477:91c5:f9ff with SMTP id
 c19-20020a656753000000b0047791c5f9ffmr9748826pgu.403.1669256751095; 
 Wed, 23 Nov 2022 18:25:51 -0800 (PST)
Received: from google.com (157.214.185.35.bc.googleusercontent.com.
 [35.185.214.157]) by smtp.gmail.com with ESMTPSA id
 y29-20020aa79e1d000000b0056b6a22d6c9sm13381521pfq.212.2022.11.23.18.25.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Nov 2022 18:25:50 -0800 (PST)
Date: Thu, 24 Nov 2022 02:25:46 +0000
From: Carlos Llamas <cmllamas@google.com>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v3 1/1] binder: return pending info for frozen async txns
Message-ID: <Y37WKunJ+dyH+5rm@google.com>
References: <20221123201654.589322-1-dualli@chromium.org>
 <20221123201654.589322-2-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221123201654.589322-2-dualli@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=OVyY+Lem6rXMPxrvGyjLojbHBN4Xv+GoXSLGi7mgKXY=;
 b=oiWHzLAyEph13DDzdBgnL3FNBR2Sne/5z5Fw1aYajIzkCfD/JPJHUfbRXkjFXTNQo1
 vK1Ouu4xb7t5bDdhY1wfRZwwwCM/uyLoUr3SovcP3rY452vQgeUtxL/WdsmLdvppe//e
 S4cyNLEKvBaib7TWvwV9ldHI/AJcNT0bErJb8MWYCvl63hqZjjk9e5xJB1mGW1v+IOfy
 +RUuDtApDc4xfAh8Tmd+IMDKEcnYTLoJd21DYBRc3YZTW9cc/QA6d3dWJD6pp25nBDxh
 g2D6aXvFwJZbJ7LUzH1KXcr5KieZ3WMLabtpQb6aDfxyVyr5MDSggDBi33UqQJz0htI2
 DQrA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=oiWHzLAy
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, brauner@kernel.org,
 kernel-team@android.com, tkjos@android.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, masahiroy@kernel.org, linux-kernel@vger.kernel.org,
 surenb@google.com, hridya@google.com, arve@android.com, smoreland@google.com,
 joel@joelfernandes.org, maco@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 23, 2022 at 12:16:54PM -0800, Li Li wrote:
> From: Li Li <dualli@google.com>
> 
> An async transaction to a frozen process will still be successfully
> put in the queue. But this pending async transaction won't be processed
> until the target process is unfrozen at an unspecified time in the
> future. Pass this important information back to the user space caller
> by returning BR_TRANSACTION_PENDING_FROZEN.
> 
> Signed-off-by: Li Li <dualli@google.com>
> ---
>  drivers/android/binder.c            | 32 +++++++++++++++++++++++------
>  drivers/android/binder_internal.h   |  3 ++-
>  include/uapi/linux/android/binder.h |  7 ++++++-
>  3 files changed, 34 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 880224ec6abb..acd53147d5d1 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2728,7 +2728,10 @@ binder_find_outdated_transaction_ilocked(struct binder_transaction *t,
>   *
>   * Return:	0 if the transaction was successfully queued
>   *		BR_DEAD_REPLY if the target process or thread is dead
> - *		BR_FROZEN_REPLY if the target process or thread is frozen
> + *		BR_FROZEN_REPLY if the target process or thread is frozen and
> + *			the sync transaction was rejected
> + *		BR_TRANSACTION_PENDING_FROZEN if the target process is frozen
> + *		and the async transaction was successfully queued
>   */
>  static int binder_proc_transaction(struct binder_transaction *t,
>  				    struct binder_proc *proc,
> @@ -2738,6 +2741,7 @@ static int binder_proc_transaction(struct binder_transaction *t,
>  	bool oneway = !!(t->flags & TF_ONE_WAY);
>  	bool pending_async = false;
>  	struct binder_transaction *t_outdated = NULL;
> +	bool frozen = false;
>  
>  	BUG_ON(!node);
>  	binder_node_lock(node);
> @@ -2751,15 +2755,16 @@ static int binder_proc_transaction(struct binder_transaction *t,
>  
>  	binder_inner_proc_lock(proc);
>  	if (proc->is_frozen) {
> +		frozen = true;
>  		proc->sync_recv |= !oneway;
>  		proc->async_recv |= oneway;
>  	}
>  
> -	if ((proc->is_frozen && !oneway) || proc->is_dead ||
> +	if ((frozen && !oneway) || proc->is_dead ||
>  			(thread && thread->is_dead)) {
>  		binder_inner_proc_unlock(proc);
>  		binder_node_unlock(node);
> -		return proc->is_frozen ? BR_FROZEN_REPLY : BR_DEAD_REPLY;
> +		return frozen ? BR_FROZEN_REPLY : BR_DEAD_REPLY;
>  	}
>  
>  	if (!thread && !pending_async)
> @@ -2770,7 +2775,7 @@ static int binder_proc_transaction(struct binder_transaction *t,
>  	} else if (!pending_async) {
>  		binder_enqueue_work_ilocked(&t->work, &proc->todo);
>  	} else {
> -		if ((t->flags & TF_UPDATE_TXN) && proc->is_frozen) {
> +		if ((t->flags & TF_UPDATE_TXN) && frozen) {
>  			t_outdated = binder_find_outdated_transaction_ilocked(t,
>  									      &node->async_todo);
>  			if (t_outdated) {
> @@ -2807,6 +2812,9 @@ static int binder_proc_transaction(struct binder_transaction *t,
>  		binder_stats_deleted(BINDER_STAT_TRANSACTION);
>  	}
>  
> +	if (oneway && frozen)
> +		return BR_TRANSACTION_PENDING_FROZEN;
> +
>  	return 0;
>  }
>  
> @@ -3607,9 +3615,17 @@ static void binder_transaction(struct binder_proc *proc,
>  	} else {
>  		BUG_ON(target_node == NULL);
>  		BUG_ON(t->buffer->async_transaction != 1);
> -		binder_enqueue_thread_work(thread, tcomplete);
>  		return_error = binder_proc_transaction(t, target_proc, NULL);
> -		if (return_error)
> +		/*
> +		 * Let the caller know when async transaction reaches a frozen
> +		 * process and is put in a pending queue, waiting for the target
> +		 * process to be unfrozen.
> +		 */
> +		if (return_error == BR_TRANSACTION_PENDING_FROZEN)
> +			tcomplete->type = BINDER_WORK_TRANSACTION_PENDING;
> +		binder_enqueue_thread_work(thread, tcomplete);
> +		if (return_error &&
> +		    return_error != BR_TRANSACTION_PENDING_FROZEN)
>  			goto err_dead_proc_or_thread;
>  	}
>  	if (target_thread)
> @@ -4440,10 +4456,13 @@ static int binder_thread_read(struct binder_proc *proc,
>  			binder_stat_br(proc, thread, cmd);
>  		} break;
>  		case BINDER_WORK_TRANSACTION_COMPLETE:
> +		case BINDER_WORK_TRANSACTION_PENDING:
>  		case BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT: {
>  			if (proc->oneway_spam_detection_enabled &&
>  				   w->type == BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT)
>  				cmd = BR_ONEWAY_SPAM_SUSPECT;
> +			else if (w->type == BINDER_WORK_TRANSACTION_PENDING)
> +				cmd = BR_TRANSACTION_PENDING_FROZEN;
>  			else
>  				cmd = BR_TRANSACTION_COMPLETE;
>  			binder_inner_proc_unlock(proc);
> @@ -6170,6 +6189,7 @@ static const char * const binder_return_strings[] = {
>  	"BR_FAILED_REPLY",
>  	"BR_FROZEN_REPLY",
>  	"BR_ONEWAY_SPAM_SUSPECT",
> +	"BR_TRANSACTION_PENDING_FROZEN"
>  };
>  
>  static const char * const binder_command_strings[] = {
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index abe19d88c6ec..28ef5b3704b1 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -133,7 +133,7 @@ enum binder_stat_types {
>  };
>  
>  struct binder_stats {
> -	atomic_t br[_IOC_NR(BR_ONEWAY_SPAM_SUSPECT) + 1];
> +	atomic_t br[_IOC_NR(BR_TRANSACTION_PENDING_FROZEN) + 1];
>  	atomic_t bc[_IOC_NR(BC_REPLY_SG) + 1];
>  	atomic_t obj_created[BINDER_STAT_COUNT];
>  	atomic_t obj_deleted[BINDER_STAT_COUNT];
> @@ -152,6 +152,7 @@ struct binder_work {
>  	enum binder_work_type {
>  		BINDER_WORK_TRANSACTION = 1,
>  		BINDER_WORK_TRANSACTION_COMPLETE,
> +		BINDER_WORK_TRANSACTION_PENDING,
>  		BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT,
>  		BINDER_WORK_RETURN_ERROR,
>  		BINDER_WORK_NODE,
> diff --git a/include/uapi/linux/android/binder.h b/include/uapi/linux/android/binder.h
> index e72e4de8f452..5f636b5afcd7 100644
> --- a/include/uapi/linux/android/binder.h
> +++ b/include/uapi/linux/android/binder.h
> @@ -450,7 +450,7 @@ enum binder_driver_return_protocol {
>  
>  	BR_FROZEN_REPLY = _IO('r', 18),
>  	/*
> -	 * The target of the last transaction (either a bcTRANSACTION or
> +	 * The target of the last sync transaction (either a bcTRANSACTION or
>  	 * a bcATTEMPT_ACQUIRE) is frozen.  No parameters.
>  	 */
>  
> @@ -460,6 +460,11 @@ enum binder_driver_return_protocol {
>  	 * asynchronous transaction makes the allocated async buffer size exceed
>  	 * detection threshold.  No parameters.
>  	 */
> +
> +	BR_TRANSACTION_PENDING_FROZEN = _IO('r', 20),
> +	/*
> +	 * The target of the last async transaction is frozen.  No parameters.
> +	 */
>  };
>  
>  enum binder_driver_command_protocol {
> -- 
> 2.38.1.584.g0f3c55d4c2-goog
> 

Thanks!

Acked-by: Carlos Llamas <cmllamas@google.com>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
