Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C05AD27574
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 07:27:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2275F872FA;
	Thu, 23 May 2019 05:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id og7b+GLdzu9r; Thu, 23 May 2019 05:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B22EE872FD;
	Thu, 23 May 2019 05:27:03 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 00F7B1BF847
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 May 2019 05:27:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F03F2872FA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 May 2019 05:27:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VD0S4yYXhYTD
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 May 2019 05:27:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C8896872EA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 May 2019 05:27:00 +0000 (UTC)
Received: by mail-oi1-f177.google.com with SMTP id u199so3441232oie.5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 22 May 2019 22:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/98FKa46MLsVrGipm5pn0ZPMvL2xmUZ3+RFGTpVB00A=;
 b=UAPydCnL7VXm2WaURYPSwgjaNGRkwL2yb1Ou3Uwz4jw6VmfQF+ANv74WJ6jWvzyobT
 giv4A1WSHGPtSGydQojbzvwgmNooTwfWcGE5/p8uf5+AJbwDyNjvgWFUe9idgORcfb8h
 SzHhlJP/XCkYQd8/K8wHuisvR9gpRrC3Pix1TRz4ALjVU/tZNJNLyiindkC4xld0pNMD
 cMeBUwDcuTiznkcbeh1uromHtPiS3C5d1HyHsdKvlGoCBnTUne65ex8BmTajbgv0rrvC
 5vevXTlmnbBTqeetkBiUn85JeRsLdU3ecLMSajbkLYKSqVCIUl/kFjmEPIjp2bEpNiVa
 Lynw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/98FKa46MLsVrGipm5pn0ZPMvL2xmUZ3+RFGTpVB00A=;
 b=m8iTT/4gSBzN8oLnLh/9S8nq72tA4ooF5bpuL7iLT3SMTWM9INo0naUL8OsdntwOV4
 PS9k5kaIcTIAUeikRCzRXwl0YrK1T/BuG6FIEa0BUjSJPfodjL7+WjPzVnjqqwDvBh6j
 qbaM18S7X54QWdyMLvi4YCRyNrPRCUfv/0J4GOSsRyPt5eX+4cu6BMmlZCEasHdVjszX
 nEKoIwXS4wYN8fOnOEJorJiw/AHjcBK4N/Gc0YlZabiB6tKQkTkPb7eRujZUt8pichfP
 NA2xGtHcSR8Ry6WtQS11cTdwrcotYK7Wk2HfhpXckeZG+jZpfdL2x1MitsL/EdrNBZAt
 myRw==
X-Gm-Message-State: APjAAAVRfOSUMb4WAQC+9Eq2V03dAhknQ87Qu3N/JpFWpEbjCWq4gvXz
 N78us0AOdsvxYH+v8pqtbGu0y25bQq44yGaaJnA=
X-Google-Smtp-Source: APXvYqw4hoWD6kZjL+IyTtRkTm+20HJLJ3lHIv71eVFrIRubdIcEP0PoqC72N/M7b+It9JXEj5h1uEY/uNFHU6BbUXI=
X-Received: by 2002:aca:a88c:: with SMTP id r134mr1601279oie.44.1558589219876; 
 Wed, 22 May 2019 22:26:59 -0700 (PDT)
MIME-Version: 1.0
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
 <CAMhs-H-Js2wiF5yH3pB5bFq9SE1X17OovsXtYuNH+obe0owknw@mail.gmail.com>
 <5a7dc59b-f9ef-beab-7221-231f64716d5a@kernel.org>
 <CAMhs-H-8EQPPy0vMFCG-PKu3RLz4_d0ucO6bCgMCfMuD7ZYRSg@mail.gmail.com>
 <a2f6ee9c-dc4e-a7e7-8723-880a3472e9ba@kernel.org>
In-Reply-To: <a2f6ee9c-dc4e-a7e7-8723-880a3472e9ba@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Thu, 23 May 2019 07:26:48 +0200
Message-ID: <CAMhs-H8der72iXY0NFhXLUyTHvsBZ3t5VUagfgiO4CwuXhAXKw@mail.gmail.com>
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


On Thu, May 23, 2019 at 4:11 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 22/5/19 4:27 pm, Sergio Paracuellos wrote:
> [snip]
> > There are some big changes between 4.20 and 5.x. One is the use of PERST_N
> > instead of using gpio. This PERT_N stuff is used now on enable ports
> > assuming the
> > link of PCI is properly detected after enabling the phy. And it seems
> > it is not according to
> > your dmesg traces. The previous 4.20 code used gpio before this was done.
> >
> > This code is the one I am referring:
> >
> > /* Use GPIO control instead of PERST_N */
> > *(unsigned int *)(0xbe000620) |= BIT(19) | BIT(8) | BIT(7); // set DATA
> > mdelay(1000);
>
> I have been looking closely at those, wondering why the old code
> drove that PERST line as a GPIO instead of using the built-in behavior.
> (I have ignored bits 7 and 8 here since they are control of UART 3)

