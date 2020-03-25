Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C67581929FE
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 14:36:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4B2687F44;
	Wed, 25 Mar 2020 13:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yT3EJzywoUEk; Wed, 25 Mar 2020 13:36:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FAB587F65;
	Wed, 25 Mar 2020 13:36:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AAB41BF33D
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 13:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 14FBE8854A
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 13:36:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eyNB6vsSvzNv for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 13:36:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D154C85BE4
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 13:36:02 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id n1so1015575qvz.4
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 06:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rb+UZYllUQV6sDUts/XADXbyoBXKVdr1eAiUFxuMxTw=;
 b=ixSSw6Y31Yc55sZ2Zlutakxq2wiiSy4FCPjtF4jaYcL4wbK5nfmGFY/yRg9nx1Yxug
 gMoilIahr4oNRx5DO96JlEns7rfOpO9p5PVKakSiJeJ8go9OUxjCnK2U0uiHmeRAuwTm
 W1hZDg7hxTOLZSs0eZiLxeiv/Fzz7qV5sYkTyJ2fuKNG12oKK41GA3LgpcfQH0uAWdo/
 bIv/wVxcc+SN5I5F7TMdhFJoXYO3N8CfrL6vZpCAfauSjHSXqm6kgTbcdhTgX4f3N+Nr
 5nirCVrdPlRJDa7jllC19z/0fEV9ePbxW926++GnFD8+meCtaXH5a3mxQbX6SwbvegbE
 uWfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rb+UZYllUQV6sDUts/XADXbyoBXKVdr1eAiUFxuMxTw=;
 b=RE4ZeoHhxbFglTFAUR0V81/9QZ8OB8d1IeFeaOosGCZVjb4WONh6EzOFJJO8PIMQg0
 1jNZw5lWbioyr3+/ifU5y9QxtbAxbzU83nRdJCdTy8sPh8QURIpNarw4ATXmmka/d7yc
 D5dth4q5fMfS3QF2+eVyNYrlWTe12tq2WztMDxAQw6rps7eeDVCFBC7UwfFGEhpL1zn6
 dhNUn7T3N8ZPF+SJKETrjg7vIpY5+PttDxXAMpabLEcxCj8fWZTLXE1IkUJBfwfo8JIp
 +U6wM34x8030s9ktY8v3KbZ1DHzRVjTiV8y/BL7LyYeFnowq3tWku6HzPrJFciIhora5
 L57w==
X-Gm-Message-State: ANhLgQ3mMHIvq1MuC9CSmJSQQ0m1ALfKcBXS4289LabZbAdaoH9dFUtd
 QeNqIc+8pn17b9GuiiydjbyVtNOTakfuFgxvY/enqrkOFXA=
X-Google-Smtp-Source: ADFU+vvkRJZ4g3n4cer19pm0VVUFNZRnkrhG++qRc1UQSAzw3AogP7m4b376xQG1Jm3vTCLGqrK9787xkKHQO9mqSKo=
X-Received: by 2002:a17:902:9889:: with SMTP id
 s9mr3037969plp.252.1585142963758; 
 Wed, 25 Mar 2020 06:29:23 -0700 (PDT)
MIME-Version: 1.0
References: <CADG63jANt9w4rFWKg6cw_S4jvB+Q-2hyOp9Mm0WD3oyQofY6UA@mail.gmail.com>
 <20200325131309.12792-1-hdanton@sina.com>
In-Reply-To: <20200325131309.12792-1-hdanton@sina.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 25 Mar 2020 14:29:12 +0100
Message-ID: <CAAeHK+w1tJAANvhnhH=LjJNPkKjx_uAze=s33VLfCsq3ius09Q@mail.gmail.com>
Subject: Re: KASAN: slab-out-of-bounds Read in hfa384x_usbin_callback
To: Hillf Danton <hdanton@sina.com>
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
Cc: devel@driverdev.osuosl.org, anenbupt@gmail.com,
 syzbot <syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, nishkadg.linux@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Mar 25, 2020 at 2:13 PM Hillf Danton <hdanton@sina.com> wrote:
