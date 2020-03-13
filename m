Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A281840DC
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 07:32:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E831D889CE;
	Fri, 13 Mar 2020 06:32:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pMv-SrF-Wj9c; Fri, 13 Mar 2020 06:32:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2663988810;
	Fri, 13 Mar 2020 06:32:07 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 105BC1BF3B0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 06:32:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F28F788810
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 06:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l1yIdLFSxAbA
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 06:32:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AEB328867D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 06:32:02 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id h17so8970475otn.7
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 23:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oKpRbTznrNEG3vfzqHQgCPbDeOpvNGBelpS+9KudQCY=;
 b=gHR2sYZjNYLVc04fpN1XaEqUNHGYFpM5etqGnAKs+tFkfvhq43cLvpzvOKHd9bKdMn
 JYmGoLpu5pnV9qXi4Nsgejc7lKv80zPgc3PVGKhjbOBu2q+VmGkBfKyy9cWsgflGlYbR
 Z/+aTLBlFheFF5oqD9ZZ5mzjG5r1IY5oTyNSDFoMJptH95T38gppIjRnIkhAMjx6BlmF
 Q4SunpnO7UJfZL4rC5pDQ5RmG42lcB9Uf+Gv5vshL0WR+PctGPQNCpQVl4FE7uQbdEHh
 omHT2k4C+HUIDfGHEzj9M0n93fUpMRX1tNAUbUMFJgm7UsZKocLNoZficr7VTSu5aH71
 ylYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oKpRbTznrNEG3vfzqHQgCPbDeOpvNGBelpS+9KudQCY=;
 b=jomhmT4EUkCSG+w/owUbGZI2xv/DkfBDCx2pCj+g4DGp4zMQ/5DhYvqEnudkcIdMKI
 3pLhGzHGYW+4YsX5KUdLs+ypT982g0gUTFAwlLfrjI/FlMCuz7Q0iafqDz/HZKfce0Bp
 Cji9pTgsIvUadaxOJ7zM7mynPKWO0zwcNx7HHzMtRScN52P0XLgrAbOeKmmjLiiFvG9N
 MhOn3qTrkjRnpvzOhsX7mjtwTAwfNbJ2fOHPubp4uNRUmEbhiWqatWv1bu/48KuzOyGv
 27K0pYiRZWlEKKdY4Wt5JyolxpMN8ID1QuGqEYVuLC7Han2OtU6TfSHFISpqfAC4SLYM
 5ORw==
X-Gm-Message-State: ANhLgQ2FZFKh4mttB0TGE0kDe0x7+IeG1rihDrrNlg7NLTlWS5DOed2U
 kaZVRpUr43LYQffMeh92D0/Kl1YBGw8SGQiy3Iw=
X-Google-Smtp-Source: ADFU+vsFHbOt8b5pTpLevoykR1JEvDQG3RmFnJLQdTSlY9QDaXHjKhf412ZTEvvJPlRtCQi4O30fHk87D21roHWc3uY=
X-Received: by 2002:a9d:4c8f:: with SMTP id m15mr5794395otf.273.1584081121693; 
 Thu, 12 Mar 2020 23:32:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200312090046.26869-1-sergio.paracuellos@gmail.com>
 <cc0c29e6-2984-f4a2-ebb9-3d47fb411ee7@kernel.org>
 <CAMhs-H8czWQNzNp=VbDZj6cTBEyTf1Z_-rt9AodyHi7huVvjdg@mail.gmail.com>
In-Reply-To: <CAMhs-H8czWQNzNp=VbDZj6cTBEyTf1Z_-rt9AodyHi7huVvjdg@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 13 Mar 2020 07:31:50 +0100
Message-ID: <CAMhs-H9DF=8d0Gn5vpqRGbeH-5qu8+pTCiK-i9bbgxfOYWNbuw@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] staging: mt7621-pci: re-do reset boot process
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
Cc: ryder.lee@mediatek.com, Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, weijie.gao@mediatek.com,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi again Greg,

