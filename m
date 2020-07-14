Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1971E21F65C
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 17:47:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 716E08A35B;
	Tue, 14 Jul 2020 15:47:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pdEdPGmsqYzy; Tue, 14 Jul 2020 15:47:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D24468A399;
	Tue, 14 Jul 2020 15:47:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A7251BF473
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 15:47:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 36E2B207A4
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 15:47:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p6eMstWtMXdO for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 15:47:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 1A44626FFF
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 15:47:08 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id bm28so15731685edb.2
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 08:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QXa/a8+v6atJW9I3K/8i8cY/Lmvtpiv+5qg62twrTiI=;
 b=mn0RyrhtCpG4LO11bnCZa/lH0u4e10/twWy/TsKJcWSQwrFQ5uc6hzPuo8XA/9zijo
 WXpQOqlkhvbUvdaMnYvaL5yMyMBiI13+6TT7c2XLV0U0dSXQYpZixce2KzXkEc9EMl61
 OqZZyQ5PLT6Z1OFgRTGde6rsKiTpakTwwGXYbmnV9rjo/Kjf6jGOKvwGN+YRjLW9lkhC
 kRnWpIq1+3mRuVGMoYQC1U7VWPy3zx8sqXja+EjvisR61blv1JMOgRN/U/u/wo35VUQo
 WZNr9i8Jsh/wLAI1XKQxMW1+KlUDFBsmTNNVjEHsl9KYkXD8OHwk3pGLriKFn9pzN7k3
 84yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QXa/a8+v6atJW9I3K/8i8cY/Lmvtpiv+5qg62twrTiI=;
 b=pL9HprTCFKvJEjh0kr30lJsYRP7XioghKOzxoUCeoBaOx6Lr/xANmEGbIPM7ZMBBgq
 6uKbUL/8uygHoMD8qTSiOEA/6EPFk8n/UgSkuU2eEnAID0dtPl5g4qvum5Xv4cbAKV6A
 lyfOwpIVX9YcvQta6h/X3RS4q9nDNf0oKKYPmKrjDjqAhuL9HHLccGRgRcp5uzRwF+rZ
 zc8v3MHxeVY68iJTNHhTUZjECui4nXj397OeZ4WC0xmiQ+y37avEc4VW9pIAe705MXtT
 pv5KGA8eJ1YdJPNPjzbR4UvT+2MOfeusdHOb095tYC5Q4dk15F/7hOwtWMal9EwfShiw
 M8Sg==
X-Gm-Message-State: AOAM533lGAVSop9z6RYyPHOlGyv0GDAUgXwtPfVL59hOWUMhvDE+PbD8
 oS98O/MwXiMjxr7rqJjVyDEcVyIQDXt0SQOX8Jh9rw==
X-Google-Smtp-Source: ABdhPJy+kyePNsPhuIE7ky0xWpId0cA5UdAi/NGYJUBWmwsXrWoAfYSuKigLeAwba34hq5mKjf42yjcDEybxERrageM=
X-Received: by 2002:aa7:dd8e:: with SMTP id g14mr5326572edv.208.1594741626195; 
 Tue, 14 Jul 2020 08:47:06 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000000b5f9d059aa2037f@google.com>
 <20200714033252.8748-1-hdanton@sina.com>
 <20200714053205.15240-1-hdanton@sina.com>
 <20200714140859.15156-1-hdanton@sina.com>
 <20200714141815.GP24642@dhcp22.suse.cz>
In-Reply-To: <20200714141815.GP24642@dhcp22.suse.cz>
From: Todd Kjos <tkjos@google.com>
Date: Tue, 14 Jul 2020 08:46:55 -0700
Message-ID: <CAHRSSEzbCW3E0QTR0ryf3p=5J5uhs_vY2D6fFQEzP=HeCDkPGQ@mail.gmail.com>
Subject: Re: possible deadlock in shmem_fallocate (4)
To: Michal Hocko <mhocko@kernel.org>, Suren Baghdasaryan <surenb@google.com>, 
 Hridya Valsaraju <hridya@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Hillf Danton <hdanton@sina.com>, Todd Kjos <tkjos@android.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hugh Dickins <hughd@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Eric Biggers <ebiggers@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Markus Elfring <Markus.Elfring@web.de>,
 syzbot <syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 akpm@linux-foundation.org, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

+Suren Baghdasaryan +Hridya Valsaraju who support the ashmem driver.


