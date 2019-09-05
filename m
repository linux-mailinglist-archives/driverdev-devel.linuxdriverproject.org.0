Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E92A9CEF
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Sep 2019 10:28:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E78C823491;
	Thu,  5 Sep 2019 08:28:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xfjg+kgbUvG7; Thu,  5 Sep 2019 08:28:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8BE77233B8;
	Thu,  5 Sep 2019 08:28:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 209DE1BF82B
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 08:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 18A6586880
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 08:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vJeFqu51lEgl for <devel@linuxdriverproject.org>;
 Thu,  5 Sep 2019 08:28:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3AD0E85DCA
 for <devel@linuxdriverproject.org>; Thu,  5 Sep 2019 08:28:08 +0000 (UTC)
Received: by mail-io1-f69.google.com with SMTP id z12so1431839iop.17
 for <devel@linuxdriverproject.org>; Thu, 05 Sep 2019 01:28:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=lLnSksznckibmlRTfCFVm1rxNz4y0AHHD3mjF9z5dRw=;
 b=tfrxdLp6Loky2EnQa23c+Hr6TIv/x4lQOUoNU0dLdMLrEHccQpIoBeTQOQywdX5IJx
 HjX8pcdLTkyz+tmZPoGaMRvTVGvOeG/tzDAWl+UPh4qe7SK6JfUSBK6JKkRAig0Znxkp
 g+K5QFFouwTcGE8fOJINnMzZFlB6+MOxoa0talOfhLTFdOany6BjkSMhhyYR29x30Ulr
 VzTy3rrkaPlBPDqKqpzJhf9CTZ8Bircp2aZp/iBKUSbZik2m87wHJnFa2glXwdRrQ4Mp
 y30wBgg0k7pyV6vQnJ2vlHt65QGQLA6064bPLZDBUwJRfoIrF3oEStGIfMqtn6OXKR9+
 Uq0g==
X-Gm-Message-State: APjAAAU34VD7bBURniEWJcvir9KoFZFnBJ8GHCABcTpkGL3JajuJfbqT
 4zTZZTgtLWa9BG7fmVwNO+jrZFKL4iFgDWGkmrLHgwtqxUlO
X-Google-Smtp-Source: APXvYqz02eSpdcmKNMG4YFRntu85AOTvRQgIS0R2HIGGP5vJArqzng004XOFoN2Ugiz/LaoHB5F2vj4lYVAd0c5Dq14QqaO4BIN0
MIME-Version: 1.0
X-Received: by 2002:a02:81c5:: with SMTP id r5mr2904337jag.143.1567672087277; 
 Thu, 05 Sep 2019 01:28:07 -0700 (PDT)
Date: Thu, 05 Sep 2019 01:28:07 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000e3072b0591ca1937@google.com>
Subject: general protection fault in __apic_accept_irq
From: syzbot <syzbot+dff25ee91f0c7d5c1695@syzkaller.appspotmail.com>
To: bp@alien8.de, devel@linuxdriverproject.org, haiyangz@microsoft.com, 
 hpa@zytor.com, jmattson@google.com, joro@8bytes.org, kvm@vger.kernel.org, 
 kys@microsoft.com, linux-kernel@vger.kernel.org, mikelley@microsoft.com, 
 mingo@redhat.com, pbonzini@redhat.com, rkrcmar@redhat.com, sashal@kernel.org, 
 sean.j.christopherson@intel.com, sthemmin@microsoft.com, 
 syzkaller-bugs@googlegroups.com, tglx@linutronix.de, vkuznets@redhat.com, 
 wanpengli@tencent.com, x86@kernel.org
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

HEAD commit:    3b47fd5c Merge tag 'nfs-for-5.3-4' of git://git.linux-nfs...
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=124af12a600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=144488c6c6c6d2b6
dashboard link: https://syzkaller.appspot.com/bug?extid=dff25ee91f0c7d5c1695
compiler:       clang version 9.0.0 (/home/glider/llvm/clang  
80fee25776c2fb61e74c1ecb1a523375c2500b69)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10954676600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1752fe0a600000

The bug was bisected to:

commit 0aa67255f54df192d29aec7ac6abb1249d45bda7
Author: Vitaly Kuznetsov <vkuznets@redhat.com>
Date:   Mon Nov 26 15:47:29 2018 +0000

     x86/hyper-v: move synic/stimer control structures definitions to  
hyperv-tlfs.h

bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=156128c1600000
console output: https://syzkaller.appspot.com/x/log.txt?x=136128c1600000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+dff25ee91f0c7d5c1695@syzkaller.appspotmail.com
Fixes: 0aa67255f54d ("x86/hyper-v: move synic/stimer control structures  
definitions to hyperv-tlfs.h")

kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000004 data  
0x94
kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000004 data  
0x48c
kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000004 data  
0x4ac
kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000005 data  
0x1520
kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000006 data  
0x15d4
kvm [9347]: vcpu0, guest rIP: 0xcc Hyper-V uhandled wrmsr: 0x40000007 data  
0x15c4
kasan: CONFIG_KASAN_INLINE enabled
kasan: GPF could be caused by NULL-ptr deref or user memory access
general protection fault: 0000 [#1] PREEMPT SMP KASAN
CPU: 0 PID: 9347 Comm: syz-executor665 Not tainted 5.3.0-rc7+ #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
RIP: 0010:__apic_accept_irq+0x46/0x740 arch/x86/kvm/lapic.c:1029
Code: 89 55 cc 41 89 f4 48 89 fb 49 bd 00 00 00 00 00 fc ff df e8 5c c9 5d  
00 48 89 5d c0 4c 8d b3 98 00 00 00 4d 89 f7 49 c1 ef 03 <43> 80 3c 2f 00  
74 08 4c 89 f7 e8 6b c4 96 00 49 8b 06 48 89 45 d0
RSP: 0018:ffff88808a30f9b0 EFLAGS: 00010202
RAX: ffffffff8115c384 RBX: 0000000000000000 RCX: ffff8880977f2140
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffff88808a30fa10 R08: 0000000000000000 R09: 0000000000000000
R10: ffffed1011461f64 R11: 0000000000000000 R12: 0000000000000000
R13: dffffc0000000000 R14: 0000000000000098 R15: 0000000000000013
FS:  0000555555e35880(0000) GS:ffff8880aea00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000000 CR3: 000000008f96d000 CR4: 00000000001426f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  kvm_apic_set_irq+0xb4/0x140 arch/x86/kvm/lapic.c:558
  stimer_notify_direct arch/x86/kvm/hyperv.c:648 [inline]
  stimer_expiration arch/x86/kvm/hyperv.c:659 [inline]
  kvm_hv_process_stimers+0x594/0x1650 arch/x86/kvm/hyperv.c:686
  vcpu_enter_guest+0x2b2a/0x54b0 arch/x86/kvm/x86.c:7896
  vcpu_run+0x393/0xd40 arch/x86/kvm/x86.c:8152
  kvm_arch_vcpu_ioctl_run+0x636/0x900 arch/x86/kvm/x86.c:8360
  kvm_vcpu_ioctl+0x6cf/0xaf0 arch/x86/kvm/../../../virt/kvm/kvm_main.c:2765
  do_vfs_ioctl+0x744/0x1730 fs/ioctl.c:46
  ksys_ioctl fs/ioctl.c:713 [inline]
  __do_sys_ioctl fs/ioctl.c:720 [inline]
  __se_sys_ioctl fs/ioctl.c:718 [inline]
  __x64_sys_ioctl+0xe3/0x120 fs/ioctl.c:718
  do_syscall_64+0xfe/0x140 arch/x86/entry/common.c:296
  entry_SYSCALL_64_after_hwframe+0x49/0xbe
RIP: 0033:0x442a19
Code: 18 89 d0 c3 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 48 89 f8 48 89 f7  
48 89 d6 48 89 ca 4d 89 c2 4d 89 c8 4c 8b 4c 24 08 0f 05 <48> 3d 01 f0 ff  
ff 0f 83 1b 0c fc ff c3 66 2e 0f 1f 84 00 00 00 00
RSP: 002b:00007ffca3d2a208 EFLAGS: 00000246 ORIG_RAX: 0000000000000010
RAX: ffffffffffffffda RBX: 00000000004002c8 RCX: 0000000000442a19
RDX: 0000000000000000 RSI: 000000000000ae80 RDI: 0000000000000005
RBP: 00000000006cd018 R08: 00000000004002c8 R09: 00000000004002c8
R10: 00000000004002c8 R11: 0000000000000246 R12: 0000000000403ac0
R13: 0000000000403b50 R14: 0000000000000000 R15: 0000000000000000
Modules linked in:
---[ end trace 8515c4c18eb55117 ]---
RIP: 0010:__apic_accept_irq+0x46/0x740 arch/x86/kvm/lapic.c:1029
Code: 89 55 cc 41 89 f4 48 89 fb 49 bd 00 00 00 00 00 fc ff df e8 5c c9 5d  
00 48 89 5d c0 4c 8d b3 98 00 00 00 4d 89 f7 49 c1 ef 03 <43> 80 3c 2f 00  
74 08 4c 89 f7 e8 6b c4 96 00 49 8b 06 48 89 45 d0
RSP: 0018:ffff88808a30f9b0 EFLAGS: 00010202
RAX: ffffffff8115c384 RBX: 0000000000000000 RCX: ffff8880977f2140
RDX: 0000000000000000 RSI: 0000000000000000 RDI: 0000000000000000
RBP: ffff88808a30fa10 R08: 0000000000000000 R09: 0000000000000000
R10: ffffed1011461f64 R11: 0000000000000000 R12: 0000000000000000
R13: dffffc0000000000 R14: 0000000000000098 R15: 0000000000000013
FS:  0000555555e35880(0000) GS:ffff8880aea00000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 0000000000000000 CR3: 000000008f96d000 CR4: 00000000001426f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400


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
