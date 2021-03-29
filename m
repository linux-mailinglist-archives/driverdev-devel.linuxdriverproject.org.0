Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84DAC34D876
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Mar 2021 21:44:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A93F402CD;
	Mon, 29 Mar 2021 19:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6GVOQCx8PXpG; Mon, 29 Mar 2021 19:44:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E5B8402BC;
	Mon, 29 Mar 2021 19:44:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 212D31BF4D8
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 19:44:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D873607CC
 for <devel@linuxdriverproject.org>; Mon, 29 Mar 2021 19:44:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o9yggNK7jaon for <devel@linuxdriverproject.org>;
 Mon, 29 Mar 2021 19:44:24 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-f197.google.com (mail-il1-f197.google.com
 [209.85.166.197])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AB882606E9
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 19:44:24 +0000 (UTC)
Received: by mail-il1-f197.google.com with SMTP id s10so12589414ilo.7
 for <devel@driverdev.osuosl.org>; Mon, 29 Mar 2021 12:44:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=2jXqd5aaFNpRqFsoVJoIotG0Bi63SDagwQS5vWH17Jk=;
 b=MnX/MyD3iaiV3uiGcPWWNEvDOTHHGu+wyWYk5SumIWBzCgSvvOkHh81VmSrf0Upuk6
 SiCSK/2+R92o+oLgp9uytnJFi+1WiBGqutWv1hV72/2QtOJtaCq9vqWMcAjX8V5q/AUr
 wxqIlf2bfja6/LcqRmpI986Urkl+eAg3ER8sRVspxiId3nqnUi6NX+JCu2rnqVsVbMvr
 hLdma5pueChvdWH710N8Hi1SfZexthGQQfUr0tsSbhDaSwf6Bp9MUPyHgKrCWjxCAePJ
 LU27uc9A+AqHivke8q8oItmLmdYCm00q4r9LNBtvWwg9MfoXIpAQGO22HxPJCpot27IS
 IBFg==
X-Gm-Message-State: AOAM531ctWjCjih2x/eAJApF38JhsH+iQQOlVo+6PTox4prQ1j0GyElw
 SqkQtJnasZROt1afTadDG1gPxwouJn+vKdo1mAcHl08Iv5mH
X-Google-Smtp-Source: ABdhPJy/ZudhkqwfnKEhdS/yKCJpkGSSCxnzBrzHksrAyg/qGBUzjTyQgd+9aCKPwglbBHyo4r30jJoQbms5ya3aikRvOeMg8+mY
MIME-Version: 1.0
X-Received: by 2002:a02:3304:: with SMTP id c4mr25517291jae.68.1617047063801; 
 Mon, 29 Mar 2021 12:44:23 -0700 (PDT)
Date: Mon, 29 Mar 2021 12:44:23 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d2b42905beb21b3f@google.com>
Subject: [syzbot] KMSAN: uninit-value in efuse_one_byte_read
From: syzbot <syzbot+6610740013f861b6e829@syzkaller.appspotmail.com>
To: Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org, 
 florian.c.schilhabel@googlemail.com, glider@google.com, 
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, 
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

syzbot found the following issue on:

HEAD commit:    29ad81a1 arch/x86: add missing include to sparsemem.h
git tree:       https://github.com/google/kmsan.git master
console output: https://syzkaller.appspot.com/x/log.txt?x=12d4e126d00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=b573c14b733efb1c
dashboard link: https://syzkaller.appspot.com/bug?extid=6610740013f861b6e829
compiler:       Debian clang version 11.0.1-2

Unfortunately, I don't have any reproducer for this issue yet.

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+6610740013f861b6e829@syzkaller.appspotmail.com

