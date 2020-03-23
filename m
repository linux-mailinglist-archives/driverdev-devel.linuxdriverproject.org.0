Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B2A818F4CB
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 13:39:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 02BF6881BF;
	Mon, 23 Mar 2020 12:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ATt1HnXF226F; Mon, 23 Mar 2020 12:39:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6B82488179;
	Mon, 23 Mar 2020 12:39:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DAE391BF3D5
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 12:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D76A288179
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 12:39:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p5gWkKg6jBij for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 12:39:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2834088178
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 12:39:18 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id w76so12631378ila.6
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 05:39:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=1cOyjRHn2L+bFqtxc+Fw7X4e1wgEro2ch7tZOkfYwL8=;
 b=Iag0OpDXDbGKwEJxryqO5tjZaRgzD1Yns4ZZU1xN6kJsi51d2T3qabiTHABBZbrdYe
 l8RWULkZNZ6aQCZ/xitE9m+lExMOJJtP3vtom8ogQgrkG50AM7VeklPM3VmbXoO7KuNL
 0Ex3mWv4CC2SujoDaAC+xmjitxIO1pL5laPf1GVzxhldO7kRhFMIj42G/dLiym2BBCvZ
 FKD0GnfbiJCeiqmEcG48Ee6Vqw1BGjXye+2DbI1hR3UdMu5EeUuhTSf5O9MH/onnbQNh
 7o/B0Ci56Kmae/vY1ETn6u4sasDgOOjwel+SgPaym4nFz6+nhYVRFt2oUDnqJjOybdDB
 W+PA==
X-Gm-Message-State: ANhLgQ1xgixZ4xsdhV9LSlnKjRumTas8B6AQvYe5mG5vT4YBFjI/yfge
 kNNqrZqvoPSVeCrjE75wRB39zmQdReOsb0Cp0fOPbFZdcE4F
X-Google-Smtp-Source: ADFU+vuJapsVlDzNfST80/RBMf3N0g3M5ZbnGss9Ev1QH8nWhAo+R9cbXbcb26BzE63HoqloYlyamyFkk7w1d6OLdYvBQ817Szvz
MIME-Version: 1.0
X-Received: by 2002:a92:bac3:: with SMTP id t64mr15593062ill.299.1584967157444; 
 Mon, 23 Mar 2020 05:39:17 -0700 (PDT)
Date: Mon, 23 Mar 2020 05:39:17 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000006678a105a184ecb7@google.com>
Subject: KASAN: use-after-free Read in hfa384x_usbin_callback
From: syzbot <syzbot+a57b24d359dc5577634a@syzkaller.appspotmail.com>
To: andreyknvl@google.com, devel@driverdev.osuosl.org, 
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, nishkadg.linux@gmail.com, osdevtc@gmail.com, 
 syzkaller-bugs@googlegroups.com
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

HEAD commit:    e17994d1 usb: core: kcov: collect coverage from usb comple..
git tree:       https://github.com/google/kasan.git usb-fuzzer
console output: https://syzkaller.appspot.com/x/log.txt?x=15217373e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=5d64370c438bc60
dashboard link: https://syzkaller.appspot.com/bug?extid=a57b24d359dc5577634a
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=14a720ade00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1467b755e00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+a57b24d359dc5577634a@syzkaller.appspotmail.com

==================================================================
BUG: KASAN: use-after-free in memcpy include/linux/string.h:381 [inline]
BUG: KASAN: use-after-free in skb_put_data include/linux/skbuff.h:2284 [inline]
BUG: KASAN: use-after-free in hfa384x_int_rxmonitor drivers/staging/wlan-ng/hfa384x_usb.c:3412 [inline]
BUG: KASAN: use-after-free in hfa384x_usbin_rx drivers/staging/wlan-ng/hfa384x_usb.c:3312 [inline]
BUG: KASAN: use-after-free in hfa384x_usbin_callback+0x1993/0x2360 drivers/staging/wlan-ng/hfa384x_usb.c:3026
Read of size 34945 at addr ffff8881cda9f33c by task swapper/0/0

CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.6.0-rc5-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Call Trace:
 <IRQ>
 __dump_stack lib/dump_stack.c:77 [inline]
 dump_stack+0xef/0x16e lib/dump_stack.c:118
 print_address_description.constprop.0.cold+0xd3/0x314 mm/kasan/report.c:374
 __kasan_report.cold+0x37/0x77 mm/kasan/report.c:506
 kasan_report+0xe/0x20 mm/kasan/common.c:641
 check_memory_region_inline mm/kasan/generic.c:185 [inline]
 check_memory_region+0x152/0x1c0 mm/kasan/generic.c:192
 memcpy+0x20/0x50 mm/kasan/common.c:127
 memcpy include/linux/string.h:381 [inline]
 skb_put_data include/linux/skbuff.h:2284 [inline]
 hfa384x_int_rxmonitor drivers/staging/wlan-ng/hfa384x_usb.c:3412 [inline]
 hfa384x_usbin_rx drivers/staging/wlan-ng/hfa384x_usb.c:3312 [inline]
 hfa384x_usbin_callback+0x1993/0x2360 drivers/staging/wlan-ng/hfa384x_usb.c:3026
 __usb_hcd_giveback_urb+0x29a/0x550 drivers/usb/core/hcd.c:1650
 usb_hcd_giveback_urb+0x368/0x420 drivers/usb/core/hcd.c:1716
 dummy_timer+0x1258/0x32ae drivers/usb/gadget/udc/dummy_hcd.c:1966
 call_timer_fn+0x195/0x6f0 kernel/time/timer.c:1404
 expire_timers kernel/time/timer.c:1449 [inline]
 __run_timers kernel/time/timer.c:1773 [inline]
 __run_timers kernel/time/timer.c:1740 [inline]
 run_timer_softirq+0x5f9/0x1500 kernel/time/timer.c:1786
 __do_softirq+0x21e/0x950 kernel/softirq.c:292
 invoke_softirq kernel/softirq.c:373 [inline]
 irq_exit+0x178/0x1a0 kernel/softirq.c:413
 exiting_irq arch/x86/include/asm/apic.h:546 [inline]
 smp_apic_timer_interrupt+0x141/0x540 arch/x86/kernel/apic/apic.c:1146
 apic_timer_interrupt+0xf/0x20 arch/x86/entry/entry_64.S:829
 </IRQ>
RIP: 0010:default_idle+0x28/0x300 arch/x86/kernel/process.c:696
Code: cc cc 41 56 41 55 65 44 8b 2d 44 77 72 7a 41 54 55 53 0f 1f 44 00 00 e8 b6 62 b5 fb e9 07 00 00 00 0f 00 2d ea 0c 53 00 fb f4 <65> 44 8b 2d 20 77 72 7a 0f 1f 44 00 00 5b 5d 41 5c 41 5d 41 5e c3
RSP: 0018:ffffffff87007d80 EFLAGS: 00000246 ORIG_RAX: ffffffffffffff13
RAX: 0000000000000007 RBX: ffffffff8702cc40 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000006 RDI: ffffffff8702d48c
RBP: fffffbfff0e05988 R08: ffffffff8702cc40 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000000 R12: 0000000000000000
R13: 0000000000000000 R14: ffffffff87e607c0 R15: 0000000000000000
 cpuidle_idle_call kernel/sched/idle.c:154 [inline]
 do_idle+0x3e0/0x500 kernel/sched/idle.c:269
 cpu_startup_entry+0x14/0x20 kernel/sched/idle.c:361
 start_kernel+0xe16/0xe5a init/main.c:998
 secondary_startup_64+0xb6/0xc0 arch/x86/kernel/head_64.S:242

The buggy address belongs to the page:
page:ffffea000736a600 refcount:32769 mapcount:0 mapping:0000000000000000 index:0x0 compound_mapcount: 0
flags: 0x200000000010000(head)
raw: 0200000000010000 dead000000000100 dead000000000122 0000000000000000
raw: 0000000000000000 0000000000000000 00008001ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
 ffff8881cda9ff00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
 ffff8881cda9ff80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
>ffff8881cdaa0000: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                   ^
 ffff8881cdaa0080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
 ffff8881cdaa0100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


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
