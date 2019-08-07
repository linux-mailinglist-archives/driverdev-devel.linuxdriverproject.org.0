Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D870584E4C
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Aug 2019 16:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 37BE2862B4;
	Wed,  7 Aug 2019 14:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xD3daXynaoff; Wed,  7 Aug 2019 14:10:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6DB584CE6;
	Wed,  7 Aug 2019 14:10:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BCC41BF2F5
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 14:10:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 887D384D56
 for <devel@linuxdriverproject.org>; Wed,  7 Aug 2019 14:10:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L2neil3Boh3U for <devel@linuxdriverproject.org>;
 Wed,  7 Aug 2019 14:10:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A4F1384CEB
 for <devel@driverdev.osuosl.org>; Wed,  7 Aug 2019 14:10:06 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id j11so4398330otp.10
 for <devel@driverdev.osuosl.org>; Wed, 07 Aug 2019 07:10:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uc65rpe23o0A2nQdvHrvtNgdgXxy1SG12eSfYS2ryvE=;
 b=GOskT8et6JiKHY9AxG/NKv7WscQ3CCeua4bi858HHIhr5NXxmGfa+2GJ9SVLLVVipu
 I+A4sn8jgC4Yzl8TI2GQ3DQ8BihEvMqk8JlPPB2jI3jVVmCnQfx+cCqhQDOp7At2w+uY
 FdSR09NF/SgEZHB1EdAIpWp6Os1p5YpHVcYtCZgblBrBVwdH9l0O5GD65S8Rit5juxMy
 JR7VQaxUMXUzmN/weQJ9sbUku2DWncZM1Of3f2T1GTeQPZl/wLKnQGYqTGv/GW7ZrvKY
 dbHNcp8uZ9s3G+O+PjqO3SWr05a1fSOlFqP3tZDlJYARuExD8ly0xWA4+w8tqbo8g0iE
 qsHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uc65rpe23o0A2nQdvHrvtNgdgXxy1SG12eSfYS2ryvE=;
 b=Zi1craCpQkaexAe1eqdhYsw9ryFUoHTBkACjCMyoHYdRcujY3hhLBFS8tpi+suIMZN
 TA976su+00sjaQssrtMpP6THN7ObyKPip0UHEms/tLN4ueXf8zyq3uMyuRMXbArSDswK
 QMs46c5pwGEGmGq2J93mChKEozWpCZLc56f3gUaAbFlRPWbSFLc9akQ/sUlQ06X2qtax
 lqfstuDw3KZ7CH5U71gfM/jSM9u1HFumnR8ZiOhYBCYntJ4hgD6JxKkecoXaqrpB1mgO
 hnSUuT6YMP3Pp5qnngtuOnBByzJVML9wwDssTNUsPEd8M5WlYIH560K1AIzq66mtBdNR
 2pZw==
X-Gm-Message-State: APjAAAV27UwcUcQvIYnhjJQTp/Yjvm3fd3UZKdBmwWJRjA01lAGQ5QbZ
 ikKM+u4wSD5c8A5nShgsFIJU+l5Sm6qV7wy0JONTOcPnbvY=
X-Google-Smtp-Source: APXvYqwhtTnXHIZt5BWUuuZlK1xosmm0aCgifyhr5DN0sowb29Nm06yezyMPOIY+SYNU8K8ssr8QHGix4pV0cc2nrdA=
X-Received: by 2002:a63:c442:: with SMTP id m2mr8060697pgg.286.1565186645311; 
 Wed, 07 Aug 2019 07:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000d9f094057a17b97b@google.com>
 <000000000000b439370586498dff@google.com>
 <CAAeHK+zUHJswwHfVUCV0qTgvFVFZpT0hJqioLyYgbA0yQC0H8Q@mail.gmail.com>
In-Reply-To: <CAAeHK+zUHJswwHfVUCV0qTgvFVFZpT0hJqioLyYgbA0yQC0H8Q@mail.gmail.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 7 Aug 2019 16:03:54 +0200
Message-ID: <CAAeHK+w+asSQ3axWymToQ+uzPfEAYS2QimVBL85GuJRBtxkjDA@mail.gmail.com>
Subject: Re: WARNING in rollback_registered_many (2)
To: syzbot <syzbot+40918e4d826fb2ff9b96@syzkaller.appspotmail.com>, 
 USB list <linux-usb@vger.kernel.org>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 avagin@virtuozzo.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Oliver Neukum <oneukum@suse.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 tyhicks@canonical.com, Eric Dumazet <edumazet@google.com>,
 Kai Heng Feng <kai.heng.feng@canonical.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 "Eric W . Biederman" <ebiederm@xmission.com>, netdev <netdev@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, ktkhai@virtuozzo.com,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Apr 12, 2019 at 1:32 PM Andrey Konovalov <andreyknvl@google.com> wrote:
