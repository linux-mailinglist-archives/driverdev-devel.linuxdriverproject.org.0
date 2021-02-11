Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFAC318F0D
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 16:45:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2359D86EEA;
	Thu, 11 Feb 2021 15:45:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9VBnNvjrOXDS; Thu, 11 Feb 2021 15:45:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5201386ED1;
	Thu, 11 Feb 2021 15:45:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A252F1BF2A2
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 15:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9DFA086EC4
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 15:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aryI3DrBSI0I for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 15:45:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7EEC386EC2
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 15:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613058325;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=39EV7/G2PzTJehWm5IY3xEu3xVTJ2cfFkuLTjx/NCso=;
 b=bSLHCLzgNFH/KrOxVVwhiZbp2P4al9MaNzHomtV1MGGHN4lsAOyczexPN+LLEj/Z+wka+l
 ZOi9Uo1d9J/PSNheFZGA3Nvo7oJNM0H9pw+nSG/M7S6w/828UVzfXubZ2eqFaA8a0gCKj1
 D5F7dIwKIYZIwpEiLki5so6u6IknktA=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-594-jLkTt89EOYKbZtxLyN_lXg-1; Thu, 11 Feb 2021 10:45:23 -0500
X-MC-Unique: jLkTt89EOYKbZtxLyN_lXg-1
Received: by mail-ed1-f71.google.com with SMTP id ay16so4770823edb.2
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 07:45:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=39EV7/G2PzTJehWm5IY3xEu3xVTJ2cfFkuLTjx/NCso=;
 b=PeTl5ZP10WZ2MXnnyiLIOgslc7i08Et3a22fna2YJJGQkzTdDUQTiZWXFBHMS0oM0G
 eJkhtD+2deSxJHT+0+5C9pwUnWrNXcNEYa/NZptrQXRD21OQ+2AoWplcULTnYxXS0f4B
 p3cKZ+8BOkevrMxc51S+e493JCktoQx9NX9FroJnm3qKoIYbxxQU4LUnhCUiNLRcW8F7
 TJ6U6ZxvJQ2lG2Wfkxk7S6koCOt+27IXQGUgdwzvSRvCPhbvTo91cvzDfQgq4xZrI3jT
 +f0nVaRnJjHS8AAyEjg3hj0x4YH3nPdSaU8vOF1pql+gURcMj1UESJ0KLetkPvEgdiC/
 GzOQ==
X-Gm-Message-State: AOAM5333AdXaTlngqmyT3VsgRKxa5lqfWfkSOSSkgIUXFjoEgAC8QnrN
 dhv/UeksnVDEyzoCVD6YL7cdwDNvFxyqoZp0Q02Q+3l5sswkdi67aFgSkCgnrxPiV7+BMovxEBF
 0CumqslDTLYP0lIsZjEeceQ==
X-Received: by 2002:a17:906:c0d7:: with SMTP id
 bn23mr9024991ejb.94.1613058320145; 
 Thu, 11 Feb 2021 07:45:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyAqoP5eDFW4xcTb4dIWPHhgt73k8gUL/gfI/YINR2uueo6qHqMl/9WQ2OnMwUijI+is8nBSg==
X-Received: by 2002:a17:906:c0d7:: with SMTP id
 bn23mr9024980ejb.94.1613058319935; 
 Thu, 11 Feb 2021 07:45:19 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id bk2sm4539280ejb.98.2021.02.11.07.45.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Feb 2021 07:45:19 -0800 (PST)
Subject: Re: [PATCH v1 0/9] x86/platform: Remove SFI framework and users
To: "Rafael J. Wysocki" <rafael@kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20210211134008.38282-1-andriy.shevchenko@linux.intel.com>
 <CAJZ5v0gzd0Xwd006P3PUutKcVRqLNxmREBB-QW85BRMBArbBVw@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <bf10026f-13bb-c1c6-2787-d8c9520f8401@redhat.com>
Date: Thu, 11 Feb 2021 16:45:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0gzd0Xwd006P3PUutKcVRqLNxmREBB-QW85BRMBArbBVw@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
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

Hi,

