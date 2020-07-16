Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8727B221E80
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 10:35:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0D628A68B;
	Thu, 16 Jul 2020 08:35:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M1JyX766il9L; Thu, 16 Jul 2020 08:35:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 091008A50E;
	Thu, 16 Jul 2020 08:35:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7C20E1BF312
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 08:35:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 67C1F2041C
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 08:35:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-jyKHzNIEfQ for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 08:35:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 067FD203CE
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 08:35:15 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id c80so9407144wme.0
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 01:35:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=SCfJrST46qsDSMEeSPURbguLv5Ok1Ae63n1bRqdpvEU=;
 b=IJqFccBoRvx7f6Ye1RGR9fJGmq2/5p+WEg8CSTKC9SnAuuFJ/ew5AHUJduo9ZVdArw
 xoVTiNkYY9Fdip1z6fFL2L8HbiTbiUZSwVqj7+JtTxzXEzWIaBS3tmLiOEyT4tLlZdp9
 qrPA4s43zM0GtoOxPze8i8mvdLNo1TpwoRuqcf2zxpm3xDEaK6RwjW6D43UkmgExKJKg
 TdRH1LIFmYAjsxCg75j9BKxUvG57bjyVp4VnIbX3GbAzQW5bRMtWaljpMgLgw3v+ufrf
 qDp3ea4eWqBHcz/KbbKqzs1fIR0bjDXS0aUhWkD9Mdh1BWTTe/mN55ePwdAcW/KOy9/e
 o3cw==
X-Gm-Message-State: AOAM532uwtlWzJ5idgJnqCb7yTAKbLZrlW5hvqWRV3IhkUwsagLR3qWd
 17j1eqe0U2qJDyl6ldwxvqI=
X-Google-Smtp-Source: ABdhPJykcwCVuCzDa+1jzmfvr7sUJBVtZnozf/QJbmRYAEOA1BdDzHjM4ShBya82D//FX2ojusDXsg==
X-Received: by 2002:a1c:f60d:: with SMTP id w13mr3460331wmc.51.1594888513277; 
 Thu, 16 Jul 2020 01:35:13 -0700 (PDT)
Received: from localhost (ip-37-188-169-187.eurotel.cz. [37.188.169.187])
 by smtp.gmail.com with ESMTPSA id j24sm8302028wrd.43.2020.07.16.01.35.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 01:35:12 -0700 (PDT)
Date: Thu, 16 Jul 2020 10:35:06 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Subject: Re: [PATCH] binder: Don't use mmput() from shrinker function.
Message-ID: <20200716083506.GA20915@dhcp22.suse.cz>
References: <0000000000001fbbb605aa805c9b@google.com>
 <5ce3ee90-333e-638d-ac8c-cd6d7ab7aa3b@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ce3ee90-333e-638d-ac8c-cd6d7ab7aa3b@I-love.SAKURA.ne.jp>
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
Cc: mark.rutland@arm.com,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>, jolsa@redhat.com,
 Todd Kjos <tkjos@android.com>, linux-mm <linux-mm@kvack.org>,
 alexander.shishkin@linux.intel.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 peterz@infradead.org, Arve Hjonnevag <arve@android.com>, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, namhyung@kernel.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu 16-07-20 08:36:52, Tetsuo Handa wrote:
> syzbot is reporting that mmput() from shrinker function has a risk of
> deadlock [1]. Don't start synchronous teardown of mm when called from
> shrinker function.

Please add the actual lock dependency to the changelog.

Anyway is this deadlock real? Mayve I have missed some details but the
call graph points to these two paths.
uprobe_mmap					do_shrink_slab	
  uprobes_mmap_hash #lock
  install_breakpoint				  binder_shrink_scan
    set_swbp					    binder_alloc_free_page
      uprobe_write_opcode			      __mmput
	update_ref_ctr				        uprobe_clear_state
    	  mutex_lock(&delayed_uprobe_lock)	          mutex_lock(&delayed_uprobe_lock);
	    allocation -> reclaim

But in order for this to happen the shrinker would have to do the last
put on the mm. But mm cannot go away from under uprobe_mmap so those two
paths cannot race with each other.

Unless I am missing something this is a false positive. I do not mind
using mmput_async from the shrinker as a workaround but the changelog
should be explicit about the fact.

> [1] https://syzkaller.appspot.com/bug?id=bc9e7303f537c41b2b0cc2dfcea3fc42964c2d45
> 
> Reported-by: syzbot <syzbot+1068f09c44d151250c33@syzkaller.appspotmail.com>
> Reported-by: syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>
> Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> ---
>  drivers/android/binder_alloc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
> index 42c672f1584e..cbe6aa77d50d 100644
> --- a/drivers/android/binder_alloc.c
> +++ b/drivers/android/binder_alloc.c
> @@ -947,7 +947,7 @@ enum lru_status binder_alloc_free_page(struct list_head *item,
>  		trace_binder_unmap_user_end(alloc, index);
>  	}
>  	mmap_read_unlock(mm);
> -	mmput(mm);
> +	mmput_async(mm);
>  
>  	trace_binder_unmap_kernel_start(alloc, index);
>  
> -- 
> 2.18.4
> 

-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
