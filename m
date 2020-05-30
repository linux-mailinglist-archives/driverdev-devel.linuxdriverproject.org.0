Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 671371E8D57
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 05:03:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 371738855B;
	Sat, 30 May 2020 03:03:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1SW-8jl6RoKe; Sat, 30 May 2020 03:03:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 43EBE88542;
	Sat, 30 May 2020 03:03:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C4C571BF5AE
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 03:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C15DB875E0
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 03:03:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mdvra6s8yF3a for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 03:03:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3AE66875F5
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 03:03:28 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id g5so716733pfm.10
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lD81mgG/12hqGQg2aqU3rSKCdgjuziiyCs+2dP2qbOo=;
 b=ityY1Ou5U0JYYPc9su4dmvgyxPHl+4KRZEEUcOGyG7/Wk+a2vYXxgq2wW20UDKgiC5
 fXrXJkCpBoGec4P/BYCH/CrWKvnLYsPdrLJmOYQHvgCCDc7HC9YTQH/VgB0jdNNzhj8g
 q3JnOqYABqpvEp3bnMgF+g6FeaV2LkqPmyvZaoqCDKw9nmIM5ITMwondHDoYknykBGMs
 OyhikiT5xS87XVjVvUPX49ztKl9eDK1OXUxFY0TaNeiApjsM8TSItbPGDBvSuI+tNeR3
 MgwYpDnZObsf7rBVFjGGCZnWtDO1DBZbde3Iw+dQDomAAaIhJk7nxd8sH0H36Bfu1erW
 0WuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lD81mgG/12hqGQg2aqU3rSKCdgjuziiyCs+2dP2qbOo=;
 b=KaXlIx18CiNk99h0rcnByBXU2AHj/PSuvFweXQUtek+hx95rMKQmBOK9q0OCdSYsBP
 pmOuG8Kx1KaVNmzJYRrBv1H4JgIwh8FpO1ijmS4AZO7GnyKZrR8iL71JkPmQFUU801C7
 n0t30yEdvv1mIobvMQBo53IwfuCEUGg+sQZDSma1vDnaDAz1KMosRR5gFt1OYQf0ybfh
 QZUGk+swOoaqB4adorEQtxJQJp6MToBNbS2WSJtOn9WtiWnoCgjzrPZ2w7QFFfG2dpQ5
 zEmYOJjjz2ZoDCR57FwJ5W59OtX8siPpRaG66PiIYtp9oywYQDIPkSgVrvvwWqTAgHXj
 vGIg==
X-Gm-Message-State: AOAM530cgRuThLGjGMRVg8D+B5YVo1Fiil7/uLXhzLxe/nPLCKtvLqmi
 w5bIKcdZc5EAgh/cppzA7pA=
X-Google-Smtp-Source: ABdhPJyNWwxM3/2LAqCuRV+dyq6JiviqHnMEX14ZqdM1pdy7feq+oOMYehiBKKSZFBwo1kgplIwDmA==
X-Received: by 2002:a63:e54d:: with SMTP id z13mr8836678pgj.78.1590807807646; 
 Fri, 29 May 2020 20:03:27 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id m18sm669003pjl.14.2020.05.29.20.03.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 20:03:27 -0700 (PDT)
Date: Fri, 29 May 2020 20:03:25 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 8/9] staging: media: atomisp: disable all custom formats
Message-ID: <20200530030325.GE1367069@ubuntu-s3-xlarge-x86>
References: <20200529200031.4117841-1-arnd@arndb.de>
 <20200529200031.4117841-8-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529200031.4117841-8-arnd@arndb.de>
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

On Fri, May 29, 2020 at 10:00:30PM +0200, Arnd Bergmann wrote:
> clang points out the usage of an incorrect enum type in the
> list of supported image formats:
> 
> drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:65: error: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
>         { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
> drivers/staging/media/atomisp/pci/atomisp_subdev.c:49:39: error: implicit conversion from enumeration type 'enum ia_css_frame_format' to different enumeration type 'enum atomisp_input_format' [-Werror,-Wenum-conversion]
>         { V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
>         { V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
>         { MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
> 
> Checking the git history, I found a commit that disabled one such case
> because it did not work. It seems likely that the incorrect enum was
> part of the original problem and that the others do not work either,
> or have never been tested.
> 
> Disable all the ones that cause a warning.
> 
> Fixes: cb02ae3d71ea ("media: staging: atomisp: Disable custom format for now")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

I have this patch in my local tree and debated sending it myself. I
think that this is the right fix for now, as the driver is being cleaned
up. Maybe add a FIXME like the rest of this driver?

Regardless of that last point:

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/staging/media/atomisp/pci/atomisp_subdev.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/media/atomisp/pci/atomisp_subdev.c b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
> index 46590129cbe3..8bce466cc128 100644
> --- a/drivers/staging/media/atomisp/pci/atomisp_subdev.c
> +++ b/drivers/staging/media/atomisp/pci/atomisp_subdev.c
> @@ -44,9 +44,11 @@ const struct atomisp_in_fmt_conv atomisp_in_fmt_conv[] = {
>  	{ MEDIA_BUS_FMT_SRGGB12_1X12, 12, 12, ATOMISP_INPUT_FORMAT_RAW_12, CSS_BAYER_ORDER_RGGB, CSS_FORMAT_RAW_12 },
>  	{ MEDIA_BUS_FMT_UYVY8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
>  	{ MEDIA_BUS_FMT_YUYV8_1X16, 8, 8, ATOMISP_INPUT_FORMAT_YUV422_8, 0, ATOMISP_INPUT_FORMAT_YUV422_8 },
> +#if 0
>  	{ MEDIA_BUS_FMT_JPEG_1X8, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
>  	{ V4L2_MBUS_FMT_CUSTOM_NV12, 12, 12, CSS_FRAME_FORMAT_NV12, 0, CSS_FRAME_FORMAT_NV12 },
>  	{ V4L2_MBUS_FMT_CUSTOM_NV21, 12, 12, CSS_FRAME_FORMAT_NV21, 0, CSS_FRAME_FORMAT_NV21 },
> +#endif
>  	{ V4L2_MBUS_FMT_CUSTOM_YUV420, 12, 12, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY, 0, ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY },
>  #if 0
>  	{ V4L2_MBUS_FMT_CUSTOM_M10MO_RAW, 8, 8, CSS_FRAME_FORMAT_BINARY_8, 0, ATOMISP_INPUT_FORMAT_BINARY_8 },
> -- 
> 2.26.2
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
