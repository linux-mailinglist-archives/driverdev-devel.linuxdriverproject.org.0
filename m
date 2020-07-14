Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EB221EB40
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 10:26:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 59EFF2E99D;
	Tue, 14 Jul 2020 08:26:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZFE6ZXNHMuvm; Tue, 14 Jul 2020 08:26:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B40222514E;
	Tue, 14 Jul 2020 08:26:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9DA981BF297
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 08:26:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9302B2CB21
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 08:26:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TV6NDapVlc6w for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 08:26:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 3F8472514E
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 08:26:33 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id s10so20201530wrw.12
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 01:26:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ns93S8sUjsOmoco+YZg5on386bafVCD/6UpJdLKezho=;
 b=Vko7MNSy3YD9E8PV2t4dJnB1MpInt0hrTmRAUbFEbVmLWs29EzmP2iVNDtMfuYCsIN
 89bnjufWsDZv7b8Ym1MvVEEaPoc72RrHPMi3L9xWr3yhfsnfh5CMVy8fWHVAWEj4hn1S
 dE7KwN9d8jgyE5GmHLFLv9H3QR0IneaK2BG4rByt3NC20yHFEzTqJ3gDlVk6QNflYF8G
 PnvE0neRR2vFQSJNk9wvhd/w6IiAy7xPHZJOGGtC7YPL5ULfzJQg+YpiuDN10TQgjXD6
 DJOP9OfgsffAMayxIApoy/wnFlBxWsxNrjMvb3q0xSSPzHwQmpvQl4ay403Q3x92wCgy
 jSgw==
X-Gm-Message-State: AOAM530xpvHR0wm9C4KY7bu1FPIrT7BvvG4vfQpIXGTkfkjKZ8frj/H1
 df5vylZ5AE/CsaOiNar4duY=
X-Google-Smtp-Source: ABdhPJzNwoAmwTV4+wU4QSXAwmcZVDLWLo0xPsnDiu9lYtYjzRw7BLIt7QcH23Kx1jL0n9IEwHuung==
X-Received: by 2002:adf:f608:: with SMTP id t8mr3911676wrp.308.1594715191723; 
 Tue, 14 Jul 2020 01:26:31 -0700 (PDT)
Received: from localhost (ip-37-188-148-171.eurotel.cz. [37.188.148.171])
 by smtp.gmail.com with ESMTPSA id p29sm3326592wmi.43.2020.07.14.01.26.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jul 2020 01:26:30 -0700 (PDT)
Date: Tue, 14 Jul 2020 10:26:29 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Hillf Danton <hdanton@sina.com>
Subject: Re: possible deadlock in shmem_fallocate (4)
Message-ID: <20200714082629.GF24642@dhcp22.suse.cz>
References: <0000000000000b5f9d059aa2037f@google.com>
 <20200714033252.8748-1-hdanton@sina.com>
 <20200714053205.15240-1-hdanton@sina.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200714053205.15240-1-hdanton@sina.com>
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

On Tue 14-07-20 13:32:05, Hillf Danton wrote:
> 
> On Mon, 13 Jul 2020 20:41:11 -0700 Eric Biggers wrote:
> > On Tue, Jul 14, 2020 at 11:32:52AM +0800, Hillf Danton wrote:
> > > 
> > > Add FALLOC_FL_NOBLOCK and on the shmem side try to lock inode upon the
> > > new flag. And the overall upside is to keep the current gfp either in
> > > the khugepaged context or not.
> > > 
> > > --- a/include/uapi/linux/falloc.h
> > > +++ b/include/uapi/linux/falloc.h
> > > @@ -77,4 +77,6 @@
> > >   */
> > >  #define FALLOC_FL_UNSHARE_RANGE		0x40
> > >  
> > > +#define FALLOC_FL_NOBLOCK		0x80
> > > +
> > 
> > You can't add a new UAPI flag to fix a kernel-internal problem like this.
> 
> Sounds fair, see below.
> 
> What the report indicates is a missing PF_MEMALLOC_NOFS and it's
> checked on the ashmem side and added as an exception before going
> to filesystem. On shmem side, no more than a best effort is paid
> on the inteded exception.
> 
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -437,6 +437,7 @@ static unsigned long
>  ashmem_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
>  {
>  	unsigned long freed = 0;
> +	bool nofs;
>  
>  	/* We might recurse into filesystem code, so bail out if necessary */
>  	if (!(sc->gfp_mask & __GFP_FS))
> @@ -445,6 +446,11 @@ ashmem_shrink_scan(struct shrinker *shri
>  	if (!mutex_trylock(&ashmem_mutex))
>  		return -1;
>  
> +	/* enter filesystem with caution: nonblock on locking */
> +	nofs = current->flags & PF_MEMALLOC_NOFS;
> +	if (!nofs)
> +		current->flags |= PF_MEMALLOC_NOFS;
> +
>  	while (!list_empty(&ashmem_lru_list)) {
>  		struct ashmem_range *range =
>  			list_first_entry(&ashmem_lru_list, typeof(*range), lru);

I do not think this is an appropriate fix. First of all is this a real
deadlock or a lockdep false positive? Is it possible that ashmem just
needs to properly annotate its shmem inodes? Or is it possible that
the internal backing shmem file is visible to the userspace so the write
path would be possible?

If this a real problem then the proper fix would be to set internal
shmem mapping's gfp_mask to drop __GFP_FS.
-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
