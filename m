Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95B1A10DD0C
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 Nov 2019 08:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AF8A220498;
	Sat, 30 Nov 2019 07:59:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MaSkFRi4eQGX; Sat, 30 Nov 2019 07:59:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 755072046E;
	Sat, 30 Nov 2019 07:59:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 62E001BF23C
 for <devel@linuxdriverproject.org>; Sat, 30 Nov 2019 07:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 59DF388391
 for <devel@linuxdriverproject.org>; Sat, 30 Nov 2019 07:59:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ygyCbzjPH2ip for <devel@linuxdriverproject.org>;
 Sat, 30 Nov 2019 07:59:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9C3258836E
 for <devel@driverdev.osuosl.org>; Sat, 30 Nov 2019 07:59:07 +0000 (UTC)
Received: by mail-io1-f71.google.com with SMTP id u13so19450874iol.6
 for <devel@driverdev.osuosl.org>; Fri, 29 Nov 2019 23:59:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=OEwP3juOQOIj8SZQEkYShHXCOKBgtNHHcB5lfQay514=;
 b=OXH+hIZ6pB+AIRS/Y+pyxqnxrFMjdHgF00ZD0KqPPg8eMgds2WGAakNu1db9jEiqXg
 XgAvl+kwJjDiD0TuaGjVn7tsJgeX2VoPypgi/qUAg+jsn4JX+vjjC2+AhyYbnmcBwsRf
 r0fC51JSeJCximdtWPnKWzg613zJ8QbBMI+AWb4SzYdiagdyszvV/HeDOfPxdrS4wBMu
 SupuavRTQVAo3FoHSMcNosQ848B8F3ULY6+seIt4i6ZjBzQC+BLTKYLKxmZqbziK1gZf
 prXsQQ/BZ4LQVmU3LV4onN805BnPNGbHaffVKvR8NYdPTUIi9wrcjuGvD8NMOY/IFWdQ
 nBXg==
X-Gm-Message-State: APjAAAXrT8wVW2f/Q0d6azmNM6DBw9m8PniJy3qW6epDkNL4BUp7FjSJ
 W1w9U1gTGosDPHr/4rDH1Jd7iMOwDInceeseKTqxj8femGyb
X-Google-Smtp-Source: APXvYqz44tFSSozQ6aOmSHPvoQvCIFfR7Ci/Go2rFhJpPROQrtn8VRnvcEMs93kydYMHi6y4S1JmqMMbMV+PXRXJZqbst7fvqyKB
MIME-Version: 1.0
X-Received: by 2002:a05:6638:3b6:: with SMTP id
 z22mr5496062jap.35.1575100746885; 
 Fri, 29 Nov 2019 23:59:06 -0800 (PST)
Date: Fri, 29 Nov 2019 23:59:06 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000080f1d305988bb8ba@google.com>
Subject: BUG: unable to handle kernel paging request in ion_heap_clear_pages
From: syzbot <syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com>
To: arve@android.com, christian@brauner.io, devel@driverdev.osuosl.org, 
 dri-devel@lists.freedesktop.org, gregkh@linuxfoundation.org, 
 joel@joelfernandes.org, labbott@redhat.com, linaro-mm-sig@lists.linaro.org, 
 linux-kernel@vger.kernel.org, maco@android.com, sumit.semwal@linaro.org, 
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

HEAD commit:    419593da Add linux-next specific files for 20191129
git tree:       linux-next
console output: https://syzkaller.appspot.com/x/log.txt?x=12bfd882e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=7c04b0959e75c206
dashboard link: https://syzkaller.appspot.com/bug?extid=be6ccf3081ce8afd1b56
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)

Unfortunately, I don't have any reproducer for this crash yet.

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com

