Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B932D2488A8
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Aug 2020 17:06:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2FA838579E;
	Tue, 18 Aug 2020 15:06:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jMO3MIkQE4V0; Tue, 18 Aug 2020 15:06:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEB5C85773;
	Tue, 18 Aug 2020 15:06:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F8DC1BF834
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 15:06:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6B47F20443
 for <devel@linuxdriverproject.org>; Tue, 18 Aug 2020 15:06:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bJTZG6tG0vEW for <devel@linuxdriverproject.org>;
 Tue, 18 Aug 2020 15:06:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DD6712043A
 for <devel@driverdev.osuosl.org>; Tue, 18 Aug 2020 15:06:40 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 21FD7207D3;
 Tue, 18 Aug 2020 15:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597763200;
 bh=EWjrUEn8Fdl8vRk5AW0ZEQ0oQDuBzaEaX+X3DssIftw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fdnPgih/agxspQ3O97ozg+vfLTKhbe903DSbfSdPJPdNgPfjbfpNrw9kTy2acF2Er
 qeHmtCEY0hxPYbnljXO+hvtujxi6rif6YSLQOweYR8ysm10y5Th6fWLxpoyn2pBxW1
 o4dZJ0kBLmyt9us1ueN0PezqTv4EdBeq1ovCkHOs=
Date: Tue, 18 Aug 2020 17:07:04 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 1/6] staging: hikey9xx: fix Kconfig dependency chain
Message-ID: <20200818150704.GA665815@kroah.com>
References: <cover.1597762400.git.mchehab+huawei@kernel.org>
 <1b7e23500e7449593393115cc0954af441b0c730.1597762400.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1b7e23500e7449593393115cc0954af441b0c730.1597762400.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Manivannan Sadhasivam <mani@kernel.org>,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 John Stultz <john.stultz@linaro.org>, mauro.chehab@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Aug 18, 2020 at 04:58:53PM +0200, Mauro Carvalho Chehab wrote:
> Both the SPMI controller and the SPMI PMIC driver
> depends on the SPMI bus support.
> 
> The dependency for the regulator is also wrong:
> it should depends on the SPMI version of the HiSilicon 6421,
> and not on the normal one.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  drivers/staging/hikey9xx/Kconfig | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/hikey9xx/Kconfig b/drivers/staging/hikey9xx/Kconfig
> index 76267b9be562..a004839e8fa9 100644
> --- a/drivers/staging/hikey9xx/Kconfig
> +++ b/drivers/staging/hikey9xx/Kconfig
> @@ -5,6 +5,7 @@ config SPMI_HISI3670
>  	tristate "Hisilicon 3670 SPMI Controller"
>  	select IRQ_DOMAIN_HIERARCHY
>  	depends on HAS_IOMEM
> +	depends on SPMI
>  	help
>  	  If you say yes to this option, support will be included for the
>  	  built-in SPMI PMIC Arbiter interface on Hisilicon 3670
> @@ -14,6 +15,7 @@ config SPMI_HISI3670
>  config MFD_HI6421_SPMI
>  	tristate "HiSilicon Hi6421v600 SPMI PMU/Codec IC"
>  	depends on OF
> +	depends on SPMI
>  	select MFD_CORE
>  	help
>  	  Add support for HiSilicon Hi6421v600 SPMI PMIC. Hi6421 includes
> @@ -28,7 +30,7 @@ config MFD_HI6421_SPMI
>  # to be placed at drivers/regulator
>  config REGULATOR_HI6421V600
>  	tristate "HiSilicon Hi6421v600 PMIC voltage regulator support"
> -	depends on MFD_HI6421_PMIC && OF
> +	depends on MFD_HI6421_SPMI && OF
>  	help
>  	  This driver provides support for the voltage regulators on
>  	  HiSilicon Hi6421v600 PMU / Codec IC.

Better, but now I get the following build error:

ERROR: modpost: "regulator_map_voltage_iterate" [drivers/staging/hikey9xx/hi6421v600-regulator.ko] undefined!
ERROR: modpost: "regulator_list_voltage_table" [drivers/staging/hikey9xx/hi6421v600-regulator.ko] undefined!
ERROR: modpost: "of_get_regulator_init_data" [drivers/staging/hikey9xx/hi6421v600-regulator.ko] undefined!
ERROR: modpost: "regulator_register" [drivers/staging/hikey9xx/hi6421v600-regulator.ko] undefined!
ERROR: modpost: "regulator_unregister" [drivers/staging/hikey9xx/hi6421v600-regulator.ko] undefined!
ERROR: modpost: "rdev_get_drvdata" [drivers/staging/hikey9xx/hi6421v600-regulator.ko] undefined!

Someone need CONFIG_REGULATOR enabled?

Another follow-on patch?  :)

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
