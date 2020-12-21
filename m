Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FFC2DF80B
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Dec 2020 04:34:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8D532E3ED;
	Mon, 21 Dec 2020 03:34:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r6qbB7v2eRBl; Mon, 21 Dec 2020 03:34:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 11E5C20781;
	Mon, 21 Dec 2020 03:34:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4674F1BF403
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 03:34:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4050C20767
 for <devel@linuxdriverproject.org>; Mon, 21 Dec 2020 03:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bgfoE7YjzmMN for <devel@linuxdriverproject.org>;
 Mon, 21 Dec 2020 03:34:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200])
 by silver.osuosl.org (Postfix) with ESMTPS id E57182052F
 for <devel@driverdev.osuosl.org>; Mon, 21 Dec 2020 03:34:10 +0000 (UTC)
Received: by mail-il1-f200.google.com with SMTP id f2so8244572ils.6
 for <devel@driverdev.osuosl.org>; Sun, 20 Dec 2020 19:34:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
 bh=FlEgzUD3QYmF41PuLCVzjuZhfq6vSLPvJuuSLKlwXN0=;
 b=hDujX97shp13ChJXhWVSUl94fuubER8RFphp74x84+UhEfkyMh8XhUgKBdeCE7ePYv
 3UPb/YV0DNTq+rGPe86zYlI3hdsiITCX98GXrK0rJNl5JbjT4NjaVYVedTjTqYojeMaN
 rK1LHZeEsZVA+cPmIOqhRMmDSLllL6WTViT49UyFDjpLJ7+36cqQL6J9OADQmovS5Idr
 jCrm1TzwbHT26oobi8GtzoaxnfHsriN4bGLnBjsC8ziL5o1SkOhsQOC6OXrH+zY5x96h
 7nJXJHoRMPAtvNsGaPC3A+SlizmvJJyCfztykUesmBp511v1FIgLz4vZ+oOGINVMY0/Z
 sYIg==
X-Gm-Message-State: AOAM532iG6f/AgloE/KgNTtXToZH9DwBnQ/mth8EfKgRAI7NO05UfRAA
 n8kuIZsff+9hRvySX8SPtKygJMy3lzKBHRYUrJ68RDVCwLp0
X-Google-Smtp-Source: ABdhPJw0Yac3wN6O5CdvHOK+e+SgSb1V6BAzy9fL5+lWZuExRbaMuwzfZFx94DzAFs+2eWwRUa6bM9Wbdkjm+SlBa2tw+c01eSU9
MIME-Version: 1.0
X-Received: by 2002:a5d:928d:: with SMTP id s13mr12922242iom.47.1608521650203; 
 Sun, 20 Dec 2020 19:34:10 -0800 (PST)
Date: Sun, 20 Dec 2020 19:34:10 -0800
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <00000000000092f61e05b6f1215b@google.com>
Subject: memory leak in r8712_init_recv_priv
From: syzbot <syzbot+1c46f3771695bccbdb3a@syzkaller.appspotmail.com>
To: Larry.Finger@lwfinger.net, devel@driverdev.osuosl.org, 
 florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org, 
 linux-kernel@vger.kernel.org, syzkaller-bugs@googlegroups.com
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

HEAD commit:    467f8165 Merge tag 'close-range-cloexec-unshare-v5.11' of ..
git tree:       upstream
console output: https://syzkaller.appspot.com/x/log.txt?x=142b5745500000
kernel config:  https://syzkaller.appspot.com/x/.config?x=37c889fb8b2761af
dashboard link: https://syzkaller.appspot.com/bug?extid=1c46f3771695bccbdb3a
compiler:       gcc (GCC) 10.1.0-syz 20200507
syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=1265cb37500000
C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=1763527b500000

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+1c46f3771695bccbdb3a@syzkaller.appspotmail.com

executing program
BUG: memory leak
unreferenced object 0xffff88810ecc26c0 (size 192):
  comm "kworker/1:1", pid 35, jiffies 4294942461 (age 18.010s)
  hex dump (first 32 bytes):
    01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 d8 26 cc 0e 81 88 ff ff  .........&......
  backtrace:
    [<000000005aecb941>] kmalloc include/linux/slab.h:557 [inline]
    [<000000005aecb941>] usb_alloc_urb+0x66/0xe0 drivers/usb/core/urb.c:74
    [<000000007c4331ea>] r8712_os_recvbuf_resource_alloc+0x1b/0x80 drivers/staging/rtl8712/recv_linux.c:46
    [<0000000026fac6b7>] r8712_init_recv_priv+0x96/0x210 drivers/staging/rtl8712/rtl8712_recv.c:54
    [<000000004dbac0de>] _r8712_init_recv_priv+0x134/0x150 drivers/staging/rtl8712/rtl871x_recv.c:78
    [<000000009f37c02e>] r8712_init_drv_sw+0xa0/0x1d0 drivers/staging/rtl8712/os_intfs.c:312
    [<00000000439d06d7>] r871xu_drv_init.cold+0x104/0x7d1 drivers/staging/rtl8712/usb_intf.c:391
    [<00000000a5c43c27>] usb_probe_interface+0x177/0x370 drivers/usb/core/driver.c:396
    [<00000000106f93f1>] really_probe+0x159/0x480 drivers/base/dd.c:561
    [<00000000856556bd>] driver_probe_device+0x84/0x100 drivers/base/dd.c:745
    [<00000000789974b2>] __device_attach_driver+0xee/0x110 drivers/base/dd.c:851
    [<000000003b6b23b1>] bus_for_each_drv+0xb7/0x100 drivers/base/bus.c:431
    [<00000000d916cd73>] __device_attach+0x122/0x250 drivers/base/dd.c:919
    [<000000000aa7621e>] bus_probe_device+0xc6/0xe0 drivers/base/bus.c:491
    [<00000000c2fd5fd8>] device_add+0x5be/0xc30 drivers/base/core.c:3091
    [<00000000d7a5749a>] usb_set_configuration+0x9d9/0xb90 drivers/usb/core/message.c:2164
    [<00000000197a0613>] usb_generic_driver_probe+0x8c/0xc0 drivers/usb/core/generic.c:238

