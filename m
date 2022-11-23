Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 227B363695D
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Nov 2022 19:58:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01D81402AA;
	Wed, 23 Nov 2022 18:58:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01D81402AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HKRU0RoCCWMF; Wed, 23 Nov 2022 18:58:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E41440246;
	Wed, 23 Nov 2022 18:58:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E41440246
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C05021BF5A4
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 18:58:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9B28260804
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 18:58:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B28260804
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMTGwO5GaX2K for <devel@linuxdriverproject.org>;
 Wed, 23 Nov 2022 18:58:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7182C6060A
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7182C6060A
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 18:58:35 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 e7-20020a17090a77c700b00216928a3917so2935820pjs.4
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 10:58:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YWaagzOk9zMNOAZyOy8bc0Y6K7qbOoK1v1I3u1GoRaY=;
 b=DqSSDWyXvVBxCnwLPaPSCtDi8iWHwN9JesTcbEznjeXbxEG6lEywDyjXHnACk/irvV
 QBLlynTt4SpZeBctikHq2K9FN8t0rkSpEq8fCDv0E8onMWXT0yjQvKd+n8qb1Mnk3RK4
 UboMHcwGvBsnEu4aNq8Rs3jDfMxqXwTxYB2El69xl+QI4YFjfA4UWS43t9DKQFZC5YTL
 6CDztSOxt//955Ww2roj6elhgm6xNBwDdi+xsRUyfY0+IgiQMN2XXY91xRsRzfnzQGRm
 sUYkJhobU2dVvDqzYBs/PAUnnNwVd0dGvssIpD7YW8+0KmoeUES4X3v3w7PQH6Oxb9uM
 6+5w==
X-Gm-Message-State: ANoB5pn20wcHuU2lrdzbBuuKO3iwHnMeaHDMyuK4uCYDqvi/K7V2azQx
 pZtcDfwOyiqiNPLn9S8Q56sobw==
X-Google-Smtp-Source: AA0mqf7OGhN2Sbd8Zu7+aU+RUc2WvaTOwNsnDCTkd4g3Ryyd+PpuEsm3pw/YA91DXTCGn7HAW4WvVA==
X-Received: by 2002:a17:90b:1650:b0:218:6ad0:52c5 with SMTP id
 il16-20020a17090b165000b002186ad052c5mr4442697pjb.44.1669229914531; 
 Wed, 23 Nov 2022 10:58:34 -0800 (PST)
Received: from google.com (157.214.185.35.bc.googleusercontent.com.
 [35.185.214.157]) by smtp.gmail.com with ESMTPSA id
 h15-20020a170902f54f00b00188fdae6e0esm12868203plf.44.2022.11.23.10.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Nov 2022 10:58:33 -0800 (PST)
Date: Wed, 23 Nov 2022 18:58:29 +0000
From: Carlos Llamas <cmllamas@google.com>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v2 1/1] binder: return pending info for frozen async txns
Message-ID: <Y35tVQb2y+gRdfpb@google.com>
References: <20221110203405.611600-1-dualli@chromium.org>
 <20221110203405.611600-2-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221110203405.611600-2-dualli@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=YWaagzOk9zMNOAZyOy8bc0Y6K7qbOoK1v1I3u1GoRaY=;
 b=fubQIi5tXuVOsTMltBgdbbDO7JL8EXf+ZuG81LEBXYGXSGt/FhosagYWuqWGbyHuZm
 wcJ3YXMn7GJVVRq1joN1VjKjDv/xDjdUG/YXUCAZiiyOfJbwAOo1XhgM8sZs0L1ZwILI
 /fyklASZCe4JvuZXOYgEkwI9Vk5+caRcaG28YWOK1m/5yyRPI8sD+YhEkINd/ehGjGXI
 YKXTjdvema283kO9ooVfRo1JulkHNscysD0yakpqsixvNviWVZNAo4uYk5L7UigOw8IS
 8vsivNOcpQzFGMtIDro1CAFHH3/P2cmZnTSGZDbC+OMyGGxVTQUhiajl9hyesMTNNVLP
 SSkw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=fubQIi5t
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

