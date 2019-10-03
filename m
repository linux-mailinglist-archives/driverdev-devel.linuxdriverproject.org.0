Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55E76CAEB9
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 21:03:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C65088320;
	Thu,  3 Oct 2019 19:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8nut6PcGv+Df; Thu,  3 Oct 2019 19:03:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F1BCD88281;
	Thu,  3 Oct 2019 19:03:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AAD251BF2F7
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7ECCE88265
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OIJtCUg0GYwi for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 19:03:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690110.outbound.protection.outlook.com [40.107.69.110])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3EF8588222
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 19:03:15 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e0qpsDHPsQNVionp4ZUWJRIZnb1oym8R7miYzQySi8VAl4lQYjiUsfDCQ+33ycFYFeoAFVqBffkMKc/sBx4DaMXUb6102uuCNW5gL/LkzeMI41Sr2a5DtA1PLt5TiFP035yYGJDsMCYuErwYR9G71oBJFqwowGKSF2WZpPPn6OtePgG9I/8KAgMxQKCUYiGrz833DUqlO13HAnE0IEFxgG/L40gdvUehmg0/rgdl4ozP0LCbgS8NcBK3xcgpLDCpDsjax2X+rgigJQuZdZmdid0mB+lnCHSorVxVHDjYGbC6jIB/XUgegvCNVmw9cRwoLo/EQDxjrje+EdoTpIAHKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fovXt1QDNlRsK0aZo4Y06n5WhGtx8m0fIh3k1QoPcRg=;
 b=FXh+uFD6UP1yxvjz6FsQ8wwkgLQiNjX4j/l5gg+fGFpCtl3JKQ53SIBQoK3otoYhW71lew9u0JHdN7qTCziWRqxIXDT0gOOqnnTd42OOT3VzFeBOGBdmWXxmf26v6fr9gz2mOnHlqIGVpqqbwfVTmiEuPM2mfUSHRuhIY6Tbb5etaRbCMpfwSEUOXYLiE7E9UT37Vqrb0IP/1/bnegGEt8sQAl4gp7rVUeY56ktTO7ChaBOKmM6XU6XeqJ8hyfiH6AvvqgLdGUzQ+yAgmFaitwpKko6892S75U56Dy7PCmqQ2l9uJcZDje9uF4CMxIzeqjzJl0GSovOo4+lJ0+LRmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fovXt1QDNlRsK0aZo4Y06n5WhGtx8m0fIh3k1QoPcRg=;
 b=P/YzzdSrEJu5caWaxIRC6qkoIoIUsfOSYE0ZBu0JUAhaa0dTXyiraoKndA9BDIm14HYrrd89JQH+4XGjAZ/WH0Rqt1ER+CZ41lzI3PWbS8kWQihD/mgfUe0h7syrw5/F52X4yaZraeBFq1UnzgiDuyRAdum+KNfELXrHUbzEPV0=
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com (52.132.114.24) by
 SN6PR2101MB1102.namprd21.prod.outlook.com (52.132.115.27) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.7; Thu, 3 Oct 2019 19:03:13 +0000
Received: from SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62]) by SN6PR2101MB1135.namprd21.prod.outlook.com
 ([fe80::7d4a:b5b3:1062:e62%5]) with mapi id 15.20.2327.004; Thu, 3 Oct 2019
 19:03:13 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will@kernel.org" <will@kernel.org>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "maz@kernel.org" <maz@kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: [PATCH v5 0/8] Enable Linux guests on Hyper-V on ARM64