BUG: memory leak
unreferenced object 0xffff88810ecc2600 (size 192):
  comm "kworker/1:1", pid 35, jiffies 4294942461 (age 18.010s)
  hex dump (first 32 bytes):
    01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 18 26 cc 0e 81 88 ff ff  .........&......
  backtrace:
    [<000000005aecb941>] kmalloc include/linux/slab.h:557 [inline]
    [<000000005aecb941>] usb_alloc_urb+0x66/0xe0 drivers/usb/core/urb.c:74
    [<000000007c4331ea>] r8712_os_recvbuf_resource_alloc+0x1b/0x80 drivers/staging/rtl8712/recv_linux.c:46
    [<0000000026fac6b7>] r8712_init_recv_priv+0x96/0x210 drivers/staging/rtl8712/rtl8712_recv.c:54
    [<000000004dbac0de>] _r8712_init_recv_priv+0x134/0x150 drivers/staging/rtl8712/rtl871x_recv.c:78
    [<000000009f37c02e>] r8712_init_drv_sw+0xa0/0x1d0 drivers/staging/rtl8712/os_intfs.c:312
    [<00000000439d06d7>] r871xu_drv_init.cold+0x104/0x7d1 drivers/staging/rtl8712/usb_intf.c:391
    [<00000000a5c43c27>] usb_probe_interface+0x177/0x370 drivers/usb/core/driver.c:396
    [<00000000106f93f1>] really_probe+0x159/0x480 drivers/base/dd.c:561
    [<00000000856556bd>] driver_probe_device+0x84/0x100 drivers/base/dd.c:745
    [<00000000789974b2>] __device_attach_driver+0xee/0x110 drivers/base/dd.c:851
    [<000000003b6b23b1>] bus_for_each_drv+0xb7/0x100 drivers/base/bus.c:431
    [<00000000d916cd73>] __device_attach+0x122/0x250 drivers/base/dd.c:919
    [<000000000aa7621e>] bus_probe_device+0xc6/0xe0 drivers/base/bus.c:491
    [<00000000c2fd5fd8>] device_add+0x5be/0xc30 drivers/base/core.c:3091
    [<00000000d7a5749a>] usb_set_configuration+0x9d9/0xb90 drivers/usb/core/message.c:2164
    [<00000000197a0613>] usb_generic_driver_probe+0x8c/0xc0 drivers/usb/core/generic.c:238

BUG: memory leak
unreferenced object 0xffff88810ecc2540 (size 192):
  comm "kworker/1:1", pid 35, jiffies 4294942461 (age 18.010s)
  hex dump (first 32 bytes):
    01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
    00 00 00 00 00 00 00 00 58 25 cc 0e 81 88 ff ff  ........X%......
  backtrace:
    [<000000005aecb941>] kmalloc include/linux/slab.h:557 [inline]
    [<000000005aecb941>] usb_alloc_urb+0x66/0xe0 drivers/usb/core/urb.c:74
    [<000000007c4331ea>] r8712_os_recvbuf_resource_alloc+0x1b/0x80 drivers/staging/rtl8712/recv_linux.c:46
    [<0000000026fac6b7>] r8712_init_recv_priv+0x96/0x210 drivers/staging/rtl8712/rtl8712_recv.c:54
    [<000000004dbac0de>] _r8712_init_recv_priv+0x134/0x150 drivers/staging/rtl8712/rtl871x_recv.c:78
    [<000000009f37c02e>] r8712_init_drv_sw+0xa0/0x1d0 drivers/staging/rtl8712/os_intfs.c:312
    [<00000000439d06d7>] r871xu_drv_init.cold+0x104/0x7d1 drivers/staging/rtl8712/usb_intf.c:391
    [<00000000a5c43c27>] usb_probe_interface+0x177/0x370 drivers/usb/core/driver.c:396
    [<00000000106f93f1>] really_probe+0x159/0x480 drivers/base/dd.c:561
    [<00000000856556bd>] driver_probe_device+0x84/0x100 drivers/base/dd.c:745
    [<00000000789974b2>] __device_attach_driver+0xee/0x110 drivers/base/dd.c:851
    [<000000003b6b23b1>] bus_for_each_drv+0xb7/0x100 drivers/base/bus.c:431
    [<00000000d916cd73>] __device_attach+0x122/0x250 drivers/base/dd.c:919
    [<000000000aa7621e>] bus_probe_device+0xc6/0xe0 drivers/base/bus.c:491
    [<00000000c2fd5fd8>] device_add+0x5be/0xc30 drivers/base/core.c:3091
    [<00000000d7a5749a>] usb_set_configuration+0x9d9/0xb90 drivers/usb/core/message.c:2164
    [<00000000197a0613>] usb_generic_driver_probe+0x8c/0xc0 drivers/usb/core/generic.c:238



---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.
syzbot can test patches for this issue, for details see:
https://goo.gl/tpsmEJ#testing-patches
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
