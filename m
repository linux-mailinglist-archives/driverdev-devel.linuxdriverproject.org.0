Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D417ED6BE5
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 01:02:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7FE11227A3;
	Mon, 14 Oct 2019 23:02:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pSFa+svsVFFn; Mon, 14 Oct 2019 23:02:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E67E72266C;
	Mon, 14 Oct 2019 23:02:09 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4B6B1BF392
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BDE4486DCA
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4hkdHL3HT0xu
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1645486A07
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:07 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80597217F9;
 Mon, 14 Oct 2019 23:02:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571094126;
 bh=e5ELKufEIki4aTdl20aS5WbH85Df9dXGiXMAgJHmzvk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W18/YeT62/0vSMnL2xR4IGUluqcwtOJNKnCnKTJ5CbOtbg7lnOhFzamXjXcfcap6A
 RYqbVJBkfVtSTxVGbZd8AqDWOpW8ZDomLnAySVvC4XYGdk8KcWe7swNspRp9tNj6l+
 ACQAOPSq7IaI3k3uw40y8kGIRvVk1iv85/lFVoD4=
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: [PATCH 6/7] PCI/PM: Wrap long lines in documentation
Date: Mon, 14 Oct 2019 18:00:15 -0500
Message-Id: <20191014230016.240912-7-helgaas@kernel.org>
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

Documentation/power/pci.rst is wrapped to fit in 80 columns, but directory
structure changes made a few lines longer.  Wrap them so they all fit in 80
columns again.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 Documentation/power/pci.rst | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/Documentation/power/pci.rst b/Documentation/power/pci.rst
index 1525c594d631..db41a770a2f5 100644
--- a/Documentation/power/pci.rst
+++ b/Documentation/power/pci.rst
@@ -426,12 +426,12 @@ pm->runtime_idle() callback.
 2.4. System-Wide Power Transitions
 ----------------------------------
 There are a few different types of system-wide power transitions, described in
-Documentation/driver-api/pm/devices.rst.  Each of them requires devices to be handled
-in a specific way and the PM core executes subsystem-level power management
-callbacks for this purpose.  They are executed in phases such that each phase
-involves executing the same subsystem-level callback for every device belonging
-to the given subsystem before the next phase begins.  These phases always run
-after tasks have been frozen.
+Documentation/driver-api/pm/devices.rst.  Each of them requires devices to be
+handled in a specific way and the PM core executes subsystem-level power
+management callbacks for this purpose.  They are executed in phases such that
+each phase involves executing the same subsystem-level callback for every device
+belonging to the given subsystem before the next phase begins.  These phases
+always run after tasks have been frozen.
 
 2.4.1. System Suspend
 ^^^^^^^^^^^^^^^^^^^^^
@@ -636,12 +636,12 @@ System restore requires a hibernation image to be loaded into memory and the
 pre-hibernation memory contents to be restored before the pre-hibernation system
 activity can be resumed.
 
-As described in Documentation/driver-api/pm/devices.rst, the hibernation image is loaded
-into memory by a fresh instance of the kernel, called the boot kernel, which in
-turn is loaded and run by a boot loader in the usual way.  After the boot kernel
-has loaded the image, it needs to replace its own code and data with the code
-and data of the "hibernated" kernel stored within the image, called the image
-kernel.  For this purpose all devices are frozen just like before creating
+As described in Documentation/driver-api/pm/devices.rst, the hibernation image
+is loaded into memory by a fresh instance of the kernel, called the boot kernel,
+which in turn is loaded and run by a boot loader in the usual way.  After the
+boot kernel has loaded the image, it needs to replace its own code and data with
+the code and data of the "hibernated" kernel stored within the image, called the
+image kernel.  For this purpose all devices are frozen just like before creating
 the image during hibernation, in the
 
 	prepare, freeze, freeze_noirq
@@ -691,8 +691,8 @@ controlling the runtime power management of their devices.
 
 At the time of this writing there are two ways to define power management
 callbacks for a PCI device driver, the recommended one, based on using a
-dev_pm_ops structure described in Documentation/driver-api/pm/devices.rst, and the
-"legacy" one, in which the .suspend(), .suspend_late(), .resume_early(), and
+dev_pm_ops structure described in Documentation/driver-api/pm/devices.rst, and
+the "legacy" one, in which the .suspend(), .suspend_late(), .resume_early(), and
 .resume() callbacks from struct pci_driver are used.  The legacy approach,
 however, doesn't allow one to define runtime power management callbacks and is
 not really suitable for any new drivers.  Therefore it is not covered by this
-- 
2.23.0.700.g56cf767bdb-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
