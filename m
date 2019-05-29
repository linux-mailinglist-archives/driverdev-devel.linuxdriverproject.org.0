Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 016D52D758
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 10:09:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C41F7860CB;
	Wed, 29 May 2019 08:09:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hkggAI7pGz1X; Wed, 29 May 2019 08:09:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5A3FA85F83;
	Wed, 29 May 2019 08:09:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B24671BF384
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 May 2019 08:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8D68221B7
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 May 2019 08:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pCTSZS1cQYYB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 May 2019 08:08:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7973E2154C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 May 2019 08:08:55 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id s19so1140706otq.5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 May 2019 01:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PwC7Vr9G0hJWfv39IH2itq4NpT7m7P94Ib6sHJw2PCM=;
 b=iwWxjBJ4Dw6PVlaprwvEGTKzWJCHjukqEf7/HAHvm9ZY4yhbS8/CYRPjgmFshawEQY
 xndEqH0wo2940spTCEidtO+JNSd1fv0oJr8hdfon+0I7GZDPzV/9X/oyGPsmiiu1rItz
 r+NyNNAm8aRT+iSd1kScx87HCAhOiGplE6kZue97nrUsr9DGfbN7TN6bLx3dH7dV2Gsr
 2SwiSicD9VFkbOv9/WOgYPa5k4522WwArGh7A0FBDJom8Y+xcPPPhUX1axdwkV0xKGg4
 QZhXJnc1KNMcBXtlXm18ATmPrat2XDsf1vqwb2Revazn7ohySn7g9YUrsFB3sd4uAFOd
 3NGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PwC7Vr9G0hJWfv39IH2itq4NpT7m7P94Ib6sHJw2PCM=;
 b=lpEtntz7RC9aqGkzqP6GX8vfyTbHEDNFbhRRfIcCWJeqYtvId8dqKy6seETtiMZcma
 tm0kAhm75RFG5crxU8cqv6DJH5iyh9d+Zb/kEuBHbSJdcpWzobTAee8txS+SJrQGpebI
 pjLA+dvLskE7T4LZquSMFKeCqVIblTDZ9dYQHzDirDyBgd3pecEy/AaL8gZkJtk7HVfg
 QZyI1Be68un6VjFhA1OVUUzKBNcnouVrA/uCritXmu1S9d0rP0LnqSpWp1L2BkaMOyJ6
 wep96sfGbyRE3NdHUehlZjlsUAgS/vqRT7CCkYgr+4I/mHahKm4H+QXUBqSOhNVFFOPq
 whGQ==
X-Gm-Message-State: APjAAAVnq7+hY49VY0rnct47EUcA4ZW7ZLbYlf0VB47LJG5Lmmy+X8+p
 KLqOkVYmXC6X1FmLNHPPq8i4Mpt5Rw84jkATKv4=
X-Google-Smtp-Source: APXvYqwhttphbZ/kVv9RRYC/OoXL1eOhrSIq2mRP4v0WcAbMw2w2xQHLdtWNd/qn8qdgUw7462iSz8QquzSjOuDOgQQ=
X-Received: by 2002:a9d:6a14:: with SMTP id g20mr61207332otn.310.1559117334522; 
 Wed, 29 May 2019 01:08:54 -0700 (PDT)
MIME-Version: 1.0
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
 <CAMhs-H-Js2wiF5yH3pB5bFq9SE1X17OovsXtYuNH+obe0owknw@mail.gmail.com>
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
In-Reply-To: <7335025e-372d-c5bd-80ee-75b3e0c61249@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 29 May 2019 10:08:42 +0200
Message-ID: <CAMhs-H_zFUecOu95U-xekQ3Da5psbc6YdQttosCJbZi5vetKSw@mail.gmail.com>
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Greg Ungerer <gerg@kernel.org>
Content-Type: multipart/mixed; boundary="000000000000e3513b058a024a12"
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

--000000000000e3513b058a024a12
Content-Type: text/plain; charset="UTF-8"

Hi Greg,

