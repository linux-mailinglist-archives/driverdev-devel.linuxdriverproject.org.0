Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBEE32FAE
	for <lists+driverdev-devel@lfdr.de>; Mon,  3 Jun 2019 14:32:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0DF586224;
	Mon,  3 Jun 2019 12:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KHNjXqc1zZQX; Mon,  3 Jun 2019 12:32:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C31F886186;
	Mon,  3 Jun 2019 12:32:05 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 935351BF4E6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9057487765
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gNmMGxTGAWZx
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:32:02 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out1.external.iinet.net.au
 (icp-osb-irony-out1.external.iinet.net.au [203.59.1.210])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9C5218691E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  3 Jun 2019 12:32:01 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AEAAAyEvVc/zXSMGcNWRoBAQEBAQI?=
 =?us-ascii?q?BAQEBBwIBAQEBgVMDAQEBAQsBgnqBLIQUk1gGgRAlg1+FcYlxhRwUgWcJAQE?=
 =?us-ascii?q?BAQEBAQEBLQoBAQGDeUYCgzU2Bw4BAwEBAQQBAQEBAwGBCYVWAQEBAQIBIwQ?=
 =?us-ascii?q?RQQULCw0LAgImAgJXBg0GAgEBFoMIAYF2BR6oQHF+MxqFLYMdgUAGgQwoAYF?=
 =?us-ascii?q?gihB4gQeBEAEnDIJfPoJhAYFLgyGCWASLQyoPh3aBJ4YVjUsJgg+LDYNqBYQ?=
 =?us-ascii?q?wBhuCIoZxg28DEIlZLY18lnMCggczGggoCIMnghsXg02KZWCRVQEB?=
X-IPAS-Result: =?us-ascii?q?A2AEAAAyEvVc/zXSMGcNWRoBAQEBAQIBAQEBBwIBAQEBg?=
 =?us-ascii?q?VMDAQEBAQsBgnqBLIQUk1gGgRAlg1+FcYlxhRwUgWcJAQEBAQEBAQEBLQoBA?=
 =?us-ascii?q?QGDeUYCgzU2Bw4BAwEBAQQBAQEBAwGBCYVWAQEBAQIBIwQRQQULCw0LAgImA?=
 =?us-ascii?q?gJXBg0GAgEBFoMIAYF2BR6oQHF+MxqFLYMdgUAGgQwoAYFgihB4gQeBEAEnD?=
 =?us-ascii?q?IJfPoJhAYFLgyGCWASLQyoPh3aBJ4YVjUsJgg+LDYNqBYQwBhuCIoZxg28DE?=
 =?us-ascii?q?IlZLY18lnMCggczGggoCIMnghsXg02KZWCRVQEB?=
X-IronPort-AV: E=Sophos;i="5.60,546,1549900800"; d="scan'208";a="215834832"
Received: from unknown (HELO [10.44.0.192]) ([103.48.210.53])
 by icp-osb-irony-out1.iinet.net.au with ESMTP; 03 Jun 2019 20:31:57 +0800
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <9cef602b-5446-b14e-e22a-cb6f23a26598@kernel.org>
Date: Mon, 3 Jun 2019 22:31:55 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMhs-H-tGp43kRzd43FARxvxGNihKoqE6fgHJfYZFVYryjs13w@mail.gmail.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sergio,

