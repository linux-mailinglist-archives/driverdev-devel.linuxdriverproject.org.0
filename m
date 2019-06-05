Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A285535CD1
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 14:28:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4BB885F9C;
	Wed,  5 Jun 2019 12:28:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x4uIzvSWF3h1; Wed,  5 Jun 2019 12:28:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 99D4B860B2;
	Wed,  5 Jun 2019 12:28:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E4B6D1BF2A9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 12:28:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E03A71FDFB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 12:28:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CNFfwwIG8fmp
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 12:28:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id C98A92035B
 for <driverdev-devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 12:28:21 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id r21so517276otq.6
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 05 Jun 2019 05:28:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jRh2vx1dqEG9QLWp9Q0hbzuKkHNZmxbOhsHmm/KM4yY=;
 b=uZFT2kq4Zy1wGZ+B+AORpTuZ1rJCVTYXL6wk/CWU2cEHwxnAH16+bLQXSMCIJDoMq/
 3H3d2QjByzKxz6EsLDd/Je0dEmJfh5E5IXl+2AVlTj2tGx+YwBdlQgcmAQNLgT6unB6E
 SKb9qWlvmA58Ub7zefvB9OntFaFq2hvz4O3Xy+VzTU8qdgleEdR+cVNY1mcCSIq/U8RV
 tBBvMKS1CuVex6LyUCqvdUTIrtItdHSooc8CqRD/PfDLM8J4mB/Ba5xh707m0dG8RlN7
 9HQPTaGpzEDzqzcCfUM4BvPkGdUtwieO8qkZe2m8hUU/WzFbfjppvpnC3o4Ito1npCyo
 fwGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jRh2vx1dqEG9QLWp9Q0hbzuKkHNZmxbOhsHmm/KM4yY=;
 b=ZLXl3o9HehAE9Tz4zjmsD1/Yi4nPCx9GsmdmF9roSuckT14cppYA7gC0/J7EM8yMJY
 GX575RkVcJmEHuRRfSgd0F0gvxqLFa4HwUAhgqjay/U3kffOj2fb3hzCCG1jLOwoa4Xc
 v2l2TH5yOqTzg/trrNqqQNOP1FcVQ7Rsl9xMCGKEw5hfgcSwXSeCL51IlYH0Mn3ZNoS5
 vZA4OQYpXiVr0TZegPX+qLzkuVJX3uwTH8Tg0jXFOQaF1g2Ljsm6tBcYMz07hsQZU7z3
 S0JPcBEFVN66pUVpmrAeUZBUrw17yCc8obLzm0kJ0qdojXwBxQ5HI2GUXRz6onIKJfwq
 jqUg==
X-Gm-Message-State: APjAAAWuRrVPDo8PQ9W5w4xnQX1Dd4CWJjkw5nUGPpH/kEO/R+Q3afoj
 99v/BziLWmq19wk2vAb5eeU6Nlg/5xXGxpqJevo=
X-Google-Smtp-Source: APXvYqze15EZ1sZSdh7LtAXq2ri3DxqNTQqRW4gOhTBXvQvVBZVTJbweuh/uRG8cwk+5AUO9zx8gUE7Fogedt9BEtcw=
X-Received: by 2002:a9d:3dca:: with SMTP id l68mr10048221otc.273.1559737700781; 
 Wed, 05 Jun 2019 05:28:20 -0700 (PDT)
MIME-Version: 1.0
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
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
 <CAMhs-H_z-8mFrYHPVOPhRRn1P9OXvjSf0jssodqOLs8AQQE+AA@mail.gmail.com>
 <8a54ad56-75c9-c4a4-805c-a246dabbb6ca@kernel.org>
 <CAMhs-H_Zm4VCeJyniSCFgySXbJOOijYrxd-yJpkYjUdjMa+d5g@mail.gmail.com>
 <95b0b5f4-18ff-1f92-b1ae-d9a625e6f013@kernel.org>
 <CAMhs-H_cBOff=4MhAxgmSGV9bukZdoDhOcSwkaErrSvhuwLktA@mail.gmail.com>
 <186a4fae-d66b-9a68-9d26-bff483c1b619@kernel.org>
 <CAMhs-H8vSh2jNo1HZQV=NbOPpmByb+7u6sw2ULzjOrhLG5A7Sw@mail.gmail.com>
In-Reply-To: <CAMhs-H8vSh2jNo1HZQV=NbOPpmByb+7u6sw2ULzjOrhLG5A7Sw@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 5 Jun 2019 14:28:09 +0200
Message-ID: <CAMhs-H_LyPTpLdbhJ8Fj-VLrboAE6DXr=vHd9Tkbu184hkiPWA@mail.gmail.com>
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Greg Ungerer <gerg@kernel.org>
Content-Type: multipart/mixed; boundary="0000000000009934be058a92bbac"
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

--0000000000009934be058a92bbac
Content-Type: text/plain; charset="UTF-8"

Hi Greg,

