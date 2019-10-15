Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B2730D7D65
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 19:21:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2C1DB87695;
	Tue, 15 Oct 2019 17:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 756aY2slp9vg; Tue, 15 Oct 2019 17:21:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F30687646;
	Tue, 15 Oct 2019 17:21:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B6311BF2B6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 255992045D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SVgBDrKz8xtM
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:21:42 +0000 (UTC)
X-Greylist: delayed 00:05:52 by SQLgrey-1.7.6
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 by silver.osuosl.org (Postfix) with ESMTPS id 6A8F020430
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:21:42 +0000 (UTC)
Received: from 79.184.254.38.ipv4.supernova.orange.pl (79.184.254.38) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.292)
 id b5433f87ced3629d; Tue, 15 Oct 2019 19:21:40 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 4/7] PCI/PM: Run resume fixups before disabling wakeup
 events
Date: Tue, 15 Oct 2019 19:21:39 +0200
Message-ID: <6808286.qxd3Zai2y5@kreacher>
In-Reply-To: <20191014230016.240912-5-helgaas@kernel.org>
References: <20191014230016.240912-1-helgaas@kernel.org>
 <20191014230016.240912-5-helgaas@kernel.org>
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

On Tuesday, October 15, 2019 1:00:13 AM CEST Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> pci_pm_resume() and pci_pm_restore() call pci_pm_default_resume(), which
> runs resume fixups before disabling wakeup events:
> 
>   static void pci_pm_default_resume(struct pci_dev *pci_dev)
>   {
>     pci_fixup_device(pci_fixup_resume, pci_dev);
>     pci_enable_wake(pci_dev, PCI_D0, false);
>   }
> 
> pci_pm_runtime_resume() does both of these, but in the opposite order:
> 
>   pci_enable_wake(pci_dev, PCI_D0, false);
>   pci_fixup_device(pci_fixup_resume, pci_dev);
> 
> We should always use the same ordering unless there's a reason to do
> otherwise.

Right.

> Change pci_pm_runtime_resume() to call pci_pm_default_resume()
> instead of open-coding this, so the fixups are always done before disabling
> wakeup events.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

No concerns about this change, so

Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
>  drivers/pci/pci-driver.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> index 0c3086793e4e..55acb658273f 100644
> --- a/drivers/pci/pci-driver.c
> +++ b/drivers/pci/pci-driver.c
> @@ -1345,8 +1345,7 @@ static int pci_pm_runtime_resume(struct device *dev)
>  		return 0;
>  
>  	pci_fixup_device(pci_fixup_resume_early, pci_dev);
> -	pci_enable_wake(pci_dev, PCI_D0, false);
> -	pci_fixup_device(pci_fixup_resume, pci_dev);
> +	pci_pm_default_resume(pci_dev);
>  
>  	if (pm && pm->runtime_resume)
>  		rc = pm->runtime_resume(dev);
> 




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
