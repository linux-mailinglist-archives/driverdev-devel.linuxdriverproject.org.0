Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4984A24872
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 08:54:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55E4722E3F;
	Tue, 21 May 2019 06:54:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E7NNYewPSIEr; Tue, 21 May 2019 06:54:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0216E229D4;
	Tue, 21 May 2019 06:54:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 246131BF328
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 06:54:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D54702284F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 06:54:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r80rkXndlUwi
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 06:54:00 +0000 (UTC)
X-Greylist: delayed 00:09:22 by SQLgrey-1.7.6
Received: from icp-osb-irony-out6.external.iinet.net.au
 (icp-osb-irony-out6.external.iinet.net.au [203.59.1.106])
 by silver.osuosl.org (Postfix) with ESMTP id 650D52278E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 06:54:00 +0000 (UTC)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AhAgBBneNc/zXSMGcNWBwBAQEEAQE?=
 =?us-ascii?q?HBAEBgWWBZ4ZSk1gBAQEBAQEGgQgIhAOFcIlvhxMJAQEBAQEBAQEBNwEBAYQ?=
 =?us-ascii?q?/gkU4EwEDAQEBBAEBAQEDAYZiJxVBGw0NAiYCXw0IAQGDHoF3pRpxgS8ahS6?=
 =?us-ascii?q?DLYFGgQwogWCKCHiBB4EQKAyCXz6HToJYBIsoiBuBJJM1CYIPhTaNQQYbjF4?=
 =?us-ascii?q?DiUUto3eBeDMaCCgIgyiDMgECjS2PHAEB?=
X-IPAS-Result: =?us-ascii?q?A2AhAgBBneNc/zXSMGcNWBwBAQEEAQEHBAEBgWWBZ4ZSk?=
 =?us-ascii?q?1gBAQEBAQEGgQgIhAOFcIlvhxMJAQEBAQEBAQEBNwEBAYQ/gkU4EwEDAQEBB?=
 =?us-ascii?q?AEBAQEDAYZiJxVBGw0NAiYCXw0IAQGDHoF3pRpxgS8ahS6DLYFGgQwogWCKC?=
 =?us-ascii?q?HiBB4EQKAyCXz6HToJYBIsoiBuBJJM1CYIPhTaNQQYbjF4DiUUto3eBeDMaC?=
 =?us-ascii?q?CgIgyiDMgECjS2PHAEB?=
X-IronPort-AV: E=Sophos;i="5.60,494,1549900800"; d="scan'208";a="161492646"
Received: from unknown (HELO [10.44.0.22]) ([103.48.210.53])
 by icp-osb-irony-out6.iinet.net.au with ESMTP; 21 May 2019 14:44:35 +0800
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
From: Greg Ungerer <gerg@kernel.org>
Subject: Re: staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
Message-ID: <678a78fd-a7f4-5a1f-9819-51c5a0731877@kernel.org>
Date: Tue, 21 May 2019 16:44:33 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
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

I am working on a couple of different MedaiTek MT7621 based platforms
and am having problems with the PCI bus on those.

Big picture is that the PCI bus on my boards worked in linux-4.20
(with the obvious compilation breakage fixed), and it does not work
in linux-5.0 or linux-5.1.

On linux-4.20 the PCI bus probe at kernel boot looks like this:

***** Xtal 40MHz *****
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

The PCI bus works, and devices on it are found and work as expected.

On linux-5.1 the PCI initialization and probe fails, with the kernel
locking up:

...
mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 0
mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: pcie0 no card, disable it (RST & CLK)
mt7621-pci 1e140000.pcie: Initiating port 0 failed
mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 1
mt7621-pci-phy 1e149000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: pcie1 no card, disable it (RST & CLK)
mt7621-pci 1e140000.pcie: Initiating port 1 failed
mt7621-pci 1e140000.pcie: Port 454043648 N_FTS = 2
mt7621-pci-phy 1e14a000.pcie-phy: Xtal is 40MHz
mt7621-pci 1e140000.pcie: pcie2 no card, disable it (RST & CLK)

The lockup is in mt7621_pci_phy_power_off(), at the phy_read() call.
If I modify that code and return immediately in that mt7621_pci_phy_power_off()
the systemboots - but obviously from the above you can see that the PCI bus
and no devices were detected.

Copying in the working linux-4.20 pci-mt7621.c into place on
linux-5.1 results in a working PCI bus also. I have 2 very different
MT7621 based boards, and they both exhibit this same problem.

I tried bisecting that back to find the problem commit.
It was not at all easy with quite a few of the mt7621 PCI related
patches not building in isolation while bisecting. But ultimately
I got to commit 745eeeac68d7 ("staging: mt7621-pci: factor out
'mt7621_pcie_enable_port' function").

Any idea what might be going wrong here?

Regards
Greg


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
