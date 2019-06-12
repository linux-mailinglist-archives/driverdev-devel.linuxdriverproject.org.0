Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED9143027
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 21:30:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ACE1C88183;
	Wed, 12 Jun 2019 19:30:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fC0-D7ibWEDm; Wed, 12 Jun 2019 19:30:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AC90B880E0;
	Wed, 12 Jun 2019 19:30:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82C151BF2B7
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 19:30:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7CFC520525
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 19:30:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X6y+IgqV47ng for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 19:30:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 5411A204EC
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 19:30:11 +0000 (UTC)
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD75D21721;
 Wed, 12 Jun 2019 19:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560367811;
 bh=TefRcLwL6HmQQGtXDFu7G5/aUQGMcQtvyoCABXdF08E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iirj8BLJZA3ymFhEY0jDt88iF+xqHmjGUV1RGbmj7YeGvXqdcajyN+njm4r4EG41v
 kjKK53b/6jdjJWr8aPV81cT1RcPd4elaQLiFxhBexPd8a5gn1tgojbgUE96DR+8agj
 9b2J1vloABHphBAdiZJJU8SAGBkxO/T6Spqtsr+Y=
Date: Wed, 12 Jun 2019 12:30:09 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>
Subject: [ashmem] Re: WARNING in __vm_enough_memory
Message-ID: <20190612193008.GG18795@gmail.com>
References: <001a1144593661efb50562d9624f@google.com>
 <CACT4Y+as7aok3Yr6t2-7RZP7o5RCK4eWvbysncxSwXeLT1Nxbg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACT4Y+as7aok3Yr6t2-7RZP7o5RCK4eWvbysncxSwXeLT1Nxbg@mail.gmail.com>
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
Cc: devel@driverdev.osuosl.org, syzkaller-bugs@googlegroups.com,
 syzbot <syzbot+cc298e15b6a571ba0c55@syzkaller.appspotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 16, 2018 at 06:20:37AM +0100, 'Dmitry Vyukov' via syzkaller-bugs wrote:
