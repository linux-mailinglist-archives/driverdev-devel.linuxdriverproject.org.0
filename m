Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8C5110190
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Dec 2019 16:52:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD86E87E5F;
	Tue,  3 Dec 2019 15:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hwRrRyFoYbSZ; Tue,  3 Dec 2019 15:52:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DCED087D05;
	Tue,  3 Dec 2019 15:52:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 371E21BF378
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 15:52:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 33EBE86931
 for <devel@linuxdriverproject.org>; Tue,  3 Dec 2019 15:52:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fYkUQCtJR9E3 for <devel@linuxdriverproject.org>;
 Tue,  3 Dec 2019 15:52:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 870E686783
 for <devel@driverdev.osuosl.org>; Tue,  3 Dec 2019 15:52:08 +0000 (UTC)
Received: by mail-io1-f69.google.com with SMTP id y16so2711028ior.14
 for <devel@driverdev.osuosl.org>; Tue, 03 Dec 2019 07:52:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=qWkyIPu2o6vdgwTgEGOSkN6/EDBPIm6eU4NPNmjP8sE=;
 b=T8MaNfjTuBgeViYRCbuSYdSOCLyFK+tyMLwTbDUZ4sBrhvHA7GS9IoIdf9UGMEu3Td
 7xuNjJTL1WW5TPmehiToEvvcLqNeRz9VvJE9UPAAsZtTDj/drjJrjIFobtJNFuu9Z5/C
 Y6gTFQn2E6LqteXnKm3JWZjd3c9jslvv0rIFIR93xybaHmGjKQMATh+YYmbQfa3CQtD4
 ZxV5F/ndwOAfAhB2BeAPeLfpYfzRJbeoIGPzkaF3n/BMEQq3q49Lz5QPuZcrlQP7CHsG
 S8cqPQOscvIySv1F3NWWnjS/8C9Hed2VPbYqkW12Q4cetoeBlzplNkI0nJe9Ikt77fMe
 97xw==
X-Gm-Message-State: APjAAAX/RdBP3brHJ/37MxhYjMLLdT+Ee2cJeCvExqpWcPI+EHv0qINS
 MqCGDqg4gu86D+1x4biMx2ENTiU4tOnHEG+c9FtR21ORZgDj
X-Google-Smtp-Source: APXvYqxRRjmcvHXXtfC8p3VqmQ496e1KHf7+NJNVYy0YhwBf9iB2IDre8Q3CFKBUOS2QdbxjInzY+v+6Xr9pVZTGUYCg05DmeGFs
MIME-Version: 1.0
X-Received: by 2002:a5d:8744:: with SMTP id k4mr2936669iol.227.1575388327907; 
 Tue, 03 Dec 2019 07:52:07 -0800 (PST)
Date: Tue, 03 Dec 2019 07:52:07 -0800
In-Reply-To: <00000000000080f1d305988bb8ba@google.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000ab3afd0598cead51@google.com>
Subject: Re: BUG: unable to handle kernel paging request in
 ion_heap_clear_pages
From: syzbot <syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com>
To: arve@android.com, christian@brauner.io, devel@driverdev.osuosl.org, 
 dja@axtens.net, dri-devel@lists.freedesktop.org, dvyukov@google.com, 
 gregkh@linuxfoundation.org, joel@joelfernandes.org, 
 kasan-dev@googlegroups.com, labbott@redhat.com, 
 linaro-mm-sig-owner@lists.linaro.org, linaro-mm-sig@lists.linaro.org, 
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

syzbot has found a reproducer for the following crash on:

HEAD commit:    76bb8b05 Merge tag 'kbuild-v5.5' of git://git.kernel.org/p..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=159d0f36e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=dd226651cb0f364b
dashboard link: https://syzkaller.appspot.com/bug?extid=be6ccf3081ce8afd1b56
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=171f677ae00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11db659ce00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com

BUG: unable to handle page fault for address: fffff52000680000
#PF: supervisor read access in kernel mode
#PF: error_code(0x0000) - not-present page
PGD 21ffee067 P4D 21ffee067 PUD aa51c067 PMD a8372067 PTE 0
Oops: 0000 [#1] PREEMPT SMP KASAN
CPU: 1 PID: 3666 Comm: ion_system_heap Not tainted 5.4.0-syzkaller #0
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
RSP: 0018:ffffc9000cf87ab8 EFLAGS: 00010212
RAX: fffff52000680000 RBX: fffff52000681600 RCX: ffffffff85d95629
RDX: 0000000000000001 RSI: 000000000000b000 RDI: ffffc90003400000
RBP: ffffc9000cf87ad0 R08: fffff52000681600 R09: 0000000000001600
R10: fffff520006815ff R11: ffffc9000340afff R12: fffff52000680000
R13: 000000000000b000 R14: 0000000000000000 R15: ffffc9000cf87d08
FS:  0000000000000000(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: fffff52000680000 CR3: 00000000a6755000 CR4: 00000000001406e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  memset+0x24/0x40 mm/kasan/common.c:107
  memset include/linux/string.h:365 [inline]
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
CR2: fffff52000680000
---[ end trace 6d0e26662c48296a ]---
RIP: 0010:memory_is_nonzero mm/kasan/generic.c:121 [inline]
RIP: 0010:memory_is_poisoned_n mm/kasan/generic.c:135 [inline]
RIP: 0010:memory_is_poisoned mm/kasan/generic.c:166 [inline]
RIP: 0010:check_memory_region_inline mm/kasan/generic.c:182 [inline]
RIP: 0010:check_memory_region+0x9c/0x1a0 mm/kasan/generic.c:192
Code: c9 4d 0f 49 c1 49 c1 f8 03 45 85 c0 0f 84 10 01 00 00 41 83 e8 01 4e  
8d 44 c0 08 eb 0d 48 83 c0 08 4c 39 c0 0f 84 a7 00 00 00 <48> 83 38 00 74  
ed 4c 8d 40 08 eb 09 48 83 c0 01 49 39 c0 74 53 80
RSP: 0018:ffffc9000cf87ab8 EFLAGS: 00010212
RAX: fffff52000680000 RBX: fffff52000681600 RCX: ffffffff85d95629
RDX: 0000000000000001 RSI: 000000000000b000 RDI: ffffc90003400000
RBP: ffffc9000cf87ad0 R08: fffff52000681600 R09: 0000000000001600
R10: fffff520006815ff R11: ffffc9000340afff R12: fffff52000680000
R13: 000000000000b000 R14: 0000000000000000 R15: ffffc9000cf87d08
FS:  0000000000000000(0000) GS:ffff8880ae900000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: fffff52000680000 CR3: 00000000a6755000 CR4: 00000000001406e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
