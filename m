Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B8AC11F8D44
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jun 2020 07:23:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1609B24368;
	Mon, 15 Jun 2020 05:23:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GAwogcWVEMTS; Mon, 15 Jun 2020 05:23:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 74DA62379C;
	Mon, 15 Jun 2020 05:23:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 48C4E1BF59B
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4504C88F2E
 for <devel@linuxdriverproject.org>; Mon, 15 Jun 2020 05:22:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3QV2ESheBYwo for <devel@linuxdriverproject.org>;
 Mon, 15 Jun 2020 05:22:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A4C9D88DC8
 for <devel@driverdev.osuosl.org>; Mon, 15 Jun 2020 05:22:58 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 65B76206E2;
 Mon, 15 Jun 2020 05:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592198578;
 bh=zPlpTa454L5yrfSi13qbEwagpHFZip8m/fWGQw2Q8Fg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=vbKPNbVp8AtbqUGqqG99y/OymMfT33ItV2e94bH8ZT/H3gH6Z+1pPtqJ0sV5Cmsdz
 fBcrZcTvC9UQqaJLV7yRDO+7W1shXXPxCfWzbx8yeQ5U5HssfZHQa0AE1s6EyIlZdK
 /ajiHZpd8mUh9r36EylkjWaoR0JxhoZUW+Wt9PgY=
Date: Mon, 15 Jun 2020 07:22:54 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [PATCH 2/2] media: atomisp: replace old ---help--- tags by just
 help
Message-ID: <20200615072254.7be610bd@coco.lan>
In-Reply-To: <849016f49273cd245401cc2d7d454d3a12330658.1592198305.git.mchehab+huawei@kernel.org>
References: <d94e7bff13e8a361353360e4cdbf637bfb701bed.1592198305.git.mchehab+huawei@kernel.org>
 <849016f49273cd245401cc2d7d454d3a12330658.1592198305.git.mchehab+huawei@kernel.org>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Mon, 15 Jun 2020 07:18:34 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> There are several places on this file using the deprecated
> ---help--- tag.
> 
> Replaces them.


Just ignore it. A treewide patch already changed it:

	a7f7f6248d97 ("treewide: replace '---help---' in Kconfig files with 'help'")

I'll double-check the spacing things here. If it lasts upstream, I'll
send the changes on a separate patch.

> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/media/atomisp/i2c/Kconfig        | 14 +++++++-------
>  drivers/staging/media/atomisp/i2c/ov5693/Kconfig | 14 +++++++-------
>  2 files changed, 14 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/i2c/Kconfig b/drivers/staging/media/atomisp/i2c/Kconfig
> index 69f325c9a724..038de895ce40 100644
> --- a/drivers/staging/media/atomisp/i2c/Kconfig
> +++ b/drivers/staging/media/atomisp/i2c/Kconfig
> @@ -9,7 +9,7 @@ config VIDEO_ATOMISP_OV2722
>         tristate "OVT ov2722 sensor support"
>  	depends on ACPI
>         depends on I2C && VIDEO_V4L2
> -       ---help---
> +       help
>  	 This is a Video4Linux2 sensor-level driver for the OVT
>  	 OV2722 raw camera.
>  
> @@ -21,7 +21,7 @@ config VIDEO_ATOMISP_GC2235
>         tristate "Galaxy gc2235 sensor support"
>  	depends on ACPI
>         depends on I2C && VIDEO_V4L2
> -       ---help---
> +       help
>  	 This is a Video4Linux2 sensor-level driver for the OVT
>  	 GC2235 raw camera.
>  
> @@ -32,7 +32,7 @@ config VIDEO_ATOMISP_GC2235
>  config VIDEO_ATOMISP_MSRLIST_HELPER
>         tristate "Helper library to load, parse and apply large register lists."
>         depends on I2C
> -       ---help---
> +       help
>  	 This is a helper library to be used from a sensor driver to load, parse
>  	 and apply large register lists.
>  
> @@ -43,7 +43,7 @@ config VIDEO_ATOMISP_MT9M114
>         tristate "Aptina mt9m114 sensor support"
>  	depends on ACPI
>         depends on I2C && VIDEO_V4L2
> -       ---help---
> +       help
>  	 This is a Video4Linux2 sensor-level driver for the Micron
>  	 mt9m114 1.3 Mpixel camera.
>  
> @@ -55,7 +55,7 @@ config VIDEO_ATOMISP_GC0310
>  	tristate "GC0310 sensor support"
>  	depends on ACPI
>  	depends on I2C && VIDEO_V4L2
> -	---help---
> +	help
>  	  This is a Video4Linux2 sensor-level driver for the Galaxycore
>  	  GC0310 0.3MP sensor.
>  
> @@ -63,7 +63,7 @@ config VIDEO_ATOMISP_OV2680
>         tristate "Omnivision OV2680 sensor support"
>  	depends on ACPI
>         depends on I2C && VIDEO_V4L2
> -       ---help---
> +       help
>  	 This is a Video4Linux2 sensor-level driver for the Omnivision
>  	 OV2680 raw camera.
>  
> @@ -79,7 +79,7 @@ config VIDEO_ATOMISP_LM3554
>         tristate "LM3554 flash light driver"
>  	depends on ACPI
>         depends on VIDEO_V4L2 && I2C
> -       ---help---
> +       help
>  	 This is a Video4Linux2 sub-dev driver for the LM3554
>  	 flash light driver.
>  
> diff --git a/drivers/staging/media/atomisp/i2c/ov5693/Kconfig b/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
> index c6ee90b2d13f..536a731dba50 100644
> --- a/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
> +++ b/drivers/staging/media/atomisp/i2c/ov5693/Kconfig
> @@ -1,12 +1,12 @@
>  # SPDX-License-Identifier: GPL-2.0
>  config VIDEO_ATOMISP_OV5693
> -       tristate "Omnivision ov5693 sensor support"
> +	tristate "Omnivision ov5693 sensor support"
>  	depends on ACPI
> -       depends on I2C && VIDEO_V4L2
> -       ---help---
> -	 This is a Video4Linux2 sensor-level driver for the Micron
> -	 ov5693 5 Mpixel camera.
> +	depends on I2C && VIDEO_V4L2
> +	help
> +	  This is a Video4Linux2 sensor-level driver for the Micron
> +	  ov5693 5 Mpixel camera.
>  
> -	 ov5693 is video camera sensor.
> +	  ov5693 is video camera sensor.
>  
> -	 It currently only works with the atomisp driver.
> +	  It currently only works with the atomisp driver.



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
