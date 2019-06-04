Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A453533E2A
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 07:06:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D9FE896EE;
	Tue,  4 Jun 2019 05:06:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hcdL5K8zXaBu; Tue,  4 Jun 2019 05:06:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7B7A4896C8;
	Tue,  4 Jun 2019 05:06:50 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B43F01BF2BD
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 05:06:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AF72B872CE
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 05:06:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N-ZxpBNDjSNL
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 05:06:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D59CD8727B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 05:06:47 +0000 (UTC)
Received: by mail-ot1-f42.google.com with SMTP id r10so18369610otd.4
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 03 Jun 2019 22:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gvvNMo7cW+209y0Q63qin0rVAKH+urBd/H1+9BlYxDw=;
 b=JLjCAAfo5L/DpTi2PzKlR+W7v6T42YIsl2b/VdCFqoN7IrM8zcMuIbBNG/HnwTbysc
 cFPdqHwy5Zt4QOGpMDVW+C5UUx7Xmlxmhw0wp/14ECW/tKEZITvLOcVqPfOFr0aqqdNz
 kJ/HlFPeghUyOpqUeuXqzHXpZK7dMGrg2A66TiMaw0PDzQiGhUYM86uFWHDRJ8wF3EUc
 mC2lrhVG9dZI2XmapPW2ff098qTd1tl6m51gw/Kr3aW5+IBQ7Gn1G6eTU/GYOjcz0FkY
 WrVZIKm44uUrtbsAOWb5rn5Yh7ZC8hwIU7modc+mi2FdIk6tHdGFWSF+T3vkkYX8smEk
 ICJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gvvNMo7cW+209y0Q63qin0rVAKH+urBd/H1+9BlYxDw=;
 b=Qgjqz0xzthPfO3G9o3q6Aw1gxZAGxR2Ry3QOQQHj5APIIY0gEALyvl8wwCAVzjE2hD
 PHf8NnBspWi/qCAHtJEMwHTNL2X5ZVvl6EimQ2Apmh+hxSm6Xrg/ajktBD7yUraPIo0n
 ZtGYD2TWnzNFpychHl6e7LXXEroQWQJjqjZV/L/JiG/HzsenUP3EetGfc+urK2SuJgv2
 Jpq2wsNsoap9zBYenr16avlkykYE7rgGmB6y0AkWMxAwr83R3GBdlq8G2AS+QM/TG4ru
 t+yR5naryyd/IvOQRBg6Be60B+5JkkS8iAgYEE/bPoveCakt/RJ7F5ykTA0gfFtwle4J
 t18Q==
X-Gm-Message-State: APjAAAUOxn8YaUMeXG/iYz6wJt+b/NdhDsllmSPUXs01iLm0CnBTDbpe
 +TYNRnn34Arhc8X2keu4++ef46kqv01TyWCPTCjsQv58
X-Google-Smtp-Source: APXvYqxdFVHi2ratnlO1obgKSsLXgZmEtFhRwo75fNa2xJJ+StHyfGY7PCDhkFvSSh5OijrI19V9fzYFMP938dayySI=
X-Received: by 2002:a9d:245:: with SMTP id 63mr3893060otb.321.1559624807085;
 Mon, 03 Jun 2019 22:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
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
 <CAMhs-H_z-8mFrYHPVOPhRRn1P9OXvjSf0jssodqOLs8AQQE+AA@mail.gmail.com>
 <8a54ad56-75c9-c4a4-805c-a246dabbb6ca@kernel.org>
In-Reply-To: <8a54ad56-75c9-c4a4-805c-a246dabbb6ca@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 4 Jun 2019 07:06:35 +0200
Message-ID: <CAMhs-H_Zm4VCeJyniSCFgySXbJOOijYrxd-yJpkYjUdjMa+d5g@mail.gmail.com>
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

