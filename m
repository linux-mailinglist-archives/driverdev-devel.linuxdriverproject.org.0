Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A42C744EC6
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Jun 2019 23:56:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 092A586868;
	Thu, 13 Jun 2019 21:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8EtnGBegHvfq; Thu, 13 Jun 2019 21:56:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 79376860F4;
	Thu, 13 Jun 2019 21:56:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 751061BF844
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 21:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 720CA86197
 for <devel@linuxdriverproject.org>; Thu, 13 Jun 2019 21:56:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XUCwQKn-RVCx for <devel@linuxdriverproject.org>;
 Thu, 13 Jun 2019 21:56:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E3318860F4
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 21:56:05 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id f22so258443ioh.22
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 14:56:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=ydFXxI0znwbofCXLJ9CCbdYtdW7CJQT/GmF/kJrlloQ=;
 b=CC/pSlyws6hKsoGPjiyd22igUjWiWv9/4zhPB6rpkMLPEDXAVz2FjExdBJNcVC3Ys6
 KE/v5MHH5h6tUVVcj4VLDy5aPlLKMA4J8AH/+AdyY8Gifrw2tGiCe24W6qRroz47j/ic
 Klq9qVEMu7DVmeojn+q+f/A3zQYGNO9e9QGFlB+MxdEccSzhrgzpsr358oL6C5kgi9+V
 1J+LovzUwa9uo5LipT4F1iQ0efbYHiPDcDGZ3/myqWWV8ss6yvKEw4Y8tXGiQ1Zew311
 4HLOl1oHANBOSQao+GGSJlQKk6vC2oVnkDX7C2/wro68Fd/L0Eca+EkmUHr3BnP8oNbj
 AUEA==
X-Gm-Message-State: APjAAAXkih4Ybx+oNB3/zM7eUD2ocCWGgHEPBlezZNbeSlSKyB3kMPvU
 xhgwmTlxy96lCHvsa8AJ/liOODt0Qzzxfc9rRw8tk/3Dlrxt
X-Google-Smtp-Source: APXvYqzmnd/bESLoN/unmpNR/LTqQ9cjpPKHPfcD/kaNr1DUjqrCy4dA4fIZMBPCQo7Tm4BkaQSiXpFejZNzmJO24gBZ/Z0eORkN
MIME-Version: 1.0
X-Received: by 2002:a6b:2cc7:: with SMTP id s190mr54766893ios.29.1560462965302; 
 Thu, 13 Jun 2019 14:56:05 -0700 (PDT)
Date: Thu, 13 Jun 2019 14:56:05 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000bb6d57058b3b98eb@google.com>
Subject: memory leak in binder_transaction
From: syzbot <syzbot+182ce46596c3f2e1eb24@syzkaller.appspotmail.com>
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

HEAD commit:    d1fdb6d8 Linux 5.2-rc4
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=15e5ce1ea00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=cb38d33cd06d8d48
dashboard link: https://syzkaller.appspot.com/bug?extid=182ce46596c3f2e1eb24
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1181703ea00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14e14392a00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+182ce46596c3f2e1eb24@syzkaller.appspotmail.com

-executor774" scontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023  
tcontext=unconfined_u:system_r:insmod_t:s0-s0:c0.c1023 tclass=binder  
permissive=1
BUG: memory leak
unreferenced object 0xffff888123934800 (size 32):
   comm "syz-executor774", pid 7083, jiffies 4294941834 (age 7.970s)
   hex dump (first 32 bytes):
     00 48 93 23 81 88 ff ff 00 48 93 23 81 88 ff ff  .H.#.....H.#....
     02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
   backtrace:
     [<0000000038ba7202>] kmemleak_alloc_recursive  
include/linux/kmemleak.h:43 [inline]
     [<0000000038ba7202>] slab_post_alloc_hook mm/slab.h:439 [inline]
     [<0000000038ba7202>] slab_alloc mm/slab.c:3326 [inline]
     [<0000000038ba7202>] kmem_cache_alloc_trace+0x13d/0x280 mm/slab.c:3553
     [<0000000004e63839>] kmalloc include/linux/slab.h:547 [inline]
     [<0000000004e63839>] kzalloc include/linux/slab.h:742 [inline]
     [<0000000004e63839>] binder_transaction+0x28b/0x2eb0  
drivers/android/binder.c:3072
     [<0000000050997ec4>] binder_thread_write+0x357/0x1430  
drivers/android/binder.c:3794
     [<00000000ab2de227>] binder_ioctl_write_read  
drivers/android/binder.c:4827 [inline]
     [<00000000ab2de227>] binder_ioctl+0x8bc/0xbb4  
drivers/android/binder.c:5004
     [<000000002eec2b63>] vfs_ioctl fs/ioctl.c:46 [inline]
     [<000000002eec2b63>] file_ioctl fs/ioctl.c:509 [inline]
     [<000000002eec2b63>] do_vfs_ioctl+0x62a/0x810 fs/ioctl.c:696
     [<0000000048cfc9e6>] ksys_ioctl+0x86/0xb0 fs/ioctl.c:713
     [<0000000030bf392d>] __do_sys_ioctl fs/ioctl.c:720 [inline]
     [<0000000030bf392d>] __se_sys_ioctl fs/ioctl.c:718 [inline]
     [<0000000030bf392d>] __x64_sys_ioctl+0x1e/0x30 fs/ioctl.c:718
     [<000000007dec438c>] do_syscall_64+0x76/0x1a0  
arch/x86/entry/common.c:301
     [<00000000ae043c96>] entry_SYSCALL_64_after_hwframe+0x44/0xa9



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