r8712u: register rtl8712_netdev_ops to netdev_ops
usb 2-1: r8712u: USB_SPEED_HIGH with 0 endpoints
usb 2-1: r8712u: Boot from EEPROM: Autoload OK
=====================================================
BUG: KMSAN: uninit-value in efuse_one_byte_read+0x206/0x2e0 drivers/staging/rtl8712/rtl8712_efuse.c:76
CPU: 1 PID: 4662 Comm: kworker/1:3 Tainted: G        W         5.11.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: usb_hub_wq hub_event
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x21c/0x280 lib/dump_stack.c:120
 kmsan_report+0xfb/0x1e0 mm/kmsan/kmsan_report.c:118
 __msan_warning+0x5f/0xa0 mm/kmsan/kmsan_instr.c:197
 efuse_one_byte_read+0x206/0x2e0 drivers/staging/rtl8712/rtl8712_efuse.c:76
 r8712_efuse_pg_packet_read+0x29c/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:245
 r871xu_drv_init+0x1cfb/0x2fe0 drivers/staging/rtl8712/usb_intf.c:443
 usb_probe_interface+0xfcc/0x1520 drivers/usb/core/driver.c:396
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_set_configuration+0x3872/0x3eb0 drivers/usb/core/message.c:2164
 usb_generic_driver_probe+0x138/0x300 drivers/usb/core/generic.c:238
 usb_probe_device+0x317/0x570 drivers/usb/core/driver.c:293
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_new_device+0x1bd4/0x2a30 drivers/usb/core/hub.c:2555
 hub_port_connect drivers/usb/core/hub.c:5223 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5363 [inline]
 port_event drivers/usb/core/hub.c:5509 [inline]
 hub_event+0x5b99/0x8870 drivers/usb/core/hub.c:5591
 process_one_work+0x1219/0x1fe0 kernel/workqueue.c:2275
 worker_thread+0x10ec/0x2340 kernel/workqueue.c:2421
 kthread+0x521/0x560 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296

Local variable ----data@usb_read8 created at:
 usb_read8+0x5d/0x130 drivers/staging/rtl8712/usb_ops.c:33
 usb_read8+0x5d/0x130 drivers/staging/rtl8712/usb_ops.c:33
=====================================================
=====================================================
BUG: KMSAN: uninit-value in r8712_efuse_pg_packet_read+0x77c/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:246
CPU: 1 PID: 4662 Comm: kworker/1:3 Tainted: G    B   W         5.11.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: usb_hub_wq hub_event
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x21c/0x280 lib/dump_stack.c:120
 kmsan_report+0xfb/0x1e0 mm/kmsan/kmsan_report.c:118
 __msan_warning+0x5f/0xa0 mm/kmsan/kmsan_instr.c:197
 r8712_efuse_pg_packet_read+0x77c/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:246
 r871xu_drv_init+0x1cfb/0x2fe0 drivers/staging/rtl8712/usb_intf.c:443
 usb_probe_interface+0xfcc/0x1520 drivers/usb/core/driver.c:396
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_set_configuration+0x3872/0x3eb0 drivers/usb/core/message.c:2164
 usb_generic_driver_probe+0x138/0x300 drivers/usb/core/generic.c:238
 usb_probe_device+0x317/0x570 drivers/usb/core/driver.c:293
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_new_device+0x1bd4/0x2a30 drivers/usb/core/hub.c:2555
 hub_port_connect drivers/usb/core/hub.c:5223 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5363 [inline]
 port_event drivers/usb/core/hub.c:5509 [inline]
 hub_event+0x5b99/0x8870 drivers/usb/core/hub.c:5591
 process_one_work+0x1219/0x1fe0 kernel/workqueue.c:2275
 worker_thread+0x10ec/0x2340 kernel/workqueue.c:2421
 kthread+0x521/0x560 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296

Uninit was stored to memory at:
 kmsan_save_stack_with_flags mm/kmsan/kmsan.c:121 [inline]
 kmsan_internal_chain_origin+0xad/0x130 mm/kmsan/kmsan.c:289
 __msan_chain_origin+0x57/0xa0 mm/kmsan/kmsan_instr.c:147
 efuse_one_byte_read+0x2cd/0x2e0 drivers/staging/rtl8712/rtl8712_efuse.c:86
 r8712_efuse_pg_packet_read+0x29c/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:245
 r871xu_drv_init+0x1cfb/0x2fe0 drivers/staging/rtl8712/usb_intf.c:443
 usb_probe_interface+0xfcc/0x1520 drivers/usb/core/driver.c:396
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_set_configuration+0x3872/0x3eb0 drivers/usb/core/message.c:2164
 usb_generic_driver_probe+0x138/0x300 drivers/usb/core/generic.c:238
 usb_probe_device+0x317/0x570 drivers/usb/core/driver.c:293
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_new_device+0x1bd4/0x2a30 drivers/usb/core/hub.c:2555
 hub_port_connect drivers/usb/core/hub.c:5223 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5363 [inline]
 port_event drivers/usb/core/hub.c:5509 [inline]
 hub_event+0x5b99/0x8870 drivers/usb/core/hub.c:5591
 process_one_work+0x1219/0x1fe0 kernel/workqueue.c:2275
 worker_thread+0x10ec/0x2340 kernel/workqueue.c:2421
 kthread+0x521/0x560 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296

