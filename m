Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F4D1E3CB7
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 10:54:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C3B8823B2B;
	Wed, 27 May 2020 08:54:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CDaKhDwmW-fd; Wed, 27 May 2020 08:54:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 56F3E2011A;
	Wed, 27 May 2020 08:54:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A0EAA1BF844
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:54:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 99E0F86949
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JuJikcrgb7yN for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 08:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E925584432
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 08:54:17 +0000 (UTC)
Received: by mail-il1-f198.google.com with SMTP id c29so4506458ilf.20
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 01:54:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=ZHI11N//sJVG+YwAmx5GjEx0JsAlT/tR96kXBprpZ4I=;
 b=CPDX72Vpoc/5LKB0BpjTjEgA2/hbH+HqTQqNF/S65w8x+y5lDS1RXAt5rmYlB60PE+
 ZNKh5vWCEtKmjOeNY3CL1U4eq1mb0pPP7ufCYpXUsj4VSZ8JifOdGp2IW46YtKUTAKKp
 KqhIFTy5AVpcpsXAttQwUyjBUGwsVB0TPLxsImexK2S5Zt3vLJDbhlti6aEsQ7yutwgQ
 6e+BsoC+tosZq/UBADGbzorIb+FjfhDNtItnfju6rBmBvCiKVutTFtyEtHkigjxVaaAA
 fAjT20mvmZnHaX4Bbx3iZNYqSzrxWkuhFqGuHW9PNYy58nbqFFDJUU3HMlIMqoh1sa5I
 juCg==
X-Gm-Message-State: AOAM530W6gmjT0DerkSKmT/2KBhi68RYzoqwXcdYNOuITwE1jfaFrva8
 m+Xeq5dJpJlDqPbaSTxJBsIrSSLj95gM9OpkbvxkijK0Q0r9
X-Google-Smtp-Source: ABdhPJxkjDq3z5l9yAW41Kdctcg+iQ2G+i1GAK9TFtWH+NrEpIwhDhfzR7u+epipnIJAcReVJgh71U3Bes+ndI3L//cGDcltqmxO
MIME-Version: 1.0
X-Received: by 2002:a05:6602:2dd4:: with SMTP id
 l20mr20302859iow.13.1590569657245; 
 Wed, 27 May 2020 01:54:17 -0700 (PDT)
Date: Wed, 27 May 2020 01:54:17 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006925ea05a69d5bfb@google.com>
Subject: WARNING in binder_transaction_buffer_release (2)
From: syzbot <syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com>
To: arve@android.com, christian@brauner.io, devel@driverdev.osuosl.org, 
 gregkh@linuxfoundation.org, joel@joelfernandes.org, 
 linux-kernel@vger.kernel.org, maco@android.com, 
 syzkaller-bugs@googlegroups.com, tkjos@android.com, tkjos@google.com
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

syzbot found the following crash on:

HEAD commit:    44456565 Merge tag 'io_uring-5.7-2020-05-22' of git://git...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=12990cba100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b3368ce0cc5f5ace
dashboard link: https://syzkaller.appspot.com/bug?extid=e113a0b970b7b3f394ba
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=165b01e2100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14706016100000

The bug was bisected to:

commit 44d8047f1d87adc2fd7eccc88533794f6d88c15e
Author: Todd Kjos <tkjos@android.com>
Date:   Tue Aug 28 20:46:25 2018 +0000

    binder: use standard functions to allocate fds

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=134e254a100000
final crash:    https://syzkaller.appspot.com/x/report.txt?x=10ce254a100000
console output: https://syzkaller.appspot.com/x/log.txt?x=174e254a100000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+e113a0b970b7b3f394ba@syzkaller.appspotmail.com
Fixes: 44d8047f1d87 ("binder: use standard functions to allocate fds")

------------[ cut here ]------------
WARNING: CPU: 1 PID: 7071 at drivers/android/binder.c:2348 binder_transaction_buffer_release+0x601/0x8a0 drivers/android/binder.c:2348
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 7071 Comm: syz-executor142 Not tainted 5.7.0-rc6-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x188/0x20d lib/dump_stack.c:118
 panic+0x2e3/0x75c kernel/panic.c:221
 __warn.cold+0x2f/0x35 kernel/panic.c:582
 report_bug+0x27b/0x2f0 lib/bug.c:195
 fixup_bug arch/x86/kernel/traps.c:175 [inline]
 fixup_bug arch/x86/kernel/traps.c:170 [inline]
 do_error_trap+0x12b/0x220 arch/x86/kernel/traps.c:267
 do_invalid_op+0x32/0x40 arch/x86/kernel/traps.c:286
 invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1027
RIP: 0010:binder_transaction_buffer_release+0x601/0x8a0 drivers/android/binder.c:2348
Code: bb fd 31 ff 41 89 c5 89 c6 e8 bb ff 81 fb 45 85 ed 0f 85 f9 4b 01 00 48 8d 45 40 48 89 44 24 28 e9 fa fa ff ff e8 2f fe 81 fb <0f> 0b e9 87 fc ff ff e8 23 fe 81 fb 4c 8b 44 24 20 48 89 d8 45 31
RSP: 0018:ffffc900018e7620 EFLAGS: 00010293
RAX: ffff8880a12da5c0 RBX: 0000000000000058 RCX: 1ffff1101425b55b
RDX: 0000000000000000 RSI: ffffffff85f136f1 RDI: ffff88809db1c048
RBP: ffff88809290a080 R08: ffff8880a12da5c0 R09: fffff5200031cee7
R10: ffffc900018e7737 R11: fffff5200031cee6 R12: ffff88809187a040
R13: 0000000000000060 R14: ffff88809db1c000 R15: 0000000000000060
 binder_transaction+0x146d/0x6500 drivers/android/binder.c:3486
 binder_thread_write+0x818/0x2560 drivers/android/binder.c:3796
 binder_ioctl_write_read drivers/android/binder.c:4847 [inline]
 binder_ioctl+0x1008/0x1862 drivers/android/binder.c:5024
 vfs_ioctl fs/ioctl.c:47 [inline]
 ksys_ioctl+0x11a/0x180 fs/ioctl.c:771
 __do_sys_ioctl fs/ioctl.c:780 [inline]
 __se_sys_ioctl fs/ioctl.c:778 [inline]
 __x64_sys_ioctl+0x6f/0xb0 fs/ioctl.c:778
 do_syscall_64+0xf6/0x7d0 arch/x86/entry/common.c:295
 entry_SYSCALL_64_after_hwframe+0x49/0xb3
RIP: 0033:0x44b749
Code: e8 5c d9 02 00 48 83 c4 18 c3 0f 1f 80 00 00 00 00 48 89 f8 48 89 f7 48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff ff 0f 83 bb d0 fb ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007f65c624dce8 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00000000006ddc48 RCX: 000000000044b749
RDX: 0000000020000540 RSI: 00000000c0306201 RDI: 0000000000000003
RBP: 00000000006ddc40 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00000000006ddc4c
R13: 00007ffd9783511f R14: 00007f65c624e9c0 R15: 00000000006ddc4c
Kernel Offset: disabled
Rebooting in 86400 seconds..


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
For information about bisection process see: https://goo.gl/tpsmEJ#bisection
syzbot can test patches for this bug, for details see:
https://goo.gl/tpsmEJ#testing-patches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
