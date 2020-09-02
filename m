Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E68D25B62B
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 23:53:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E21E52E0EB;
	Wed,  2 Sep 2020 21:53:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ptqNFwJ42nc4; Wed,  2 Sep 2020 21:53:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1E1A32D946;
	Wed,  2 Sep 2020 21:53:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DBB491BF47E
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 21:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CCAB78731E
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 21:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O76uIhg98CJC for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 21:53:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com
 [209.85.219.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E2D658731B
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 21:53:18 +0000 (UTC)
Received: by mail-qv1-f65.google.com with SMTP id o2so366725qvk.6
 for <devel@driverdev.osuosl.org>; Wed, 02 Sep 2020 14:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=2yNZCnT5iRVin3s0p3zyuhcIoRw+b2/e+yps+6Yo9hM=;
 b=l6omLMy/a3UN/XDSNu8t9yHpiarRYJPs+iYjnRxE24RI7AHsTsdMJiHoZwfWyO2PFW
 fJmBnUBfU5Hn6ENZUT5qlgWwV5+a7LhZrcMpM0gagBGW/a3NDwZiAEjySKkc4F9Wln5I
 tZxJ5CEMhl/Qjf7vsRS9WLj7uEPGIlMx3N86JDvdQpG68AvUVMXhPwEm1AEJfdevUEPn
 qMJrXfWy5nmPkQlvdNThdOuxwyE18MdeIRH2mBj2dolKYiDlkY8Z0BCJSmW+yEqbt8Z5
 PRT9aJY6RvWOEEa3b6L6NHm44ErARb6rzdxdOSgTmmW98YTQaLFaWdgAPwcFFr8ESUPC
 J1aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=2yNZCnT5iRVin3s0p3zyuhcIoRw+b2/e+yps+6Yo9hM=;
 b=Z3Bvu5bkp1eDni5qDulExc90L5vKzWOHLGPjIyeN+Wd+Xto+3HeRGlLPHxZn3IN4WS
 7CqkW6cCVOkgeW8fQD2HpCyi3w5H8k+uYiP3XpUwkTxcadPjESCIEzWsL4YwLN4V8KYd
 fK3VtYaC1YHEofngeTQTJOpkqdY82K1Ngz6UQF926IfxvjUcy9R0ogCQiNBIDV5nhaJu
 QZCFttHTj3hVPjXhH9V39TLvhwttFLNrNyXIXPt/46g+san1cd3fqud5PnYsW35p6lnA
 go8yQT5jZzFCAsG/L4qjtYInodIzbBz4RX8do4LZBV+d+1RQ0zJVDrDo2WOYxZDLMCS3
 3fUQ==
X-Gm-Message-State: AOAM531uUPsu1djxmce2lOZZ93fMbyNuQZO2ZuSYtrzUx5Y7fPjNIo4G
 gImVdcjgTEgdsSRykZ9QNjA=
X-Google-Smtp-Source: ABdhPJzEdc1Jr/UXGYNOtaf9pHNMxZGwLyfQIHswuYk6g7cR5qfkuK5KZiWpXNvEVheTPE5SdC9nFA==
X-Received: by 2002:a0c:e906:: with SMTP id a6mr8615293qvo.235.1599083597527; 
 Wed, 02 Sep 2020 14:53:17 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
 by smtp.gmail.com with ESMTPSA id b43sm548114qtk.84.2020.09.02.14.53.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Sep 2020 14:53:16 -0700 (PDT)
Date: Wed, 2 Sep 2020 14:53:14 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH v11 07/11] device-mapping: Introduce DMA range map,
 supplanting dma_pfn_offset