On Wed, Jun 5, 2019 at 7:47 AM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:
>
> Hi Greg,
>
> On Wed, Jun 5, 2019 at 6:01 AM Greg Ungerer <gerg@kernel.org> wrote:
> >
> > Hi Sergio,
> >
> > On 4/6/19 7:36 pm, Sergio Paracuellos wrote:
> > > On Tue, Jun 4, 2019 at 9:14 AM Greg Ungerer <gerg@kernel.org> wrote:
> > >> On 4/6/19 3:06 pm, Sergio Paracuellos wrote:
> > >>> On Tue, Jun 4, 2019 at 3:31 AM Greg Ungerer <gerg@kernel.org> wrote:
> > >>>> On 4/6/19 5:59 am, Sergio Paracuellos wrote:
> > >>>>> On Mon, Jun 3, 2019 at 2:32 PM Greg Ungerer <gerg@kernel.org> wrote:
> > >>>>>> On 3/6/19 3:34 pm, Sergio Paracuellos wrote:
> > >>>>>>> On Mon, Jun 3, 2019 at 3:26 AM Greg Ungerer <gerg@kernel.org> wrote:
> > >>>>>>>> On 31/5/19 10:37 pm, Sergio Paracuellos wrote:
> > >>>>>>>>> On Thu, May 30, 2019 at 3:46 AM Greg Ungerer <gerg@kernel.org> wrote:
> > >>>>>>>>>> On 30/5/19 10:44 am, Greg Ungerer wrote:
> > >>>>>>>>>>> On 29/5/19 6:08 pm, Sergio Paracuellos wrote:
> > >>>>>>>>>>> [snip]
> > >>>>>>> Can you try to read and set BIT(10) instead of write it directly?:
> > >>>>>>>
> > >>>>>>> Instead of:
> > >>>>>>>
> > >>>>>>> rt_sysc_w32(PERST_MODE_GPIO, MT7621_GPIO_MODE);
> > >>>>>>
> > >>>>>> Oh, yeah, that is definitely not going to work. There is a bunch of
> > >>>>>> other GPIO control bits in there for other hardware blocks. Would
> > >>>>>> explain the broken NAND flash behavior...
> > >>>>>
> > >>>>> Yes, my bad here. Sometimes is better to go to sleep :)).
> > >>>>>>
> > >>>>>>> Do:
> > >>>>>>>
> > >>>>>>> u32 val = rt_sysc_r32(MT7621_GPIO_MODE);
> > >>>>>>> val |= PERST_MODE_GPIO;
> > >>>>>>> rt_sysc_w32(val, MT7621_GPIO_MODE);
> > >>>>>>
> > >>>>>> Much better result with that. Though ultimately it should clear
> > >>>>>> bits 10 and 11 (both are PERST_MODE bits) and then OR in BIT(10).
> > >>>>>
> > >>>>> Ok, so the following should do the trick:
> > >>>>>
> > >>>>> rt_sysc_m32(PERST_MODE_MASK, PERST_MODE_GPIO, MT7621_GPIO_MODE);
> > >>>>>
> > >>>>> with PERST_MODE_MASK defined as:
> > >>>>>
> > >>>>> #define PERST_MODE_MASK         GENMASK(11, 10)
> > >>>>>
> > >>>>> (patch attached with this changes)
> > >>>>
> > >>>> I have mostly good news and a little bad news :-)
> > >>>>
> > >>>> I should have tested more thoroughly last night. Anyway, the new patch
> > >>>> works, even the IRQ of the PCI device. My Wifi PCI device works just
> > >>>> as well now as it did with the 4.20 pci-mt7621.c/pci-mt7621-phy.c.
> > >>>> I still get the lines:
> > >>>>
> > >>>> pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> > >>>> pcieport 0000:00:00.0: enabling device (0004 -> 0006)
> > >>>>
> > >>>> However that is referring to the root host PCI device (0000:00:00.0),
> > >>>> not my PCI peripheral device (which is 0000:01:00.0). It is actually
> > >>>> probed and working properly.
> > >>>>
> > >>>> That is the good news.
> > >>>
> > >>> That makes sense :). Good news are always good news even bads are
> > >>> coming also :))
> > >>>
> > >>>>
> > >>>>
> > >>>>> It would be also good to know what happen if you comment the following lines:
> > >>>>>
> > >>>>> pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
> > >>>>> pcie_write(pcie, RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);
> > >>>>>
> > >>>>> Are they really needed?
> > >>>>
> > >>>> Had no effect for me. Everything worked the same with or without
> > >>>> those lines as far as I could tell.
> > >>>
> > >>> Ok, I won't include them when I send a clean patch series with all of
> > >>> this changes.
> > >>>
> > >>>>
> > >>>>
> > >>>> [snip]
> > >>>>> Only one step more to get this properly working.
> > >>>>
> > >>>> Ok, now the bad news.
> > >>>>
> > >>>> I often get the boot hanging at various points in the PCI
> > >>>> initialization, setup and probing.
> > >>>>
> > >>>> For example sometimes it hangs with boot up to:
> > >>>>
> > >>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > >>>>
> > >>>>
> > >>>> Then sometimes it hangs at:
> > >>>>
> > >>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > >>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> > >>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > >>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> > >>>>      mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> > >>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> > >>>>      mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> > >>>>      mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> > >>>>      mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> > >>>>
> > >>>
> > >>> It is weird, here it is not initializing any port... All of them are disabled.
> > >>>
> > >>>>
> > >>>> And then I also see it hang up to:
> > >>>>
> > >>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > >>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> > >>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > >>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> > >>>>      mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> > >>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> > >>>>      mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> > >>>>      mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> > >>>>      mt7621-pci 1e140000.pcie: PCIE0 enabled
> > >>>>      mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> > >>>>      mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> > >>>>      pci_bus 0000:00: root bus resource [io  0xffffffff]
> > >>>>      pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> > >>>>      pci_bus 0000:00: root bus resource [bus 00-ff]
> > >>>>      pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> > >>>>
> > >>>>
> > >>>> It happens on cold or warm boots. Sometimes it boots up all the
> > >>>> way and everything works perfectly.
> > >>>
> > >>> Can you try to change all the msleeps of the code driver in favour of
> > >>> mdelay's? Looks like
> > >>> some timing problem.
> > >>
> > >> Changed the msleeps to mdelays and it still hangs somtimes.
> > >> I doubled the delay times in the msleeps and tried that too -
> > >> that also sometimes hangs.
> > >>
> > >>
> > >>> If it doesn't work, it would be great to have a full trace of working
> > >>> 4.20 and no working current 5.x series
> > >>> version just to carefully compare them.
> > >>
> > >> I'll attach at the end a full working boot trace from 5.1 with the 4.20 pci-mt7621.c.
> > >> I'll attach a 5.1 boot trace with your patch and hang below. Not that this very
> > >> same image doesn't always hang. Same binary will sometimes boot fine.
> > >>
> > >>
> > >>>> I had perfect reliable boot and operation with linux-5.1 using the
> > >>>> older 4.20 pci-mt7621.c and pci-mt7621-phy.c.
> > >>>
> > >>> AFAICT, there is not pci-mt7621-phy.c in the v4.20, isn't it? Do you
> > >>> mean you put also that
> > >>> code into that version and compile them? Or are you just using "pci-mt7621.c"?
> > >>
> > >> I just leave that pci-mt7621-phy.c code in place in linux-5.1 when I copy in
> > >> the linux-4.20 pci-mt7621.c - even though it isn't used in that case.
> > >>
> > >> One thing I always notice is that the PCI probing happens much earlier
> > >> with the 4.20 pci-mt7621.c. Not sure that will have any impact though.
> > >>
> > >
> > > It seems it is related because, looking at the trace which hangs I can see:
> > >
> > > mt7621-pci 1e140000.pcie: failed to get gpio perst
> > > mt7621-pci 1e140000.pcie: Parsing DT failed
> > >
> > > At that point gpio's driver are not being probed yet. This not happen
> > > with the original
> > > patch because it just access to memory to set up all the stuff intead
> > > of use the gpio's
> > > consumers apis which, IMHO, is the way to go.
> > >
> > > Can you try to return "-EPROBE_DEFER" if getting the gpio fails in
> > > initialization?
> > >
> > > (patch attached with this change and removing the two lines which
> > > seems to not be needed
> > > commented in previous patch)
> >
> > New patch tried. Behavior is no different. Occasional hang during boot.
> > I can see that it does the probe, and now deferr. Full boot log of a
> > hung boot below.
>
> Ok, so that means it was properly being deferred with the previous patch also.
>
> The original code set up all at a very early stage (arch_initcall)
> just after the pinctrl
> driver is being set up. The new one without my last patches was also
> being executed
> later because of the phy. At arch_initcall the 'phy_create()' is
> called before the phy module is initialized, so 'phy_class' is NULL,
> the new phy isn't placed in the right class, and it cannot be found.
> So the phy driver uses 'module_init' instead of 'arch_initcall' and it
> worked for the gnubee board. But according to your traces when it
> hangs the problem seems to be with gpio's being resetting or something
> so the pcie link is not in up
> state for any reason I cannot understand. So we have to determine if
> the problem is because of the phy and gpio init being done in later
> stages.
>
> We can try to change 'arch_initcall' to a later stage changing it to
> 'module_init' to see if it is a deferring problem or something. The
> other thing we can try to determine if it is a gpio access problem is
> to change in the last patch
> the gpio descriptor uses with you initial memory accessign hack to see
> if it eventually hungs or not. If this both tests result in eventually
> hung boot I'll try to prepare a patch with the current phy code in the
> 'arch_initcall' stage putting in the the same pci-mt7621.c file to see
> if order matters. No more ideas by now, sorry :(
>
> > Regards
> > Greg
>
> Best regards,
>     Sergio Paracuellos
> >
> >
> > --------------------------------------------------------------------------------
> > Linux version 5.1.0-ac0 (gerg@goober) (gcc version 5.4.0 (GCC)) #78 SMP Wed Jun 5 13:45:19 AEST 2019
> > SoC Type: MediaTek MT7621 ver:1 eco:3
> > printk: bootconsole [early0] enabled
> > CPU0 revision is: 0001992f (MIPS 1004Kc)
> > OF: fdt: No chosen node found, continuing without
> > MIPS: machine is Digi EX15
> > Determined physical RAM map:
> >   memory: 10000000 @ 00000000 (usable)
> > Initial ramdisk at: 0x81000000 (16920576 bytes)
> > VPE topology {2,2} total 4
> > Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
> > Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
> > MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
> > Zone ranges:
> >    Normal   [mem 0x0000000000000000-0x000000000fffffff]
> > Movable zone start for each node
> > Early memory node ranges
> >    node   0: [mem 0x0000000000000000-0x000000000fffffff]
> > Initmem setup node 0 [mem 0x0000000000000000-0x000000000fffffff]
> > random: get_random_bytes called from start_kernel+0xb0/0x524 with crng_init=0
> > percpu: Embedded 15 pages/cpu s30144 r8192 d23104 u61440
> > Built 1 zonelists, mobility grouping on.  Total pages: 65024
> > Kernel command line:  boot=network boot_ver=19.3.223.0-0c02c07312-dirty console=ttyS0,115200 ubi.mtd=3 root=/dev/ram0 rd_start=0x81000000 rd_size=0x1023000
> > Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
> > Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
> > Writing ErrCtl register=00020513
> > Readback ErrCtl register=00020513
> > Memory: 233756K/262144K available (7216K kernel code, 247K rwdata, 1320K rodata, 292K init, 230K bss, 28388K reserved, 0K cma-reserved)
> > SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
> > rcu: Hierarchical RCU implementation.
> > rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
> > NR_IRQS: 256
> > clocksource: GIC: mask: 0xffffffffffffffff max_cycles: 0xcaf478abb4, max_idle_ns: 440795247997 ns
> > sched_clock: 32 bits at 100 Hz, resolution 10000000ns, wraps every 21474836475000000ns
> > Calibrating delay loop... 586.13 BogoMIPS (lpj=2930688)
> > pid_max: default: 32768 minimum: 301
> > Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
> > Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
> > rcu: Hierarchical SRCU implementation.
> > smp: Bringing up secondary CPUs ...
> > Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
> > Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
> > MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
> > CPU1 revision is: 0001992f (MIPS 1004Kc)
> > Synchronize counters for CPU 1: done.
> > Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
> > Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
> > MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
> > CPU2 revision is: 0001992f (MIPS 1004Kc)
> > Synchronize counters for CPU 2: done.
> > Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
> > Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
> > MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
> > CPU3 revision is: 0001992f (MIPS 1004Kc)
> > Synchronize counters for CPU 3: done.
> > smp: Brought up 1 node, 4 CPUs
> > devtmpfs: initialized
> > clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
> > futex hash table entries: 1024 (order: 3, 32768 bytes)
> > pinctrl core: initialized pinctrl subsystem
> > NET: Registered protocol family 16
> > mt7621-pci 1e140000.pcie: failed to get gpio perst
> > mt7621-pci 1e140000.pcie: Parsing DT failed
> > SCSI subsystem initialized
> > usbcore: registered new interface driver usbfs
> > usbcore: registered new interface driver hub
> > usbcore: registered new device driver usb
> > pcf857x 0-0026: probed
> > i2c-mt7621 1e000900.i2c: clock 400KHz, re-start not support
> > clocksource: Switched to clocksource GIC
> > NET: Registered protocol family 2
> > tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 6144 bytes)
> > TCP established hash table entries: 2048 (order: 1, 8192 bytes)
> > TCP bind hash table entries: 2048 (order: 2, 16384 bytes)
> > TCP: Hash tables configured (established 2048 bind 2048)
> > UDP hash table entries: 256 (order: 1, 8192 bytes)
> > UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
> > NET: Registered protocol family 1
> > Trying to unpack rootfs image as initramfs...
> > rootfs image is not initramfs (invalid magic at start of compressed archive); looks like an initrd
> > Freeing initrd memory: 16524K
> > Initialise system trusted keyrings
> > workingset: timestamp_bits=30 max_order=16 bucket_order=0
> > squashfs: version 4.0 (2009/01/31) Phillip Lougher
> > random: fast init done
> > Key type asymmetric registered
> > Asymmetric key parser 'x509' registered
> > Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
> > mt7621_gpio 1e000600.gpio: registering 32 gpios
> > mt7621_gpio 1e000600.gpio: registering 32 gpios
> > mt7621_gpio 1e000600.gpio: registering 32 gpios
> > Serial: 8250/16550 driver, 3 ports, IRQ sharing disabled
> > printk: console [ttyS0] disabled
> > 1e000c00.uartlite: ttyS0 at MMIO 0x1e000c00 (irq = 18, base_baud = 3125000) is a 16550A
> > printk: console [ttyS0] enabled
> > printk: console [ttyS0] enabled
> > printk: bootconsole [early0] disabled
> > printk: bootconsole [early0] disabled
> > 1e000d00.uartlite: ttyS1 at MMIO 0x1e000d00 (irq = 19, base_baud = 3125000) is a 16550A
> > ledman: Copyright (C) SnapGear, 2000-2010.
> > ledman: registered ERASE switch on IRQ28
> > snapdog: HW/SW watchdog timer for SnapGear/Others
> > cacheinfo: Failed to find cpu0 device node
> > cacheinfo: Unable to detect cache hierarchy for CPU 0
> > brd: module loaded
> > mt7621-nand: NAND register bank at 0xbe003000
> > mt7621-nand: NAND ECC register bank at 0xbe003800
> > nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xdc
> > nand: Micron NAND 512MiB 3,3V 8-bit
> > nand: 512 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
> > nand: ecc bit: 4, spare_per_sector: 16
> > Bad block table found at page 262080, version 0x01
> > Bad block table found at page 262016, version 0x01
> > 5 fixed-partitions partitions found on MTD device MT7621-NAND
> > Creating 5 MTD partitions on "MT7621-NAND":
> > 0x000000000000-0x000000200000 : "u-boot"
> > 0x000000200000-0x000000300000 : "u-boot-env"
> > 0x000000300000-0x000000500000 : "log"
> > 0x000000500000-0x000020000000 : "flash"
> > 0x000000000000-0x000020000000 : "all"
> > libphy: Fixed MDIO Bus: probed
> > tun: Universal TUN/TAP device driver, 1.6
> > libphy: mdio: probed
> > mtk_soc_eth 1e100000.ethernet: generated random MAC address 8a:8c:8b:24:60:92
> > mtk_soc_eth 1e100000.ethernet: connected mac 0 to PHY at fixed-0:00 [uid=00000000, driver=Generic PHY]
> > mtk_soc_eth 1e100000.ethernet eth0: mediatek frame engine at 0xbe100000, irq 21
> > PPP generic driver version 2.4.2
> > PPP BSD Compression module registered
> > PPP Deflate Compression module registered
> > PPP MPPE Compression module registered
> > NET: Registered protocol family 24
> > SLIP: version 0.8.4-NET3.019-NEWTTY (dynamic channels, max=256).
> > CSLIP: code copyright 1989 Regents of the University of California.
> > usbcore: registered new interface driver ar5523
> > usbcore: registered new interface driver asix
> > usbcore: registered new interface driver ax88179_178a
> > usbcore: registered new interface driver cdc_ether
> > usbcore: registered new interface driver cdc_eem
> > usbcore: registered new interface driver rndis_host
> > usbcore: registered new interface driver cdc_subset
> > usbcore: registered new interface driver cdc_ncm
> > usbcore: registered new interface driver qmi_wwan
> > usbcore: registered new interface driver cdc_mbim
> > ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> > ehci-pci: EHCI PCI platform driver
> > ehci-platform: EHCI generic platform driver
> > ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
> > ohci-pci: OHCI PCI platform driver
> > xhci-mtk 1e1c0000.xhci: xHCI Host Controller
> > xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 1
> > xhci-mtk 1e1c0000.xhci: hcc params 0x01401198 hci version 0x96 quirks 0x0000000000210010
> > xhci-mtk 1e1c0000.xhci: irq 20, io mem 0x1e1c0000
> > usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.01
> > usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
> > usb usb1: Product: xHCI Host Controller
> > usb usb1: Manufacturer: Linux 5.1.0-ac0 xhci-hcd
> > usb usb1: SerialNumber: 1e1c0000.xhci
> > hub 1-0:1.0: USB hub found
> > hub 1-0:1.0: 2 ports detected
> > xhci-mtk 1e1c0000.xhci: xHCI Host Controller
> > xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 2
> > xhci-mtk 1e1c0000.xhci: Host supports USB 3.0  SuperSpeed
> > usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
> > usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 5.01
> > usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
> > usb usb2: Product: xHCI Host Controller
> > usb usb2: Manufacturer: Linux 5.1.0-ac0 xhci-hcd
> > usb usb2: SerialNumber: 1e1c0000.xhci
> > hub 2-0:1.0: USB hub found
> > hub 2-0:1.0: 1 port detected
> > usbcore: registered new interface driver cdc_acm
> > cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters
> > usbcore: registered new interface driver cdc_wdm
> > usbcore: registered new interface driver usb-storage
> > usbcore: registered new interface driver usbserial_generic
> > usbserial: USB Serial support registered for generic
> > usbcore: registered new interface driver ipw
> > usbserial: USB Serial support registered for IPWireless converter
> > usbcore: registered new interface driver option
> > usbserial: USB Serial support registered for GSM modem (1-port)
> > usbcore: registered new interface driver qcaux
> > usbserial: USB Serial support registered for qcaux
> > usbcore: registered new interface driver qcserial
> > usbserial: USB Serial support registered for Qualcomm USB modem
> > usbcore: registered new interface driver quatech2
> > usbserial: USB Serial support registered for Quatech 2nd gen USB to Serial Driver
> > usbcore: registered new interface driver usb_serial_simple
> > usbserial: USB Serial support registered for carelink
> > usbserial: USB Serial support registered for zio
> > usbserial: USB Serial support registered for funsoft
> > usbserial: USB Serial support registered for flashloader
> > usbserial: USB Serial support registered for google
> > usbserial: USB Serial support registered for libtransistor
> > usbserial: USB Serial support registered for vivopay
> > usbserial: USB Serial support registered for moto_modem
> > usbserial: USB Serial support registered for motorola_tetra
> > usbserial: USB Serial support registered for novatel_gps
> > usbserial: USB Serial support registered for hp4x
> > usbserial: USB Serial support registered for suunto
> > usbserial: USB Serial support registered for siemens_mpi
> > u32 classifier
> >      input device check on
> > ipip: IPv4 and MPLS over IPv4 tunneling driver
> > gre: GRE over IPv4 demultiplexor driver
> > ip_gre: GRE over IPv4 tunneling driver
> > Initializing XFRM netlink socket
> > NET: Registered protocol family 10
> > Segment Routing with IPv6
> > sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
> > NET: Registered protocol family 17
> > NET: Registered protocol family 15
> > 8021q: 802.1Q VLAN Support v1.8
> > Loading compiled-in X.509 certificates
> > mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > mt7621-pci 1e140000.pcie: Port 0 N_FTS = 1b102800
> > mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> > mt7621-pci 1e140000.pcie: Port 1 N_FTS = 1b102800
> > mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> > mt7621-pci 1e140000.pcie: Port 2 N_FTS = 1b102800
> > mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
> > mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> > mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)

