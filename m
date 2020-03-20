Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DC018D261
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 16:09:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C801C86257;
	Fri, 20 Mar 2020 15:09:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oDNKKlC0vPg3; Fri, 20 Mar 2020 15:09:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40D3C85FE6;
	Fri, 20 Mar 2020 15:08:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A6E9D1BF32C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:08:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A269C86A72
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:08:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VUbjuklQUQH1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:08:56 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out6.external.iinet.net.au
 (icp-osb-irony-out6.external.iinet.net.au [203.59.1.106])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED63086977
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 15:08:55 +0000 (UTC)
X-SMTP-MATCH: 0
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ADAAAM3HRe/zXSMGcNWRoBAQEBAQE?=
 =?us-ascii?q?BAQEDAQEBAREBAQECAgEBAQGBaAQBAQEBCwGBd4EdgTGEGI9SAQEBAQEBBoE?=
 =?us-ascii?q?SJYNuhgqFFIlZZYF7CQEBAQEBAQEBAS0KBAEBhEQCgkg1CA4CEAEBAQUBAQE?=
 =?us-ascii?q?BAQUDAYV3TIVwAQEBAyMVQRALDQsCAiYCAlcGDQYCAQGDIgGCVzSsG3WBMhq?=
 =?us-ascii?q?EGwGBFYMtgT6BDioBgWSKZHmBB4ERJwyCYT6CZAOEdYJeBJd0mFOCRodYjyA?=
 =?us-ascii?q?GAhuDTYtoA4wdmA+UXAGCDzMaCCgISBCCTwlHjk4XiGSFU2ICjxABAQ?=
X-IPAS-Result: =?us-ascii?q?A2ADAAAM3HRe/zXSMGcNWRoBAQEBAQEBAQEDAQEBAREBA?=
 =?us-ascii?q?QECAgEBAQGBaAQBAQEBCwGBd4EdgTGEGI9SAQEBAQEBBoESJYNuhgqFFIlZZ?=
 =?us-ascii?q?YF7CQEBAQEBAQEBAS0KBAEBhEQCgkg1CA4CEAEBAQUBAQEBAQUDAYV3TIVwA?=
 =?us-ascii?q?QEBAyMVQRALDQsCAiYCAlcGDQYCAQGDIgGCVzSsG3WBMhqEGwGBFYMtgT6BD?=
 =?us-ascii?q?ioBgWSKZHmBB4ERJwyCYT6CZAOEdYJeBJd0mFOCRodYjyAGAhuDTYtoA4wdm?=
 =?us-ascii?q?A+UXAGCDzMaCCgISBCCTwlHjk4XiGSFU2ICjxABAQ?=
X-IronPort-AV: E=Sophos;i="5.72,284,1580745600"; d="scan'208";a="231740068"
Received: from unknown (HELO [10.44.0.192]) ([103.48.210.53])
 by icp-osb-irony-out6.iinet.net.au with ESMTP; 20 Mar 2020 23:08:52 +0800
Subject: Re: [PATCH] staging: mt7621-pci: don't return if get gpio fails
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
References: <20200319161416.19033-1-sergio.paracuellos@gmail.com>
 <76db8f45-2a78-fb40-0c0d-4ff17a224e1b@kernel.org>
 <CAMhs-H8c-cxBL9_PCe2QPCvq_2HTWW1hEC6A6AVHU=pd2NmT=g@mail.gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <42663980-a1e1-c19b-cc2d-1be3782e5cdc@kernel.org>
Date: Sat, 21 Mar 2020 01:08:50 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAMhs-H8c-cxBL9_PCe2QPCvq_2HTWW1hEC6A6AVHU=pd2NmT=g@mail.gmail.com>
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
Cc: NeilBrown <neil@brown.name>, Greg KH <gregkh@linuxfoundation.org>,
 driverdev-devel@linuxdriverproject.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sergio,

