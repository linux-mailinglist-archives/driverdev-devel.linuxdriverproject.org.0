Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 77893B6006
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Sep 2019 11:20:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C71E2152F;
	Wed, 18 Sep 2019 09:20:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2Ff5QRE0rnux; Wed, 18 Sep 2019 09:20:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AB29021505;
	Wed, 18 Sep 2019 09:20:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 120011BF41E
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0AA04849E2
 for <devel@linuxdriverproject.org>; Wed, 18 Sep 2019 09:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJBz1Eptulpj for <devel@linuxdriverproject.org>;
 Wed, 18 Sep 2019 09:20:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7AB6A848F4
 for <devel@driverdev.osuosl.org>; Wed, 18 Sep 2019 09:20:43 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FC83337;
 Wed, 18 Sep 2019 02:20:41 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E30593F59C;
 Wed, 18 Sep 2019 02:20:40 -0700 (PDT)
Date: Wed, 18 Sep 2019 10:20:39 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Denis Efremov <efremov@linux.com>
Subject: Re: [PATCH v3 00/26] Add definition for the number of standard PCI
 BARs
Message-ID: <20190918092038.GC9720@e119886-lin.cambridge.arm.com>
References: <20190916204158.6889-1-efremov@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916204158.6889-1-efremov@linux.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 linux-ia64@vger.kernel.org, Sebastian Ott <sebott@linux.ibm.com>,
 linux-pci@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-hyperv@vger.kernel.org, linux-ide@vger.kernel.org,
 Peter Jones <pjones@redhat.com>, "H . Peter Anvin" <hpa@zytor.com>,
 netdev@vger.kernel.org, Sasha Levin <sashal@kernel.org>,
 linux-s390@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Stephen Hemminger <sthemmin@microsoft.com>,
 Maxim Levitsky <maximlevitsky@gmail.com>, linux-scsi@vger.kernel.org,
 x86@kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, linux-serial@vger.kernel.org,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Matt Turner <mattst88@gmail.com>,
 Jack Wang <jinpu.wang@cloud.ionos.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org, Jose Abreu <Jose.Abreu@synopsys.com>,
 Fenghua Yu <fenghua.yu@intel.com>, linux-alpha@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>, Alex Dubov <oakad@yahoo.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, Jiri Slaby <jslaby@suse.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Ivan Kokshaysky <ink@jurassic.park.msu.ru>, linux-fbdev@vger.kernel.org,
 kvm@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Thomas Gleixner <tglx@linutronix.de>, Todd Poynor <toddpoynor@google.com>,
 Matt Porter <mporter@kernel.crashing.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Richard Henderson <rth@twiddle.net>, Jens Axboe <axboe@kernel.dk>,
 Tony Luck <tony.luck@intel.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mathias Nyman <mathias.nyman@intel.com>,
 Alexandre Bounine <alex.bou9@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Springer <rspringer@google.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Sep 16, 2019 at 11:41:32PM +0300, Denis Efremov wrote:
> Code that iterates over all standard PCI BARs typically uses
> PCI_STD_RESOURCE_END, but this is error-prone because it requires
> "i <= PCI_STD_RESOURCE_END" rather than something like
> "i < PCI_STD_NUM_BARS". We could add such a definition and use it the same
> way PCI_SRIOV_NUM_BARS is used. The patchset also replaces constant (6)
> with new define PCI_STD_NUM_BARS where appropriate and removes local
> declarations for the number of PCI BARs.

I've made several comments to various patches, however for all the patches
you can add:

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

