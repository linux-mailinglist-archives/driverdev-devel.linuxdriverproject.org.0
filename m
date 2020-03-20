Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB4318D128
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 15:38:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 64DFC87969;
	Fri, 20 Mar 2020 14:38:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IbGNIruRKihZ; Fri, 20 Mar 2020 14:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D9E32878DB;
	Fri, 20 Mar 2020 14:38:45 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 010C81BF383
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 14:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EB3F1878D6
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 14:38:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K8-4RldhUBCd
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 14:38:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A632A878B7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 14:38:42 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id k8so6732918oik.2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 07:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=imRqWwyyKPIr0ZBuux39BVqpYd3q+1sP7x9fac+1S+w=;
 b=TWS1sq85IPk7+qahLq/Xh4o4xQio4uXWmwD8fkfaRAG2QQSYpYHQ95d1DyB8cFpKin
 2FOGeNck6S51A4PFQl1EXOhi5visrWVVfkMvPd8YMc7swTf48WdR0BkhBY9ufZ6i/qm+
 1Jct3K1WyTrIrYgfUhYkdu7lZPYI1mw6Y3jQBJviqk+kAXRXMtpMuXEjtRi21QEx51kt
 ljuUvCjhbkOdGP+s/4rPCxglAsmFhMKNTaLAQ5sJDV9OtzylGZvHvx0RkraR05/0EK5S
 lGlXQgHlL45FcRPXH3DpVJcWkE89uGrQkBJjfnY/9YkxNYUEUmfssV0j6Fu7a+7QO49w
 y7Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=imRqWwyyKPIr0ZBuux39BVqpYd3q+1sP7x9fac+1S+w=;
 b=j661oNaVeVXpv7PMq2HeZ4tSARBTsTK8qHMFgVB9xUkJU0WGDkEfgu8K+1a192kvUs
 iN8eYteGqr9iKkzNAZ8c7p3k96EtuMtLL7bPWqtw1+7gVg4zaX3ELIhP7B/O/v8uehld
 30mhE9uphdZ+OzRWKkTJbNOyEbxuRzUMOpG43HWcyS/IB1BQm8PQmlzqy83vyNAOLp3y
 S6Ozvuc2tvT2YGlCW99zX4qLM4wPH6QZcD7OjAWPM5caL6lVb5gUIvYh+ZYtL7ty8aqo
 /6q3ltelNgU5jfwqFwzn2tvjUvqRcbXA4fgdXOKHNJAyeNnF2f2q/frsnT/NEl2Q5Zvt
 NHBA==
X-Gm-Message-State: ANhLgQ3PcRPJZyyDOKKjgF0r+lbiWb+y+GrCdRhpKwzEpIQIQnWfrYOp
 o6dy7K7VKdPn/Jt9SIZ5Ze9AUII+TSoYNhAMa9E=
X-Google-Smtp-Source: ADFU+vuUMohsNQJ5elsDXkSJot6GkbnyEu5UhjmTA0xDZcQJl5S5HtyBwbxBGsmmvAD3Hwe3Hpt2v0x2eseRjr+QHRU=
X-Received: by 2002:a54:478d:: with SMTP id o13mr6876897oic.166.1584715121734; 
 Fri, 20 Mar 2020 07:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200319161416.19033-1-sergio.paracuellos@gmail.com>
 <76db8f45-2a78-fb40-0c0d-4ff17a224e1b@kernel.org>
