Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D90DF31C24A
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 20:14:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5958E85A58;
	Mon, 15 Feb 2021 19:14:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bq5K1_KStBpw; Mon, 15 Feb 2021 19:14:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A01B98501A;
	Mon, 15 Feb 2021 19:14:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D4E71BF399
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 19:14:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 58FCC6E83A
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 19:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aAjQcBwCmY9O for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 19:14:36 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 594B86ED1C; Mon, 15 Feb 2021 19:14:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
 [209.85.210.46])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0FF8E6ECA6
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 19:14:34 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id w26so1224864otm.4
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 11:14:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=00EmQHzX4sZufaQFF5R24gjltgDu0t0mr5R0bJKyjJo=;
 b=Ti60rbaNSsl1UCKTw996+J1qmdhj/Xhmq2iPJEEC0o3GKR8jfANb36pK1fFoCt5hsX
 iTBHIJYXoiI41texHbnSMtH1FuJIaeHn0bEHCKFAZ3Kde7PcyYTAY+rEntJKDR7rK4/Y
 SCGuerq8Mj5+fqne4Y2eIJQkZmYFWAGi0+UOyfnBs1YPgU8WhnfId4RyIU8zXJe7pTBh
 s9s9drSPS4RyGPD2AkHhCfgthEoeZ41Kbbu00GCzE+rbVxj1mZ4GrzZA8AGeeiltXWYH
 l/KIg89XH5RTVbKBK+0SdRbsf3wqRvqauzUwNUXgFABm4Uc9aREu9MLTeaAoKdlLL0Jk
 nK8A==
X-Gm-Message-State: AOAM531p46UXR+tqAB5nLfO7SsOuexSv0qFAthru5AayOr6R1ua5oEz5
 +W+KxayqVAIEme0F59AZzc+yvMxPRhgqAUYug7c=
X-Google-Smtp-Source: ABdhPJzk0DPRbPzCT7ELSyRaBgVkAid2pvZ+wAQ6LIA0uO2RD2Er+cFD8JhUb/hVfB/Sg5MEnGFzNwuaErXFLdRu5pw=
X-Received: by 2002:a9d:a2d:: with SMTP id 42mr12759242otg.321.1613416474101; 
 Mon, 15 Feb 2021 11:14:34 -0800 (PST)
MIME-Version: 1.0
References: <20210211134008.38282-1-andriy.shevchenko@linux.intel.com>
 <CAJZ5v0gzd0Xwd006P3PUutKcVRqLNxmREBB-QW85BRMBArbBVw@mail.gmail.com>
 <bf10026f-13bb-c1c6-2787-d8c9520f8401@redhat.com>
In-Reply-To: <bf10026f-13bb-c1c6-2787-d8c9520f8401@redhat.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 15 Feb 2021 20:14:23 +0100
Message-ID: <CAJZ5v0jwtkLP9K=3iUFNUU_wMSW8-OSfUZH8EtMa2SJUfnvZrw@mail.gmail.com>
Subject: Re: [PATCH v1 0/9] x86/platform: Remove SFI framework and users
To: Hans de Goede <hdegoede@redhat.com>, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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
Cc: Linux PCI <linux-pci@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Platform Driver <platform-driver-x86@vger.kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Lee Jones <lee.jones@linaro.org>,
 devel@driverdev.osuosl.org, Mark Gross <mgross@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Darren Hart <dvhart@infradead.org>, Sumit Gupta <sumitg@nvidia.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>, Borislav Petkov <bp@alien8.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Wolfram Sang <wsa@kernel.org>, Mike Rapoport <rppt@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andy@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 11, 2021 at 4:45 PM Hans de Goede <hdegoede@redhat.com> wrote:
