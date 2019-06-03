Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C13327FF
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 07:35:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 53F1087807;
	Mon,  3 Jun 2019 05:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WTz+4OZtLTUS; Mon,  3 Jun 2019 05:35:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9EF7824BB;
	Mon,  3 Jun 2019 05:35:13 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3756B1BF578
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 05:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 34BA0824BE
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 05:35:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TBr6R5-nSAHT
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 05:35:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E7326824BB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 05:35:10 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id l17so14943215otq.1
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 02 Jun 2019 22:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3p3KSdqVpBT2giQp0Tqp/I02lRBxMwZbVILl16WPu8E=;
 b=AjvqmJkWwPBS3wMmm3DOCJxfCGuQj0rRB9LFY0QmNQzl0lVYQR0PJQQPwf9iMm2tkG
 +PnWIj2tY2G0kdUnRJ0d6c8kL8oH3wihxP6hgoeRaYKQatASUMeJt1x2cMKbyFRPOZ4t
 mvhxarClh06+r6TRcqYJnxN9ZzhDfPI0wdpaXW/JQa7z0g5zv9VtQW+t5+8rn4NXfLn8
 pZR3kSVeN6ZinTw5sWXu8GSulN2AzSj4GNS8FhwpdeRmZxoN6BgcyTj+r3oSpgSt5tnN
 Dfpg4ohcexfLZNcgWIlw4B111Fs/LwfEQ6zVO5Sa3IAz8E/b4+E42PB1WpKyIgZhV18t
 it6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3p3KSdqVpBT2giQp0Tqp/I02lRBxMwZbVILl16WPu8E=;
 b=oRG2y/lDc6EIPdrvoR/oFBYemxqFh8rJ854CTsrUfvcUtflk+nqWCH/EHardWZaNiQ
 zG8/V/PnQdR2cnol84wxht2W2lIOtr+mBXifrRKQs03+q8JHdJX2tiQJd2oCfOtGgWDx
 y5uSqJOhpmPf8L4ySpFcJVWhQb7j7F1YxJ4LxSGnhhvvGFWgo5ZPUChhluvApa9mskne
 u8gptvjfcTrU+zFvSyhtGt3wogmEDhLzrkkL1RL5F/VzxyBLsNcJuXPU0mt6szUmCIeD
 sCHtiWcHyNAFS76ygRXY5kxlcjYiRGq1NdT/yBfXtUZkZq33zqOpjEjqDD6FXlPPq3wC
 aYfQ==
X-Gm-Message-State: APjAAAXkCR3oFonXHyXpEjtVX5UvLPxLjXF6P5voqMoh4KZlyV9MOG3K
 VrYBGqmAUIjD92zE/ahAhyK5fTQKhZ8LiLaB3qE=