BUG: unable to handle page fault for address: fffff52002e00000
#PF: supervisor read access in kernel mode
#PF: error_code(0x0000) - not-present page
PGD 21ffee067 P4D 21ffee067 PUD aa11c067 PMD 0
Oops: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 3644 Comm: ion_system_heap Not tainted  
5.4.0-next-20191129-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
RIP: 0010:memory_is_nonzero mm/kasan/generic.c:121 [inline]
RIP: 0010:memory_is_poisoned_n mm/kasan/generic.c:135 [inline]
RIP: 0010:memory_is_poisoned mm/kasan/generic.c:166 [inline]
RIP: 0010:check_memory_region_inline mm/kasan/generic.c:182 [inline]
RIP: 0010:check_memory_region+0x9c/0x1a0 mm/kasan/generic.c:192
Code: c9 4d 0f 49 c1 49 c1 f8 03 45 85 c0 0f 84 10 01 00 00 41 83 e8 01 4e  
8d 44 c0 08 eb 0d 48 83 c0 08 4c 39 c0 0f 84 a7 00 00 00 <48> 83 38 00 74  
ed 4c 8d 40 08 eb 09 48 83 c0 01 49 39 c0 74 53 80
RSP: 0018:ffffc9000c9f7ab8 EFLAGS: 00010212
RAX: fffff52002e00000 RBX: fffff52002e01600 RCX: ffffffff85d5c229
RDX: 0000000000000001 RSI: 000000000000b000 RDI: ffffc90017000000
RBP: ffffc9000c9f7ad0 R08: fffff52002e01600 R09: 0000000000001600
R10: fffff52002e015ff R11: ffffc9001700afff R12: fffff52002e00000
R13: 000000000000b000 R14: 0000000000000000 R15: ffffc9000c9f7d08
FS:  0000000000000000(0000) GS:ffff8880ae600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: fffff52002e00000 CR3: 00000000778bd000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  memset+0x24/0x40 mm/kasan/common.c:107
  memset include/linux/string.h:410 [inline]
  ion_heap_clear_pages+0x49/0x70 drivers/staging/android/ion/ion_heap.c:106
  ion_heap_sglist_zero+0x245/0x270 drivers/staging/android/ion/ion_heap.c:130
  ion_heap_buffer_zero+0xf5/0x150 drivers/staging/android/ion/ion_heap.c:145
  ion_system_heap_free+0x1eb/0x250  
drivers/staging/android/ion/ion_system_heap.c:163
  ion_buffer_destroy+0x159/0x2d0 drivers/staging/android/ion/ion.c:93
  ion_heap_deferred_free+0x29d/0x630  
drivers/staging/android/ion/ion_heap.c:239
  kthread+0x361/0x430 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
Modules linked in:
CR2: fffff52002e00000
---[ end trace ee5c63907f1d6f00 ]---
RIP: 0010:memory_is_nonzero mm/kasan/generic.c:121 [inline]
RIP: 0010:memory_is_poisoned_n mm/kasan/generic.c:135 [inline]
RIP: 0010:memory_is_poisoned mm/kasan/generic.c:166 [inline]
RIP: 0010:check_memory_region_inline mm/kasan/generic.c:182 [inline]
RIP: 0010:check_memory_region+0x9c/0x1a0 mm/kasan/generic.c:192
Code: c9 4d 0f 49 c1 49 c1 f8 03 45 85 c0 0f 84 10 01 00 00 41 83 e8 01 4e  
8d 44 c0 08 eb 0d 48 83 c0 08 4c 39 c0 0f 84 a7 00 00 00 <48> 83 38 00 74  
ed 4c 8d 40 08 eb 09 48 83 c0 01 49 39 c0 74 53 80
RSP: 0018:ffffc9000c9f7ab8 EFLAGS: 00010212
RAX: fffff52002e00000 RBX: fffff52002e01600 RCX: ffffffff85d5c229
RDX: 0000000000000001 RSI: 000000000000b000 RDI: ffffc90017000000
RBP: ffffc9000c9f7ad0 R08: fffff52002e01600 R09: 0000000000001600
R10: fffff52002e015ff R11: ffffc9001700afff R12: fffff52002e00000
R13: 000000000000b000 R14: 0000000000000000 R15: ffffc9000c9f7d08
FS:  0000000000000000(0000) GS:ffff8880ae600000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: fffff52002e00000 CR3: 00000000778bd000 CR4: 00000000001406f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
