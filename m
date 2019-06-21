Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4274E817
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2019 14:36:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BF3C86166;
	Fri, 21 Jun 2019 12:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i-rcL96TzaQF; Fri, 21 Jun 2019 12:36:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42F9B8618F;
	Fri, 21 Jun 2019 12:36:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1FB301BF295
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 12:36:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1A2A286E6E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 12:36:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9d0XkExGbcp7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 12:36:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from icp-osb-irony-out9.external.iinet.net.au
 (icp-osb-irony-out9.external.iinet.net.au [203.59.1.226])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9569B86E69
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 21 Jun 2019 12:35:59 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AWAAAIzgxd/zXSMGcNWBkBAQEBAQE?=
 =?us-ascii?q?BAQEBAQEHAQEBAQEBgWeBbYZWk0QBAQEBAQEGgRElg2CFc5EOCQEBAQEBAQE?=
 =?us-ascii?q?BATcBAQGEPwKDATgTAQMBAQEEAQEBAQQBkHoBAQEBAgEjBBE8BQULCw0LAgI?=
 =?us-ascii?q?mAgJXBgEMCAEBgx6BdwWlfnF+MxqFLYMigUaBDCiBYooTeIEHgRAoDIJfPod?=
 =?us-ascii?q?OglgEi28GiEeBKZQbCYIUk1sGG40rA4oYjSWZDoF5MxoIKAiDKINlAQiNJ5B?=
 =?us-ascii?q?2AQE?=
X-IPAS-Result: =?us-ascii?q?A2AWAAAIzgxd/zXSMGcNWBkBAQEBAQEBAQEBAQEHAQEBA?=
 =?us-ascii?q?QEBgWeBbYZWk0QBAQEBAQEGgRElg2CFc5EOCQEBAQEBAQEBATcBAQGEPwKDA?=
 =?us-ascii?q?TgTAQMBAQEEAQEBAQQBkHoBAQEBAgEjBBE8BQULCw0LAgImAgJXBgEMCAEBg?=
 =?us-ascii?q?x6BdwWlfnF+MxqFLYMigUaBDCiBYooTeIEHgRAoDIJfPodOglgEi28GiEeBK?=
 =?us-ascii?q?ZQbCYIUk1sGG40rA4oYjSWZDoF5MxoIKAiDKINlAQiNJ5B2AQE?=
X-IronPort-AV: E=Sophos;i="5.63,400,1557158400"; d="scan'208";a="175129026"
Received: from unknown (HELO [10.44.0.192]) ([103.48.210.53])
 by icp-osb-irony-out9.iinet.net.au with ESMTP; 21 Jun 2019 20:35:55 +0800
Subject: Re: [PATCH 0/4] staging: mt7621-pci: Handle minor issues
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>,
 gregkh@linuxfoundation.org
References: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Message-ID: <a512ac38-e30f-5011-0764-3029d320f10c@kernel.org>
Date: Fri, 21 Jun 2019 22:35:53 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190621061517.24089-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sergio,

On 21/6/19 4:15 pm, Sergio Paracuellos wrote:
> This patch series properly handle minor issues in this driver. These are:
> * Disable pcie port clock on pci dirver instead of doing it in the phy
>    driver. The pci driver is the correct place to do this.
> * Add a missing call to phy_exit function to properly handle the function
>    'mt7621_pcie_init_port' error path.
> * Move driver to init in a later stage using 'module_init' instead of using
>    'arch_initcall'.
> 
> Patches are only compile-tested. It would be awasome to be tested before applied
> them (mainly the change to 'module_init' stuff).

Quick test - not though or extensive.
On 3 boots it successfully booted for me twice with:

rt2880-pinmux pinctrl: pcie is already enabled
mt7621-pci 1e140000.pcie: Error applying setting, reverse things back
mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: Port 0 N_FTS = 1b102800
mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: Port 1 N_FTS = 1b102800
mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: Port 2 N_FTS = 1b102800
mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)
mt7621-pci 1e140000.pcie: PCIE0 enabled
mt7621-pci 1e140000.pcie: PCI coherence region base: 0x60000000, mask/settings: 0xf0000002
mt7621-pci 1e140000.pcie: PCI host bridge to bus 0000:00
pci_bus 0000:00: root bus resource [io  0xffffffff]
pci_bus 0000:00: root bus resource [mem 0x60000000-0x6fffffff]
pci_bus 0000:00: root bus resource [bus 00-ff]
pci 0000:00:00.0: [0e8d:0801] type 01 class 0x060400
pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff]
pci 0000:00:00.0: reg 0x14: [mem 0x00000000-0x0000ffff]
pci 0000:00:00.0: supports D1
pci 0000:00:00.0: PME# supported from D0 D1 D3hot
pci 0000:00:00.0: bridge configuration invalid ([bus 00-00]), reconfiguring
pci 0000:01:00.0: [168c:003c] type 00 class 0x028000
pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x001fffff 64bit]
pci 0000:01:00.0: reg 0x30: [mem 0x00000000-0x0000ffff pref]
pci 0000:01:00.0: supports D1 D2
pci 0000:00:00.0: PCI bridge to [bus 01-ff]
pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff pref]
pci_bus 0000:01: busn_res: [bus 01-ff] end is updated to 01
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

PCI devices worked ok on the 2 good boots.

Regards
Greg



> Hope this helps.
> 
> Best regards,
>      Sergio Paracuellos
> 
> Sergio Paracuellos (4):
>    staging: mt7621-pci: disable pcie port clock if there is no pcie link
>    staging: mt7621-pci: add phy exit call if phy_power_on call fails
>    staging: mt7621-pci-phy: remove disable clock from the phy exit
>      function
>    staging: mt7621-pci: use 'module_init' instead of 'arch_initcall'
> 
>   drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c |  8 --------
>   drivers/staging/mt7621-pci/pci-mt7621.c         | 10 +++++++++-
>   2 files changed, 9 insertions(+), 9 deletions(-)
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