X-Google-Smtp-Source: APXvYqyBS26ycsYpCYn/BBl3WlfCAy4eUrTnD3GDhDYc3MzD6y+veVVr4800vG1D4fCVOF7yRi1sTgEKoX4rQJ5ARuk=
X-Received: by 2002:a9d:12a7:: with SMTP id g36mr1256079otg.310.1559540110147; 
 Sun, 02 Jun 2019 22:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
 <5a7dc59b-f9ef-beab-7221-231f64716d5a@kernel.org>
 <CAMhs-H-8EQPPy0vMFCG-PKu3RLz4_d0ucO6bCgMCfMuD7ZYRSg@mail.gmail.com>
 <a2f6ee9c-dc4e-a7e7-8723-880a3472e9ba@kernel.org>
 <CAMhs-H8der72iXY0NFhXLUyTHvsBZ3t5VUagfgiO4CwuXhAXKw@mail.gmail.com>
 <9224bde1-ea67-db9f-570f-178bbc8e6b40@kernel.org>
 <CAMhs-H8vutK=KLHVGwpvY2bmx3khpjW5U=2jC=-pEV_HLZP5-Q@mail.gmail.com>
 <4aa016a4-9fac-5273-0f7f-d372f0de34ba@kernel.org>
 <CAMhs-H9M8D2nWibZqKeBEZ8y+E38iTRk7sB28vHb0-P5tU8+EA@mail.gmail.com>
 <9e24fe2f-42df-7b1f-2cd5-82d3f82f688b@kernel.org>
 <CAMhs-H-GtrJZKx2Y3GhoXn9O=C4xx1QAeQ1CYt51LwrFY7y1sQ@mail.gmail.com>
 <7335025e-372d-c5bd-80ee-75b3e0c61249@kernel.org>
 <CAMhs-H_zFUecOu95U-xekQ3Da5psbc6YdQttosCJbZi5vetKSw@mail.gmail.com>
 <790e5f32-5c70-e277-46ad-7956aaf32af3@kernel.org>
 <ddd690f9-a2d6-5fbf-260e-9e535d81b3e6@kernel.org>
 <CAMhs-H-x_O21iq=Xm6LDFTTR4xVS4NrN9ePiCLsLpnxVQXieKA@mail.gmail.com>
 <2fb10b81-d0d4-b2bc-bd85-b5a64bd5df8e@kernel.org>
In-Reply-To: <2fb10b81-d0d4-b2bc-bd85-b5a64bd5df8e@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 3 Jun 2019 07:34:59 +0200
Message-ID: <CAMhs-H-tGp43kRzd43FARxvxGNihKoqE6fgHJfYZFVYryjs13w@mail.gmail.com>
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
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
Cc: NeilBrown <neil@brown.name>, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