On 21/3/20 12:38 am, Sergio Paracuellos wrote:
> On Fri, Mar 20, 2020 at 3:30 PM Greg Ungerer <gerg@kernel.org> wrote:
>> On 20/3/20 2:14 am, Sergio Paracuellos wrote:
[snip]
>> rt2880-pinmux pinctrl: pcie is already enabled
>> mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
>> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>> mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
>> mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
>> mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
>> mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
>> mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
>> mt7621-pci 1e140000.pcie: Nothing is connected in virtual bridges. Exiting..
>> ...
>>
>> It is probably 50:50 on any boot whether it will probe pci successfully or
>> fail to probe it.
>>
>> BTW, this is with the patch here applied:
>> http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142472.html
> 
> Yes this is the behaviour I was talking about in this series:
> 
> http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/2020-March/142520.html
> 
> These patches have been already added to staging-testing and should
> work and found properly ports also for you.
> 
> Let me know any issue you might find.

Ok, I am testing now a fresh up-to-date staging-testing.
I can see your most recent patches for the pci-phy at the top of the git log.
No other patches applied (just my devicetree for my hardware).

It dumps on every boot with:

...
rt2880-pinmux pinctrl: pcie is already enabled
mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
mt7621-pci-phy 1e149000.pcie-phy: PHY for 0xbe149000 (dual port = 1)
mt7621-pci-phy 1e14a000.pcie-phy: PHY for 0xbe14a000 (dual port = 0)
mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
Unhandled kernel unaligned access[#1]:
CPU: 3 PID: 111 Comm: kworker/3:2 Not tainted 5.6.0-rc3-00347-g825c6f470c62-dirty #9
Workqueue: events deferred_probe_work_func
$ 0   : 00000000 00000001 5f60d043 8fe1ba80
$ 4   : 0000010d 01eb9000 00000000 00000000
$ 8   : 294b4c00 80940000 00000008 000000ce
$12   : 2e303030 00000000 00000000 65696370
$16   : ffffffed 0000010d 8e373cd0 8214c1e0
$20   : 00000000 82144c80 82144680 8214c250
$24   : 00000018 803ef8f4
$28   : 8e372000 8e373c60 8214c080 803940e8
Hi    : 00000125
Lo    : 122f2000
epc   : 807b3328 mutex_lock+0x8/0x44
ra    : 803940e8 phy_power_off+0x28/0xb0
Status: 1100fc03        KERNEL EXL IE
Cause : 00800010 (ExcCode 04)
BadVA : 0000010d
PrId  : 0001992f (MIPS 1004Kc)
Modules linked in:
Process kworker/3:2 (pid: 111, threadinfo=(ptrval), task=(ptrval), tls=00000000)
Stack : 8e373cd0 803fe4f4 8e372000 8e373c90 8214c080 804fde1c 8e373c98 808d62f4
         8e373c78 00000000 8214c254 804fe648 1e160000 804f27b8 00000001 808d62f4
         00000000 00000001 8214c228 808d62f4 80930000 809a0000 8fd47e10 808d63d4
         808d62d4 8fd47e10 808d0000 808d0000 8e373cd0 8e373cd0 809e2a74 809db510
         809db510 00000006 00000001 00000000 00000000 00000000 01000000 1e1440ff
         ...
Call Trace:
[<807b3328>] mutex_lock+0x8/0x44
[<803940e8>] phy_power_off+0x28/0xb0
[<804fe648>] mt7621_pci_probe+0xc20/0xd18
[<80402ab8>] platform_drv_probe+0x40/0x94
[<80400a74>] really_probe+0x104/0x364
[<803feb74>] bus_for_each_drv+0x84/0xdc
[<80400924>] __device_attach+0xdc/0x120
[<803ffb5c>] bus_probe_device+0xa0/0xbc
[<80400124>] deferred_probe_work_func+0x7c/0xbc
[<800420e8>] process_one_work+0x230/0x450
[<80042638>] worker_thread+0x330/0x5fc
[<80048eb0>] kthread+0x12c/0x134
[<80007438>] ret_from_kernel_thread+0x14/0x1c
Code: 24050002  27bdfff8  8f830000 <c0850000> 14a00005  00000000  00600825  e0810000  1020fffa

---[ end trace 8e3fadee03559cba ]---

Regards
Greg

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
