Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A47A3D7DA9
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 19:26:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BE3A8671E;
	Tue, 15 Oct 2019 17:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wvuGtBmRFhc7; Tue, 15 Oct 2019 17:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6E5A855D7;
	Tue, 15 Oct 2019 17:26:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 896E01BF2B6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 83C71855D7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:26:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QqrB_1kHYYrH
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:26:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B2B5F8539A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:26:43 +0000 (UTC)
Received: from 79.184.254.38.ipv4.supernova.orange.pl (79.184.254.38) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.292)
 id dda85748e3f31afb; Tue, 15 Oct 2019 19:20:02 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 3/7] PCI/PM: Clear PCIe PME Status even for legacy power
 management
Date: Tue, 15 Oct 2019 19:20:01 +0200
Message-ID: <4241660.MG63sYxJne@kreacher>
In-Reply-To: <20191014230016.240912-4-helgaas@kernel.org>
References: <20191014230016.240912-1-helgaas@kernel.org>
 <20191014230016.240912-4-helgaas@kernel.org>
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

On Tuesday, October 15, 2019 1:00:12 AM CEST Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> Previously, pci_pm_resume_noirq() cleared the PME Status bit in the Root
> Status register only if the device had no driver or the driver did not
> implement legacy power management.  It should clear PME Status regardless
> of what sort of power management the driver supports, so do this before
> checking for legacy power management.
> 
> This affects Root Ports and Root Complex Event Collectors, for which the
> usual driver is the PCIe portdrv, which implements new power management, so
> this change is just on principle, not to fix any actual defects.
> 
> Fixes: a39bd851dccf ("PCI/PM: Clear PCIe PME Status bit in core, not PCIe port driver")
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

This is a reasonable change in my view, so

Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
>  drivers/pci/pci-driver.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> index d4ac8ce8c1f9..0c3086793e4e 100644
> --- a/drivers/pci/pci-driver.c
> +++ b/drivers/pci/pci-driver.c
> @@ -941,12 +941,11 @@ static int pci_pm_resume_noirq(struct device *dev)
>  		pci_pm_default_resume_early(pci_dev);
>  
>  	pci_fixup_device(pci_fixup_resume_early, pci_dev);
> +	pcie_pme_root_status_cleanup(pci_dev);
>  
>  	if (pci_has_legacy_pm_support(pci_dev))
>  		return pci_legacy_resume_early(dev);
>  
> -	pcie_pme_root_status_cleanup(pci_dev);
> -
>  	if (drv && drv->pm && drv->pm->resume_noirq)
>  		error = drv->pm->resume_noirq(dev);
>  
> 




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