On Thu, Nov 10, 2022 at 12:34:05PM -0800, Li Li wrote:
> From: Li Li <dualli@google.com>
> 
> An async transaction to a frozen process will still be successfully
> put in the queue. But this pending async transaction won't be processed
> until the target process is unfrozen at an unspecified time in the
> future. Pass this important information back to the user space caller
> by returning BR_TRANSACTION_PENDING.
> 
> Signed-off-by: Li Li <dualli@google.com>
> ---
>  drivers/android/binder.c            | 31 +++++++++++++++++++++++------
>  drivers/android/binder_internal.h   |  3 ++-
>  include/uapi/linux/android/binder.h |  7 ++++++-
>  3 files changed, 33 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 880224ec6abb..a798f6661488 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -2728,7 +2728,10 @@ binder_find_outdated_transaction_ilocked(struct binder_transaction *t,
>   *
>   * Return:	0 if the transaction was successfully queued
>   *		BR_DEAD_REPLY if the target process or thread is dead
> - *		BR_FROZEN_REPLY if the target process or thread is frozen
> + *		BR_FROZEN_REPLY if the target process or thread is frozen and
> + *			the sync transaction was rejected
> + *		BR_TRANSACTION_PENDING if the target process is frozen and the
> + *			async transaction was successfully queued
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
> +		return BR_TRANSACTION_PENDING;
> +
>  	return 0;
>  }
>  
> @@ -3607,9 +3615,16 @@ static void binder_transaction(struct binder_proc *proc,
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
> +		if (return_error == BR_TRANSACTION_PENDING)
> +			tcomplete->type = BINDER_WORK_TRANSACTION_PENDING;
> +		binder_enqueue_thread_work(thread, tcomplete);
> +		if (return_error && return_error != BR_TRANSACTION_PENDING)
>  			goto err_dead_proc_or_thread;
>  	}
>  	if (target_thread)
> @@ -4440,10 +4455,13 @@ static int binder_thread_read(struct binder_proc *proc,
>  			binder_stat_br(proc, thread, cmd);
>  		} break;
>  		case BINDER_WORK_TRANSACTION_COMPLETE:
> +		case BINDER_WORK_TRANSACTION_PENDING:
>  		case BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT: {
>  			if (proc->oneway_spam_detection_enabled &&
>  				   w->type == BINDER_WORK_TRANSACTION_ONEWAY_SPAM_SUSPECT)
>  				cmd = BR_ONEWAY_SPAM_SUSPECT;
> +			else if (w->type == BINDER_WORK_TRANSACTION_PENDING)
> +				cmd = BR_TRANSACTION_PENDING;
>  			else
>  				cmd = BR_TRANSACTION_COMPLETE;
>  			binder_inner_proc_unlock(proc);
> @@ -6170,6 +6188,7 @@ static const char * const binder_return_strings[] = {
>  	"BR_FAILED_REPLY",
>  	"BR_FROZEN_REPLY",
>  	"BR_ONEWAY_SPAM_SUSPECT",
> +	"BR_TRANSACTION_PENDING"
>  };
>  
>  static const char * const binder_command_strings[] = {
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index abe19d88c6ec..6c51325a826f 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -133,7 +133,7 @@ enum binder_stat_types {
>  };
>  
>  struct binder_stats {
> -	atomic_t br[_IOC_NR(BR_ONEWAY_SPAM_SUSPECT) + 1];
> +	atomic_t br[_IOC_NR(BR_TRANSACTION_PENDING) + 1];
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
> index e72e4de8f452..c21b3b3eb4e4 100644
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
> +	BR_TRANSACTION_PENDING = _IO('r', 20),
> +	/*
> +	 * The target of the last async transaction is frozen.  No parameters.
> +	 */
>  };
>  
>  enum binder_driver_command_protocol {
> -- 
> 2.38.1.431.g37b22c650d-goog
> 

This looks good. Could you rename the new op to signify the frozen
scenario though? We might have some other instances of pending
transactions in the future so might as well be specific here.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
