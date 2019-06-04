Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A342133F9A
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Jun 2019 09:14:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1D94C26760;
	Tue,  4 Jun 2019 07:14:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WXKizjgPOMfu; Tue,  4 Jun 2019 07:14:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0360926282;
	Tue,  4 Jun 2019 07:14:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 532B91BF2B1
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 07:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 407D688B6B
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 07:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5ZXuR6ioG8Zw
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 07:14:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out5.external.iinet.net.au
 (icp-osb-irony-out5.external.iinet.net.au [203.59.1.221])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A05688B6A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  4 Jun 2019 07:14:30 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AoAAC/GfZc/zXSMGcNQxYaAQEBAQE?=
 =?us-ascii?q?CAQEBAQcCAQEBAYFlgnuBLIQUk1QBAQEBAQEGgTWDX4VxiXGFMIFnCQEBAQE?=
 =?us-ascii?q?BAQEBASMUAQEBhD8Cgzc4EwEDAQEBBAEBAQEDAYEJhVYBAQEBAgEaAQgEEUE?=
 =?us-ascii?q?FCwsNBQYCAg8DARMCAkkOBg0GAgEBFoMIAYF2BacHcX4zGoUtgy+BQAaBDCi?=
 =?us-ascii?q?BYYoQeIEHgRABJ4Ftfj6EAQgnXAKCQIJYBItHChaHO1SBJ5J7agmCEIsPg1k?=
 =?us-ascii?q?VhDIGG4IjL4o0AxCJWy2fOoVTWA2BFDMaCCgIgyeCGAIBF4NNimVgjxcBAQU?=
 =?us-ascii?q?IgkMBAQ?=
X-IPAS-Result: =?us-ascii?q?A2AoAAC/GfZc/zXSMGcNQxYaAQEBAQECAQEBAQcCAQEBA?=
 =?us-ascii?q?YFlgnuBLIQUk1QBAQEBAQEGgTWDX4VxiXGFMIFnCQEBAQEBAQEBASMUAQEBh?=
 =?us-ascii?q?D8Cgzc4EwEDAQEBBAEBAQEDAYEJhVYBAQEBAgEaAQgEEUEFCwsNBQYCAg8DA?=
 =?us-ascii?q?RMCAkkOBg0GAgEBFoMIAYF2BacHcX4zGoUtgy+BQAaBDCiBYYoQeIEHgRABJ?=
 =?us-ascii?q?4Ftfj6EAQgnXAKCQIJYBItHChaHO1SBJ5J7agmCEIsPg1kVhDIGG4IjL4o0A?=
 =?us-ascii?q?xCJWy2fOoVTWA2BFDMaCCgIgyeCGAIBF4NNimVgjxcBAQUIgkMBAQ?=
X-IronPort-AV: E=Sophos;i="5.60,549,1549900800"; d="scan'208";a="228381012"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out5.iinet.net.au with ESMTP; 04 Jun 2019 15:14:26 +0800
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
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
 <CAMhs-H_Zm4VCeJyniSCFgySXbJOOijYrxd-yJpkYjUdjMa+d5g@mail.gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <95b0b5f4-18ff-1f92-b1ae-d9a625e6f013@kernel.org>
Date: Tue, 4 Jun 2019 17:14:24 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAMhs-H_Zm4VCeJyniSCFgySXbJOOijYrxd-yJpkYjUdjMa+d5g@mail.gmail.com>
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

