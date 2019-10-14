Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A412D6BE4
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 01:02:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A958D8809E;
	Mon, 14 Oct 2019 23:02:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pktRT6uE3hn0; Mon, 14 Oct 2019 23:02:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D8B2A87E9D;
	Mon, 14 Oct 2019 23:02:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 558361BF392
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4FE1886A07
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rNyk9WrtInti
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 91640869F2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:09 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2007421882;
 Mon, 14 Oct 2019 23:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571094129;
 bh=OTdm4D5QsUvEdMjHsLdj8VxjE2uHi2PlTnEpkKDjENw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qJpX+DtDtGu93cjz7aWAU+r0YiZOe+OmJdsx+pga9hftMJB73le99HTNGE7z14IOV
 JbvHPPe4J5+N6hMG9cWFCjhvVk/ee3JgHPYCr984TO4fMLtdTjflhGh324x65w/Sw3
 UvKsgBnky2lpCKVk0YkUH5ARDnXg8K3KYkqL2GRY=
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: [PATCH 7/7] PCI/MSI: Move power state check out of pci_msi_supported()
Date: Mon, 14 Oct 2019 18:00:16 -0500
Message-Id: <20191014230016.240912-8-helgaas@kernel.org>
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

27e20603c54b ("PCI/MSI: Move D0 check into pci_msi_check_device()")
moved the power state check into pci_msi_check_device(), which was
subsequently renamed to pci_msi_supported().  This didn't change the
behavior, since both callers checked the power state.

However, it doesn't fit the current "pci_msi_supported()" name, which
should return what the device is capable of, independent of the power
state.

Move the power state check back into the callers for readability.  No
functional change intended.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/msi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
index 0884bedcfc7a..20e9c729617c 100644
--- a/drivers/pci/msi.c
+++ b/drivers/pci/msi.c
@@ -861,7 +861,7 @@ static int pci_msi_supported(struct pci_dev *dev, int nvec)
 	if (!pci_msi_enable)
 		return 0;
 
-	if (!dev || dev->no_msi || dev->current_state != PCI_D0)
+	if (!dev || dev->no_msi)
 		return 0;
 
 	/*
@@ -972,7 +972,7 @@ static int __pci_enable_msix(struct pci_dev *dev, struct msix_entry *entries,
 	int nr_entries;
 	int i, j;
 
-	if (!pci_msi_supported(dev, nvec))
+	if (!pci_msi_supported(dev, nvec) || dev->current_state != PCI_D0)
 		return -EINVAL;
 
 	nr_entries = pci_msix_vec_count(dev);
@@ -1058,7 +1058,7 @@ static int __pci_enable_msi_range(struct pci_dev *dev, int minvec, int maxvec,
 	int nvec;
 	int rc;
 
-	if (!pci_msi_supported(dev, minvec))
+	if (!pci_msi_supported(dev, minvec) || dev->current_state != PCI_D0)
 		return -EINVAL;
 
 	/* Check whether driver already requested MSI-X IRQs */
-- 
2.23.0.700.g56cf767bdb-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
