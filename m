Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53551239AE
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 16:18:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7463C23B28;
	Mon, 20 May 2019 14:18:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W+bnJmQusz5F; Mon, 20 May 2019 14:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 7A5F22326C;
	Mon, 20 May 2019 14:18:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 065D41BF3A4
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 14:18:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 02DD98577F
 for <devel@linuxdriverproject.org>; Mon, 20 May 2019 14:18:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FoiQ-bmePS9S for <devel@linuxdriverproject.org>;
 Mon, 20 May 2019 14:18:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-it1-f199.google.com (mail-it1-f199.google.com
 [209.85.166.199])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4FE8E85722
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 14:18:07 +0000 (UTC)
Received: by mail-it1-f199.google.com with SMTP id 73so14084883itl.2
 for <devel@driverdev.osuosl.org>; Mon, 20 May 2019 07:18:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=P+sFv2uSPT1L4zUsLZGVb581nILdaxJm6Izz/gA2bCo=;
 b=e054Oe0ogoMj7ziW1/hS7TcH/Ke+b/jvFLq/SY2miPoFXtcNCfC1f52aAu4RfVaTZW
 zPQzFfDDYKLAtxBxo1ta/MtlXJdrcev2/cDo5fF0CRvpo9oOcXIGPVuQJTOsUScasNVi
 MHT+uwsIMGbwb+A7f48j1Kf+L1KXMu/2QeciSGSif9Zduybbs2YOtd7NivOLZKtx2bP2
 Mb/vSL/REPRGJ3WDf0JJpmFQMmAIHmgSHopnoiJYzD9JlWqnVHoG0wK5UuwsPWqoZ5J6
 3oEWoDNTI5uiPVrCTpLrFwFfYtPwI2es2w57qmnHKwQBj4BoeSNeZ1toyJE+jQjo/QUk
 LCWQ==
X-Gm-Message-State: APjAAAV4S+V5FboCp5zJcshiw1GxThr3XNVn8kMNJ/7YHgxMvxqQXOPo
 5FoF4gN8Q7ZAuDnNdY9SsZAdsnzPeGFhGek3PYGGsqqj3CTE
X-Google-Smtp-Source: APXvYqxjFiFl8L3a9AU7tD857OMIH3xVNRoGOw4n8gDhqtEP+BPGkHVrYFTvYy50gR7dvZOqLw4OdNhbK04P9mZYN1JC0ltdjnNX
MIME-Version: 1.0
X-Received: by 2002:a6b:8b49:: with SMTP id n70mr15033070iod.198.1558361886677; 
 Mon, 20 May 2019 07:18:06 -0700 (PDT)
Date: Mon, 20 May 2019 07:18:06 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000afe2c70589526668@google.com>
Subject: WARNING in binder_transaction_buffer_release
From: syzbot <syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com>
To: arve@android.com, christian@brauner.io, devel@driverdev.osuosl.org, 
 gregkh@linuxfoundation.org, joel@joelfernandes.org, 
 linux-kernel@vger.kernel.org, maco@android.com, 
 syzkaller-bugs@googlegroups.com, tkjos@android.com
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

syzbot found the following crash on:

HEAD commit:    72cf0b07 Merge tag 'sound-fix-5.2-rc1' of git://git.kernel..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=17c7d4bca00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d103f114f9010324
dashboard link: https://syzkaller.appspot.com/bug?extid=8b3c354d33c4ac78bfad
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
userspace arch: i386
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15b99b44a00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+8b3c354d33c4ac78bfad@syzkaller.appspotmail.com

WARNING: CPU: 1 PID: 8535 at drivers/android/binder.c:2368  
binder_transaction_buffer_release+0x673/0x8f0 drivers/android/binder.c:2368
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 8535 Comm: syz-executor.2 Not tainted 5.1.0+ #19
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x172/0x1f0 lib/dump_stack.c:113
  panic+0x2cb/0x715 kernel/panic.c:214
  __warn.cold+0x20/0x4c kernel/panic.c:571
  report_bug+0x263/0x2b0 lib/bug.c:186
  fixup_bug arch/x86/kernel/traps.c:179 [inline]
  fixup_bug arch/x86/kernel/traps.c:174 [inline]
  do_error_trap+0x11b/0x200 arch/x86/kernel/traps.c:272
  do_invalid_op+0x37/0x50 arch/x86/kernel/traps.c:291
  invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:986
RIP: 0010:binder_transaction_buffer_release+0x673/0x8f0  
drivers/android/binder.c:2368
Code: 31 ff 41 89 c5 89 c6 e8 7b 04 1f fc 45 85 ed 0f 85 1f 41 01 00 49 8d  
47 40 48 89 85 50 fe ff ff e9 9d fa ff ff e8 dd 02 1f fc <0f> 0b e9 7f fc  
ff ff e8 d1 02 1f fc 48 89 d8 45 31 c9 4c 89 fe 4c
RSP: 0018:ffff88807b2775f0 EFLAGS: 00010293
RAX: ffff888092b1e040 RBX: 0000000000000060 RCX: 1ffff11012563caa
RDX: 0000000000000000 RSI: ffffffff85519e13 RDI: ffff888097a2d248
RBP: ffff88807b2777d8 R08: ffff888092b1e040 R09: ffffed100f64eee3
R10: ffffed100f64eee2 R11: ffff88807b277717 R12: ffff88808fd2c340
R13: 0000000000000068 R14: ffff88807b2777b0 R15: ffff88809f7ea580
  binder_transaction+0x153d/0x6620 drivers/android/binder.c:3484
  binder_thread_write+0x87e/0x2820 drivers/android/binder.c:3792
  binder_ioctl_write_read drivers/android/binder.c:4836 [inline]
  binder_ioctl+0x102f/0x1833 drivers/android/binder.c:5013
  __do_compat_sys_ioctl fs/compat_ioctl.c:1052 [inline]
  __se_compat_sys_ioctl fs/compat_ioctl.c:998 [inline]
  __ia32_compat_sys_ioctl+0x195/0x620 fs/compat_ioctl.c:998
  do_syscall_32_irqs_on arch/x86/entry/common.c:337 [inline]
  do_fast_syscall_32+0x27b/0xd7d arch/x86/entry/common.c:408
  entry_SYSENTER_compat+0x70/0x7f arch/x86/entry/entry_64_compat.S:139
RIP: 0023:0xf7f9e849
Code: 85 d2 74 02 89 0a 5b 5d c3 8b 04 24 c3 8b 14 24 c3 8b 3c 24 c3 90 90  
90 90 90 90 90 90 90 90 90 90 51 52 55 89 e5 0f 34 cd 80 <5d> 5a 59 c3 90  
90 90 90 eb 0d 90 90 90 90 90 90 90 90 90 90 90 90
RSP: 002b:00000000f7f9a0cc EFLAGS: 00000296 ORIG_RAX: 0000000000000036
RAX: ffffffffffffffda RBX: 0000000000000004 RCX: 00000000c0306201
RDX: 0000000020000140 RSI: 0000000000000000 RDI: 0000000000000000
RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: 0000000000000000 R15: 0000000000000000
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