> On Tue, Jan 16, 2018 at 12:58 AM, syzbot
> <syzbot+cc298e15b6a571ba0c55@syzkaller.appspotmail.com> wrote:
> > Hello,
> >
> > syzkaller hit the following crash on
> > 8418f88764046d0e8ca6a3c04a69a0e57189aa1e
> > git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/master
> > compiler: gcc (GCC) 7.1.1 20170620
> > .config is attached
> > Raw console output is attached.
> > C reproducer is attached
> > syzkaller reproducer is attached. See https://goo.gl/kgGztJ
> > for information about syzkaller reproducers
> 
> 
> Most likely it is drivers/staging/android/ashmem.c which is guilty. So
> +ashmem maintainers.
> 
> 
> > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > Reported-by: syzbot+cc298e15b6a571ba0c55@syzkaller.appspotmail.com
> > It will help syzbot understand when the bug is fixed. See footer for
> > details.
> > If you forward the report, please keep this part and the footer.
> >
> > audit: type=1400 audit(1515720420.441:8): avc:  denied  { sys_admin } for
> > pid=3511 comm="syzkaller485245" capability=21
> > scontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023
> > tcontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023 tclass=cap_userns
> > permissive=1
> > audit: type=1400 audit(1515720420.495:9): avc:  denied  { sys_chroot } for
> > pid=3512 comm="syzkaller485245" capability=18
> > scontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023
> > tcontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023 tclass=cap_userns
> > permissive=1
> > ------------[ cut here ]------------
> > memory commitment underflow
> > WARNING: CPU: 0 PID: 3512 at mm/util.c:606 __vm_enough_memory+0x5a6/0x810
> > mm/util.c:604
> > Kernel panic - not syncing: panic_on_warn set ...
> >
> > CPU: 0 PID: 3512 Comm: syzkaller485245 Not tainted 4.15.0-rc7-next-20180111+
> > #94
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > Google 01/01/2011
> > Call Trace:
> >  __dump_stack lib/dump_stack.c:17 [inline]
> >  dump_stack+0x194/0x257 lib/dump_stack.c:53
> >  panic+0x1e4/0x41c kernel/panic.c:183
> >  __warn+0x1dc/0x200 kernel/panic.c:547
> >  report_bug+0x211/0x2d0 lib/bug.c:184
> >  fixup_bug.part.11+0x37/0x80 arch/x86/kernel/traps.c:178
> >  fixup_bug arch/x86/kernel/traps.c:247 [inline]
> >  do_error_trap+0x2d7/0x3e0 arch/x86/kernel/traps.c:296
> >  do_invalid_op+0x1b/0x20 arch/x86/kernel/traps.c:315
> >  invalid_op+0x22/0x40 arch/x86/entry/entry_64.S:1102
> > RIP: 0010:__vm_enough_memory+0x5a6/0x810 mm/util.c:604
> > RSP: 0018:ffff8801bfbaf8e0 EFLAGS: 00010282
> > RAX: dffffc0000000008 RBX: 1ffff10037f75f21 RCX: ffffffff815a613e
> > RDX: 0000000000000000 RSI: 1ffff10037e84d3b RDI: 0000000000000293
> > RBP: ffff8801bfbafa90 R08: 1ffff10037f75eaf R09: 0000000000000000
> > R10: 0000000000000000 R11: 0000000000000000 R12: ffff8801bfbafa68
> > R13: ffffffff869b8c80 R14: 0000000000000fff R15: dffffc0000000000
> >  security_vm_enough_memory_mm+0x90/0xb0 security/security.c:327
> >  mmap_region+0x321/0x15a0 mm/mmap.c:1666
> >  do_mmap+0x73c/0xf70 mm/mmap.c:1494
> >  do_mmap_pgoff include/linux/mm.h:2224 [inline]
> >  vm_mmap_pgoff+0x1de/0x280 mm/util.c:333
> >  SYSC_mmap_pgoff mm/mmap.c:1544 [inline]
> >  SyS_mmap_pgoff+0x23b/0x5f0 mm/mmap.c:1502
> >  SYSC_mmap arch/x86/kernel/sys_x86_64.c:100 [inline]
> >  SyS_mmap+0x16/0x20 arch/x86/kernel/sys_x86_64.c:91
> >  entry_SYSCALL_64_fastpath+0x29/0xa0
> > RIP: 0033:0x440ac9
> > RSP: 002b:00000000007dff58 EFLAGS: 00000212 ORIG_RAX: 0000000000000009
> > RAX: ffffffffffffffda RBX: ffffffffffffffff RCX: 0000000000440ac9
> > RDX: 0000000000000003 RSI: 0000000000fff000 RDI: 0000000020000000
> > RBP: 7fffffffffffffff R08: 00000000ffffffff R09: 0000000000000000
> > R10: 0000000000000032 R11: 0000000000000212 R12: 6873612f7665642f
> > R13: 6c616b7a79732f2e R14: 0000000000000000 R15: 0000000000000000
> > Dumping ftrace buffer:
> >    (ftrace buffer empty)
> > Kernel Offset: disabled
> > Rebooting in 86400 seconds..
> >
> >
> > ---
> > This bug is generated by a dumb bot. It may contain errors.
> > See https://goo.gl/tpsmEJ for details.
> > Direct all questions to syzkaller@googlegroups.com.
> >
> > syzbot will keep track of this bug report.
> > If you forgot to add the Reported-by tag, once the fix for this bug is
> > merged
> > into any tree, please reply to this email with:
> > #syz fix: exact-commit-title
> > If you want to test a patch for this bug, please reply with:
> > #syz test: git://repo/address.git branch
> > and provide the patch inline or as an attachment.
> > To mark this as a duplicate of another syzbot report, please reply with:
> > #syz dup: exact-subject-of-another-report
> > If it's a one-off invalid bug report, please reply with:
> > #syz invalid
> > Note: if the crash happens again, it will cause creation of a new bug
> > report.
> > Note: all commands must start from beginning of the line in the email body.
> >

Can the ashmem maintainers please look into this?  syzbot has continued to hit
this on more recent kernels too, e.g.
https://syzkaller.appspot.com/text?tag=CrashReport&x=13ba3d28a00000, where the
reproducer uses ASHMEM_SET_SIZE.

- Eric
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