On 4/6/19 3:06 pm, Sergio Paracuellos wrote:
> On Tue, Jun 4, 2019 at 3:31 AM Greg Ungerer <gerg@kernel.org> wrote:
>> On 4/6/19 5:59 am, Sergio Paracuellos wrote:
>>> On Mon, Jun 3, 2019 at 2:32 PM Greg Ungerer <gerg@kernel.org> wrote:
>>>> On 3/6/19 3:34 pm, Sergio Paracuellos wrote:
>>>>> On Mon, Jun 3, 2019 at 3:26 AM Greg Ungerer <gerg@kernel.org> wrote:
>>>>>> On 31/5/19 10:37 pm, Sergio Paracuellos wrote:
>>>>>>> On Thu, May 30, 2019 at 3:46 AM Greg Ungerer <gerg@kernel.org> wrote:
>>>>>>>> On 30/5/19 10:44 am, Greg Ungerer wrote:
>>>>>>>>> On 29/5/19 6:08 pm, Sergio Paracuellos wrote:
>>>>>>>>> [snip]
>>>>> Can you try to read and set BIT(10) instead of write it directly?:
>>>>>
>>>>> Instead of:
>>>>>
>>>>> rt_sysc_w32(PERST_MODE_GPIO, MT7621_GPIO_MODE);
>>>>
>>>> Oh, yeah, that is definitely not going to work. There is a bunch of
>>>> other GPIO control bits in there for other hardware blocks. Would
>>>> explain the broken NAND flash behavior...
>>>
>>> Yes, my bad here. Sometimes is better to go to sleep :)).
>>>>
>>>>> Do:
>>>>>
>>>>> u32 val = rt_sysc_r32(MT7621_GPIO_MODE);
>>>>> val |= PERST_MODE_GPIO;
>>>>> rt_sysc_w32(val, MT7621_GPIO_MODE);
>>>>
>>>> Much better result with that. Though ultimately it should clear
>>>> bits 10 and 11 (both are PERST_MODE bits) and then OR in BIT(10).
>>>
>>> Ok, so the following should do the trick:
>>>
>>> rt_sysc_m32(PERST_MODE_MASK, PERST_MODE_GPIO, MT7621_GPIO_MODE);
>>>
>>> with PERST_MODE_MASK defined as:
>>>
>>> #define PERST_MODE_MASK         GENMASK(11, 10)
>>>
>>> (patch attached with this changes)
>>
>> I have mostly good news and a little bad news :-)
>>
>> I should have tested more thoroughly last night. Anyway, the new patch
>> works, even the IRQ of the PCI device. My Wifi PCI device works just
>> as well now as it did with the 4.20 pci-mt7621.c/pci-mt7621-phy.c.
>> I still get the lines:
>>
>> pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
>> pcieport 0000:00:00.0: enabling device (0004 -> 0006)
>>
>> However that is referring to the root host PCI device (0000:00:00.0),
>> not my PCI peripheral device (which is 0000:01:00.0). It is actually
>> probed and working properly.
>>
>> That is the good news.
> 
> That makes sense :). Good news are always good news even bads are
> coming also :))
> 
>>
>>
>>> It would be also good to know what happen if you comment the following lines:
>>>
>>> pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
>>> pcie_write(pcie, RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);
>>>
>>> Are they really needed?
>>
>> Had no effect for me. Everything worked the same with or without
>> those lines as far as I could tell.
> 
> Ok, I won't include them when I send a clean patch series with all of
> this changes.
> 
>>
>>
>> [snip]
>>> Only one step more to get this properly working.
>>
>> Ok, now the bad news.
>>
>> I often get the boot hanging at various points in the PCI
>> initialization, setup and probing.
>>
>> For example sometimes it hangs with boot up to:
>>
>>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>
>>
>> Then sometimes it hangs at:
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
>>
> 
> It is weird, here it is not initializing any port... All of them are disabled.
> 
>>
>> And then I also see it hang up to:
>>
>>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>>     mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>>     mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>>     mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>>     mt7621-pci 1e140000.pcie: PCIE0 enabled
>>     mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
>>     mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
>>     pci_bus 0000:00: root bus resource [io  0xffffffff]
>>     pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
>>     pci_bus 0000:00: root bus resource [bus 00-ff]
>>     pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
>>
>>
>> It happens on cold or warm boots. Sometimes it boots up all the
>> way and everything works perfectly.
> 
> Can you try to change all the msleeps of the code driver in favour of
> mdelay's? Looks like
> some timing problem.

Changed the msleeps to mdelays and it still hangs somtimes.
I doubled the delay times in the msleeps and tried that too -
that also sometimes hangs.


> If it doesn't work, it would be great to have a full trace of working
> 4.20 and no working current 5.x series
> version just to carefully compare them.

I'll attach at the end a full working boot trace from 5.1 with the 4.20 pci-mt7621.c.
I'll attach a 5.1 boot trace with your patch and hang below. Not that this very
same image doesn't always hang. Same binary will sometimes boot fine.


