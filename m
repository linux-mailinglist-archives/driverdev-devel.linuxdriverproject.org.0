Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BA56236BE
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Nov 2022 23:43:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4790F607BC;
	Wed,  9 Nov 2022 22:43:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4790F607BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dny78cvvPgqI; Wed,  9 Nov 2022 22:43:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C87A660774;
	Wed,  9 Nov 2022 22:43:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C87A660774
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CFD031BF308
 for <devel@linuxdriverproject.org>; Wed,  9 Nov 2022 22:43:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B84B160750
 for <devel@linuxdriverproject.org>; Wed,  9 Nov 2022 22:43:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B84B160750
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qlf7NRKjaCEY for <devel@linuxdriverproject.org>;
 Wed,  9 Nov 2022 22:43:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 346F260625
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 346F260625
 for <devel@driverdev.osuosl.org>; Wed,  9 Nov 2022 22:43:45 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id y13so83002pfp.7
 for <devel@driverdev.osuosl.org>; Wed, 09 Nov 2022 14:43:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=gERt6h/ap8XHsVXDTKbPJYqRBL/jF7bzhvkaukkk6Qw=;
 b=IHxRzDtPtuO5vZ9JJiMmT7fFMyvB7BOg2I11PC/6SBSOqR8VTe+99bW36pyn+++Z4U
 mIEqBJResScwVZWtWWkke3PFPgO8q0/bkMrR3avuZjXPzu+XJW6f3B9eu/gMgae4ygQe
 naq8/9Qm8RO09GDYa9MVx3krp2mbaPF+Ub/aXTohjxWFvoUTpobdn+x7cjWqAg37iwVs
 U/g6bmGfdWZJ/tGh+W0uy0z/vBZSbSATiGRDXA6cOtpRJXzJQyp0CbBPrFKluE/3iHei
 FBzDdwVLx6AsrGEhQd3m8Rd8+alCmt/NbwQ7zbjXnGQYfuFgE9bGbMQFuVherWeyZvDY
 CbtQ==
X-Gm-Message-State: ACrzQf3DCayoulEl5hepdjFukK/yIU3lkL5TmqT2wJocnlny7+O4/pID
 EfMobV4ZrIViIcKlqPkpKBJg1Q==
X-Google-Smtp-Source: AMsMyM4vl0uMbAXjvECvZJb6ZCbCJxxPS+izkZIRDQPAbvlOJ7Aw3tNzOwaXDdpTrWoaZaluogtGXA==
X-Received: by 2002:a65:4c0e:0:b0:46a:eeb1:e78a with SMTP id
 u14-20020a654c0e000000b0046aeeb1e78amr53640227pgq.193.1668033824427; 
 Wed, 09 Nov 2022 14:43:44 -0800 (PST)
Received: from google.com (157.214.185.35.bc.googleusercontent.com.
 [35.185.214.157]) by smtp.gmail.com with ESMTPSA id
 c13-20020aa7952d000000b0056c360af4e3sm8798683pfp.9.2022.11.09.14.43.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Nov 2022 14:43:43 -0800 (PST)
Date: Wed, 9 Nov 2022 22:43:40 +0000
From: Carlos Llamas <cmllamas@google.com>
To: Li Li <dualli@chromium.org>
Subject: Re: [PATCH v1 1/1] binder: return pending info for frozen async txns
Message-ID: <Y2wtHBPMyxfkKiSg@google.com>
References: <20221103190549.3446167-1-dualli@chromium.org>
 <20221103190549.3446167-2-dualli@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221103190549.3446167-2-dualli@chromium.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=gERt6h/ap8XHsVXDTKbPJYqRBL/jF7bzhvkaukkk6Qw=;
 b=mWvsHi3syvtdYmcYucOn75lrcunBDJSTaklSxe1mUeJ9sUHjr818yQOUISLHzaUnq4
 fP/uaWa40BGQyjTLGUZD/2W+xKQ5ygP/Rq40sm1mG4tMFAiEKh9HQrhaUL0MVqzHOT8U
 UGzZrBdTx0kpP8wTGcVXfivk3pDo2Cn3IER7cctkbrtRwdErrioynfY/mgFfC79aPiay
 ur9leRBSUIfoY7CwZJk7YRMDaIfeyNG+S3InRWkD9zWeugu0x3zdD3F3j1b8kvaxuIHD
 cDkW8rQ96jHytr7laT1i0Y7JswIVwjz+wuY+5Xf5eKNg5RBVMdubytf+XrinucJjEEBU
 MRSg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20210112 header.b=mWvsHi3s
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

On Thu, Nov 03, 2022 at 12:05:49PM -0700, Li Li wrote:
> From: Li Li <dualli@google.com>
> 
> An async transaction to a frozen process will still be successsfully

nit: sucessfully typo

> put in the queue. But this pending async transaction won't be processed
> until the target process is unfrozen at an unspecified time in the
> future. Pass this important information back to the user space caller
> by returning BR_TRANSACTION_PENDING.
> 
> Signed-off-by: Li Li <dualli@google.com>
> ---
>  drivers/android/binder.c            | 23 ++++++++++++++++++++---
>  drivers/android/binder_internal.h   |  3 ++-
>  include/uapi/linux/android/binder.h |  7 ++++++-
>  3 files changed, 28 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index 880224ec6abb..a097b89f6a7a 100644
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
> @@ -2807,6 +2810,9 @@ static int binder_proc_transaction(struct binder_transaction *t,
>  		binder_stats_deleted(BINDER_STAT_TRANSACTION);
>  	}
>  
> +	if (oneway && proc->is_frozen)

Do you need the inner lock here for proc->is_frozen?

> +		return BR_TRANSACTION_PENDING;
> +
>  	return 0;
>  }
>  
> @@ -3607,9 +3613,16 @@ static void binder_transaction(struct binder_proc *proc,
>  	} else {
>  		BUG_ON(target_node == NULL);
>  		BUG_ON(t->buffer->async_transaction != 1);
> -		binder_enqueue_thread_work(thread, tcomplete);
>  		return_error = binder_proc_transaction(t, target_proc, NULL);
> -		if (return_error)
> +		/*
> +		 * Let the caller know its async transaction reaches a frozen

nit: I believe you meant s/its/when or similar?

> +		 * process and is put in a pending queue, waiting for the target
> +		 * process to be unfrozen.
> +		 */
> +		if (return_error == BR_TRANSACTION_PENDING)
> +			tcomplete->type = BINDER_WORK_TRANSACTION_PENDING;
> +		binder_enqueue_thread_work(thread, tcomplete);

I wonder if switching the order of queuing the tcomplete here and waking
up the target thread inside binder_proc_transaction() will have any
performance implications if this task gets scheduled out.

> +		if (return_error && return_error != BR_TRANSACTION_PENDING)
>  			goto err_dead_proc_or_thread;
>  	}
>  	if (target_thread)
> @@ -4440,10 +4453,13 @@ static int binder_thread_read(struct binder_proc *proc,
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
> @@ -6170,6 +6186,7 @@ static const char * const binder_return_strings[] = {
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
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
