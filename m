Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A5C21F782
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 18:41:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C68F89F92;
	Tue, 14 Jul 2020 16:41:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NG09odS4Oe+P; Tue, 14 Jul 2020 16:41:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 00A3289F83;
	Tue, 14 Jul 2020 16:41:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E48931BF405
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 16:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E09DD2C349
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 16:41:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fmPJ9HfJ4L18 for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 16:41:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
 [209.85.217.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 01EBC2C338
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 16:41:50 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id o184so1122568vsc.0
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 09:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YINGCuTg/V0ScCInTkOrVQEnTsSK7usumwGeZgGqKqQ=;
 b=gTT815OQYc1++cRzBt63isyjY7PLvue6XPP+S2ztOROBg3T81UL5Vrki6TtNWokdkb
 iYfeGiCWVqynVZjSGpZXcYQwukYcIXsHHjbLXqhI8UTC3UsckUhxo2zm2NKsl/b5eowS
 LFt2FmBBQZlIZ2gSc//RiVQkE9a1QtbWKiVs2K/FOVjgtZhNPDCIdQrxgBAjFt/UizvC
 gn/i/9s8AR7d1P2zDINNkURG7XCc4wacCdk0UIbzrMudFnIwRZ8QJxtt5qtklb0Su3ok
 w8mkQ+x/6Ff2mVsbsDRUPSQNuoKEdRwyDuYsz/EE0+AWrOnsJJZIEKIS5i68bdcZ3w3O
 aUjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YINGCuTg/V0ScCInTkOrVQEnTsSK7usumwGeZgGqKqQ=;
 b=efAmA/AAvUTJjj8yOPEHhRI8ZVumH1aUa6yRZoVB45LQqfcCvD2YDxqn+eUheLNFND
 U0JuRUfqoSlbxDwGERkC0XZYeYIaMhzuBnGSkHeMqxgP5VPGgBMTme7aLxZOKNwkAzd4
 hHTHHn+fA4vzQAI+bba2yii1/55g1UAtzY7AcgxP703GBXUcqkwTgpR2Xqjm2hpmsU+h
 G8P2bicdbzkaa0AyDr+d3eErZb+QpfQmr1Rp3IkOblJzHjaDwr7/QwcHmt4Of8g1VTzq
 N00T1z2fy2Mx+v9NWpCKRaZR1NYppoYArK6S86FfVt0vnRG9jVe+KhoHjFvEjgsz7U6f
 sc8Q==
X-Gm-Message-State: AOAM532m6kjIMFi6YyCQFf84+F7jC0L8orMn7eEyYJECpIVHCGkaUhpr
 5MouqPjRCvrTVBsvkAJQJn77EjAKO1bykwvg3oxXmw==
X-Google-Smtp-Source: ABdhPJxkyewbqqP1HXCa6AbuCQnOT01YbS9JgFlCoKUiAKyoNL+Q14u8HcecaJC0w5GTbBppSAXjkQYwPTeGaStIbAU=
X-Received: by 2002:a67:ed82:: with SMTP id d2mr4288020vsp.221.1594744909490; 
 Tue, 14 Jul 2020 09:41:49 -0700 (PDT)
MIME-Version: 1.0
References: <0000000000000b5f9d059aa2037f@google.com>
 <20200714033252.8748-1-hdanton@sina.com>
 <20200714053205.15240-1-hdanton@sina.com>
 <20200714140859.15156-1-hdanton@sina.com>
 <20200714141815.GP24642@dhcp22.suse.cz>
 <CAHRSSEzbCW3E0QTR0ryf3p=5J5uhs_vY2D6fFQEzP=HeCDkPGQ@mail.gmail.com>
In-Reply-To: <CAHRSSEzbCW3E0QTR0ryf3p=5J5uhs_vY2D6fFQEzP=HeCDkPGQ@mail.gmail.com>
From: Suren Baghdasaryan <surenb@google.com>
Date: Tue, 14 Jul 2020 09:41:38 -0700
Message-ID: <CAJuCfpExhJJO_xPk663-eUkmAXVVwNDd9a7ahQuwMW8JVMBJpg@mail.gmail.com>
Subject: Re: possible deadlock in shmem_fallocate (4)
To: Todd Kjos <tkjos@google.com>
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
 Linux-MM <linux-mm@kvack.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hugh Dickins <hughd@google.com>, LKML <linux-kernel@vger.kernel.org>,
 Michal Hocko <mhocko@kernel.org>, Eric Biggers <ebiggers@kernel.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Markus Elfring <Markus.Elfring@web.de>,
 syzbot <syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Hridya Valsaraju <hridya@google.com>,
 Andrew Morton <akpm@linux-foundation.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jul 14, 2020 at 8:47 AM Todd Kjos <tkjos@google.com> wrote:
>
> +Suren Baghdasaryan +Hridya Valsaraju who support the ashmem driver.

Thanks for looping me in.

>
>
> On Tue, Jul 14, 2020 at 7:18 AM Michal Hocko <mhocko@kernel.org> wrote:
> >
> > On Tue 14-07-20 22:08:59, Hillf Danton wrote:
> > >
> > > On Tue, 14 Jul 2020 10:26:29 +0200 Michal Hocko wrote:
> > > > On Tue 14-07-20 13:32:05, Hillf Danton wrote:
> > > > >
> > > > > On Mon, 13 Jul 2020 20:41:11 -0700 Eric Biggers wrote:
> > > > > > On Tue, Jul 14, 2020 at 11:32:52AM +0800, Hillf Danton wrote:
> > > > > > >
> > > > > > > Add FALLOC_FL_NOBLOCK and on the shmem side try to lock inode upon the
> > > > > > > new flag. And the overall upside is to keep the current gfp either in
> > > > > > > the khugepaged context or not.
> > > > > > >
> > > > > > > --- a/include/uapi/linux/falloc.h
> > > > > > > +++ b/include/uapi/linux/falloc.h
> > > > > > > @@ -77,4 +77,6 @@
> > > > > > >   */
> > > > > > >  #define FALLOC_FL_UNSHARE_RANGE              0x40
> > > > > > >
> > > > > > > +#define FALLOC_FL_NOBLOCK            0x80
> > > > > > > +
> > > > > >
> > > > > > You can't add a new UAPI flag to fix a kernel-internal problem like this.
> > > > >
> > > > > Sounds fair, see below.
> > > > >
> > > > > What the report indicates is a missing PF_MEMALLOC_NOFS and it's
> > > > > checked on the ashmem side and added as an exception before going
> > > > > to filesystem. On shmem side, no more than a best effort is paid
> > > > > on the inteded exception.
> > > > >
> > > > > --- a/drivers/staging/android/ashmem.c
> > > > > +++ b/drivers/staging/android/ashmem.c
> > > > > @@ -437,6 +437,7 @@ static unsigned long
> > > > >  ashmem_shrink_scan(struct shrinker *shrink, struct shrink_control *sc)
> > > > >  {
> > > > >   unsigned long freed = 0;
> > > > > + bool nofs;
> > > > >
> > > > >   /* We might recurse into filesystem code, so bail out if necessary */
> > > > >   if (!(sc->gfp_mask & __GFP_FS))
> > > > > @@ -445,6 +446,11 @@ ashmem_shrink_scan(struct shrinker *shri
> > > > >   if (!mutex_trylock(&ashmem_mutex))
> > > > >           return -1;
> > > > >
> > > > > + /* enter filesystem with caution: nonblock on locking */
> > > > > + nofs = current->flags & PF_MEMALLOC_NOFS;
> > > > > + if (!nofs)
> > > > > +         current->flags |= PF_MEMALLOC_NOFS;
> > > > > +
> > > > >   while (!list_empty(&ashmem_lru_list)) {
> > > > >           struct ashmem_range *range =
> > > > >                   list_first_entry(&ashmem_lru_list, typeof(*range), lru);
> > > >
> > > > I do not think this is an appropriate fix. First of all is this a real
> > > > deadlock or a lockdep false positive? Is it possible that ashmem just
> > >
> > > The warning matters and we can do something to quiesce it.
> >
> > The underlying issue should be fixed rather than _something_ done to
> > silence it.
> >
> > > > needs to properly annotate its shmem inodes? Or is it possible that
> > > > the internal backing shmem file is visible to the userspace so the write
> > > > path would be possible?
> > > >
> > > > If this a real problem then the proper fix would be to set internal
> > > > shmem mapping's gfp_mask to drop __GFP_FS.
> > >
> > > Thanks for the tip, see below.
> > >
> > > Can you expand a bit on how it helps direct reclaimers like khugepaged
> > > in the syzbot report wrt deadlock?
> >
> > I do not understand your question.
> >
> > > TBH I have difficult time following
> > > up after staring at the chart below for quite a while.
> >
> > Yes, lockdep reports are quite hard to follow and they tend to confuse
> > one hell out of me. But this one says that there is a reclaim dependency
> > between the shmem inode lock and the reclaim context.
> >
> > > Possible unsafe locking scenario:
> > >
> > >        CPU0                    CPU1
> > >        ----                    ----
> > >   lock(fs_reclaim);
> > >                                lock(&sb->s_type->i_mutex_key#15);
> > >                                lock(fs_reclaim);
> > >
> > >   lock(&sb->s_type->i_mutex_key#15);
> >
> > Please refrain from proposing fixes until the actual problem is
> > understood. I suspect that this might be just false positive because the
> > lockdep cannot tell the backing shmem which is internal to ashmem(?)
> > with any general shmem. But somebody really familiar with ashmem code
> > should have a look I believe.

I believe the deadlock is possible if a write to ashmem fd coincides
with shrinking of ashmem caches. I just developed a possible fix here
https://android-review.googlesource.com/c/kernel/common/+/1361205 but
wanted to test it before posting upstream. The idea is to detect such
a race between write and cache shrinking operations and let
ashmem_shrink_scan bail out if the race is detected instead of taking
inode_lock. AFAIK writing ashmem files is not a usual usage for ashmem
(standard usage is to mmap it and use as shared memory), therefore
this bailing out early should not affect ashmem cache maintenance
much. Besides ashmem_shrink_scan already bails out early if a
contention on ashmem_mutex is detected, which is a much more probable
case (see: https://elixir.bootlin.com/linux/v5.8-rc4/source/drivers/staging/android/ashmem.c#L497).

I'll test and post the patch here in a day or so if there are no early
objections to it.
Thanks!

> >
> > --
> > Michal Hocko
> > SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
