Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B32D6BDD
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 01:02:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 62F54227A3;
	Mon, 14 Oct 2019 23:02:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7NueRjA37QSq; Mon, 14 Oct 2019 23:02:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 49E4E21546;
	Mon, 14 Oct 2019 23:02:03 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7D7EA1BF392
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5EC0B21546
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OlSGh8D1ifQ6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 91FAD2274E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 14 Oct 2019 23:02:00 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 272922133F;
 Mon, 14 Oct 2019 23:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571094120;
 bh=lBbbmwAEQI3qnBnwrKO0ydVqzS7N1AX5ibz6cNs7dOU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Eayu1VH51lfZ53nccdjmanQ1yptijzdV3BsCNtW45JAeEp8jeJFU8n3XchQRk0mV4
 v2ttpAJr6+Q4glS8WtbkjVo1B+qvhkFSB877tctm7sv/WcX7Ct9SJBSoBBLpzY3CHu
 pY8ccMrZFOSkWDU5CKw890WQnIZLbNdP4XUgAgMI=
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: [PATCH 4/7] PCI/PM: Run resume fixups before disabling wakeup events
Date: Mon, 14 Oct 2019 18:00:13 -0500
Message-Id: <20191014230016.240912-5-helgaas@kernel.org>
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

pci_pm_resume() and pci_pm_restore() call pci_pm_default_resume(), which
runs resume fixups before disabling wakeup events:

  static void pci_pm_default_resume(struct pci_dev *pci_dev)
  {
    pci_fixup_device(pci_fixup_resume, pci_dev);
    pci_enable_wake(pci_dev, PCI_D0, false);
  }

pci_pm_runtime_resume() does both of these, but in the opposite order:

  pci_enable_wake(pci_dev, PCI_D0, false);
  pci_fixup_device(pci_fixup_resume, pci_dev);

We should always use the same ordering unless there's a reason to do
otherwise.  Change pci_pm_runtime_resume() to call pci_pm_default_resume()
instead of open-coding this, so the fixups are always done before disabling
wakeup events.

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/pci-driver.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index 0c3086793e4e..55acb658273f 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -1345,8 +1345,7 @@ static int pci_pm_runtime_resume(struct device *dev)
 		return 0;
 
 	pci_fixup_device(pci_fixup_resume_early, pci_dev);
-	pci_enable_wake(pci_dev, PCI_D0, false);
-	pci_fixup_device(pci_fixup_resume, pci_dev);
+	pci_pm_default_resume(pci_dev);
 
 	if (pm && pm->runtime_resume)
 		rc = pm->runtime_resume(dev);
-- 
2.23.0.700.g56cf767bdb-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