No luck for us also today :-(

On Mon, Jun 3, 2019 at 3:26 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 31/5/19 10:37 pm, Sergio Paracuellos wrote:
> > On Thu, May 30, 2019 at 3:46 AM Greg Ungerer <gerg@kernel.org> wrote:
> >> On 30/5/19 10:44 am, Greg Ungerer wrote:
> >>> On 29/5/19 6:08 pm, Sergio Paracuellos wrote:
> >>> [snip]
> >>>> I have added gpio consumer stuff and reorder a bit the code to be more
> >>>> similar to 4.20.
> >>>>
> >>>> I attach the patch. I have not try it to compile it, because my normal
> >>>> environment is in another
> >>>> computer and I am in the middle of moving from my current house and
> >>>> don't have access to it, sorry.
> >>>> So, please try this and let's see what happens.
> >>>
> >>> No problem, thanks for the patch.
> >>>
> >>> Unfortunately always locks up on kernel boot:
> >>>
> >>>     ...
> >>>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >>>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >>>     mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >>>     mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> >>>     mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >>>     mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>>
> >>> That was original linux-5.1 patched with your attached patch.
> >>>
> >>> I'll try and dig down into that further today and get some
> >>> feedback on where it is failing.
> >>
> >> The first problem I see is that the GPIO MODE register bits for
> >> PERST_MODE are set to 00, so in "PCIe Reset" mode. If I hack in
> >> a register update for that with:
> >>
> >>       /* Force PERST PCIe reset into GPIO mode */
> >>       *(unsigned int *)(0xbe000060) |=  BIT(10);
> >
> > I have set GPIO mode for this in the new attached patch.
> >
> >>
> >> I do that at the start of mt7621_pcie_init_ports(). With that in
> >> place I get further:
> >>
> >>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >>     mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >>     mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >>     mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>     mt7621-pci 1e140000.pcie: PCIE0 enabled
> >>     mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> >>     mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> >>     pci_bus 0000:00: root bus resource [io  0xffffffff]
> >>     pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> >>     pci_bus 0000:00: root bus resource [bus 00-ff]
> >>     pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> >>
> >> It hangs there...
> >
> > I had review the boot order is working for you in version 4.20 and the
> > order with the new patch applied. There were
> > only one difference, the place where interrupt bits are set. I have
> > changed that also in the new attached patch.
> >
> > For me, the order now and how the different boot steps are being done
> > in v4.20 are the same.
> >
> > One other thing I don't really understand why is needed but is in the
> > v4.20 code are this two lines:
> >
> > pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
> > pcie_write(pcie, RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);
> >
> > These are added also in the current patch.
>
> Tried out this latest patch. Unfortunately no good news.
>
> Boot gets through the PCI bus scan, but does not find any devices:
>
>    mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>    mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>    mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>    mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
>    mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>    mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>    mt7621-pci 1e140000.pcie: Nothing is connected in virtual bridges. Exiting...



>
> And now in the completely weird and un-expected department the boot
> continues on and appears to hang for me when it tries to attach a
> UBI NAND flash partition. It hangs there for about a minute or so
> and then dumps complaing about flash problems:
>
>    ubi0: attaching mtd3
>    ubi0: scanning is finished
>    ubi0: empty MTD device detected
>    ubi0 warning: do_sync_erase: error -5 while erasing PEB 0, retry
>    ubi0 warning: do_sync_erase: error -5 while erasing PEB 0, retry
>    ubi0 warning: do_sync_erase: error -5 while erasing PEB 0, retry
>    ubi0 error: do_sync_erase: cannot erase PEB 0, error -5
>    CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.1.0-ac0 #59
>    Stack : 000000f0 00000000 00000000 808e0000 8ebf2000 80070584 808285b8 0000000b
>          00000038 00000000 80827e00 8fc23b1c 80870000 00000001 8fc23ab0 aeddef9b
>          00000000 00000000 80920000 00000000 00000000 808e7693 000000f1 00000000
>          203a6d6d 00000000 00000000 00000000 80870000 00000000 00000000 8080a01c
>          00000000 80870000 8ebf1014 8ebd2000 00000018 80361d24 00000004 808e0004
>          ...
>    Call Trace:
>    [<8000cfc0>] show_stack+0x94/0x12c
>    [<806e553c>] dump_stack+0x8c/0xd0
>    [<803c73c8>] do_sync_erase+0xf4/0x208
>    [<803c7694>] ubi_io_sync_erase+0x1b8/0x304
>    [<803cbc90>] ubi_early_get_peb+0x148/0x1dc
>    [<803ba930>] create_vtbl+0xb4/0x29c
>    [<803bafc8>] ubi_read_volume_table+0x27c/0xae4
>    [<803cc294>] ubi_attach+0x570/0x15dc
>    [<803bf2a0>] ubi_attach_mtd_dev+0x5b0/0xbec
>    [<808b0488>] ubi_init+0x1c0/0x274
>    [<800015f4>] do_one_initcall+0x50/0x1ac
>    [<80897e98>] kernel_init_freeable+0x184/0x26c
>    [<807035b4>] kernel_init+0x14/0x110
>    [<800071f8>] ret_from_kernel_thread+0x14/0x1c
>
> I tried booting and running this several times, I always get the same
> long hang and dump from USB/NAND. If I copy in the one linux-4.20
> file, drivers/staging/mt7621-pci/pci-mt7621.c, then the system
> boots, scans and finds PCI devices, and does not hang/dump on
> UBI/NAND flash setup.

Can you try to read and set BIT(10) instead of write it directly?:

Instead of:

rt_sysc_w32(PERST_MODE_GPIO, MT7621_GPIO_MODE);

Do:

u32 val = rt_sysc_r32(MT7621_GPIO_MODE);
val |= PERST_MODE_GPIO;
rt_sysc_w32(val, MT7621_GPIO_MODE);


>
> I'll try and dig into it some time today and get you some feedback.

No other changes with the previous one, just the order of where
interrupts bits are set up in
the same place of 4.20.

Can you point me out to the link to your board of something to check
if I can acquire one and test
in my side?

>
> Regards
> Greg

Best regards,
    Sergio Paracuellos
>
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
