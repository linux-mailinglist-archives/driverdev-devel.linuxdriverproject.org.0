Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C241E1C17
	for <lists+driverdev-devel@lfdr.de>; Tue, 26 May 2020 09:21:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0711885A0E;
	Tue, 26 May 2020 07:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QNjbMCvAbOBY; Tue, 26 May 2020 07:21:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 62B6285C47;
	Tue, 26 May 2020 07:21:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 88F4C1BF263
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 07:21:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 85AC6859FC
 for <devel@linuxdriverproject.org>; Tue, 26 May 2020 07:21:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RtOU8Nb1lqwk for <devel@linuxdriverproject.org>;
 Tue, 26 May 2020 07:21:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 26128858DA
 for <devel@driverdev.osuosl.org>; Tue, 26 May 2020 07:21:43 +0000 (UTC)
IronPort-SDR: ihrM9OUCThnM8t1ORFelzOxt/Foi0OQ5l7w7RgzO53uP46MduBlGyn1FmaHxD9MdS4F3QvhCS3
 hX4lFnC/Vk9Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 00:21:42 -0700
IronPort-SDR: OY1s6AkT+tZ3xL101FRhnTBYb+bzSj5wmnHNQMxnj8UieBSdd2h5PXtwiafDORvcL+WhYEFRYD
 8jqJV3EAd4Eg==
X-IronPort-AV: E=Sophos;i="5.73,436,1583222400"; d="scan'208";a="310181191"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 00:21:41 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id B71C2208B5; Tue, 26 May 2020 10:21:09 +0300 (EEST)
Date: Tue, 26 May 2020 10:21:09 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 06/11] media: atomisp: update TODO list
Message-ID: <20200526072109.GI7618@paasikivi.fi.intel.com>
References: <cover.1590389536.git.mchehab+huawei@kernel.org>
 <2bc2698cfd5801af63fcb16e5bf599222c4c3c2a.1590389536.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2bc2698cfd5801af63fcb16e5bf599222c4c3c2a.1590389536.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Mauro,

Thanks for the patchset.

