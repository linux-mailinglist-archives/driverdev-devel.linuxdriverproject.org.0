Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FCB222F6A
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Jul 2020 01:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 26A8887C89;
	Thu, 16 Jul 2020 23:53:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JyZaBYQWdqXa; Thu, 16 Jul 2020 23:53:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9C20087C70;
	Thu, 16 Jul 2020 23:53:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F9681BF326
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 23:53:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1C2D786D82
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 23:53:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H7m0xBbsgkB4 for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 23:53:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 94D9C86D72
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 23:53:46 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id e22so6182419edq.8
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 16:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gHjNZ84Odw9I00tyL0rNJk6APocttkiZI0Xw6GVe51U=;
 b=fJH2BDM6Ixum8ogIhI3oTUAlm4JvVXiLMlmveR9PrJbIIrNyy3hsxZgPKviKM4+YQU
 vBjg568mWozwniuvnzS7+RVc+0Jd05h4JQWcmc40j5oFxRSmZZPHTJ0WA+nC/pbF7+lt
 +vy3Te1DvgX4Xr1H7Hv4Py4nE4khXVlMOQUUd4rebpjFuetFSu7eDqsVAMh0IfdpwPUp
 1fwxiuksHBFBohjtIHgVptCoaISFbvcRjGEYErDBPMDcXlJX5VJ2moHZkjNCm5Bg70mj
 NlJ9wOoEvoer1eaKx9RImAsktSIETPZ0CYL7IqduNsMoJ4+VF5q7UJYys3Tix9n3r4zS
 spNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gHjNZ84Odw9I00tyL0rNJk6APocttkiZI0Xw6GVe51U=;
 b=CdxKNwrYKQwwWS7pFzzI88WiCvZIYxLptRZJxF/etiZUw+x7CZeiO68YR6wkKhgnm6
 zln0kqzIiPzLrM7JdO3sK2P7JgiTYLQnjxPG8VEqhhmsP3ZXGlZA7OWC9XowbCgEsKoi
 SU8h4skldDEupD0cEf9PnMv/uTk06XPIzdZONSsb8V1r4dr9rfIiUc6HeCwG0s1N8Y2m
 +jEWq5acWYDKOrJHQA9l+3REeSRiPulMifAlgQZyiUjnyR53X/blFcV3kR2jpezZ2LP/
 nnZZ3DYUOnoNQ+e9osc8cwc83PwhL6PMAxP/zCngViysIVpoeyUQV9A2b8pAjXBEpaFL
 BJ9w==
X-Gm-Message-State: AOAM531KUFWJxw+6fimctrCv8kQkd3TwNp0ZjYSvZWwoWmW0ceQntW4f
 ZWRU2kxxcLHPEhgy1Y2RNZb6p3F4da49f50fOKlORw==
X-Google-Smtp-Source: ABdhPJzJOYksqSLMgx/OMH73qQrO95Fo4PRZuMwDHNlEsde8QBxONmvSl4lHz2cQxebZnKGBfy9UpcHlCi8QgE9NkGs=
X-Received: by 2002:aa7:dd8e:: with SMTP id g14mr6950966edv.208.1594943624633; 
 Thu, 16 Jul 2020 16:53:44 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000001fbbb605aa805c9b@google.com>
 <5ce3ee90-333e-638d-ac8c-cd6d7ab7aa3b@I-love.SAKURA.ne.jp>
 <20200716083506.GA20915@dhcp22.suse.cz>
 <36db7016-98d6-2c6b-110b-b2481fd480ac@i-love.sakura.ne.jp>
 <20200716135445.GN31089@dhcp22.suse.cz>
 <4ba9adb2-43f5-2de0-22de-f6075c1fab50@i-love.sakura.ne.jp>
 <20200716151756.GO31089@dhcp22.suse.cz>
In-Reply-To: <20200716151756.GO31089@dhcp22.suse.cz>
From: Todd Kjos <tkjos@google.com>
Date: Thu, 16 Jul 2020 16:53:31 -0700
Message-ID: <CAHRSSEzL7E3BPnyc7WAoqo8U=ofSxaj9bKTnU-=+W2=1WManDQ@mail.gmail.com>
Subject: Re: [PATCH v2] binder: Don't use mmput() from shrinker function.
To: Michal Hocko <mhocko@kernel.org>
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Peter Zijlstra <peterz@infradead.org>, jolsa@redhat.com,
 Todd Kjos <tkjos@android.com>, linux-mm <linux-mm@kvack.org>,
 Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, acme@kernel.org,
 alexander.shishkin@linux.intel.com, Arve Hjonnevag <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Joel Fernandes <joel@joelfernandes.org>,
 namhyung@kernel.org, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jul 16, 2020 at 8:18 AM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Fri 17-07-20 00:12:15, Tetsuo Handa wrote:
> > syzbot is reporting that mmput() from shrinker function has a risk of
> > deadlock [1], for delayed_uprobe_add() from update_ref_ctr() calls
> > kzalloc(GFP_KERNEL) with delayed_uprobe_lock held, and
> > uprobe_clear_state() from __mmput() also holds delayed_uprobe_lock.
> >
> > Commit a1b2289cef92ef0e ("android: binder: drop lru lock in isolate
> > callback") replaced mmput() with mmput_async() in order to avoid sleeping
> > with spinlock held. But this patch replaces mmput() with mmput_async() in
> > order not to start __mmput() from shrinker context.
> >
> > [1] https://syzkaller.appspot.com/bug?id=bc9e7303f537c41b2b0cc2dfcea3fc42964c2d45
> >
> > Reported-by: syzbot <syzbot+1068f09c44d151250c33@syzkaller.appspotmail.com>
> > Reported-by: syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>
> > Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
>
> Reviewed-by: Michal Hocko <mhocko@suse.com>

Acked-by: Todd Kjos <tkjos@google.com>

>
> Thanks!
>
> > ---
> >  drivers/android/binder_alloc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/android/binder_alloc.c b/drivers/android/binder_alloc.c
> > index 42c672f1584e..cbe6aa77d50d 100644
> > --- a/drivers/android/binder_alloc.c
> > +++ b/drivers/android/binder_alloc.c
> > @@ -947,7 +947,7 @@ enum lru_status binder_alloc_free_page(struct list_head *item,
> >               trace_binder_unmap_user_end(alloc, index);
> >       }
> >       mmap_read_unlock(mm);
> > -     mmput(mm);
> > +     mmput_async(mm);
> >
> >       trace_binder_unmap_kernel_start(alloc, index);
> >
> > --
> > 2.18.4
>
> --
> Michal Hocko
> SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
