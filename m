Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 924FBD006D
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 20:05:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A54C85C92;
	Tue,  8 Oct 2019 18:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igyglnbiXjNY; Tue,  8 Oct 2019 18:05:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D6889838CD;
	Tue,  8 Oct 2019 18:05:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AFA971BF5A4
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 18:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A539C22797
 for <devel@linuxdriverproject.org>; Tue,  8 Oct 2019 18:05:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I+6sXdOLy5RN for <devel@linuxdriverproject.org>;
 Tue,  8 Oct 2019 18:05:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id 8C7D0204FF
 for <devel@driverdev.osuosl.org>; Tue,  8 Oct 2019 18:05:18 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id x127so11224909pfb.7
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 11:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ELxAahh6Yu3vLwEO8PoffGoqAdx+X0u75FdVW3JY1Sg=;
 b=gI2w8LEiuJ8QiTz0qaKjrFj29ovgQqape9UrwF8PgqhKY5YLEnDL2d7vZ6bRaaDCMO
 ACwTwDvSBazaHtOHX/3gUREFksyAHhJMuT9PitspDDM9DWXZ7M4x8/d5Gwd2O3uZytRD
 eo9WymPXThG/wamCnCsvWSs8pwN+w6PUuy2n0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ELxAahh6Yu3vLwEO8PoffGoqAdx+X0u75FdVW3JY1Sg=;
 b=WYKIIkCRNP8/6NioHsEA3ThNnGgC0tRcZj2auy5sXAAyU5ymAay2xVPolBD2wzOPZM
 YEG/vCcEXleNb+OEOFHMCYYue4a0LtYECC/UUKlDRUMR1VfZl7LzQS7GSmOjIOoXNQu6
 sVz8Bcek3faRACZdiD0/t/Fm1VFXScZPhnWcQyyQDspKX10P/HSi3mHpQholW1bhupED
 RUMp8XUTsxCKnx7fdDD+UgRyZhcdN71uqUdRFvST9pUkSzJjGOR5gXPRJM3BGIeYKDv3
 tCz1rFGhwWINU8Nxl0hZq8Z9V4A+AaBq02QLpuPcXiKRkgoojCwV7bWFBfi+jz2ncHvu
 ZIXQ==
X-Gm-Message-State: APjAAAVov+MmIK+P1LFDmeB1uBk+39N8W+JutXcFM205JpdnPklgpgC1
 JckSx25wfmxe3nBNJ2QM7Fb08g==
X-Google-Smtp-Source: APXvYqx9Yy4rF5ZGPbnFM8um+WCTgOQ2VEF8Ceziv6hXyFbR88Ad4Mvbu6bXH2//Ti5CUkovB742/g==
X-Received: by 2002:a17:90a:3d08:: with SMTP id
 h8mr7434521pjc.12.1570557917832; 
 Tue, 08 Oct 2019 11:05:17 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id h26sm18536212pgh.7.2019.10.08.11.05.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 11:05:17 -0700 (PDT)
Date: Tue, 8 Oct 2019 14:05:16 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH] binder: prevent UAF read in
 print_binder_transaction_log_entry()
Message-ID: <20191008180516.GB143258@google.com>
References: <CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com>
 <20191008130159.10161-1-christian.brauner@ubuntu.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008130159.10161-1-christian.brauner@ubuntu.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>, jannh@google.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, arve@android.com,
 Hridya Valsaraju <hridya@google.com>, maco@android.com, christian@brauner.io,
 tkjos@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 08, 2019 at 03:01:59PM +0200, Christian Brauner wrote:
> When a binder transaction is initiated on a binder device coming from a
> binderfs instance, a pointer to the name of the binder device is stashed
> in the binder_transaction_log_entry's context_name member. Later on it
> is used to print the name in print_binder_transaction_log_entry(). By
> the time print_binder_transaction_log_entry() accesses context_name
> binderfs_evict_inode() might have already freed the associated memory
> thereby causing a UAF. Do the simple thing and prevent this by copying
> the name of the binder device instead of stashing a pointer to it.
> 
> Reported-by: Jann Horn <jannh@google.com>
> Fixes: 03e2e07e3814 ("binder: Make transaction_log available in binderfs")
> Link: https://lore.kernel.org/r/CAG48ez14Q0-F8LqsvcNbyR2o6gPW8SHXsm4u5jmD9MpsteM2Tw@mail.gmail.com
> Cc: Joel Fernandes <joel@joelfernandes.org>
> Cc: Todd Kjos <tkjos@android.com>
> Cc: Hridya Valsaraju <hridya@google.com>
> Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
> ---
>  drivers/android/binder.c          | 4 +++-
>  drivers/android/binder_internal.h | 2 +-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index c0a491277aca..5b9ac2122e89 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -57,6 +57,7 @@
>  #include <linux/sched/signal.h>
>  #include <linux/sched/mm.h>
>  #include <linux/seq_file.h>
> +#include <linux/string.h>
>  #include <linux/uaccess.h>
>  #include <linux/pid_namespace.h>
>  #include <linux/security.h>
> @@ -66,6 +67,7 @@
>  #include <linux/task_work.h>
>  
>  #include <uapi/linux/android/binder.h>
> +#include <uapi/linux/android/binderfs.h>
>  
>  #include <asm/cacheflush.h>
>  
> @@ -2876,7 +2878,7 @@ static void binder_transaction(struct binder_proc *proc,
>  	e->target_handle = tr->target.handle;
>  	e->data_size = tr->data_size;
>  	e->offsets_size = tr->offsets_size;
> -	e->context_name = proc->context->name;
> +	strscpy(e->context_name, proc->context->name, BINDERFS_MAX_NAME);

Strictly speaking, proc-context->name can also be initialized for !BINDERFS
so the BINDERFS in the MAX_NAME macro is misleading. So probably there should
be a BINDER_MAX_NAME (and associated checks for whether non BINDERFS names
fit within the MAX.

>  	if (reply) {

>  		binder_inner_proc_lock(proc);
> diff --git a/drivers/android/binder_internal.h b/drivers/android/binder_internal.h
> index bd47f7f72075..ae991097d14d 100644
> --- a/drivers/android/binder_internal.h
> +++ b/drivers/android/binder_internal.h
> @@ -130,7 +130,7 @@ struct binder_transaction_log_entry {
>  	int return_error_line;
>  	uint32_t return_error;
>  	uint32_t return_error_param;
> -	const char *context_name;
> +	char context_name[BINDERFS_MAX_NAME + 1];

Same comment here, context_name can be used for non-BINDERFS transactions as
well such as default binder devices.

One more thought, this can be made dependent on CONFIG_BINDERFS since regular
binder devices cannot be unregistered AFAICS and as Jann said, the problem is
BINDERFS specific. That way we avoid the memcpy for _every_ transaction.
These can be thundering when Android starts up.

(I secretly wish C strings could be refcounted to avoid exactly this issue,
that should not be hard to develop but I am not sure if it is worth it for
this problem :) - For one, it will avoid having to do the strcpy for _every_
transaction).

Other than these nits, please add my tag on whichever is the final solution:

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

thanks,

 - Joel


>  };
>  
>  struct binder_transaction_log {
> -- 
> 2.23.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
