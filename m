Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B00099756
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 16:52:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 60E2E884D7;
	Thu, 22 Aug 2019 14:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TNEEPzMp5r-D; Thu, 22 Aug 2019 14:52:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DDB8788499;
	Thu, 22 Aug 2019 14:52:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3B7ED1BF989
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:52:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 34C818784C
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 14:52:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ErZ9b3VKTOum for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 14:52:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8581B877E7
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 14:52:02 +0000 (UTC)
Received: by mail-io1-f72.google.com with SMTP id 132so6655310iou.0
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 07:52:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:date:in-reply-to:message-id:subject
 :from:to;
 bh=tfx7SDslrAc2PE/2x1wo//njmv7hdH0lKRSyyPIMdi4=;
 b=oe+Gu75VYlKWW/SX3BXhOIDl+1B9KZyHQTzTlTDKe+26PZN2jBZW/cmPSioh6nupVT
 jc4bj0Ghqdn4McWCHkwwNoJZLyDDnmLp0N9bv6uyQhsAJeC+Kb/vzRP0jbd1g4cy2mFA
 o/9RhCaAUff+Sb434p8AWqx+FeSGYwi8pKKJjZpjcTOsy+4um+Aab4M7RAPx0XWxc3wu
 hKrjCxtbHzLoP54P0MGLOkz69mmV3dfMm533dD9NoQr4dlPffnQiTv2WECVFMxAbNWBv
 qsKXLA9c6ctnXI9GkdsTM85QQ2H0QmnW8JHxAiNNeeQjli13Lnc54dNrTdBodEGmiYB/
 gggA==
X-Gm-Message-State: APjAAAXtlZLKH4BHCPlCvpDlSobmfbwtW/GYS3hPcbqod/XBFqYR+1GP
 B2Bw2uTypmOgMABcSN7ObemaNUmFlmDHsYIp459mXiFgJqaK
X-Google-Smtp-Source: APXvYqwkEaTPCEPE5B5SaIMErimJclWbQrN3F74IJA31/lCxZp7z9GPtNByyYN9jYTdop8VhaerLh0MJEljVR+aigpJ3sOHjTL8k
MIME-Version: 1.0
X-Received: by 2002:a02:a99d:: with SMTP id q29mr16782714jam.80.1566485521709; 
 Thu, 22 Aug 2019 07:52:01 -0700 (PDT)
Date: Thu, 22 Aug 2019 07:52:01 -0700
In-Reply-To: <1566484884.8347.53.camel@suse.com>
X-Google-Appengine-App-Id: s~syzkaller
X-Google-Appengine-App-Id-Alias: syzkaller
Message-ID: <0000000000001145b10590b5d5bc@google.com>
Subject: Re: WARNING in r871xu_dev_remove
From: syzbot <syzbot+80899a8a8efe8968cde7@syzkaller.appspotmail.com>
To: Larry.Finger@lwfinger.net, andreyknvl@google.com, 
 devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com, 
 gregkh@linuxfoundation.org, himadri18.07@gmail.com, 
 kai.heng.feng@canonical.com, linux-usb@vger.kernel.org, linux.dkm@gmail.com, 
 oneukum@suse.com, straube.linux@gmail.com, syzkaller-bugs@googlegroups.com
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

syzbot has tested the proposed patch but the reproducer still triggered  
crash:
KASAN: use-after-free Read in device_release_driver_internal

==================================================================
BUG: KASAN: use-after-free in __mutex_lock_common  
kernel/locking/mutex.c:912 [inline]
BUG: KASAN: use-after-free in __mutex_lock+0xf23/0x1360  
kernel/locking/mutex.c:1077
Read of size 8 at addr ffff8881d644bd78 by task kworker/0:4/2855

CPU: 0 PID: 2855 Comm: kworker/0:4 Not tainted 5.3.0-rc5+ #1
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Workqueue: usb_hub_wq hub_event
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0xca/0x13e lib/dump_stack.c:113
  print_address_description+0x6a/0x32c mm/kasan/report.c:351
  __kasan_report.cold+0x1a/0x33 mm/kasan/report.c:482
  kasan_report+0xe/0x12 mm/kasan/common.c:612
  __mutex_lock_common kernel/locking/mutex.c:912 [inline]
  __mutex_lock+0xf23/0x1360 kernel/locking/mutex.c:1077
  device_release_driver_internal+0x23/0x500 drivers/base/dd.c:1162
  bus_remove_device+0x2dc/0x4a0 drivers/base/bus.c:556
  device_del+0x420/0xb10 drivers/base/core.c:2339
  usb_disconnect+0x4c3/0x8d0 drivers/usb/core/hub.c:2225
  hub_port_connect drivers/usb/core/hub.c:4949 [inline]
  hub_port_connect_change drivers/usb/core/hub.c:5213 [inline]
  port_event drivers/usb/core/hub.c:5359 [inline]
  hub_event+0x1454/0x3640 drivers/usb/core/hub.c:5441
  process_one_work+0x92b/0x1530 kernel/workqueue.c:2269
  worker_thread+0x96/0xe20 kernel/workqueue.c:2415
  kthread+0x318/0x420 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352

