Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCCF27448
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 04:12:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8607872CA;
	Thu, 23 May 2019 02:12:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ORvm3IrixYpe; Thu, 23 May 2019 02:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 99AB8872F5;
	Thu, 23 May 2019 02:11:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 078AF1BF301
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 May 2019 02:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0440187EC7
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 May 2019 02:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kDWEu+mSs+yi
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 May 2019 02:11:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out5.external.iinet.net.au
 (icp-osb-irony-out5.external.iinet.net.au [203.59.1.221])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7BC2887EAE
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 May 2019 02:11:56 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AfAABqAOZc/zXSMGcNWBoBAQEBAQI?=
 =?us-ascii?q?BAQEBBwIBAQEBgWWBZ4ZSk1UBAQEBAQEGgQgIJYNehXCJb4UugWcJAQEBAQE?=
 =?us-ascii?q?BAQEBNwEBAYQ/AoJUOBMBAwEBAQQBAQEBAwGGYAEBAQIBIxVBBQsLDQ0CJgI?=
 =?us-ascii?q?CVwYNCAEBgx6BdwWmH3GBLxqFLYMwgUaBDCiBYIoIeIEHgRABJwyBYX4+hC2?=
 =?us-ascii?q?DIYJYBIsuiB2BJJNCCYIPkwAGG4Iehl6DagOJSS2kE4F4MxoIKAiDKIMyAQi?=
 =?us-ascii?q?NJ48zAQE?=
X-IPAS-Result: =?us-ascii?q?A2AfAABqAOZc/zXSMGcNWBoBAQEBAQIBAQEBBwIBAQEBg?=
 =?us-ascii?q?WWBZ4ZSk1UBAQEBAQEGgQgIJYNehXCJb4UugWcJAQEBAQEBAQEBNwEBAYQ/A?=
 =?us-ascii?q?oJUOBMBAwEBAQQBAQEBAwGGYAEBAQIBIxVBBQsLDQ0CJgICVwYNCAEBgx6Bd?=
 =?us-ascii?q?wWmH3GBLxqFLYMwgUaBDCiBYIoIeIEHgRABJwyBYX4+hC2DIYJYBIsuiB2BJ?=
 =?us-ascii?q?JNCCYIPkwAGG4Iehl6DagOJSS2kE4F4MxoIKAiDKIMyAQiNJ48zAQE?=
X-IronPort-AV: E=Sophos;i="5.60,501,1549900800"; d="scan'208";a="225329059"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out5.iinet.net.au with ESMTP; 23 May 2019 10:11:53 +0800
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
 <CAMhs-H-Js2wiF5yH3pB5bFq9SE1X17OovsXtYuNH+obe0owknw@mail.gmail.com>
 <5a7dc59b-f9ef-beab-7221-231f64716d5a@kernel.org>
 <CAMhs-H-8EQPPy0vMFCG-PKu3RLz4_d0ucO6bCgMCfMuD7ZYRSg@mail.gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <a2f6ee9c-dc4e-a7e7-8723-880a3472e9ba@kernel.org>
Date: Thu, 23 May 2019 12:11:51 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMhs-H-8EQPPy0vMFCG-PKu3RLz4_d0ucO6bCgMCfMuD7ZYRSg@mail.gmail.com>
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

On 22/5/19 4:27 pm, Sergio Paracuellos wrote:
[snip]
> There are some big changes between 4.20 and 5.x. One is the use of PERST_N
> instead of using gpio. This PERT_N stuff is used now on enable ports
> assuming the
> link of PCI is properly detected after enabling the phy. And it seems
> it is not according to
> your dmesg traces. The previous 4.20 code used gpio before this was done.
> 
> This code is the one I am referring:
> 
> /* Use GPIO control instead of PERST_N */
> *(unsigned int *)(0xbe000620) |= BIT(19) | BIT(8) | BIT(7); // set DATA
> mdelay(1000);

I have been looking closely at those, wondering why the old code
drove that PERST line as a GPIO instead of using the built-in behavior.
(I have ignored bits 7 and 8 here since they are control of UART 3)


> I assume reset lines on your device tree are properly set up which is
> other of the big changes here: use
> reset lines instead of that hardcoding stuff. Also, the
> mt7621_reset_port routine is also using msleep(100)
> but maybe you can try a bigger value and change it into a mdelay, to
> see if that changes anything.

I see the reset line configuration in the pcie section of mt7621.dtsi,
is there any others absolutely required here?  I couldn't see the
gbpc1.dts devicetree do anything else with pcie - othe than enable it.
My device tree for the EX15 is similar in that regard.

I tried a couple of things with interesting results.

1. I made sure that the PERST_N line is set for PCIe operation (not GPIO).
    I forced it with:

        *(unsigned int *)(0xbe000060) &= ~(0x3 << 10);

    I checked bits 10 and 11 at kernel PCI init and they were 00 anyway.
    So PERST_N was definitely in PCIe reset mode. No change in behavior,
    

2. I forced a GPIO style reset of that PERST line (using GPIO19) and got
    the following result on kernel boot:

     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
     mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
     mt7621-pci 1e140000.pcie: Initiating port 1 failed
     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
     mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
     mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
     mt7621-pci 1e140000.pcie: Initiating port 2 failed
     mt7621-pci 1e140000.pcie: de-assert port 0 PERST_N
     mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
     mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
     pci_bus 0000:00: root bus resource [io  0xffffffff]
     pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
     pci_bus 0000:00: root bus resource [bus 00-ff]

And the system continued on to fully boot. So it looks like it thinks
pcie0 is active. Better, but the PCI bus probe didn't find any of the
devices it should have.

I inserted the quick hack code to do this at the top of mt7621_pcie_init_ports()
and it looked like this:

         /* Force PERST PCIe line into GPIO mode */
         *(unsigned int *)(0xbe000060) &= ~(0x3 << 10);
         *(unsigned int *)(0xbe000060) |=  BIT(10);
         mdelay(100);

         *(unsigned int *)(0xbe000600) |= BIT(19); // use GPIO19 (PERST_N/)
         mdelay(100);
         *(unsigned int *)(0xbe000620) &= ~(BIT(19)); // clear DATA
         mdelay(1000);

         /* Use GPIO control instead of PERST_N */
         *(unsigned int *)(0xbe000620) |= BIT(19); // set DATA
         mdelay(1000);


Regards
Greg


> Other big change is to use the new phy driver but I think the problem
> seems to be related with resets.
> 
>>
>> Regards
>> Greg
> 
> Please, don't hesitate to ask me whatever you need to.
> 
> Hope this helps.
> 
> Best regards,
>      Sergio Paracuellos
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