>> I had perfect reliable boot and operation with linux-5.1 using the
>> older 4.20 pci-mt7621.c and pci-mt7621-phy.c.
> 
> AFAICT, there is not pci-mt7621-phy.c in the v4.20, isn't it? Do you
> mean you put also that
> code into that version and compile them? Or are you just using "pci-mt7621.c"?

I just leave that pci-mt7621-phy.c code in place in linux-5.1 when I copy in
the linux-4.20 pci-mt7621.c - even though it isn't used in that case.

One thing I always notice is that the PCI probing happens much earlier
with the 4.20 pci-mt7621.c. Not sure that will have any impact though.

Regards
Greg


---------------linux-5.1-with-4.20-pci-mt7621.c-----------------------------------
Linux version 5.1.0-ac0 (gerg@goober) (gcc version 5.4.0 (GCC)) #73 SMP Tue Jun 4 17:06:36 AEST 2019
SoC Type: MediaTek MT7621 ver:1 eco:3
printk: bootconsole [early0] enabled
CPU0 revision is: 0001992f (MIPS 1004Kc)
OF: fdt: No chosen node found, continuing without
MIPS: machine is Digi EX15
Determined physical RAM map:
  memory: 10000000 @ 00000000 (usable)
Initial ramdisk at: 0x81000000 (16920576 bytes)
VPE topology {2,2} total 4
Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
Zone ranges:
   Normal   [mem 0x0000000000000000-0x000000000fffffff]
Movable zone start for each node
Early memory node ranges
   node   0: [mem 0x0000000000000000-0x000000000fffffff]
