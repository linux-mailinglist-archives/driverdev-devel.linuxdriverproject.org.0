Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF8519D6CF
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 14:35:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD18A882F6;
	Fri,  3 Apr 2020 12:35:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S+prZCFhFPuy; Fri,  3 Apr 2020 12:35:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B03A882BB;
	Fri,  3 Apr 2020 12:35:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 05A391BF2C4
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 12:35:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F1DAD88C91
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 12:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JsZmbvwCGGNi for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 12:35:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 69C6C88B93
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 12:35:13 +0000 (UTC)
Received: by mail-il1-f197.google.com with SMTP id 75so6680180ilv.16
 for <devel@driverdev.osuosl.org>; Fri, 03 Apr 2020 05:35:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=9i6KFf8WUAlZJA8NaxnAVF5EgcrymN6UAh6zvSpVWlU=;
 b=RMT7yTu8h2sU1ybKaZ+OG0dV+SysM8D7jQYQmXy3j4BM2azJohC2qGVWADZS00C/hz
 lw3kNdRZO/M4EbJP689VOO+g85V7E679E1An4etB4Vg4o3uTFroIcq1anjqP0uzeU8Lv
 MiCdO73KoRzW7ZuOHeKo8Bcd0hVrt3mqDN8uI73InHFCFoz4Xdxn2vdadfKsvKjlurM0
 V8z+EL25hqrI2+1JNNBVx4w6xR4nejppsfczxoRcpxZBTa4tmAb+6w0zoy6SqOq2cL0c
 2BsCnAhz4pLOjRsZwKEvfPgJhdz5arm3kF5yKiEyMEn/PiUKloqcdp7WXFI8Ial37F+F
 IizA==
X-Gm-Message-State: AGi0PuZpIs/1ZA6aoKRMgTUTKIFUAD34s10zzatMM7h9X47dJdcWAgZO
 Shpc49POTO7n3bXGsqFx+qC7w2ZLk3yT4KtNZ5jzIDTwZ5+o
X-Google-Smtp-Source: APiQypKXPAosbIPldoa5yp5n5oDNa/0NJcZ/JuFc+bCwocwk/C4fvhskYbi+ZTbJyJC4peWtusiAOlVC9sGWh8CnEB7ZfZ5M1JRF
MIME-Version: 1.0
X-Received: by 2002:a5e:8a4d:: with SMTP id o13mr7561447iom.31.1585917312640; 
 Fri, 03 Apr 2020 05:35:12 -0700 (PDT)
Date: Fri, 03 Apr 2020 05:35:12 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000102ba005a2622624@google.com>
Subject: KCSAN: data-race in binder_dec_node_nilocked / binder_state_show
From: syzbot <syzbot+71f39766a98dddab97b5@syzkaller.appspotmail.com>
To: arve@android.com, christian@brauner.io, devel@driverdev.osuosl.org, 
 elver@google.com, gregkh@linuxfoundation.org, joel@joelfernandes.org, 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

syzbot found the following crash on:

HEAD commit:    245a4300 Merge branch 'rcu/kcsan' into tip/locking/kcsan
git tree:       https://github.com/google/ktsan.git kcsan
console output: https://syzkaller.appspot.com/x/log.txt?x=106b67f1e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a4b9db179318d21f
dashboard link: https://syzkaller.appspot.com/bug?extid=71f39766a98dddab97b5
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+71f39766a98dddab97b5@syzkaller.appspotmail.com

==================================================================
BUG: KCSAN: data-race in binder_dec_node_nilocked / binder_state_show

write to 0xffff88809f276954 of 4 bytes by task 1408 on cpu 0:
 binder_state_show+0xd8/0x260 drivers/android/binder.c:5938
 seq_read+0x350/0x9d0 fs/seq_file.c:229
 full_proxy_read+0xbd/0x100 fs/debugfs/file.c:220
 do_loop_readv_writev fs/read_write.c:714 [inline]
 do_loop_readv_writev fs/read_write.c:701 [inline]
 do_iter_read+0x357/0x3d0 fs/read_write.c:935
 vfs_readv+0x9c/0xf0 fs/read_write.c:997
 do_preadv+0x131/0x1d0 fs/read_write.c:1089
 __do_sys_preadv fs/read_write.c:1139 [inline]
 __se_sys_preadv fs/read_write.c:1134 [inline]
 __x64_sys_preadv+0x61/0x80 fs/read_write.c:1134
 do_syscall_64+0xcc/0x3a0 arch/x86/entry/common.c:294
 entry_SYSCALL_64_after_hwframe+0x44/0xa9

read to 0xffff88809f276954 of 4 bytes by task 1416 on cpu 1:
 binder_dec_node_nilocked+0x382/0x610 drivers/android/binder.c:1261
 binder_dec_node_tmpref+0xa3/0x120 drivers/android/binder.c:1379
 binder_put_node drivers/android/binder.c:1387 [inline]
 binder_state_show+0x1aa/0x260 drivers/android/binder.c:5950
 seq_read+0x350/0x9d0 fs/seq_file.c:229
 full_proxy_read+0xbd/0x100 fs/debugfs/file.c:220
 do_loop_readv_writev fs/read_write.c:714 [inline]
 do_loop_readv_writev fs/read_write.c:701 [inline]
 do_iter_read+0x357/0x3d0 fs/read_write.c:935
 vfs_readv+0x9c/0xf0 fs/read_write.c:997
 do_preadv+0x131/0x1d0 fs/read_write.c:1089
 __do_sys_preadv fs/read_write.c:1139 [inline]
 __se_sys_preadv fs/read_write.c:1134 [inline]
 __x64_sys_preadv+0x61/0x80 fs/read_write.c:1134
 do_syscall_64+0xcc/0x3a0 arch/x86/entry/common.c:294
 entry_SYSCALL_64_after_hwframe+0x44/0xa9

Reported by Kernel Concurrency Sanitizer on:
CPU: 1 PID: 1416 Comm: syz-executor.1 Not tainted 5.5.0-rc1-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
==================================================================


---
This bug is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this bug report. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
