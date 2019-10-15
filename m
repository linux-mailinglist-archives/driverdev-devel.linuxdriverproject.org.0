Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF927D7D87
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 19:24:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67A6585810;
	Tue, 15 Oct 2019 17:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id chVB1BKtZ2wc; Tue, 15 Oct 2019 17:23:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24EA0813EB;
	Tue, 15 Oct 2019 17:23:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 009FD1BF2B6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:23:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F0E6A2045D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:23:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h5aprhuoIwzq
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:23:54 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 by silver.osuosl.org (Postfix) with ESMTPS id CB3C420430
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:23:53 +0000 (UTC)
Received: from 79.184.254.38.ipv4.supernova.orange.pl (79.184.254.38) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.292)
 id bad9ff34983b6df1; Tue, 15 Oct 2019 19:17:12 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 2/7] PCI/PM: Correct pci_pm_thaw_noirq() documentation
Date: Tue, 15 Oct 2019 19:17:11 +0200
Message-ID: <3964309.Hrl1cB5NHZ@kreacher>
In-Reply-To: <20191014230016.240912-3-helgaas@kernel.org>
References: <20191014230016.240912-1-helgaas@kernel.org>
 <20191014230016.240912-3-helgaas@kernel.org>
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

On Tuesday, October 15, 2019 1:00:11 AM CEST Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> According to the documentation, pci_pm_thaw_noirq() did not put the device
> into the full-power state and restore its standard configuration registers.
> This is incorrect, so update the documentation to match the code.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Right, the documentation is outdated, so

Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
>  Documentation/power/pci.rst | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/power/pci.rst b/Documentation/power/pci.rst
> index 0e2ef7429304..1525c594d631 100644
> --- a/Documentation/power/pci.rst
> +++ b/Documentation/power/pci.rst
> @@ -600,17 +600,17 @@ using the following PCI bus type's callbacks::
>  
>  respectively.
>  
> -The first of them, pci_pm_thaw_noirq(), is analogous to pci_pm_resume_noirq(),
> -but it doesn't put the device into the full power state and doesn't attempt to
> -restore its standard configuration registers.  It also executes the device
> -driver's pm->thaw_noirq() callback, if defined, instead of pm->resume_noirq().
> +The first of them, pci_pm_thaw_noirq(), is analogous to pci_pm_resume_noirq().
> +It puts the device into the full power state and restores its standard
> +configuration registers.  It also executes the device driver's pm->thaw_noirq()
> +callback, if defined, instead of pm->resume_noirq().
>  
>  The pci_pm_thaw() routine is similar to pci_pm_resume(), but it runs the device
>  driver's pm->thaw() callback instead of pm->resume().  It is executed
>  asynchronously for different PCI devices that don't depend on each other in a
>  known way.
>  
> -The complete phase it the same as for system resume.
> +The complete phase is the same as for system resume.
>  
>  After saving the image, devices need to be powered down before the system can
>  enter the target sleep state (ACPI S4 for ACPI-based systems).  This is done in
> 




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
