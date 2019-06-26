Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE175699D
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Jun 2019 14:45:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 57CE7821E2;
	Wed, 26 Jun 2019 12:45:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JP6F0y1XZXhU; Wed, 26 Jun 2019 12:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5008F81B76;
	Wed, 26 Jun 2019 12:45:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 374451BF9B2
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:45:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 33DB081B25
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:45:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VrWUfI8L69Kt
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:45:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AEC08821EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 12:45:06 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id q20so36752otl.0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 26 Jun 2019 05:45:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WcML/PZcVF7S9k/OmnwEIiUHHxNpSUDmna1dbbe7wqU=;
 b=GMLbbNmCWdiL6i/Qsq8ruV93vEaHNK9XxxUe2DxGPpq6GbxoBhEqw0N7qWLqaRi3Ii
 MCTDdIwgSdpRTkAlm+dPDDnNxx1tPo3T1OYlyRwrxl1tL/rfH53chSgTT53kbjNJKgUy
 fmc4zwmLNKrCJyNBbZb3ciLCb/v28C33HbzBwhhUrNQhFRmYZDvNeZC5pplBAtVn9j/H
 z1vdtGoShb5jhp0pPEsqxbocT5TkHk5CBscruRzYad1nJMRQGXqoGUCKpZdNYgNfqQTv
 42LpqaL05xKxeBoNbwuBiW+irO3Ale/t4Fn+gFAyb52/mIo2l0EcOvmGd8JM9zsTShZP
 oBGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WcML/PZcVF7S9k/OmnwEIiUHHxNpSUDmna1dbbe7wqU=;
 b=K7Sfa56xZqbMW1x9KzqzQaMAlRiNyYMQRSjkkZ9vhHS3vgyPaiaBjfkB1rTZpdaGeo
 OlxWV9wUHU1hvnr3koFU3ViT4WYfPoy//0ib11dISPjneXdI7Tnqxyue8q/gECosgjgA
 Q2P2pUSwvUYh8FVLq8L/n+xM40Ii1b0D3nZL+orHs6+YByE5R+t36dyL2jJ4BYm2opYJ
 R+OB+XHSs7dJB7GcBPAqG7DLjgT2kEi3N9IWzNMzud5vqVl6CQ2Mn+IfZ6Yza1ZTL/O1
 mbF38PkL4XzKGIsjMkxgz/6MNty1NYp9CKxgXys3ANDVy7trDpFqtzuMBusMeXp71xYH
 DLbA==
X-Gm-Message-State: APjAAAXRaSR/jUkLO0NMtQPc5Qwtts6ucchnMRHg/0GYJlXJ+ie3fWaf
 XL5fyUoUxnuRLctyWE/Q+PfqPCluK1qCqShSIuc=
X-Google-Smtp-Source: APXvYqyEHrdHcbSkD0rnoat7Y+Y7rrCpbPjcbRJN63rLX3FOcOtClQAi6Ak0Y/AqvXnH3Wq5RIpgcOJmtw9QFTv2BYA=
X-Received: by 2002:a9d:245:: with SMTP id 63mr3206045otb.321.1561553105886;
 Wed, 26 Jun 2019 05:45:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
 <a512ac38-e30f-5011-0764-3029d320f10c@kernel.org>
 <CAGSetNtcJkjnjO1Ftc01ueMuFMmJEv7HPpmQeSf313Rrbe2O5w@mail.gmail.com>
 <CAMhs-H_c8sq=mX-rPRDHtkqyRj1fQcSNY_8M7Y5ZGU2FV9_zSA@mail.gmail.com>
 <24106212-9bf9-867c-fed8-8ad828431cd7@kernel.org>
 <CAMhs-H-0YcipUZ2xWxRTijUDL1F8NMb-gh5WoPcj-jHabbHZJw@mail.gmail.com>
 <CAMhs-H8JrLbsfk6YwFqVXOfr7M0zKosZ-iMwtU+5ObDOqOOAAQ@mail.gmail.com>
 <b4180913-127a-1847-57b7-d630897783f0@kernel.org>
 <CAMhs-H_7y_Uxr23uoh_-K+uoYTTNqARsqZfYpq-hU0vsRRjBsg@mail.gmail.com>
 <554866dd-9b81-5854-628e-cceabcdebe5b@kernel.org>
