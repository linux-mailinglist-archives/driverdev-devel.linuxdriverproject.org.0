Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E563E2D5F7
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 May 2019 09:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 84AA486BC9;
	Wed, 29 May 2019 07:11:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QfWfWJBBpOxS; Wed, 29 May 2019 07:11:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C082786B68;
	Wed, 29 May 2019 07:11:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC7021BF577
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 May 2019 07:11:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B960587BF7
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 May 2019 07:11:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lw-+ZE+XHJEJ
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 May 2019 07:11:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out5.external.iinet.net.au
 (icp-osb-irony-out5.external.iinet.net.au [203.59.1.221])
 by hemlock.osuosl.org (Postfix) with ESMTP id 82E1E85656
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 29 May 2019 07:11:11 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CRAADHL+5c/zXSMGcNVxsBAQEBAwE?=
 =?us-ascii?q?BAQcDAQEBgWWBZ4ETgSyEE5NgAQEBAQEBBoE1g1+FcYRyhH6FL4FnCQEBAQE?=
 =?us-ascii?q?BAQEBASMUAQEBhD8Cgw44EwEDAQEBBAEBAQEDAYEJhVYBAQEBAgEjBBFBBQs?=
 =?us-ascii?q?LDQsCAiYCAlcGDQYCAQEYgwYBgXYFqDdxfDMahS2DLYFGgQwogWGKCXiBB4E?=
 =?us-ascii?q?QASeBbX4+hCwBgyGCWASLPIgkgSWFeY1eCYIPhjiMXwYbgh+GaINuAxCBbYd?=
 =?us-ascii?q?aLaRQgXgzGggoCDuCbAmCEheBAgEIh1aFUWCPJwEB?=
X-IPAS-Result: =?us-ascii?q?A2CRAADHL+5c/zXSMGcNVxsBAQEBAwEBAQcDAQEBgWWBZ?=
 =?us-ascii?q?4ETgSyEE5NgAQEBAQEBBoE1g1+FcYRyhH6FL4FnCQEBAQEBAQEBASMUAQEBh?=
 =?us-ascii?q?D8Cgw44EwEDAQEBBAEBAQEDAYEJhVYBAQEBAgEjBBFBBQsLDQsCAiYCAlcGD?=
 =?us-ascii?q?QYCAQEYgwYBgXYFqDdxfDMahS2DLYFGgQwogWGKCXiBB4EQASeBbX4+hCwBg?=
 =?us-ascii?q?yGCWASLPIgkgSWFeY1eCYIPhjiMXwYbgh+GaINuAxCBbYdaLaRQgXgzGggoC?=
 =?us-ascii?q?DuCbAmCEheBAgEIh1aFUWCPJwEB?=
X-IronPort-AV: E=Sophos;i="5.60,526,1549900800"; d="scan'208";a="226897766"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out5.iinet.net.au with ESMTP; 29 May 2019 15:11:06 +0800
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <7335025e-372d-c5bd-80ee-75b3e0c61249@kernel.org>
Date: Wed, 29 May 2019 17:11:05 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMhs-H-GtrJZKx2Y3GhoXn9O=C4xx1QAeQ1CYt51LwrFY7y1sQ@mail.gmail.com>
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