Allocated by task 12:
  save_stack+0x1b/0x80 mm/kasan/common.c:69
  set_track mm/kasan/common.c:77 [inline]
  __kasan_kmalloc mm/kasan/common.c:487 [inline]
  __kasan_kmalloc.constprop.0+0xbf/0xd0 mm/kasan/common.c:460
  kmalloc include/linux/slab.h:552 [inline]
  kzalloc include/linux/slab.h:748 [inline]
  usb_alloc_dev+0x51/0xf95 drivers/usb/core/usb.c:583
  hub_port_connect drivers/usb/core/hub.c:5004 [inline]
  hub_port_connect_change drivers/usb/core/hub.c:5213 [inline]
  port_event drivers/usb/core/hub.c:5359 [inline]
  hub_event+0x15c0/0x3640 drivers/usb/core/hub.c:5441
  process_one_work+0x92b/0x1530 kernel/workqueue.c:2269
  worker_thread+0x96/0xe20 kernel/workqueue.c:2415
  kthread+0x318/0x420 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352

Freed by task 2855:
  save_stack+0x1b/0x80 mm/kasan/common.c:69
  set_track mm/kasan/common.c:77 [inline]
  __kasan_slab_free+0x130/0x180 mm/kasan/common.c:449
  slab_free_hook mm/slub.c:1423 [inline]
  slab_free_freelist_hook mm/slub.c:1474 [inline]
  slab_free mm/slub.c:3016 [inline]
  kfree+0xe4/0x2f0 mm/slub.c:3957
  device_release+0x71/0x200 drivers/base/core.c:1064
  kobject_cleanup lib/kobject.c:693 [inline]
  kobject_release lib/kobject.c:722 [inline]
  kref_put include/linux/kref.h:65 [inline]
  kobject_put+0x171/0x280 lib/kobject.c:739
  put_device+0x1b/0x30 drivers/base/core.c:2264
  klist_put+0xce/0x170 lib/klist.c:221
  bus_remove_device+0x3a4/0x4a0 drivers/base/bus.c:552
  device_del+0x420/0xb10 drivers/base/core.c:2339
  usb_disconnect+0x4c3/0x8d0 drivers/usb/core/hub.c:2225
  hub_port_connect drivers/usb/core/hub.c:4949 [inline]
  hub_port_connect_change drivers/usb/core/hub.c:5213 [inline]
  port_event drivers/usb/core/hub.c:5359 [inline]
  hub_event+0x1454/0x3640 drivers/usb/core/hub.c:5441
  process_one_work+0x92b/0x1530 kernel/workqueue.c:2269
  worker_thread+0x96/0xe20 kernel/workqueue.c:2415
  kthread+0x318/0x420 kernel/kthread.c:255
  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352

The buggy address belongs to the object at ffff8881d644bb80
  which belongs to the cache kmalloc-2k of size 2048
The buggy address is located 504 bytes inside of
  2048-byte region [ffff8881d644bb80, ffff8881d644c380)
The buggy address belongs to the page:
page:ffffea0007591200 refcount:1 mapcount:0 mapping:ffff8881da00c000  
index:0xffff8881d6448000 compound_mapcount: 0
flags: 0x200000000010200(slab|head)
raw: 0200000000010200 ffffea000760ac00 0000000200000002 ffff8881da00c000
raw: ffff8881d6448000 00000000800f000a 00000001ffffffff 0000000000000000
page dumped because: kasan: bad access detected

Memory state around the buggy address:
  ffff8881d644bc00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
  ffff8881d644bc80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> ffff8881d644bd00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
                                                                 ^
  ffff8881d644bd80: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
  ffff8881d644be00: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
==================================================================


Tested on:

commit:         eea39f24 usb-fuzzer: main usb gadget fuzzer driver
git tree:       https://github.com/google/kasan.git
console output: https://syzkaller.appspot.com/x/log.txt?x=1018661e600000
kernel config:  https://syzkaller.appspot.com/x/.config?x=d0c62209eedfd54e
compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
patch:          https://syzkaller.appspot.com/x/patch.diff?x=1425bc2e600000

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
