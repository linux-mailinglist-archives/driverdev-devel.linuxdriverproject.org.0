Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A96ABC0E63
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Sep 2019 01:40:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48569882F7;
	Fri, 27 Sep 2019 23:40:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y7sTb2XCxOWF; Fri, 27 Sep 2019 23:40:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A551581D5C;
	Fri, 27 Sep 2019 23:40:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 06D161BF294
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 23:40:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0347B8768C
 for <devel@linuxdriverproject.org>; Fri, 27 Sep 2019 23:40:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TgCm1BjMJVVx for <devel@linuxdriverproject.org>;
 Fri, 27 Sep 2019 23:40:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D90E887688
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 23:40:47 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id 72so3102732lfh.6
 for <devel@driverdev.osuosl.org>; Fri, 27 Sep 2019 16:40:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/vjA3feuVjhECJGCJlv7w7hKdoWzVAzTRzB0psX8g5s=;
 b=uV7oUkqwci5q8IZaKu61yvxlzNxJOw5NvA0eSSSV/Jj8hrgXDvtwKfAq5SfF51lCgw
 VRqzCD6vrEMU84TApRhr3NTOj+c8VwEHWDtz1P9VkEycVvFlTYOla6rF9IlwPiLrhWO/
 W52WL6NunyWHGarvelMb4G2/WyH4hiz5Y7KWVsja1S7BV6ZBAyhCUbedhAHzAZVO2Wh4
 pDOkH6HljW7VdSmbkq+MYMQ3GUgKqE7/ei59DxsO2TxfcNSkCD9YjXWbvByXI+NWEosV
 z9APhgnXTOKq55Bi0pDdJFVKlThGYZnObh8xVBU0T5ksx2cUslO45deF70SS50SF0pQX
 A8CQ==
X-Gm-Message-State: APjAAAX1S7omKlJ+pYlKswFW/ifBgMj9EsbPvkt6oJ6yb90GuZPEZ6RO
 pX1AsYUjXCDufd/Cd9V59oI=
X-Google-Smtp-Source: APXvYqzJjAsZOxffDP6X1PyAJObAmIHMhsLPPyKIAwdxjZFuFJU1hlQRv1yAEhIhnnum3sSXraXujg==
X-Received: by 2002:ac2:568c:: with SMTP id 12mr4300543lfr.133.1569627646034; 
 Fri, 27 Sep 2019 16:40:46 -0700 (PDT)
Received: from localhost.localdomain (broadband-188-32-48-208.ip.moscow.rt.ru.
 [188.32.48.208])
 by smtp.googlemail.com with ESMTPSA id x25sm778810ljb.60.2019.09.27.16.40.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 16:40:45 -0700 (PDT)
From: Denis Efremov <efremov@linux.com>
To: Bjorn Helgaas <bhelgaas@google.com>
Subject: [PATCH RESEND v3 00/26] Add definition for the number of standard PCI
 BARs
Date: Sat, 28 Sep 2019 02:40:26 +0300
Message-Id: <20190927234026.23342-1-efremov@linux.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190916204158.6889-3-efremov@linux.com>
References: <20190916204158.6889-3-efremov@linux.com>
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
Cc: devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-scsi@vger.kernel.org, kvm@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Denis Efremov <efremov@linux.com>, linux-ide@vger.kernel.org,
 netdev@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-alpha@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Code that iterates over all standard PCI BARs typically uses
PCI_STD_RESOURCE_END, but this is error-prone because it requires
"i <= PCI_STD_RESOURCE_END" rather than something like
"i < PCI_STD_NUM_BARS". We could add such a definition and use it the same
way PCI_SRIOV_NUM_BARS is used. The patchset also replaces constant (6)
with new define PCI_STD_NUM_BARS where appropriate and removes local
declarations for the number of PCI BARs.

Changes in v3:
  - Updated commits description.
  - Refactored "< PCI_ROM_RESOURCE" with "< PCI_STD_NUM_BARS" in loops.
  - Refactored "<= BAR_5" with "< PCI_STD_NUM_BARS" in loops.
  - Removed local define GASKET_NUM_BARS.
  - Removed local define PCI_NUM_BAR_RESOURCES.

Changes in v2:
  - Reversed checks in pci_iomap_range,pci_iomap_wc_range.
  - Refactored loops in vfio_pci to keep PCI_STD_RESOURCES.
  - Added 2 new patches to replace the magic constant with new define.
  - Splitted net patch in v1 to separate stmmac and dwc-xlgmac patches.