>
>
> On Wed, 25 Mar 2020 01:58:03 -0700
> > syzbot has tested the proposed patch but the reproducer still triggered crash:
> > KASAN: use-after-free Read in hfa384x_usbin_callback
> >
> > ==================================================================
> > BUG: KASAN: use-after-free in memcpy include/linux/string.h:381 [inline]
> > BUG: KASAN: use-after-free in skb_put_data include/linux/skbuff.h:2284 [inline]
> > BUG: KASAN: use-after-free in hfa384x_int_rxmonitor drivers/staging/wlan-ng/hfa384x_usb.c:3412 [inline]
> > BUG: KASAN: use-after-free in hfa384x_usbin_rx drivers/staging/wlan-ng/hfa384x_usb.c:3312 [inline]
> > BUG: KASAN: use-after-free in hfa384x_usbin_callback+0x1993/0x2360 drivers/staging/wlan-ng/hfa384x_usb.c:3026
> > Read of size 19671 at addr ffff8881cda7b33c by task kworker/1:2/95
> >
> > CPU: 1 PID: 95 Comm: kworker/1:2 Not tainted 5.6.0-rc5-syzkaller #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 01/01/2011
> > Workqueue: usb_hub_wq hub_event
> > Call Trace:
> >  <IRQ>
> >  __dump_stack lib/dump_stack.c:77 [inline]
> >  dump_stack+0xef/0x16e lib/dump_stack.c:118
> >  print_address_description.constprop.0.cold+0xd3/0x314 mm/kasan/report.c:374
> >  __kasan_report.cold+0x37/0x77 mm/kasan/report.c:506
> >  kasan_report+0xe/0x20 mm/kasan/common.c:641
> >  check_memory_region_inline mm/kasan/generic.c:185 [inline]
> >  check_memory_region+0x152/0x1c0 mm/kasan/generic.c:192
> >  memcpy+0x20/0x50 mm/kasan/common.c:127
> >  memcpy include/linux/string.h:381 [inline]
> >  skb_put_data include/linux/skbuff.h:2284 [inline]
> >  hfa384x_int_rxmonitor drivers/staging/wlan-ng/hfa384x_usb.c:3412 [inline]
> >  hfa384x_usbin_rx drivers/staging/wlan-ng/hfa384x_usb.c:3312 [inline]
> >  hfa384x_usbin_callback+0x1993/0x2360 drivers/staging/wlan-ng/hfa384x_usb.c:3026
> >  __usb_hcd_giveback_urb+0x29a/0x550 drivers/usb/core/hcd.c:1650
> >  usb_hcd_giveback_urb+0x368/0x420 drivers/usb/core/hcd.c:1716
> >  dummy_timer+0x1258/0x32ae drivers/usb/gadget/udc/dummy_hcd.c:1966
> >  call_timer_fn+0x195/0x6f0 kernel/time/timer.c:1404
> >  expire_timers kernel/time/timer.c:1449 [inline]
> >  __run_timers kernel/time/timer.c:1773 [inline]
> >  __run_timers kernel/time/timer.c:1740 [inline]
> >  run_timer_softirq+0x5f9/0x1500 kernel/time/timer.c:1786
> >  __do_softirq+0x21e/0x950 kernel/softirq.c:292
> >  invoke_softirq kernel/softirq.c:373 [inline]
> >  irq_exit+0x178/0x1a0 kernel/softirq.c:413
> >  exiting_irq arch/x86/include/asm/apic.h:546 [inline]
> >  smp_apic_timer_interrupt+0x141/0x540 arch/x86/kernel/apic/apic.c:1146
> >  apic_timer_interrupt+0xf/0x20 arch/x86/entry/entry_64.S:829
> >  </IRQ>
> > RIP: 0010:arch_local_irq_restore arch/x86/include/asm/irqflags.h:85 [inline]
> > RIP: 0010:__raw_spin_unlock_irqrestore include/linux/spinlock_api_smp.h:160 [inline]
> > RIP: 0010:_raw_spin_unlock_irqrestore+0x3b/0x40 kernel/locking/spinlock.c:191
> > Code: e8 2a e8 96 fb 48 89 ef e8 f2 c9 97 fb f6 c7 02 75 11 53 9d e8 16 50 b5 fb 65 ff 0d f7 bd 72 7a 5b 5d c3 e8 07 4e b5 fb 53 9d <eb> ed 0f 1f 00 55 48 89 fd 65 ff 05 dd bd 72 7a 45 31 c9 41 b8 01
> > RSP: 0018:ffff8881d56b6f40 EFLAGS: 00000293 ORIG_RAX: ffffffffffffff13
> > RAX: 0000000000000007 RBX: 0000000000000293 RCX: 0000000000000006
> > RDX: 0000000000000000 RSI: ffff8881d56a88f0 RDI: ffff8881d56a884c
> > RBP: ffff8881c0c64b80 R08: ffff8881d56a8000 R09: fffffbfff1266e8f
> > R10: fffffbfff1266e8e R11: ffffffff89337477 R12: 0000000000000000
> > R13: ffff8881c0c64bb8 R14: ffff8881c0c64b80 R15: ffff8881c0c64bb8
> >  hfa384x_usbctlx_submit+0x1cb/0x260 drivers/staging/wlan-ng/hfa384x_usb.c:3834
> >  hfa384x_docmd drivers/staging/wlan-ng/hfa384x_usb.c:1233 [inline]
> >  hfa384x_cmd_initialize+0x290/0x4f0 drivers/staging/wlan-ng/hfa384x_usb.c:846
> >  hfa384x_drvr_start+0x1f1/0x480 drivers/staging/wlan-ng/hfa384x_usb.c:2380
> >  prism2sta_ifstate+0x24e/0x510 drivers/staging/wlan-ng/prism2sta.c:471
> >  prism2sta_probe_usb.cold+0x1c8/0x49e drivers/staging/wlan-ng/prism2usb.c:112
> >  usb_probe_interface+0x310/0x800 drivers/usb/core/driver.c:374
> >  really_probe+0x290/0xac0 drivers/base/dd.c:551
> >  driver_probe_device+0x223/0x350 drivers/base/dd.c:724
> >  __device_attach_driver+0x1d1/0x290 drivers/base/dd.c:831
> >  bus_for_each_drv+0x162/0x1e0 drivers/base/bus.c:431
> >  __device_attach+0x217/0x390 drivers/base/dd.c:897
> >  bus_probe_device+0x1e4/0x290 drivers/base/bus.c:491
> >  device_add+0x1459/0x1bf0 drivers/base/core.c:2500
> >  usb_set_configuration+0xe47/0x17d0 drivers/usb/core/message.c:2023
> >  usb_generic_driver_probe+0x9d/0xe0 drivers/usb/core/generic.c:241
> >  usb_probe_device+0xd9/0x230 drivers/usb/core/driver.c:272
> >  really_probe+0x290/0xac0 drivers/base/dd.c:551
> >  driver_probe_device+0x223/0x350 drivers/base/dd.c:724
> >  __device_attach_driver+0x1d1/0x290 drivers/base/dd.c:831
> >  bus_for_each_drv+0x162/0x1e0 drivers/base/bus.c:431
> >  __device_attach+0x217/0x390 drivers/base/dd.c:897
> >  bus_probe_device+0x1e4/0x290 drivers/base/bus.c:491
> >  device_add+0x1459/0x1bf0 drivers/base/core.c:2500
> >  usb_new_device.cold+0x540/0xcd0 drivers/usb/core/hub.c:2548
> >  hub_port_connect drivers/usb/core/hub.c:5195 [inline]
> >  hub_port_connect_change drivers/usb/core/hub.c:5335 [inline]
> >  port_event drivers/usb/core/hub.c:5481 [inline]
> >  hub_event+0x21cb/0x4300 drivers/usb/core/hub.c:5563
> >  process_one_work+0x94b/0x1620 kernel/workqueue.c:2264
> >  worker_thread+0x96/0xe20 kernel/workqueue.c:2410
> >  kthread+0x318/0x420 kernel/kthread.c:255
> >  ret_from_fork+0x24/0x30 arch/x86/entry/entry_64.S:352
> >
> > The buggy address belongs to the page:
> > page:ffffea0007369e00 refcount:32737 mapcount:0 mapping:0000000000000000 index:0x0 compound_mapcount: 0
> > flags: 0x200000000010000(head)
> > raw: 0200000000010000 dead000000000100 dead000000000122 0000000000000000
> > raw: 0000000000000000 0000000000000000 00007fe1ffffffff 0000000000000000
> > page dumped because: kasan: bad access detected
> >
> > Memory state around the buggy address:
> >  ffff8881cda7ff00: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> >  ffff8881cda7ff80: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
> > >ffff8881cda80000: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> >                    ^
> >  ffff8881cda80080: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> >  ffff8881cda80100: fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb fb
> > ==================================================================
> >
> >
> > Tested on:
> >
> > commit:         e17994d1 usb: core: kcov: collect coverage from usb comple..
> > git tree:       https://github.com/google/kasan.git
> > console output: https://syzkaller.appspot.com/x/log.txt?x=139ea05be00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=5d64370c438bc60
> > dashboard link: https://syzkaller.appspot.com/bug?extid=7d42d68643a35f71ac8a
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > patch:          https://syzkaller.appspot.com/x/patch.diff?x=16d52b19e00000
>
> Add a line of debug info.

Hi Hillf,

You need to issue a syz test command if you want your patch to be
tested. See how Qiujun did it just above.

Thanks!

>
> --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> @@ -3374,6 +3374,11 @@ static void hfa384x_int_rxmonitor(struct
>                          skblen - sizeof(struct p80211_caphdr));
>         }
>
> +       if (datalen > WLAN_DATA_MAXLEN) {
> +               pr_debug("%s datalen %u > WLAN_DATA_MAXLEN %u\n", __func__,
> +                                               datalen, WLAN_DATA_MAXLEN);
> +               return;
> +       }
>         skb = dev_alloc_skb(skblen);
>         if (!skb)
>                 return;
>
> --
> You received this message because you are subscribed to the Google Groups "syzkaller-bugs" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to syzkaller-bugs+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/syzkaller-bugs/20200325131309.12792-1-hdanton%40sina.com.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