Local variable ----data@usb_read8 created at:
 usb_read8+0x5d/0x130 drivers/staging/rtl8712/usb_ops.c:33
 usb_read8+0x5d/0x130 drivers/staging/rtl8712/usb_ops.c:33
=====================================================
=====================================================
BUG: KMSAN: uninit-value in r8712_efuse_pg_packet_read+0x79b/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:251
CPU: 1 PID: 4662 Comm: kworker/1:3 Tainted: G    B   W         5.11.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: usb_hub_wq hub_event
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x21c/0x280 lib/dump_stack.c:120
 kmsan_report+0xfb/0x1e0 mm/kmsan/kmsan_report.c:118
 __msan_warning+0x5f/0xa0 mm/kmsan/kmsan_instr.c:197
 r8712_efuse_pg_packet_read+0x79b/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:251
 r871xu_drv_init+0x1cfb/0x2fe0 drivers/staging/rtl8712/usb_intf.c:443
 usb_probe_interface+0xfcc/0x1520 drivers/usb/core/driver.c:396
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_set_configuration+0x3872/0x3eb0 drivers/usb/core/message.c:2164
 usb_generic_driver_probe+0x138/0x300 drivers/usb/core/generic.c:238
 usb_probe_device+0x317/0x570 drivers/usb/core/driver.c:293
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_new_device+0x1bd4/0x2a30 drivers/usb/core/hub.c:2555
 hub_port_connect drivers/usb/core/hub.c:5223 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5363 [inline]
 port_event drivers/usb/core/hub.c:5509 [inline]
 hub_event+0x5b99/0x8870 drivers/usb/core/hub.c:5591
 process_one_work+0x1219/0x1fe0 kernel/workqueue.c:2275
 worker_thread+0x10ec/0x2340 kernel/workqueue.c:2421
 kthread+0x521/0x560 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296

Uninit was stored to memory at:
 kmsan_save_stack_with_flags mm/kmsan/kmsan.c:121 [inline]
 kmsan_internal_chain_origin+0xad/0x130 mm/kmsan/kmsan.c:289
 __msan_chain_origin+0x57/0xa0 mm/kmsan/kmsan_instr.c:147
 efuse_one_byte_read+0x2cd/0x2e0 drivers/staging/rtl8712/rtl8712_efuse.c:86
 r8712_efuse_pg_packet_read+0x29c/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:245
 r871xu_drv_init+0x1cfb/0x2fe0 drivers/staging/rtl8712/usb_intf.c:443
 usb_probe_interface+0xfcc/0x1520 drivers/usb/core/driver.c:396
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_set_configuration+0x3872/0x3eb0 drivers/usb/core/message.c:2164
 usb_generic_driver_probe+0x138/0x300 drivers/usb/core/generic.c:238
 usb_probe_device+0x317/0x570 drivers/usb/core/driver.c:293
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_new_device+0x1bd4/0x2a30 drivers/usb/core/hub.c:2555
 hub_port_connect drivers/usb/core/hub.c:5223 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5363 [inline]
 port_event drivers/usb/core/hub.c:5509 [inline]
 hub_event+0x5b99/0x8870 drivers/usb/core/hub.c:5591
 process_one_work+0x1219/0x1fe0 kernel/workqueue.c:2275
 worker_thread+0x10ec/0x2340 kernel/workqueue.c:2421
 kthread+0x521/0x560 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296

Local variable ----data@usb_read8 created at:
 usb_read8+0x5d/0x130 drivers/staging/rtl8712/usb_ops.c:33
 usb_read8+0x5d/0x130 drivers/staging/rtl8712/usb_ops.c:33