Initmem setup node 0 [mem 0x0000000000000000-0x000000000fffffff]
random: get_random_bytes called from start_kernel+0xb0/0x524 with crng_init=0
percpu: Embedded 15 pages/cpu s30144 r8192 d23104 u61440
Built 1 zonelists, mobility grouping on.  Total pages: 65024
Kernel command line:  boot=network boot_ver=19.3.223.0-0c02c07312-dirty console=ttyS0,115200 ubi.mtd=3 root=/dev/ram0 rd_start=0x81000000 rd_size=0x1023000
Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
Writing ErrCtl register=0002051f
Readback ErrCtl register=0002051f
Memory: 233756K/262144K available (7220K kernel code, 251K rwdata, 1320K rodata, 284K init, 230K bss, 28388K reserved, 0K cma-reserved)
SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
rcu: Hierarchical RCU implementation.
rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
NR_IRQS: 256
clocksource: GIC: mask: 0xffffffffffffffff max_cycles: 0xcaf478abb4, max_idle_ns: 440795247997 ns
sched_clock: 32 bits at 100 Hz, resolution 10000000ns, wraps every 21474836475000000ns
Calibrating delay loop... 586.13 BogoMIPS (lpj=2930688)
pid_max: default: 32768 minimum: 301
Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
rcu: Hierarchical SRCU implementation.
smp: Bringing up secondary CPUs ...
Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
CPU1 revision is: 0001992f (MIPS 1004Kc)
Synchronize counters for CPU 1: done.
Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
CPU2 revision is: 0001992f (MIPS 1004Kc)
Synchronize counters for CPU 2: done.
Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
CPU3 revision is: 0001992f (MIPS 1004Kc)
Synchronize counters for CPU 3: done.
smp: Brought up 1 node, 4 CPUs
devtmpfs: initialized
clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
futex hash table entries: 1024 (order: 3, 32768 bytes)
pinctrl core: initialized pinctrl subsystem
NET: Registered protocol family 16
***** Xtal 40MHz *****
Port 0 N_FTS = 1b102800
Port 1 N_FTS = 1b102800
Port 2 N_FTS = 1b102800
PCIE1 no card, disable it(RST&CLK)
PCIE2 no card, disable it(RST&CLK)
PCIE0 enabled
PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
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
SCSI subsystem initialized
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
pcf857x 0-0026: probed
i2c-mt7621 1e000900.i2c: clock 400KHz, re-start not support
clocksource: Switched to clocksource GIC
NET: Registered protocol family 2
tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 6144 bytes)
TCP established hash table entries: 2048 (order: 1, 8192 bytes)
TCP bind hash table entries: 2048 (order: 2, 16384 bytes)
TCP: Hash tables configured (established 2048 bind 2048)
UDP hash table entries: 256 (order: 1, 8192 bytes)
UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
NET: Registered protocol family 1
Trying to unpack rootfs image as initramfs...
rootfs image is not initramfs (invalid magic at start of compressed archive); looks like an initrd
Freeing initrd memory: 16524K
Initialise system trusted keyrings
workingset: timestamp_bits=30 max_order=16 bucket_order=0
squashfs: version 4.0 (2009/01/31) Phillip Lougher
random: fast init done
Key type asymmetric registered
Asymmetric key parser 'x509' registered
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
mt7621_gpio 1e000600.gpio: registering 32 gpios
mt7621_gpio 1e000600.gpio: registering 32 gpios
mt7621_gpio 1e000600.gpio: registering 32 gpios
pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
pcieport 0000:00:00.0: enabling device (0004 -> 0006)
Serial: 8250/16550 driver, 3 ports, IRQ sharing disabled
printk: console [ttyS0] disabled
1e000c00.uartlite: ttyS0 at MMIO 0x1e000c00 (irq = 18, base_baud = 3125000) is a 16550A
printk: console [ttyS0] enabled
printk: console [ttyS0] enabled
printk: bootconsole [early0] disabled
printk: bootconsole [early0] disabled
1e000d00.uartlite: ttyS1 at MMIO 0x1e000d00 (irq = 19, base_baud = 3125000) is a 16550A
ledman: Copyright (C) SnapGear, 2000-2010.
ledman: registered ERASE switch on IRQ28
snapdog: HW/SW watchdog timer for SnapGear/Others
cacheinfo: Failed to find cpu0 device node
cacheinfo: Unable to detect cache hierarchy for CPU 0
brd: module loaded
mt7621-nand: NAND register bank at 0xbe003000
mt7621-nand: NAND ECC register bank at 0xbe003800
nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xdc
nand: Micron NAND 512MiB 3,3V 8-bit
nand: 512 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
nand: ecc bit: 4, spare_per_sector: 16
Bad block table found at page 262080, version 0x01
Bad block table found at page 262016, version 0x01
5 fixed-partitions partitions found on MTD device MT7621-NAND
Creating 5 MTD partitions on "MT7621-NAND":
0x000000000000-0x000000200000 : "u-boot"
0x000000200000-0x000000300000 : "u-boot-env"
0x000000300000-0x000000500000 : "log"
0x000000500000-0x000020000000 : "flash"
0x000000000000-0x000020000000 : "all"
libphy: Fixed MDIO Bus: probed
tun: Universal TUN/TAP device driver, 1.6
libphy: mdio: probed
mtk_soc_eth 1e100000.ethernet: generated random MAC address ca:3b:7c:59:df:b1
mtk_soc_eth 1e100000.ethernet: connected mac 0 to PHY at fixed-0:00 [uid=00000000, driver=Generic PHY]
mtk_soc_eth 1e100000.ethernet eth0: mediatek frame engine at 0xbe100000, irq 21
PPP generic driver version 2.4.2
PPP BSD Compression module registered
PPP Deflate Compression module registered
PPP MPPE Compression module registered
NET: Registered protocol family 24
SLIP: version 0.8.4-NET3.019-NEWTTY (dynamic channels, max=256).
CSLIP: code copyright 1989 Regents of the University of California.
usbcore: registered new interface driver ar5523
usbcore: registered new interface driver asix
usbcore: registered new interface driver ax88179_178a
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver cdc_eem
usbcore: registered new interface driver rndis_host
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver cdc_ncm
usbcore: registered new interface driver qmi_wwan
usbcore: registered new interface driver cdc_mbim
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci-pci: EHCI PCI platform driver
ehci-platform: EHCI generic platform driver
ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
ohci-pci: OHCI PCI platform driver
xhci-mtk 1e1c0000.xhci: xHCI Host Controller
xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 1
xhci-mtk 1e1c0000.xhci: hcc params 0x01401198 hci version 0x96 quirks 0x0000000000210010
xhci-mtk 1e1c0000.xhci: irq 20, io mem 0x1e1c0000
usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.01
usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb1: Product: xHCI Host Controller
usb usb1: Manufacturer: Linux 5.1.0-ac0 xhci-hcd
usb usb1: SerialNumber: 1e1c0000.xhci
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 2 ports detected
xhci-mtk 1e1c0000.xhci: xHCI Host Controller
xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 2
xhci-mtk 1e1c0000.xhci: Host supports USB 3.0  SuperSpeed
usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 5.01
usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb2: Product: xHCI Host Controller
usb usb2: Manufacturer: Linux 5.1.0-ac0 xhci-hcd
usb usb2: SerialNumber: 1e1c0000.xhci
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 1 port detected
usbcore: registered new interface driver cdc_acm
cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters
usbcore: registered new interface driver cdc_wdm
usbcore: registered new interface driver usb-storage
usbcore: registered new interface driver usbserial_generic
usbserial: USB Serial support registered for generic
usbcore: registered new interface driver ipw
usbserial: USB Serial support registered for IPWireless converter
usbcore: registered new interface driver option
usbserial: USB Serial support registered for GSM modem (1-port)
usbcore: registered new interface driver qcaux
usbserial: USB Serial support registered for qcaux
usbcore: registered new interface driver qcserial
usbserial: USB Serial support registered for Qualcomm USB modem
usbcore: registered new interface driver quatech2
usbserial: USB Serial support registered for Quatech 2nd gen USB to Serial Driver
usbcore: registered new interface driver usb_serial_simple
usbserial: USB Serial support registered for carelink
usbserial: USB Serial support registered for zio
usbserial: USB Serial support registered for funsoft
usbserial: USB Serial support registered for flashloader
usbserial: USB Serial support registered for google
usbserial: USB Serial support registered for libtransistor
usbserial: USB Serial support registered for vivopay
usbserial: USB Serial support registered for moto_modem
usbserial: USB Serial support registered for motorola_tetra
usbserial: USB Serial support registered for novatel_gps
usbserial: USB Serial support registered for hp4x
usbserial: USB Serial support registered for suunto
usbserial: USB Serial support registered for siemens_mpi
u32 classifier
     input device check on