On 2/11/21 4:24 PM, Rafael J. Wysocki wrote:
> On Thu, Feb 11, 2021 at 2:50 PM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
>>
>> This is last part of Intel MID (SFI based) removal. We have no more users of it
>> in the kernel and since SFI has been marked Obsolete for a few years already,
>> Remove all the stuff altogether.
>>
>> Note, the more recent platforms (Intel Merrifield and Moorefield) still work as
>> long as they provide correct ACPI tables.
>>
>> The series requires two prerequisite branches to be pulled first, i.e.
>> - one form Rafael's PM tree (currently bleeding-edge)
>> - one form TIP tree (x86/platform), actually only one patch is needed from it
>>
>> Due to above it's convenient to proceed all of these via Rafael's PM tree,
>>
>> Note, atomisp change is tagged by Sakari on behalf of media tree maintainers.
>>
>> Andy Shevchenko (9):
>>   media: atomisp: Remove unused header
>>   cpufreq: sfi-cpufreq: Remove driver for deprecated firmware
>>   sfi: Remove framework for deprecated firmware
>>   x86/PCI: Get rid of custom x86 model comparison
>>   x86/PCI: Describe @reg for type1_access_ok()
>>   x86/platform/intel-mid: Get rid of intel_scu_ipc_legacy.h
>>   x86/platform/intel-mid: Drop unused __intel_mid_cpu_chip and Co.
>>   x86/platform/intel-mid: Remove unused header inclusion in intel-mid.h
>>   x86/platform/intel-mid: Update Copyright year and drop file names
>>
>>  Documentation/ABI/testing/sysfs-firmware-sfi  |  15 -
>>  Documentation/ABI/testing/sysfs-platform-kim  |   2 +-
>>  MAINTAINERS                                   |   7 -
>>  arch/x86/Kconfig                              |   7 +-
>>  arch/x86/include/asm/intel-mid.h              |  65 +--
>>  arch/x86/include/asm/intel_scu_ipc.h          |   2 -
>>  arch/x86/include/asm/intel_scu_ipc_legacy.h   |  74 ---
>>  arch/x86/include/asm/platform_sst_audio.h     |   2 -
>>  arch/x86/kernel/apic/io_apic.c                |   4 +-
>>  arch/x86/kernel/setup.c                       |   2 -
>>  arch/x86/pci/intel_mid_pci.c                  |  18 +-
>>  arch/x86/pci/mmconfig-shared.c                |   6 +-
>>  arch/x86/platform/Makefile                    |   1 -
>>  arch/x86/platform/intel-mid/Makefile          |   5 -
>>  .../platform/intel-mid/device_libs/Makefile   |  23 -
>>  .../intel-mid/device_libs/platform_bcm43xx.c  | 101 ----
>>  .../intel-mid/device_libs/platform_bma023.c   |  16 -
>>  .../intel-mid/device_libs/platform_bt.c       | 101 ----
>>  .../intel-mid/device_libs/platform_emc1403.c  |  39 --
>>  .../device_libs/platform_gpio_keys.c          |  81 ---
>>  .../intel-mid/device_libs/platform_lis331.c   |  37 --
>>  .../intel-mid/device_libs/platform_max7315.c  |  77 ---
>>  .../intel-mid/device_libs/platform_mpu3050.c  |  32 --
>>  .../device_libs/platform_mrfld_pinctrl.c      |  39 --
>>  .../device_libs/platform_mrfld_rtc.c          |  44 --
>>  .../intel-mid/device_libs/platform_mrfld_sd.c |  43 --
>>  .../device_libs/platform_mrfld_spidev.c       |  50 --
>>  .../device_libs/platform_pcal9555a.c          |  95 ----
>>  .../intel-mid/device_libs/platform_tc35876x.c |  42 --
>>  .../intel-mid/device_libs/platform_tca6416.c  |  53 --
>>  arch/x86/platform/intel-mid/intel-mid.c       |  27 +-
>>  arch/x86/platform/intel-mid/sfi.c             | 419 --------------
>>  arch/x86/platform/sfi/Makefile                |   2 -
>>  arch/x86/platform/sfi/sfi.c                   | 100 ----
>>  drivers/Makefile                              |   2 +-
>>  drivers/cpufreq/Kconfig.x86                   |  10 -
>>  drivers/cpufreq/Makefile                      |   1 -
>>  drivers/cpufreq/sfi-cpufreq.c                 | 127 -----
>>  drivers/platform/x86/intel_scu_pcidrv.c       |  22 +-
>>  drivers/sfi/Kconfig                           |  18 -
>>  drivers/sfi/Makefile                          |   4 -
>>  drivers/sfi/sfi_acpi.c                        | 214 -------
>>  drivers/sfi/sfi_core.c                        | 522 ------------------
>>  drivers/sfi/sfi_core.h                        |  81 ---
>>  .../atomisp/include/linux/atomisp_platform.h  |   1 -
>>  include/linux/sfi.h                           | 210 -------
>>  include/linux/sfi_acpi.h                      |  93 ----
>>  init/main.c                                   |   2 -
>>  48 files changed, 37 insertions(+), 2901 deletions(-)
>>  delete mode 100644 Documentation/ABI/testing/sysfs-firmware-sfi
>>  delete mode 100644 arch/x86/include/asm/intel_scu_ipc_legacy.h
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/Makefile
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_bcm43xx.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_bma023.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_bt.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_emc1403.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_gpio_keys.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_lis331.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_max7315.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mpu3050.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mrfld_pinctrl.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mrfld_rtc.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mrfld_sd.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_mrfld_spidev.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_pcal9555a.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_tc35876x.c
>>  delete mode 100644 arch/x86/platform/intel-mid/device_libs/platform_tca6416.c
>>  delete mode 100644 arch/x86/platform/intel-mid/sfi.c
>>  delete mode 100644 arch/x86/platform/sfi/Makefile
>>  delete mode 100644 arch/x86/platform/sfi/sfi.c
>>  delete mode 100644 drivers/cpufreq/sfi-cpufreq.c
>>  delete mode 100644 drivers/sfi/Kconfig
>>  delete mode 100644 drivers/sfi/Makefile
>>  delete mode 100644 drivers/sfi/sfi_acpi.c
>>  delete mode 100644 drivers/sfi/sfi_core.c
>>  delete mode 100644 drivers/sfi/sfi_core.h
>>  delete mode 100644 include/linux/sfi.h
>>  delete mode 100644 include/linux/sfi_acpi.h
>>
>> --
> 
> All of this looks good to me, so I'm going to queue it up for 5.12
> unless there are objections against doing that.

That is fine by me (for the drivers/platform/x86 bits) :

Acked-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
