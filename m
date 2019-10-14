Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DCCD6BCD
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 01:00:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B99F486E69;
	Mon, 14 Oct 2019 23:00:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I1dVDA5Uiddd; Mon, 14 Oct 2019 23:00:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9D01D86252;
	Mon, 14 Oct 2019 23:00:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D47EC1BF392
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D1382869F2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:00:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vcvajJHD7dwm
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:00:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A762686252
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:00:46 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 05A332133F;
 Mon, 14 Oct 2019 23:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571094046;
 bh=XqPAXn+ga1kYewIdDzsVOZ1HjiGk6w5zCGO+lJ563dw=;
 h=From:To:Cc:Subject:Date:From;
 b=p/bpCy46EIZr1Vr/b4SANZeuQBFWndiUiRdCCXHwqLBJ/RHaIAqgbcv9qR7gfB9+0
 cG71WcdBmPlE2U2b6quaFh5SnYCBx6ota6CW07Rj7thn0ZIhL+BShMZvSQ9O7B3hFo
 SgGKIy2F55a5FT4p2SmMU+fjsFBvJee/P8eV1t30=
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: [PATCH v3 0/7] PCI: PM: Move to D0 before calling
 pci_legacy_resume_early()
Date: Mon, 14 Oct 2019 18:00:09 -0500
Message-Id: <20191014230016.240912-1-helgaas@kernel.org>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
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

Dexuan, the important thing here is the first patch, which is your [1],
which I modified by doing pci_restore_state() as well as setting to D0:

  pci_set_power_state(pci_dev, PCI_D0);
  pci_restore_state(pci_dev);

I'm proposing some more patches on top.  None are relevant to the problem
you're solving; they're just minor doc and other updates in the same area.

Rafael, if you have a chance to look at these, I'd appreciate it.  I tried
to make the doc match the code, but I'm no PM expert.

[1] https://lore.kernel.org/r/KU1P153MB016637CAEAD346F0AA8E3801BFAD0@KU1P153MB0166.APCP153.PROD.OUTLOOK.COM


Dexuan Cui (1):
  PCI/PM: Always return devices to D0 when thawing

Bjorn Helgaas (6):
  PCI/PM: Correct pci_pm_thaw_noirq() documentation
  PCI/PM: Clear PCIe PME Status even for legacy power management
  PCI/PM: Run resume fixups before disabling wakeup events
  PCI/PM: Make power management op coding style consistent
  PCI/PM: Wrap long lines in documentation
  PCI/MSI: Move power state check out of pci_msi_supported()

 Documentation/power/pci.rst | 38 +++++++-------
 drivers/pci/msi.c           |  6 +--
 drivers/pci/pci-driver.c    | 99 ++++++++++++++++++-------------------
 3 files changed, 71 insertions(+), 72 deletions(-)

-- 
2.23.0.700.g56cf767bdb-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
