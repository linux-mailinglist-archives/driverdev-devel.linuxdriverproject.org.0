Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE6B9968A
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 16:28:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 987F587886;
	Thu, 22 Aug 2019 14:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id neZrkzvfYgca; Thu, 22 Aug 2019 14:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BD80B8784C;
	Thu, 22 Aug 2019 14:28:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1E0B1BF836
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:28:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9E87288471
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:28:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o-r79Z8msh89 for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 14:28:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 03BCD88448
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 14:28:07 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id v3so6574855ios.4
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 07:28:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=5NvkY5It9Uka5k6hXhl6v+ALtKFYcEQyT3YtILLNu4M=;
 b=NzN1WssbPwCoSA+Xqq7Lrx18l/D5163Izwq6LDWcAFZwEH/Vp5LmJEEzAf442tGmiw
 RUZjCpk98LZ9DVuG260B6Gd18aPqlFds39cvuyzj1CbKEUaptUd/KHKizgp1TgX+ZQL1
 Vx/tPFNEtKk9Gm7pWhVwGgr+2x3NEIq4aqUDoWFyjhL6GmBpkkjKJSV8OYQKZwYGbUd6
 /+H1a1MZsUumcLRAn1Irs7gR2xOKrLFpAv+owb4BN5Ukf5w584VZlJbsGI6aHn/5LiXm
 pT7dCbJl8N2o2o9BhkfUZXcsypUrubB74bQeCiI3SeGvJ0ectN8gwByHPWdBu6YZ8A0F
 zKrg==
X-Gm-Message-State: APjAAAWHOFHZsMW42+KJNriV4F6xGNs/aZynjHh5AcOvuK79FB7F+SBD
 f9yzK7CFKUqbbK/IBfDdBleMwTCnxxd2NrIq3SALpSiU3mQg
X-Google-Smtp-Source: APXvYqzN6ymuNx0ogqNZhxC7kEt34nHfmwQ5+feN2ljRuL3CTyxxSGlk5zpjneuzyG3g7Juk+k7MRQ1vNqGK43Npb73Whw71s3Ml
MIME-Version: 1.0
X-Received: by 2002:a02:cc6c:: with SMTP id j12mr409661jaq.29.1566484087115;
 Thu, 22 Aug 2019 07:28:07 -0700 (PDT)
Date: Thu, 22 Aug 2019 07:28:07 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000008f1a550590b57f9a@google.com>
Subject: WARNING in r871xu_dev_remove
From: syzbot <syzbot+80899a8a8efe8968cde7@syzkaller.appspotmail.com>
To: Larry.Finger@lwfinger.net, andreyknvl@google.com, 
 devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com, 
 gregkh@linuxfoundation.org, himadri18.07@gmail.com, 
 kai.heng.feng@canonical.com, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux.dkm@gmail.com, straube.linux@gmail.com, 
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello,

syzbot found the following crash on:

HEAD commit:    eea39f24 usb-fuzzer: main usb gadget fuzzer driver
git tree:       https://github.com/google/kasan.git usb-fuzzer
console output: https://syzkaller.appspot.com/x/log.txt?x=163ae012600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d0c62209eedfd54e
dashboard link: https://syzkaller.appspot.com/bug?extid=80899a8a8efe8968cde7
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1739cb0e600000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=154fcc2e600000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+80899a8a8efe8968cde7@syzkaller.appspotmail.com

------------[ cut here ]------------
WARNING: CPU: 1 PID: 83 at net/core/dev.c:8167  
rollback_registered_many.cold+0x41/0x1bc net/core/dev.c:8167
Kernel panic - not syncing: panic_on_warn set ...
CPU: 1 PID: 83 Comm: kworker/1:2 Not tainted 5.3.0-rc5+ #28
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: usb_hub_wq hub_event
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0xca/0x13e lib/dump_stack.c:113
  panic+0x2a3/0x6da kernel/panic.c:219
  __warn.cold+0x20/0x4a kernel/panic.c:576
  report_bug+0x262/0x2a0 lib/bug.c:186
  fixup_bug arch/x86/kernel/traps.c:179 [inline]
  fixup_bug arch/x86/kernel/traps.c:174 [inline]
  do_error_trap+0x12b/0x1e0 arch/x86/kernel/traps.c:272
  do_invalid_op+0x32/0x40 arch/x86/kernel/traps.c:291
  invalid_op+0x23/0x30 arch/x86/entry/entry_64.S:1028
RIP: 0010:rollback_registered_many.cold+0x41/0x1bc net/core/dev.c:8167
Code: ff e8 c7 26 90 fc 48 c7 c7 40 ec 63 86 e8 24 c8 7a fc 0f 0b e9 93 be  
ff ff e8 af 26 90 fc 48 c7 c7 40 ec 63 86 e8 0c c8 7a fc <0f> 0b 4c 89 e7  
e8 f9 12 34 fd 31 ff 41 89 c4 89 c6 e8 bd 27 90 fc
RSP: 0018:ffff8881d938f6a8 EFLAGS: 00010286
RAX: 0000000000000024 RBX: ffff8881d2a10000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: ffffffff81288cfd RDI: ffffed103b271ec7
RBP: ffff8881d938f7d8 R08: 0000000000000024 R09: fffffbfff11ad794
R10: fffffbfff11ad793 R11: ffffffff88d6bc9f R12: ffff8881d2a10070
R13: ffff8881d938f768 R14: dffffc0000000000 R15: 0000000000000000
  rollback_registered+0xf2/0x1c0 net/core/dev.c:8243
  unregister_netdevice_queue net/core/dev.c:9290 [inline]
  unregister_netdevice_queue+0x1d7/0x2b0 net/core/dev.c:9283
  unregister_netdevice include/linux/netdevice.h:2631 [inline]
  unregister_netdev+0x18/0x20 net/core/dev.c:9331
  r871xu_dev_remove+0xe2/0x215 drivers/staging/rtl8712/usb_intf.c:604
  usb_unbind_interface+0x1bd/0x8a0 drivers/usb/core/driver.c:423
  __device_release_driver drivers/base/dd.c:1134 [inline]
  device_release_driver_internal+0x42f/0x500 drivers/base/dd.c:1165
  bus_remove_device+0x2dc/0x4a0 drivers/base/bus.c:556
  device_del+0x420/0xb10 drivers/base/core.c:2339
  usb_disable_device+0x211/0x690 drivers/usb/core/message.c:1237
  usb_disconnect+0x284/0x8d0 drivers/usb/core/hub.c:2199
  hub_port_connect drivers/usb/core/hub.c:4949 [inline]
  hub_port_connect_change drivers/usb/core/hub.c:5213 [inline]
  port_event drivers/usb/core/hub.c:5359 [inline]
  hub_event+0x1454/0x3640 drivers/usb/core/hub.c:5441
  process_one_work+0x92b/0x1530 kernel/workqueue.c:2269
  process_scheduled_works kernel/workqueue.c:2331 [inline]
  worker_thread+0x7ab/0xe20 kernel/workqueue.c:2417
  kthread+0x318/0x420 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
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
