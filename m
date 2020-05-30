Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 43A401E8D74
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 05:11:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A01BC8761D;
	Sat, 30 May 2020 03:11:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id abcChTL3hN70; Sat, 30 May 2020 03:11:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 42DC6874C7;
	Sat, 30 May 2020 03:11:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAA161BF9C2
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 03:11:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B6BBD881A0
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 03:11:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id erdjw12zbDKU for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 03:11:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30CA388189
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 03:11:33 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id j21so783287pgb.7
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:11:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=itkS+rLxG0j3d2wAPSaT9vUD+EmHbZGAjTEvDwroJZY=;
 b=X2iomiCi0U4lxn91zwW4jw40L+v7+RxtzVRJKbNo0p1P2o1d9ZZkBqTlJcYe8Zfi7q
 k+SnyLCZ/VEyqeCrl1/yeDDqbfeMJePdPjuT7RuttuHfdeGt40GSWfQnGj6rktoOXAiy
 11qfqjzyaTjQnCwaU5P8cu/BjmrcdqVFa86MoNEEZmRkCJAu/So+qkPDWA72ESY0TWx7
 obR60o1e4Nu+BrWcW9V1hrbDnrkJuKT81KljN4HsDF2Caqc+RmUW9CklbkGC2vpsicIo
 lRTFs3EV2FUH4Qlh/N0MnsCloMkR+GP6D8bjOdClyJwm7ZV0xcl+TjKFIXzcFulvKFvD
 V3zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=itkS+rLxG0j3d2wAPSaT9vUD+EmHbZGAjTEvDwroJZY=;
 b=DHrJUTsjvaFVqPrbzLC61Xpjp3fyB+sCyptKVdvptewwLMnAZfsT7uQHMP8denRR0H
 PqMCfcDxfeHl6ZUKkTRSCG70JGNlCkJxWCCCGeVrgA2G81tTM5HCbC/Oc+c1iv5wSUTq
 wqx+gIPNUb3Qm+jUIl6b6tFkKjXpBM9Qb4bB/+fkJblFnOVEpZsHgzh0neeJ9P8vqZMG
 RgzxX+dIwUEatNC3zA+9SQeXfnn1G3U2P0C8Ip885HY+bDYZ/DtJ9Znh/iEbpFGnovoK
 lMm8EnxB/XYBYaPXEj4Bza7htMGgtWSqSMUeYS/7O+BwBONzmxfamIfd67hq4Lx09hjQ
 +FQw==
X-Gm-Message-State: AOAM532zvSsHjMUXirT2PBEpQ7uMza2+7O8XP2XpzQ7dbCFRnizwuhEA
 xnJJlftSfu7SgsJGO0Jlf84=
X-Google-Smtp-Source: ABdhPJzBxr7+VGrFtwwe6AOwSvfUQmx6ZgrcOqqOYbLQfJe8Ie4ICZQfQYSvVduIPnmFV+fNFOoQ4A==
X-Received: by 2002:a62:e801:: with SMTP id c1mr11425576pfi.217.1590808292708; 
 Fri, 29 May 2020 20:11:32 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id n19sm5384613pfu.194.2020.05.29.20.11.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 20:11:31 -0700 (PDT)
Date: Fri, 29 May 2020 20:11:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 9/9] staging: media: atomisp: add PMIC_OPREGION dependency
Message-ID: <20200530031129.GF1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-9-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-9-arnd@arndb.de>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, May 29, 2020 at 10:00:31PM +0200, Arnd Bergmann wrote:
> Without that driver, there is a link failure in
> 
> ERROR: modpost: "intel_soc_pmic_exec_mipi_pmic_seq_element"
> [drivers/staging/media/atomisp/pci/atomisp_gmin_platform.ko] undefined!
> 
> Add an explicit Kconfig dependency.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

It'd be interesting to know if this is strictly required for the driver
to work properly. The call to intel_soc_pmic_exec_mipi_pmic_seq_element
has some error handling after it, maybe that should just be surrounded
by an #ifdef or IS_ENABLED for PMIC_OPREGION, like some other drivers
do.

Regardless of that:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/staging/media/atomisp/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/atomisp/Kconfig b/drivers/staging/media/atomisp/Kconfig
> index c4f3049b0706..e86311c14329 100644
> --- a/drivers/staging/media/atomisp/Kconfig
> +++ b/drivers/staging/media/atomisp/Kconfig
> @@ -11,6 +11,7 @@ menuconfig INTEL_ATOMISP
>  config VIDEO_ATOMISP
>  	tristate "Intel Atom Image Signal Processor Driver"
>  	depends on VIDEO_V4L2 && INTEL_ATOMISP
> +	depends on PMIC_OPREGION
>  	select IOSF_MBI
>  	select VIDEOBUF_VMALLOC
>  	---help---
> -- 
> 2.26.2
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