On 27/5/19 6:02 pm, Sergio Paracuellos wrote:
> On Mon, May 27, 2019 at 9:29 AM Greg Ungerer <gerg@kernel.org> wrote:
>> On 27/5/19 4:35 pm, Sergio Paracuellos wrote:
>>> On Mon, May 27, 2019 at 6:37 AM Greg Ungerer <gerg@kernel.org> wrote:
>>>> On 24/5/19 3:35 pm, Sergio Paracuellos wrote:
>>>>> On Fri, May 24, 2019 at 2:35 AM Greg Ungerer <gerg@kernel.org> wrote:
>>>>>> On 23/5/19 3:26 pm, Sergio Paracuellos wrote:
>>>>>>> On Thu, May 23, 2019 at 4:11 AM Greg Ungerer <gerg@kernel.org> wrote:
>>>>>>>> On 22/5/19 4:27 pm, Sergio Paracuellos wrote:
>>>>>>>> [snip]
>>>>>>>>> There are some big changes between 4.20 and 5.x. One is the use of PERST_N
>>>>>>>>> instead of using gpio. This PERT_N stuff is used now on enable ports
>>>>>>>>> assuming the
>>>>>>>>> link of PCI is properly detected after enabling the phy. And it seems
>>>>>>>>> it is not according to
>>>>>>>>> your dmesg traces. The previous 4.20 code used gpio before this was done.
>>>>>>>>>
>>>>>>>>> This code is the one I am referring:
>>>>>>>>>
>>>>>>>>> /* Use GPIO control instead of PERST_N */
>>>>>>>>> *(unsigned int *)(0xbe000620) |= BIT(19) | BIT(8) | BIT(7); // set DATA
>>>>>>>>> mdelay(1000);
>>>>>>>>
>>>>>>>> I have been looking closely at those, wondering why the old code
>>>>>>>> drove that PERST line as a GPIO instead of using the built-in behavior.
>>>>>>>> (I have ignored bits 7 and 8 here since they are control of UART 3)
>>>>>>>
>>>>>>> Yes, this was also at first one of my big concerns so I tried to change into
>>>>>>> to use builtin behaviour (which is much more cleaner) and when the
>>>>>>> code was tested
>>>>>>> it worked. It seems it is not valid for every board.
>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>> I assume reset lines on your device tree are properly set up which is
>>>>>>>>> other of the big changes here: use
>>>>>>>>> reset lines instead of that hardcoding stuff. Also, the
>>>>>>>>> mt7621_reset_port routine is also using msleep(100)
>>>>>>>>> but maybe you can try a bigger value and change it into a mdelay, to
>>>>>>>>> see if that changes anything.
>>>>>>>>
>>>>>>>> I see the reset line configuration in the pcie section of mt7621.dtsi,
>>>>>>>> is there any others absolutely required here?  I couldn't see the
>>>>>>>> gbpc1.dts devicetree do anything else with pcie - othe than enable it.
>>>>>>>> My device tree for the EX15 is similar in that regard.
>>>>>>>>
>>>>>>>> I tried a couple of things with interesting results.
>>>>>>>>
>>>>>>>> 1. I made sure that the PERST_N line is set for PCIe operation (not GPIO).
>>>>>>>>         I forced it with:
>>>>>>>>
>>>>>>>>             *(unsigned int *)(0xbe000060) &= ~(0x3 << 10);
>>>>>>>>
>>>>>>>>         I checked bits 10 and 11 at kernel PCI init and they were 00 anyway.
>>>>>>>>         So PERST_N was definitely in PCIe reset mode. No change in behavior,
>>>>>>>>
>>>>>>>>
>>>>>>>> 2. I forced a GPIO style reset of that PERST line (using GPIO19) and got
>>>>>>>>         the following result on kernel boot:
>>>>>>>>
>>>>>>>>          mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>>>>>>>>          mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>>>>>>          mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>>>>>>>>          mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>>>>>>>>          mt7621-pci 1e140000.pcie: Initiating port 1 failed
>>>>>>>>          mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>>>>>>>>          mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>>>>>>>          mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>>>>>>>>          mt7621-pci 1e140000.pcie: Initiating port 2 failed
>>>>>>>>          mt7621-pci 1e140000.pcie: de-assert port 0 PERST_N
>>>>>>>
>>>>>>> This line seems to be the problem. When ports are init, (and with your
>>>>>>> changes seems the are
>>>>>>> init properly), the ports with pcie link are stored into a list to be
>>>>>>> enabled afterwards. This code is
>>>>>>> located into 'mt7621_pcie_enable_ports' which call simple
>>>>>>> 'mt7621_pcie_enable_port' to enable each port
>>>>>>> on the list. In this process it uses the PERS_N built-in register
>>>>>>> deasserting and asserting it. If enabling fails
>>>>>>> (and this is ypour case now) the port is removed from the list and it
>>>>>>> is not properly set up. You should try to
>>>>>>> comment this code:
>>>>>>>
>>>>>>> /* assert port PERST_N */
>>>>>>> val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
>>>>>>> val |= PCIE_PORT_PERST(slot);
>>>>>>> pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
>>>>>>>
>>>>>>> /* de-assert port PERST_N */
>>>>>>> val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
>>>>>>> val &= ~PCIE_PORT_PERST(slot);
>>>>>>> pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
>>>>>>>
>>>>>>> /* 100ms timeout value should be enough for Gen1 training */
>>>>>>> err = readl_poll_timeout(port->base + RALINK_PCI_STATUS,
>>>>>>> val, !!(val & PCIE_PORT_LINKUP),
>>>>>>> 20, 100 * USEC_PER_MSEC);
>>>>>>> if (err)
>>>>>>> return -ETIMEDOUT;
>>>>>>>
>>>>>>> because on enabling, it seems it is getting ETIMEOUT and hence the
>>>>>>> message '  mt7621-pci 1e140000.pcie: de-assert port 0 PERST_N'.
>>>>>>> Commenting
>>>>>>> this code should end up into a properly configured pci?
>>>>>>
>>>>>> No, unfortunately it doesn't. It does show PCIE0 enabled now though:
>>>>>
>>>>> That is a surprise :(
>>>>>
>>>>>>
>>>>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>>>>>> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>>>>>> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>>>>>> mt7621-pci 1e140000.pcie: Initiating port 1 failed
>>>>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>>>>>> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>>>>> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>>>>>> mt7621-pci 1e140000.pcie: Initiating port 2 failed
>>>>>> mt7621-pci 1e140000.pcie: PCIE0 enabled
>>>>>> mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
>>>>>> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
>>>>>> pci_bus 0000:00: root bus resource [io  0xffffffff]
>>>>>> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
>>>>>> pci_bus 0000:00: root bus resource [bus 00-ff]
>>>>>
>>>>>
>>>>>>
>>>>>> And again no devices are found on the PCI bus.
>>>>>> (System did still boot too).
>>>>>
>>>>> Looking to your original trace of linux-4.20 working the init traces
>>>>> are pretty much the same... I don't really know what could be
>>>>> happening there. Root resources
>>>>> are correct, virtual bridge seems to be detected, the next should be
>>>>> to reconfigure resources of
>>>>> the bridge and this is done by the pci kernel apis.
>>>>>
>>>>> Can you check that "mt7621_pcie_init_virtual_bridges" is getting link
>>>>> up and configuring bridges
>>>>> correctly?
>>>>
>>>> Yes, it does get link there. It sees pcie_link_status as 0x1, so its getting
>>>> through that.
>>>>
>>>> I threw a bit of trace in to see where we end up losing the ability to
>>>> read correct config data from slot 0 (my only valid slot). It gets to
>>>> the "err_no_link_up:" label for port/slot 2 still being able to read config
>>>> space, but then after executing the phy_power_off() and phy_exit()
>>>> calls for that port/slot we can no longer read config for slot 0.
>>>
>>> Mmmm. I see. So phy instances for port 0 and 2 are different instances
>>> of the phy, so it should not
>>> have problems for the power_off function. Looking again to the version
>>> which is in the 5.0 linux (but not in the last changes of
>>> staging where no child nodes are being used) I can see the phy_exit
>>> function is disabling the clock using PCIE_PORT_CLK_EN which is
>>> defined as:
>>>
>>> #define PCIE_PORT_CLK_EN(x) BIT(24 + (x))
>>>
>>> On probe function index is being set to 0 for the port 2 also, instead
>>> of 2 (which is the correct value). Just try to comment this line:
>>>
>>> rt_sysc_m32(PCIE_PORT_CLK_EN(instance->index), 0, RALINK_CLKCFG1);
>>>
>>> Does this enough to get the pci enumeration being done correctly?
>>
>> Yes, just that (and the gpio based reset hack) is enough to enumerate the bus.
> 
> Ok, so this is problem shouldn't be present in the current staging and
> linux tree at master where the
> device tree is not using child nodes, which is the way to go.

I cloned the staging tree from git.kernel.org and tried that.
It didn't work any better, I had to patch pci-mt7621.c and
pci-mt8721-phy.c in the same ways to get an almost working result.


> I think we should add a gpio reset line in the device tree and use it
> properly with
> the gpio descriptor api. Maybe this is better for all the boards
> instead of use the builtin stuff.

Would seem to be the best approach.


>>>> If I comment out the code in phy_power_off() and phy_exit() so they
>>>> return doing nothing then I get further:
>>>>
>>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>>>> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>>>> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>>>> mt7621-pci 1e140000.pcie: Initiating port 1 failed
>>>> mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>>>> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>>> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>>>> mt7621-pci 1e140000.pcie: Initiating port 2 failed
>>>> mt7621-pci 1e140000.pcie: PCIE0 enabled
>>>> mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
>>>> mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
>>>> pci_bus 0000:00: root bus resource [io  0xffffffff]
>>>> pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
>>>> pci_bus 0000:00: root bus resource [bus 00-ff]
>>>> pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
>>>> pci 0000:00:00.0: PCI bridge to [bus 01-ff]
>>>> pci 0000:00:00.0: BAR 0: no space for [mem size 0x80000000]
>>>> pci 0000:00:00.0: BAR 0: failed to assign [mem size 0x80000000]
>>>> pci 0000:00:00.0: BAR 8: assigned [mem 0x60000000-0x601fffff]
>>>> pci 0000:00:00.0: BAR 9: assigned [mem 0x60200000-0x602fffff pref]
>>>> pci 0000:00:00.0: BAR 1: assigned [mem 0x60300000-0x6030ffff]
>>>> pci 0000:00:00.0: BAR 7: no space for [io  size 0x1000]
>>>> pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x1000]
>>>> pci 0000:01:00.0: BAR 0: assigned [mem 0x60000000-0x601fffff 64bit]
>>>> pci 0000:01:00.0: BAR 6: assigned [mem 0x60200000-0x6020ffff pref]
>>>> pci 0000:00:00.0: PCI bridge to [bus 01]
>>>> pci 0000:00:00.0:   bridge window [mem 0x60000000-0x601fffff]
>>>> pci 0000:00:00.0:   bridge window [mem 0x60200000-0x602fffff pref]
>>>> pcieport 0000:00:00.0: of_irq_parse_pci: failed with rc=-22
>>>> pcieport 0000:00:00.0: enabling device (0004 -> 0006)
>>>>
>>>>
>>>> So devices found, but interrupt setup failed for some reason.
>>>> I have an atheros PCIe WIFI device on that bus which is detected, but
>>>> the interrupt failure means it still doesn't actually work.
>>>
>>> Nothing has changed about interrupts from linux 4.20 version to this.
>>> It is returning -EINVAL
>>> for some reason. Irq is set using  "of_irq_parse_and_map_pci" function.
>>
>> Not sure either why this would be different.
>> I'll dig into that tomorrow too.
> 
> Thanks, let me know any advance on this, please.