ipip: IPv4 and MPLS over IPv4 tunneling driver
gre: GRE over IPv4 demultiplexor driver
ip_gre: GRE over IPv4 tunneling driver
Initializing XFRM netlink socket
NET: Registered protocol family 10
Segment Routing with IPv6
sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
NET: Registered protocol family 17
NET: Registered protocol family 15
8021q: 802.1Q VLAN Support v1.8
Loading compiled-in X.509 certificates
libphy: dsa slave smi: probed
mt7530 mdio-bus:00 lan (uninitialized): PHY [dsa-0.0:00] driver [Generic PHY]
mt7530 mdio-bus:00 wan (uninitialized): PHY [dsa-0.0:01] driver [Generic PHY]
DSA: tree 0 setup
ubi0: attaching mtd3
ubi0: scanning is finished
ubi0: attached mtd3 (name "flash", size 507 MiB)
ubi0: PEB size: 131072 bytes (128 KiB), LEB size: 126976 bytes
ubi0: min./max. I/O unit sizes: 2048/2048, sub-page size 2048
ubi0: VID header offset: 2048 (aligned 2048), data offset: 4096
ubi0: good PEBs: 4052, bad PEBs: 4, corrupted PEBs: 0
ubi0: user volume: 4, internal volumes: 1, max. volumes count: 128
ubi0: max/mean erase counter: 7/4, WL threshold: 4096, image sequence number: 1236486005
ubi0: available PEBs: 0, total reserved PEBs: 4052, PEBs reserved for bad PEB handling: 76
ubi0: background thread "ubi_bgt0d" started, PID 115
hctosys: unable to open rtc device (rtc0)
cfg80211: Loading compiled-in X.509 certificates for regulatory database
cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
platform regulatory.0: Direct firmware load for regulatory.db failed with error -2
cfg80211: failed to load regulatory.db
RAMDISK: squashfs filesystem found at block 0
RAMDISK: Loading 16521KiB [1 disk] into ram disk... /
/
done.
VFS: Mounted root (squashfs filesystem) readonly on device 1:0.
devtmpfs: mounted
Freeing unused kernel memory: 284K
This architecture does not have kernel memory protection.
Run /sbin/init as init process
Run /etc/init as init process
Run /bin/init as init process
Mounting filesystems...
Starting watchdog...
snapdog: user servicing enabled (short=60,long=300).
Initializing network interfaces...
Set eth0 to MAC address 00:27:04:03:02:01
Set lan to MAC address 00:27:04:39:05:a7
Set wan to MAC address 00:27:04:39:05:a8
Initializing CELL interface control...
Initializing WiFi interface control...
Mounting config filesystem...
UBIFS (ubi0:2): Mounting in unauthenticated mode
UBIFS (ubi0:2): background thread "ubifs_bgt0_2" started, PID 197
UBIFS (ubi0:2): recovery needed
UBIFS (ubi0:2): recovery completed
UBIFS (ubi0:2): UBIFS: mounted UBI device 0, volume 2, name "config"
UBIFS (ubi0:2): LEB size: 126976 bytes (124 KiB), min./max. I/O unit sizes: 2048 bytes/2048 bytes
UBIFS (ubi0:2): FS size: 15618048 bytes (14 MiB, 123 LEBs), journal size 1015809 bytes (0 MiB, 6 LEBs)
UBIFS (ubi0:2): reserved for root: 737678 bytes (720 KiB)
UBIFS (ubi0:2): media format: w5/r0 (latest is w5/r0), UUID AFD2AF01-271A-41C0-8D8E-E615C64EA6ED, small LPT model
Mounting opt filesystem....
UBIFS (ubi0:3): Mounting in unauthenticated mode
UBIFS (ubi0:3): background thread "ubifs_bgt0_3" started, PID 203
UBIFS (ubi0:3): recovery needed
UBIFS (ubi0:3): recovery completed
UBIFS (ubi0:3): UBIFS: mounted UBI device 0, volume 3, name "opt"
UBIFS (ubi0:3): LEB size: 126976 bytes (124 KiB), min./max. I/O unit sizes: 2048 bytes/2048 bytes
UBIFS (ubi0:3): FS size: 418258944 bytes (398 MiB, 3294 LEBs), journal size 20951040 bytes (19 MiB, 165 LEBs)
UBIFS (ubi0:3): reserved for root: 4952683 bytes (4836 KiB)
UBIFS (ubi0:3): media format: w5/r0 (latest is w5/r0), UUID 975D738A-1015-45AE-BD40-D7FD8D10756F, small LPT model