Message-ID: <20200902215314.GA881878@ubuntu-n2-xlarge-x86>
References: <20200824193036.6033-1-james.quinlan@broadcom.com>
 <20200824193036.6033-8-james.quinlan@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200824193036.6033-8-james.quinlan@broadcom.com>
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
Cc: Rich Felker <dalias@libc.org>,
 "open list:SUPERH" <linux-sh@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-pci@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 "open list:REMOTE PROCESSOR REMOTEPROC SUBSYSTEM"
 <linux-remoteproc@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Julien Grall <julien.grall@arm.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Frank Rowand <frowand.list@gmail.com>,
 "maintainer:X86 ARCHITECTURE 32-BIT AND 64-BIT" <x86@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "open list:ACPI FOR ARM64 ACPI/arm64" <linux-acpi@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ingo Molnar <mingo@redhat.com>,
 bcm-kernel-feedback-list@broadcom.com, Alan Stern <stern@rowland.harvard.edu>,
 Len Brown <lenb@kernel.org>, Ohad Ben-Cohen <ohad@wizery.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE"
 <devicetree@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Borislav Petkov <bp@alien8.de>,
 Yong Deng <yong.deng@magewell.com>, Santosh Shilimkar <ssantosh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Felipe Balbi <balbi@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:USB SUBSYSTEM" <linux-usb@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 "open list:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Stefano Stabellini <sstabellini@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "open list:ALLWINNER A10 CSI DRIVER" <linux-media@vger.kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Aug 24, 2020 at 03:30:20PM -0400, Jim Quinlan wrote:
> The new field 'dma_range_map' in struct device is used to facilitate the
> use of single or multiple offsets between mapping regions of cpu addrs and
> dma addrs.  It subsumes the role of "dev->dma_pfn_offset" which was only
> capable of holding a single uniform offset and had no region bounds
> checking.
> 
> The function of_dma_get_range() has been modified so that it takes a single
> argument -- the device node -- and returns a map, NULL, or an error code.
> The map is an array that holds the information regarding the DMA regions.
> Each range entry contains the address offset, the cpu_start address, the
> dma_start address, and the size of the region.
> 
> of_dma_configure() is the typical manner to set range offsets but there are
> a number of ad hoc assignments to "dev->dma_pfn_offset" in the kernel
> driver code.  These cases now invoke the function
> dma_attach_offset_range(dev, cpu_addr, dma_addr, size).
> 
> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
> ---
>  arch/arm/include/asm/dma-mapping.h            | 10 +--
>  arch/arm/mach-keystone/keystone.c             | 17 +++--
>  arch/sh/drivers/pci/pcie-sh7786.c             |  9 +--
>  arch/x86/pci/sta2x11-fixup.c                  |  7 +-
>  drivers/acpi/arm64/iort.c                     |  5 +-
>  drivers/base/core.c                           |  2 +
>  drivers/gpu/drm/sun4i/sun4i_backend.c         |  5 +-
>  drivers/iommu/io-pgtable-arm.c                |  2 +-
>  .../platform/sunxi/sun4i-csi/sun4i_csi.c      |  5 +-
>  .../platform/sunxi/sun6i-csi/sun6i_csi.c      |  4 +-
>  drivers/of/address.c                          | 72 +++++++++----------
>  drivers/of/device.c                           | 43 ++++++-----
>  drivers/of/of_private.h                       | 10 +--
>  drivers/of/unittest.c                         | 34 ++++++---
>  drivers/remoteproc/remoteproc_core.c          |  8 ++-
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |  7 +-
>  drivers/usb/core/message.c                    |  9 ++-
>  drivers/usb/core/usb.c                        |  7 +-
>  include/linux/device.h                        |  4 +-
>  include/linux/dma-direct.h                    |  8 +--
>  include/linux/dma-mapping.h                   | 36 ++++++++++
>  kernel/dma/coherent.c                         | 10 +--
>  kernel/dma/mapping.c                          | 66 +++++++++++++++++
>  23 files changed, 265 insertions(+), 115 deletions(-)

Apologies if this has already been reported or is known but this commit
is now in next-20200902 and it causes my Raspberry Pi 4 to no longer
make it to userspace, instead spewing mmc errors:

That commit causes my Raspberry Pi 4 to no longer make it to userspace,
instead spewing mmc errors:

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd083]
[    0.000000] Linux version 5.9.0-rc3-00004-geef520b232c6-dirty (nathan@ubuntu-n2-xlarge-x86) (ClangBuiltLinux clang version 12.0.0 (https://github.com/llvm/llvm-project.git b21ddded8f04fee925bbf9e6458347104b5b99eb), LLD 12.0.0 (https://github.com/llvm/llvm-project.git b21ddded8f04fee925bbf9e6458347104b5b99eb)) #1 SMP PREEMPT Wed Sep 2 13:48:49 MST 2020
[    0.000000] Machine model: Raspberry Pi 4 Model B Rev 1.2
...
[    1.459752] raspberrypi-firmware soc:firmware: Attached to firmware from 2020-08-24T18:50:56
[    1.500007] dwc2 fe980000.usb: supply vusb_d not found, using dummy regulator
[    1.507454] dwc2 fe980000.usb: supply vusb_a not found, using dummy regulator
[    1.615547] dwc2 fe980000.usb: EPs: 8, dedicated fifos, 4080 entries in SPRAM
[    1.627537] sdhci-iproc fe300000.sdhci: allocated mmc-pwrseq
[    1.665497] mmc0: SDHCI controller on fe300000.sdhci [fe300000.sdhci] using PIO
[    1.690601] mmc0: queuing unknown CIS tuple 0x80 (2 bytes)
[    1.697892] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    1.705173] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    1.713788] mmc0: queuing unknown CIS tuple 0x80 (7 bytes)
[    1.721228] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    1.732062] mmc1: SDHCI controller on fe340000.emmc2 [fe340000.emmc2] using ADMA
[    1.741828] ALSA device list:
[    1.744885]   No soundcards found.
[    1.748540] Waiting for root device PARTUUID=45a8dd8a-02...
[    1.788865] random: fast init done
[    1.793489] mmc1: unrecognised SCR structure version 4
[    1.798814] mmc1: error -22 whilst initialising SD card
[    1.813969] mmc0: new high speed SDIO card at address 0001
[    1.883178] mmc1: unrecognised SCR structure version 2
[    1.888423] mmc1: error -22 whilst initialising SD card
[    1.964069] mmc1: unrecognised SCR structure version 4
[    1.969314] mmc1: error -22 whilst initialising SD card
[    2.061225] mmc1: unrecognised SCR structure version 4
[    2.066470] mmc1: error -22 whilst initialising SD card
[    3.160476] mmc1: unrecognised SCR structure version 4
[    3.165718] mmc1: error -22 whilst initialising SD card

This is what it looks like before that commit:

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd083]
[    0.000000] Linux version 5.9.0-rc3-00003-g2281f797f552-dirty (nathan@ubuntu-n2-xlarge-x86) (ClangBuiltLinux clang version 12.0.0 (https://github.com/llvm/llvm-project.git b21ddded8f04fee925bbf9e6458347104b5b99eb), LLD 12.0.0 (https://github.com/llvm/llvm-project.git b21ddded8f04fee925bbf9e6458347104b5b99eb)) #1 SMP PREEMPT Wed Sep 2 14:10:30 MST 2020
[    0.000000] Machine model: Raspberry Pi 4 Model B Rev 1.2
...
[    1.459871] raspberrypi-firmware soc:firmware: Attached to firmware from 2020-08-24T18:50:56
[    1.500017] dwc2 fe980000.usb: supply vusb_d not found, using dummy regulator
[    1.507461] dwc2 fe980000.usb: supply vusb_a not found, using dummy regulator
[    1.615565] dwc2 fe980000.usb: EPs: 8, dedicated fifos, 4080 entries in SPRAM
[    1.627571] sdhci-iproc fe300000.sdhci: allocated mmc-pwrseq
[    1.665549] mmc0: SDHCI controller on fe300000.sdhci [fe300000.sdhci] using PIO
[    1.690225] mmc0: queuing unknown CIS tuple 0x80 (2 bytes)
[    1.697516] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    1.704800] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    1.713412] mmc0: queuing unknown CIS tuple 0x80 (7 bytes)
[    1.720853] mmc0: queuing unknown CIS tuple 0x80 (3 bytes)
[    1.731686] mmc1: SDHCI controller on fe340000.emmc2 [fe340000.emmc2] using ADMA
[    1.741484] ALSA device list:
[    1.744517]   No soundcards found.
[    1.748194] Waiting for root device PARTUUID=45a8dd8a-02...
[    1.788643] random: fast init done
[    1.805009] mmc0: new high speed SDIO card at address 0001
[    1.852305] mmc1: new ultra high speed DDR50 SDXC card at address aaaa
[    1.859647] mmcblk1: mmc1:aaaa SK64G 59.5 GiB
[    1.866190]  mmcblk1: p1 p2
[    1.892559] EXT4-fs (mmcblk1p2): mounted filesystem with ordered data mode. Opts: (null)