On 3/6/19 3:34 pm, Sergio Paracuellos wrote:
> On Mon, Jun 3, 2019 at 3:26 AM Greg Ungerer <gerg@kernel.org> wrote:
>> On 31/5/19 10:37 pm, Sergio Paracuellos wrote:
>>> On Thu, May 30, 2019 at 3:46 AM Greg Ungerer <gerg@kernel.org> wrote:
>>>> On 30/5/19 10:44 am, Greg Ungerer wrote:
>>>>> On 29/5/19 6:08 pm, Sergio Paracuellos wrote:
>>>>> [snip]
>>>>>> I have added gpio consumer stuff and reorder a bit the code to be more
>>>>>> similar to 4.20.
>>>>>>
>>>>>> I attach the patch. I have not try it to compile it, because my normal
>>>>>> environment is in another
>>>>>> computer and I am in the middle of moving from my current house and
>>>>>> don't have access to it, sorry.
>>>>>> So, please try this and let's see what happens.
>>>>>
>>>>> No problem, thanks for the patch.
>>>>>
>>>>> Unfortunately always locks up on kernel boot:
>>>>>
>>>>>      ...
>>>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>>>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>>>>>      mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>>>>>      mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
>>>>>      mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>>>>>      mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>>>>>
>>>>> That was original linux-5.1 patched with your attached patch.
>>>>>
>>>>> I'll try and dig down into that further today and get some
>>>>> feedback on where it is failing.
>>>>
>>>> The first problem I see is that the GPIO MODE register bits for
>>>> PERST_MODE are set to 00, so in "PCIe Reset" mode. If I hack in
>>>> a register update for that with:
>>>>
>>>>        /* Force PERST PCIe reset into GPIO mode */
>>>>        *(unsigned int *)(0xbe000060) |=  BIT(10);
>>>
>>> I have set GPIO mode for this in the new attached patch.
>>>
>>>>
>>>> I do that at the start of mt7621_pcie_init_ports(). With that in
>>>> place I get further:
>>>>
>>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>>>>      mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>>>>      mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>>>      mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>>>>      mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>>>>      mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>>>>      mt7621-pci 1e140000.pcie: PCIE0 enabled
>>>>      mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
>>>>      mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
>>>>      pci_bus 0000:00: root bus resource [io  0xffffffff]
>>>>      pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
>>>>      pci_bus 0000:00: root bus resource [bus 00-ff]
>>>>      pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
>>>>
>>>> It hangs there...
>>>
>>> I had review the boot order is working for you in version 4.20 and the
>>> order with the new patch applied. There were
>>> only one difference, the place where interrupt bits are set. I have
>>> changed that also in the new attached patch.
>>>
>>> For me, the order now and how the different boot steps are being done
>>> in v4.20 are the same.
>>>
>>> One other thing I don't really understand why is needed but is in the
>>> v4.20 code are this two lines:
>>>
>>> pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
>>> pcie_write(pcie, RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);
>>>
>>> These are added also in the current patch.
>>
>> Tried out this latest patch. Unfortunately no good news.
>>
>> Boot gets through the PCI bus scan, but does not find any devices:
>>
>>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>>     mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>>     mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
>>     mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>>     mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>>     mt7621-pci 1e140000.pcie: Nothing is connected in virtual bridges. Exiting...
> 
> 
> 
>>
>> And now in the completely weird and un-expected department the boot
>> continues on and appears to hang for me when it tries to attach a
>> UBI NAND flash partition. It hangs there for about a minute or so
>> and then dumps complaing about flash problems:
>>
>>     ubi0: attaching mtd3
>>     ubi0: scanning is finished
>>     ubi0: empty MTD device detected
>>     ubi0 warning: do_sync_erase: error -5 while erasing PEB 0, retry
>>     ubi0 warning: do_sync_erase: error -5 while erasing PEB 0, retry
>>     ubi0 warning: do_sync_erase: error -5 while erasing PEB 0, retry
>>     ubi0 error: do_sync_erase: cannot erase PEB 0, error -5
>>     CPU: 1 PID: 1 Comm: swapper/0 Not tainted 5.1.0-ac0 #59
>>     Stack : 000000f0 00000000 00000000 808e0000 8ebf2000 80070584 808285b8 0000000b
>>           00000038 00000000 80827e00 8fc23b1c 80870000 00000001 8fc23ab0 aeddef9b
>>           00000000 00000000 80920000 00000000 00000000 808e7693 000000f1 00000000
>>           203a6d6d 00000000 00000000 00000000 80870000 00000000 00000000 8080a01c
>>           00000000 80870000 8ebf1014 8ebd2000 00000018 80361d24 00000004 808e0004
>>           ...
>>     Call Trace:
>>     [<8000cfc0>] show_stack+0x94/0x12c
>>     [<806e553c>] dump_stack+0x8c/0xd0
>>     [<803c73c8>] do_sync_erase+0xf4/0x208
>>     [<803c7694>] ubi_io_sync_erase+0x1b8/0x304
>>     [<803cbc90>] ubi_early_get_peb+0x148/0x1dc
>>     [<803ba930>] create_vtbl+0xb4/0x29c
>>     [<803bafc8>] ubi_read_volume_table+0x27c/0xae4
>>     [<803cc294>] ubi_attach+0x570/0x15dc
>>     [<803bf2a0>] ubi_attach_mtd_dev+0x5b0/0xbec
>>     [<808b0488>] ubi_init+0x1c0/0x274
>>     [<800015f4>] do_one_initcall+0x50/0x1ac
>>     [<80897e98>] kernel_init_freeable+0x184/0x26c
>>     [<807035b4>] kernel_init+0x14/0x110
>>     [<800071f8>] ret_from_kernel_thread+0x14/0x1c
>>
>> I tried booting and running this several times, I always get the same
>> long hang and dump from USB/NAND. If I copy in the one linux-4.20
>> file, drivers/staging/mt7621-pci/pci-mt7621.c, then the system
>> boots, scans and finds PCI devices, and does not hang/dump on
>> UBI/NAND flash setup.
> 
> Can you try to read and set BIT(10) instead of write it directly?:
> 
> Instead of:
> 
> rt_sysc_w32(PERST_MODE_GPIO, MT7621_GPIO_MODE);