I changed also the way port resets are done. Now all of ports are
being reset before
enabling the phy. Also, power_off the phy is done before reseting the
port so it should
not hang now. The real problem here is if the pcie link is properly
detected to get a working
PCI.

Patch attached.

> >
> >           [HUNG]
> >

Best regards,
    Sergio Paracuellos

--0000000000009934be058a92bbac
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-staging-mt7621-pci-use-perst-gpio-instead-of-builtin.patch"
Content-Disposition: attachment; 
	filename="0001-staging-mt7621-pci-use-perst-gpio-instead-of-builtin.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jwj7jbb60>
X-Attachment-Id: f_jwj7jbb60

RnJvbSBhMDdlMWM4MTY3ZjBiNzE3NTlhZDQ0YjQyZjEyNTBiYmU4MjFmMzY2IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZXJnaW8gUGFyYWN1ZWxsb3MgPHNwYXJhY3VlbGxvc0Bpa2Vy
Z3VuZS5jb20+CkRhdGU6IFdlZCwgMjkgTWF5IDIwMTkgMDk6NTg6MDcgKzAyMDAKU3ViamVjdDog
W1BBVENIXSBzdGFnaW5nOiBtdDc2MjEtcGNpOiB1c2UgcGVyc3QgZ3BpbyBpbnN0ZWFkIG9mIGJ1
aWx0aW4gcGVyc3QKClNvbWUgYm9hcmRzIG5lZWQgZ3BpbyBpbnN0ZWFkIG9mIGJ1aWx0aW4gcGVy
c3QuIFVzZSBncGlvIGZvciBhbGwKb2YgdGhlbSB3aGljaCB3YXMgdGhlIGFwcHJvYWNoIG9mIHRo
ZSBvcmlnaW5hbCBjb2RlLgoKU2lnbmVkLW9mZi1ieTogU2VyZ2lvIFBhcmFjdWVsbG9zIDxzcGFy
YWN1ZWxsb3NAaWtlcmd1bmUuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9tdDc2MjEtZHRzL210
NzYyMS5kdHNpICB8ICAgMyArLQogZHJpdmVycy9zdGFnaW5nL210NzYyMS1wY2kvcGNpLW10NzYy
MS5jIHwgMTIyICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5n
ZWQsIDY0IGluc2VydGlvbnMoKyksIDYxIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
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
ZGV4IDAzZDkxOWEuLmIxMzkyMGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEt
cGNpL3BjaS1tdDc2MjEuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLXBjaS9wY2ktbXQ3
NjIxLmMKQEAgLTE3LDYgKzE3LDcgQEAKIAogI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2RlbGF5Lmg+CisjaW5jbHVkZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPgog
I2luY2x1ZGUgPGxpbnV4L2lvcG9sbC5oPgogI2luY2x1ZGUgPGxpbnV4L21vZHVsZS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L29mLmg+CkBAIC0zNSw2ICszNiw3IEBACiAKIC8qIHN5c2N0bCAqLwogI2Rl
ZmluZSBNVDc2MjFfQ0hJUF9SRVZfSUQJCTB4MGMKKyNkZWZpbmUgTVQ3NjIxX0dQSU9fTU9ERSAg
ICAgICAgMHg2MAogI2RlZmluZSBDSElQX1JFVl9NVDc2MjFfRTIJCTB4MDEwMQogCiAvKiBNZWRp
YVRlayBzcGVjaWZpYyBjb25maWd1cmF0aW9uIHJlZ2lzdGVycyAqLwpAQCAtODEsNyArODMsNiBA
QAogI2RlZmluZSBQQ0lFX0JBUl9FTkFCTEUJCQlCSVQoMCkKICNkZWZpbmUgUENJRV9QT1JUX0lO
VF9FTih4KQkJQklUKDIwICsgKHgpKQogI2RlZmluZSBQQ0lFX1BPUlRfQ0xLX0VOKHgpCQlCSVQo
MjQgKyAoeCkpCi0jZGVmaW5lIFBDSUVfUE9SVF9QRVJTVCh4KQkJQklUKDEgKyAoeCkpCiAjZGVm
aW5lIFBDSUVfUE9SVF9MSU5LVVAJCUJJVCgwKQogCiAjZGVmaW5lIFBDSUVfQ0xLX0dFTl9FTgkJ
CUJJVCgzMSkKQEAgLTkwLDYgKzkxLDEwIEBACiAjZGVmaW5lIFBDSUVfQ0xLX0dFTjFfRU4JCShC
SVQoMjcpIHwgQklUKDI1KSkKICNkZWZpbmUgTUVNT1JZX0JBU0UJCQkweDAKIAorI2RlZmluZSBQ
RVJTVF9NT0RFX01BU0sgICAgICAgICBHRU5NQVNLKDExLCAxMCkKKyNkZWZpbmUgUEVSU1RfTU9E
RV9HUElPICAgICAgICAgQklUKDEwKQorI2RlZmluZSBQRVJTVF9ERUxBWV9VUyAgICAgICAgICAx
MDAwCisKIC8qKgogICogc3RydWN0IG10NzYyMV9wY2llX3BvcnQgLSBQQ0llIHBvcnQgaW5mb3Jt
YXRpb24KICAqIEBiYXNlOiBJL08gbWFwcGVkIHJlZ2lzdGVyIGJhc2UKQEAgLTExOSw2ICsxMjQs
NyBAQCBzdHJ1Y3QgbXQ3NjIxX3BjaWVfcG9ydCB7CiAgKiBAb2Zmc2V0OiBJTyAvIE1lbW9yeSBv
ZmZzZXQKICAqIEBkZXY6IFBvaW50ZXIgdG8gUENJZSBkZXZpY2UKICAqIEBwb3J0czogcG9pbnRl
ciB0byBQQ0llIHBvcnQgaW5mb3JtYXRpb24KKyAqIEBwZXJzdDogZ3BpbyByZXNldAogICogQHJz
dDogcG9pbnRlciB0byBwY2llIHJlc2V0CiAgKi8KIHN0cnVjdCBtdDc2MjFfcGNpZSB7CkBAIC0x
MzIsNiArMTM4LDcgQEAgc3RydWN0IG10NzYyMV9wY2llIHsKIAkJcmVzb3VyY2Vfc2l6ZV90IGlv
OwogCX0gb2Zmc2V0OwogCXN0cnVjdCBsaXN0X2hlYWQgcG9ydHM7CisgICAgc3RydWN0IGdwaW9f
ZGVzYyAqcGVyc3Q7CiAJc3RydWN0IHJlc2V0X2NvbnRyb2wgKnJzdDsKIH07CiAKQEAgLTE5OCw2
ICsyMDUsMTggQEAgc3RhdGljIHZvaWQgd3JpdGVfY29uZmlnKHN0cnVjdCBtdDc2MjFfcGNpZSAq
cGNpZSwgdW5zaWduZWQgaW50IGRldiwKIAlwY2llX3dyaXRlKHBjaWUsIHZhbCwgUkFMSU5LX1BD
SV9DT05GSUdfREFUQSk7CiB9CiAKK3N0YXRpYyB2b2lkIG10NzYyMV9wZXJzdF9ncGlvX3BjaWVf
YXNzZXJ0KHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSkKK3sKKyAgICBncGlvZF9zZXRfdmFsdWUo
cGNpZS0+cGVyc3QsIDApOworICAgIG1kZWxheShQRVJTVF9ERUxBWV9VUyk7Cit9CisKK3N0YXRp
YyB2b2lkIG10NzYyMV9wZXJzdF9ncGlvX3BjaWVfZGVhc3NlcnQoc3RydWN0IG10NzYyMV9wY2ll
ICpwY2llKQoreworICAgIGdwaW9kX3NldF92YWx1ZShwY2llLT5wZXJzdCwgMSk7CisgICAgbWRl
bGF5KFBFUlNUX0RFTEFZX1VTKTsKK30KKwogc3RhdGljIGlubGluZSB2b2lkIG10NzYyMV9jb250
cm9sX2Fzc2VydChzdHJ1Y3QgbXQ3NjIxX3BjaWVfcG9ydCAqcG9ydCkKIHsKIAl1MzIgY2hpcF9y
ZXZfaWQgPSBydF9zeXNjX3IzMihNVDc2MjFfQ0hJUF9SRVZfSUQpOwpAQCAtMzQ0LDYgKzM2Mywx
MiBAQCBzdGF0aWMgaW50IG10NzYyMV9wY2llX3BhcnNlX2R0KHN0cnVjdCBtdDc2MjFfcGNpZSAq
cGNpZSkKIAlzdHJ1Y3QgcmVzb3VyY2UgcmVnczsKIAlpbnQgZXJyOwogCisgICAgcGNpZS0+cGVy
c3QgPSBkZXZtX2dwaW9kX2dldChkZXYsICJwZXJzdCIsIEdQSU9EX09VVF9ISUdIKTsKKyAgICBp
ZiAoSVNfRVJSKHBjaWUtPnBlcnN0KSkgeworICAgICAgICBkZXZfZXJyKGRldiwgImZhaWxlZCB0
byBnZXQgZ3BpbyBwZXJzdFxuIik7CisgICAgICAgIHJldHVybiAtRVBST0JFX0RFRkVSOworICAg
IH0KKwogCWVyciA9IG9mX2FkZHJlc3NfdG9fcmVzb3VyY2Uobm9kZSwgMCwgJnJlZ3MpOwogCWlm
IChlcnIpIHsKIAkJZGV2X2VycihkZXYsICJtaXNzaW5nIFwicmVnXCIgcHJvcGVydHlcbiIpOwpA
QCAtMzg0LDU2ICs0MDksNDEgQEAgc3RhdGljIGludCBtdDc2MjFfcGNpZV9pbml0X3BvcnQoc3Ry
dWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiAJc3RydWN0IG10NzYyMV9wY2llICpwY2llID0g
cG9ydC0+cGNpZTsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2llLT5kZXY7CiAJdTMyIHNsb3Qg
PSBwb3J0LT5zbG90OwotCXUzMiB2YWwgPSAwOwogCWludCBlcnI7CiAKLQkvKgotCSAqIEFueSBN
VDc2MjEgUmFsaW5rIHBjaWUgY29udHJvbGxlciB0aGF0IGRvZXNuJ3QgaGF2ZSAweDAxMDEgYXQK
LQkgKiB0aGUgZW5kIG9mIHRoZSBjaGlwX2lkIGhhcyBpbnZlcnRlZCBQQ0kgcmVzZXRzLgotCSAq
LwotCW10NzYyMV9yZXNldF9wb3J0KHBvcnQpOwotCi0JdmFsID0gcmVhZF9jb25maWcocGNpZSwg
c2xvdCwgUENJRV9GVFNfTlVNKTsKLQlkZXZfaW5mbyhkZXYsICJQb3J0ICVkIE5fRlRTID0gJXhc
biIsICh1bnNpZ25lZCBpbnQpdmFsLCBzbG90KTsKLQogCWVyciA9IHBoeV9pbml0KHBvcnQtPnBo
eSk7CiAJaWYgKGVycikgewogCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0byBpbml0aWFsaXplIHBv
cnQlZCBwaHlcbiIsIHNsb3QpOwotCQlnb3RvIGVycl9waHlfaW5pdDsKKwkJcmV0dXJuIGVycjsK
IAl9CiAKIAllcnIgPSBwaHlfcG93ZXJfb24ocG9ydC0+cGh5KTsKIAlpZiAoZXJyKSB7CiAJCWRl
dl9lcnIoZGV2LCAiZmFpbGVkIHRvIHBvd2VyIG9uIHBvcnQlZCBwaHlcbiIsIHNsb3QpOwotCQln
b3RvIGVycl9waHlfb247Ci0JfQotCi0JaWYgKChwY2llX3BvcnRfcmVhZChwb3J0LCBSQUxJTktf
UENJX1NUQVRVUykgJiBQQ0lFX1BPUlRfTElOS1VQKSA9PSAwKSB7Ci0JCWRldl9lcnIoZGV2LCAi
cGNpZSVkIG5vIGNhcmQsIGRpc2FibGUgaXQgKFJTVCAmIENMSylcbiIsIHNsb3QpOwotCQltdDc2
MjFfY29udHJvbF9hc3NlcnQocG9ydCk7Ci0JCXBvcnQtPmVuYWJsZWQgPSBmYWxzZTsKLQkJZXJy
ID0gLUVOT0RFVjsKLQkJZ290byBlcnJfbm9fbGlua191cDsKKwkJcmV0dXJuIGVycjsKIAl9CiAK
IAlwb3J0LT5lbmFibGVkID0gdHJ1ZTsKIAogCXJldHVybiAwOwotCi1lcnJfbm9fbGlua191cDoK
LQlwaHlfcG93ZXJfb2ZmKHBvcnQtPnBoeSk7Ci1lcnJfcGh5X29uOgotCXBoeV9leGl0KHBvcnQt
PnBoeSk7Ci1lcnJfcGh5X2luaXQ6Ci0JcmV0dXJuIGVycjsKIH0KIAogc3RhdGljIHZvaWQgbXQ3
NjIxX3BjaWVfaW5pdF9wb3J0cyhzdHJ1Y3QgbXQ3NjIxX3BjaWUgKnBjaWUpCiB7CiAJc3RydWN0
IGRldmljZSAqZGV2ID0gcGNpZS0+ZGV2OwogCXN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0ICpwb3J0
LCAqdG1wOworCXUzMiB2YWwgPSAwOwogCWludCBlcnI7CiAKKwlsaXN0X2Zvcl9lYWNoX2VudHJ5
KHBvcnQsICZwY2llLT5wb3J0cywgbGlzdCkKKyAgICAgICAgbXQ3NjIxX2NvbnRyb2xfYXNzZXJ0
KHBvcnQpOworCisgICAgcnRfc3lzY19tMzIoUEVSU1RfTU9ERV9NQVNLLCBQRVJTVF9NT0RFX0dQ
SU8sIE1UNzYyMV9HUElPX01PREUpOworICAgIG10NzYyMV9wZXJzdF9ncGlvX3BjaWVfYXNzZXJ0
KHBjaWUpOworCisJbGlzdF9mb3JfZWFjaF9lbnRyeShwb3J0LCAmcGNpZS0+cG9ydHMsIGxpc3Qp
CisgICAgICAgIG10NzYyMV9jb250cm9sX2RlYXNzZXJ0KHBvcnQpOworCiAJbGlzdF9mb3JfZWFj
aF9lbnRyeV9zYWZlKHBvcnQsIHRtcCwgJnBjaWUtPnBvcnRzLCBsaXN0KSB7CiAJCXUzMiBzbG90
ID0gcG9ydC0+c2xvdDsKIApAQCAtNDQxLDcgKzQ1MSwxMCBAQCBzdGF0aWMgdm9pZCBtdDc2MjFf
cGNpZV9pbml0X3BvcnRzKHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSkKIAkJaWYgKGVycikgewog
CQkJZGV2X2VycihkZXYsICJJbml0aWF0aW5nIHBvcnQgJWQgZmFpbGVkXG4iLCBzbG90KTsKIAkJ
CWxpc3RfZGVsKCZwb3J0LT5saXN0KTsKLQkJfQorCQl9IGVsc2UgeworCSAgICAgICAgdmFsID0g
cmVhZF9jb25maWcocGNpZSwgc2xvdCwgUENJRV9GVFNfTlVNKTsKKwkgICAgICAgIGRldl9pbmZv
KGRldiwgIlBvcnQgJWQgTl9GVFMgPSAleFxuIiwgc2xvdCwgKHVuc2lnbmVkIGludCl2YWwpOwor
ICAgICAgICB9CiAJfQogCiAJcmVzZXRfY29udHJvbF9hc3NlcnQocGNpZS0+cnN0KTsKQEAgLTQ1
MSwzNyArNDY0LDMyIEBAIHN0YXRpYyB2b2lkIG10NzYyMV9wY2llX2luaXRfcG9ydHMoc3RydWN0
IG10NzYyMV9wY2llICpwY2llKQogCXJ0X3N5c2NfbTMyKFBDSUVfQ0xLX0dFTl9ESVMsIFBDSUVf
Q0xLX0dFTl9FTiwgUkFMSU5LX1BDSUVfQ0xLX0dFTik7CiAJbXNsZWVwKDUwKTsKIAlyZXNldF9j
b250cm9sX2RlYXNzZXJ0KHBjaWUtPnJzdCk7CisKKyAgICBtdDc2MjFfcGVyc3RfZ3Bpb19wY2ll
X2RlYXNzZXJ0KHBjaWUpOworCisJbGlzdF9mb3JfZWFjaF9lbnRyeShwb3J0LCAmcGNpZS0+cG9y
dHMsIGxpc3QpIHsKKwkJdTMyIHNsb3QgPSBwb3J0LT5zbG90OworCisJICAgIGlmICgocGNpZV9w
b3J0X3JlYWQocG9ydCwgUkFMSU5LX1BDSV9TVEFUVVMpICYgUENJRV9QT1JUX0xJTktVUCkgPT0g
MCkgeworCQkgICAgZGV2X2VycihkZXYsICJwY2llJWQgbm8gY2FyZCwgZGlzYWJsZSBpdCAoUlNU
ICYgQ0xLKVxuIiwgc2xvdCk7CisgICAgICAgICAgICBwaHlfcG93ZXJfb2ZmKHBvcnQtPnBoeSk7
CisJCSAgICBtdDc2MjFfY29udHJvbF9hc3NlcnQocG9ydCk7CisJCSAgICBwb3J0LT5lbmFibGVk
ID0gZmFsc2U7CisgICAgICAgIH0gZWxzZSB7CisJICAgICAgICAvKiBlbmFibGUgcGNpZSBpbnRl
cnJ1cHQgKi8KKwkgICAgICAgIHZhbCA9IHBjaWVfcmVhZChwY2llLCBSQUxJTktfUENJX1BDSU1T
S19BRERSKTsKKwkgICAgICAgIHZhbCB8PSBQQ0lFX1BPUlRfSU5UX0VOKHNsb3QpOworCSAgICAg
ICAgcGNpZV93cml0ZShwY2llLCB2YWwsIFJBTElOS19QQ0lfUENJTVNLX0FERFIpOworICAgICAg
ICB9CisJfQogfQogCi1zdGF0aWMgaW50IG10NzYyMV9wY2llX2VuYWJsZV9wb3J0KHN0cnVjdCBt
dDc2MjFfcGNpZV9wb3J0ICpwb3J0KQorc3RhdGljIHZvaWQgbXQ3NjIxX3BjaWVfZW5hYmxlX3Bv
cnQoc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiB7CiAJc3RydWN0IG10NzYyMV9wY2ll
ICpwY2llID0gcG9ydC0+cGNpZTsKIAl1MzIgc2xvdCA9IHBvcnQtPnNsb3Q7CiAJdTMyIG9mZnNl
dCA9IE1UNzYyMV9QQ0lFX09GRlNFVCArIChzbG90ICogTVQ3NjIxX05FWFRfUE9SVCk7CiAJdTMy
IHZhbDsKLQlpbnQgZXJyOwotCi0JLyogYXNzZXJ0IHBvcnQgUEVSU1RfTiAqLwotCXZhbCA9IHBj
aWVfcmVhZChwY2llLCBSQUxJTktfUENJX1BDSUNGR19BRERSKTsKLQl2YWwgfD0gUENJRV9QT1JU
X1BFUlNUKHNsb3QpOwotCXBjaWVfd3JpdGUocGNpZSwgdmFsLCBSQUxJTktfUENJX1BDSUNGR19B
RERSKTsKLQotCS8qIGRlLWFzc2VydCBwb3J0IFBFUlNUX04gKi8KLQl2YWwgPSBwY2llX3JlYWQo
cGNpZSwgUkFMSU5LX1BDSV9QQ0lDRkdfQUREUik7Ci0JdmFsICY9IH5QQ0lFX1BPUlRfUEVSU1Qo
c2xvdCk7Ci0JcGNpZV93cml0ZShwY2llLCB2YWwsIFJBTElOS19QQ0lfUENJQ0ZHX0FERFIpOwot
Ci0JLyogMTAwbXMgdGltZW91dCB2YWx1ZSBzaG91bGQgYmUgZW5vdWdoIGZvciBHZW4xIHRyYWlu
aW5nICovCi0JZXJyID0gcmVhZGxfcG9sbF90aW1lb3V0KHBvcnQtPmJhc2UgKyBSQUxJTktfUENJ
X1NUQVRVUywKLQkJCQkgdmFsLCAhISh2YWwgJiBQQ0lFX1BPUlRfTElOS1VQKSwKLQkJCQkgMjAs
IDEwMCAqIFVTRUNfUEVSX01TRUMpOwotCWlmIChlcnIpCi0JCXJldHVybiAtRVRJTUVET1VUOwot
Ci0JLyogZW5hYmxlIHBjaWUgaW50ZXJydXB0ICovCi0JdmFsID0gcGNpZV9yZWFkKHBjaWUsIFJB
TElOS19QQ0lfUENJTVNLX0FERFIpOwotCXZhbCB8PSBQQ0lFX1BPUlRfSU5UX0VOKHNsb3QpOwot
CXBjaWVfd3JpdGUocGNpZSwgdmFsLCBSQUxJTktfUENJX1BDSU1TS19BRERSKTsKIAogCS8qIG1h
cCAyRyBERFIgcmVnaW9uICovCiAJcGNpZV93cml0ZShwY2llLCBQQ0lFX0JBUl9NQVBfTUFYIHwg
UENJRV9CQVJfRU5BQkxFLApAQCAtNDkyLDggKzUwMCw2IEBAIHN0YXRpYyBpbnQgbXQ3NjIxX3Bj
aWVfZW5hYmxlX3BvcnQoc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiAJLyogY29uZmln
dXJlIGNsYXNzIGNvZGUgYW5kIHJldmlzaW9uIElEICovCiAJcGNpZV93cml0ZShwY2llLCBQQ0lF
X0NMQVNTX0NPREUgfCBQQ0lFX1JFVklTSU9OX0lELAogCQkgICBvZmZzZXQgKyBSQUxJTktfUENJ
X0NMQVNTKTsKLQotCXJldHVybiAwOwogfQogCiBzdGF0aWMgdm9pZCBtdDc2MjFfcGNpZV9lbmFi
bGVfcG9ydHMoc3RydWN0IG10NzYyMV9wY2llICpwY2llKQpAQCAtNTA2LDExICs1MTIsNyBAQCBz
dGF0aWMgdm9pZCBtdDc2MjFfcGNpZV9lbmFibGVfcG9ydHMoc3RydWN0IG10NzYyMV9wY2llICpw
Y2llKQogCiAJbGlzdF9mb3JfZWFjaF9lbnRyeShwb3J0LCAmcGNpZS0+cG9ydHMsIGxpc3QpIHsK
IAkJaWYgKHBvcnQtPmVuYWJsZWQpIHsKLQkJCWlmIChtdDc2MjFfcGNpZV9lbmFibGVfcG9ydChw
b3J0KSkgewotCQkJCWRldl9lcnIoZGV2LCAiZGUtYXNzZXJ0IHBvcnQgJWQgUEVSU1RfTlxuIiwK
LQkJCQkJcG9ydC0+c2xvdCk7Ci0JCQkJY29udGludWU7Ci0JCQl9CisJCQltdDc2MjFfcGNpZV9l
bmFibGVfcG9ydChwb3J0KTsKIAkJCWRldl9pbmZvKGRldiwgIlBDSUUlZCBlbmFibGVkXG4iLCBz
bG90KTsKIAkJCW51bV9zbG90c19lbmFibGVkKys7CiAJCX0KLS0gCjIuNy40Cgo=
--0000000000009934be058a92bbac
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--0000000000009934be058a92bbac--

