Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 730322226AE
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 17:18:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7EB238B323;
	Thu, 16 Jul 2020 15:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CR2autWfn5h3; Thu, 16 Jul 2020 15:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C29E18B2F7;
	Thu, 16 Jul 2020 15:18:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD5731BF38D
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:18:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A9C018B2EF
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 15:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5VLkL6n-xKnU for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 15:18:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A68978B2EB
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 15:18:00 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z15so7444261wrl.8
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 08:18:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0H5Bd3kw4GjkewKQ3kKww4Zq5793dgkMaSPrkSNreRc=;
 b=FA55dmi3Z8cKxjprW0WE+oUBKrXoH6JIwnvdfL3cRM6is23PEPX+kEH3ZujTXoHG+3
 OoFvc0tsd2+UDWGNl5bPVasdL9dBBDQqbyNh3G/9RNN1MN3RhI1Y0WQTlpQcR705VB2j
 wK0g4GTtCEojs97Yeg91kR+76n2pHuFl07wZSrLwHGwPQ8JXUz+Q1lZczlsRqoggDrRn
 TdPpZKz8rgz2V6IyHRtXYHeEG2nFhhWAECDgYlP8rWJn8qExT1DlcV4NHDKi/49X1MLA
 dNM86TPYtBw2TLk38tcx06c9S8mgd5cj6/QQLrtdV8rrHzyFkxPyr+XDSdGKIkTAD6Gw
 2rLQ==
X-Gm-Message-State: AOAM5305N8j3D1Y0U1K9yRx6PfHYmTDneufFGUU2ugHK7k5xXVMThbSo
 7WrUZL9vvh8gG1JacHSVcfo=
X-Google-Smtp-Source: ABdhPJzWAPL7nRYRrf93ZSHHh8l/vk69TykNKhpQHF5kPWiSF8g7Pw9z/3d4LZQMoR+WzcGZhBSj6Q==
X-Received: by 2002:adf:8521:: with SMTP id 30mr5325964wrh.238.1594912679077; 
 Thu, 16 Jul 2020 08:17:59 -0700 (PDT)
Received: from localhost (ip-37-188-169-187.eurotel.cz. [37.188.169.187])
 by smtp.gmail.com with ESMTPSA id b17sm9755636wrp.32.2020.07.16.08.17.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 08:17:57 -0700 (PDT)
Date: Thu, 16 Jul 2020 17:17:56 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Subject: Re: [PATCH v2] binder: Don't use mmput() from shrinker function.
Message-ID: <20200716151756.GO31089@dhcp22.suse.cz>
References: <0000000000001fbbb605aa805c9b@google.com>
 <5ce3ee90-333e-638d-ac8c-cd6d7ab7aa3b@I-love.SAKURA.ne.jp>
 <20200716083506.GA20915@dhcp22.suse.cz>
 <36db7016-98d6-2c6b-110b-b2481fd480ac@i-love.sakura.ne.jp>
 <20200716135445.GN31089@dhcp22.suse.cz>
 <4ba9adb2-43f5-2de0-22de-f6075c1fab50@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4ba9adb2-43f5-2de0-22de-f6075c1fab50@i-love.sakura.ne.jp>
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

On Fri 17-07-20 00:12:15, Tetsuo Handa wrote:
> syzbot is reporting that mmput() from shrinker function has a risk of
> deadlock [1], for delayed_uprobe_add() from update_ref_ctr() calls
> kzalloc(GFP_KERNEL) with delayed_uprobe_lock held, and
> uprobe_clear_state() from __mmput() also holds delayed_uprobe_lock.
> 
> Commit a1b2289cef92ef0e ("android: binder: drop lru lock in isolate
> callback") replaced mmput() with mmput_async() in order to avoid sleeping
> with spinlock held. But this patch replaces mmput() with mmput_async() in
> order not to start __mmput() from shrinker context.
> 
> [1] https://syzkaller.appspot.com/bug?id=bc9e7303f537c41b2b0cc2dfcea3fc42964c2d45
> 
> Reported-by: syzbot <syzbot+1068f09c44d151250c33@syzkaller.appspotmail.com>
> Reported-by: syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>
> Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>

Reviewed-by: Michal Hocko <mhocko@suse.com>

Thanks!

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

-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