On Wed, May 29, 2019 at 9:11 AM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 27/5/19 6:02 pm, Sergio Paracuellos wrote:
> > On Mon, May 27, 2019 at 9:29 AM Greg Ungerer <gerg@kernel.org> wrote:
> >> On 27/5/19 4:35 pm, Sergio Paracuellos wrote:
> >>> On Mon, May 27, 2019 at 6:37 AM Greg Ungerer <gerg@kernel.org> wrote:
> >>>> On 24/5/19 3:35 pm, Sergio Paracuellos wrote:
> >>>>> On Fri, May 24, 2019 at 2:35 AM Greg Ungerer <gerg@kernel.org> wrote:
> >>>>>> On 23/5/19 3:26 pm, Sergio Paracuellos wrote:
> >>>>>>> On Thu, May 23, 2019 at 4:11 AM Greg Ungerer <gerg@kernel.org> wrote:
> >>>>>>>> On 22/5/19 4:27 pm, Sergio Paracuellos wrote:
> >>>>>>>> [snip]
> >>>>>>>>> There are some big changes between 4.20 and 5.x. One is the use of PERST_N
> >>>>>>>>> instead of using gpio. This PERT_N stuff is used now on enable ports
> >>>>>>>>> assuming the
> >>>>>>>>> link of PCI is properly detected after enabling the phy. And it seems
> >>>>>>>>> it is not according to
> >>>>>>>>> your dmesg traces. The previous 4.20 code used gpio before this was done.
> >>>>>>>>>
> >>>>>>>>> This code is the one I am referring:
> >>>>>>>>>
> >>>>>>>>> /* Use GPIO control instead of PERST_N */
> >>>>>>>>> *(unsigned int *)(0xbe000620) |= BIT(19) | BIT(8) | BIT(7); // set DATA
> >>>>>>>>> mdelay(1000);
> >>>>>>>>
> >>>>>>>> I have been looking closely at those, wondering why the old code
> >>>>>>>> drove that PERST line as a GPIO instead of using the built-in behavior.
> >>>>>>>> (I have ignored bits 7 and 8 here since they are control of UART 3)
> >>>>>>>
> >>>>>>> Yes, this was also at first one of my big concerns so I tried to change into
> >>>>>>> to use builtin behaviour (which is much more cleaner) and when the
> >>>>>>> code was tested
> >>>>>>> it worked. It seems it is not valid for every board.
> >>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>> I assume reset lines on your device tree are properly set up which is
> >>>>>>>>> other of the big changes here: use
> >>>>>>>>> reset lines instead of that hardcoding stuff. Also, the
> >>>>>>>>> mt7621_reset_port routine is also using msleep(100)
> >>>>>>>>> but maybe you can try a bigger value and change it into a mdelay, to
> >>>>>>>>> see if that changes anything.
> >>>>>>>>
> >>>>>>>> I see the reset line configuration in the pcie section of mt7621.dtsi,
> >>>>>>>> is there any others absolutely required here?  I couldn't see the
> >>>>>>>> gbpc1.dts devicetree do anything else with pcie - othe than enable it.
> >>>>>>>> My device tree for the EX15 is similar in that regard.
> >>>>>>>>
> >>>>>>>> I tried a couple of things with interesting results.
> >>>>>>>>
> >>>>>>>> 1. I made sure that the PERST_N line is set for PCIe operation (not GPIO).
> >>>>>>>>         I forced it with:
> >>>>>>>>
> >>>>>>>>             *(unsigned int *)(0xbe000060) &= ~(0x3 << 10);
> >>>>>>>>
> >>>>>>>>         I checked bits 10 and 11 at kernel PCI init and they were 00 anyway.
> >>>>>>>>         So PERST_N was definitely in PCIe reset mode. No change in behavior,
> >>>>>>>>
> >>>>>>>>
> >>>>>>>> 2. I forced a GPIO style reset of that PERST line (using GPIO19) and got
> >>>>>>>>         the following result on kernel boot:
> >>>>>>>>
> >>>>>>>>          mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >>>>>>>>          mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>>>>>>          mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >>>>>>>>          mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >>>>>>>>          mt7621-pci 1e140000.pcie: Initiating port 1 failed
> >>>>>>>>          mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >>>>>>>>          mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >>>>>>>>          mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>>>>>>>          mt7621-pci 1e140000.pcie: Initiating port 2 failed
> >>>>>>>>          mt7621-pci 1e140000.pcie: de-assert port 0 PERST_N
> >>>>>>>
> >>>>>>> This line seems to be the problem. When ports are init, (and with your
> >>>>>>> changes seems the are
> >>>>>>> init properly), the ports with pcie link are stored into a list to be
> >>>>>>> enabled afterwards. This code is
> >>>>>>> located into 'mt7621_pcie_enable_ports' which call simple
> >>>>>>> 'mt7621_pcie_enable_port' to enable each port
> >>>>>>> on the list. In this process it uses the PERS_N built-in register
> >>>>>>> deasserting and asserting it. If enabling fails
> >>>>>>> (and this is ypour case now) the port is removed from the list and it
> >>>>>>> is not properly set up. You should try to
> >>>>>>> comment this code:
> >>>>>>>
> >>>>>>> /* assert port PERST_N */
> >>>>>>> val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> >>>>>>> val |= PCIE_PORT_PERST(slot);
> >>>>>>> pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> >>>>>>>
> >>>>>>> /* de-assert port PERST_N */
> >>>>>>> val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
> >>>>>>> val &= ~PCIE_PORT_PERST(slot);
> >>>>>>> pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
> >>>>>>>
> >>>>>>> /* 100ms timeout value should be enough for Gen1 training */
> >>>>>>> err = readl_poll_timeout(port->base + RALINK_PCI_STATUS,
> >>>>>>> val, !!(val & PCIE_PORT_LINKUP),
> >>>>>>> 20, 100 * USEC_PER_MSEC);
> >>>>>>> if (err)
> >>>>>>> return -ETIMEDOUT;
> >>>>>>>
> >>>>>>> because on enabling, it seems it is getting ETIMEOUT and hence the
> >>>>>>> message '  mt7621-pci 1e140000.pcie: de-assert port 0 PERST_N'.
> >>>>>>> Commenting
> >>>>>>> this code should end up into a properly configured pci?
> >>>>>>
> >>>>>> No, unfortunately it doesn't. It does show PCIE0 enabled now though:
> >>>>>
> >>>>> That is a surprise :(
> >>>>>
> >>>>>>
> >>>>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >>>>>> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >>>>>> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >>>>>> mt7621-pci 1e140000.pcie: Initiating port 1 failed
> >>>>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >>>>>> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >>>>>> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>>>>> mt7621-pci 1e140000.pcie: Initiating port 2 failed
> >>>>>> mt7621-pci 1e140000.pcie: PCIE0 enabled
> >>>>>> mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> >>>>>> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> >>>>>> pci_bus 0000:00: root bus resource [io  0xffffffff]
> >>>>>> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> >>>>>> pci_bus 0000:00: root bus resource [bus 00-ff]
> >>>>>
> >>>>>
> >>>>>>
> >>>>>> And again no devices are found on the PCI bus.
> >>>>>> (System did still boot too).
> >>>>>
> >>>>> Looking to your original trace of linux-4.20 working the init traces
> >>>>> are pretty much the same... I don't really know what could be
> >>>>> happening there. Root resources
> >>>>> are correct, virtual bridge seems to be detected, the next should be
> >>>>> to reconfigure resources of
> >>>>> the bridge and this is done by the pci kernel apis.
> >>>>>
> >>>>> Can you check that "mt7621_pcie_init_virtual_bridges" is getting link
> >>>>> up and configuring bridges
> >>>>> correctly?
> >>>>
> >>>> Yes, it does get link there. It sees pcie_link_status as 0x1, so its getting
> >>>> through that.
> >>>>
> >>>> I threw a bit of trace in to see where we end up losing the ability to
> >>>> read correct config data from slot 0 (my only valid slot). It gets to
> >>>> the "err_no_link_up:" label for port/slot 2 still being able to read config
> >>>> space, but then after executing the phy_power_off() and phy_exit()
> >>>> calls for that port/slot we can no longer read config for slot 0.
> >>>
> >>> Mmmm. I see. So phy instances for port 0 and 2 are different instances
> >>> of the phy, so it should not
> >>> have problems for the power_off function. Looking again to the version
> >>> which is in the 5.0 linux (but not in the last changes of
> >>> staging where no child nodes are being used) I can see the phy_exit
> >>> function is disabling the clock using PCIE_PORT_CLK_EN which is
> >>> defined as:
> >>>
> >>> #define PCIE_PORT_CLK_EN(x) BIT(24 + (x))
> >>>
> >>> On probe function index is being set to 0 for the port 2 also, instead
> >>> of 2 (which is the correct value). Just try to comment this line:
> >>>
> >>> rt_sysc_m32(PCIE_PORT_CLK_EN(instance->index), 0, RALINK_CLKCFG1);
> >>>
> >>> Does this enough to get the pci enumeration being done correctly?
> >>
> >> Yes, just that (and the gpio based reset hack) is enough to enumerate the bus.
> >
> > Ok, so this is problem shouldn't be present in the current staging and
> > linux tree at master where the
> > device tree is not using child nodes, which is the way to go.
>
> I cloned the staging tree from git.kernel.org and tried that.
> It didn't work any better, I had to patch pci-mt7621.c and
> pci-mt8721-phy.c in the same ways to get an almost working result.

That's weird. I'll check that.

>
>
> > I think we should add a gpio reset line in the device tree and use it
> > properly with
> > the gpio descriptor api. Maybe this is better for all the boards
> > instead of use the builtin stuff.
>
> Would seem to be the best approach.
>
>
> >>>> If I comment out the code in phy_power_off() and phy_exit() so they
> >>>> return doing nothing then I get further:
> >>>>
> >>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
> >>>> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
> >>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
> >>>> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
> >>>> mt7621-pci 1e140000.pcie: Initiating port 1 failed
> >>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
> >>>> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
> >>>> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
> >>>> mt7621-pci 1e140000.pcie: Initiating port 2 failed
> >>>> mt7621-pci 1e140000.pcie: PCIE0 enabled
> >>>> mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> >>>> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> >>>> pci_bus 0000:00: root bus resource [io  0xffffffff]
> >>>> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> >>>> pci_bus 0000:00: root bus resource [bus 00-ff]
> >>>> pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> >>>> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> >>>> pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
> >>>> pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
> >>>> pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
> >>>> pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
> >>>> pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
> >>>> pci 0000:00:00.0: BAR 7: no space for [io  size 0x1000]
> >>>> pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x1000]
> >>>> pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
> >>>> pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
> >>>> pci 0000:00:00.0: PCI bridge to [bus 01]
> >>>> pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
> >>>> pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
> >>>> pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> >>>> pcieport 0000:00:00.0: enabling device (0004 -> 0006)
> >>>>
> >>>>
> >>>> So devices found, but interrupt setup failed for some reason.
> >>>> I have an atheros PCIe WIFI device on that bus which is detected, but
> >>>> the interrupt failure means it still doesn't actually work.
> >>>
> >>> Nothing has changed about interrupts from linux 4.20 version to this.
> >>> It is returning -EINVAL
> >>> for some reason. Irq is set using  "of_irq_parse_and_map_pci" function.
> >>
> >> Not sure either why this would be different.
> >> I'll dig into that tomorrow too.
> >
> > Thanks, let me know any advance on this, please.
>
> I suspect that the bus or devices stop reading/writing valid data
> at some point in this initialization process. What I see is that
> dumping /sys/bus/pci/devices/0000:01:00.0/config on a running
> system shows:
>
>    00000000: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
>    00000010: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
>    00000020: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
>    ...
>
> But if I replace the PCI code again with that from 4.20 then
> I get a valid dump of the wifi card config space:
>
>    00000000: 8c 16 3c 00 06 00 10 00 00 00 80 02 00 00 00 00     ..<.............
>    00000010: 04 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00     ...`............
>    00000020: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................
>

I have added gpio consumer stuff and reorder a bit the code to be more
similar to 4.20.

I attach the patch. I have not try it to compile it, because my normal
environment is in another
computer and I am in the middle of moving from my current house and
don't have access to it, sorry.
So, please try this and let's see what happens.

> Regards
> Greg

Hope this helps.

Best regards,
    Sergio Paracuellos
>
>
> >> Regards
> >> Greg
> >
> > Best regards,
> >      Sergio Paracuellos
> >
> >>
> >>
> >>>> Regards
> >>>> Greg
> >>>
> >>> Best regards,
> >>>       Sergio Paracuellos
> >>>>
> >>>>
> >>>>>> I'll keep digging.
> >>>>>
> >>>>> Thanks, really appreciate it.
> >>>>>
> >>>>>>
> >>>>>> Thanks
> >>>>>> Greg
> >>>>>
> >>>>> Best regards,
> >>>>>        Sergio Paracuellos
> >>>>>
> >>>>>>
> >>>>>>
> >>>>>>>
> >>>>>>>>          mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> >>>>>>>>          mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> >>>>>>>>          pci_bus 0000:00: root bus resource [io  0xffffffff]
> >>>>>>>>          pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> >>>>>>>>          pci_bus 0000:00: root bus resource [bus 00-ff]
> >>>>>>>>
> >>>>>>>> And the system continued on to fully boot. So it looks like it thinks
> >>>>>>>> pcie0 is active. Better, but the PCI bus probe didn't find any of the
> >>>>>>>> devices it should have.
> >>>>>>>
> >>>>>>> Yes, that seems what is happening because of my explanation above.
> >>>>>>>
> >>>>>>>>
> >>>>>>>> I inserted the quick hack code to do this at the top of mt7621_pcie_init_ports()
> >>>>>>>> and it looked like this:
> >>>>>>>>
> >>>>>>>>              /* Force PERST PCIe line into GPIO mode */
> >>>>>>>>              *(unsigned int *)(0xbe000060) &= ~(0x3 << 10);
> >>>>>>>>              *(unsigned int *)(0xbe000060) |=  BIT(10);
> >>>>>>>>              mdelay(100);
> >>>>>>>>
> >>>>>>>>              *(unsigned int *)(0xbe000600) |= BIT(19); // use GPIO19 (PERST_N/)
> >>>>>>>>              mdelay(100);
> >>>>>>>>              *(unsigned int *)(0xbe000620) &= ~(BIT(19)); // clear DATA
> >>>>>>>>              mdelay(1000);
> >>>>>>>>
> >>>>>>>>              /* Use GPIO control instead of PERST_N */
> >>>>>>>>              *(unsigned int *)(0xbe000620) |= BIT(19); // set DATA
> >>>>>>>>              mdelay(1000);
> >>>>>>>>
> >>>>>>>>
> >>>>>>>
> >>>>>>> I really hate the gpio way of doing this. If this works we have to
> >>>>>>> think in how to achieve this in a cleaner way :))
> >>>>>>>
> >>>>>>>> Regards
> >>>>>>>> Greg
> >>>>>>>
> >>>>>>> Thanks for your effort in this.
> >>>>>>>
> >>>>>>> Best regards,
> >>>>>>>         Sergio Paracuellos
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>> Other big change is to use the new phy driver but I think the problem
> >>>>>>>>> seems to be related with resets.
> >>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>> Regards
> >>>>>>>>>> Greg
> >>>>>>>>>
> >>>>>>>>> Please, don't hesitate to ask me whatever you need to.
> >>>>>>>>>
> >>>>>>>>> Hope this helps.
> >>>>>>>>>
> >>>>>>>>> Best regards,
> >>>>>>>>>          Sergio Paracuellos
> >>>>>>>>>
> >>>>>>>
> >>>>>
> >>>
> >

--000000000000e3513b058a024a12
Content-Type: text/x-patch; charset="US-ASCII"; 
	name="0001-staging-mt7621-pci-use-perst-gpio-instead-of-builtin.patch"
Content-Disposition: attachment; 
	filename="0001-staging-mt7621-pci-use-perst-gpio-instead-of-builtin.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jw8y3q160>
X-Attachment-Id: f_jw8y3q160

RnJvbSBiN2QyNmU3Y2NhN2QzNTRkODNmYzIxN2FiMDRhMTc5MDE5ZTFhZDQ3IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBTZXJnaW8gUGFyYWN1ZWxsb3MgPHNlcmdpby5wYXJhY3VlbGxv
c0BnbWFpbC5jb20+CkRhdGU6IFdlZCwgMjkgTWF5IDIwMTkgMDk6NTg6MDcgKzAyMDAKU3ViamVj
dDogW1BBVENIXSBzdGFnaW5nOiBtdDc2MjEtcGNpOiB1c2UgcGVyc3QgZ3BpbyBpbnN0ZWFkIG9m
IGJ1aWx0aW4gcGVyc3QKClNvbWUgYm9hcmRzIG5lZWQgZ3BpbyBpbnN0ZWFkIG9mIGJ1aWx0aW4g
cGVyc3QuIFVzZSBncGlvIGZvciBhbGwKb2YgdGhlbSB3aGljaCB3YXMgdGhlIGFwcHJvYWNoIG9m
IHRoZSBvcmlnaW5hbCBjb2RlLgoKU2lnbmVkLW9mZi1ieTogU2VyZ2lvIFBhcmFjdWVsbG9zIDxz
ZXJnaW8ucGFyYWN1ZWxsb3NAZ21haWwuY29tPgotLS0KIGRyaXZlcnMvc3RhZ2luZy9tdDc2MjEt
ZHRzL210NzYyMS5kdHNpICB8ICAzICstCiBkcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLXBjaS9wY2kt
bXQ3NjIxLmMgfCA5OCArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0tLS0KIDIgZmlsZXMg
Y2hhbmdlZCwgNTEgaW5zZXJ0aW9ucygrKSwgNTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL210NzYyMS1kdHMvbXQ3NjIxLmR0c2kgYi9kcml2ZXJzL3N0YWdpbmcv
bXQ3NjIxLWR0cy9tdDc2MjEuZHRzaQppbmRleCAyODBlYzMzLi5hZWQyNDU4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLWR0cy9tdDc2MjEuZHRzaQorKysgYi9kcml2ZXJzL3N0
YWdpbmcvbXQ3NjIxLWR0cy9tdDc2MjEuZHRzaQpAQCAtMSw1ICsxLDUgQEAKICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9taXBzLWdpYy5oPgotCisjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvZ3Bpby9ncGlvLmg+CiAvIHsKIAkjYWRkcmVzcy1jZWxscyA9IDwxPjsKIAkj
c2l6ZS1jZWxscyA9IDwxPjsKQEAgLTQ2OCw2ICs0NjgsNyBAQAogCQkjYWRkcmVzcy1jZWxscyA9
IDwzPjsKIAkJI3NpemUtY2VsbHMgPSA8Mj47CiAKKwkJcGVyc3QtZ3BpbyA9IDwmZ3BpbyAxOSBH
UElPX0FDVElWRV9ISUdIPjsKIAkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKIAkJcGluY3Ry
bC0wID0gPCZwY2llX3BpbnM+OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbXQ3NjIx
LXBjaS9wY2ktbXQ3NjIxLmMgYi9kcml2ZXJzL3N0YWdpbmcvbXQ3NjIxLXBjaS9wY2ktbXQ3NjIx
LmMKaW5kZXggMDNkOTE5YS4uODQ2NDk4NSAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL210
NzYyMS1wY2kvcGNpLW10NzYyMS5jCisrKyBiL2RyaXZlcnMvc3RhZ2luZy9tdDc2MjEtcGNpL3Bj
aS1tdDc2MjEuYwpAQCAtMTcsNiArMTcsNyBAQAogCiAjaW5jbHVkZSA8bGludXgvYml0b3BzLmg+
CiAjaW5jbHVkZSA8bGludXgvZGVsYXkuaD4KKyNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVy
Lmg+CiAjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+CiAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+
CiAjaW5jbHVkZSA8bGludXgvb2YuaD4KQEAgLTc1LDEzICs3NiwxMyBAQAogI2RlZmluZSBSQUxJ
TktfUENJX1NUQVRVUwkJMHgwMDUwCiAKIC8qIFNvbWUgZGVmaW5pdGlvbiB2YWx1ZXMgKi8KKyNk
ZWZpbmUgUkFMSU5LX1BDSV9JT19NQVBfQkFTRSAgMHgxZTE2MDAwMAogI2RlZmluZSBQQ0lFX1JF
VklTSU9OX0lECQlCSVQoMCkKICNkZWZpbmUgUENJRV9DTEFTU19DT0RFCQkJKDB4NjA0MDAgPDwg
OCkKICNkZWZpbmUgUENJRV9CQVJfTUFQX01BWAkJR0VOTUFTSygzMCwgMTYpCiAjZGVmaW5lIFBD
SUVfQkFSX0VOQUJMRQkJCUJJVCgwKQogI2RlZmluZSBQQ0lFX1BPUlRfSU5UX0VOKHgpCQlCSVQo
MjAgKyAoeCkpCiAjZGVmaW5lIFBDSUVfUE9SVF9DTEtfRU4oeCkJCUJJVCgyNCArICh4KSkKLSNk
ZWZpbmUgUENJRV9QT1JUX1BFUlNUKHgpCQlCSVQoMSArICh4KSkKICNkZWZpbmUgUENJRV9QT1JU
X0xJTktVUAkJQklUKDApCiAKICNkZWZpbmUgUENJRV9DTEtfR0VOX0VOCQkJQklUKDMxKQpAQCAt
OTAsNiArOTEsOCBAQAogI2RlZmluZSBQQ0lFX0NMS19HRU4xX0VOCQkoQklUKDI3KSB8IEJJVCgy
NSkpCiAjZGVmaW5lIE1FTU9SWV9CQVNFCQkJMHgwCiAKKyNkZWZpbmUgUEVSU1RfREVMQVlfVVMg
ICAgICAgICAgMTAwMAorCiAvKioKICAqIHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0IC0gUENJZSBw
b3J0IGluZm9ybWF0aW9uCiAgKiBAYmFzZTogSS9PIG1hcHBlZCByZWdpc3RlciBiYXNlCkBAIC0x
MTksNiArMTIyLDcgQEAgc3RydWN0IG10NzYyMV9wY2llX3BvcnQgewogICogQG9mZnNldDogSU8g
LyBNZW1vcnkgb2Zmc2V0CiAgKiBAZGV2OiBQb2ludGVyIHRvIFBDSWUgZGV2aWNlCiAgKiBAcG9y
dHM6IHBvaW50ZXIgdG8gUENJZSBwb3J0IGluZm9ybWF0aW9uCisgKiBAcGVyc3Q6IGdwaW8gcmVz
ZXQKICAqIEByc3Q6IHBvaW50ZXIgdG8gcGNpZSByZXNldAogICovCiBzdHJ1Y3QgbXQ3NjIxX3Bj
aWUgewpAQCAtMTMyLDYgKzEzNiw3IEBAIHN0cnVjdCBtdDc2MjFfcGNpZSB7CiAJCXJlc291cmNl
X3NpemVfdCBpbzsKIAl9IG9mZnNldDsKIAlzdHJ1Y3QgbGlzdF9oZWFkIHBvcnRzOworICAgIHN0
cnVjdCBncGlvX2Rlc2MgKnBlcnN0OwogCXN0cnVjdCByZXNldF9jb250cm9sICpyc3Q7CiB9Owog
CkBAIC0xOTgsNiArMjAzLDE4IEBAIHN0YXRpYyB2b2lkIHdyaXRlX2NvbmZpZyhzdHJ1Y3QgbXQ3
NjIxX3BjaWUgKnBjaWUsIHVuc2lnbmVkIGludCBkZXYsCiAJcGNpZV93cml0ZShwY2llLCB2YWws
IFJBTElOS19QQ0lfQ09ORklHX0RBVEEpOwogfQogCitzdGF0aWMgdm9pZCBtdDc2MjFfcGVyc3Rf
Z3Bpb19wY2llX2Fzc2VydChzdHJ1Y3QgbXQ3NjIxX3BjaWUgKnBjaWUpCit7CisgICAgZ3Bpb2Rf
c2V0X3ZhbHVlKHBjaWUtPnBlcnN0LCAwKTsKKyAgICBtZGVsYXkoUEVSU1RfREVMQVlfVVMpOwor
fQorCitzdGF0aWMgdm9pZCBtdDc2MjFfcGVyc3RfZ3Bpb19wY2llX2RlYXNzZXJ0KHN0cnVjdCBt
dDc2MjFfcGNpZSAqcGNpZSkKK3sKKyAgICBncGlvZF9zZXRfdmFsdWUocGNpZS0+cGVyc3QsIDEp
OworICAgIG1kZWxheShQRVJTVF9ERUxBWV9VUyk7Cit9CisKIHN0YXRpYyBpbmxpbmUgdm9pZCBt
dDc2MjFfY29udHJvbF9hc3NlcnQoc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiB7CiAJ
dTMyIGNoaXBfcmV2X2lkID0gcnRfc3lzY19yMzIoTVQ3NjIxX0NISVBfUkVWX0lEKTsKQEAgLTM0
NCw2ICszNjEsMTIgQEAgc3RhdGljIGludCBtdDc2MjFfcGNpZV9wYXJzZV9kdChzdHJ1Y3QgbXQ3
NjIxX3BjaWUgKnBjaWUpCiAJc3RydWN0IHJlc291cmNlIHJlZ3M7CiAJaW50IGVycjsKIAorICAg
IHBjaWUtPnBlcnN0ID0gZGV2bV9ncGlvZF9nZXQoZGV2LCAicGVyc3QiLCBHUElPRF9PVVRfSElH
SCk7CisgICAgaWYgKElTX0VSUihwY2llLT5wZXJzdCkpIHsKKyAgICAgICAgZGV2X2VycihkZXYs
ICJmYWlsZWQgdG8gZ2V0IGdwaW8gcGVyc3RcbiIpOworICAgICAgICByZXR1cm4gUFRSX0VSUihw
Y2llLT5wZXJzdCk7CisgICAgfQorCiAJZXJyID0gb2ZfYWRkcmVzc190b19yZXNvdXJjZShub2Rl
LCAwLCAmcmVncyk7CiAJaWYgKGVycikgewogCQlkZXZfZXJyKGRldiwgIm1pc3NpbmcgXCJyZWdc
IiBwcm9wZXJ0eVxuIik7CkBAIC0zODQsNyArNDA3LDYgQEAgc3RhdGljIGludCBtdDc2MjFfcGNp
ZV9pbml0X3BvcnQoc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiAJc3RydWN0IG10NzYy
MV9wY2llICpwY2llID0gcG9ydC0+cGNpZTsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2llLT5k
ZXY7CiAJdTMyIHNsb3QgPSBwb3J0LT5zbG90OwotCXUzMiB2YWwgPSAwOwogCWludCBlcnI7CiAK
IAkvKgpAQCAtMzkzLDQ3ICs0MTUsMzIgQEAgc3RhdGljIGludCBtdDc2MjFfcGNpZV9pbml0X3Bv
cnQoc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQpCiAJICovCiAJbXQ3NjIxX3Jlc2V0X3Bv
cnQocG9ydCk7CiAKLQl2YWwgPSByZWFkX2NvbmZpZyhwY2llLCBzbG90LCBQQ0lFX0ZUU19OVU0p
OwotCWRldl9pbmZvKGRldiwgIlBvcnQgJWQgTl9GVFMgPSAleFxuIiwgKHVuc2lnbmVkIGludCl2
YWwsIHNsb3QpOwotCiAJZXJyID0gcGh5X2luaXQocG9ydC0+cGh5KTsKIAlpZiAoZXJyKSB7CiAJ
CWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIGluaXRpYWxpemUgcG9ydCVkIHBoeVxuIiwgc2xvdCk7
Ci0JCWdvdG8gZXJyX3BoeV9pbml0OworCQlyZXR1cm4gZXJyOwogCX0KIAogCWVyciA9IHBoeV9w
b3dlcl9vbihwb3J0LT5waHkpOwogCWlmIChlcnIpIHsKIAkJZGV2X2VycihkZXYsICJmYWlsZWQg
dG8gcG93ZXIgb24gcG9ydCVkIHBoeVxuIiwgc2xvdCk7Ci0JCWdvdG8gZXJyX3BoeV9vbjsKLQl9
Ci0KLQlpZiAoKHBjaWVfcG9ydF9yZWFkKHBvcnQsIFJBTElOS19QQ0lfU1RBVFVTKSAmIFBDSUVf
UE9SVF9MSU5LVVApID09IDApIHsKLQkJZGV2X2VycihkZXYsICJwY2llJWQgbm8gY2FyZCwgZGlz
YWJsZSBpdCAoUlNUICYgQ0xLKVxuIiwgc2xvdCk7Ci0JCW10NzYyMV9jb250cm9sX2Fzc2VydChw
b3J0KTsKLQkJcG9ydC0+ZW5hYmxlZCA9IGZhbHNlOwotCQllcnIgPSAtRU5PREVWOwotCQlnb3Rv
IGVycl9ub19saW5rX3VwOworCQlyZXR1cm4gZXJyOwogCX0KIAogCXBvcnQtPmVuYWJsZWQgPSB0
cnVlOwogCiAJcmV0dXJuIDA7Ci0KLWVycl9ub19saW5rX3VwOgotCXBoeV9wb3dlcl9vZmYocG9y
dC0+cGh5KTsKLWVycl9waHlfb246Ci0JcGh5X2V4aXQocG9ydC0+cGh5KTsKLWVycl9waHlfaW5p
dDoKLQlyZXR1cm4gZXJyOwogfQogCiBzdGF0aWMgdm9pZCBtdDc2MjFfcGNpZV9pbml0X3BvcnRz
KHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSkKIHsKIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSBwY2ll
LT5kZXY7CiAJc3RydWN0IG10NzYyMV9wY2llX3BvcnQgKnBvcnQsICp0bXA7CisJdTMyIHZhbCA9
IDA7CiAJaW50IGVycjsKIAorICAgIG10NzYyMV9wZXJzdF9ncGlvX3BjaWVfYXNzZXJ0KHBjaWUp
OworCiAJbGlzdF9mb3JfZWFjaF9lbnRyeV9zYWZlKHBvcnQsIHRtcCwgJnBjaWUtPnBvcnRzLCBs
aXN0KSB7CiAJCXUzMiBzbG90ID0gcG9ydC0+c2xvdDsKIApAQCAtNDQxLDcgKzQ0OCwxMCBAQCBz
dGF0aWMgdm9pZCBtdDc2MjFfcGNpZV9pbml0X3BvcnRzKHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNp
ZSkKIAkJaWYgKGVycikgewogCQkJZGV2X2VycihkZXYsICJJbml0aWF0aW5nIHBvcnQgJWQgZmFp
bGVkXG4iLCBzbG90KTsKIAkJCWxpc3RfZGVsKCZwb3J0LT5saXN0KTsKLQkJfQorCQl9IGVsc2Ug
eworCSAgICAgICAgdmFsID0gcmVhZF9jb25maWcocGNpZSwgc2xvdCwgUENJRV9GVFNfTlVNKTsK
KwkgICAgICAgIGRldl9pbmZvKGRldiwgIlBvcnQgJWQgTl9GVFMgPSAleFxuIiwgKHVuc2lnbmVk
IGludCl2YWwsIHNsb3QpOworICAgICAgICB9CiAJfQogCiAJcmVzZXRfY29udHJvbF9hc3NlcnQo
cGNpZS0+cnN0KTsKQEAgLTQ1MSwzMiArNDYxLDI1IEBAIHN0YXRpYyB2b2lkIG10NzYyMV9wY2ll
X2luaXRfcG9ydHMoc3RydWN0IG10NzYyMV9wY2llICpwY2llKQogCXJ0X3N5c2NfbTMyKFBDSUVf
Q0xLX0dFTl9ESVMsIFBDSUVfQ0xLX0dFTl9FTiwgUkFMSU5LX1BDSUVfQ0xLX0dFTik7CiAJbXNs
ZWVwKDUwKTsKIAlyZXNldF9jb250cm9sX2RlYXNzZXJ0KHBjaWUtPnJzdCk7CisKKyAgICBtdDc2
MjFfcGVyc3RfZ3Bpb19wY2llX2RlYXNzZXJ0KHBjaWUpOworCisJbGlzdF9mb3JfZWFjaF9lbnRy
eShwb3J0LCAmcGNpZS0+cG9ydHMsIGxpc3QpIHsKKwkgICAgaWYgKChwY2llX3BvcnRfcmVhZChw
b3J0LCBSQUxJTktfUENJX1NUQVRVUykgJiBQQ0lFX1BPUlRfTElOS1VQKSA9PSAwKSB7CisJCSAg
ICBkZXZfZXJyKGRldiwgInBjaWUlZCBubyBjYXJkLCBkaXNhYmxlIGl0IChSU1QgJiBDTEspXG4i
LCBzbG90KTsKKwkJICAgIG10NzYyMV9jb250cm9sX2Fzc2VydChwb3J0KTsKKyAgICAgICAgICAg
IHBoeV9wb3dlcl9vZmYocG9ydC0+cGh5KTsKKwkJICAgIHBvcnQtPmVuYWJsZWQgPSBmYWxzZTsK
KyAgICAgICAgfQorCX0KIH0KIAotc3RhdGljIGludCBtdDc2MjFfcGNpZV9lbmFibGVfcG9ydChz
dHJ1Y3QgbXQ3NjIxX3BjaWVfcG9ydCAqcG9ydCkKK3N0YXRpYyB2b2lkIG10NzYyMV9wY2llX2Vu
YWJsZV9wb3J0KHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0ICpwb3J0KQogewogCXN0cnVjdCBtdDc2
MjFfcGNpZSAqcGNpZSA9IHBvcnQtPnBjaWU7CiAJdTMyIHNsb3QgPSBwb3J0LT5zbG90OwogCXUz
MiBvZmZzZXQgPSBNVDc2MjFfUENJRV9PRkZTRVQgKyAoc2xvdCAqIE1UNzYyMV9ORVhUX1BPUlQp
OwogCXUzMiB2YWw7Ci0JaW50IGVycjsKLQotCS8qIGFzc2VydCBwb3J0IFBFUlNUX04gKi8KLQl2
YWwgPSBwY2llX3JlYWQocGNpZSwgUkFMSU5LX1BDSV9QQ0lDRkdfQUREUik7Ci0JdmFsIHw9IFBD
SUVfUE9SVF9QRVJTVChzbG90KTsKLQlwY2llX3dyaXRlKHBjaWUsIHZhbCwgUkFMSU5LX1BDSV9Q
Q0lDRkdfQUREUik7Ci0KLQkvKiBkZS1hc3NlcnQgcG9ydCBQRVJTVF9OICovCi0JdmFsID0gcGNp
ZV9yZWFkKHBjaWUsIFJBTElOS19QQ0lfUENJQ0ZHX0FERFIpOwotCXZhbCAmPSB+UENJRV9QT1JU
X1BFUlNUKHNsb3QpOwotCXBjaWVfd3JpdGUocGNpZSwgdmFsLCBSQUxJTktfUENJX1BDSUNGR19B
RERSKTsKLQotCS8qIDEwMG1zIHRpbWVvdXQgdmFsdWUgc2hvdWxkIGJlIGVub3VnaCBmb3IgR2Vu
MSB0cmFpbmluZyAqLwotCWVyciA9IHJlYWRsX3BvbGxfdGltZW91dChwb3J0LT5iYXNlICsgUkFM
SU5LX1BDSV9TVEFUVVMsCi0JCQkJIHZhbCwgISEodmFsICYgUENJRV9QT1JUX0xJTktVUCksCi0J
CQkJIDIwLCAxMDAgKiBVU0VDX1BFUl9NU0VDKTsKLQlpZiAoZXJyKQotCQlyZXR1cm4gLUVUSU1F
RE9VVDsKIAogCS8qIGVuYWJsZSBwY2llIGludGVycnVwdCAqLwogCXZhbCA9IHBjaWVfcmVhZChw
Y2llLCBSQUxJTktfUENJX1BDSU1TS19BRERSKTsKQEAgLTQ5Miw4ICs0OTUsNiBAQCBzdGF0aWMg
aW50IG10NzYyMV9wY2llX2VuYWJsZV9wb3J0KHN0cnVjdCBtdDc2MjFfcGNpZV9wb3J0ICpwb3J0
KQogCS8qIGNvbmZpZ3VyZSBjbGFzcyBjb2RlIGFuZCByZXZpc2lvbiBJRCAqLwogCXBjaWVfd3Jp
dGUocGNpZSwgUENJRV9DTEFTU19DT0RFIHwgUENJRV9SRVZJU0lPTl9JRCwKIAkJICAgb2Zmc2V0
ICsgUkFMSU5LX1BDSV9DTEFTUyk7Ci0KLQlyZXR1cm4gMDsKIH0KIAogc3RhdGljIHZvaWQgbXQ3
NjIxX3BjaWVfZW5hYmxlX3BvcnRzKHN0cnVjdCBtdDc2MjFfcGNpZSAqcGNpZSkKQEAgLTUwNiwx
MSArNTA3LDcgQEAgc3RhdGljIHZvaWQgbXQ3NjIxX3BjaWVfZW5hYmxlX3BvcnRzKHN0cnVjdCBt
dDc2MjFfcGNpZSAqcGNpZSkKIAogCWxpc3RfZm9yX2VhY2hfZW50cnkocG9ydCwgJnBjaWUtPnBv
cnRzLCBsaXN0KSB7CiAJCWlmIChwb3J0LT5lbmFibGVkKSB7Ci0JCQlpZiAobXQ3NjIxX3BjaWVf
ZW5hYmxlX3BvcnQocG9ydCkpIHsKLQkJCQlkZXZfZXJyKGRldiwgImRlLWFzc2VydCBwb3J0ICVk
IFBFUlNUX05cbiIsCi0JCQkJCXBvcnQtPnNsb3QpOwotCQkJCWNvbnRpbnVlOwotCQkJfQorCQkJ
bXQ3NjIxX3BjaWVfZW5hYmxlX3BvcnQocG9ydCk7CiAJCQlkZXZfaW5mbyhkZXYsICJQQ0lFJWQg
ZW5hYmxlZFxuIiwgc2xvdCk7CiAJCQludW1fc2xvdHNfZW5hYmxlZCsrOwogCQl9CkBAIC02NjUs
NiArNjYyLDkgQEAgc3RhdGljIGludCBtdDc2MjFfcGNpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9k
ZXZpY2UgKnBkZXYpCiAJCXJldHVybiAwOwogCX0KIAorICAgIHBjaWVfd3JpdGUocGNpZSwgMHhm
ZmZmZmZmZiwgUkFMSU5LX1BDSV9NRU1CQVNFKTsKKyAgICBwY2llX3dyaXRlKHBjaWUsIFJBTElO
S19QQ0lfSU9fTUFQX0JBU0UsIFJBTElOS19QQ0lfSU9CQVNFKTsKKwogCW10NzYyMV9wY2llX2Vu
YWJsZV9wb3J0cyhwY2llKTsKIAogCWVyciA9IG10NzYyMV9wY2lfcGFyc2VfcmVxdWVzdF9vZl9w
Y2lfcmFuZ2VzKHBjaWUpOwotLSAKMi43LjQKCg==
--000000000000e3513b058a024a12
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--000000000000e3513b058a024a12--