On Mon, May 25, 2020 at 08:56:05AM +0200, Mauro Carvalho Chehab wrote:
> Let's reflect the current status at the TODO list, as other
> developers can help addressing issues over there.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/atomisp/TODO | 188 ++++++++++++++++++++++-------
>  1 file changed, 142 insertions(+), 46 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/TODO b/drivers/staging/media/atomisp/TODO
> index 52683a704223..f297840eea90 100644
> --- a/drivers/staging/media/atomisp/TODO
> +++ b/drivers/staging/media/atomisp/TODO
> @@ -1,71 +1,165 @@
> -1. A single AtomISP driver needs to be implemented to support both
> +NOTE:
> +=====
> +
> +While the driver probes the hardware and reports itself as a
> +V4L2 driver, there are still some issues preventing it to
> +stream (at least it doesn't with the standard V4L2 applications.
> +Didn't test yet with some custom-made app for this driver).
> +Solving the related bugs and issues preventing it to work is
> +needed (items 6 and 7 from the list below).
> +
> +TODO
> +====
> +
> +1. The atomisp doesn't rely at the usual i2c stuff to discover the
> +   sensors. Instead, it calls a function from atomisp_gmin_platform.c.
> +   There are some hacks added there for it to wait for sensors to be
> +   probed (with a timeout of 2 seconds or so).
> +   This should be converted to the usual way, using V4L2 async subdev
> +   framework to wait for cameras to be probed;
> +
> +2. Support for newer board-specific data (like Asus T101HA support) uses a
> +   DMI match table to retrieve sensor's data, using hard-coded values.
> +   It sounds feasible to retrieve those data directly from ACPI via _DSM
> +   tables (like this one, associated with CAM1 at the above mentioned
> +   hardware):
> +
> +            Name (C1CD, Buffer (0x0220){})
> +            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
> +            {
> +                If ((Arg0 == ToUUID ("dc2f6c4f-045b-4f1d-97b9-882a6860a4be")))
> +                {
> +                    Local0 = Package (0x12)
> +                        {
> +                            "CamId",
> +                            "ov2680",
> +                            "CamType",
> +                            "1",
> +                            "CsiPort",
> +                            "0",
> +                            "CsiLanes",
> +                            "1",
> +                            "CsiFmt",
> +                            "15",
> +                            "CsiBayer",
> +                            "0",
> +                            "CamClk",
> +                            "1",
> +                            "Regulator1p8v",
> +                            "0",
> +                            "Regulator2p8v",
> +                            "0"
> +                        }
> +                    Return (Local0)
> +                }
> +
> +   The code there at atomisp_gmin_platform has an EFI parser, but it
> +   assumes that the information would be stored on a different way.
> +
> +   As the Kernel has support for reading data from _DSM, via
> +   acpi_evaluate_dsm(), it sounds doable to use such infra and remove the
> +   DMI match, at least for some devices. This will likely allow covering
> +   more devices that could also be using the same EFI UUID.
> +
> +3. Switch the driver to use pm_runtime stuff. Right now, it probes the
> +   existing PMIC code and sensors call it directly.
> +
> +4. There's a problem at the sensor drivers: when trying to set a video
> +   format, the atomisp main driver calls the sensor drivers with the
> +   sensor turned off. This causes them to fail.
> +
> +   The only exception is the atomisp-ov2880, which has a hack inside it
> +   to turn it on when VIDIOC_S_FMT is called.
> +
> +   The right fix seems to power on the sensor when a video device is
> +   opened (or at the first VIDIOC_ ioctl - except for VIDIOC_QUERYCAP),
> +   powering it down at close() syscall.
> +
> +   Such kind of control would need to be done inside the atomisp driver,
> +   not at the sensors code.
> +
> +5. There are several issues related to memory management, causing
> +   crashes. The atomisp splits the memory management on three separate
> +   regions:
> +
> +	- dynamic pool;
> +	- reserved pool;
> +	- generic pool
> +
> +   The code implementing it is at:
> +
> +	drivers/staging/media/atomisp/pci/hmm/
> +
> +   It also has a separate code for managing DMA buffers at:
> +
> +	drivers/staging/media/atomisp/pci/mmu/
> +
> +   The code there is really dirty, ugly and probably wrong. I fixed
> +   one bug there already, but the best would be to just trash it and use
> +   something else. Maybe the code from the newer intel driver could
> +   serve as a model:
> +
> +	drivers/staging/media/ipu3/ipu3-mmu.c
> +
> +   But converting it to use something like that is painful and may
> +   cause some breakages.
> +
> +6. There is some issues at the frame receive logic, causing the
> +   DQBUF ioctls to fail.
> +
> +7. A single AtomISP driver needs to be implemented to support both
>     Baytrail (BYT and Cherrytail (CHT) platforms at the same time.

s/BYT\K/)/

>     The current driver is a mechanical and hand combined merge of the
>     two using several runtime macros, plus some ifdef ISP2401 to select the
>     CHT version. Yet, there are some ISP-specific headers that change the
>     driver's behavior during compile time.
>  
> -2. The file structure needs to get tidied up to resemble a normal Linux
> +8. The file structure needs to get tidied up to resemble a normal Linux
>     driver.
>  
> -3. Lots of the midlayer glue. unused code and abstraction needs removing.
> +9. Lots of the midlayer glue. unused code and abstraction needs removing.
>  
> -3. The sensor drivers read MIPI settings from EFI variables or default to the
> -   settings hard-coded in the platform data file for different platforms.
> -   It should be possible to improve it, by adding support for _DSM tables.
> +10. The AtomISP driver includes some special IOCTLS (ATOMISP_IOC_XXXX_XXXX)
> +    and controls that require some cleanup. Some of those code may have
> +    been removed during the cleanups. They could be needed in order to
> +    properly support 3A algorithms

I'd add: "The IOCTL interface needs to more documentation." Actually I
believe the better way to implement that would be to use a similar
parameter buffer IPU3 IMGU driver uses.

>  
> -4. The sensor drivers use PMIC and the regulator framework API. In the ideal
> -   world it would be using ACPI but that's not how the existing devices work.
> +11. The ISP code has some dependencies of the exact FW version.
> +    The version defined in pci/sh_css_firmware.c:
>  
> -5. The AtomISP driver includes some special IOCTLS (ATOMISP_IOC_XXXX_XXXX)
> -   and controls that require some cleanup.
> +    BYT (isp2400): "irci_stable_candrpv_0415_20150521_0458"
>  
> -6. Correct Coding Style. Please don't send coding style patches for this
> -   driver until the other work is done.
> +    CHT (isp2401): "irci_ecr - master_20150911_0724"
>  
> -7. The ISP code has some dependencies of the exact FW version.
> -   The version defined in pci/sh_css_firmware.c:
> -   BYT:
> -	static const char *isp2400_release_version = STR(irci_stable_candrpv_0415_20150521_0458);
> +    Those versions don't seem to be available anymore. On the tests we've
> +    done so far, this version also seems to work for CHT:
>  
> -   CHT:
> -	static const char *isp2401_release_version = STR(irci_ecr - master_20150911_0724);
> +		"irci_stable_candrpv_0415_20150521_0458"
>  
> -   Those versions don't seem to be available anymore. On the tests we've
> -   done so far, this version also seems to work for isp2401:
> +    Which can be obtainable from Yocto Atom ISP respository.
>  
> -		irci_stable_candrpv_0415_20150521_0458
> +    but this was not thoroughly tested.
>  
> -   At some point we may need to round up a few driver versions and see if
> -   there are any specific things that can be done to fold in support for
> -   multiple firmware versions.
> +    At some point we may need to round up a few driver versions and see if
> +    there are any specific things that can be done to fold in support for
> +    multiple firmware versions.

Well, agreed in principle, but this could be difficult. 

>  
> -8. Switch to V4L2 async API to set up sensor, lens and flash devices.
> -   Control those devices using V4L2 sub-device API without custom
> -   extensions.
> +12. Switch to standard V4L2 sub-device API for sensor and lens. In
> +    particular, the user space API needs to support V4L2 controls as
> +    defined in the V4L2 spec and references to atomisp must be removed from
> +    these drivers.
>  
> -9. Switch to standard V4L2 sub-device API for sensor and lens. In
> -   particular, the user space API needs to support V4L2 controls as
> -   defined in the V4L2 spec and references to atomisp must be removed from
> -   these drivers.
> -
> -10. Use LED flash API for flash LED drivers such as LM3554 (which already
> +13. Use LED flash API for flash LED drivers such as LM3554 (which already
>      has a LED class driver).
>  
> -11. Switch from videobuf1 to videobuf2. Videobuf1 is being removed!
> +14. Switch from videobuf1 to videobuf2. Videobuf1 is being removed!
>  
> -12. There are some memory management code that seems to be
> -    forked from Kernel 3.10 inside hmm/ directory. Get rid of it,
> -    making the driver to use a more standard memory management module.
> +15. Correct Coding Style. Please refrain sending coding style patches
> +    for this driver until the other work is done, as there will be a lot
> +    of code churn until this driver becomes functional again.
>  
> -13. While the driver probes the hardware and reports itself as a
> -    V4L2 driver, there are still some issues preventing it to
> -    stream (at least it doesn't with the standard V4L2 applications.
> -    Didn't test yet with some custom-made app for this driver).
> -    Solving the related bugs and issues preventing it to work is
> -    needed.
> -
> -Limitations:
> +Limitations
> +===========
>  
>  1. To test the patches, you also need the ISP firmware
>  
> @@ -84,6 +178,8 @@ Limitations:
>     It will not detect those devices enumerated via ACPI as a field of the
>     i915 GPU driver.
>  
> +   There are some patches adding i915 GPU support floating at the Yocto's
> +   Aero repository (so far, untested upstream).
> +
>  4. The driver supports only v2 of the IPU/Camera. It will not work with the
>     versions of the hardware in other SoCs.
> -
> -- 
> 2.26.2
> 

-- 
Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
