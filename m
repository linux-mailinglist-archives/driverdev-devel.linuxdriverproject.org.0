Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EF421E628
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jul 2020 05:07:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A7CB986D50;
	Tue, 14 Jul 2020 03:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ugX_WnxgmOQ; Tue, 14 Jul 2020 03:07:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BCB9C86CB5;
	Tue, 14 Jul 2020 03:07:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F34261BF34D
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 03:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EC8168A1D0
 for <devel@linuxdriverproject.org>; Tue, 14 Jul 2020 03:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qcN0H2iUS05s for <devel@linuxdriverproject.org>;
 Tue, 14 Jul 2020 03:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D7A48A1B0
 for <devel@driverdev.osuosl.org>; Tue, 14 Jul 2020 03:07:16 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id l7so5927942ioq.16
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 20:07:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=CImQQPkNzCU37gU91u+NKjQNkiALiZr5IDmxG884hmA=;
 b=bKKrE2vVx8SpyBrDtqymSza+rbGBlzVdYyq7HQspMHvOjEv2UefVWkuM4G8Lki0z/r
 Q7CvkRvmgAoLZn92OHXq8YvfRIaGN75xhBbVK76M5kXwgyE0sRB3BVgidW6MIB5De7fT
 iTTEoMryhTPLzgVqpMqhjeAU/jvXySHO6a2uthWvbbYpBjmsR/TUdDe9YWVoRri1Xijp
 fXhTUQ8NNa0YhSI3SI0E/d5rTZvXUrTKdQutXFk+qnxdsvsAJLkoKaPJm9tgXMq1OvHw
 G/hy+WVAyx2347M85V6b1NAfcSO2GO+VWGUrJA2koxKvoO3PdkP0RrV/0DaNd343Jzws
 EdxQ==
X-Gm-Message-State: AOAM531g0tK0Uj4uQhCLyVffjInUfqQhRfqPC6Xl0Uaj89+MB4Razk9j
 +rqCvq2YYOdfqI8jLbsje8qOL2khfdSbGoFxLhDksRyRQg8g
X-Google-Smtp-Source: ABdhPJwjNA+uyaNgP2m65nUhSW08tT3ZjMNxC+298sH99oc4goBcR/8XSqI96Fs0ZseEY31aPHTG2LED+IzZBtPi4nAhLtcHoVLa
MIME-Version: 1.0
X-Received: by 2002:a05:6638:1409:: with SMTP id
 k9mr3644747jad.125.1594696035394; 
 Mon, 13 Jul 2020 20:07:15 -0700 (PDT)
Date: Mon, 13 Jul 2020 20:07:15 -0700
In-Reply-To: <0000000000000b5f9d059aa2037f@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000b6e94b05aa5e1a1c@google.com>
Subject: Re: possible deadlock in shmem_fallocate (4)
From: syzbot <syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com>
To: akpm@linux-foundation.org, arve@android.com, christian@brauner.io, 
 devel@driverdev.osuosl.org, ebiggers@kernel.org, gregkh@linuxfoundation.org, 
 hdanton@sina.com, hughd@google.com, joel@joelfernandes.org, 
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, maco@android.com, 
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

syzbot has found a reproducer for the following crash on:

HEAD commit:    11ba4688 Linux 5.8-rc5
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=175391fb100000
kernel config:  https://syzkaller.appspot.com/x/.config?x=a160d1053fc89af5
dashboard link: https://syzkaller.appspot.com/bug?extid=7a0d9d0b26efefe61780
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=104d9c77100000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1343e95d100000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+7a0d9d0b26efefe61780@syzkaller.appspotmail.com

