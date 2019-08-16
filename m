Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B5E8F8DF
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7443F8790A;
	Fri, 16 Aug 2019 02:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j9BvJPyzOrH7; Fri, 16 Aug 2019 02:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3C12A86E6A;
	Fri, 16 Aug 2019 02:33:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DFA721BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D9124860F8
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EM5eT9aKGEry for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1837B860C1
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:32:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894466"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:32:58 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 00/15] acrn: add the ACRN driver module
Date: Fri, 16 Aug 2019 10:25:41 +0800
Message-Id: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
X-Mailer: git-send-email 2.7.4
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
Cc: Zhao Yakui <yakui.zhao@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ACRN is a flexible, lightweight reference hypervisor, built with real-time
and safety-criticality in mind, optimized to streamline embedded development
through an open source platform. It is built for embedded IOT with small
footprint and real-time features. More details can be found
in https://projectacrn.org/

This is the patch set that add the ACRN driver module on ACRN guest, which
acts as the router to communciate with ACRN hypervisor.
The user-space applications can use the provided ACRN ioctls to
interact with ACRN hypervisor through different hypercalls. After the ACRN
module is loaded, the device file of /dev/acrn_hsm can be accessed in
user-space. It includes the management of virtualized CPU/memory/
device/interrupt/MMIO emulation for other ACRN guest. 
 
The first three patches are the changes under x86/acrn, which adds the
required APIs for the driver and reports the X2APIC caps. 
The remaining patches add the ACRN driver module, which accepts the ioctl
from user-space and then communicate with the low-level ACRN hypervisor
by using hypercall.


Zhao Yakui (15):
  x86/acrn: Report X2APIC for ACRN guest
  x86/acrn: Add two APIs to add/remove driver-specific upcall ISR handler
  x86/acrn: Add hypercall for ACRN guest
  drivers/acrn: add the basic framework of acrn char device driver
  drivers/acrn: add driver-specific hypercall for ACRN_HSM
  drivers/acrn: add the support of querying ACRN api version
  drivers/acrn: add acrn vm/vcpu management for ACRN_HSM char device
  drivers/acrn: add VM memory management for ACRN char device
  drivers/acrn: add passthrough device support
  drivers/acrn: add interrupt injection support
  drivers/acrn: add the support of handling emulated ioreq
  drivers/acrn: add driver-specific IRQ handle to dispatch IO_REQ request
  drivers/acrn: add service to obtain Power data transition
  drivers/acrn: add the support of irqfd and eventfd
  drivers/acrn: add the support of offline SOS cpu

 arch/x86/include/asm/acrn.h               |  57 ++
 arch/x86/kernel/cpu/acrn.c                |  20 +-
 drivers/staging/Kconfig                   |   2 +
 drivers/staging/Makefile                  |   1 +
 drivers/staging/acrn/Kconfig              |  18 +
 drivers/staging/acrn/Makefile             |   9 +
 drivers/staging/acrn/acrn_dev.c           | 727 +++++++++++++++++++++++
 drivers/staging/acrn/acrn_drv_internal.h  | 186 ++++++
 drivers/staging/acrn/acrn_hv_defs.h       |  65 +++
 drivers/staging/acrn/acrn_hypercall.c     | 136 +++++
 drivers/staging/acrn/acrn_hypercall.h     | 132 +++++
 drivers/staging/acrn/acrn_ioeventfd.c     | 407 +++++++++++++
 drivers/staging/acrn/acrn_ioreq.c         | 937 ++++++++++++++++++++++++++++++
 drivers/staging/acrn/acrn_irqfd.c         | 339 +++++++++++
 drivers/staging/acrn/acrn_mm.c            | 227 ++++++++
 drivers/staging/acrn/acrn_mm_hugetlb.c    | 281 +++++++++
 drivers/staging/acrn/acrn_vm_mngt.c       | 116 ++++
 include/linux/acrn/acrn_drv.h             | 200 +++++++
 include/uapi/linux/acrn/acrn_common_def.h | 201 +++++++
 include/uapi/linux/acrn/acrn_ioctl_defs.h | 345 +++++++++++
 20 files changed, 4400 insertions(+), 6 deletions(-)
 create mode 100644 drivers/staging/acrn/Kconfig
 create mode 100644 drivers/staging/acrn/Makefile
 create mode 100644 drivers/staging/acrn/acrn_dev.c
 create mode 100644 drivers/staging/acrn/acrn_drv_internal.h
 create mode 100644 drivers/staging/acrn/acrn_hv_defs.h
 create mode 100644 drivers/staging/acrn/acrn_hypercall.c
 create mode 100644 drivers/staging/acrn/acrn_hypercall.h
 create mode 100644 drivers/staging/acrn/acrn_ioeventfd.c
 create mode 100644 drivers/staging/acrn/acrn_ioreq.c
 create mode 100644 drivers/staging/acrn/acrn_irqfd.c
 create mode 100644 drivers/staging/acrn/acrn_mm.c
 create mode 100644 drivers/staging/acrn/acrn_mm_hugetlb.c
 create mode 100644 drivers/staging/acrn/acrn_vm_mngt.c
 create mode 100644 include/linux/acrn/acrn_drv.h
 create mode 100644 include/uapi/linux/acrn/acrn_common_def.h
 create mode 100644 include/uapi/linux/acrn/acrn_ioctl_defs.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