On Fri, Mar 13, 2020 at 6:45 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi Greg,
>
> On Fri, Mar 13, 2020 at 4:51 AM Greg Ungerer <gerg@kernel.org> wrote:
> [snip]
> >
> > I applied the patches to the staging git tree for testing.
> > I have seen a couple of different problems on boot up:
> >
> > ...
> > rt2880-pinmux pinctrl: pcie is already enabled
> > mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> > mt7621-pci 1e140000.pcie: Failed to get GPIO for PCIe1
> > mt7621-pci 1e140000.pcie: Failed to get GPIO for PCIe2
> > gpiod_set_value: invalid GPIO (errorpointer)
> > gpiod_set_value: invalid GPIO (errorpointer)
>
> So the not grabbed gpio's are error pointers instead of NULL. What
> happen if you just
> set them to NULL? Something like:
>
> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c
> b/drivers/staging/mt7621-pci/pci-mt7621.c
> index 6ea284942b6f..03c1f057b29f 100644
> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> @@ -367,8 +367,10 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
>
>         port->gpio_rst = devm_gpiod_get_index(dev, "reset", slot,
>                                               GPIOD_OUT_LOW);
> -       if (IS_ERR(port->gpio_rst))
> +       if (IS_ERR(port->gpio_rst)) {
> +               port->gpio_rst = NULL;
>                 dev_notice(dev, "Failed to get GPIO for PCIe%d\n", slot);
> +       }
>
> Another possibility would be to use 'gpio_is_valid' getting int gpio
> value from descriptor using 'gpio_to_desc' but I think we were mixing
> legacy gpio APIS with the descriptor interface one which sound not
> good.

Maybe just change devm_gpiod_get_index with
devm_gpiod_get_index_optional could be enough to get all of this
working as it is.

-       port->gpio_rst = devm_gpiod_get_index(dev, "reset", slot,
-                                             GPIOD_OUT_LOW);
+       port->gpio_rst = devm_gpiod_get_index_optional(dev, "reset", slot,
+                                                      GPIOD_OUT_LOW);
        if (IS_ERR(port->gpio_rst))

Regards,
    Sergio Paracuellos

