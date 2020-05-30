Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EE31E8D41
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 04:56:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DC72E89428;
	Sat, 30 May 2020 02:56:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HZjkQ2jrg1Pp; Sat, 30 May 2020 02:56:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4A84D88BA4;
	Sat, 30 May 2020 02:56:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 416531BF5AE
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 02:55:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3DFDB86FAE
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 02:55:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H3HWxbyZvO72 for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 02:55:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3631886F77
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 02:55:57 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id y17so150619plb.8
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 19:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=CdjRzSLuSxdNQv4Fy/DVTwbAer3PT1/PyJX0XOYAdI8=;
 b=uwGG9xxjFgXIoH2AhNGEZHm8vi/Oj3qBxj+eiVdAJAG+2A3+4WlG49qD/YqwMSGfuK
 A/dY6zGtDSTOocmqQdLMBr0XVqLUiJ0kH866NkdvZqraIuCGhSIoH60lHyYVi/hu+WyF
 bJ3kleTuhomiZ/yUdaCb0eM0e/VM75ZX3xNQ/EiyneIr/M1BNP+BvjttpJCLlgB4e+8f
 YI4UW3ORk/2RjgV9+eCadAjxNcJTy77A462TEtEEprlkoVJtChi4w/DYACQjWm9/p4J4
 rzmm8rIMxMaCvQ0MdTh+2R+m0X+au4eFY2vhlahBAzGIFiYBo+F6stHuDuTaRl34Y+5u
 puGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=CdjRzSLuSxdNQv4Fy/DVTwbAer3PT1/PyJX0XOYAdI8=;
 b=SuOBwM8Jiu47GGnTyWkw0M1My+x3BIXRUDGg/hmsycsctRyDE7Assnb/Ey9h3j72cY
 wri8YBbBmVBVVak0GUozow3yC/+byyTvuyFgt7N2YmGuRVE4lZD/5jxEa1nfNMbS+6jX
 Sp+AEldQj8fwczoh69TIjOf97n+2zJQsVyFJrxdhG5pZxD4jjpUNiDoclfwUpcTQveX7
 SejWvN6dyWhY67nwIbUJSIj4XJelpoU+yg9eyw8HPjtSJDG87SQqUrUw57xOQgXRmAFv
 uHP3vC5cUY6E6CvcSX32OJ0K683pTOI4pChhnIQabkE3cgWfElyC62NHfc9j1NKMROPa
 Prsg==
X-Gm-Message-State: AOAM531mZvvDZ/KiPLal/FlhbrpUOU8eK0qIVIc3a91IXjX13FtQrPII
 6YesJy06EBbJR4PjrolhOcTsm+ar
X-Google-Smtp-Source: ABdhPJxuWfMwbpudVyes0d/7k96w4zqeY7CYoSCL6/wC0SOuddrFsF1PiwqVWIuOMpbvU2ETNY96mg==
X-Received: by 2002:a17:902:8f96:: with SMTP id
 z22mr11361146plo.24.1590807356637; 
 Fri, 29 May 2020 19:55:56 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id o201sm8932310pfd.115.2020.05.29.19.55.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 19:55:55 -0700 (PDT)
Date: Fri, 29 May 2020 19:55:53 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 2/9] staging: media: atomisp: declare 'struct device'
 before using it
Message-ID: <20200530025553.GA1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-2-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-2-arnd@arndb.de>
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

On Fri, May 29, 2020 at 10:00:24PM +0200, Arnd Bergmann wrote:
> In some configurations, including this header leads to a warning:
> 
> drivers/staging/media/atomisp//pci/sh_css_firmware.h:41:38: error: declaration of 'struct device' will not be visible outside of this function [-Werror,-Wvisibility]
> 
> Make sure the struct tag is known before declaring a function
> that uses it as an argument.
> 
> Fixes: 9d4fa1a16b28 ("media: atomisp: cleanup directory hierarchy")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/staging/media/atomisp/pci/sh_css_firmware.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.h b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
> index f6253392a6c9..317559c7689f 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_firmware.h
> +++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.h
> @@ -37,6 +37,7 @@ extern unsigned int sh_css_num_binaries;
>  char
>  *sh_css_get_fw_version(void);
>  
> +struct device;
>  bool
>  sh_css_check_firmware_version(struct device *dev, const char *fw_data);
>  
> -- 
> 2.26.2
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