>
> On Fri, Apr 12, 2019 at 1:29 AM syzbot
> <syzbot+40918e4d826fb2ff9b96@syzkaller.appspotmail.com> wrote:
> >
> > syzbot has found a reproducer for the following crash on:
> >
> > HEAD commit:    9a33b369 usb-fuzzer: main usb gadget fuzzer driver
> > git tree:       https://github.com/google/kasan/tree/usb-fuzzer
> > console output: https://syzkaller.appspot.com/x/log.txt?x=10d552b7200000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=23e37f59d94ddd15
> > dashboard link: https://syzkaller.appspot.com/bug?extid=40918e4d826fb2ff9b96
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=17a4c1af200000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=121b274b200000
> >
> > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > Reported-by: syzbot+40918e4d826fb2ff9b96@syzkaller.appspotmail.com
> >
> > usb 1-1: r8712u: MAC Address from efuse = 00:e0:4c:87:00:00
> > usb 1-1: r8712u: Loading firmware from "rtlwifi/rtl8712u.bin"
> > usb 1-1: USB disconnect, device number 2
> > usb 1-1: Direct firmware load for rtlwifi/rtl8712u.bin failed with error -2
> > usb 1-1: r8712u: Firmware request failed
> > WARNING: CPU: 0 PID: 575 at net/core/dev.c:8152
> > rollback_registered_many+0x1f3/0xe70 net/core/dev.c:8152
> > Kernel panic - not syncing: panic_on_warn set ...
> > CPU: 0 PID: 575 Comm: kworker/0:4 Not tainted 5.1.0-rc4-319354-g9a33b36 #3
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS
> > Google 01/01/2011
> > Workqueue: usb_hub_wq hub_event
> > Call Trace:
> >   __dump_stack lib/dump_stack.c:77 [inline]
> >   dump_stack+0xe8/0x16e lib/dump_stack.c:113
> >   panic+0x29d/0x5f2 kernel/panic.c:214
> >   __warn.cold+0x20/0x48 kernel/panic.c:571
> >   report_bug+0x262/0x2a0 lib/bug.c:186
> >   fixup_bug arch/x86/kernel/traps.c:179 [inline]
> >   fixup_bug arch/x86/kernel/traps.c:174 [inline]
> >   do_error_trap+0x130/0x1f0 arch/x86/kernel/traps.c:272
> >   do_invalid_op+0x37/0x40 arch/x86/kernel/traps.c:291
> >   invalid_op+0x14/0x20 arch/x86/entry/entry_64.S:973
> > RIP: 0010:rollback_registered_many+0x1f3/0xe70 net/core/dev.c:8152
> > Code: 05 00 00 31 ff 44 89 fe e8 5a 15 f3 f4 45 84 ff 0f 85 49 ff ff ff e8
> > 1c 14 f3 f4 0f 1f 44 00 00 e8 12 14 f3 f4 e8 0d 14 f3 f4 <0f> 0b 4c 89 e7
> > e8 33 72 f2 f6 31 ff 41 89 c4 89 c6 e8 27 15 f3 f4
> > RSP: 0018:ffff88809d087698 EFLAGS: 00010293
> > RAX: ffff88809d058000 RBX: ffff888096240000 RCX: ffffffff8c7eb146
> > RDX: 0000000000000000 RSI: ffffffff8c7eb163 RDI: 0000000000000001
> > RBP: ffff88809d0877c8 R08: ffff88809d058000 R09: fffffbfff2708111
> > R10: fffffbfff2708110 R11: ffffffff93840887 R12: ffff888096240070
> > R13: dffffc0000000000 R14: ffff88809d087758 R15: 0000000000000000
> >   rollback_registered+0xf7/0x1c0 net/core/dev.c:8228
> >   unregister_netdevice_queue net/core/dev.c:9275 [inline]
> >   unregister_netdevice_queue+0x1dc/0x2b0 net/core/dev.c:9268
> >   unregister_netdevice include/linux/netdevice.h:2655 [inline]
> >   unregister_netdev+0x1d/0x30 net/core/dev.c:9316
> >   r871xu_dev_remove+0xe7/0x223 drivers/staging/rtl8712/usb_intf.c:604
> >   usb_unbind_interface+0x1c9/0x980 drivers/usb/core/driver.c:423
> >   __device_release_driver drivers/base/dd.c:1082 [inline]
> >   device_release_driver_internal+0x436/0x4f0 drivers/base/dd.c:1113
> >   bus_remove_device+0x302/0x5c0 drivers/base/bus.c:556
> >   device_del+0x467/0xb90 drivers/base/core.c:2269
> >   usb_disable_device+0x242/0x790 drivers/usb/core/message.c:1235
> >   usb_disconnect+0x298/0x870 drivers/usb/core/hub.c:2197
> >   hub_port_connect drivers/usb/core/hub.c:4940 [inline]
> >   hub_port_connect_change drivers/usb/core/hub.c:5204 [inline]
> >   port_event drivers/usb/core/hub.c:5350 [inline]
> >   hub_event+0xcd2/0x3b00 drivers/usb/core/hub.c:5432
> >   process_one_work+0x90f/0x1580 kernel/workqueue.c:2269
> >   process_scheduled_works kernel/workqueue.c:2331 [inline]
> >   worker_thread+0x7b0/0xe20 kernel/workqueue.c:2417
> >   kthread+0x313/0x420 kernel/kthread.c:253
> >   ret_from_fork+0x3a/0x50 arch/x86/entry/entry_64.S:352
> > Kernel Offset: disabled
> > Rebooting in 86400 seconds..
> >
>
> +linux-usb mailing list

This USB bug is the most frequently triggered one right now with over
27k kernel crashes.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