>
> > mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> > gpiod_set_value: invalid GPIO (errorpointer)
> > gpiod_set_value: invalid GPIO (errorpointer)
> > mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> > mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> > mt7621-pci 1e140000.pcie: PCIE0 enabled
> > mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> > mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> > pci_bus 0000:00: root bus resource [io  0xffffffff]
> > pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> > pci_bus 0000:00: root bus resource [bus 00-ff]
> > pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
> > pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
> > pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ffff]
> > pci 0000:00:00.0: supports D1
> > pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> > pci 0000:01:00.0: [168c:003c] type 00 class 0x028000
> > pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x001fffff 64bit]
> > pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pref]
> > pci 0000:01:00.0: supports D1 D2
> > pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
> > pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
> > pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff pref]
> > pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
> > pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
> > pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
> > pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
> > pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
> > pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
> > pci 0000:00:00.0: BAR 7: no space for [io  size 0x1000]
> > pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x1000]
> > pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
> > pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
> > pci 0000:00:00.0: PCI bridge to [bus 01]
> > pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
> > pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
> > pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> > pcieport 0000:00:00.0: enabling device (0004 -> 0006)
> > CPU 2 Unable to handle kernel paging request at virtual address fffffff0, epc == 8039c7b0, ra == 804fe128
> > Oops[#1]:
> > CPU: 2 PID: 107 Comm: kworker/2:1 Not tainted 5.6.0-rc3-00180-gc15e7f072288-dirty #2
> > Workqueue: events deferred_probe_work_func
> > $ 0   : 00000000 00000001 820d6984 00000001
> > $ 4   : fffffff0 00000001 00000000 803a0000
> > $ 8   : 00000024 ffffffff 00000001 302e3030
> > $12   : 00000000 8e26fbd8 ffffffff 00000020
> > $16   : 820d6980 820e0250 00000000 8e26fcd0
> > $20   : 820e01e0 809a0000 820e0228 8fd47e10
> > $24   : 00000000 00000020
> > $28   : 8e26e000 8e26fc70 8e26fcf8 804fe128
> > Hi    : 00000125
> > Lo    : 122f2000
> > epc   : 8039c7b0 gpiod_free+0x14/0x6c
> > ra    : 804fe128 mt7621_pci_probe+0x700/0xcd8
> > Status: 1100fc03        KERNEL EXL IE
> > Cause : 00800008 (ExcCode 02)
> > BadVA : fffffff0
> > PrId  : 0001992f (MIPS 1004Kc)
> > Modules linked in:
> > Process kworker/2:1 (pid: 107, threadinfo=(ptrval), task=(ptrval), tls=00000000)
> > Stack : 820e0250 809e2aa0 820d6380 820e0250 820d6980 804fe128 1e160000 00000001
> >          60000000 00000000 f0000002 00000000 00000000 809a0000 8fd47e10 808d63d4
> >          80930000 808d6260 808d0000 808d61fc 808c0000 8fd47e10 808d6208 808d0000
> >          8e26fcd0 8e26fcd0 809e2aa0 809db510 809db510 00000006 00000001 00000000
> >          00000000 00000000 01000000 1e1440ff 00000000 00000000 1e160000 00000000
> >          ...
> > Call Trace:
> > [<8039c7b0>] gpiod_free+0x14/0x6c
> > [<804fe128>] mt7621_pci_probe+0x700/0xcd8
> > [<80402ab8>] platform_drv_probe+0x40/0x94
> > [<80400a74>] really_probe+0x104/0x364
> > [<803feb74>] bus_for_each_drv+0x84/0xdc
> > [<80400924>] __device_attach+0xdc/0x120
> > [<803ffb5c>] bus_probe_device+0xa0/0xbc
> > [<80400124>] deferred_probe_work_func+0x7c/0xbc
> > [<800420e8>] process_one_work+0x230/0x450
> > [<80042638>] worker_thread+0x330/0x5fc
> > [<80048eb0>] kthread+0x12c/0x134
> > [<80007438>] ret_from_kernel_thread+0x14/0x1c
> > Code: 27bdffe8  afb00010  afbf0014 <8c830000> 10600005  00808025  0c0e6efb  00000000  14400007
> >
> > ---[ end trace d9831fec9efd296d ]---
> >
>
> This is to be because the 'gpio_dput' makes internally a gpiod_free in
> gpio's and desc is an error pointer descriptor instead of NULL.
> Expected, looking the previous traces.
>
> >
> >
> > And on another boot:
> >
> > ...
> > rt2880-pinmux pinctrl: pcie is already enabled
> > mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
> > mt7621-pci 1e140000.pcie: Failed to get GPIO for PCIe1
> > mt7621-pci 1e140000.pcie: Failed to get GPIO for PCIe2
> > gpiod_set_value: invalid GPIO (errorpointer)
> > gpiod_set_value: invalid GPIO (errorpointer)
> > mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> > gpiod_set_value: invalid GPIO (errorpointer)
> > gpiod_set_value: invalid GPIO (errorpointer)
> > mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> > mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> > mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> > mt7621-pci 1e140000.pcie: Nothing is connected in virtual bridges. Exiting...
>
> Maybe 100 us is not enough? We should focus first in avoiding the boot
> hangs and the we can play with the
>
> #define PERST_DELAY_US                  100
>
> This series change it from 1000 to 100. Maybe you can try to put
> another value if hangs dissapear...
>
> > CPU 1 Unable to handle kernel paging request at virtual address fffffff0, epc == 8039c7b0, ra == 804fe128
> > Oops[#1]:
> > CPU: 1 PID: 103 Comm: kworker/1:1 Not tainted 5.6.0-rc3-00180-gc15e7f072288-dirty #2
> > Workqueue: events deferred_probe_work_func
> > $ 0   : 00000000 00000001 82051e84 00000001
> > $ 4   : fffffff0 00000001 00000000 803a0000
> > $ 8   : 2e000000 80940000 00000018 000000d6
> > $12   : 6976206e 00000000 00000000 61757472
> > $16   : 82051e80 820d4250 00000000 8fd6dcd0
> > $20   : 820d41e0 820d424c 00000000 809a0000
> > $24   : 00000008 803ef8f4
> > $28   : 8fd6c000 8fd6dc70 808d6280 804fe128
> > Hi    : 00000125
> > Lo    : 122f2000
> > epc   : 8039c7b0 gpiod_free+0x14/0x6c
> > ra    : 804fe128 mt7621_pci_probe+0x700/0xcd8
> > Status: 1100fc03        KERNEL EXL IE
> > Cause : 00800008 (ExcCode 02)
> > BadVA : fffffff0
> > PrId  : 0001992f (MIPS 1004Kc)
> > Modules linked in:
> > Process kworker/1:1 (pid: 103, threadinfo=(ptrval), task=(ptrval), tls=00000000)
> > Stack : 8fd6dc90 808d62a8 82051880 820d4250 82051e80 804fe128 809d0000 00000001
> >          00000001 00000001 00000000 00000001 00000000 8fd47e10 8fd47e10 808d63d4
> >          80930000 808d6260 808d0000 808d61fc 808c0000 8fd47e10 808d6208 808d0000
> >          8fd6dcd0 8fd6dcd0 1e140000 1e1400ff 809e2af8 00000200 00000000 00000000
> >          00000000 00000000 1e144000 1e1440ff 809e2af8 00000200 00000000 00000000
> >          ...
> > Call Trace:
> > [<8039c7b0>] gpiod_free+0x14/0x6c
> > [<804fe128>] mt7621_pci_probe+0x700/0xcd8
> > [<80402ab8>] platform_drv_probe+0x40/0x94
> > [<80400a74>] really_probe+0x104/0x364
> > [<803feb74>] bus_for_each_drv+0x84/0xdc
> > [<80400924>] __device_attach+0xdc/0x120
> > [<803ffb5c>] bus_probe_device+0xa0/0xbc
> > [<80400124>] deferred_probe_work_func+0x7c/0xbc
> > [<800420e8>] process_one_work+0x230/0x450
> > [<80042638>] worker_thread+0x330/0x5fc
> > [<80048eb0>] kthread+0x12c/0x134
> > [<80007438>] ret_from_kernel_thread+0x14/0x1c
> > Code: 27bdffe8  afb00010  afbf0014 <8c830000> 10600005  00808025  0c0e6efb  00000000  14400007
> >
> > ---[ end trace 5affc5903364c81f ]---
> >
> Again, the 'gpio_dput' makes internally a gpiod_free in gpio's and
> desc is an error pointer descriptor instead of NULL.
>
> >
> > Regards
> > Greg
>
> Thanks for testing this series and letting me know.
>
> Best regards,
>     Sergio Paracuellos
> >
> >
> > > Hope this helps.
> > >
> > > Changes in v3:
> > >      * Avoid to fail if gpio descriptor fails on get.
> > >      * re-do PATCH 1 commit message.
> > >      * Take into account gpio low polarity on request and assert and deassert.
> > >      * Review error path of driver to properly release gpio's resources.
> > >
> > > Changes in v2:
> > >      * restore configuration for pers mode to GPIO.
> > >      * Avoid to read FTS_NUM register in reset state.
> > >      * Release gpio's patch added
> > >
> > > Best regards,
> > >      Sergio Paracuellos
> > >
> > > Sergio Paracuellos (5):
> > >    staging: mt7621-pci: use gpios for properly reset
> > >    staging: mt7621-pci: change value for 'PERST_DELAY_US'
> > >    staging: mt7621-dts: make use of 'reset-gpios' property for pci
> > >    staging: mt7621-pci: bindings: update doc accordly to last changes
> > >    staging: mt7621-pci: release gpios after pci initialization
> > >
> > >   drivers/staging/mt7621-dts/mt7621.dtsi        |  11 +-
> > >   .../mt7621-pci/mediatek,mt7621-pci.txt        |   7 +-
> > >   drivers/staging/mt7621-pci/pci-mt7621.c       | 107 +++++++++++-------
> > >   3 files changed, 80 insertions(+), 45 deletions(-)
> > >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
