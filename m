Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40B99282C0B
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 19:47:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 17F6A20475;
	Sun,  4 Oct 2020 17:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yseEuBXA0BG9; Sun,  4 Oct 2020 17:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 857C320437;
	Sun,  4 Oct 2020 17:47:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3DC421BF3A6
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 17:47:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3A7C686FBA
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 17:47:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T4ZM4R2rURnV for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 17:47:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B68FC86FBB
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 17:47:17 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id f21so1046513wml.3
 for <devel@driverdev.osuosl.org>; Sun, 04 Oct 2020 10:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YJw0Qj8f58FIAtl0HsmWyiR6HhSRiM/PepYpAhE8SIQ=;
 b=G2w7BLthMK8XOVUbuQNX+ETbYdp9nLRFsABHXqzwiXLBYVDqmPQJwS0/V/Qax9eToz
 aECEibwJRXNUX1wesEI4JuGUw5wp1oQczjNijB10v5B3X11ppj7/qfxcuXJRin75nNLx
 Yf3u1f6ym6GcQvMSBYcMjhfOs82ZJUhh/Q2k79HWZ7ydhelqKcX9DPmZOaIUhrF3wh1l
 Psfb/tidTOoci+8LjzI9Qgdn+H6VF3XFds1TVbW08YAs6fBJ5aZmZ08UDT6jzgFQhpFI
 C8cNckxeMz9IYiXKfUzc4XgqBnIix50c0wnNp/0VNTZzkgytfJDxDW37GF/MGeu4M70j
 OA3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YJw0Qj8f58FIAtl0HsmWyiR6HhSRiM/PepYpAhE8SIQ=;
 b=nuJ2TAwBtdrXqIxvmD3DJYEb8O31O4VJuB1StXU3YS0Yml/hXEV40JsTrBzhnQ3ww9
 IIh/j3Gh8HRxK1wArovmS4swp/m8xFwsKEpSd/pCTYe9BiCLZf34lAi7stHiDYCD/K36
 FgTUsu6q3dMUH6jgHSTv9HT2apXSjeEd0iKhxxhcHkkxBrL7WkV+tn8gsws1RrX8Zsv+
 Gr0ncnrWaqUklWb91+VLUYrysaEKSh1/De9UNDhtV59mqj3SXnTZJ4MCFs1OMK6KQ5T7
 y3aNUHiGcEFmHjC/6I1mnsuLowLy3sA3oUNm8tMbrf5KOX7V5j08zUOMLcurNmWLsNVd
 9vSg==
X-Gm-Message-State: AOAM532I46rYUwaLOsDSePuruyPxzIJ+Yb9VpEHzOFAfoXxT1zIvGfKa
 +25jlKulmRuspgUjT3VW5vLj9Q==
X-Google-Smtp-Source: ABdhPJyCAM/U61j94aX364UfmH0bOJAsed17TsUxcQOQ9Q3xz+SXTURUA5Z4Zqh+8EEXEHXY+qMV6Q==
X-Received: by 2002:a7b:cb8c:: with SMTP id m12mr13421369wmi.12.1601833636064; 
 Sun, 04 Oct 2020 10:47:16 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id m3sm10682841wme.3.2020.10.04.10.47.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 04 Oct 2020 10:47:15 -0700 (PDT)
Date: Sun, 4 Oct 2020 19:47:13 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH] media: zoran.rst: place it at the right place this time
Message-ID: <20201004174713.GB28143@Red>
References: <0cef13d883e4644b4cf9b521d3f3e45355e60566.1601827201.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0cef13d883e4644b4cf9b521d3f3e45355e60566.1601827201.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Rob Herring <robh@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 mjpeg-users@lists.sourceforge.net, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Oct 04, 2020 at 06:00:30PM +0200, Mauro Carvalho Chehab wrote:
> I was too quick moving zoran.rst... it ends that the original
> patch didn't do the right thing and forgot to update the files
> that references it.
> 
> Fix it.
> 
> Fixes: 6b90346919d4 ("media: zoran: move documentation file to the right place")
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../driver-api/media/drivers/{v4l-drivers => }/zoran.rst        | 0
>  MAINTAINERS                                                     | 2 +-
>  drivers/staging/media/zoran/Kconfig                             | 2 +-
>  3 files changed, 2 insertions(+), 2 deletions(-)
>  rename Documentation/driver-api/media/drivers/{v4l-drivers => }/zoran.rst (100%)
> 
> diff --git a/Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst b/Documentation/driver-api/media/drivers/zoran.rst
> similarity index 100%
> rename from Documentation/driver-api/media/drivers/v4l-drivers/zoran.rst
> rename to Documentation/driver-api/media/drivers/zoran.rst
> diff --git a/MAINTAINERS b/MAINTAINERS
> index ba5eb1dff9c2..7a12633747c8 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -19247,7 +19247,7 @@ L:	linux-media@vger.kernel.org
>  S:	Maintained
>  W:	http://mjpeg.sourceforge.net/driver-zoran/
>  Q:	https://patchwork.linuxtv.org/project/linux-media/list/
> -F:	Documentation/media/v4l-drivers/zoran.rst
> +F:	Documentation/driver-api/media/drivers/zoran.rst
>  F:	drivers/staging/media/zoran/
>  
>  ZPOOL COMPRESSED PAGE STORAGE API
> diff --git a/drivers/staging/media/zoran/Kconfig b/drivers/staging/media/zoran/Kconfig
> index 492507030276..7874842033ca 100644
> --- a/drivers/staging/media/zoran/Kconfig
> +++ b/drivers/staging/media/zoran/Kconfig
> @@ -8,7 +8,7 @@ config VIDEO_ZORAN
>  	  36057/36067 PCI controller chipset. This includes the Iomega
>  	  Buz, Pinnacle DC10+ and the Linux Media Labs LML33. There is
>  	  a driver homepage at <http://mjpeg.sf.net/driver-zoran/>. For
> -	  more information, check <file:Documentation/media/v4l-drivers/zoran.rst>.
> +	  more information, check <file:Documentation/driver-api/media/drivers/zoran.rst>.
>  
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called zr36067.
> -- 
> 2.26.2
> 
Hello

Acked-by: Corentin Labbe <clabbe@baylibre.com>

Thanks
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
