Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C243396D
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 21:59:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 76FC2844CD;
	Mon,  3 Jun 2019 19:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GzdzBZ8fA2wK; Mon,  3 Jun 2019 19:59:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0DBB58462F;
	Mon,  3 Jun 2019 19:59:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A49C1BF23F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 19:59:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 87374857D6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 19:59:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v0Rq8YCt5OXf
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 19:59:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f51.google.com (mail-yw1-f51.google.com
 [209.85.161.51])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6364285656
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 19:59:42 +0000 (UTC)
Received: by mail-yw1-f51.google.com with SMTP id u134so1058650ywf.6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 03 Jun 2019 12:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m8mLznTBcxjnY98a0plf+7wAaCjSlyxmubAQQlh2Q3g=;
 b=UNua74+ZaKDZOe4YsEyynGqbYTCVv6WM5A2A9eRNP299FJ19KVUr5M+PvHkyjb9LRL
 rUGpEPbP+MfFnPDJTyWRD95tOiGDrEZlOuMWVc4shpMeq1+XSsbJqd4DCfY5HF1TBnGG
 xiDGGjHGH1yDp8zAykdNl7AscpyVWVBrjg9aXMwTU4a3n6vIwvQ+ebR1yGTo6TlvY5nz
 zIfwPdiLeCfMOEiNlGQbTDvdhPIYPDm6h0KNKMaDQPDEcjfRRMzZ8kSYYF8CmeDtAbV5
 Yxm64zphspZeTxDT5sdATT5g8OZQEzhMEvepEz2JXHluT2zQySkiatxoyFPZKr6+44m8
 P8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m8mLznTBcxjnY98a0plf+7wAaCjSlyxmubAQQlh2Q3g=;
 b=WMZm2LaonAtbnnHIFttuYDMf7XV0HW63ZbQPw0Cx3MGdY5obaXs1lLN1DtB1O20uqB
 1dway4iePPZo4nCPjr49pKci9/ZrXXeAflGaF6aDd68SZGauajDjBG4E7rFwQX2zbG8n
 V9HORCvw16JC0DzvJ/Ivc1TB32et5pkr2zji6AhPB0rstFvWzeWfj4ozjF9Qn39OKW8J
 fsGOaUf7484PE/PHgYddrMAGgIYpwDgk6/qGkpJZz0fn5imfntGMxrjp6Sy5d34KMfC1
 8vIX/JLO4XWncwCPSTkuYWSQ98/Ev/uiK+68Ptp7K9SPNL6+f16F+RValsg8TE0CF/Ym
 yt4Q==
X-Gm-Message-State: APjAAAWqcPvqbLryFGJVufpS5nKcJVx5dsKUIbLYQFrrF2ccGo8H/nN5
 z86wbu5d/YcFiGKgq03W1q/CaH/zARdkQUoqVew=
X-Google-Smtp-Source: APXvYqxUuItqufty0ff91aPDyCkaj6GP0hFxWTYBdJlyJ1LigaIwvEFV9/HfjuuHIVEtj7HRQzNVMjCIzuhu0aGfU5A=
X-Received: by 2002:a81:5ec3:: with SMTP id
 s186mr15769749ywb.308.1559591981379; 
 Mon, 03 Jun 2019 12:59:41 -0700 (PDT)
MIME-Version: 1.0
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
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
 <CAMhs-H-tGp43kRzd43FARxvxGNihKoqE6fgHJfYZFVYryjs13w@mail.gmail.com>
 <9cef602b-5446-b14e-e22a-cb6f23a26598@kernel.org>
In-Reply-To: <9cef602b-5446-b14e-e22a-cb6f23a26598@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Mon, 3 Jun 2019 21:59:06 +0200
Message-ID: <CAMhs-H_z-8mFrYHPVOPhRRn1P9OXvjSf0jssodqOLs8AQQE+AA@mail.gmail.com>
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Greg Ungerer <gerg@kernel.org>
Content-Type: multipart/mixed; boundary="0000000000000b975f058a70cef4"
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
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--0000000000000b975f058a70cef4
Content-Type: text/plain; charset="UTF-8"

Hi Greg,

