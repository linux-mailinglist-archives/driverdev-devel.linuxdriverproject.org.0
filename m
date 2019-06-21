Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAD24EE3E
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 19:57:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3090B88007;
	Fri, 21 Jun 2019 17:57:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dhl2TMjxKUsE; Fri, 21 Jun 2019 17:57:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C67C387FC3;
	Fri, 21 Jun 2019 17:57:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C2101BF473
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 17:57:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4913687BD3
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2019 17:57:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MKU37Hx4rtYM for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 17:57:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f193.google.com (mail-lj1-f193.google.com
 [209.85.208.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 73A3E87B77
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 17:57:18 +0000 (UTC)
Received: by mail-lj1-f193.google.com with SMTP id 16so6702939ljv.10
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2019 10:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KDhlKJiGaVj++G8gqDMBvH/QxdSMWIztjFlMRVLweWA=;
 b=ifzEym2rY24UWUo4k/GaFS21AZQZjEz7Eekh8v3/3ZKmxkCBUS01HoEzK4XgS3SDEz
 KGSNw8FlRCyHxtk5NT6V+XPxNlGDJbQDjQPD7b9pMg3Ya10LtINbkzGBjDaNIx4JFtrk
 lr4wtApsvOhCIbO6DqVTa6YCkKTOdUEfUoST6YuRBjpw4aUtBfi/moX1OstYe9Bp/vJ1
 ykV7z4l5DD1KRfWw6+NM5vlhCzLypqLv2EBdJxyq6H79y/YwVUtnRQO/g3ROzDv/z5Eh
 4pi9//q/pHdRaad/GmpAvyZ0KIXkD0oujMyIXKcH0prENWjqDQROnCoYRxRhtO6vAyH0
 CFGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KDhlKJiGaVj++G8gqDMBvH/QxdSMWIztjFlMRVLweWA=;
 b=TnBZZFi84Rb03mAFOQBNBWF3M+xrRiLElXIsT3D/kjx54wJsNLq4jlK9UMuXLqwH7/
 nqnqNQT8z05A5VSwBE5pCq/N9WhPtNLz6dd+6OSQTu8/9E5LoXGSQWVELON+6uu3V60F
 yGAVhQ1TauAd5wTqTL3WDCISpuMsiiRXzViUH+NlhMU05gflc/XTRCKfQG7hylMMsTic
 SZJyToruZuda2yEpqKD37JRR73OzpKGUGVuMdY3ji1hHHuj3AFsLaPPvSbXnPPYSqA/G
 TIsQBVfwcJnhSAOKc9YUuO/hogMfc5B/qK+ecWlteU8i6aPk6CYs5iO9ZdqCrTEpL0U4
 FRkQ==
X-Gm-Message-State: APjAAAXVDVWz5wuJCCQOiH6L6NOH1NtsZS/nyag6jvEo7Upc6THdtIBh
 1TQ7ywYN2FUUQAsYC3BlcXulOvp48n0VX1gUPduvfQ==
X-Google-Smtp-Source: APXvYqyvj6pAiJquwNnSvuvotAmnzfzsdgO3ROk5Ckam5CgS9lRzWIUGh+GGAxEqYmGqn2j3ZM+RjMt6YtwUJmislKw=
X-Received: by 2002:a2e:9a87:: with SMTP id p7mr25110501lji.133.1561139836177; 
 Fri, 21 Jun 2019 10:57:16 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000bb6d57058b3b98eb@google.com>
In-Reply-To: <000000000000bb6d57058b3b98eb@google.com>
From: Todd Kjos <tkjos@google.com>
Date: Fri, 21 Jun 2019 10:57:04 -0700
Message-ID: <CAHRSSEy34c=jN--pm+hp3DeMw2Q2465TohCdSoL-XoKc-wXc0A@mail.gmail.com>
Subject: Re: memory leak in binder_transaction
To: syzbot <syzbot+182ce46596c3f2e1eb24@syzkaller.appspotmail.com>
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
 Todd Kjos <tkjos@android.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 13, 2019 at 2:56 PM syzbot
<syzbot+182ce46596c3f2e1eb24@syzkaller.appspotmail.com> wrote:
>
> Hello,
>
> syzbot found the following crash on:
>
> HEAD commit:    d1fdb6d8 Linux 5.2-rc4
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=15e5ce1ea00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=cb38d33cd06d8d48
> dashboard link: https://syzkaller.appspot.com/bug?extid=182ce46596c3f2e1eb24
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1181703ea00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14e14392a00000
>
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+182ce46596c3f2e1eb24@syzkaller.appspotmail.com
>
> -executor774" scontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023
> tcontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023 tclass=binder
> permissive=1
> BUG: memory leak

Fix sent: https://lore.kernel.org/patchwork/patch/1092398/

>
> unreferenced object 0xffff888123934800 (size 32):
>    comm "syz-executor774", pid 7083, jiffies 4294941834 (age 7.970s)
>    hex dump (first 32 bytes):
>      00 48 93 23 81 88 ff ff 00 48 93 23 81 88 ff ff  .H.#.....H.#....
>      02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
>    backtrace:
>      [<0000000038ba7202>] kmemleak_alloc_recursive
> include/linux/kmemleak.h:43 [inline]
>      [<0000000038ba7202>] slab_post_alloc_hook mm/slab.h:439 [inline]
>      [<0000000038ba7202>] slab_alloc mm/slab.c:3326 [inline]
>      [<0000000038ba7202>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
>      [<0000000004e63839>] kmalloc include/linux/slab.h:547 [inline]
>      [<0000000004e63839>] kzalloc include/linux/slab.h:742 [inline]
>      [<0000000004e63839>] binder_transaction+0x28b/0x2eb0
> drivers/android/binder.c:3072
>      [<0000000050997ec4>] binder_thread_write+0x357/0x1430
> drivers/android/binder.c:3794
>      [<00000000ab2de227>] binder_ioctl_write_read
> drivers/android/binder.c:4827 [inline]
>      [<00000000ab2de227>] binder_ioctl+0x8bc/0xbb4
> drivers/android/binder.c:5004
>      [<000000002eec2b63>] vfs_ioctl fs/ioctl.c:46 [inline]
>      [<000000002eec2b63>] file_ioctl fs/ioctl.c:509 [inline]
>      [<000000002eec2b63>] do_vfs_ioctl+0x62a/0x810 fs/ioctl.c:696
>      [<0000000048cfc9e6>] ksys_ioctl+0x86/0xb0 fs/ioctl.c:713
>      [<0000000030bf392d>] __do_sys_ioctl fs/ioctl.c:720 [inline]
>      [<0000000030bf392d>] __se_sys_ioctl fs/ioctl.c:718 [inline]
>      [<0000000030bf392d>] __x64_sys_ioctl+0x1e/0x30 fs/ioctl.c:718
>      [<000000007dec438c>] do_syscall_64+0x76/0x1a0
> arch/x86/entry/common.c:301
>      [<00000000ae043c96>] entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
>
>
> ---
> This bug is generated by a bot. It may contain errors.
> See https://goo.gl/tpsmEJ for more information about syzbot.
> syzbot engineers can be reached at syzkaller@googlegroups.com.
>
> syzbot will keep track of this bug report. See:
> https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
> syzbot can test patches for this bug, for details see:
> https://goo.gl/tpsmEJ#testing-patches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