Thread-Topic: [PATCH v5 0/8] Enable Linux guests on Hyper-V on ARM64
Thread-Index: AQHVeh00xDZvxhcb5kqKmxiC2yP7xQ==
Date: Thu, 3 Oct 2019 19:03:13 +0000
Message-ID: <1570129355-16005-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR10CA0006.namprd10.prod.outlook.com (2603:10b6:301::16)
 To SN6PR2101MB1135.namprd21.prod.outlook.com
 (2603:10b6:805:4::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.159.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ffda2be7-2373-4391-b95b-08d7483456db
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: SN6PR2101MB1102:|SN6PR2101MB1102:|SN6PR2101MB1102:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <SN6PR2101MB1102D3472F11273F92C7DF4AD79F0@SN6PR2101MB1102.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(396003)(136003)(366004)(376002)(346002)(199004)(189003)(486006)(102836004)(81156014)(5660300002)(64756008)(6512007)(66476007)(66556008)(4326008)(1511001)(66946007)(256004)(52116002)(6436002)(386003)(6116002)(305945005)(476003)(8676002)(99286004)(7416002)(4720700003)(66446008)(2501003)(22452003)(6636002)(316002)(2616005)(66066001)(26005)(71200400001)(478600001)(86362001)(54906003)(2201001)(36756003)(10090500001)(81166006)(71190400001)(8936002)(6486002)(186003)(10290500003)(14454004)(25786009)(7736002)(6506007)(50226002)(3846002)(14444005)(110136005)(2906002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1102;
 H:SN6PR2101MB1135.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wNdzY0cM0zzpwFKI1lilol+/8e5iZ9BZzMY7CUnYZXvKDkcxssRMjHruxA1Q7Ftte5aDAin8nM601KIAr9k9qFkwOA5I8oFtc1RNBwzM+O7hmfye28SkImp5kpumEE5A8uF5t56ksmOVsEVv2RUGdOEZUzV+/zgTXDxU3PXCKkr4ZrazXJACqKiV79NyDjdTznDOU0RA1xnErm3raV8RuKlvFJDwSp2O9o4CYBhr8ZjD9+8Bv1Tuju7h5MxAfa1bhCMeLQY+ItjPrA75kJ/3gdrdEBTT8PqZoqjaTwTeT4mV8GsEIfLfdSfMJVvtOSh4JdAoxDc9TJXVHcggVl5fMSTVflEdA8kv4mbIaQs3i8kl4V4jEIp5zigGnC0PlL5kPhi9OXkzgFbQ376iNHzFAhNefQ7DwtTfrL8Bsy8AQv8=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffda2be7-2373-4391-b95b-08d7483456db
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 19:03:13.0443 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zm47svxF59onvlp+Xnzr/BPgmfwY1UjNfFEW4GH6eG+vLjY5Cozc6sEjidsnHAfUSYlDDG2/QCRSg0f5HF/Mkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1102
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
Cc: Sunil Muthuswamy <sunilmut@microsoft.com>,
 "boqun.feng" <boqun.feng@gmail.com>, Michael Kelley <mikelley@microsoft.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series enables Linux guests running on Hyper-V on ARM64
hardware. New ARM64-specific code in arch/arm64/hyperv initializes
Hyper-V, including its interrupts and hypercall mechanism.
Existing architecture independent drivers for Hyper-V's VMbus and
synthetic devices just work when built for ARM64. Hyper-V code is
built and included in the image and modules only if CONFIG_HYPERV
is enabled.

The eight patches are organized as follows:
1) Add include files that define the Hyper-V interface as
   described in the Hyper-V Top Level Functional Spec (TLFS), plus
   additional definitions specific to Linux running on Hyper-V.

2 thru 6) Add core Hyper-V support on ARM64, including hypercalls,
   interrupt handlers, kexec & panic handlers, and core hypervisor
   initialization.

7) Update the existing VMbus driver to generalize interrupt
   management across x86/x64 and ARM64.

8) Make CONFIG_HYPERV selectable on ARM64 in addition to x86/x64.

Some areas of Linux guests on Hyper-V on ARM64 are a work-
in-progress:

* Hyper-V on ARM64 currently runs with a 4 Kbyte page size, but
  allows guests with 16K/64K page size. However, the Linux drivers
  for Hyper-V synthetic devices assume the guest page size is 4K.
  This patch set lays the groundwork for larger guest page sizes,
  but the main page size changes are in a different patch stream
  that is underway to update these drivers.

* The Hyper-V vPCI driver at drivers/pci/host/pci-hyperv.c has
  x86/x64-specific code and is not being built for ARM64. Fixing
  this driver to enable vPCI devices on ARM64 will be done later.