Yes, this was also at first one of my big concerns so I tried to change into
to use builtin behaviour (which is much more cleaner) and when the
code was tested
it worked. It seems it is not valid for every board.

>
>
> > I assume reset lines on your device tree are properly set up which is
> > other of the big changes here: use
> > reset lines instead of that hardcoding stuff. Also, the
> > mt7621_reset_port routine is also using msleep(100)
> > but maybe you can try a bigger value and change it into a mdelay, to
> > see if that changes anything.
>
> I see the reset line configuration in the pcie section of mt7621.dtsi,
> is there any others absolutely required here?  I couldn't see the
> gbpc1.dts devicetree do anything else with pcie - othe than enable it.
> My device tree for the EX15 is similar in that regard.
>
> I tried a couple of things with interesting results.
>
> 1. I made sure that the PERST_N line is set for PCIe operation (not GPIO).
>     I forced it with:
>
>         *(unsigned int *)(0xbe000060) &= ~(0x3 << 10);
>
>     I checked bits 10 and 11 at kernel PCI init and they were 00 anyway.
>     So PERST_N was definitely in PCIe reset mode. No change in behavior,
>
>
> 2. I forced a GPIO style reset of that PERST line (using GPIO19) and got
>     the following result on kernel boot:
>
>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>      mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>      mt7621-pci 1e140000.pcie: Initiating port 1 failed
>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>      mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>      mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>      mt7621-pci 1e140000.pcie: Initiating port 2 failed
>      mt7621-pci 1e140000.pcie: de-assert port 0 PERST_N

This line seems to be the problem. When ports are init, (and with your
changes seems the are
init properly), the ports with pcie link are stored into a list to be
enabled afterwards. This code is
located into 'mt7621_pcie_enable_ports' which call simple
'mt7621_pcie_enable_port' to enable each port
on the list. In this process it uses the PERS_N built-in register
deasserting and asserting it. If enabling fails
(and this is ypour case now) the port is removed from the list and it
is not properly set up. You should try to
comment this code:

/* assert port PERST_N */
val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
val |= PCIE_PORT_PERST(slot);
pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);

/* de-assert port PERST_N */
val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
val &= ~PCIE_PORT_PERST(slot);
pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);

/* 100ms timeout value should be enough for Gen1 training */
err = readl_poll_timeout(port->base + RALINK_PCI_STATUS,
val, !!(val & PCIE_PORT_LINKUP),
20, 100 * USEC_PER_MSEC);
if (err)
return -ETIMEDOUT;

because on enabling, it seems it is getting ETIMEOUT and hence the
message '  mt7621-pci 1e140000.pcie: de-assert port 0 PERST_N'.
Commenting
this code should end up into a properly configured pci?

>      mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
>      mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
>      pci_bus 0000:00: root bus resource [io  0xffffffff]
>      pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
>      pci_bus 0000:00: root bus resource [bus 00-ff]
>
> And the system continued on to fully boot. So it looks like it thinks
> pcie0 is active. Better, but the PCI bus probe didn't find any of the
> devices it should have.

Yes, that seems what is happening because of my explanation above.

>
> I inserted the quick hack code to do this at the top of mt7621_pcie_init_ports()
> and it looked like this:
>
>          /* Force PERST PCIe line into GPIO mode */
>          *(unsigned int *)(0xbe000060) &= ~(0x3 << 10);
>          *(unsigned int *)(0xbe000060) |=  BIT(10);
>          mdelay(100);
>
>          *(unsigned int *)(0xbe000600) |= BIT(19); // use GPIO19 (PERST_N/)
>          mdelay(100);
>          *(unsigned int *)(0xbe000620) &= ~(BIT(19)); // clear DATA
>          mdelay(1000);
>
>          /* Use GPIO control instead of PERST_N */
>          *(unsigned int *)(0xbe000620) |= BIT(19); // set DATA
>          mdelay(1000);
>
>

I really hate the gpio way of doing this. If this works we have to
think in how to achieve this in a cleaner way :))

> Regards
> Greg

Thanks for your effort in this.

Best regards,
    Sergio Paracuellos
>
>
> > Other big change is to use the new phy driver but I think the problem
> > seems to be related with resets.
> >
> >>
> >> Regards
> >> Greg
> >
> > Please, don't hesitate to ask me whatever you need to.
> >
> > Hope this helps.
> >
> > Best regards,
> >      Sergio Paracuellos
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
