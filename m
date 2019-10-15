Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A8FD7D84
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 19:23:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8768286516;
	Tue, 15 Oct 2019 17:23:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3TVdJWbOnKOE; Tue, 15 Oct 2019 17:23:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 10B98864E6;
	Tue, 15 Oct 2019 17:23:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FE531BF2B6
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 09F8C87662
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GOcxi9t5vf7y
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:23:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl
 [79.96.170.134])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7D43087646
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 17:23:31 +0000 (UTC)
Received: from 79.184.254.38.ipv4.supernova.orange.pl (79.184.254.38) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.292)
 id dfec6fccedf7956f; Tue, 15 Oct 2019 19:23:29 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 6/7] PCI/PM: Wrap long lines in documentation
Date: Tue, 15 Oct 2019 19:23:28 +0200
Message-ID: <2150193.0kpVmk06vr@kreacher>
In-Reply-To: <20191014230016.240912-7-helgaas@kernel.org>
References: <20191014230016.240912-1-helgaas@kernel.org>
 <20191014230016.240912-7-helgaas@kernel.org>
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

On Tuesday, October 15, 2019 1:00:15 AM CEST Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> Documentation/power/pci.rst is wrapped to fit in 80 columns, but directory
> structure changes made a few lines longer.  Wrap them so they all fit in 80
> columns again.
> 
> Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Well, looks better this way. :-)

Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
>  Documentation/power/pci.rst | 28 ++++++++++++++--------------
>  1 file changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/Documentation/power/pci.rst b/Documentation/power/pci.rst
> index 1525c594d631..db41a770a2f5 100644
> --- a/Documentation/power/pci.rst
> +++ b/Documentation/power/pci.rst
> @@ -426,12 +426,12 @@ pm->runtime_idle() callback.
>  2.4. System-Wide Power Transitions
>  ----------------------------------
>  There are a few different types of system-wide power transitions, described in
> -Documentation/driver-api/pm/devices.rst.  Each of them requires devices to be handled
> -in a specific way and the PM core executes subsystem-level power management
> -callbacks for this purpose.  They are executed in phases such that each phase
> -involves executing the same subsystem-level callback for every device belonging
> -to the given subsystem before the next phase begins.  These phases always run
> -after tasks have been frozen.
> +Documentation/driver-api/pm/devices.rst.  Each of them requires devices to be
> +handled in a specific way and the PM core executes subsystem-level power
> +management callbacks for this purpose.  They are executed in phases such that
> +each phase involves executing the same subsystem-level callback for every device
> +belonging to the given subsystem before the next phase begins.  These phases
> +always run after tasks have been frozen.
>  
>  2.4.1. System Suspend
>  ^^^^^^^^^^^^^^^^^^^^^
> @@ -636,12 +636,12 @@ System restore requires a hibernation image to be loaded into memory and the
>  pre-hibernation memory contents to be restored before the pre-hibernation system
>  activity can be resumed.
>  
> -As described in Documentation/driver-api/pm/devices.rst, the hibernation image is loaded
> -into memory by a fresh instance of the kernel, called the boot kernel, which in
> -turn is loaded and run by a boot loader in the usual way.  After the boot kernel
> -has loaded the image, it needs to replace its own code and data with the code
> -and data of the "hibernated" kernel stored within the image, called the image
> -kernel.  For this purpose all devices are frozen just like before creating
> +As described in Documentation/driver-api/pm/devices.rst, the hibernation image
> +is loaded into memory by a fresh instance of the kernel, called the boot kernel,
> +which in turn is loaded and run by a boot loader in the usual way.  After the
> +boot kernel has loaded the image, it needs to replace its own code and data with
> +the code and data of the "hibernated" kernel stored within the image, called the
> +image kernel.  For this purpose all devices are frozen just like before creating
>  the image during hibernation, in the
>  
>  	prepare, freeze, freeze_noirq
> @@ -691,8 +691,8 @@ controlling the runtime power management of their devices.
>  
>  At the time of this writing there are two ways to define power management
>  callbacks for a PCI device driver, the recommended one, based on using a
> -dev_pm_ops structure described in Documentation/driver-api/pm/devices.rst, and the
> -"legacy" one, in which the .suspend(), .suspend_late(), .resume_early(), and
> +dev_pm_ops structure described in Documentation/driver-api/pm/devices.rst, and
> +the "legacy" one, in which the .suspend(), .suspend_late(), .resume_early(), and
>  .resume() callbacks from struct pci_driver are used.  The legacy approach,
>  however, doesn't allow one to define runtime power management callbacks and is
>  not really suitable for any new drivers.  Therefore it is not covered by this
> 




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
