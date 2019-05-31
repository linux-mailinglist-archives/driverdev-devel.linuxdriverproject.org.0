Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7480A30E58
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 May 2019 14:47:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 34E902042F;
	Fri, 31 May 2019 12:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YcNygDGA7tnc; Fri, 31 May 2019 12:47:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8145C2041A;
	Fri, 31 May 2019 12:47:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BCA811BF23C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 12:47:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B816086B0E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 12:47:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XMPMTH2+gQ3N
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 12:47:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out8.external.iinet.net.au
 (icp-osb-irony-out8.external.iinet.net.au [203.59.1.225])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5D25186AE3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 31 May 2019 12:47:13 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ANAABtIfFc/zXSMGcNWBoBAQEBAQI?=
 =?us-ascii?q?BAQEBBwIBAQEBgVQCAQEBAQsBhCWEFJNSAQEBAQEBBoE1g1+FcYlxhTCBZwk?=
 =?us-ascii?q?BAQEBAQEBAQE3AQEBhD8Cgyc3Bg4BAwEBAQQBAQEBAwGGXwEBAQECASMVQRA?=
 =?us-ascii?q?LDQsCAiYCAlcGDQYCAQGDHoF3BalVcYEvGoUtgyeBRoEMKAGBYIoMeIEHgRA?=
 =?us-ascii?q?BJ4Ftfj6ELYMhglgEi3iHdJUECYIPiwqIHAYbgiGGcINvA4lhLY11lnqBejM?=
 =?us-ascii?q?aCCgIgyeQZGCOfAEB?=
X-IPAS-Result: =?us-ascii?q?A2ANAABtIfFc/zXSMGcNWBoBAQEBAQIBAQEBBwIBAQEBg?=
 =?us-ascii?q?VQCAQEBAQsBhCWEFJNSAQEBAQEBBoE1g1+FcYlxhTCBZwkBAQEBAQEBAQE3A?=
 =?us-ascii?q?QEBhD8Cgyc3Bg4BAwEBAQQBAQEBAwGGXwEBAQECASMVQRALDQsCAiYCAlcGD?=
 =?us-ascii?q?QYCAQGDHoF3BalVcYEvGoUtgyeBRoEMKAGBYIoMeIEHgRABJ4Ftfj6ELYMhg?=
 =?us-ascii?q?lgEi3iHdJUECYIPiwqIHAYbgiGGcINvA4lhLY11lnqBejMaCCgIgyeQZGCOf?=
 =?us-ascii?q?AEB?=
X-IronPort-AV: E=Sophos;i="5.60,535,1549900800"; d="scan'208";a="222764333"
Received: from unknown (HELO [10.44.0.192]) ([103.48.210.53])
 by icp-osb-irony-out8.iinet.net.au with ESMTP; 31 May 2019 20:47:09 +0800
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
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
 <CAMhs-H_zFUecOu95U-xekQ3Da5psbc6YdQttosCJbZi5vetKSw@mail.gmail.com>
 <790e5f32-5c70-e277-46ad-7956aaf32af3@kernel.org>
 <ddd690f9-a2d6-5fbf-260e-9e535d81b3e6@kernel.org>
 <CAMhs-H-x_O21iq=Xm6LDFTTR4xVS4NrN9ePiCLsLpnxVQXieKA@mail.gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <7da1739e-2afd-8ff6-29c9-2fa1c53f688d@kernel.org>
Date: Fri, 31 May 2019 22:47:07 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAMhs-H-x_O21iq=Xm6LDFTTR4xVS4NrN9ePiCLsLpnxVQXieKA@mail.gmail.com>
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

On 31/5/19 10:37 pm, Sergio Paracuellos wrote:
> On Thu, May 30, 2019 at 3:46 AM Greg Ungerer <gerg@kernel.org> wrote:
>> On 30/5/19 10:44 am, Greg Ungerer wrote:
>>> On 29/5/19 6:08 pm, Sergio Paracuellos wrote:
>>> [snip]
>>>> I have added gpio consumer stuff and reorder a bit the code to be more
>>>> similar to 4.20.
>>>>
>>>> I attach the patch. I have not try it to compile it, because my normal
>>>> environment is in another
>>>> computer and I am in the middle of moving from my current house and
>>>> don't have access to it, sorry.
>>>> So, please try this and let's see what happens.
>>>
>>> No problem, thanks for the patch.
>>>
>>> Unfortunately always locks up on kernel boot:
>>>
>>>     ...
>>>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
>>>     mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
>>>     mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>>>     mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
>>>     mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
>>>     mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>>>     mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>>>
>>> That was original linux-5.1 patched with your attached patch.
>>>
>>> I'll try and dig down into that further today and get some
>>> feedback on where it is failing.
>>
>> The first problem I see is that the GPIO MODE register bits for
>> PERST_MODE are set to 00, so in "PCIe Reset" mode. If I hack in
>> a register update for that with:
>>
>>       /* Force PERST PCIe reset into GPIO mode */
>>       *(unsigned int *)(0xbe000060) |=  BIT(10);
> 
> I have set GPIO mode for this in the new attached patch.
> 
>>
>> I do that at the start of mt7621_pcie_init_ports(). With that in
>> place I get further:
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
>> It hangs there...
> 
> I had review the boot order is working for you in version 4.20 and the
> order with the new patch applied. There were
> only one difference, the place where interrupt bits are set. I have
> changed that also in the new attached patch.
> 
> For me, the order now and how the different boot steps are being done
> in v4.20 are the same.
> 
> One other thing I don't really understand why is needed but is in the
> v4.20 code are this two lines:
> 
> pcie_write(pcie, 0xffffffff, RALINK_PCI_MEMBASE);
> pcie_write(pcie, RALINK_PCI_IO_MAP_BASE, RALINK_PCI_IOBASE);
> 
> These are added also in the current patch.

Thats great, thanks for your efforts on this.
I will try first thing Monday morning my time and get back to you.

Regards
Greg



>> Regards
>> Greg
> 
> Hope this helps.
> 
> Best regards,
>      Sergio Paracuellos
>>
>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