In-Reply-To: <76db8f45-2a78-fb40-0c0d-4ff17a224e1b@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 20 Mar 2020 15:38:29 +0100
Message-ID: <CAMhs-H8c-cxBL9_PCe2QPCvq_2HTWW1hEC6A6AVHU=pd2NmT=g@mail.gmail.com>
Subject: Re: [PATCH] staging: mt7621-pci: don't return if get gpio fails
To: Greg Ungerer <gerg@kernel.org>
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
Cc: NeilBrown <neil@brown.name>, Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Fri, Mar 20, 2020 at 3:30 PM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 20/3/20 2:14 am, Sergio Paracuellos wrote:
> > In some platforms gpio's are not used for reset but
> > for other purposes. Because of that when we try to
> > get them are valid gpio's but are already assigned
> > to do other function. To avoid those kind of problems
> > in those platforms just notice the fail in the kernel
> > but continue doing normal boot.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >   drivers/staging/mt7621-pci/pci-mt7621.c | 6 ++----
> >   1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
> > index 2a01645162a5..d6fc8a08c9bd 100644
> > --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> > +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> > @@ -363,10 +363,8 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
> >
> >       port->gpio_rst = devm_gpiod_get_index_optional(dev, "reset", slot,
> >                                                      GPIOD_OUT_LOW);
> > -     if (IS_ERR(port->gpio_rst)) {
> > -             dev_err(dev, "Failed to get GPIO for PCIe%d\n", slot);
> > -             return PTR_ERR(port->gpio_rst);
> > -     }
> > +     if (IS_ERR(port->gpio_rst))
> > +             dev_notice(dev, "Failed to get GPIO for PCIe%d\n", slot);
> >
> >       port->slot = slot;
> >       port->pcie = pcie;
>
> Even with this fix in place I still get a dump on boot:
>
> ...
> rt2880-pinmux pinctrl: pcie is already enabled
> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> mt7621-pci 1e140000.pcie: Failed to get GPIO for PCIe1
> mt7621-pci 1e140000.pcie: Failed to get GPIO for PCIe2
> gpiod_set_value: invalid GPIO (errorpointer)
> gpiod_set_value: invalid GPIO (errorpointer)
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> gpiod_set_value: invalid GPIO (errorpointer)
> gpiod_set_value: invalid GPIO (errorpointer)
> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: PCIE0 enabled
> mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> pci_bus 0000:00: root bus resource [io  0xffffffff]
> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> pci_bus 0000:00: root bus resource [bus 00-ff]
> pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
> pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
> pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ffff]
> pci 0000:00:00.0: supports D1
> pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> pci 0000:01:00.0: [168c:003c] type 00 class 0x028000
> pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x001fffff 64bit]
> pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pref]
> pci 0000:01:00.0: supports D1 D2
> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
> pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
> pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff pref]
> pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
> pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
> pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
> pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
> pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
> pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
> pci 0000:00:00.0: BAR 7: no space for [io  size 0x1000]
> pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x1000]
> pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
> pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
> pci 0000:00:00.0: PCI bridge to [bus 01]
> pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
> pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
> pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> pcieport 0000:00:00.0: enabling device (0004 -> 0006)
> CPU 1 Unable to handle kernel paging request at virtual address fffffff0, epc == 8039c7b0, ra == 804fe0a0
> Oops[#1]:
> CPU: 1 PID: 103 Comm: kworker/1:1 Not tainted 5.6.0-rc3-00180-gc15e7f072288-dirty #5
> Workqueue: events deferred_probe_work_func
> $ 0   : 00000000 00000001 82051e84 00000001
> $ 4   : fffffff0 00000001 00000000 803a0000
> $ 8   : 00000024 ffffffff 00000001 302e3030
> $12   : 00000000 8fd6dbd8 ffffffff 00000020
> $16   : 82051e80 820d4250 00000000 8fd6dcd0
> $20   : 820d41e0 809a0000 820d4228 8fd47e10
> $24   : 00000000 00000020
> $28   : 8fd6c000 8fd6dc70 8fd6dcf8 804fe0a0
> Hi    : 00000125
> Lo    : 122f2000
> epc   : 8039c7b0 gpiod_free+0x14/0x6c
> ra    : 804fe0a0 mt7621_pci_probe+0x678/0xc68
> Status: 1100fc03        KERNEL EXL IE
> Cause : 00800008 (ExcCode 02)
> BadVA : fffffff0
> PrId  : 0001992f (MIPS 1004Kc)
> Modules linked in:
> Process kworker/1:1 (pid: 103, threadinfo=(ptrval), task=(ptrval), tls=00000000)
> Stack : 820d4250 809e2aa0 82051880 820d4250 82051e80 804fe0a0 1e160000 00000001
>          60000000 00000000 f0000002 00000000 00000000 809a0000 8fd47e10 808d63d4
>          80930000 808d6260 808d0000 808d61fc 808c0000 8fd47e10 808d6208 808d0000
>          8fd6dcd0 8fd6dcd0 809e2aa0 809db510 809db510 00000006 00000001 00000000
>          00000000 00000000 01000000 1e1440ff 00000000 00000000 1e160000 00000000
>          ...
> Call Trace:
> [<8039c7b0>] gpiod_free+0x14/0x6c
> [<804fe0a0>] mt7621_pci_probe+0x678/0xc68
> [<80402ab8>] platform_drv_probe+0x40/0x94
> [<80400a74>] really_probe+0x104/0x364
> [<803feb74>] bus_for_each_drv+0x84/0xdc
> [<80400924>] __device_attach+0xdc/0x120
> [<803ffb5c>] bus_probe_device+0xa0/0xbc
> [<80400124>] deferred_probe_work_func+0x7c/0xbc
> [<800420e8>] process_one_work+0x230/0x450
> [<80042638>] worker_thread+0x330/0x5fc
> [<80048eb0>] kthread+0x12c/0x134
> [<80007438>] ret_from_kernel_thread+0x14/0x1c
> Code: 27bdffe8  afb00010  afbf0014 <8c830000> 10600005  00808025  0c0e6efb  00000000  14400007
>
> ---[ end trace b050393bd02cbb28 ]---
>
>
> If however I remove the gpio 7 and 8 reset entries from the devicetree then I can boot up.
> I see two cases on boot, one successfully probes the PCI bus, and seems to work:
>
> ...
> rt2880-pinmux pinctrl: pcie is already enabled
> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: PCIE0 enabled
> mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> pci_bus 0000:00: root bus resource [io  0xffffffff]
> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> pci_bus 0000:00: root bus resource [bus 00-ff]
> pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
> pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
> pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ffff]
> pci 0000:00:00.0: supports D1
> pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> pci 0000:01:00.0: [168c:003c] type 00 class 0x028000
> pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x001fffff 64bit]
> pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pref]
> pci 0000:01:00.0: supports D1 D2
> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
> pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
> pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff pref]
> pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
> pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
> pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
> pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
> pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
> pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
> pci 0000:00:00.0: BAR 7: no space for [io  size 0x1000]
> pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x1000]
> pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
> pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
> pci 0000:00:00.0: PCI bridge to [bus 01]
> pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
> pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
> pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> pcieport 0000:00:00.0: enabling device (0004 -> 0006)
> ...
>
> The other case does not probe successfully (but still boots up all the way):
>
> ...
> rt2880-pinmux pinctrl: pcie is already enabled
> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: Nothing is connected in virtual bridges. Exiting..
> ...
>
> It is probably 50:50 on any boot whether it will probe pci successfully or
> fail to probe it.
>
> BTW, this is with the patch here applied:
> http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142472.html

Yes this is the behaviour I was talking about in this series:

http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142520.html

These patches have been already added to staging-testing and should
work and found properly ports also for you.

>
> Regards
> Greg

Let me know any issue you might find.

Best regards,
     Sergio Paracuellos


>
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