In-Reply-To: <554866dd-9b81-5854-628e-cceabcdebe5b@kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Wed, 26 Jun 2019 14:44:54 +0200
Message-ID: <CAMhs-H_K-mWQYWNUk3xEBc8Ek_128VzZa-Z1ps4yqbDDOZ+=Vg@mail.gmail.com>
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Handle minor issues
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org, Neil Brown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Greg,

On Wed, Jun 26, 2019 at 2:18 PM Greg Ungerer <gerg@kernel.org> wrote:
>
> Hi Sergio,
>
> On 26/6/19 5:10 pm, Sergio Paracuellos wrote:
> > On Wed, Jun 26, 2019 at 5:31 AM Greg Ungerer <gerg@kernel.org> wrote:
> >> On 25/6/19 10:47 pm, Sergio Paracuellos wrote:
> >>> On Tue, Jun 25, 2019 at 7:18 AM Sergio Paracuellos
> >>> <sergio.paracuellos@gmail.com> wrote:
> >>>> On Tue, Jun 25, 2019 at 7:10 AM Greg Ungerer <gerg@kernel.org> wrote:
> >>>>> On 23/6/19 3:58 pm, Sergio Paracuellos wrote:
> >>>>>> On Sun, Jun 23, 2019 at 4:15 AM Brett Neumeier <bneumeier@gmail.com> wrote:
> >>>>>>> On Fri, Jun 21, 2019 at 7:35 AM Greg Ungerer <gerg@kernel.org> wrote:
> >>>>>>>> On 21/6/19 4:15 pm, Sergio Paracuellos wrote:
> >>>>>>>>> This patch series properly handle minor issues in this driver. These are:
> >>>>>>>>> * Disable pcie port clock on pci dirver instead of doing it in the phy
> >>>>>>>>>       driver. The pci driver is the correct place to do this.
> >>>>>>>>> * Add a missing call to phy_exit function to properly handle the function
> >>>>>>>>>       'mt7621_pcie_init_port' error path.
> >>>>>>>>> * Move driver to init in a later stage using 'module_init' instead of using
> >>>>>>>>>       'arch_initcall'.
> >>>>>>>>>
> >>>>>>>>> Patches are only compile-tested. It would be awasome to be tested before applied
> >>>>>>>>> them (mainly the change to 'module_init' stuff).
> >>>>>>>
> >>>>>>> I have similar results to Greg -- on GnuBee PC1 and PC2, six boot
> >>>>>>> attempts each on a kernel built from staging-next, I have four hangs
> >>>>>>> and eight successful boots. The hanging patterns are similar to
> >>>>>>> previous results. If the full boot logs would be helpful let me know,
> >>>>>>> I can provide them.
> >>>>>>
> >>>>>> Thanks for letting me know. One thing we can try is check init order
> >>>>>> in v4.20 kernel. Can you please try to compile pci driver for the
> >>>>>> kernel v4.20 tag changing
> >>>>>> driver's last line 'arch_initcall' into 'module_init'? Just to know if
> >>>>>> at that working driver putting all the stuff in a later stage stills
> >>>>>> work as expected.
> >>>>>>
> >>>>>> Full dmesg's of this v4.20 wih the change would be helpful.
> >>>>>
> >>>>> Not exactly what you asked for, but just as useful I think.
> >>>>> I have a linux-5.1.14 kernel with the linux-4.20 pci-mt7621.c
> >>>>> driver in place. That works great, never hangs, always probes
> >>>>> PCI and works.
> >>>>>
> >>>>> If I change the pci-mt7621.c arch_initcall() to module_init(),
> >>>>> then I see the PCI probe happen much latter in boot. Running this
> >>>>> I have booted about 15 times, no hangs, PCI bus probed and working
> >>>>> on every boot.
> >>>>
> >>>> Perfect. That is exactly what I wanted to know. Thanks for testing this.
> >>>>
> >>>>>
> >>>>> Boot log below.
> >>>>>
> >>>>> Regards
> >>>>> Greg
> >>>
> >>> Can you please test the following change?
> >>>
> >>> diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c
> >>> b/drivers/staging/mt7621-pci/pci-mt7621.c
> >>> index a981f4f0ed03..9ae14f722c91 100644
> >>> --- a/drivers/staging/mt7621-pci/pci-mt7621.c
> >>> +++ b/drivers/staging/mt7621-pci/pci-mt7621.c
> >>> @@ -41,8 +41,8 @@
> >>>
> >>>    /* MediaTek specific configuration registers */
> >>>    #define PCIE_FTS_NUM                   0x70c
> >>> -#define PCIE_FTS_NUM_MASK              GENMASK(15, 8)
> >>> -#define PCIE_FTS_NUM_L0(x)             ((x) & 0xff << 8)
> >>> +#define PCIE_FTS_NUM_MASK              GENMASK(7, 0)
> >>> +#define PCIE_FTS_NUM_L0(x)             ((x) << 8)
> >>>
> >>>    /* rt_sysc_membase relative registers */
> >>>    #define RALINK_CLKCFG1                 0x30
> >>> @@ -540,7 +540,7 @@ static void mt7621_pcie_enable_ports(struct
> >>> mt7621_pcie *pcie)
> >>>                   write_config(pcie, slot, PCI_COMMAND, val);
> >>>                   /* configure RC FTS number to 250 when it leaves L0s */
> >>>                   val = read_config(pcie, slot, PCIE_FTS_NUM);
> >>> -               val &= ~PCIE_FTS_NUM_MASK;
> >>> +               val &= ~(PCIE_FTS_NUM_MASK) << 8;
> >>>                   val |= PCIE_FTS_NUM_L0(0x50);
> >>>                   write_config(pcie, slot, PCIE_FTS_NUM, val);
> >>>           }
> >>
> >> Same result. Occasional hangs on boot, sometimes it boots all the way up
> >> successfully.
> >
> > No lucky for us again :(
> >
> >> But looking at the patch doesn't it do essentiall
> >> the same thing?
> >
> > Well, it looks like the same thing but I wrote this two in the way the
> > are in the original code, But it is not exactly the
> > same because the following:
> >
> > #define PCIE_FTS_NUM_L0(x)             ((x) & 0xff << 8)
> >
> > should be
> >
> > #define PCIE_FTS_NUM_L0(x)             (((x) & 0xff) << 8)
>
> Ahh, yes, sorry I missed that missing set of brackets.
> You are right.

No problem, I also miss them rewritting code. That is bad :((.

>
> BTW, I applied that on top of your other recent fixes (that ones
> you pushed to  gregkh for staging). So I tested with the
> updated GPIO reset code.

Ok, anyway.. I have just sent the change jus to have the same code behaviour
that was being there before.

>
> Regards
> Greg

Best regards,
    Sergio Paracuellos
>
>
>
> > A parenthesis is missing there to be exactly the same. I rewrote bad
> > those two. But it seems it doesn't matter...
> >
> > Original code in v4.20:
> >
> > val &= ~(0xff) << 8;
> > val |= 0x50 << 8;
> > write_config(pcie, 0, 0x70c, val);
> >
> > Now:
> >
> > #define PCIE_FTS_NUM                 0x70c
> > #define PCIE_FTS_NUM_MASK      GENMASK(15, 8)
> > #define PCIE_FTS_NUM_L0(x)         ((x) & 0xff << 8)
> >
> > val = read_config(pcie, slot, PCIE_FTS_NUM);
> > val &= ~PCIE_FTS_NUM_MASK;
> > val |= PCIE_FTS_NUM_L0(0x50);
> > write_config(pcie, slot, PCIE_FTS_NUM, val);
> >
> > Without the parenthesis the 0x50 is getting into 0's right? instead of
> > just moving itself 8 bits left.
> >
> >>
> >> Regards
> >> Greg
> >>
> >
> > Best regards,
> >      Sergio Paracuellos
> >
> >>
> >>
> >>> Best regards,
> >>>       Sergio Paracuellos
> >>>
> >>>>>
> >>>>> Linux version 5.1.14 (gerg@goober) (gcc version 5.4.0 (GCC)) #2 SMP Tue Jun 25 14:34:27 AEST 2019
> >>>>> SoC Type: MediaTek MT7621 ver:1 eco:3
> >>>>> printk: bootconsole [early0] enabled
> >>>>> CPU0 revision is: 0001992f (MIPS 1004Kc)
> >>>>> OF: fdt: No chosen node found, continuing without
> >>>>> MIPS: machine is Digi EX15
> >>>>> Determined physical RAM map:
> >>>>>     memory: 10000000 @ 00000000 (usable)
> >>>>> Initrd not found or empty - disabling initrd
> >>>>> VPE topology {2,2} total 4
> >>>>> Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
> >>>>> Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
> >>>>> MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
> >>>>> Zone ranges:
> >>>>>      Normal   [mem 0x0000000000000000-0x000000000fffffff]
> >>>>> Movable zone start for each node
> >>>>> Early memory node ranges
> >>>>>      node   0: [mem 0x0000000000000000-0x000000000fffffff]
> >>>>> Initmem setup node 0 [mem 0x0000000000000000-0x000000000fffffff]
> >>>>> random: get_random_bytes called from start_kernel+0xb0/0x51c with crng_init=0
> >>>>> percpu: Embedded 15 pages/cpu s30144 r8192 d23104 u61440
> >>>>> Built 1 zonelists, mobility grouping on.  Total pages: 65024
> >>>>> Kernel command line:  console=ttyS0,115200 ubi.mtd=3 root=/dev/mtdblock5 bootpart=a
> >>>>> Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
> >>>>> Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
> >>>>> Writing ErrCtl register=00030517
> >>>>> Readback ErrCtl register=00030517
> >>>>> Memory: 251176K/262144K available (6464K kernel code, 243K rwdata, 1200K rodata, 272K init, 228K bss, 10968K reserved, 0K cma-reserved)
> >>>>> SLUB: HWalign=32, Order=0-3, MinObjects=0, CPUs=4, Nodes=1
> >>>>> rcu: Hierarchical RCU implementation.
> >>>>> rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
> >>>>> NR_IRQS: 256
> >>>>> clocksource: GIC: mask: 0xffffffffffffffff max_cycles: 0xcaf478abb4, max_idle_ns: 440795247997 ns
> >>>>> sched_clock: 32 bits at 100 Hz, resolution 10000000ns, wraps every 21474836475000000ns
> >>>>> Calibrating delay loop... 586.13 BogoMIPS (lpj=2930688)
> >>>>> pid_max: default: 32768 minimum: 301
> >>>>> Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
> >>>>> Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)
> >>>>> rcu: Hierarchical SRCU implementation.
> >>>>> smp: Bringing up secondary CPUs ...
> >>>>> Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
> >>>>> Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
> >>>>> MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
> >>>>> CPU1 revision is: 0001992f (MIPS 1004Kc)
> >>>>> Synchronize counters for CPU 1: done.
> >>>>> Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
> >>>>> Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
> >>>>> MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
> >>>>> CPU2 revision is: 0001992f (MIPS 1004Kc)
> >>>>> Synchronize counters for CPU 2: done.
> >>>>> Primary instruction cache 32kB, VIPT, 4-way, linesize 32 bytes.
> >>>>> Primary data cache 32kB, 4-way, PIPT, no aliases, linesize 32 bytes
> >>>>> MIPS secondary cache 256kB, 8-way, linesize 32 bytes.
> >>>>> CPU3 revision is: 0001992f (MIPS 1004Kc)
> >>>>> Synchronize counters for CPU 3: done.
> >>>>> smp: Brought up 1 node, 4 CPUs
> >>>>> devtmpfs: initialized
> >>>>> clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
> >>>>> futex hash table entries: 1024 (order: 3, 32768 bytes)
> >>>>> pinctrl core: initialized pinctrl subsystem
> >>>>> NET: Registered protocol family 16
> >>>>> SCSI subsystem initialized
> >>>>> usbcore: registered new interface driver usbfs
> >>>>> usbcore: registered new interface driver hub
> >>>>> usbcore: registered new device driver usb
> >>>>> pcf857x 0-0026: probed
> >>>>> i2c-mt7621 1e000900.i2c: clock 400KHz, re-start not support
> >>>>> clocksource: Switched to clocksource GIC
> >>>>> NET: Registered protocol family 2
> >>>>> tcp_listen_portaddr_hash hash table entries: 512 (order: 0, 6144 bytes)
> >>>>> TCP established hash table entries: 2048 (order: 1, 8192 bytes)
> >>>>> TCP bind hash table entries: 2048 (order: 2, 16384 bytes)
> >>>>> TCP: Hash tables configured (established 2048 bind 2048)
> >>>>> UDP hash table entries: 256 (order: 1, 8192 bytes)
> >>>>> UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)
> >>>>> NET: Registered protocol family 1
> >>>>> workingset: timestamp_bits=30 max_order=16 bucket_order=0
> >>>>> squashfs: version 4.0 (2009/01/31) Phillip Lougher
> >>>>> random: fast init done
> >>>>> Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
> >>>>> mt7621_gpio 1e000600.gpio: registering 32 gpios
> >>>>> mt7621_gpio 1e000600.gpio: registering 32 gpios
> >>>>> mt7621_gpio 1e000600.gpio: registering 32 gpios
> >>>>> Serial: 8250/16550 driver, 3 ports, IRQ sharing disabled
> >>>>> printk: console [ttyS0] disabled
> >>>>> 1e000c00.uartlite: ttyS0 at MMIO 0x1e000c00 (irq = 18, base_baud = 3125000) is a 16550A
> >>>>> printk: console [ttyS0] enabled
> >>>>> printk: console [ttyS0] enabled
> >>>>> printk: bootconsole [early0] disabled
> >>>>> printk: bootconsole [early0] disabled
> >>>>> 1e000d00.uartlite: ttyS1 at MMIO 0x1e000d00 (irq = 19, base_baud = 3125000) is a 16550A
> >>>>> cacheinfo: Failed to find cpu0 device node
> >>>>> cacheinfo: Unable to detect cache hierarchy for CPU 0
> >>>>> brd: module loaded
> >>>>> mt7621-nand: NAND register bank at 0xbe003000
> >>>>> mt7621-nand: NAND ECC register bank at 0xbe003800
> >>>>> nand: device found, Manufacturer ID: 0x2c, Chip ID: 0xdc
> >>>>> nand: Micron NAND 512MiB 3,3V 8-bit
> >>>>> nand: 512 MiB, SLC, erase size: 128 KiB, page size: 2048, OOB size: 64
> >>>>> nand: ecc bit: 4, spare_per_sector: 16
> >>>>> Bad block table found at page 262080, version 0x01
> >>>>> Bad block table found at page 262016, version 0x01
> >>>>> 5 fixed-partitions partitions found on MTD device MT7621-NAND
> >>>>> Creating 5 MTD partitions on "MT7621-NAND":
> >>>>> 0x000000000000-0x000000200000 : "u-boot"
> >>>>> 0x000000200000-0x000000300000 : "u-boot-env"
> >>>>> 0x000000300000-0x000000500000 : "log"
> >>>>> 0x000000500000-0x000020000000 : "flash"
> >>>>> 0x000000000000-0x000020000000 : "all"
> >>>>> libphy: Fixed MDIO Bus: probed
> >>>>> tun: Universal TUN/TAP device driver, 1.6
> >>>>> libphy: mdio: probed
> >>>>> mtk_soc_eth 1e100000.ethernet: generated random MAC address c6:f5:21:ba:39:d3
> >>>>> mtk_soc_eth 1e100000.ethernet: connected mac 0 to PHY at fixed-0:00 [uid=00000000, driver=Generic PHY]
> >>>>> mtk_soc_eth 1e100000.ethernet eth0: mediatek frame engine at 0xbe100000, irq 21
> >>>>> PPP generic driver version 2.4.2
> >>>>> PPP BSD Compression module registered
> >>>>> PPP Deflate Compression module registered
> >>>>> PPP MPPE Compression module registered
> >>>>> NET: Registered protocol family 24
> >>>>> SLIP: version 0.8.4-NET3.019-NEWTTY (dynamic channels, max=256).
> >>>>> CSLIP: code copyright 1989 Regents of the University of California.
> >>>>> usbcore: registered new interface driver asix
> >>>>> usbcore: registered new interface driver ax88179_178a
> >>>>> usbcore: registered new interface driver cdc_ether
> >>>>> usbcore: registered new interface driver cdc_eem
> >>>>> usbcore: registered new interface driver rndis_host
> >>>>> usbcore: registered new interface driver cdc_subset
> >>>>> usbcore: registered new interface driver cdc_ncm
> >>>>> usbcore: registered new interface driver qmi_wwan
> >>>>> usbcore: registered new interface driver cdc_mbim
> >>>>> ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> >>>>> ehci-pci: EHCI PCI platform driver
> >>>>> ehci-platform: EHCI generic platform driver
> >>>>> ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
> >>>>> ohci-pci: OHCI PCI platform driver
> >>>>> xhci-mtk 1e1c0000.xhci: xHCI Host Controller
> >>>>> xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 1
> >>>>> xhci-mtk 1e1c0000.xhci: hcc params 0x01401198 hci version 0x96 quirks 0x0000000000210010
> >>>>> xhci-mtk 1e1c0000.xhci: irq 20, io mem 0x1e1c0000
> >>>>> usb usb1: New USB device found, idVendor=1d6b, idProduct=0002, bcdDevice= 5.01
> >>>>> usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
> >>>>> usb usb1: Product: xHCI Host Controller
> >>>>> usb usb1: Manufacturer: Linux 5.1.14-ac0 xhci-hcd
> >>>>> usb usb1: SerialNumber: 1e1c0000.xhci
> >>>>> hub 1-0:1.0: USB hub found
> >>>>> hub 1-0:1.0: 2 ports detected
> >>>>> xhci-mtk 1e1c0000.xhci: xHCI Host Controller
> >>>>> xhci-mtk 1e1c0000.xhci: new USB bus registered, assigned bus number 2
> >>>>> xhci-mtk 1e1c0000.xhci: Host supports USB 3.0  SuperSpeed
> >>>>> usb usb2: We don't know the algorithms for LPM for this host, disabling LPM.
> >>>>> usb usb2: New USB device found, idVendor=1d6b, idProduct=0003, bcdDevice= 5.01
> >>>>> usb usb2: New USB device strings: Mfr=3, Product=2, SerialNumber=1
> >>>>> usb usb2: Product: xHCI Host Controller
> >>>>> usb usb2: Manufacturer: Linux 5.1.14-ac0 xhci-hcd
> >>>>> usb usb2: SerialNumber: 1e1c0000.xhci
> >>>>> hub 2-0:1.0: USB hub found
> >>>>> hub 2-0:1.0: 1 port detected
> >>>>> usbcore: registered new interface driver cdc_acm
> >>>>> cdc_acm: USB Abstract Control Model driver for USB modems and ISDN adapters
> >>>>> usbcore: registered new interface driver cdc_wdm
> >>>>> usbcore: registered new interface driver usb-storage
> >>>>> usbcore: registered new interface driver usbserial_generic
> >>>>> usbserial: USB Serial support registered for generic
> >>>>> usbcore: registered new interface driver ipw
> >>>>> usbserial: USB Serial support registered for IPWireless converter
> >>>>> usbcore: registered new interface driver option
> >>>>> usbserial: USB Serial support registered for GSM modem (1-port)
> >>>>> usbcore: registered new interface driver qcaux
> >>>>> usbserial: USB Serial support registered for qcaux
> >>>>> usbcore: registered new interface driver qcserial
> >>>>> usbserial: USB Serial support registered for Qualcomm USB modem
> >>>>> usbcore: registered new interface driver quatech2
> >>>>> usbserial: USB Serial support registered for Quatech 2nd gen USB to Serial Driver
> >>>>> usbcore: registered new interface driver usb_serial_simple
> >>>>> usbserial: USB Serial support registered for carelink
> >>>>> usbserial: USB Serial support registered for zio
> >>>>> usbserial: USB Serial support registered for funsoft
> >>>>> usbserial: USB Serial support registered for flashloader
> >>>>> usbserial: USB Serial support registered for google
> >>>>> usbserial: USB Serial support registered for libtransistor
> >>>>> usbserial: USB Serial support registered for vivopay
> >>>>> usbserial: USB Serial support registered for moto_modem
> >>>>> usbserial: USB Serial support registered for motorola_tetra
> >>>>> usbserial: USB Serial support registered for novatel_gps
> >>>>> usbserial: USB Serial support registered for hp4x
> >>>>> usbserial: USB Serial support registered for suunto
> >>>>> usbserial: USB Serial support registered for siemens_mpi
> >>>>> ***** Xtal 40MHz *****
> >>>>> PCIE1 no card, disable it(RST&CLK)
> >>>>> PCIE2 no card, disable it(RST&CLK)
> >>>>> PCIE0 enabled
> >>>>> PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
> >>>>> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
> >>>>> pci_bus 0000:00: root bus resource [io  0xffffffff]
> >>>>> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
> >>>>> pci_bus 0000:00: root bus resource [bus 00-ff]
> >>>>> pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
> >>>>> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> >>>>> pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
> >>>>> pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
> >>>>> pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
> >>>>> pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
> >>>>> pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
> >>>>> pci 0000:00:00.0: BAR 7: no space for [io  size 0x1000]
> >>>>> pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x1000]
> >>>>> pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
> >>>>> pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
> >>>>> pci 0000:00:00.0: PCI bridge to [bus 01]
> >>>>> pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
> >>>>> pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
> >>>>> pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
> >>>>> pcieport 0000:00:00.0: enabling device (0004 -> 0006)
> >>>>> u32 classifier
> >>>>>        input device check on
> >>>>> ipip: IPv4 and MPLS over IPv4 tunneling driver
> >>>>> gre: GRE over IPv4 demultiplexor driver
> >>>>> ip_gre: GRE over IPv4 tunneling driver
> >>>>> Initializing XFRM netlink socket
> >>>>> NET: Registered protocol family 10
> >>>>> Segment Routing with IPv6
> >>>>> sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
> >>>>> NET: Registered protocol family 17
> >>>>> NET: Registered protocol family 15
> >>>>> 8021q: 802.1Q VLAN Support v1.8
> >>>>> libphy: dsa slave smi: probed
> >>>>> mt7530 mdio-bus:00 lan (uninitialized): PHY [dsa-0.0:00] driver [Generic PHY]
> >>>>> mt7530 mdio-bus:00 wan (uninitialized): PHY [dsa-0.0:01] driver [Generic PHY]
> >>>>> DSA: tree 0 setup
> >>>>> ubi0: attaching mtd3
> >>>>> ubi0: scanning is finished
> >>>>> ubi0: attached mtd3 (name "flash", size 507 MiB)
> >>>>> ubi0: PEB size: 131072 bytes (128 KiB), LEB size: 126976 bytes
> >>>>> ubi0: min./max. I/O unit sizes: 2048/2048, sub-page size 2048
> >>>>> ubi0: VID header offset: 2048 (aligned 2048), data offset: 4096
> >>>>> ubi0: good PEBs: 4052, bad PEBs: 4, corrupted PEBs: 0
> >>>>> ubi0: user volume: 4, internal volumes: 1, max. volumes count: 128
> >>>>> ubi0: max/mean erase counter: 9/4, WL threshold: 4096, image sequence number: 1236486005
> >>>>> ubi0: available PEBs: 0, total reserved PEBs: 4052, PEBs reserved for bad PEB handling: 76
> >>>>> ubi0: background thread "ubi_bgt0d" started, PID 112
> >>>>> hctosys: unable to open rtc device (rtc0)
> >>>>> VFS: Mounted root (squashfs filesystem) readonly on device 31:5.
> >>>>> devtmpfs: mounted
> >>>>> Freeing unused kernel memory: 272K
> >>>>> This architecture does not have kernel memory protection.
> >>>>> Run /sbin/init as init process
> >>>>> Run /etc/init as init process
> >>>>> Run /bin/init as init process
> >>>>>
> >>>>>
> >>>
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