Bisect log in case it is relevant:

# bad: [4442749a203151a319a5bb8d0b983b84253a6931] Add linux-next specific files for 20200902
# good: [b765a32a2e9170702467747e290614be072c4f76] Merge tag 'scsi-fixes' of git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi
git bisect start '4442749a203151a319a5bb8d0b983b84253a6931' 'b765a32a2e9170702467747e290614be072c4f76'
# bad: [501c4123d9ecf8e38425fa2dae591d87f18a33f9] Merge remote-tracking branch 'wireless-drivers-next/master' into master
git bisect bad 501c4123d9ecf8e38425fa2dae591d87f18a33f9
# bad: [3722ace45f7d9a37631b6f5b9c591ea1e118a077] Merge remote-tracking branch 'pstore/for-next/pstore' into master
git bisect bad 3722ace45f7d9a37631b6f5b9c591ea1e118a077
# bad: [bcd6576526884cbe2f0798f9196eb2fd96fadb2b] Merge remote-tracking branch 'imx-mxs/for-next' into master
git bisect bad bcd6576526884cbe2f0798f9196eb2fd96fadb2b
# good: [f51293edaaf354f6de8836390cd4bd0407380c8d] Merge remote-tracking branch 'staging.current/staging-linus' into master
git bisect good f51293edaaf354f6de8836390cd4bd0407380c8d
# bad: [2b7f5289d46652f343f51e1853326876114f8647] Merge remote-tracking branch 'arm-soc/for-next' into master
git bisect bad 2b7f5289d46652f343f51e1853326876114f8647
# good: [137aded9aad7803fa48e9a9538b359012715e171] Merge remote-tracking branch 'pidfd-fixes/fixes' into master
git bisect good 137aded9aad7803fa48e9a9538b359012715e171
# good: [f5cb1ada6f986019d24037d9329c99445fcdd50a] Merge remote-tracking branch 'kbuild/for-next' into master
git bisect good f5cb1ada6f986019d24037d9329c99445fcdd50a
# good: [2694ca73fa41491762825ae7bba9b14ab0762415] ARM: Document merges
git bisect good 2694ca73fa41491762825ae7bba9b14ab0762415
# bad: [192ec9acc561411c6ec5d35b3ad225d40c8c39bd] Merge remote-tracking branch 'dma-mapping/for-next' into master
git bisect bad 192ec9acc561411c6ec5d35b3ad225d40c8c39bd
# bad: [eef520b232c60e74eb8b33a5a7863ad8f2b4a5c7] dma-mapping: introduce DMA range map, supplanting dma_pfn_offset
git bisect bad eef520b232c60e74eb8b33a5a7863ad8f2b4a5c7
# good: [c6303ab9b91e7ca20a49ff494338309259ed7c65] arm64: mm: reserve per-numa CMA to localize coherent dma buffers
git bisect good c6303ab9b91e7ca20a49ff494338309259ed7c65
# good: [2281f797f5524abb8fff66bf8540b4f4687332a2] mm: cma: use CMA_MAX_NAME to define the length of cma name array
git bisect good 2281f797f5524abb8fff66bf8540b4f4687332a2
# first bad commit: [eef520b232c60e74eb8b33a5a7863ad8f2b4a5c7] dma-mapping: introduce DMA range map, supplanting dma_pfn_offset

I am happy to provide further information for debugging if necessary.

Cheers,
Nathan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
