Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4AD1E8DFF
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 07:25:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3757C8738F;
	Sat, 30 May 2020 05:25:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id twfMBjmb07KL; Sat, 30 May 2020 05:25:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D70C80871;
	Sat, 30 May 2020 05:25:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5ECCB1BF83C
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 05:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4FDC6220C4
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 05:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eNO5o6QpqsOH for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 05:25:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 779B020467
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 05:25:38 +0000 (UTC)
Received: from coco.lan (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6A5E120659;
 Sat, 30 May 2020 05:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590816338;
 bh=46C/MZyqqfW348u8hHBmn8Y6/AmlEi3b+slWuynbey4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=PK8e5RZJjTZba3Rq6FzwcI8qjFcpj9ieVKqL2rHvjTQc4dMN70B3j06iDY+PmGC9b
 EsZznEABpjHDhEbADBORinHqT9C8CEMYMGyVdhHULttC3yyQpHwwPKr0ymJo4H7Ddi
 LG3UvHn6amp2ttclLLpreuU1/Osq6P4GRIPvuCmQ=
Date: Sat, 30 May 2020 07:25:33 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH 9/9] staging: media: atomisp: add PMIC_OPREGION dependency
Message-ID: <20200530072533.66591af2@coco.lan>
In-Reply-To: <20200530031129.GF1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-9-arnd@arndb.de>
 <20200530031129.GF1367069@ubuntu-s3-xlarge-x86>
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Em Fri, 29 May 2020 20:11:29 -0700
Nathan Chancellor <natechancellor@gmail.com> escreveu:

> On Fri, May 29, 2020 at 10:00:31PM +0200, Arnd Bergmann wrote:
> > Without that driver, there is a link failure in
> > 
> > ERROR: modpost: "intel_soc_pmic_exec_mipi_pmic_seq_element"
> > [drivers/staging/media/atomisp/pci/atomisp_gmin_platform.ko] undefined!
> > 
> > Add an explicit Kconfig dependency.
> > 
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>  
> 
> It'd be interesting to know if this is strictly required for the driver
> to work properly. 

It is. Without OpRegion, the driver can't power on the camera sensors.

> The call to intel_soc_pmic_exec_mipi_pmic_seq_element
> has some error handling after it, maybe that should just be surrounded
> by an #ifdef or IS_ENABLED for PMIC_OPREGION, like some other drivers
> do.
> 
> Regardless of that:
> 
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> > ---
> >  drivers/staging/media/atomisp/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
> > index c4f3049b0706..e86311c14329 100644
> > --- a/drivers/staging/media/atomisp/Kconfig
> > +++ b/drivers/staging/media/atomisp/Kconfig
> > @@ -11,6 +11,7 @@ menuconfig INTEL_ATOMISP
> >  config VIDEO_ATOMISP
> >  	tristate "Intel Atom Image Signal Processor Driver"
> >  	depends on VIDEO_V4L2 && INTEL_ATOMISP
> > +	depends on PMIC_OPREGION
> >  	select IOSF_MBI
> >  	select VIDEOBUF_VMALLOC
> >  	---help---
> > -- 
> > 2.26.2
> >   



Thanks,
Mauro
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