I suspect that the bus or devices stop reading/writing valid data
at some point in this initialization process. What I see is that
dumping /sys/bus/pci/devices/0000:01:00.0/config on a running
system shows:

   00000000: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
   00000010: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
   00000020: ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff ff     ................
   ...

But if I replace the PCI code again with that from 4.20 then
I get a valid dump of the wifi card config space:

   00000000: 8c 16 3c 00 06 00 10 00 00 00 80 02 00 00 00 00     ..<.............
   00000010: 04 00 00 60 00 00 00 00 00 00 00 00 00 00 00 00     ...`............
   00000020: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................

Regards
Greg


>> Regards
>> Greg
> 
> Best regards,
>      Sergio Paracuellos
> 
>>
>>
>>>> Regards
>>>> Greg
>>>
>>> Best regards,
>>>       Sergio Paracuellos
>>>>
>>>>
>>>>>> I'll keep digging.
>>>>>
>>>>> Thanks, really appreciate it.
>>>>>
>>>>>>
>>>>>> Thanks
>>>>>> Greg
>>>>>
>>>>> Best regards,
>>>>>        Sergio Paracuellos
>>>>>
>>>>>>
>>>>>>
>>>>>>>
>>>>>>>>          mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
>>>>>>>>          mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
>>>>>>>>          pci_bus 0000:00: root bus resource [io  0xffffffff]
>>>>>>>>          pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
>>>>>>>>          pci_bus 0000:00: root bus resource [bus 00-ff]
>>>>>>>>
>>>>>>>> And the system continued on to fully boot. So it looks like it thinks
>>>>>>>> pcie0 is active. Better, but the PCI bus probe didn't find any of the
>>>>>>>> devices it should have.
>>>>>>>
>>>>>>> Yes, that seems what is happening because of my explanation above.
>>>>>>>
>>>>>>>>
>>>>>>>> I inserted the quick hack code to do this at the top of mt7621_pcie_init_ports()
>>>>>>>> and it looked like this:
>>>>>>>>
>>>>>>>>              /* Force PERST PCIe line into GPIO mode */
>>>>>>>>              *(unsigned int *)(0xbe000060) &= ~(0x3 << 10);
>>>>>>>>              *(unsigned int *)(0xbe000060) |=  BIT(10);
>>>>>>>>              mdelay(100);
>>>>>>>>
>>>>>>>>              *(unsigned int *)(0xbe000600) |= BIT(19); // use GPIO19 (PERST_N/)
>>>>>>>>              mdelay(100);
>>>>>>>>              *(unsigned int *)(0xbe000620) &= ~(BIT(19)); // clear DATA
>>>>>>>>              mdelay(1000);
>>>>>>>>
>>>>>>>>              /* Use GPIO control instead of PERST_N */
>>>>>>>>              *(unsigned int *)(0xbe000620) |= BIT(19); // set DATA
>>>>>>>>              mdelay(1000);
>>>>>>>>
>>>>>>>>
>>>>>>>
>>>>>>> I really hate the gpio way of doing this. If this works we have to
>>>>>>> think in how to achieve this in a cleaner way :))
>>>>>>>
>>>>>>>> Regards
>>>>>>>> Greg
>>>>>>>
>>>>>>> Thanks for your effort in this.
>>>>>>>
>>>>>>> Best regards,
>>>>>>>         Sergio Paracuellos
>>>>>>>>
>>>>>>>>
>>>>>>>>> Other big change is to use the new phy driver but I think the problem
>>>>>>>>> seems to be related with resets.
>>>>>>>>>
>>>>>>>>>>
>>>>>>>>>> Regards
>>>>>>>>>> Greg
>>>>>>>>>
>>>>>>>>> Please, don't hesitate to ask me whatever you need to.
>>>>>>>>>
>>>>>>>>> Hope this helps.
>>>>>>>>>
>>>>>>>>> Best regards,
>>>>>>>>>          Sergio Paracuellos
>>>>>>>>>
>>>>>>>
>>>>>
>>>
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