Digi International, Inc.
https://www.digi.com


Digi EX15W
EX15W login:
----------------------------------------------------------------------------------
---------------linux-5.1-with-sergios-latest-patch--------------------------------

Linux version 5.1.0-ac0 (gerg@goober) (gcc version 5.4.0 (GCC)) #74 SMP Tue Jun 4 17:09:50 AEST 2019
SoC Type: MediaTek MT7621 ver:1 eco:3
printk: bootconsole [early0] enabled
CPU0 revision is: 0001992f (MIPS 1004Kc)
OF: fdt: No chosen node found, continuing without
MIPS: machine is Digi EX15
Determined physical RAM map:
  memory: 10000000 @ 00000000 (usable)
Initial ramdisk at: 0x81000000 (16920576 bytes)
VPE topology {2,2} total 4
Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
Zone ranges:
   Normal   [mem 0x0000000000000000-0x000000000fffffff]
Movable zone start for each node
Early memory node ranges
   node   0: [mem 0x0000000000000000-0x000000000fffffff]
Initmem setup node 0 [mem 0x0000000000000000-0x000000000fffffff]
random: get_random_bytes called from start_kernel+0xb0/0x524 with crng_init=0
percpu: Embedded 15 pages/cpu s30144 r8192 d23104 u61440
Built 1 zonelists, mobility grouping on.  Total pages: 65024
Kernel command line:  boot=network boot_ver=19.3.223.0-0c02c07312-dirty console=ttyS0,115200 ubi.mtd=3 root=/dev/ram0 rd_start=0x81000000 rd_size=0x1023000
Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
Writing ErrCtl register=00020510
Readback ErrCtl register=00020510
Memory: 233756K/262144K available (7216K kernel code, 247K rwdata, 1320K rodata, 292K init, 230K bss, 28388K reserved, 0K cma-reserved)
SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
rcu: Hierarchical RCU implementation.
rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
NR_IRQS: 256
clocksource: GIC: mask: 0xffffffffffffffff max_cycles: 0xcaf478abb4, max_idle_ns: 440795247997 ns
sched_clock: 32 bits at 100 Hz, resolution 10000000ns, wraps every 21474836475000000ns
Calibrating delay loop... 586.13 BogoMIPS (lpj=2930688)
pid_max: default: 32768 minimum: 301
Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
rcu: Hierarchical SRCU implementation.
smp: Bringing up secondary CPUs ...
Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
CPU1 revision is: 0001992f (MIPS 1004Kc)
Synchronize counters for CPU 1: done.
Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
CPU2 revision is: 0001992f (MIPS 1004Kc)
Synchronize counters for CPU 2: done.
Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
CPU3 revision is: 0001992f (MIPS 1004Kc)
Synchronize counters for CPU 3: done.
smp: Brought up 1 node, 4 CPUs
devtmpfs: initialized
clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
futex hash table entries: 1024 (order: 3, 32768 bytes)
pinctrl core: initialized pinctrl subsystem
NET: Registered protocol family 16
mt7621-pci 1e140000.pcie: failed to get gpio perst
mt7621-pci 1e140000.pcie: Parsing DT failed
SCSI subsystem initialized
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
pcf857x 0-0026: probed
i2c-mt7621 1e000900.i2c: clock 400KHz, re-start not support
clocksource: Switched to clocksource GIC
NET: Registered protocol family 2
tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 6144 bytes)
TCP established hash table entries: 2048 (order: 1, 8192 bytes)
TCP bind hash table entries: 2048 (order: 2, 16384 bytes)
TCP: Hash tables configured (established 2048 bind 2048)
UDP hash table entries: 256 (order: 1, 8192 bytes)
UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
NET: Registered protocol family 1
Trying to unpack rootfs image as initramfs...
rootfs image is not initramfs (invalid magic at start of compressed archive); looks like an initrd
Freeing initrd memory: 16524K
Initialise system trusted keyrings
workingset: timestamp_bits=30 max_order=16 bucket_order=0
squashfs: version 4.0 (2009/01/31) Phillip Lougher
random: fast init done
Key type asymmetric registered
Asymmetric key parser 'x509' registered
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
mt7621_gpio 1e000600.gpio: registering 32 gpios
mt7621_gpio 1e000600.gpio: registering 32 gpios
mt7621_gpio 1e000600.gpio: registering 32 gpios
Serial: 8250/16550 driver, 3 ports, IRQ sharing disabled
printk: console [ttyS0] disabled
1e000c00.uartlite: ttyS0 at MMIO 0x1e000c00 (irq = 18, base_baud = 3125000) is a 16550A
printk: console [ttyS0] enabled
printk: console [ttyS0] enabled
printk: bootconsole [early0] disabled
printk: bootconsole [early0] disabled
1e000d00.uartlite: ttyS1 at MMIO 0x1e000d00 (irq = 19, base_baud = 3125000) is a 16550A
ledman: Copyright (C) SnapGear, 2000-2010.
ledman: registered ERASE switch on IRQ28
snapdog: HW/SW watchdog timer for SnapGear/Others
cacheinfo: Failed to find cpu0 device node
cacheinfo: Unable to detect cache hierarchy for CPU 0
brd: module loaded
mt7621-nand: NAND register bank at 0xbe003000
mt7621-nand: NAND ECC register bank at 0xbe003800
nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xdc
nand: Micron NAND 512MiB 3,3V 8-bit
nand: 512 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
nand: ecc bit: 4, spare_per_sector: 16
Bad block table found at page 262080, version 0x01
Bad block table found at page 262016, version 0x01
5 fixed-partitions partitions found on MTD device MT7621-NAND
Creating 5 MTD partitions on "MT7621-NAND":
0x000000000000-0x000000200000 : "u-boot"
0x000000200000-0x000000300000 : "u-boot-env"
0x000000300000-0x000000500000 : "log"
0x000000500000-0x000020000000 : "flash"
0x000000000000-0x000020000000 : "all"
libphy: Fixed MDIO Bus: probed
tun: Universal TUN/TAP device driver, 1.6
libphy: mdio: probed
mtk_soc_eth 1e100000.ethernet: generated random MAC address a6:2b:8b:f3:dd:6a
mtk_soc_eth 1e100000.ethernet: connected mac 0 to PHY at fixed-0:00 [uid=00000000, driver=Generic PHY]
mtk_soc_eth 1e100000.ethernet eth0: mediatek frame engine at 0xbe100000, irq 21
PPP generic driver version 2.4.2
PPP BSD Compression module registered
PPP Deflate Compression module registered
PPP MPPE Compression module registered
NET: Registered protocol family 24
SLIP: version 0.8.4-NET3.019-NEWTTY (dynamic channels, max=256).
CSLIP: code copyright 1989 Regents of the University of California.
usbcore: registered new interface driver ar5523
usbcore: registered new interface driver asix
usbcore: registered new interface driver ax88179_178a
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver cdc_eem
usbcore: registered new interface driver rndis_host
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver cdc_ncm
usbcore: registered new interface driver qmi_wwan
usbcore: registered new interface driver cdc_mbim
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci-pci: EHCI PCI platform driver
ehci-platform: EHCI generic platform driver
ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
ohci-pci: OHCI PCI platform driver
xhci-mtk 1e1c0000.xhci: xHCI Host Controller
xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 1
xhci-mtk 1e1c0000.xhci: hcc params 0x01401198 hci version 0x96 quirks 0x0000000000210010
xhci-mtk 1e1c0000.xhci: irq 20, io mem 0x1e1c0000
usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.01
usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb1: Product: xHCI Host Controller
usb usb1: Manufacturer: Linux 5.1.0-ac0 xhci-hcd
usb usb1: SerialNumber: 1e1c0000.xhci
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 2 ports detected
xhci-mtk 1e1c0000.xhci: xHCI Host Controller
xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 2
xhci-mtk 1e1c0000.xhci: Host supports USB 3.0  SuperSpeed
usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 5.01
usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
usb usb2: Product: xHCI Host Controller
usb usb2: Manufacturer: Linux 5.1.0-ac0 xhci-hcd
usb usb2: SerialNumber: 1e1c0000.xhci
hub 2-0:1.0: USB hub found
hub 2-0:1.0: 1 port detected
usbcore: registered new interface driver cdc_acm
cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters
usbcore: registered new interface driver cdc_wdm
usbcore: registered new interface driver usb-storage
usbcore: registered new interface driver usbserial_generic
usbserial: USB Serial support registered for generic
usbcore: registered new interface driver ipw
usbserial: USB Serial support registered for IPWireless converter
usbcore: registered new interface driver option
usbserial: USB Serial support registered for GSM modem (1-port)
usbcore: registered new interface driver qcaux
usbserial: USB Serial support registered for qcaux
usbcore: registered new interface driver qcserial
usbserial: USB Serial support registered for Qualcomm USB modem
usbcore: registered new interface driver quatech2
usbserial: USB Serial support registered for Quatech 2nd gen USB to Serial Driver
usbcore: registered new interface driver usb_serial_simple
usbserial: USB Serial support registered for carelink
usbserial: USB Serial support registered for zio
usbserial: USB Serial support registered for funsoft
usbserial: USB Serial support registered for flashloader
usbserial: USB Serial support registered for google
usbserial: USB Serial support registered for libtransistor
usbserial: USB Serial support registered for vivopay
usbserial: USB Serial support registered for moto_modem
usbserial: USB Serial support registered for motorola_tetra
usbserial: USB Serial support registered for novatel_gps
usbserial: USB Serial support registered for hp4x
usbserial: USB Serial support registered for suunto
usbserial: USB Serial support registered for siemens_mpi
u32 classifier
     input device check on
ipip: IPv4 and MPLS over IPv4 tunneling driver
gre: GRE over IPv4 demultiplexor driver
ip_gre: GRE over IPv4 tunneling driver
Initializing XFRM netlink socket
NET: Registered protocol family 10
Segment Routing with IPv6
sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
NET: Registered protocol family 17
NET: Registered protocol family 15
8021q: 802.1Q VLAN Support v1.8
Loading compiled-in X.509 certificates
mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)

                [HUNG]

---------------------------------------------------------------------------------

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
