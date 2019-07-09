Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDFD635C8
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 14:27:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8E1EF867CC;
	Tue,  9 Jul 2019 12:27:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k6ypfIu7xToE; Tue,  9 Jul 2019 12:27:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ECA42866A7;
	Tue,  9 Jul 2019 12:27:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F390E1BF969
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 12:27:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F07758669E
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 12:27:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LNbOLklNurIu for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 12:27:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4372F86497
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 12:27:08 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id x17so22717246iog.8
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 05:27:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=hGo8EbEA3ZKfqUVxyvabXM+z4gyY4A3JpCgTFSwOIxY=;
 b=IkNzNDopcbyjDis5owsyGfTS1/lYa+/zYZ5PpaMj3GdRc1CG0j9zTQRb3gLmlNI/x5
 sHNfvcIlq314FZnVTqFgL+aWzxfdnYBWmytDOxSatGdLdQpOjUBtsY2UgoY/RpEbNfiB
 BHpCqDdW5l02iRUoY472DrnfSUkCInwBcxTuZvmBWQ9RX9nhD8qRBsZmc4LE1Ix5zasl
 WuHUTRuVEDqZhfQ0qW8DPvuMC/X3L6iSmxi8I7sX/AHcL+fm79vWTnLRWmq/f2SMspmg
 XRcpN4Qh+7Dhm2VdPGck3N1Gn6/rJJUJokIfHMmRMrE4krnuyrTBgA+6Z2P/mILmi9u2
 fatA==
X-Gm-Message-State: APjAAAWs/YbjL4AWbdzvG+SeLGCCIVTlvAlnDHO6iW+Miwdl53T/oifC
 9FnefOvH5+gjgL/2Ivz/soCWHhP8KrgHqTnfg5UrdnoaPa6D
X-Google-Smtp-Source: APXvYqxfFL7rbB9NNuNdYve/wnQ+LnO/p1FfoKru10JjwRiTTBhM1RedITaDY+N8Dre9ohQuLEBEKe+9QOz+lFWoQJQqCKLl4a+D
MIME-Version: 1.0
X-Received: by 2002:a02:2245:: with SMTP id o66mr28683555jao.53.1562675227511; 
 Tue, 09 Jul 2019 05:27:07 -0700 (PDT)
Date: Tue, 09 Jul 2019 05:27:07 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000d5d567058d3eadcf@google.com>
Subject: general protection fault in vmk80xx_write_packet
From: syzbot <syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com>
To: abbotti@mev.co.uk, andreyknvl@google.com, devel@driverdev.osuosl.org, 
 gregkh@linuxfoundation.org, hsweeten@visionengravers.com, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
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

HEAD commit:    7829a896 usb-fuzzer: main usb gadget fuzzer driver
git tree:       https://github.com/google/kasan.git usb-fuzzer
console output: https://syzkaller.appspot.com/x/log.txt?x=126dd493a00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f6d4561982f71f63
dashboard link: https://syzkaller.appspot.com/bug?extid=009f546aa1370056b1c2
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1684570ba00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=132c91f5a00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+009f546aa1370056b1c2@syzkaller.appspotmail.com

usb 1-1: config 0 interface 160 has no altsetting 0
usb 1-1: New USB device found, idVendor=10cf, idProduct=5501,  
bcdDevice=eb.5b
usb 1-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
usb 1-1: config 0 descriptor??
kasan: CONFIG_KASAN_INLINE enabled
kasan: GPF could be caused by NULL-ptr deref or user memory access
general protection fault: 0000 [#1] SMP KASAN
CPU: 1 PID: 21 Comm: kworker/1:1 Not tainted 5.2.0-rc6+ #13
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: usb_hub_wq hub_event
RIP: 0010:vmk80xx_write_packet+0x75/0x260  
drivers/staging/comedi/drivers/vmk80xx.c:204
Code: 48 8d 7b 68 48 89 fa 48 c1 ea 03 80 3c 02 00 0f 85 d3 01 00 00 48 b8  
00 00 00 00 00 fc ff df 4c 8b 6b 68 4c 89 ea 48 c1 ea 03 <0f> b6 04 02 4c  
89 ea 83 e2 07 38 d0 7f 08 84 c0 0f 85 84 01 00 00
RSP: 0018:ffff8881d9eff1b0 EFLAGS: 00010202
RAX: dffffc0000000000 RBX: ffff8881d4f596c0 RCX: 0000000000000000
RDX: 0000000000000002 RSI: ffffffff847cda93 RDI: ffff8881d4f59728
RBP: ffff8881cfc79900 R08: ffff8881d9e36000 R09: 0000000000000010
R10: 0000000000000000 R11: 0000000000000000 R12: ffff8881c5d84c80
R13: 0000000000000010 R14: 0000000000000000 R15: ffff8881d2690128
FS:  0000000000000000(0000) GS:ffff8881db300000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f9c904c4000 CR3: 00000001d2b52000 CR4: 00000000001406e0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
  vmk80xx_reset_device drivers/staging/comedi/drivers/vmk80xx.c:226 [inline]
  vmk80xx_auto_attach+0x13b1/0x17c0  
drivers/staging/comedi/drivers/vmk80xx.c:814
  comedi_auto_config+0x16e/0x250 drivers/staging/comedi/drivers.c:1067
  usb_probe_interface+0x305/0x7a0 drivers/usb/core/driver.c:361
  really_probe+0x281/0x660 drivers/base/dd.c:509
  driver_probe_device+0x104/0x210 drivers/base/dd.c:670
  __device_attach_driver+0x1c2/0x220 drivers/base/dd.c:777
  bus_for_each_drv+0x15c/0x1e0 drivers/base/bus.c:454
  __device_attach+0x217/0x360 drivers/base/dd.c:843
  bus_probe_device+0x1e4/0x290 drivers/base/bus.c:514
  device_add+0xae6/0x16f0 drivers/base/core.c:2111
  usb_set_configuration+0xdf6/0x1670 drivers/usb/core/message.c:2023
  generic_probe+0x9d/0xd5 drivers/usb/core/generic.c:210
  usb_probe_device+0x99/0x100 drivers/usb/core/driver.c:266
  really_probe+0x281/0x660 drivers/base/dd.c:509
  driver_probe_device+0x104/0x210 drivers/base/dd.c:670
  __device_attach_driver+0x1c2/0x220 drivers/base/dd.c:777
  bus_for_each_drv+0x15c/0x1e0 drivers/base/bus.c:454
  __device_attach+0x217/0x360 drivers/base/dd.c:843
  bus_probe_device+0x1e4/0x290 drivers/base/bus.c:514
  device_add+0xae6/0x16f0 drivers/base/core.c:2111
  usb_new_device.cold+0x8c1/0x1016 drivers/usb/core/hub.c:2534
  hub_port_connect drivers/usb/core/hub.c:5089 [inline]
  hub_port_connect_change drivers/usb/core/hub.c:5204 [inline]
  port_event drivers/usb/core/hub.c:5350 [inline]
  hub_event+0x1ada/0x3590 drivers/usb/core/hub.c:5432
  process_one_work+0x905/0x1570 kernel/workqueue.c:2269
  worker_thread+0x96/0xe20 kernel/workqueue.c:2415
  kthread+0x30b/0x410 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
Modules linked in:
---[ end trace 8425c817ce1da187 ]---


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
