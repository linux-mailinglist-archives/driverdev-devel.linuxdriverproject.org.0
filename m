Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 51888A1BCE
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 15:49:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18EEA83553;
	Thu, 29 Aug 2019 13:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mh-MLOQGCa2c; Thu, 29 Aug 2019 13:49:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 27803840D5;
	Thu, 29 Aug 2019 13:49:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B4FE01BF299
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 13:49:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B164C883D2
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 13:49:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FU0MeOtnELg5 for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 13:49:35 +0000 (UTC)
X-Greylist: delayed 00:06:03 by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0C90D883CF
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 13:49:35 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id w26so2072673pfq.12
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 06:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8O7lhnhs/GhozIcB1ugTpsDb2mr6pWMLBUeErvb3feM=;
 b=nwXjlFGVUx1cFzlJ7gEBCuIaiKMJcA+hUBAomv/Z4pCZo4mPx8YhpLRN3g26xfxJ+7
 9QRRfuJ7BfK9GgZinrN9mQAIurv2wZAQfQigVFvx9dR3umMCZnH9VgYVGTTrPoS+CKMs
 aCTbJPRHsqOTXUNEwQh8uxQvWFhl3L94cGvok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8O7lhnhs/GhozIcB1ugTpsDb2mr6pWMLBUeErvb3feM=;
 b=MRBTnEErQiqMxRvhHsACOPTZRZULEKqZucRyq5ng4Jekp8ngHIt+AlfQN2qdYCWj3e
 fkFMlysNg/39IgS3VbQaXd8avuu0Cxbou9pmOwarADL30olvS/vNXViOp8SoD1DMJ9yE
 3atZoF3j3/M9Iban6gFk2QRzJ/N4jfYUSbzBLIAl1iEYpwnsC4j7oj0o4i5ciib8XtCl
 ihueuxg4goqhHUNPNJyJGlYOnB3KIibn9VCSZ3ZG/RC/0kaqGkLAP/t85Fdky91Y5Ht1
 W92LSPCHfYKEGPZ7j1RCUQYtf8GGkgoB5vQwYlrYHFuPh3SBVyWvZ540Jaeii5hcpk4n
 B2QQ==
X-Gm-Message-State: APjAAAUwzuDlDFQoUKKXM4Bo1giuamlVr1giFlz0ptgvms0FPi3eOSuT
 73URKQrDeYC+Y4IpRIoIzF2D9Q==
X-Google-Smtp-Source: APXvYqzli0vhPeOpMg9J8oc5AVk7YRayffyKQ+wOsQHfxscS3A5S77unQugCEhiw9DVCPAWbqOUhXw==
X-Received: by 2002:a62:64d4:: with SMTP id y203mr11362397pfb.91.1567086211473; 
 Thu, 29 Aug 2019 06:43:31 -0700 (PDT)
Received: from localhost ([2620:15c:6:12:9c46:e0da:efbf:69cc])
 by smtp.gmail.com with ESMTPSA id 136sm2961503pfz.123.2019.08.29.06.43.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Aug 2019 06:43:30 -0700 (PDT)
Date: Thu, 29 Aug 2019 09:43:29 -0400
From: Joel Fernandes <joel@joelfernandes.org>
To: Peikan Tsai <peikantsai@gmail.com>
Subject: Re: [PATCH] binder: Use kmem_cache for binder_thread
Message-ID: <20190829134329.GA63638@google.com>
References: <20190829054953.GA18328@mark-All-Series>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190829054953.GA18328@mark-All-Series>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, arve@android.com, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Aug 29, 2019 at 01:49:53PM +0800, Peikan Tsai wrote:
> Hi,
> 
> The allocated size for each binder_thread is 512 bytes by kzalloc.
> Because the size of binder_thread is fixed and it's only 304 bytes.
> It will save 208 bytes per binder_thread when use create a kmem_cache
> for the binder_thread.

Awesome change and observation!!!

Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>

(Another thought: how did you discover this? Are you using some tools to look
into slab fragmentation?).

thanks,

 - Joel

> Signed-off-by: Peikan Tsai <peikantsai@gmail.com>
> ---
>  drivers/android/binder.c | 16 +++++++++++++---
>  1 file changed, 13 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/android/binder.c b/drivers/android/binder.c
> index dc1c83eafc22..043e0ebd0fe7 100644
> --- a/drivers/android/binder.c
> +++ b/drivers/android/binder.c
> @@ -87,6 +87,8 @@ static struct dentry *binder_debugfs_dir_entry_root;
>  static struct dentry *binder_debugfs_dir_entry_proc;
>  static atomic_t binder_last_id;
> 
> +static struct kmem_cache *binder_thread_cachep;
> +
>  static int proc_show(struct seq_file *m, void *unused);
>  DEFINE_SHOW_ATTRIBUTE(proc);
> 
> @@ -4696,14 +4698,15 @@ static struct binder_thread *binder_get_thread(struct binder_proc *proc)
>  	thread = binder_get_thread_ilocked(proc, NULL);
>  	binder_inner_proc_unlock(proc);
>  	if (!thread) {
> -		new_thread = kzalloc(sizeof(*thread), GFP_KERNEL);
> +		new_thread = kmem_cache_zalloc(binder_thread_cachep,
> +					       GFP_KERNEL);
>  		if (new_thread == NULL)
>  			return NULL;
>  		binder_inner_proc_lock(proc);
>  		thread = binder_get_thread_ilocked(proc, new_thread);
>  		binder_inner_proc_unlock(proc);
>  		if (thread != new_thread)
> -			kfree(new_thread);
> +			kmem_cache_free(binder_thread_cachep, new_thread);
>  	}
>  	return thread;
>  }
> @@ -4723,7 +4726,7 @@ static void binder_free_thread(struct binder_thread *thread)
>  	BUG_ON(!list_empty(&thread->todo));
>  	binder_stats_deleted(BINDER_STAT_THREAD);
>  	binder_proc_dec_tmpref(thread->proc);
> -	kfree(thread);
> +	kmem_cache_free(binder_thread_cachep, thread);
>  }
> 
>  static int binder_thread_release(struct binder_proc *proc,
> @@ -6095,6 +6098,12 @@ static int __init binder_init(void)
>  	if (ret)
>  		return ret;
> 
> +	binder_thread_cachep = kmem_cache_create("binder_thread",
> +						 sizeof(struct binder_thread),
> +						 0, 0, NULL);
> +	if (!binder_thread_cachep)
> +		return -ENOMEM;
> +
>  	atomic_set(&binder_transaction_log.cur, ~0U);
>  	atomic_set(&binder_transaction_log_failed.cur, ~0U);
> 
> @@ -6167,6 +6176,7 @@ static int __init binder_init(void)
> 
>  err_alloc_device_names_failed:
>  	debugfs_remove_recursive(binder_debugfs_dir_entry_root);
> +	kmem_cache_destroy(binder_thread_cachep);
> 
>  	return ret;
>  }
> --
> 2.17.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
