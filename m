Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4834227A49A
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Sep 2020 01:45:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 622B184D3A;
	Sun, 27 Sep 2020 23:45:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vAHmbN3m6uDL; Sun, 27 Sep 2020 23:45:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4742B84D74;
	Sun, 27 Sep 2020 23:45:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 170F31BF3F2
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 23:45:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 11D0A84D3A
 for <devel@linuxdriverproject.org>; Sun, 27 Sep 2020 23:45:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GBN_yp8EZObw for <devel@linuxdriverproject.org>;
 Sun, 27 Sep 2020 23:45:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8E63284D24
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 23:45:40 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id 19so6901115qtp.1
 for <devel@driverdev.osuosl.org>; Sun, 27 Sep 2020 16:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=tSDcQVMN7OSefYaQRJavh4PNKyj+aE7l17gZX6vqy2g=;
 b=Et7buSuvXV8FImlTH0A/7XOT3AiflOc0i1zNuqP2R7mP+A/P/4DFPtmj32gP4SFE/c
 fl3E5qWR4R3tswV8Gh57njfLo874E0X12Iy2yrrl4BKP2YleXwVCSbwPjjCUeAAcs8KU
 /YNdbQWx8yWLzG8xW36LQKYsNOea1LcfK9Sis=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=tSDcQVMN7OSefYaQRJavh4PNKyj+aE7l17gZX6vqy2g=;
 b=cGdUEfJ7cBPzRz5wGcxmGiICF7SVCkmH75CSLAHJnHOv0TmeJY4TltjW2UWnk30mKV
 UjsYdSiaasxA6Yqldn5ijuRS4wtE6P7mVbjipiF3i3TCdgtqPU4/ft2Pf20zdB72rVYH
 YluQysueolXJYytsYArLNRJPdVUxukDCsS4mvB1Y5Ie3tkNNUIYlko8aCtXOazFG4cR/
 mYkZzPidWDjdMAHxXefYRKUrjO1V7WdiOWaMVQ/EsObnS8aT3NKfsQq9C3m0DhFynglG
 QgiIIlEcMUHrW7hCttA1AKe1nxbFrfPHxf/HyXCCIBhV71qkmUTm6dn/56ltdu6u9nBD
 GS4A==
X-Gm-Message-State: AOAM530khZg7NNgTOvMPKqRzCB3Wd4DFy6jYJLKsB7vKGu3piYDrUiN7
 zDI6w4KaCp0vUSzwlyATDg5vFyBImZbi8w==
X-Google-Smtp-Source: ABdhPJzbel8iRG/5FMUAafnXWEt73b/R8YnmLJW3y6N5/96FmKoZ+ejVBwfD6MUlmfeWZYZuf3sJrg==
X-Received: by 2002:a05:620a:211b:: with SMTP id
 l27mr9253503qkl.56.1601249972561; 
 Sun, 27 Sep 2020 16:39:32 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:cad3:ffff:feb3:bd59])
 by smtp.gmail.com with ESMTPSA id e23sm7474285qkl.67.2020.09.27.16.39.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Sep 2020 16:39:31 -0700 (PDT)
Date: Sun, 27 Sep 2020 19:39:31 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Subject: Re: [PATCH 07/11] drivers/android/binder: convert stats,
 transaction_log to counter_atomic32
Message-ID: <20200927233931.GB500818@google.com>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <ab2cb30977ac35cc172d30306da25178b742c328.1601073127.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab2cb30977ac35cc172d30306da25178b742c328.1601073127.git.skhan@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, keescook@chromium.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, surenb@google.com,
 arve@android.com, hridya@google.com, maco@android.com, christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Sep 25, 2020 at 05:47:21PM -0600, Shuah Khan wrote:
> counter_atomic* is introduced to be used when a variable is used as
> a simple counter and doesn't guard object lifetimes. This clearly
> differentiates atomic_t usages that guard object lifetimes.
> 
> counter_atomic* variables will wrap around to 0 when it overflows and
> should not be used to guard resource lifetimes, device usage and
> open counts that control state changes, and pm states.
> 
> stats tracks per-process binder statistics. Unsure if there is a chance
> of this overflowing, other than stats getting reset to 0. Convert it to
> use counter_atomic.
> 
> binder_transaction_log:cur is used to keep track of the current log entry
> location. Overflow is handled in the code. Since it is used as a
> counter, convert it to use counter_atomic32.
> 
> This conversion doesn't change the overflow wrap around behavior.
> 
> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks,

 - Joel

> ---
>  drivers/android/binder.c          | 41 ++++++++++++++++---------------
>  drivers/android/binder_internal.h |  3 ++-
>  2 files changed, 23 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index f936530a19b0..52175cd6a62b 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -66,6 +66,7 @@
>  #include <linux/syscalls.h>
>  #include <linux/task_work.h>
>  #include <linux/sizes.h>
> +#include <linux/counters.h>
>  
>  #include <uapi/linux/android/binder.h>
>  #include <uapi/linux/android/binderfs.h>
> @@ -172,22 +173,22 @@ enum binder_stat_types {
>  };
>  
>  struct binder_stats {
> -	atomic_t br[_IOC_NR(BR_FAILED_REPLY) + 1];
> -	atomic_t bc[_IOC_NR(BC_REPLY_SG) + 1];
> -	atomic_t obj_created[BINDER_STAT_COUNT];
> -	atomic_t obj_deleted[BINDER_STAT_COUNT];
> +	struct counter_atomic32 br[_IOC_NR(BR_FAILED_REPLY) + 1];
> +	struct counter_atomic32 bc[_IOC_NR(BC_REPLY_SG) + 1];
> +	struct counter_atomic32 obj_created[BINDER_STAT_COUNT];
> +	struct counter_atomic32 obj_deleted[BINDER_STAT_COUNT];
>  };
>  
>  static struct binder_stats binder_stats;
>  
>  static inline void binder_stats_deleted(enum binder_stat_types type)
>  {
> -	atomic_inc(&binder_stats.obj_deleted[type]);
> +	counter_atomic32_inc(&binder_stats.obj_deleted[type]);
>  }
>  
>  static inline void binder_stats_created(enum binder_stat_types type)
>  {
> -	atomic_inc(&binder_stats.obj_created[type]);
> +	counter_atomic32_inc(&binder_stats.obj_created[type]);
>  }
>  
>  struct binder_transaction_log binder_transaction_log;
> @@ -197,7 +198,7 @@ static struct binder_transaction_log_entry *binder_transaction_log_add(
>  	struct binder_transaction_log *log)
>  {
>  	struct binder_transaction_log_entry *e;
> -	unsigned int cur = atomic_inc_return(&log->cur);
> +	unsigned int cur = counter_atomic32_inc_return(&log->cur);
>  
>  	if (cur >= ARRAY_SIZE(log->entry))
>  		log->full = true;
> @@ -3615,9 +3616,9 @@ static int binder_thread_write(struct binder_proc *proc,
>  		ptr += sizeof(uint32_t);
>  		trace_binder_command(cmd);
>  		if (_IOC_NR(cmd) < ARRAY_SIZE(binder_stats.bc)) {
> -			atomic_inc(&binder_stats.bc[_IOC_NR(cmd)]);
> -			atomic_inc(&proc->stats.bc[_IOC_NR(cmd)]);
> -			atomic_inc(&thread->stats.bc[_IOC_NR(cmd)]);
> +			counter_atomic32_inc(&binder_stats.bc[_IOC_NR(cmd)]);
> +			counter_atomic32_inc(&proc->stats.bc[_IOC_NR(cmd)]);
> +			counter_atomic32_inc(&thread->stats.bc[_IOC_NR(cmd)]);
>  		}
>  		switch (cmd) {
>  		case BC_INCREFS:
> @@ -4047,9 +4048,9 @@ static void binder_stat_br(struct binder_proc *proc,
>  {
>  	trace_binder_return(cmd);
>  	if (_IOC_NR(cmd) < ARRAY_SIZE(binder_stats.br)) {
> -		atomic_inc(&binder_stats.br[_IOC_NR(cmd)]);
> -		atomic_inc(&proc->stats.br[_IOC_NR(cmd)]);
> -		atomic_inc(&thread->stats.br[_IOC_NR(cmd)]);
> +		counter_atomic32_inc(&binder_stats.br[_IOC_NR(cmd)]);
> +		counter_atomic32_inc(&proc->stats.br[_IOC_NR(cmd)]);
> +		counter_atomic32_inc(&thread->stats.br[_IOC_NR(cmd)]);
>  	}
>  }
>  
> @@ -5841,7 +5842,7 @@ static void print_binder_stats(struct seq_file *m, const char *prefix,
>  	BUILD_BUG_ON(ARRAY_SIZE(stats->bc) !=
>  		     ARRAY_SIZE(binder_command_strings));
>  	for (i = 0; i < ARRAY_SIZE(stats->bc); i++) {
> -		int temp = atomic_read(&stats->bc[i]);
> +		int temp = counter_atomic32_read(&stats->bc[i]);
>  
>  		if (temp)
>  			seq_printf(m, "%s%s: %d\n", prefix,
> @@ -5851,7 +5852,7 @@ static void print_binder_stats(struct seq_file *m, const char *prefix,
>  	BUILD_BUG_ON(ARRAY_SIZE(stats->br) !=
>  		     ARRAY_SIZE(binder_return_strings));
>  	for (i = 0; i < ARRAY_SIZE(stats->br); i++) {
> -		int temp = atomic_read(&stats->br[i]);
> +		int temp = counter_atomic32_read(&stats->br[i]);
>  
>  		if (temp)
>  			seq_printf(m, "%s%s: %d\n", prefix,
> @@ -5863,8 +5864,8 @@ static void print_binder_stats(struct seq_file *m, const char *prefix,
>  	BUILD_BUG_ON(ARRAY_SIZE(stats->obj_created) !=
>  		     ARRAY_SIZE(stats->obj_deleted));
>  	for (i = 0; i < ARRAY_SIZE(stats->obj_created); i++) {
> -		int created = atomic_read(&stats->obj_created[i]);
> -		int deleted = atomic_read(&stats->obj_deleted[i]);
> +		int created = counter_atomic32_read(&stats->obj_created[i]);
> +		int deleted = counter_atomic32_read(&stats->obj_deleted[i]);
>  
>  		if (created || deleted)
>  			seq_printf(m, "%s%s: active %d total %d\n",
> @@ -6054,7 +6055,7 @@ static void print_binder_transaction_log_entry(struct seq_file *m,
>  int binder_transaction_log_show(struct seq_file *m, void *unused)
>  {
>  	struct binder_transaction_log *log = m->private;
> -	unsigned int log_cur = atomic_read(&log->cur);
> +	unsigned int log_cur = counter_atomic32_read(&log->cur);
>  	unsigned int count;
>  	unsigned int cur;
>  	int i;
> @@ -6124,8 +6125,8 @@ static int __init binder_init(void)
>  	if (ret)
>  		return ret;
>  
> -	atomic_set(&binder_transaction_log.cur, ~0U);
> -	atomic_set(&binder_transaction_log_failed.cur, ~0U);
> +	counter_atomic32_set(&binder_transaction_log.cur, ~0U);
> +	counter_atomic32_set(&binder_transaction_log_failed.cur, ~0U);
>  
>  	binder_debugfs_dir_entry_root = debugfs_create_dir("binder", NULL);
>  	if (binder_debugfs_dir_entry_root)
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index 283d3cb9c16e..c77960c01430 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -12,6 +12,7 @@
>  #include <linux/stddef.h>
>  #include <linux/types.h>
>  #include <linux/uidgid.h>
> +#include <linux/counters.h>
>  
>  struct binder_context {
>  	struct binder_node *binder_context_mgr_node;
> @@ -136,7 +137,7 @@ struct binder_transaction_log_entry {
>  };
>  
>  struct binder_transaction_log {
> -	atomic_t cur;
> +	struct counter_atomic32 cur;
>  	bool full;
>  	struct binder_transaction_log_entry entry[32];
>  };
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