>
> Hi,
>
> On 2/11/21 4:24 PM, Rafael J. Wysocki wrote:
> > On Thu, Feb 11, 2021 at 2:50 PM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> >>
> >> This is last part of Intel MID (SFI based) removal. We have no more users of it
> >> in the kernel and since SFI has been marked Obsolete for a few years already,
> >> Remove all the stuff altogether.
> >>
> >> Note, the more recent platforms (Intel Merrifield and Moorefield) still work as
> >> long as they provide correct ACPI tables.
> >>
> >> The series requires two prerequisite branches to be pulled first, i.e.
> >> - one form Rafael's PM tree (currently bleeding-edge)
> >> - one form TIP tree (x86/platform), actually only one patch is needed from it
> >>
> >> Due to above it's convenient to proceed all of these via Rafael's PM tree,
> >>
> >> Note, atomisp change is tagged by Sakari on behalf of media tree maintainers.
> >>
> >> Andy Shevchenko (9):
> >>   media: atomisp: Remove unused header
> >>   cpufreq: sfi-cpufreq: Remove driver for deprecated firmware
> >>   sfi: Remove framework for deprecated firmware
> >>   x86/PCI: Get rid of custom x86 model comparison
> >>   x86/PCI: Describe @reg for type1_access_ok()
> >>   x86/platform/intel-mid: Get rid of intel_scu_ipc_legacy.h
> >>   x86/platform/intel-mid: Drop unused __intel_mid_cpu_chip and Co.
> >>   x86/platform/intel-mid: Remove unused header inclusion in intel-mid.h
> >>   x86/platform/intel-mid: Update Copyright year and drop file names
> >>
> >>  Documentation/ABI/testing/sysfs-firmware-sfi  |  15 -
> >>  Documentation/ABI/testing/sysfs-platform-kim  |   2 +-
> >>  MAINTAINERS                                   |   7 -
> >>  arch/x86/Kconfig                              |   7 +-
> >>  arch/x86/include/asm/intel-mid.h              |  65 +--
> >>  arch/x86/include/asm/intel_scu_ipc.h          |   2 -
> >>  arch/x86/include/asm/intel_scu_ipc_legacy.h   |  74 ---
> >>  arch/x86/include/asm/platform_sst_audio.h     |   2 -
> >>  arch/x86/kernel/apic/io_apic.c                |   4 +-
> >>  arch/x86/kernel/setup.c                       |   2 -
> >>  arch/x86/pci/intel_mid_pci.c                  |  18 +-
> >>  arch/x86/pci/mmconfig-shared.c                |   6 +-
> >>  arch/x86/platform/Makefile                    |   1 -
> >>  arch/x86/platform/intel-mid/Makefile          |   5 -
> >>  .../platform/intel-mid/device_libs/Makefile   |  23 -
> >>  .../intel-mid/device_libs/platform_bcm43xx.c  | 101 ----
> >>  .../intel-mid/device_libs/platform_bma023.c   |  16 -
> >>  .../intel-mid/device_libs/platform_bt.c       | 101 ----
> >>  .../intel-mid/device_libs/platform_emc1403.c  |  39 --
> >>  .../device_libs/platform_gpio_keys.c          |  81 ---
> >>  .../intel-mid/device_libs/platform_lis331.c   |  37 --
> >>  .../intel-mid/device_libs/platform_max7315.c  |  77 ---
> >>  .../intel-mid/device_libs/platform_mpu3050.c  |  32 --
> >>  .../device_libs/platform_mrfld_pinctrl.c      |  39 --
> >>  .../device_libs/platform_mrfld_rtc.c          |  44 --
> >>  .../intel-mid/device_libs/platform_mrfld_sd.c |  43 --
> >>  .../device_libs/platform_mrfld_spidev.c       |  50 --
> >>  .../device_libs/platform_pcal9555a.c          |  95 ----
> >>  .../intel-mid/device_libs/platform_tc35876x.c |  42 --
> >>  .../intel-mid/device_libs/platform_tca6416.c  |  53 --
> >>  arch/x86/platform/intel-mid/intel-mid.c       |  27 +-
> >>  arch/x86/platform/intel-mid/sfi.c             | 419 --------------
> >>  arch/x86/platform/sfi/Makefile                |   2 -
> >>  arch/x86/platform/sfi/sfi.c                   | 100 ----
> >>  drivers/Makefile                              |   2 +-
> >>  drivers/cpufreq/Kconfig.x86                   |  10 -
> >>  drivers/cpufreq/Makefile                      |   1 -
> >>  drivers/cpufreq/sfi-cpufreq.c                 | 127 -----
> >>  drivers/platform/x86/intel_scu_pcidrv.c       |  22 +-
> >>  drivers/sfi/Kconfig                           |  18 -
> >>  drivers/sfi/Makefile                          |   4 -
> >>  drivers/sfi/sfi_acpi.c                        | 214 -------
> >>  drivers/sfi/sfi_core.c                        | 522 ------------------
> >>  drivers/sfi/sfi_core.h                        |  81 ---
> >>  .../atomisp/include/linux/atomisp_platform.h  |   1 -
> >>  include/linux/sfi.h                           | 210 -------
> >>  include/linux/sfi_acpi.h                      |  93 ----
> >>  init/main.c                                   |   2 -
> >>  48 files changed, 37 insertions(+), 2901 deletions(-)
> >>  delete mode 100644 Documentation/ABI/testing/sysfs-firmware-sfi
> >>  delete mode 100644 arch/x86/include/asm/intel_scu_ipc_legacy.h
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/Makefile
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_bcm43xx.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_bma023.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_bt.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_emc1403.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_gpio_keys.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_lis331.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_max7315.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mpu3050.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mrfld_pinctrl.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mrfld_rtc.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mrfld_sd.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mrfld_spidev.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_pcal9555a.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_tca6416.c
> >>  delete mode 100644 arch/x86/platform/intel-mid/sfi.c
> >>  delete mode 100644 arch/x86/platform/sfi/Makefile
> >>  delete mode 100644 arch/x86/platform/sfi/sfi.c
> >>  delete mode 100644 drivers/cpufreq/sfi-cpufreq.c
> >>  delete mode 100644 drivers/sfi/Kconfig
> >>  delete mode 100644 drivers/sfi/Makefile
> >>  delete mode 100644 drivers/sfi/sfi_acpi.c
> >>  delete mode 100644 drivers/sfi/sfi_core.c
> >>  delete mode 100644 drivers/sfi/sfi_core.h
> >>  delete mode 100644 include/linux/sfi.h
> >>  delete mode 100644 include/linux/sfi_acpi.h
> >>
> >> --
> >
> > All of this looks good to me, so I'm going to queue it up for 5.12
> > unless there are objections against doing that.
>
> That is fine by me (for the drivers/platform/x86 bits) :
>
> Acked-by: Hans de Goede <hdegoede@redhat.com>

Thanks!

Applied as 5.12 material now.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
