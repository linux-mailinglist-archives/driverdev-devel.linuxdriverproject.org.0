Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4B6D6BD8
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 01:01:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0986C86E7F;
	Mon, 14 Oct 2019 23:01:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4J90Y6WIXmTu; Mon, 14 Oct 2019 23:01:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EACDA86A07;
	Mon, 14 Oct 2019 23:01:56 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A83DB1BF392
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A3E3886DDC
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n7hz6xUmHcNU
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1A25A86DB0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:01:54 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 952BD2133F;
 Mon, 14 Oct 2019 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571094113;
 bh=sLP8EMOf/N7TokrONFrqX6afHamtSzogwgMj4ILkroY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ce2ekGcUwC93LWPca74oS7cC+ApQ3uMMfWKQEU3S9Em7A4huSffnsw525WfIgrY6W
 6i412yWgRW/yhieR4PxzCet2fhnC3ZUBFIibZTq1z1kkDSWPrUal4H9x7Vgt9398tP
 a9YQahkdSNClqRUHf3CEDT2g749jdt3I12oCcm2Y=
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: [PATCH 2/7] PCI/PM: Correct pci_pm_thaw_noirq() documentation
Date: Mon, 14 Oct 2019 18:00:11 -0500
Message-Id: <20191014230016.240912-3-helgaas@kernel.org>
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

According to the documentation, pci_pm_thaw_noirq() did not put the device
into the full-power state and restore its standard configuration registers.
This is incorrect, so update the documentation to match the code.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 Documentation/power/pci.rst | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/power/pci.rst b/Documentation/power/pci.rst
index 0e2ef7429304..1525c594d631 100644
--- a/Documentation/power/pci.rst
+++ b/Documentation/power/pci.rst
@@ -600,17 +600,17 @@ using the following PCI bus type's callbacks::
 
 respectively.
 
-The first of them, pci_pm_thaw_noirq(), is analogous to pci_pm_resume_noirq(),
-but it doesn't put the device into the full power state and doesn't attempt to
-restore its standard configuration registers.  It also executes the device
-driver's pm->thaw_noirq() callback, if defined, instead of pm->resume_noirq().
+The first of them, pci_pm_thaw_noirq(), is analogous to pci_pm_resume_noirq().
+It puts the device into the full power state and restores its standard
+configuration registers.  It also executes the device driver's pm->thaw_noirq()
+callback, if defined, instead of pm->resume_noirq().
 
 The pci_pm_thaw() routine is similar to pci_pm_resume(), but it runs the device
 driver's pm->thaw() callback instead of pm->resume().  It is executed
 asynchronously for different PCI devices that don't depend on each other in a
 known way.
 
-The complete phase it the same as for system resume.
+The complete phase is the same as for system resume.
 
 After saving the image, devices need to be powered down before the system can
 enter the target sleep state (ACPI S4 for ACPI-based systems).  This is done in
-- 
2.23.0.700.g56cf767bdb-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