Oh, yeah, that is definitely not going to work. There is a bunch of
other GPIO control bits in there for other hardware blocks. Would
explain the broken NAND flash behavior...


> Do:
> 
> u32 val = rt_sysc_r32(MT7621_GPIO_MODE);
> val |= PERST_MODE_GPIO;
> rt_sysc_w32(val, MT7621_GPIO_MODE);

Much better result with that. Though ultimately it should clear
bits 10 and 11 (both are PERST_MODE bits) and then OR in BIT(10).

Boot is successful and now shows:

mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
mt7621-pci 1e140000.pcie: PCIE0 enabled
mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
pci_bus 0000:00: root bus resource [io  0xffffffff]
pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
pci_bus 0000:00: root bus resource [bus 00-ff]
pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:00:00.0: PCI bridge to [bus 01-ff]
pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
pci 0000:00:00.0: BAR 7: no space for [io  size 0x1000]
pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x1000]
pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
pci 0000:00:00.0: PCI bridge to [bus 01]
pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
pcieport 0000:00:00.0: enabling device (0004 -> 0006)


So that is really good. Still now just some problem with the IRQ.

I also found that I could dump /sys/bus/pci/devices/0000:01:00.0/config
and get a good dump from the command line:

00000000: 8c 16 3c 00 06 00 10 00 00 00 80 02 00 00 00 00     ..<.............
00000010: 04 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00     ...`............
00000020: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................
00000030: 00 00 00 00 40 00 00 00 00 00 00 00 17 01 00 00     ....@...........
...

Also good.


>> I'll try and dig into it some time today and get you some feedback.

Sorry, I didn't get any more time to look at this today.


> No other changes with the previous one, just the order of where
> interrupts bits are set up in
> the same place of 4.20.
> 
> Can you point me out to the link to your board of something to check
> if I can acquire one and test
> in my side?

I am using a Digi/EX15:
https://www.digi.com/products/networking/cellular-routers/enterprise/digi-ex15

FWIW, I think we are close now.

Regards
Greg
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