> 
> Changes in v3:
>   - Updated commits description.
>   - Refactored "< PCI_ROM_RESOURCE" with "< PCI_STD_NUM_BARS" in loops.
>   - Refactored "<= BAR_5" with "< PCI_STD_NUM_BARS" in loops.
>   - Removed local define GASKET_NUM_BARS.
>   - Removed local define PCI_NUM_BAR_RESOURCES.
> 
> Changes in v2:
>   - Reversed checks in pci_iomap_range,pci_iomap_wc_range.
>   - Refactored loops in vfio_pci to keep PCI_STD_RESOURCES.
>   - Added 2 new patches to replace the magic constant with new define.
>   - Splitted net patch in v1 to separate stmmac and dwc-xlgmac patches.
> 
> Denis Efremov (26):
>   PCI: Add define for the number of standard PCI BARs
>   PCI: hv: Use PCI_STD_NUM_BARS
>   PCI: dwc: Use PCI_STD_NUM_BARS
>   PCI: endpoint: Use PCI_STD_NUM_BARS
>   misc: pci_endpoint_test: Use PCI_STD_NUM_BARS
>   s390/pci: Use PCI_STD_NUM_BARS
>   x86/PCI: Loop using PCI_STD_NUM_BARS
>   alpha/PCI: Use PCI_STD_NUM_BARS
>   ia64: Use PCI_STD_NUM_BARS
>   stmmac: pci: Loop using PCI_STD_NUM_BARS
>   net: dwc-xlgmac: Loop using PCI_STD_NUM_BARS
>   ixgb: use PCI_STD_NUM_BARS
>   e1000: Use PCI_STD_NUM_BARS
>   rapidio/tsi721: Loop using PCI_STD_NUM_BARS
>   efifb: Loop using PCI_STD_NUM_BARS
>   fbmem: use PCI_STD_NUM_BARS
>   vfio_pci: Loop using PCI_STD_NUM_BARS
>   scsi: pm80xx: Use PCI_STD_NUM_BARS
>   ata: sata_nv: Use PCI_STD_NUM_BARS
>   staging: gasket: Use PCI_STD_NUM_BARS
>   serial: 8250_pci: Use PCI_STD_NUM_BARS
>   pata_atp867x: Use PCI_STD_NUM_BARS
>   memstick: use PCI_STD_NUM_BARS
>   USB: core: Use PCI_STD_NUM_BARS
>   usb: pci-quirks: Use PCI_STD_NUM_BARS
>   devres: use PCI_STD_NUM_BARS
> 
>  arch/alpha/kernel/pci-sysfs.c                 |  8 ++---
>  arch/ia64/sn/pci/pcibr/pcibr_dma.c            |  4 +--
>  arch/s390/include/asm/pci.h                   |  5 +--
>  arch/s390/include/asm/pci_clp.h               |  6 ++--
>  arch/s390/pci/pci.c                           | 16 +++++-----
>  arch/s390/pci/pci_clp.c                       |  6 ++--
>  arch/x86/pci/common.c                         |  2 +-
>  arch/x86/pci/intel_mid_pci.c                  |  2 +-
>  drivers/ata/pata_atp867x.c                    |  2 +-
>  drivers/ata/sata_nv.c                         |  2 +-
>  drivers/memstick/host/jmb38x_ms.c             |  2 +-
>  drivers/misc/pci_endpoint_test.c              |  8 ++---
>  drivers/net/ethernet/intel/e1000/e1000.h      |  1 -
>  drivers/net/ethernet/intel/e1000/e1000_main.c |  2 +-
>  drivers/net/ethernet/intel/ixgb/ixgb.h        |  1 -
>  drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  2 +-
>  .../net/ethernet/stmicro/stmmac/stmmac_pci.c  |  4 +--
>  .../net/ethernet/synopsys/dwc-xlgmac-pci.c    |  2 +-
>  drivers/pci/controller/dwc/pci-dra7xx.c       |  2 +-
>  .../pci/controller/dwc/pci-layerscape-ep.c    |  2 +-
>  drivers/pci/controller/dwc/pcie-artpec6.c     |  2 +-
>  .../pci/controller/dwc/pcie-designware-plat.c |  2 +-
>  drivers/pci/controller/dwc/pcie-designware.h  |  2 +-
>  drivers/pci/controller/pci-hyperv.c           | 10 +++---
>  drivers/pci/endpoint/functions/pci-epf-test.c | 10 +++---
>  drivers/pci/pci-sysfs.c                       |  4 +--
>  drivers/pci/pci.c                             | 13 ++++----
>  drivers/pci/proc.c                            |  4 +--
>  drivers/pci/quirks.c                          |  4 +--
>  drivers/rapidio/devices/tsi721.c              |  2 +-
>  drivers/scsi/pm8001/pm8001_hwi.c              |  2 +-
>  drivers/scsi/pm8001/pm8001_init.c             |  2 +-
>  drivers/staging/gasket/gasket_constants.h     |  3 --
>  drivers/staging/gasket/gasket_core.c          | 12 +++----
>  drivers/staging/gasket/gasket_core.h          |  4 +--
>  drivers/tty/serial/8250/8250_pci.c            |  8 ++---
>  drivers/usb/core/hcd-pci.c                    |  2 +-
>  drivers/usb/host/pci-quirks.c                 |  2 +-
>  drivers/vfio/pci/vfio_pci.c                   | 11 ++++---
>  drivers/vfio/pci/vfio_pci_config.c            | 32 ++++++++++---------
>  drivers/vfio/pci/vfio_pci_private.h           |  4 +--
>  drivers/video/fbdev/core/fbmem.c              |  4 +--
>  drivers/video/fbdev/efifb.c                   |  2 +-
>  include/linux/pci-epc.h                       |  2 +-
>  include/linux/pci.h                           |  2 +-
>  include/uapi/linux/pci_regs.h                 |  1 +
>  lib/devres.c                                  |  2 +-
>  47 files changed, 112 insertions(+), 115 deletions(-)
> 
> -- 
> 2.21.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
