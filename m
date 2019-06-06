Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E468375B4
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 15:52:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC04D86442;
	Thu,  6 Jun 2019 13:52:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iC0q9cD4_bxk; Thu,  6 Jun 2019 13:52:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02CBC862AB;
	Thu,  6 Jun 2019 13:52:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 852A41BF3A7
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 13:52:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 814A62034A
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 13:52:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jt4p+WnJd1Pc for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 13:52:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70])
 by silver.osuosl.org (Postfix) with ESMTPS id 89B5220355
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 13:52:11 +0000 (UTC)
Received: by mail-io1-f70.google.com with SMTP id m26so178413ioh.17
 for <devel@driverdev.osuosl.org>; Thu, 06 Jun 2019 06:52:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=o0RJU0d7tS36/GBK6WaDEPEeObqvBB53uJC4wjI9+rE=;
 b=N/NjxwBn0ltohohrTQViOaEIFaEX5MX9veMqdngwqN/ekRvXeohkbLd6Jf68PeBsFU
 3EWdOh9nQ9MbVleV2twt49l94Ucg5M1M0vqc9RxngTtUUfR5ibftHHX6iyGydT/rY8aT
 lnPn2iQ+ElEF2jzq3YItmP64MhTnJIi2IaNjy6fgtlYU6wgutN19KNuP4gsqDFHW/uvk
 Wz2ovYq6w+a8sJmX4jcs7FTBQdDnTHLGFv2fTIpJfI2lDpS8D6HVqEnTdE5Vo+BkK3CR
 dV2uir/+KdYiCXufe1ZRj1EncJ5MFkknrX7KN+lLMDZrbtaG8m5gO95y8DPyuLJFt6FO
 SwYA==
X-Gm-Message-State: APjAAAXJ2oQzF5uKJbpZRoBuhp+Y4zD1qX4X4Ud6KIVUkKHWOfGHVw1g
 szIB2cTvLUT3qq9XhdX243wMXO7QlWq3KXModFlVm6BsixSI
X-Google-Smtp-Source: APXvYqxVwo54TufnpHAFfpFhBdeK3HzxTn+CVRm0HOfD5CVWXOzrEYA63Z6H1/aHl1GJqijhZAHB6MUIXBwjrIrIgGXeaNOQNSkS
MIME-Version: 1.0
X-Received: by 2002:a02:c90d:: with SMTP id t13mr11180876jao.62.1559829130866; 
 Thu, 06 Jun 2019 06:52:10 -0700 (PDT)
Date: Thu, 06 Jun 2019 06:52:10 -0700
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <000000000000417702058aa80506@google.com>
Subject: KMSAN: uninit-value in r871xu_drv_init
From: syzbot <syzbot+6f5ecd144854c0d8580b@syzkaller.appspotmail.com>
To: Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org, 
 florian.c.schilhabel@googlemail.com, glider@google.com, 
 gregkh@linuxfoundation.org, kai.heng.feng@canonical.com, 
 linux-kernel@vger.kernel.org, straube.linux@gmail.com, 
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

HEAD commit:    f75e4cfe kmsan: use kmsan_handle_urb() in urb.c
git tree:       kmsan
console output: https://syzkaller.appspot.com/x/log.txt?x=153453dea00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=602468164ccdc30a
dashboard link: https://syzkaller.appspot.com/bug?extid=6f5ecd144854c0d8580b
compiler:       clang version 9.0.0 (/home/glider/llvm/clang  
06d00afa61eef8f7f501ebdb4e8612ea43ec2d78)
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=161892c1a00000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=11b20986a00000

IMPORTANT: if you fix the bug, please add the following tag to the commit:
Reported-by: syzbot+6f5ecd144854c0d8580b@syzkaller.appspotmail.com

usb 1-1: config 0 has no interface number 0
usb 1-1: New USB device found, idVendor=050d, idProduct=945a,  
bcdDevice=f1.a1
usb 1-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
usb 1-1: config 0 descriptor??
r8712u: register rtl8712_netdev_ops to netdev_ops
usb 1-1: r8712u: USB_SPEED_LOW with 0 endpoints
usb 1-1: r8712u: Boot from EFUSE: Autoload Failed
==================================================================
BUG: KMSAN: uninit-value in r871xu_drv_init+0x17c6/0x2ad0  
drivers/staging/rtl8712/usb_intf.c:409
CPU: 1 PID: 17 Comm: kworker/1:0 Not tainted 5.1.0+ #1
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: usb_hub_wq hub_event
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x191/0x1f0 lib/dump_stack.c:113
  kmsan_report+0x130/0x2a0 mm/kmsan/kmsan.c:622
  __msan_warning+0x75/0xe0 mm/kmsan/kmsan_instr.c:310
  r871xu_drv_init+0x17c6/0x2ad0 drivers/staging/rtl8712/usb_intf.c:409
  usb_probe_interface+0xd66/0x1320 drivers/usb/core/driver.c:361
  really_probe+0xdae/0x1d80 drivers/base/dd.c:513
  driver_probe_device+0x1b3/0x4f0 drivers/base/dd.c:671
  __device_attach_driver+0x5b8/0x790 drivers/base/dd.c:778
  bus_for_each_drv+0x28e/0x3b0 drivers/base/bus.c:454
  __device_attach+0x454/0x730 drivers/base/dd.c:844
  device_initial_probe+0x4a/0x60 drivers/base/dd.c:891
  bus_probe_device+0x137/0x390 drivers/base/bus.c:514
  device_add+0x288d/0x30e0 drivers/base/core.c:2106
  usb_set_configuration+0x30dc/0x3750 drivers/usb/core/message.c:2027
  generic_probe+0xe7/0x280 drivers/usb/core/generic.c:210
  usb_probe_device+0x14c/0x200 drivers/usb/core/driver.c:266
  really_probe+0xdae/0x1d80 drivers/base/dd.c:513
  driver_probe_device+0x1b3/0x4f0 drivers/base/dd.c:671
  __device_attach_driver+0x5b8/0x790 drivers/base/dd.c:778
  bus_for_each_drv+0x28e/0x3b0 drivers/base/bus.c:454
  __device_attach+0x454/0x730 drivers/base/dd.c:844
  device_initial_probe+0x4a/0x60 drivers/base/dd.c:891
  bus_probe_device+0x137/0x390 drivers/base/bus.c:514
  device_add+0x288d/0x30e0 drivers/base/core.c:2106
  usb_new_device+0x23e5/0x2ff0 drivers/usb/core/hub.c:2534
  hub_port_connect drivers/usb/core/hub.c:5089 [inline]
  hub_port_connect_change drivers/usb/core/hub.c:5204 [inline]
  port_event drivers/usb/core/hub.c:5350 [inline]
  hub_event+0x48d1/0x7290 drivers/usb/core/hub.c:5432
  process_one_work+0x1572/0x1f00 kernel/workqueue.c:2269
  worker_thread+0x111b/0x2460 kernel/workqueue.c:2415
  kthread+0x4b5/0x4f0 kernel/kthread.c:254
  ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355

Local variable description: ----data@usb_read8
Variable was created at:
  usb_read8+0x5d/0x130 drivers/staging/rtl8712/usb_ops.c:33
  r8712_read8+0xaa/0xd0 drivers/staging/rtl8712/rtl8712_io.c:29
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
