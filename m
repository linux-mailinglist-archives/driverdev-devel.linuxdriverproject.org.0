Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AB1D1E8D4F
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 05:00:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A90AE89428;
	Sat, 30 May 2020 03:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IX+7yjPhvDfV; Sat, 30 May 2020 03:00:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1DC4B89341;
	Sat, 30 May 2020 03:00:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1CA361BF5AE
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 03:00:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 19C5486A39
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 03:00:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9Tu3Ti3KIt7d for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 03:00:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 85D90869F8
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 03:00:36 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id o6so786584pgh.2
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YMRN0wSsDj4YeK0mPPFUdkTPLMlDL25YvZpi9MUfAXY=;
 b=PwG1wnMplph6a7K2rReSmViHb4/8f5VwWV08D3jshZYYBWN6v0jdB5yN5G0uRUmAWT
 FHrCHBCAFzCeLNedigwdrUhyL0bMCJ0dyPHNlJkmECXytoZIJiq/DHCSd14+4mtncVdU
 FDe3WhMx/vgbmWlvVF8ZWoYRYBuT4oziIqC2+y/4pNjZdiw7xVZrEQfJozuDMea/m02y
 XqwCVI+uukcTJrKm/QNkcUUlBv6PonWcYrhx8DMAxEeeaMutF6OKe2V1QBEPmfIsBygy
 GKip2PzZvBMa8U00SJPBd7o2qBRAQAZkn8kNYD1IWX4d5Ki+vFdlYdGubUCMcAU3+JaX
 23qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YMRN0wSsDj4YeK0mPPFUdkTPLMlDL25YvZpi9MUfAXY=;
 b=EDd1h/EaHHRLACQNYVouGTSHMULplEvo9ncI9AyQMOsXt03tdk7/vHoSS9Y2mnm7+1
 +R8RpIhQKqvrK80n4uil0Wp3svDFAynbqtjFvQpEFbmyO9lXCS6oZfIuR4F1PpejR/Cf
 /70L4pcVKemCo/U4L3GDRty1iw6zmeZ6mB0COWxiB83XJHwU4Y563GT0kIXwtIrqUpfJ
 rPuCkf5XMNO4clYY51Ntq8tsrozx/A+6xyoopSynDqEOGisg89xLnYcuhlcdJb7ynuP+
 y2FK/S7jB2TewplX+FplDH87USFyAivgJrxTG2+jlaAUj8KGPqzDftewi+2/0skGlLst
 XhrA==
X-Gm-Message-State: AOAM530LCDoand4uhvMozAH4ghCu6Qk5RROxcx8gGZrZl8oIqdQKgpzn
 H07SdkE9TxjSy8yviVzdQaY=
X-Google-Smtp-Source: ABdhPJw7clXcDuDY7GMB5jjhBjvxVkDCV+qtLZEpQR/N8sHEQ049wXM2f3hCnUQNnxMGCS1QjW7jFQ==
X-Received: by 2002:a63:a51b:: with SMTP id n27mr11250321pgf.40.1590807636020; 
 Fri, 29 May 2020 20:00:36 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id t12sm649218pjf.3.2020.05.29.20.00.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 20:00:35 -0700 (PDT)
Date: Fri, 29 May 2020 20:00:33 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 7/9] staging: media: atomisp: fix enum type mixups
Message-ID: <20200530030033.GD1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-7-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-7-arnd@arndb.de>
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

On Fri, May 29, 2020 at 10:00:29PM +0200, Arnd Bergmann wrote:
> Some function calls pass an incorrect enum type:
> 
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:858:16: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
>         gp_device_rst(INPUT_SYSTEM0_ID);
>         ~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:860:19: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
>         input_switch_rst(INPUT_SYSTEM0_ID);
>         ~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:876:27: error: implicit conversion from enumeration type 'input_system_cfg_flag_t' to different enumeration type 'input_system_connection_t' [-Werror,-Wenum-conversion]
>                 config.multicast[i]              = INPUT_SYSTEM_CFG_FLAG_RESET;
>                                                  ~ ^~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1326:32: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
>         input_selector_cfg_for_sensor(INPUT_SYSTEM0_ID);
>         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
> drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c:1329:19: error: implicit conversion from enumeration type 'input_system_ID_t' to different enumeration type 'gp_device_ID_t' [-Werror,-Wenum-conversion]
>         input_switch_cfg(INPUT_SYSTEM0_ID, &config.input_switch_cfg);
>         ~~~~~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~
> 
> INPUT_SYSTEM0_ID is zero, so use the corresponding zero-value
> of the expected types instead.
> 
> Fixes: a49d25364dfb ("staging/atomisp: Add support for the Intel IPU v2")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Huh weird that I did not see this warning but you do randconfigs so
that's expected.

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  .../pci/hive_isp_css_common/host/input_system.c        | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
> index 2114cf4f3fda..aa0f0fca9346 100644
> --- a/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
> +++ b/drivers/staging/media/atomisp/pci/hive_isp_css_common/host/input_system.c
> @@ -855,9 +855,9 @@ input_system_error_t input_system_configuration_reset(void)
>  
>  	input_system_network_rst(INPUT_SYSTEM0_ID);
>  
> -	gp_device_rst(INPUT_SYSTEM0_ID);
> +	gp_device_rst(GP_DEVICE0_ID);
>  
> -	input_switch_rst(INPUT_SYSTEM0_ID);
> +	input_switch_rst(GP_DEVICE0_ID);
>  
>  	//target_rst();
>  
> @@ -873,7 +873,7 @@ input_system_error_t input_system_configuration_reset(void)
>  
>  	for (i = 0; i < N_CSI_PORTS; i++) {
>  		config.csi_buffer_flags[i]	 = INPUT_SYSTEM_CFG_FLAG_RESET;
> -		config.multicast[i]		 = INPUT_SYSTEM_CFG_FLAG_RESET;
> +		config.multicast[i]		 = INPUT_SYSTEM_DISCARD_ALL;
>  	}
>  
>  	config.source_type_flags				 = INPUT_SYSTEM_CFG_FLAG_RESET;
> @@ -1323,10 +1323,10 @@ static input_system_error_t configuration_to_registers(void)
>  	} // end of switch (source_type)
>  
>  	// Set input selector.
> -	input_selector_cfg_for_sensor(INPUT_SYSTEM0_ID);
> +	input_selector_cfg_for_sensor(GP_DEVICE0_ID);
>  
>  	// Set input switch.
> -	input_switch_cfg(INPUT_SYSTEM0_ID, &config.input_switch_cfg);
> +	input_switch_cfg(GP_DEVICE0_ID, &config.input_switch_cfg);
>  
>  	// Set input formatters.
>  	// AM: IF are set dynamically.
> -- 
> 2.26.2
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
