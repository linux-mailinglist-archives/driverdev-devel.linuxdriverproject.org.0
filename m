Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D99A142FDA
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 21:23:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9F68D226C2;
	Wed, 12 Jun 2019 19:23:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id taioNf3EmPPZ; Wed, 12 Jun 2019 19:23:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4C31E20774;
	Wed, 12 Jun 2019 19:23:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 10A801BF2B7
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 19:23:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D2FC204B5
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 19:23:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M0HmipMEClkn for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 19:23:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C0D6920483
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 19:23:14 +0000 (UTC)
Received: from gmail.com (unknown [104.132.1.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E91520896;
 Wed, 12 Jun 2019 19:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560367394;
 bh=NV6CAWoAmAxUEUfbDMwR/y4kWphXPGu1oOy5Nizf0fs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YA9bhlSCMj4KbygGwBHJT1K2gxbuDR6fl8c4iTJdA9/CZM8ZLzzSJ9/UIgyIcWUvQ
 29nkRqarhkwbngAl1DBb1N7BQuHffboe+vNqVsOhuzOhG8hRUrJDIx97xCsPrIkzPA
 FZobjhKujKUI7TkWnNupgJk2B/z2qpWRiKZd7NQg=
Date: Wed, 12 Jun 2019 12:23:12 -0700
From: Eric Biggers <ebiggers@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>
Subject: Re: WARNING in binder_transaction_buffer_release
Message-ID: <20190612192312.GF18795@gmail.com>
References: <000000000000afe2c70589526668@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <000000000000afe2c70589526668@google.com>
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
Cc: syzbot <syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com>,
 devel@driverdev.osuosl.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 20, 2019 at 07:18:06AM -0700, syzbot wrote:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    72cf0b07 Merge tag 'sound-fix-5.2-rc1' of git://git.kernel..
> git tree:       upstream
> console output: https://syzkaller.appspot.com/x/log.txt?x=17c7d4bca00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=d103f114f9010324
> dashboard link: https://syzkaller.appspot.com/bug?extid=8b3c354d33c4ac78bfad
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> userspace arch: i386
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15b99b44a00000
> 
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com
> 
> WARNING: CPU: 1 PID: 8535 at drivers/android/binder.c:2368
> binder_transaction_buffer_release+0x673/0x8f0 drivers/android/binder.c:2368
> Kernel panic - not syncing: panic_on_warn set ...
> CPU: 1 PID: 8535 Comm: syz-executor.2 Not tainted 5.1.0+ #19
> Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> Google 01/01/2011
> Call Trace:
>  __dump_stack lib/dump_stack.c:77 [inline]
>  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
>  panic+0x2cb/0x715 kernel/panic.c:214
>  __warn.cold+0x20/0x4c kernel/panic.c:571
>  report_bug+0x263/0x2b0 lib/bug.c:186
>  fixup_bug arch/x86/kernel/traps.c:179 [inline]
>  fixup_bug arch/x86/kernel/traps.c:174 [inline]
>  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
>  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
>  invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:986
> RIP: 0010:binder_transaction_buffer_release+0x673/0x8f0
> drivers/android/binder.c:2368
> Code: 31 ff 41 89 c5 89 c6 e8 7b 04 1f fc 45 85 ed 0f 85 1f 41 01 00 49 8d
> 47 40 48 89 85 50 fe ff ff e9 9d fa ff ff e8 dd 02 1f fc <0f> 0b e9 7f fc ff
> ff e8 d1 02 1f fc 48 89 d8 45 31 c9 4c 89 fe 4c
> RSP: 0018:ffff88807b2775f0 EFLAGS: 00010293
> RAX: ffff888092b1e040 RBX: 0000000000000060 RCX: 1ffff11012563caa
> RDX: 0000000000000000 RSI: ffffffff85519e13 RDI: ffff888097a2d248
> RBP: ffff88807b2777d8 R08: ffff888092b1e040 R09: ffffed100f64eee3
> R10: ffffed100f64eee2 R11: ffff88807b277717 R12: ffff88808fd2c340
> R13: 0000000000000068 R14: ffff88807b2777b0 R15: ffff88809f7ea580
>  binder_transaction+0x153d/0x6620 drivers/android/binder.c:3484
>  binder_thread_write+0x87e/0x2820 drivers/android/binder.c:3792
>  binder_ioctl_write_read drivers/android/binder.c:4836 [inline]
>  binder_ioctl+0x102f/0x1833 drivers/android/binder.c:5013
>  __do_compat_sys_ioctl fs/compat_ioctl.c:1052 [inline]
>  __se_compat_sys_ioctl fs/compat_ioctl.c:998 [inline]
>  __ia32_compat_sys_ioctl+0x195/0x620 fs/compat_ioctl.c:998
>  do_syscall_32_irqs_on arch/x86/entry/common.c:337 [inline]
>  do_fast_syscall_32+0x27b/0xd7d arch/x86/entry/common.c:408
>  entry_SYSENTER_compat+0x70/0x7f arch/x86/entry/entry_64_compat.S:139
> RIP: 0023:0xf7f9e849
> Code: 85 d2 74 02 89 0a 5b 5d c3 8b 04 24 c3 8b 14 24 c3 8b 3c 24 c3 90 90
> 90 90 90 90 90 90 90 90 90 90 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90 90
> 90 90 eb 0d 90 90 90 90 90 90 90 90 90 90 90 90
> RSP: 002b:00000000f7f9a0cc EFLAGS: 00000296 ORIG_RAX: 0000000000000036
> RAX: ffffffffffffffda RBX: 0000000000000004 RCX: 00000000c0306201
> RDX: 0000000020000140 RSI: 0000000000000000 RDI: 0000000000000000
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
> R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
> Kernel Offset: disabled
> Rebooting in 86400 seconds..
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
> 

Are any of the binder maintainers planning to fix this?  This seems to be the
only open syzbot report for binder on the upstream kernel.

- Eric
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