Denis Efremov (26):
  PCI: Add define for the number of standard PCI BARs
  PCI: hv: Use PCI_STD_NUM_BARS
  PCI: dwc: Use PCI_STD_NUM_BARS
  PCI: endpoint: Use PCI_STD_NUM_BARS
  misc: pci_endpoint_test: Use PCI_STD_NUM_BARS
  s390/pci: Use PCI_STD_NUM_BARS
  x86/PCI: Loop using PCI_STD_NUM_BARS
  alpha/PCI: Use PCI_STD_NUM_BARS
  ia64: Use PCI_STD_NUM_BARS
  stmmac: pci: Loop using PCI_STD_NUM_BARS
  net: dwc-xlgmac: Loop using PCI_STD_NUM_BARS
  ixgb: use PCI_STD_NUM_BARS
  e1000: Use PCI_STD_NUM_BARS
  rapidio/tsi721: Loop using PCI_STD_NUM_BARS
  efifb: Loop using PCI_STD_NUM_BARS
  fbmem: use PCI_STD_NUM_BARS
  vfio_pci: Loop using PCI_STD_NUM_BARS
  scsi: pm80xx: Use PCI_STD_NUM_BARS
  ata: sata_nv: Use PCI_STD_NUM_BARS
  staging: gasket: Use PCI_STD_NUM_BARS
  serial: 8250_pci: Use PCI_STD_NUM_BARS
  pata_atp867x: Use PCI_STD_NUM_BARS
  memstick: use PCI_STD_NUM_BARS
  USB: core: Use PCI_STD_NUM_BARS
  usb: pci-quirks: Use PCI_STD_NUM_BARS
  devres: use PCI_STD_NUM_BARS

 arch/alpha/kernel/pci-sysfs.c                 |  8 ++---
 arch/ia64/sn/pci/pcibr/pcibr_dma.c            |  4 +--
 arch/s390/include/asm/pci.h                   |  5 +--
 arch/s390/include/asm/pci_clp.h               |  6 ++--
 arch/s390/pci/pci.c                           | 16 +++++-----
 arch/s390/pci/pci_clp.c                       |  6 ++--
 arch/x86/pci/common.c                         |  2 +-
 arch/x86/pci/intel_mid_pci.c                  |  2 +-
 drivers/ata/pata_atp867x.c                    |  2 +-
 drivers/ata/sata_nv.c                         |  2 +-
 drivers/memstick/host/jmb38x_ms.c             |  2 +-
 drivers/misc/pci_endpoint_test.c              |  8 ++---
 drivers/net/ethernet/intel/e1000/e1000.h      |  1 -
 drivers/net/ethernet/intel/e1000/e1000_main.c |  2 +-
 drivers/net/ethernet/intel/ixgb/ixgb.h        |  1 -
 drivers/net/ethernet/intel/ixgb/ixgb_main.c   |  2 +-
 .../net/ethernet/stmicro/stmmac/stmmac_pci.c  |  4 +--
 .../net/ethernet/synopsys/dwc-xlgmac-pci.c    |  2 +-
 drivers/pci/controller/dwc/pci-dra7xx.c       |  2 +-
 .../pci/controller/dwc/pci-layerscape-ep.c    |  2 +-
 drivers/pci/controller/dwc/pcie-artpec6.c     |  2 +-
 .../pci/controller/dwc/pcie-designware-plat.c |  2 +-
 drivers/pci/controller/dwc/pcie-designware.h  |  2 +-
 drivers/pci/controller/pci-hyperv.c           | 10 +++---
 drivers/pci/endpoint/functions/pci-epf-test.c | 10 +++---
 drivers/pci/pci-sysfs.c                       |  4 +--
 drivers/pci/pci.c                             | 13 ++++----
 drivers/pci/proc.c                            |  4 +--
 drivers/pci/quirks.c                          |  4 +--
 drivers/rapidio/devices/tsi721.c              |  2 +-
 drivers/scsi/pm8001/pm8001_hwi.c              |  2 +-
 drivers/scsi/pm8001/pm8001_init.c             |  2 +-
 drivers/staging/gasket/gasket_constants.h     |  3 --
 drivers/staging/gasket/gasket_core.c          | 12 +++----
 drivers/staging/gasket/gasket_core.h          |  4 +--
 drivers/tty/serial/8250/8250_pci.c            |  8 ++---
 drivers/usb/core/hcd-pci.c                    |  2 +-
 drivers/usb/host/pci-quirks.c                 |  2 +-
 drivers/vfio/pci/vfio_pci.c                   | 11 ++++---
 drivers/vfio/pci/vfio_pci_config.c            | 32 ++++++++++---------
 drivers/vfio/pci/vfio_pci_private.h           |  4 +--
 drivers/video/fbdev/core/fbmem.c              |  4 +--
 drivers/video/fbdev/efifb.c                   |  2 +-
 include/linux/pci-epc.h                       |  2 +-
 include/linux/pci.h                           |  2 +-
 include/uapi/linux/pci_regs.h                 |  1 +
 lib/devres.c                                  |  2 +-
 47 files changed, 112 insertions(+), 115 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
