Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5AD83A3E
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Aug 2019 22:30:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2E95686B3B;
	Tue,  6 Aug 2019 20:30:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rv+My-d+idsJ; Tue,  6 Aug 2019 20:30:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7930586AF0;
	Tue,  6 Aug 2019 20:30:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5B7911BF375
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:30:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 51A7C84AF1
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:30:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iPiAbAKkjhit for <devel@linuxdriverproject.org>;
 Tue,  6 Aug 2019 20:30:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-eopbgr690134.outbound.protection.outlook.com [40.107.69.134])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DEA5486A72
 for <devel@linuxdriverproject.org>; Tue,  6 Aug 2019 20:30:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BmcQ7ch3r4nfesL2ErdnZklCaq2hd99Bo17N9wqVsWcTwehogeDEFzwtWwGdMPFBIFyzBLmX9zD+13ws78El2aS15LTCJvzlIN6CZtTzL4end5jmAt/b1OIRdko1llenSVkcONrDlXs7jooH87cjD71bEWiQQqnoHQGpLoWJ4azoVnWWAzPEgFSUiFbAko6JShl3Z+TRO7/Yh9oGCHUydciI0kB5QSWyyAgHklw+hmE1N4Hk6IZYTc2TJbafN9JD+TPfy6kiwyJeVVfOKeg2djWYMedRCZql1uh7dsTY6Nv8Qsc10wjletbI+TIBT/DORv0PKAQHbKEYRr8FHzV22A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VFqXJ7W/1v+4EdZk//xFfAeZ2eMlpTzQWuXzVGj8ZvI=;
 b=IWUbU9bqxcnwXIRA8S/nBNoAtdrUc8/RClHideU/zv1iTO8oh1DfNYbtX0skbAR8lEUgfEjUGQbdVLUV7Yj5fy8LbvmDrRVnnk7EZ08pw8mRmHayw7zCrTJKxzVqU/gWQwUgqVkcb61Fd97zDBejnRZCbnQQbXyc4FNzTIIkh1jBGi/ZAnGbelDoEDIvYZkVpZkywEs5adaF8N5z0/yGRNiX6TWVLD0JS8QAOk7ytyXuBLJft9jAJfdQ5awNhmVfjRPrnwlbnQCkW7WcNP1Wicna++B0FDG3nLcfta46B6ZocXAOKN1QjBCGEkwiv3R2gm5zagjqflBLA2CEdNqD2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VFqXJ7W/1v+4EdZk//xFfAeZ2eMlpTzQWuXzVGj8ZvI=;
 b=oMy76mj32n+g0orx9B7ygavqAfkqbUzny5HuSweSe84bO2N0vkxmuwXEAajjPERGAG0RvyBAUovpA8/tGkYqmWW6KdkGRJIoOOf7qtbPRUs5P1QFznSoIYPhiF5dkWwqq2RybBDuupgMSV4ckt3d8pHYLRyQyRiiKSypWZVrdzk=
Received: from BYAPR21MB1335.namprd21.prod.outlook.com (20.179.60.209) by
 BYAPR21MB1206.namprd21.prod.outlook.com (20.179.57.16) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.13; Tue, 6 Aug 2019 20:30:48 +0000
Received: from BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301]) by BYAPR21MB1335.namprd21.prod.outlook.com
 ([fe80::819:aea0:eda4:9301%9]) with mapi id 15.20.2157.001; Tue, 6 Aug 2019
 20:30:48 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "marc.zyngier@arm.com" <marc.zyngier@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-hyperv@vger.kernel.org"
 <linux-hyperv@vger.kernel.org>, "devel@linuxdriverproject.org"
 <devel@linuxdriverproject.org>, "olaf@aepfle.de" <olaf@aepfle.de>,
 "apw@canonical.com" <apw@canonical.com>, vkuznets <vkuznets@redhat.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "marcelo.cerri@canonical.com"
 <marcelo.cerri@canonical.com>, KY Srinivasan <kys@microsoft.com>
