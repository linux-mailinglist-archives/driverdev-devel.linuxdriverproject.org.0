Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 347D5D6BDB
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 01:02:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 173D42279B;
	Mon, 14 Oct 2019 23:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RgmfBZYN1b-P; Mon, 14 Oct 2019 23:02:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 098B4221AF;
	Mon, 14 Oct 2019 23:02:00 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5DCC21BF392
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5943021546
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ht8LttVA96Qf
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id B954F2042B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:57 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FA70217F9;
 Mon, 14 Oct 2019 23:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571094117;
 bh=XJ9gzZXljOyOpoX7//nZyyqSZxdlTYsADbIJ0lo74cY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zlZ+S4Y50FGS7rQCh37WY6JT5AAWnarto+5ZyhMg0rCtK88tuAFMhI1+LyEMfxroI
 HzFghLMGQdXK7ovjm5IT2HGwNymfK/tFesR4viPZB+MDH5GR9bEf4cqCXz5Bfs304g
 AdPZps68jMhC4DUK1XV8dKj8wxUZXeSajQkboqNg=
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: [PATCH 3/7] PCI/PM: Clear PCIe PME Status even for legacy power
 management
Date: Mon, 14 Oct 2019 18:00:12 -0500
Message-Id: <20191014230016.240912-4-helgaas@kernel.org>
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
 linux-hyperv@vger.kernel.org, Michael Kelley <mikelley@microsoft.com>,
 Sasha Levin <Alexander.Levin@microsoft.com>, marcelo.cerri@canonical.com,
 linux-pci@vger.kernel.org, apw@canonical.com, vkuznets@redhat.com,
 Bjorn Helgaas <bhelgaas@google.com>, jasowang@redhat.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Bjorn Helgaas <bhelgaas@google.com>

Previously, pci_pm_resume_noirq() cleared the PME Status bit in the Root
Status register only if the device had no driver or the driver did not
implement legacy power management.  It should clear PME Status regardless
of what sort of power management the driver supports, so do this before
checking for legacy power management.

This affects Root Ports and Root Complex Event Collectors, for which the
usual driver is the PCIe portdrv, which implements new power management, so
this change is just on principle, not to fix any actual defects.

Fixes: a39bd851dccf ("PCI/PM: Clear PCIe PME Status bit in core, not PCIe port driver")
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/pci-driver.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index d4ac8ce8c1f9..0c3086793e4e 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -941,12 +941,11 @@ static int pci_pm_resume_noirq(struct device *dev)
 		pci_pm_default_resume_early(pci_dev);
 
 	pci_fixup_device(pci_fixup_resume_early, pci_dev);
+	pcie_pme_root_status_cleanup(pci_dev);
 
 	if (pci_has_legacy_pm_support(pci_dev))
 		return pci_legacy_resume_early(dev);
 
-	pcie_pme_root_status_cleanup(pci_dev);
-
 	if (drv && drv->pm && drv->pm->resume_noirq)
 		error = drv->pm->resume_noirq(dev);
 
-- 
2.23.0.700.g56cf767bdb-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
