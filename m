Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 28450D6BD2
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 01:01:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0EAC86E5E;
	Mon, 14 Oct 2019 23:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HJC7a8soUr0k; Mon, 14 Oct 2019 23:01:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2A9186A07;
	Mon, 14 Oct 2019 23:01:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C19371BF392
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BE17886A07
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4-PlR+ojY2-W
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 28F2A869F2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:45 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 98D5B2133F;
 Mon, 14 Oct 2019 23:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571094105;
 bh=MuTUtNMWR92P8AOgTD3KQxSh9O5JGL/vsHYYegXkB4I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q/9BavyhIp1nbInyFjNhCg2XZrVQtchXlKAcbwVQVU5stkp/VZcuOjInGKJNpAH8o
 Pv6MU1NK3VRrYT0WcGcZSCsVm2EtX3+jAXYL0u7aaKEM41/tFyNEVx7k5qVdGAgxHA
 tRJ4vUyDlyQ7WMNJvWINn8ECOdIvspKjItGDndT0=
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: [PATCH 1/7] PCI/PM: Always return devices to D0 when thawing
Date: Mon, 14 Oct 2019 18:00:10 -0500
Message-Id: <20191014230016.240912-2-helgaas@kernel.org>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
In-Reply-To: <20191014230016.240912-1-helgaas@kernel.org>
References: <20191014230016.240912-1-helgaas@kernel.org>
MIME-Version: 1.0
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
Cc: driverdev-devel@linuxdriverproject.org, olaf@aepfle.de,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, jackm@mellanox.com,
 Haiyang Zhang <haiyangz@microsoft.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-hyperv@vger.kernel.org, stable@vger.kernel.org,
 Michael Kelley <mikelley@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>, marcelo.cerri@canonical.com,
 linux-pci@vger.kernel.org, apw@canonical.com, vkuznets@redhat.com,
 Bjorn Helgaas <bhelgaas@google.com>, jasowang@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Dexuan Cui <decui@microsoft.com>

pci_pm_thaw_noirq() is supposed to return the device to D0 and restore its
configuration registers, but previously it only did that for devices whose
drivers implemented the new power management ops.

Hibernation, e.g., via "echo disk > /sys/power/state", involves freezing
devices, creating a hibernation image, thawing devices, writing the image,
and powering off.  The fact that thawing did not return devices with legacy
power management to D0 caused errors, e.g., in this path:

  pci_pm_thaw_noirq
    if (pci_has_legacy_pm_support(pci_dev)) # true for Mellanox VF driver
      return pci_legacy_resume_early(dev)   # ... legacy PM skips the rest
    pci_set_power_state(pci_dev, PCI_D0)
    pci_restore_state(pci_dev)
  pci_pm_thaw
    if (pci_has_legacy_pm_support(pci_dev))
      pci_legacy_resume
	drv->resume
	  mlx4_resume
	    ...
	      pci_enable_msix_range
	        ...
		  if (dev->current_state != PCI_D0)  # <---
		    return -EINVAL;

which caused these warnings:

  mlx4_core a6d1:00:02.0: INTx is not supported in multi-function mode, aborting
  PM: dpm_run_callback(): pci_pm_thaw+0x0/0xd7 returns -95
  PM: Device a6d1:00:02.0 failed to thaw: error -95

Return devices to D0 and restore config registers for all devices, not just
those whose drivers support new power management.

[bhelgaas: also call pci_restore_state() before pci_legacy_resume_early(),
update comment, add stable tag, commit log]
Link: https://lore.kernel.org/r/KU1P153MB016637CAEAD346F0AA8E3801BFAD0@KU1P153MB0166.APCP153.PROD.OUTLOOK.COM
Signed-off-by: Dexuan Cui <decui@microsoft.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
Cc: stable@vger.kernel.org	# v4.13+
---
 drivers/pci/pci-driver.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index a8124e47bf6e..d4ac8ce8c1f9 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -1076,17 +1076,22 @@ static int pci_pm_thaw_noirq(struct device *dev)
 			return error;
 	}
 
-	if (pci_has_legacy_pm_support(pci_dev))
-		return pci_legacy_resume_early(dev);
-
 	/*
-	 * pci_restore_state() requires the device to be in D0 (because of MSI
-	 * restoration among other things), so force it into D0 in case the
-	 * driver's "freeze" callbacks put it into a low-power state directly.
+	 * Both the legacy ->resume_early() and the new pm->thaw_noirq()
+	 * callbacks assume the device has been returned to D0 and its
+	 * config state has been restored.
+	 *
+	 * In addition, pci_restore_state() restores MSI-X state in MMIO
+	 * space, which requires the device to be in D0, so return it to D0
+	 * in case the driver's "freeze" callbacks put it into a low-power
+	 * state.
 	 */
 	pci_set_power_state(pci_dev, PCI_D0);
 	pci_restore_state(pci_dev);
 
+	if (pci_has_legacy_pm_support(pci_dev))
+		return pci_legacy_resume_early(dev);
+
 	if (drv && drv->pm && drv->pm->thaw_noirq)
 		error = drv->pm->thaw_noirq(dev);
 
-- 
2.23.0.700.g56cf767bdb-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