On Mon, Jun 3, 2019 at 2:32 PM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 3/6/19 3:34 pm, Sergio Paracuellos wrote:
> > On Mon, Jun 3, 2019 at 3:26 AM Greg Ungerer <gerg@kernel.org> wrote:
> >> On 31/5/19 10:37 pm, Sergio Paracuellos wrote:
> >>> On Thu, May 30, 2019 at 3:46 AM Greg Ungerer <gerg@kernel.org> wrote:
> >>>> On 30/5/19 10:44 am, Greg Ungerer wrote:
> >>>>> On 29/5/19 6:08 pm, Sergio Paracuellos wrote:
> >>>>> [snip]
> >>>>>> I have added gpio consumer stuff and reorder a bit the code to be more
> >>>>>> similar to 4.20.
> >>>>>>
> >>>>>> I attach the patch. I have not try it to compile it, because my normal
> >>>>>> environment is in another
> >>>>>> computer and I am in the middle of moving from my current house and
> >>>>>> don't have access to it, sorry.
> >>>>>> So, please try this and let's see what happens.
> >>>>>
> >>>>> No problem, thanks for the patch.
> >>>>>
> >>>>> Unfortunately always locks up on kernel boot:
> >>>>>
> >>>>>      ...
> >>>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >>>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >>>>>      mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >>>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >>>>>      mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> >>>>>      mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >>>>>      mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>>>>
> >>>>> That was original linux-5.1 patched with your attached patch.
> >>>>>
> >>>>> I'll try and dig down into that further today and get some
> >>>>> feedback on where it is failing.
> >>>>
> >>>> The first problem I see is that the GPIO MODE register bits for
> >>>> PERST_MODE are set to 00, so in "PCIe Reset" mode. If I hack in
> >>>> a register update for that with:
> >>>>
> >>>>        /* Force PERST PCIe reset into GPIO mode */
> >>>>        *(unsigned int *)(0xbe000060) |=  BIT(10);
> >>>
> >>> I have set GPIO mode for this in the new attached patch.
> >>>
> >>>>
> >>>> I do that at the start of mt7621_pcie_init_ports(). With that in
> >>>> place I get further:
> >>>>
> >>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >>>>      mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >>>>      mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >>>>      mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>>>      mt7621-pci 1e140000.pcie: PCIE0 enabled
> >>>>      mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> >>>>      mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> >>>>      pci_bus 0000:00: root bus resource [io  0xffffffff]
> >>>>      pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> >>>>      pci_bus 0000:00: root bus resource [bus 00-ff]
> >>>>      pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> >>>>
> >>>> It hangs there...
> >>>
> >>> I had review the boot order is working for you in version 4.20 and the
> >>> order with the new patch applied. There were
> >>> only one difference, the place where interrupt bits are set. I have
> >>> changed that also in the new attached patch.
> >>>
> >>> For me, the order now and how the different boot steps are being done
> >>> in v4.20 are the same.
> >>>
> >>> One other thing I don't really understand why is needed but is in the
> >>> v4.20 code are this two lines:
> >>>
> >>> pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
> >>> pcie_write(pcie, RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);
> >>>
> >>> These are added also in the current patch.
> >>
> >> Tried out this latest patch. Unfortunately no good news.
> >>
> >> Boot gets through the PCI bus scan, but does not find any devices:
> >>
> >>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >>     mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >>     mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> >>     mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >>     mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>     mt7621-pci 1e140000.pcie: Nothing is connected in virtual bridges. Exiting...
> >
> >
> >
> >>
> >> And now in the completely weird and un-expected department the boot
> >> continues on and appears to hang for me when it tries to attach a
> >> UBI NAND flash partition. It hangs there for about a minute or so
> >> and then dumps complaing about flash problems:
> >>
> >>     ubi0: attaching mtd3
> >>     ubi0: scanning is finished
> >>     ubi0: empty MTD device detected
> >>     ubi0 warning: do_sync_erase: error -5 while erasing PEB 0, retry
> >>     ubi0 warning: do_sync_erase: error -5 while erasing PEB 0, retry
> >>     ubi0 warning: do_sync_erase: error -5 while erasing PEB 0, retry
> >>     ubi0 error: do_sync_erase: cannot erase PEB 0, error -5
> >>     CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.1.0-ac0 #59
> >>     Stack : 000000f0 00000000 00000000 808e0000 8ebf2000 80070584 808285b8 0000000b
> >>           00000038 00000000 80827e00 8fc23b1c 80870000 00000001 8fc23ab0 aeddef9b
> >>           00000000 00000000 80920000 00000000 00000000 808e7693 000000f1 00000000
> >>           203a6d6d 00000000 00000000 00000000 80870000 00000000 00000000 8080a01c
> >>           00000000 80870000 8ebf1014 8ebd2000 00000018 80361d24 00000004 808e0004
> >>           ...
> >>     Call Trace:
> >>     [<8000cfc0>] show_stack+0x94/0x12c
> >>     [<806e553c>] dump_stack+0x8c/0xd0
> >>     [<803c73c8>] do_sync_erase+0xf4/0x208
> >>     [<803c7694>] ubi_io_sync_erase+0x1b8/0x304
> >>     [<803cbc90>] ubi_early_get_peb+0x148/0x1dc
> >>     [<803ba930>] create_vtbl+0xb4/0x29c
> >>     [<803bafc8>] ubi_read_volume_table+0x27c/0xae4
> >>     [<803cc294>] ubi_attach+0x570/0x15dc
> >>     [<803bf2a0>] ubi_attach_mtd_dev+0x5b0/0xbec
> >>     [<808b0488>] ubi_init+0x1c0/0x274
> >>     [<800015f4>] do_one_initcall+0x50/0x1ac
> >>     [<80897e98>] kernel_init_freeable+0x184/0x26c
> >>     [<807035b4>] kernel_init+0x14/0x110
> >>     [<800071f8>] ret_from_kernel_thread+0x14/0x1c
> >>
> >> I tried booting and running this several times, I always get the same
> >> long hang and dump from USB/NAND. If I copy in the one linux-4.20
> >> file, drivers/staging/mt7621-pci/pci-mt7621.c, then the system
> >> boots, scans and finds PCI devices, and does not hang/dump on
> >> UBI/NAND flash setup.
> >
> > Can you try to read and set BIT(10) instead of write it directly?:
> >
> > Instead of:
> >
> > rt_sysc_w32(PERST_MODE_GPIO, MT7621_GPIO_MODE);
>
> Oh, yeah, that is definitely not going to work. There is a bunch of
> other GPIO control bits in there for other hardware blocks. Would
> explain the broken NAND flash behavior...

