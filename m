Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B7DD7F2D
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Oct 2019 20:42:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 25ADD86881;
	Tue, 15 Oct 2019 18:42:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8OkX3-MgR9pR; Tue, 15 Oct 2019 18:42:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E34C18666C;
	Tue, 15 Oct 2019 18:42:04 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 311A51BF3D0
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 18:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A9E1864AB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 18:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CPTnWvowrMwc
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 18:42:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 18B4A85267
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 15 Oct 2019 18:42:02 +0000 (UTC)
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9620E2086A;
 Tue, 15 Oct 2019 18:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571164921;
 bh=UfbMo4srtplXckwhdvkQ1pijpD6lZtwmuZ5zBKMFFKw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=nJ9DD3sUsyARGvqPq1H2cPbcDGJHZ7alSYJwFlR3EEF0BOMEFY5WUnx2gWM5+guO5
 dVPuLUppTj4aOI7zl5QnGZLJt//Vlq2Y/G4pNywqeSV78YSzzjJVTOjdYlHWujkYDf
 tNhi/odRrJqWcoAI9LsWa1RDXDXk1bo0DDIxE0Nw=
Date: Tue, 15 Oct 2019 13:42:00 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Dexuan Cui <decui@microsoft.com>
Subject: Re: [PATCH v3 0/7] PCI: PM: Move to D0 before calling
 pci_legacy_resume_early()
Message-ID: <20191015184200.GA114979@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014230016.240912-1-helgaas@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 jasowang@redhat.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 14, 2019 at 06:00:09PM -0500, Bjorn Helgaas wrote:
> From: Bjorn Helgaas <bhelgaas@google.com>
> 
> Dexuan, the important thing here is the first patch, which is your [1],
> which I modified by doing pci_restore_state() as well as setting to D0:
> 
>   pci_set_power_state(pci_dev, PCI_D0);
>   pci_restore_state(pci_dev);
> 
> I'm proposing some more patches on top.  None are relevant to the problem
> you're solving; they're just minor doc and other updates in the same area.
> 
> Rafael, if you have a chance to look at these, I'd appreciate it.  I tried
> to make the doc match the code, but I'm no PM expert.
> 
> [1] https://lore.kernel.org/r/KU1P153MB016637CAEAD346F0AA8E3801BFAD0@KU1P153MB0166.APCP153.PROD.OUTLOOK.COM
> 
> 
> Dexuan Cui (1):
>   PCI/PM: Always return devices to D0 when thawing
> 
> Bjorn Helgaas (6):
>   PCI/PM: Correct pci_pm_thaw_noirq() documentation
>   PCI/PM: Clear PCIe PME Status even for legacy power management
>   PCI/PM: Run resume fixups before disabling wakeup events
>   PCI/PM: Make power management op coding style consistent
>   PCI/PM: Wrap long lines in documentation
>   PCI/MSI: Move power state check out of pci_msi_supported()
> 
>  Documentation/power/pci.rst | 38 +++++++-------
>  drivers/pci/msi.c           |  6 +--
>  drivers/pci/pci-driver.c    | 99 ++++++++++++++++++-------------------
>  3 files changed, 71 insertions(+), 72 deletions(-)

Thanks Dexuan and Rafael for taking a look at these!

I applied the first six to pci/pm and the last to pci/msi, all for
v5.5.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
