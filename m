Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D18D11A3F14
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Apr 2020 05:47:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7ABC48695E;
	Fri, 10 Apr 2020 03:47:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2fHZ1-D0TiLo; Fri, 10 Apr 2020 03:47:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 05F1F86652;
	Fri, 10 Apr 2020 03:47:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 259821BF995
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:47:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D6B9220527
 for <devel@linuxdriverproject.org>; Fri, 10 Apr 2020 03:47:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wn6WLu1HnjQV for <devel@linuxdriverproject.org>;
 Fri, 10 Apr 2020 03:47:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0E92820109
 for <devel@driverdev.osuosl.org>; Fri, 10 Apr 2020 03:47:50 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1793C20B1F;
 Fri, 10 Apr 2020 03:47:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586490469;
 bh=jTqXNIZrq7M+ps/+ixzZuFQUeMQw87aF7obAZ7PZc74=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Nit4vhFIR0HULlqRTvmrKJYf9t//6TwjDPESRMWbkQkOgH2XHaWweT76z2AT1UYOS
 Vp7g2Vwr6rtbalOgiDEYngSZAozb7nDEnJmG0gherr/jeeh/c2pQwBbhYZy2rP0GwT
 iO3oIw6gkTkUwZ8GcoyVZ7Htg+TnyEbVHPd7I4tM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 62/68] staging: mt7621-pci: avoid to poweroff the
 phy for slot one
Date: Thu,  9 Apr 2020 23:46:27 -0400
Message-Id: <20200410034634.7731-62-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200410034634.7731-1-sashal@kernel.org>
References: <20200410034634.7731-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Sergio Paracuellos <sergio.paracuellos@gmail.com>

[ Upstream commit 5737cfe87a9c242ad0f60b34b5ac1688770a9236 ]

Phy for slot 0 and 1 is shared and handled properly in slot 0.
If there is only one port in use,(slot 0) we shall not call the
'phy_power_off' function with an invalid slot because kernel
will crash with an unaligned access fault like the following:

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

Fixes: bf516f413f4e ("staging: mt7621-pci: use only two phys from device tree")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Link: https://lore.kernel.org/r/20200320153837.20415-1-sergio.paracuellos@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 3633c924848ec..a1dafec0890a9 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -485,7 +485,8 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 		if (!mt7621_pcie_port_is_linkup(port)) {
 			dev_err(dev, "pcie%d no card, disable it (RST & CLK)\n",
 				slot);
-			phy_power_off(port->phy);
+			if (slot != 1)
+				phy_power_off(port->phy);
 			mt7621_control_assert(port);
 			mt7621_pcie_port_clk_disable(port);
 			port->enabled = false;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