Yes, my bad here. Sometimes is better to go to sleep :)).

>
>
> > Do:
> >
> > u32 val = rt_sysc_r32(MT7621_GPIO_MODE);
> > val |= PERST_MODE_GPIO;
> > rt_sysc_w32(val, MT7621_GPIO_MODE);
>
> Much better result with that. Though ultimately it should clear
> bits 10 and 11 (both are PERST_MODE bits) and then OR in BIT(10).

Ok, so the following should do the trick:

rt_sysc_m32(PERST_MODE_MASK, PERST_MODE_GPIO, MT7621_GPIO_MODE);

with PERST_MODE_MASK defined as:

#define PERST_MODE_MASK         GENMASK(11, 10)

(patch attached with this changes)

It would be also good to know what happen if you comment the following lines:

pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
pcie_write(pcie, RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);

Are they really needed?

>
> Boot is successful and now shows:
>
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> mt7621-pci 1e140000.pcie: PCIE0 enabled
> mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> pci_bus 0000:00: root bus resource [io  0xffffffff]
> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> pci_bus 0000:00: root bus resource [bus 00-ff]
> pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
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
>
>
> So that is really good. Still now just some problem with the IRQ.

No idea at all why irq is failing there. The driver code related with
irq is the same for 4.20.
Some debug traces would be useful.