Subject: [PATCH v4 0/8] Enable Linux guests on Hyper-V on ARM64
Thread-Topic: [PATCH v4 0/8] Enable Linux guests on Hyper-V on ARM64
Thread-Index: AQHVTJXUFtv+Ew2tU0qrx4VqyHzNjA==
Date: Tue, 6 Aug 2019 20:30:48 +0000
Message-ID: <1565122133-9086-1-git-send-email-mikelley@microsoft.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MWHPR01CA0030.prod.exchangelabs.com (2603:10b6:300:101::16)
 To BYAPR21MB1335.namprd21.prod.outlook.com
 (2603:10b6:a03:115::17)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [131.107.174.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1fb5ceea-ff85-49de-ab4d-08d71aacf754
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:BYAPR21MB1206; 
x-ms-traffictypediagnostic: BYAPR21MB1206:|BYAPR21MB1206:
x-ms-exchange-transport-forked: True
x-ld-processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
x-microsoft-antispam-prvs: <BYAPR21MB1206D1F8C43771C6402FB1B4D7D50@BYAPR21MB1206.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0121F24F22
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(396003)(366004)(39860400002)(376002)(136003)(189003)(199004)(66556008)(3846002)(52116002)(6636002)(6116002)(22452003)(6512007)(71200400001)(4720700003)(5660300002)(71190400001)(8936002)(53936002)(2906002)(86362001)(64756008)(66446008)(66946007)(7416002)(66476007)(8676002)(81156014)(10290500003)(6436002)(99286004)(2616005)(478600001)(66066001)(14454004)(14444005)(110136005)(476003)(102836004)(68736007)(305945005)(2201001)(7736002)(2501003)(10090500001)(26005)(50226002)(4326008)(256004)(6506007)(25786009)(6486002)(316002)(386003)(54906003)(486006)(36756003)(1511001)(81166006)(186003)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR21MB1206;
 H:BYAPR21MB1335.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Etl3gaV99kW+Ho2LPjLrPEwaxVmpoWztMLcjwyHXwBmBQn/oF+Kpq0llFLmkLBibjNnH0ioWoFb9MqoQ5b5ly+4D3TapWd02j1AUIzmaAPt39lp+uP9kBbH0nsg3sYZ9ug2pyib4bHUhQQcsd8urfKh/+GoO5/VmHglLXlMqlQ11zbTemoxIi43/DLnVj7dT2UHykGLgoUzOwQfBmgt00G4ActHhDC1FsbjgVXiMTrZGtEdO6/y91Pu67tuLrHo1HHsD/NVSS4RNYet80TIpMLR2J92HC5IeXii3oxpfmphcpYEBz5kcuPdwAOEaFBxeTVuk6y4pVU3QKiN+/H8/P1O5pILTK4+45RZWHDtEW+H4Ywa0mSgt2zfUxyltlOq4GC7/tH3YL3LW+siyVZIgE1zMUz8yPBgHtIDkABUtBh0=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1fb5ceea-ff85-49de-ab4d-08d71aacf754
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2019 20:30:48.3757 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UakzYUC4/gx/k60BbaM0oP3AWjMQKZAUOYm/Toyqo3C1+G3aAjadPvNQT3eNNVTc6ZJIz8+Xk4cczeqreyBayw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR21MB1206
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
  but the main changes are in a different patch stream that is
  underway to update these drivers.

* The Hyper-V vPCI driver at drivers/pci/host/pci-hyperv.c has
  x86/x64-specific code and is not being built for ARM64. Fixing
  this driver to enable vPCI devices on ARM64 will be done later.

In a few cases, terminology from the x86/x64 world has been carried
over into the ARM64 code ("MSR", "TSC").  Hyper-V still uses the
x86/x64 terminology and has not replaced it with something more
generic, so the code uses the Hyper-V terminology.  This will be
fixed when Hyper-V updates the usage in the TLFS.

This patch set is built against a 5.3.0-rc2-next-20190731 tree.

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
* Added functions to alloc/free Hyper-V size pages. These are
  for use by drivers for Hyper-V synthetic devices when they are
  updated to handle guest page size != Hyper-V page size

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
 arch/arm64/Makefile                  |   1 +
 arch/arm64/hyperv/Makefile           |   2 +
 arch/arm64/hyperv/hv_hvc.S           |  44 ++++
 arch/arm64/hyperv/hv_init.c          | 404 ++++++++++++++++++++++++++++++++++
 arch/arm64/hyperv/mshyperv.c         | 165 ++++++++++++++
 arch/arm64/include/asm/hyperv-tlfs.h | 408 +++++++++++++++++++++++++++++++++++
 arch/arm64/include/asm/mshyperv.h    | 105 +++++++++
 arch/x86/include/asm/mshyperv.h      |   4 +
 drivers/hv/Kconfig                   |   5 +-
 drivers/hv/hv.c                      |   2 +
 include/asm-generic/mshyperv.h       |   5 +
 12 files changed, 1146 insertions(+), 2 deletions(-)
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