On Tue, Jun 4, 2019 at 3:31 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 4/6/19 5:59 am, Sergio Paracuellos wrote:
> > On Mon, Jun 3, 2019 at 2:32 PM Greg Ungerer <gerg@kernel.org> wrote:
> >> On 3/6/19 3:34 pm, Sergio Paracuellos wrote:
> >>> On Mon, Jun 3, 2019 at 3:26 AM Greg Ungerer <gerg@kernel.org> wrote:
> >>>> On 31/5/19 10:37 pm, Sergio Paracuellos wrote:
> >>>>> On Thu, May 30, 2019 at 3:46 AM Greg Ungerer <gerg@kernel.org> wrote:
> >>>>>> On 30/5/19 10:44 am, Greg Ungerer wrote:
> >>>>>>> On 29/5/19 6:08 pm, Sergio Paracuellos wrote:
> >>>>>>> [snip]
> >>> Can you try to read and set BIT(10) instead of write it directly?:
> >>>
> >>> Instead of:
> >>>
> >>> rt_sysc_w32(PERST_MODE_GPIO, MT7621_GPIO_MODE);
> >>
> >> Oh, yeah, that is definitely not going to work. There is a bunch of
> >> other GPIO control bits in there for other hardware blocks. Would
> >> explain the broken NAND flash behavior...
> >
> > Yes, my bad here. Sometimes is better to go to sleep :)).
> >>
> >>> Do:
> >>>
> >>> u32 val = rt_sysc_r32(MT7621_GPIO_MODE);
> >>> val |= PERST_MODE_GPIO;
> >>> rt_sysc_w32(val, MT7621_GPIO_MODE);
> >>
> >> Much better result with that. Though ultimately it should clear
> >> bits 10 and 11 (both are PERST_MODE bits) and then OR in BIT(10).
> >
> > Ok, so the following should do the trick:
> >
> > rt_sysc_m32(PERST_MODE_MASK, PERST_MODE_GPIO, MT7621_GPIO_MODE);
> >
> > with PERST_MODE_MASK defined as:
> >
> > #define PERST_MODE_MASK         GENMASK(11, 10)
> >
> > (patch attached with this changes)
>
> I have mostly good news and a little bad news :-)
>
> I should have tested more thoroughly last night. Anyway, the new patch
> works, even the IRQ of the PCI device. My Wifi PCI device works just
> as well now as it did with the 4.20 pci-mt7621.c/pci-mt7621-phy.c.
> I still get the lines:
>
> pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> pcieport 0000:00:00.0: enabling device (0004 -> 0006)
>
> However that is referring to the root host PCI device (0000:00:00.0),
> not my PCI peripheral device (which is 0000:01:00.0). It is actually
> probed and working properly.
>
> That is the good news.

That makes sense :). Good news are always good news even bads are
coming also :))

>
>
> > It would be also good to know what happen if you comment the following lines:
> >
> > pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
> > pcie_write(pcie, RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);
> >
> > Are they really needed?
>
> Had no effect for me. Everything worked the same with or without
> those lines as far as I could tell.

Ok, I won't include them when I send a clean patch series with all of
this changes.

>
>
> [snip]
> > Only one step more to get this properly working.
>
> Ok, now the bad news.
>
> I often get the boot hanging at various points in the PCI
> initialization, setup and probing.
>
> For example sometimes it hangs with boot up to:
>
>    mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>
>
> Then sometimes it hangs at:
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
>

It is weird, here it is not initializing any port... All of them are disabled.

>
> And then I also see it hang up to:
>
>    mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>    mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>    mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>    mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>    mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>    mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>    mt7621-pci 1e140000.pcie: PCIE0 enabled
>    mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
>    mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
>    pci_bus 0000:00: root bus resource [io  0xffffffff]
>    pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
>    pci_bus 0000:00: root bus resource [bus 00-ff]
>    pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
>
>
> It happens on cold or warm boots. Sometimes it boots up all the
> way and everything works perfectly.

Can you try to change all the msleeps of the code driver in favour of
mdelay's? Looks like
some timing problem.

If it doesn't work, it would be great to have a full trace of working
4.20 and no working current 5.x series
version just to carefully compare them.

>
> I had perfect reliable boot and operation with linux-5.1 using the
> older 4.20 pci-mt7621.c and pci-mt7621-phy.c.

AFAICT, there is not pci-mt7621-phy.c in the v4.20, isn't it? Do you
mean you put also that
code into that version and compile them? Or are you just using "pci-mt7621.c"?

>
> Regards
> Greg
>
Thanks for your effort in this.

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