======================================================
WARNING: possible circular locking dependency detected
5.8.0-rc5-syzkaller #0 Not tainted
------------------------------------------------------
khugepaged/1158 is trying to acquire lock:
ffff8882071865b0 (&sb->s_type->i_mutex_key#15){+.+.}-{3:3}, at: inode_lock include/linux/fs.h:800 [inline]
ffff8882071865b0 (&sb->s_type->i_mutex_key#15){+.+.}-{3:3}, at: shmem_fallocate+0x153/0xd90 mm/shmem.c:2707

but task is already holding lock:
ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: fs_reclaim_release mm/page_alloc.c:4202 [inline]
ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: fs_reclaim_release mm/page_alloc.c:4198 [inline]
ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: __perform_reclaim mm/page_alloc.c:4227 [inline]
ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: __alloc_pages_direct_reclaim mm/page_alloc.c:4244 [inline]
ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: __alloc_pages_slowpath.constprop.0+0x1554/0x2780 mm/page_alloc.c:4650

which lock already depends on the new lock.


the existing dependency chain (in reverse order) is:

-> #1 (fs_reclaim){+.+.}-{0:0}:
       __fs_reclaim_acquire mm/page_alloc.c:4183 [inline]
       fs_reclaim_acquire mm/page_alloc.c:4194 [inline]
       prepare_alloc_pages mm/page_alloc.c:4780 [inline]
       __alloc_pages_nodemask+0x3d1/0x930 mm/page_alloc.c:4832
       alloc_pages_vma+0xdd/0x720 mm/mempolicy.c:2255
       shmem_alloc_page+0x11f/0x1f0 mm/shmem.c:1502
       shmem_alloc_and_acct_page+0x161/0x8a0 mm/shmem.c:1527
       shmem_getpage_gfp+0x511/0x2450 mm/shmem.c:1823
       shmem_getpage mm/shmem.c:153 [inline]
       shmem_write_begin+0xf9/0x1d0 mm/shmem.c:2459
       generic_perform_write+0x20a/0x4f0 mm/filemap.c:3318
       __generic_file_write_iter+0x24b/0x610 mm/filemap.c:3447
       generic_file_write_iter+0x3a6/0x5c0 mm/filemap.c:3479
       call_write_iter include/linux/fs.h:1908 [inline]
       new_sync_write+0x422/0x650 fs/read_write.c:503
       vfs_write+0x59d/0x6b0 fs/read_write.c:578
       ksys_write+0x12d/0x250 fs/read_write.c:631
       do_syscall_64+0x60/0xe0 arch/x86/entry/common.c:384
       entry_SYSCALL_64_after_hwframe+0x44/0xa9

-> #0 (&sb->s_type->i_mutex_key#15){+.+.}-{3:3}:
       check_prev_add kernel/locking/lockdep.c:2496 [inline]
       check_prevs_add kernel/locking/lockdep.c:2601 [inline]
       validate_chain kernel/locking/lockdep.c:3218 [inline]
       __lock_acquire+0x2acb/0x56e0 kernel/locking/lockdep.c:4380
       lock_acquire+0x1f1/0xad0 kernel/locking/lockdep.c:4959
       down_write+0x8d/0x150 kernel/locking/rwsem.c:1531
       inode_lock include/linux/fs.h:800 [inline]
       shmem_fallocate+0x153/0xd90 mm/shmem.c:2707
       ashmem_shrink_scan.part.0+0x2e9/0x490 drivers/staging/android/ashmem.c:490
       ashmem_shrink_scan+0x6c/0xa0 drivers/staging/android/ashmem.c:473
       do_shrink_slab+0x3c6/0xab0 mm/vmscan.c:518
       shrink_slab+0x16f/0x5c0 mm/vmscan.c:679
       shrink_node_memcgs mm/vmscan.c:2658 [inline]
       shrink_node+0x519/0x1b60 mm/vmscan.c:2770
       shrink_zones mm/vmscan.c:2973 [inline]
       do_try_to_free_pages+0x38b/0x1340 mm/vmscan.c:3026
       try_to_free_pages+0x29a/0x8b0 mm/vmscan.c:3265
       __perform_reclaim mm/page_alloc.c:4223 [inline]
       __alloc_pages_direct_reclaim mm/page_alloc.c:4244 [inline]
       __alloc_pages_slowpath.constprop.0+0x949/0x2780 mm/page_alloc.c:4650
       __alloc_pages_nodemask+0x68f/0x930 mm/page_alloc.c:4863
       __alloc_pages include/linux/gfp.h:509 [inline]
       __alloc_pages_node include/linux/gfp.h:522 [inline]
       khugepaged_alloc_page+0xa0/0x170 mm/khugepaged.c:867
       collapse_huge_page mm/khugepaged.c:1056 [inline]
       khugepaged_scan_pmd mm/khugepaged.c:1349 [inline]
       khugepaged_scan_mm_slot mm/khugepaged.c:2110 [inline]
       khugepaged_do_scan mm/khugepaged.c:2193 [inline]
       khugepaged+0x3093/0x5a10 mm/khugepaged.c:2238
       kthread+0x3b5/0x4a0 kernel/kthread.c:291
       ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293

other info that might help us debug this:

 Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock(fs_reclaim);
                               lock(&sb->s_type->i_mutex_key#15);
                               lock(fs_reclaim);
  lock(&sb->s_type->i_mutex_key#15);

 *** DEADLOCK ***

2 locks held by khugepaged/1158:
 #0: ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: fs_reclaim_release mm/page_alloc.c:4202 [inline]
 #0: ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: fs_reclaim_release mm/page_alloc.c:4198 [inline]
 #0: ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: __perform_reclaim mm/page_alloc.c:4227 [inline]
 #0: ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: __alloc_pages_direct_reclaim mm/page_alloc.c:4244 [inline]
 #0: ffffffff89c6c260 (fs_reclaim){+.+.}-{0:0}, at: __alloc_pages_slowpath.constprop.0+0x1554/0x2780 mm/page_alloc.c:4650
 #1: ffffffff89c46a90 (shrinker_rwsem){++++}-{3:3}, at: shrink_slab+0xc7/0x5c0 mm/vmscan.c:669

stack backtrace:
CPU: 1 PID: 1158 Comm: khugepaged Not tainted 5.8.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0x18f/0x20d lib/dump_stack.c:118
 check_noncircular+0x324/0x3e0 kernel/locking/lockdep.c:1827
 check_prev_add kernel/locking/lockdep.c:2496 [inline]
 check_prevs_add kernel/locking/lockdep.c:2601 [inline]
 validate_chain kernel/locking/lockdep.c:3218 [inline]
 __lock_acquire+0x2acb/0x56e0 kernel/locking/lockdep.c:4380
 lock_acquire+0x1f1/0xad0 kernel/locking/lockdep.c:4959
 down_write+0x8d/0x150 kernel/locking/rwsem.c:1531
 inode_lock include/linux/fs.h:800 [inline]
 shmem_fallocate+0x153/0xd90 mm/shmem.c:2707
 ashmem_shrink_scan.part.0+0x2e9/0x490 drivers/staging/android/ashmem.c:490
 ashmem_shrink_scan+0x6c/0xa0 drivers/staging/android/ashmem.c:473
 do_shrink_slab+0x3c6/0xab0 mm/vmscan.c:518
 shrink_slab+0x16f/0x5c0 mm/vmscan.c:679
 shrink_node_memcgs mm/vmscan.c:2658 [inline]
 shrink_node+0x519/0x1b60 mm/vmscan.c:2770
 shrink_zones mm/vmscan.c:2973 [inline]
 do_try_to_free_pages+0x38b/0x1340 mm/vmscan.c:3026
 try_to_free_pages+0x29a/0x8b0 mm/vmscan.c:3265
 __perform_reclaim mm/page_alloc.c:4223 [inline]
 __alloc_pages_direct_reclaim mm/page_alloc.c:4244 [inline]
 __alloc_pages_slowpath.constprop.0+0x949/0x2780 mm/page_alloc.c:4650
 __alloc_pages_nodemask+0x68f/0x930 mm/page_alloc.c:4863
 __alloc_pages include/linux/gfp.h:509 [inline]
 __alloc_pages_node include/linux/gfp.h:522 [inline]
 khugepaged_alloc_page+0xa0/0x170 mm/khugepaged.c:867
 collapse_huge_page mm/khugepaged.c:1056 [inline]
 khugepaged_scan_pmd mm/khugepaged.c:1349 [inline]
 khugepaged_scan_mm_slot mm/khugepaged.c:2110 [inline]
 khugepaged_do_scan mm/khugepaged.c:2193 [inline]
 khugepaged+0x3093/0x5a10 mm/khugepaged.c:2238
 kthread+0x3b5/0x4a0 kernel/kthread.c:291
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:293

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