=====================================================
=====================================================
BUG: KMSAN: uninit-value in r8712_efuse_pg_packet_read+0xb56/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:244
CPU: 1 PID: 4662 Comm: kworker/1:3 Tainted: G    B   W         5.11.0-rc7-syzkaller #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
Workqueue: usb_hub_wq hub_event
Call Trace:
 __dump_stack lib/dump_stack.c:79 [inline]
 dump_stack+0x21c/0x280 lib/dump_stack.c:120
 kmsan_report+0xfb/0x1e0 mm/kmsan/kmsan_report.c:118
 __msan_warning+0x5f/0xa0 mm/kmsan/kmsan_instr.c:197
 r8712_efuse_pg_packet_read+0xb56/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:244
 r871xu_drv_init+0x1cfb/0x2fe0 drivers/staging/rtl8712/usb_intf.c:443
 usb_probe_interface+0xfcc/0x1520 drivers/usb/core/driver.c:396
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_set_configuration+0x3872/0x3eb0 drivers/usb/core/message.c:2164
 usb_generic_driver_probe+0x138/0x300 drivers/usb/core/generic.c:238
 usb_probe_device+0x317/0x570 drivers/usb/core/driver.c:293
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_new_device+0x1bd4/0x2a30 drivers/usb/core/hub.c:2555
 hub_port_connect drivers/usb/core/hub.c:5223 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5363 [inline]
 port_event drivers/usb/core/hub.c:5509 [inline]
 hub_event+0x5b99/0x8870 drivers/usb/core/hub.c:5591
 process_one_work+0x1219/0x1fe0 kernel/workqueue.c:2275
 worker_thread+0x10ec/0x2340 kernel/workqueue.c:2421
 kthread+0x521/0x560 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296

Uninit was stored to memory at:
 kmsan_save_stack_with_flags mm/kmsan/kmsan.c:121 [inline]
 kmsan_internal_chain_origin+0xad/0x130 mm/kmsan/kmsan.c:289
 __msan_chain_origin+0x57/0xa0 mm/kmsan/kmsan_instr.c:147
 efuse_one_byte_read+0x2cd/0x2e0 drivers/staging/rtl8712/rtl8712_efuse.c:86
 r8712_efuse_pg_packet_read+0x29c/0xcd0 drivers/staging/rtl8712/rtl8712_efuse.c:245
 r871xu_drv_init+0x1cfb/0x2fe0 drivers/staging/rtl8712/usb_intf.c:443
 usb_probe_interface+0xfcc/0x1520 drivers/usb/core/driver.c:396
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_set_configuration+0x3872/0x3eb0 drivers/usb/core/message.c:2164
 usb_generic_driver_probe+0x138/0x300 drivers/usb/core/generic.c:238
 usb_probe_device+0x317/0x570 drivers/usb/core/driver.c:293
 really_probe+0xe15/0x24d0 drivers/base/dd.c:558
 driver_probe_device+0x29d/0x3a0 drivers/base/dd.c:740
 __device_attach_driver+0x63f/0x830 drivers/base/dd.c:846
 bus_for_each_drv+0x2c8/0x3f0 drivers/base/bus.c:431
 __device_attach+0x56a/0x890 drivers/base/dd.c:914
 device_initial_probe+0x4a/0x60 drivers/base/dd.c:961
 bus_probe_device+0x17e/0x3d0 drivers/base/bus.c:491
 device_add+0x2c15/0x31d0 drivers/base/core.c:3109
 usb_new_device+0x1bd4/0x2a30 drivers/usb/core/hub.c:2555
 hub_port_connect drivers/usb/core/hub.c:5223 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5363 [inline]
 port_event drivers/usb/core/hub.c:5509 [inline]
 hub_event+0x5b99/0x8870 drivers/usb/core/hub.c:5591
 process_one_work+0x1219/0x1fe0 kernel/workqueue.c:2275
 worker_thread+0x10ec/0x2340 kernel/workqueue.c:2421
 kthread+0x521/0x560 kernel/kthread.c:292
 ret_from_fork+0x1f/0x30 arch/x86/entry/entry_64.S:296

Local variable ----data@usb_read8 created at:
 usb_read8+0x5d/0x130 drivers/staging/rtl8712/usb_ops.c:33
 usb_read8+0x5d/0x130 drivers/staging/rtl8712/usb_ops.c:33
=====================================================


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