>
> I also found that I could dump /sys/bus/pci/devices/0000:01:00.0/config
> and get a good dump from the command line:
>
> 00000000: 8c 16 3c 00 06 00 10 00 00 00 80 02 00 00 00 00     ..<.............
> 00000010: 04 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00     ...`............
> 00000020: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................
> 00000030: 00 00 00 00 40 00 00 00 00 00 00 00 17 01 00 00     ....@...........
> ...
>
> Also good.

Yeah, That looks good. Much  better than getting all F's like the other day.

>
>
> >> I'll try and dig into it some time today and get you some feedback.
>
> Sorry, I didn't get any more time to look at this today.
>

No problem at all.

>
> > No other changes with the previous one, just the order of where
> > interrupts bits are set up in
> > the same place of 4.20.
> >
> > Can you point me out to the link to your board of something to check
> > if I can acquire one and test
> > in my side?
>
> I am using a Digi/EX15:
> https://www.digi.com/products/networking/cellular-routers/enterprise/digi-ex15
>
> FWIW, I think we are close now.

Only one step more to get this properly working.

>
> Regards
> Greg

Best regards,
    Sergio Paracuellos

--0000000000000b975f058a70cef4
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-staging-mt7621-pci-use-perst-gpio-instead-of-builtin.patch"
Content-Disposition: attachment; 
	filename="0001-staging-mt7621-pci-use-perst-gpio-instead-of-builtin.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jwgspjhq0>
X-Attachment-Id: f_jwgspjhq0

RnJvbSBjYjMzMjY2MTU3NTc5ZWNhYTcyMGU2YjgzODViOTcyMjY0Zjk5OWY2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZXJnaW8gUGFyYWN1ZWxsb3MgPHNwYXJhY3VlbGxvc0Bpa2Vy
Z3VuZS5jb20+CkRhdGU6IFdlZCwgMjkgTWF5IDIwMTkgMDk6NTg6MDcgKzAyMDAKU3ViamVjdDog
W1BBVENIXSBzdGFnaW5nOiBtdDc2MjEtcGNpOiB1c2UgcGVyc3QgZ3BpbyBpbnN0ZWFkIG9mIGJ1
aWx0aW4gcGVyc3QKClNvbWUgYm9hcmRzIG5lZWQgZ3BpbyBpbnN0ZWFkIG9mIGJ1aWx0aW4gcGVy
c3QuIFVzZSBncGlvIGZvciBhbGwKb2YgdGhlbSB3aGljaCB3YXMgdGhlIGFwcHJvYWNoIG9mIHRo
ZSBvcmlnaW5hbCBjb2RlLgoKU2lnbmVkLW9mZi1ieTogU2VyZ2lvIFBhcmFjdWVsbG9zIDxzcGFy
YWN1ZWxsb3NAaWtlcmd1bmUuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9tdDc2MjEtZHRzL210
NzYyMS5kdHNpICB8ICAgMyArLQogZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNpLW10NzYy
MS5jIHwgMTE0ICsrKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDYyIGluc2VydGlvbnMoKyksIDU1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvc3RhZ2luZy9tdDc2MjEtZHRzL210NzYyMS5kdHNpIGIvZHJpdmVycy9zdGFnaW5nL210NzYy
MS1kdHMvbXQ3NjIxLmR0c2kKaW5kZXggMjgwZWMzMy4uYWVkMjQ1OCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9zdGFnaW5nL210NzYyMS1kdHMvbXQ3NjIxLmR0c2kKKysrIGIvZHJpdmVycy9zdGFnaW5n
L210NzYyMS1kdHMvbXQ3NjIxLmR0c2kKQEAgLTEsNSArMSw1IEBACiAjaW5jbHVkZSA8ZHQtYmlu
ZGluZ3MvaW50ZXJydXB0LWNvbnRyb2xsZXIvbWlwcy1naWMuaD4KLQorI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL2dwaW8vZ3Bpby5oPgogLyB7CiAJI2FkZHJlc3MtY2VsbHMgPSA8MT47CiAJI3NpemUt
Y2VsbHMgPSA8MT47CkBAIC00NjgsNiArNDY4LDcgQEAKIAkJI2FkZHJlc3MtY2VsbHMgPSA8Mz47
CiAJCSNzaXplLWNlbGxzID0gPDI+OwogCisJCXBlcnN0LWdwaW8gPSA8JmdwaW8gMTkgR1BJT19B
Q1RJVkVfSElHSD47CiAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CiAJCXBpbmN0cmwtMCA9
IDwmcGNpZV9waW5zPjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kv
cGNpLW10NzYyMS5jIGIvZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNpLW10NzYyMS5jCmlu
ZGV4IDAzZDkxOWEuLjlmZjRhOGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEt
cGNpL3BjaS1tdDc2MjEuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLXBjaS9wY2ktbXQ3
NjIxLmMKQEAgLTE3LDYgKzE3LDcgQEAKIAogI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CisjaW5jbHVkZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPgog
I2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L29mLmg+CkBAIC0zNSw2ICszNiw3IEBACiAKIC8qIHN5c2N0bCAqLwogI2Rl
ZmluZSBNVDc2MjFfQ0hJUF9SRVZfSUQJCTB4MGMKKyNkZWZpbmUgTVQ3NjIxX0dQSU9fTU9ERSAg
ICAgICAgMHg2MAogI2RlZmluZSBDSElQX1JFVl9NVDc2MjFfRTIJCTB4MDEwMQogCiAvKiBNZWRp
YVRlayBzcGVjaWZpYyBjb25maWd1cmF0aW9uIHJlZ2lzdGVycyAqLwpAQCAtNzUsMTMgKzc3LDEz
IEBACiAjZGVmaW5lIFJBTElOS19QQ0lfU1RBVFVTCQkweDAwNTAKIAogLyogU29tZSBkZWZpbml0
aW9uIHZhbHVlcyAqLworI2RlZmluZSBSQUxJTktfUENJX0lPX01BUF9CQVNFICAweDFlMTYwMDAw
CiAjZGVmaW5lIFBDSUVfUkVWSVNJT05fSUQJCUJJVCgwKQogI2RlZmluZSBQQ0lFX0NMQVNTX0NP
REUJCQkoMHg2MDQwMCA8PCA4KQogI2RlZmluZSBQQ0lFX0JBUl9NQVBfTUFYCQlHRU5NQVNLKDMw
LCAxNikKICNkZWZpbmUgUENJRV9CQVJfRU5BQkxFCQkJQklUKDApCiAjZGVmaW5lIFBDSUVfUE9S
VF9JTlRfRU4oeCkJCUJJVCgyMCArICh4KSkKICNkZWZpbmUgUENJRV9QT1JUX0NMS19FTih4KQkJ
QklUKDI0ICsgKHgpKQotI2RlZmluZSBQQ0lFX1BPUlRfUEVSU1QoeCkJCUJJVCgxICsgKHgpKQog
I2RlZmluZSBQQ0lFX1BPUlRfTElOS1VQCQlCSVQoMCkKIAogI2RlZmluZSBQQ0lFX0NMS19HRU5f
RU4JCQlCSVQoMzEpCkBAIC05MCw2ICs5MiwxMCBAQAogI2RlZmluZSBQQ0lFX0NMS19HRU4xX0VO
CQkoQklUKDI3KSB8IEJJVCgyNSkpCiAjZGVmaW5lIE1FTU9SWV9CQVNFCQkJMHgwCiAKKyNkZWZp
bmUgUEVSU1RfTU9ERV9NQVNLICAgICAgICAgR0VOTUFTSygxMSwgMTApCisjZGVmaW5lIFBFUlNU
X01PREVfR1BJTyAgICAgICAgIEJJVCgxMCkKKyNkZWZpbmUgUEVSU1RfREVMQVlfVVMgICAgICAg
ICAgMTAwMAorCiAvKioKICAqIHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0IC0gUENJZSBwb3J0IGlu
Zm9ybWF0aW9uCiAgKiBAYmFzZTogSS9PIG1hcHBlZCByZWdpc3RlciBiYXNlCkBAIC0xMTksNiAr
MTI1LDcgQEAgc3RydWN0IG10NzYyMV9wY2llX3BvcnQgewogICogQG9mZnNldDogSU8gLyBNZW1v
cnkgb2Zmc2V0CiAgKiBAZGV2OiBQb2ludGVyIHRvIFBDSWUgZGV2aWNlCiAgKiBAcG9ydHM6IHBv
aW50ZXIgdG8gUENJZSBwb3J0IGluZm9ybWF0aW9uCisgKiBAcGVyc3Q6IGdwaW8gcmVzZXQKICAq
IEByc3Q6IHBvaW50ZXIgdG8gcGNpZSByZXNldAogICovCiBzdHJ1Y3QgbXQ3NjIxX3BjaWUgewpA
QCAtMTMyLDYgKzEzOSw3IEBAIHN0cnVjdCBtdDc2MjFfcGNpZSB7CiAJCXJlc291cmNlX3NpemVf
dCBpbzsKIAl9IG9mZnNldDsKIAlzdHJ1Y3QgbGlzdF9oZWFkIHBvcnRzOworICAgIHN0cnVjdCBn
cGlvX2Rlc2MgKnBlcnN0OwogCXN0cnVjdCByZXNldF9jb250cm9sICpyc3Q7CiB9OwogCkBAIC0x
OTgsNiArMjA2LDE4IEBAIHN0YXRpYyB2b2lkIHdyaXRlX2NvbmZpZyhzdHJ1Y3QgbXQ3NjIxX3Bj
aWUgKnBjaWUsIHVuc2lnbmVkIGludCBkZXYsCiAJcGNpZV93cml0ZShwY2llLCB2YWwsIFJBTElO
S19QQ0lfQ09ORklHX0RBVEEpOwogfQogCitzdGF0aWMgdm9pZCBtdDc2MjFfcGVyc3RfZ3Bpb19w
Y2llX2Fzc2VydChzdHJ1Y3QgbXQ3NjIxX3BjaWUgKnBjaWUpCit7CisgICAgZ3Bpb2Rfc2V0X3Zh
bHVlKHBjaWUtPnBlcnN0LCAwKTsKKyAgICBtZGVsYXkoUEVSU1RfREVMQVlfVVMpOworfQorCitz
dGF0aWMgdm9pZCBtdDc2MjFfcGVyc3RfZ3Bpb19wY2llX2RlYXNzZXJ0KHN0cnVjdCBtdDc2MjFf
cGNpZSAqcGNpZSkKK3sKKyAgICBncGlvZF9zZXRfdmFsdWUocGNpZS0+cGVyc3QsIDEpOworICAg
IG1kZWxheShQRVJTVF9ERUxBWV9VUyk7Cit9CisKIHN0YXRpYyBpbmxpbmUgdm9pZCBtdDc2MjFf
Y29udHJvbF9hc3NlcnQoc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiB7CiAJdTMyIGNo
aXBfcmV2X2lkID0gcnRfc3lzY19yMzIoTVQ3NjIxX0NISVBfUkVWX0lEKTsKQEAgLTM0NCw2ICsz
NjQsMTIgQEAgc3RhdGljIGludCBtdDc2MjFfcGNpZV9wYXJzZV9kdChzdHJ1Y3QgbXQ3NjIxX3Bj
aWUgKnBjaWUpCiAJc3RydWN0IHJlc291cmNlIHJlZ3M7CiAJaW50IGVycjsKIAorICAgIHBjaWUt
PnBlcnN0ID0gZGV2bV9ncGlvZF9nZXQoZGV2LCAicGVyc3QiLCBHUElPRF9PVVRfSElHSCk7Cisg
ICAgaWYgKElTX0VSUihwY2llLT5wZXJzdCkpIHsKKyAgICAgICAgZGV2X2VycihkZXYsICJmYWls
ZWQgdG8gZ2V0IGdwaW8gcGVyc3RcbiIpOworICAgICAgICByZXR1cm4gUFRSX0VSUihwY2llLT5w
ZXJzdCk7CisgICAgfQorCiAJZXJyID0gb2ZfYWRkcmVzc190b19yZXNvdXJjZShub2RlLCAwLCAm
cmVncyk7CiAJaWYgKGVycikgewogCQlkZXZfZXJyKGRldiwgIm1pc3NpbmcgXCJyZWdcIiBwcm9w
ZXJ0eVxuIik7CkBAIC0zODQsNyArNDEwLDYgQEAgc3RhdGljIGludCBtdDc2MjFfcGNpZV9pbml0
X3BvcnQoc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiAJc3RydWN0IG10NzYyMV9wY2ll
ICpwY2llID0gcG9ydC0+cGNpZTsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2llLT5kZXY7CiAJ
dTMyIHNsb3QgPSBwb3J0LT5zbG90OwotCXUzMiB2YWwgPSAwOwogCWludCBlcnI7CiAKIAkvKgpA
QCAtMzkzLDQ3ICs0MTgsMzMgQEAgc3RhdGljIGludCBtdDc2MjFfcGNpZV9pbml0X3BvcnQoc3Ry
dWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiAJICovCiAJbXQ3NjIxX3Jlc2V0X3BvcnQocG9y
dCk7CiAKLQl2YWwgPSByZWFkX2NvbmZpZyhwY2llLCBzbG90LCBQQ0lFX0ZUU19OVU0pOwotCWRl
dl9pbmZvKGRldiwgIlBvcnQgJWQgTl9GVFMgPSAleFxuIiwgKHVuc2lnbmVkIGludCl2YWwsIHNs
b3QpOwotCiAJZXJyID0gcGh5X2luaXQocG9ydC0+cGh5KTsKIAlpZiAoZXJyKSB7CiAJCWRldl9l
cnIoZGV2LCAiZmFpbGVkIHRvIGluaXRpYWxpemUgcG9ydCVkIHBoeVxuIiwgc2xvdCk7Ci0JCWdv
dG8gZXJyX3BoeV9pbml0OworCQlyZXR1cm4gZXJyOwogCX0KIAogCWVyciA9IHBoeV9wb3dlcl9v
bihwb3J0LT5waHkpOwogCWlmIChlcnIpIHsKIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gcG93
ZXIgb24gcG9ydCVkIHBoeVxuIiwgc2xvdCk7Ci0JCWdvdG8gZXJyX3BoeV9vbjsKLQl9Ci0KLQlp
ZiAoKHBjaWVfcG9ydF9yZWFkKHBvcnQsIFJBTElOS19QQ0lfU1RBVFVTKSAmIFBDSUVfUE9SVF9M
SU5LVVApID09IDApIHsKLQkJZGV2X2VycihkZXYsICJwY2llJWQgbm8gY2FyZCwgZGlzYWJsZSBp
dCAoUlNUICYgQ0xLKVxuIiwgc2xvdCk7Ci0JCW10NzYyMV9jb250cm9sX2Fzc2VydChwb3J0KTsK
LQkJcG9ydC0+ZW5hYmxlZCA9IGZhbHNlOwotCQllcnIgPSAtRU5PREVWOwotCQlnb3RvIGVycl9u
b19saW5rX3VwOworCQlyZXR1cm4gZXJyOwogCX0KIAogCXBvcnQtPmVuYWJsZWQgPSB0cnVlOwog
CiAJcmV0dXJuIDA7Ci0KLWVycl9ub19saW5rX3VwOgotCXBoeV9wb3dlcl9vZmYocG9ydC0+cGh5
KTsKLWVycl9waHlfb246Ci0JcGh5X2V4aXQocG9ydC0+cGh5KTsKLWVycl9waHlfaW5pdDoKLQly
ZXR1cm4gZXJyOwogfQogCiBzdGF0aWMgdm9pZCBtdDc2MjFfcGNpZV9pbml0X3BvcnRzKHN0cnVj
dCBtdDc2MjFfcGNpZSAqcGNpZSkKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2llLT5kZXY7
CiAJc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQsICp0bXA7CisJdTMyIHZhbCA9IDA7CiAJ
aW50IGVycjsKIAorICAgIHJ0X3N5c2NfbTMyKFBFUlNUX01PREVfTUFTSywgUEVSU1RfTU9ERV9H
UElPLCBNVDc2MjFfR1BJT19NT0RFKTsKKyAgICBtdDc2MjFfcGVyc3RfZ3Bpb19wY2llX2Fzc2Vy
dChwY2llKTsKKwogCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShwb3J0LCB0bXAsICZwY2llLT5w
b3J0cywgbGlzdCkgewogCQl1MzIgc2xvdCA9IHBvcnQtPnNsb3Q7CiAKQEAgLTQ0MSw3ICs0NTIs
MTAgQEAgc3RhdGljIHZvaWQgbXQ3NjIxX3BjaWVfaW5pdF9wb3J0cyhzdHJ1Y3QgbXQ3NjIxX3Bj
aWUgKnBjaWUpCiAJCWlmIChlcnIpIHsKIAkJCWRldl9lcnIoZGV2LCAiSW5pdGlhdGluZyBwb3J0
ICVkIGZhaWxlZFxuIiwgc2xvdCk7CiAJCQlsaXN0X2RlbCgmcG9ydC0+bGlzdCk7Ci0JCX0KKwkJ
fSBlbHNlIHsKKwkgICAgICAgIHZhbCA9IHJlYWRfY29uZmlnKHBjaWUsIHNsb3QsIFBDSUVfRlRT
X05VTSk7CisJICAgICAgICBkZXZfaW5mbyhkZXYsICJQb3J0ICVkIE5fRlRTID0gJXhcbiIsICh1
bnNpZ25lZCBpbnQpdmFsLCBzbG90KTsKKyAgICAgICAgfQogCX0KIAogCXJlc2V0X2NvbnRyb2xf
YXNzZXJ0KHBjaWUtPnJzdCk7CkBAIC00NTEsMzcgKzQ2NSwzMiBAQCBzdGF0aWMgdm9pZCBtdDc2
MjFfcGNpZV9pbml0X3BvcnRzKHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSkKIAlydF9zeXNjX20z
MihQQ0lFX0NMS19HRU5fRElTLCBQQ0lFX0NMS19HRU5fRU4sIFJBTElOS19QQ0lFX0NMS19HRU4p
OwogCW1zbGVlcCg1MCk7CiAJcmVzZXRfY29udHJvbF9kZWFzc2VydChwY2llLT5yc3QpOworCisg
ICAgbXQ3NjIxX3BlcnN0X2dwaW9fcGNpZV9kZWFzc2VydChwY2llKTsKKworCWxpc3RfZm9yX2Vh
Y2hfZW50cnkocG9ydCwgJnBjaWUtPnBvcnRzLCBsaXN0KSB7CisJCXUzMiBzbG90ID0gcG9ydC0+
c2xvdDsKKworCSAgICBpZiAoKHBjaWVfcG9ydF9yZWFkKHBvcnQsIFJBTElOS19QQ0lfU1RBVFVT
KSAmIFBDSUVfUE9SVF9MSU5LVVApID09IDApIHsKKwkJICAgIGRldl9lcnIoZGV2LCAicGNpZSVk
IG5vIGNhcmQsIGRpc2FibGUgaXQgKFJTVCAmIENMSylcbiIsIHNsb3QpOworCQkgICAgbXQ3NjIx
X2NvbnRyb2xfYXNzZXJ0KHBvcnQpOworICAgICAgICAgICAgcGh5X3Bvd2VyX29mZihwb3J0LT5w
aHkpOworCQkgICAgcG9ydC0+ZW5hYmxlZCA9IGZhbHNlOworICAgICAgICB9IGVsc2UgeworCSAg
ICAgICAgLyogZW5hYmxlIHBjaWUgaW50ZXJydXB0ICovCisJICAgICAgICB2YWwgPSBwY2llX3Jl
YWQocGNpZSwgUkFMSU5LX1BDSV9QQ0lNU0tfQUREUik7CisJICAgICAgICB2YWwgfD0gUENJRV9Q
T1JUX0lOVF9FTihzbG90KTsKKwkgICAgICAgIHBjaWVfd3JpdGUocGNpZSwgdmFsLCBSQUxJTktf
UENJX1BDSU1TS19BRERSKTsKKyAgICAgICAgfQorCX0KIH0KIAotc3RhdGljIGludCBtdDc2MjFf
cGNpZV9lbmFibGVfcG9ydChzdHJ1Y3QgbXQ3NjIxX3BjaWVfcG9ydCAqcG9ydCkKK3N0YXRpYyB2
b2lkIG10NzYyMV9wY2llX2VuYWJsZV9wb3J0KHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0ICpwb3J0
KQogewogCXN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSA9IHBvcnQtPnBjaWU7CiAJdTMyIHNsb3Qg
PSBwb3J0LT5zbG90OwogCXUzMiBvZmZzZXQgPSBNVDc2MjFfUENJRV9PRkZTRVQgKyAoc2xvdCAq
IE1UNzYyMV9ORVhUX1BPUlQpOwogCXUzMiB2YWw7Ci0JaW50IGVycjsKLQotCS8qIGFzc2VydCBw
b3J0IFBFUlNUX04gKi8KLQl2YWwgPSBwY2llX3JlYWQocGNpZSwgUkFMSU5LX1BDSV9QQ0lDRkdf
QUREUik7Ci0JdmFsIHw9IFBDSUVfUE9SVF9QRVJTVChzbG90KTsKLQlwY2llX3dyaXRlKHBjaWUs
IHZhbCwgUkFMSU5LX1BDSV9QQ0lDRkdfQUREUik7Ci0KLQkvKiBkZS1hc3NlcnQgcG9ydCBQRVJT
VF9OICovCi0JdmFsID0gcGNpZV9yZWFkKHBjaWUsIFJBTElOS19QQ0lfUENJQ0ZHX0FERFIpOwot
CXZhbCAmPSB+UENJRV9QT1JUX1BFUlNUKHNsb3QpOwotCXBjaWVfd3JpdGUocGNpZSwgdmFsLCBS
QUxJTktfUENJX1BDSUNGR19BRERSKTsKLQotCS8qIDEwMG1zIHRpbWVvdXQgdmFsdWUgc2hvdWxk
IGJlIGVub3VnaCBmb3IgR2VuMSB0cmFpbmluZyAqLwotCWVyciA9IHJlYWRsX3BvbGxfdGltZW91
dChwb3J0LT5iYXNlICsgUkFMSU5LX1BDSV9TVEFUVVMsCi0JCQkJIHZhbCwgISEodmFsICYgUENJ
RV9QT1JUX0xJTktVUCksCi0JCQkJIDIwLCAxMDAgKiBVU0VDX1BFUl9NU0VDKTsKLQlpZiAoZXJy
KQotCQlyZXR1cm4gLUVUSU1FRE9VVDsKLQotCS8qIGVuYWJsZSBwY2llIGludGVycnVwdCAqLwot
CXZhbCA9IHBjaWVfcmVhZChwY2llLCBSQUxJTktfUENJX1BDSU1TS19BRERSKTsKLQl2YWwgfD0g
UENJRV9QT1JUX0lOVF9FTihzbG90KTsKLQlwY2llX3dyaXRlKHBjaWUsIHZhbCwgUkFMSU5LX1BD
SV9QQ0lNU0tfQUREUik7CiAKIAkvKiBtYXAgMkcgRERSIHJlZ2lvbiAqLwogCXBjaWVfd3JpdGUo
cGNpZSwgUENJRV9CQVJfTUFQX01BWCB8IFBDSUVfQkFSX0VOQUJMRSwKQEAgLTQ5Miw4ICs1MDEs
NiBAQCBzdGF0aWMgaW50IG10NzYyMV9wY2llX2VuYWJsZV9wb3J0KHN0cnVjdCBtdDc2MjFfcGNp
ZV9wb3J0ICpwb3J0KQogCS8qIGNvbmZpZ3VyZSBjbGFzcyBjb2RlIGFuZCByZXZpc2lvbiBJRCAq
LwogCXBjaWVfd3JpdGUocGNpZSwgUENJRV9DTEFTU19DT0RFIHwgUENJRV9SRVZJU0lPTl9JRCwK
IAkJICAgb2Zmc2V0ICsgUkFMSU5LX1BDSV9DTEFTUyk7Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3Rh
dGljIHZvaWQgbXQ3NjIxX3BjaWVfZW5hYmxlX3BvcnRzKHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNp
ZSkKQEAgLTUwNiwxMSArNTEzLDcgQEAgc3RhdGljIHZvaWQgbXQ3NjIxX3BjaWVfZW5hYmxlX3Bv
cnRzKHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSkKIAogCWxpc3RfZm9yX2VhY2hfZW50cnkocG9y
dCwgJnBjaWUtPnBvcnRzLCBsaXN0KSB7CiAJCWlmIChwb3J0LT5lbmFibGVkKSB7Ci0JCQlpZiAo
bXQ3NjIxX3BjaWVfZW5hYmxlX3BvcnQocG9ydCkpIHsKLQkJCQlkZXZfZXJyKGRldiwgImRlLWFz
c2VydCBwb3J0ICVkIFBFUlNUX05cbiIsCi0JCQkJCXBvcnQtPnNsb3QpOwotCQkJCWNvbnRpbnVl
OwotCQkJfQorCQkJbXQ3NjIxX3BjaWVfZW5hYmxlX3BvcnQocG9ydCk7CiAJCQlkZXZfaW5mbyhk
ZXYsICJQQ0lFJWQgZW5hYmxlZFxuIiwgc2xvdCk7CiAJCQludW1fc2xvdHNfZW5hYmxlZCsrOwog
CQl9CkBAIC02NjUsNiArNjY4LDkgQEAgc3RhdGljIGludCBtdDc2MjFfcGNpX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJCXJldHVybiAwOwogCX0KIAorICAgIHBjaWVfd3Jp
dGUocGNpZSwgMHhmZmZmZmZmZiwgUkFMSU5LX1BDSV9NRU1CQVNFKTsKKyAgICBwY2llX3dyaXRl
KHBjaWUsIFJBTElOS19QQ0lfSU9fTUFQX0JBU0UsIFJBTElOS19QQ0lfSU9CQVNFKTsKKwogCW10
NzYyMV9wY2llX2VuYWJsZV9wb3J0cyhwY2llKTsKIAogCWVyciA9IG10NzYyMV9wY2lfcGFyc2Vf
cmVxdWVzdF9vZl9wY2lfcmFuZ2VzKHBjaWUpOwotLSAKMi43LjQKCg==
--0000000000000b975f058a70cef4
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--0000000000000b975f058a70cef4--