On Tue, Jul 14, 2020 at 7:18 AM Michal Hocko <mhocko@kernel.org> wrote:
>
> On Tue 14-07-20 22:08:59, Hillf Danton wrote:
> >
> > On Tue, 14 Jul 2020 10:26:29 +0200 Michal Hocko wrote:
> > > On Tue 14-07-20 13:32:05, Hillf Danton wrote:
> > > >
> > > > On Mon, 13 Jul 2020 20:41:11 -0700 Eric Biggers wrote:
> > > > > On Tue, Jul 14, 2020 at 11:32:52AM +0800, Hillf Danton wrote:
> > > > > >
> > > > > > Add FALLOC_FL_NOBLOCK and on the shmem side try to lock inode upon the
> > > > > > new flag. And the overall upside is to keep the current gfp either in
> > > > > > the khugepaged context or not.
> > > > > >
> > > > > > --- a/include/uapi/linux/falloc.h
> > > > > > +++ b/include/uapi/linux/falloc.h
> > > > > > @@ -77,4 +77,6 @@
> > > > > >   */
> > > > > >  #define FALLOC_FL_UNSHARE_RANGE              0x40
> > > > > >
> > > > > > +#define FALLOC_FL_NOBLOCK            0x80
> > > > > > +
> > > > >
> > > > > You can't add a new UAPI flag to fix a kernel-internal problem like this.
> > > >
> > > > Sounds fair, see below.
> > > >
> > > > What the report indicates is a missing PF_MEMALLOC_NOFS and it's
> > > > checked on the ashmem side and added as an exception before going
> > > > to filesystem. On shmem side, no more than a best effort is paid
> > > > on the inteded exception.
> > > >
> > > > --- a/drivers/staging/android/ashmem.c
> > > > +++ b/drivers/staging/android/ashmem.c
> > > > @@ -437,6 +437,7 @@ static unsigned long
> > > >  ashmem_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
> > > >  {
> > > >   unsigned long freed = 0;
> > > > + bool nofs;
> > > >
> > > >   /* We might recurse into filesystem code, so bail out if necessary */
> > > >   if (!(sc->gfp_mask & __GFP_FS))
> > > > @@ -445,6 +446,11 @@ ashmem_shrink_scan(struct shrinker *shri
> > > >   if (!mutex_trylock(&ashmem_mutex))
> > > >           return -1;
> > > >
> > > > + /* enter filesystem with caution: nonblock on locking */
> > > > + nofs = current->flags & PF_MEMALLOC_NOFS;
> > > > + if (!nofs)
> > > > +         current->flags |= PF_MEMALLOC_NOFS;
> > > > +
> > > >   while (!list_empty(&ashmem_lru_list)) {
> > > >           struct ashmem_range *range =
> > > >                   list_first_entry(&ashmem_lru_list, typeof(*range), lru);
> > >
> > > I do not think this is an appropriate fix. First of all is this a real
> > > deadlock or a lockdep false positive? Is it possible that ashmem just
> >
> > The warning matters and we can do something to quiesce it.
>
> The underlying issue should be fixed rather than _something_ done to
> silence it.
>
> > > needs to properly annotate its shmem inodes? Or is it possible that
> > > the internal backing shmem file is visible to the userspace so the write
> > > path would be possible?
> > >
> > > If this a real problem then the proper fix would be to set internal
> > > shmem mapping's gfp_mask to drop __GFP_FS.
> >
> > Thanks for the tip, see below.
> >
> > Can you expand a bit on how it helps direct reclaimers like khugepaged
> > in the syzbot report wrt deadlock?
>
> I do not understand your question.
>
> > TBH I have difficult time following
> > up after staring at the chart below for quite a while.
>
> Yes, lockdep reports are quite hard to follow and they tend to confuse
> one hell out of me. But this one says that there is a reclaim dependency
> between the shmem inode lock and the reclaim context.
>
> > Possible unsafe locking scenario:
> >
> >        CPU0                    CPU1
> >        ----                    ----
> >   lock(fs_reclaim);
> >                                lock(&sb->s_type->i_mutex_key#15);
> >                                lock(fs_reclaim);
> >
> >   lock(&sb->s_type->i_mutex_key#15);
>
> Please refrain from proposing fixes until the actual problem is
> understood. I suspect that this might be just false positive because the
> lockdep cannot tell the backing shmem which is internal to ashmem(?)
> with any general shmem. But somebody really familiar with ashmem code
> should have a look I believe.
>
> --
> Michal Hocko
> SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