In a few cases, terminology from the x86/x64 world has been carried
over into the ARM64 code ("MSR", "TSC").  Hyper-V still uses the
x86/x64 terminology and has not replaced it with something more
generic, so the code uses the Hyper-V terminology.  This will be
fixed when Hyper-V updates the usage in the TLFS.

This patch set is based on the 5.4-rc1-next-20191001 tree.

Changes in v5:
* Minor fixups to rebase to 5.4-rc1 linux-next

Changes in v4:
* Moved clock-related code into an architecture independent
  Hyper-V clocksource driver that is already upstream. Clock
  related code is removed from this patch set except for the
  ARM64 specific interrupt handler. [Marc Zyngier]
* Separately upstreamed the split of mshyperv.h into arch independent
  and arch dependent portions. The arch independent portion has been
  removed from this patch set.
* Divided patch #2 of the series into multiple smaller patches
  [Marc Zyngier]
* Changed a dozen or so smaller things based on feedback
  [Marc Zyngier, Will Deacon]
* Added functions to alloc/free Hyper-V size pages for use by
  drivers for Hyper-V synthetic devices when updated to not assume
  guest page size and Hyper-v page size are the same

Changes in v3:
* Added initialization of hv_vp_index array like was recently
  added on x86 branch [KY Srinivasan]
* Changed Hyper-V ARM64 register symbols to be all uppercase
  instead of mixed case [KY Srinivasan]
* Separated mshyperv.h into two files, one architecture
  independent and one architecture dependent. After this code
  is upstream, will make changes to the x86 code to use the
  architecture independent file and remove duplication. And
  once we have a multi-architecture Hyper-V TLFS, will do a
  separate patch to split hyperv-tlfs.h in the same way.
  [KY Srinivasan]
* Minor tweaks to rebase to latest linux-next code

Changes in v2:
* Removed patch to implement slow_virt_to_phys() on ARM64.
  Use of slow_virt_to_phys() in arch independent Hyper-V
  drivers has been eliminated by commit 6ba34171bcbd
  ("Drivers: hv: vmbus: Remove use of slow_virt_to_phys()")
* Minor tweaks to rebase to latest linux-next code

Michael Kelley (8):
  arm64: hyperv: Add core Hyper-V include files
  arm64: hyperv: Add hypercall and register access functions
  arm64: hyperv: Add memory alloc/free functions for Hyper-V size pages
  arm64: hyperv: Add interrupt handlers for VMbus and stimer
  arm64: hyperv: Add kexec and panic handlers
  arm64: hyperv: Initialize hypervisor on boot
  Drivers: hv: vmbus: Add hooks for per-CPU IRQ
  Drivers: hv: Enable Hyper-V code to be built on ARM64

 MAINTAINERS                          |   3 +
 arch/arm64/Kbuild                    |   1 +
 arch/arm64/hyperv/Makefile           |   2 +
 arch/arm64/hyperv/hv_hvc.S           |  44 ++++
 arch/arm64/hyperv/hv_init.c          | 415 +++++++++++++++++++++++++++++++++++
 arch/arm64/hyperv/mshyperv.c         | 165 ++++++++++++++
 arch/arm64/include/asm/hyperv-tlfs.h | 408 ++++++++++++++++++++++++++++++++++
 arch/arm64/include/asm/mshyperv.h    | 105 +++++++++
 arch/x86/include/asm/mshyperv.h      |   4 +
 drivers/hv/Kconfig                   |   3 +-
 drivers/hv/hv.c                      |   3 +
 include/asm-generic/mshyperv.h       |   5 +
 12 files changed, 1157 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/hyperv/Makefile
 create mode 100644 arch/arm64/hyperv/hv_hvc.S
 create mode 100644 arch/arm64/hyperv/hv_init.c
 create mode 100644 arch/arm64/hyperv/mshyperv.c
 create mode 100644 arch/arm64/include/asm/hyperv-tlfs.h
 create mode 100644 arch/arm64/include/asm/mshyperv.h

-- 
1.8.3.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
