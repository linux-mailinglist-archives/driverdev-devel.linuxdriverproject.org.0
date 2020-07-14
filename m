Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D18021F3BC
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 16:18:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3D0A788542;
	Tue, 14 Jul 2020 14:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ohKWZc-69465; Tue, 14 Jul 2020 14:18:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DACE98831E;
	Tue, 14 Jul 2020 14:18:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 14EAD1BF869
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 14:18:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0FAEA8831E
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 14:18:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7hp9nLflOlQE for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 14:18:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A16A98852B
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 14:18:19 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id f18so21951576wrs.0
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 07:18:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IPqfDK3T+LSWfa2R0+LOJEnJPN7ZBy864xyViHBmNQo=;
 b=oGJkiFwCStu9xOHw/ZfPTLc+DuqusafM+GwDRdpbi80bJ4KsiIBHkG6iKtWbshEKbB
 d/17W0yXjAQAW82pXhO9TpV7H2bEQ9qNrWiZ0r/DfSUwe+B1rfBWc6hDR6kf7qxqkVTo
 NEO3XHNex8yqDxA7J/4/1UsRHZELWQes5Jkpy0i6f8BD7oOGll6Qmt+FeJyZYd+Rbwno
 reGX7c40po/AMhasbTBQCKfztDDCjzrcIp8DcreFHmFWM7mJpJE5ueiYPrYQqcJt5oF+
 e9R2Cu0QEI8AXiEbKP9mY075R8m78wjcKVFej4upyo/8zUe2rBjXCu2C77So60FEzp8w
 OfEw==
X-Gm-Message-State: AOAM530joke8Tn3eXQyZSxlEEhsLluAEZ0abCtwZTAYz02zLkKWldCC7
 qfs8UtUvcv2UWn7wlgtj40U=
X-Google-Smtp-Source: ABdhPJzSJIFpcy8je8QoaOn+7sTmJWR6ZVWHrZuqwrHxoJvlNfO0Q+GwQhtamDhS1IQi0qFZsgfmtg==
X-Received: by 2002:adf:e7c2:: with SMTP id e2mr6250692wrn.179.1594736298161; 
 Tue, 14 Jul 2020 07:18:18 -0700 (PDT)
Received: from localhost (ip-37-188-148-171.eurotel.cz. [37.188.148.171])
 by smtp.gmail.com with ESMTPSA id 1sm4520678wmf.21.2020.07.14.07.18.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 07:18:17 -0700 (PDT)
Date: Tue, 14 Jul 2020 16:18:15 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Hillf Danton <hdanton@sina.com>
Subject: Re: possible deadlock in shmem_fallocate (4)
Message-ID: <20200714141815.GP24642@dhcp22.suse.cz>
References: <0000000000000b5f9d059aa2037f@google.com>
 <20200714033252.8748-1-hdanton@sina.com>
 <20200714053205.15240-1-hdanton@sina.com>
 <20200714140859.15156-1-hdanton@sina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714140859.15156-1-hdanton@sina.com>
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
Cc: devel@driverdev.osuosl.org, tkjos@android.com,
 syzkaller-bugs@googlegroups.com, gregkh@linuxfoundation.org, hughd@google.com,
 linux-kernel@vger.kernel.org, Eric Biggers <ebiggers@kernel.org>,
 linux-mm@kvack.org, arve@android.com, Markus Elfring <Markus.Elfring@web.de>,
 syzbot <syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com>,
 joel@joelfernandes.org, akpm@linux-foundation.org, maco@android.com,
 christian@brauner.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue 14-07-20 22:08:59, Hillf Danton wrote:
> 
> On Tue, 14 Jul 2020 10:26:29 +0200 Michal Hocko wrote:
> > On Tue 14-07-20 13:32:05, Hillf Danton wrote:
> > > 
> > > On Mon, 13 Jul 2020 20:41:11 -0700 Eric Biggers wrote:
> > > > On Tue, Jul 14, 2020 at 11:32:52AM +0800, Hillf Danton wrote:
> > > > > 
> > > > > Add FALLOC_FL_NOBLOCK and on the shmem side try to lock inode upon the
> > > > > new flag. And the overall upside is to keep the current gfp either in
> > > > > the khugepaged context or not.
> > > > > 
> > > > > --- a/include/uapi/linux/falloc.h
> > > > > +++ b/include/uapi/linux/falloc.h
> > > > > @@ -77,4 +77,6 @@
> > > > >   */
> > > > >  #define FALLOC_FL_UNSHARE_RANGE		0x40
> > > > >  
> > > > > +#define FALLOC_FL_NOBLOCK		0x80
> > > > > +
> > > > 
> > > > You can't add a new UAPI flag to fix a kernel-internal problem like this.
> > > 
> > > Sounds fair, see below.
> > > 
> > > What the report indicates is a missing PF_MEMALLOC_NOFS and it's
> > > checked on the ashmem side and added as an exception before going
> > > to filesystem. On shmem side, no more than a best effort is paid
> > > on the inteded exception.
> > > 
> > > --- a/drivers/staging/android/ashmem.c
> > > +++ b/drivers/staging/android/ashmem.c
> > > @@ -437,6 +437,7 @@ static unsigned long
> > >  ashmem_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
> > >  {
> > >  	unsigned long freed = 0;
> > > +	bool nofs;
> > >  
> > >  	/* We might recurse into filesystem code, so bail out if necessary */
> > >  	if (!(sc->gfp_mask & __GFP_FS))
> > > @@ -445,6 +446,11 @@ ashmem_shrink_scan(struct shrinker *shri
> > >  	if (!mutex_trylock(&ashmem_mutex))
> > >  		return -1;
> > >  
> > > +	/* enter filesystem with caution: nonblock on locking */
> > > +	nofs = current->flags & PF_MEMALLOC_NOFS;
> > > +	if (!nofs)
> > > +		current->flags |= PF_MEMALLOC_NOFS;
> > > +
> > >  	while (!list_empty(&ashmem_lru_list)) {
> > >  		struct ashmem_range *range =
> > >  			list_first_entry(&ashmem_lru_list, typeof(*range), lru);
> > 
> > I do not think this is an appropriate fix. First of all is this a real
> > deadlock or a lockdep false positive? Is it possible that ashmem just
> 
> The warning matters and we can do something to quiesce it.

The underlying issue should be fixed rather than _something_ done to
silence it.
 
> > needs to properly annotate its shmem inodes? Or is it possible that
> > the internal backing shmem file is visible to the userspace so the write
> > path would be possible?
> > 
> > If this a real problem then the proper fix would be to set internal
> > shmem mapping's gfp_mask to drop __GFP_FS.
> 
> Thanks for the tip, see below.
> 
> Can you expand a bit on how it helps direct reclaimers like khugepaged
> in the syzbot report wrt deadlock?

I do not understand your question.

> TBH I have difficult time following
> up after staring at the chart below for quite a while.

Yes, lockdep reports are quite hard to follow and they tend to confuse
one hell out of me. But this one says that there is a reclaim dependency
between the shmem inode lock and the reclaim context.

> Possible unsafe locking scenario:
> 
>        CPU0                    CPU1
>        ----                    ----
>   lock(fs_reclaim);
>                                lock(&sb->s_type->i_mutex_key#15);
>                                lock(fs_reclaim);
> 
>   lock(&sb->s_type->i_mutex_key#15);

Please refrain from proposing fixes until the actual problem is
understood. I suspect that this might be just false positive because the
lockdep cannot tell the backing shmem which is internal to ashmem(?)
with any general shmem. But somebody really familiar with ashmem code
should have a look I believe.

-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
