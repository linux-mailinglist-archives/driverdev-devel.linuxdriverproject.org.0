Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 119CC2FFEB5
	for <lists+driverdev-devel@lfdr.de>; Fri, 22 Jan 2021 09:53:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE34086E87;
	Fri, 22 Jan 2021 08:53:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AwTB0XmLK3vR; Fri, 22 Jan 2021 08:53:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E3BA086E59;
	Fri, 22 Jan 2021 08:53:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F87B1BF9B2
 for <devel@linuxdriverproject.org>; Fri, 22 Jan 2021 08:53:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1C0518639F
 for <devel@linuxdriverproject.org>; Fri, 22 Jan 2021 08:53:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MuhnwU2DGqHz for <devel@linuxdriverproject.org>;
 Fri, 22 Jan 2021 08:53:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6853C86374
 for <devel@driverdev.osuosl.org>; Fri, 22 Jan 2021 08:53:29 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id t29so3250392pfg.11
 for <devel@driverdev.osuosl.org>; Fri, 22 Jan 2021 00:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Tkp1AM3SOFlgt4la6k8MPcrZ9tBBbiBq6V7Fxeng6AA=;
 b=Cl5IIv+n0My70Rbzrlr0HpFArXIDhIZtAA+1BI880I2DSMOOM0lUC5mDvrfm8gGlxb
 UQ9lYhJqOI6QQ0+bGekELIH6eYe7u/Kqnsur09b2kx7JQQUSBEzgaKC3eqrud39Smz4W
 YK1AouMruQktpA0dJBdSoyYyN5yIJwvxaIwJKZYr2NIKfquMSvFUvK5aVUFRJKCQAtTI
 oiGgWIf01vqVX+1pPwBawTQGo2GbFVviAnrMTr1rNE7EhBCAG2bw1BXbF2eudO8msCzw
 MNBDAqGYMd3iQIqhZjU/WLxivpojedA6Fs4gSBvFpoVMyYy7ocW5TAZEHY8iNPJJJ3AU
 iefQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Tkp1AM3SOFlgt4la6k8MPcrZ9tBBbiBq6V7Fxeng6AA=;
 b=DjFxZPNNc+UXXS2Sex/YhgQX/vaUpGKSFV5lmV9ZIpX1Q2EDomyRp6OJxkZBH2AACa
 kceqDliUCJGypTs+wNUIFdqgDf4OlfwFg5BW96TfaFkTmU6AZhzdHLaFPjgnFWFFJ+eo
 AVBHDehBM6qb9HXfcNKgVQ+R9YbRltB4FJDu4OFR3tWrySb4X34aYlHxj7Yn3nO49PUM
 dVP/WWGP5klhtkUvwtMLAZzvhe3rCL7+lig6AJGhPBR+Evnn/njDOkbNVAR00Pi9wkGx
 huazmTy/ZX5In4KD3QAH48EJPckbqGLDkuacbtcEbXwu+bUUx99xc0tYPZVsm0Io8Gx+
 IQtw==
X-Gm-Message-State: AOAM530N6kZzknYsah7l04i5M65shar6IqIOrGa6AJP5l49k/FFz3P0u
 tGzXZ+vrOU3c2POGWdxelKlGkd/D7MtSsoho/BBhtg==
X-Google-Smtp-Source: ABdhPJxNyZhjLGVmRTc4jfhkoB4lXYvXjrHvOE8BUUbRG1C4AO6Ln0IW8psVrzCLx8Y4VRN3BlIc3PoGpm5hz0Bw6QU=
X-Received: by 2002:a63:e151:: with SMTP id h17mr3766600pgk.120.1611305609006; 
 Fri, 22 Jan 2021 00:53:29 -0800 (PST)
MIME-Version: 1.0
References: <1611217731-56866-1-git-send-email-abaci-bugfix@linux.alibaba.com>
In-Reply-To: <1611217731-56866-1-git-send-email-abaci-bugfix@linux.alibaba.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Fri, 22 Jan 2021 09:53:17 +0100
Message-ID: <CAG3jFytsopFdw=McsXYgh4Bg6xtGgMqY33++3VxuV98xMSNEMA@mail.gmail.com>
Subject: Re: [PATCH] media: atomisp: remove redundant NULL check
To: Yang Li <abaci-bugfix@linux.alibaba.com>
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Thanks for the patch.

Feel free to add my r-b:
Reviewed-by: Robert Foss <robert.foss@linaro.org>

On Thu, 21 Jan 2021 at 09:31, Yang Li <abaci-bugfix@linux.alibaba.com> wrote:
>
> Fix below warnings reported by coccicheck:
> ./drivers/staging/media/atomisp/pci/sh_css_params.c:1575:2-8: WARNING:
> NULL check before some freeing functions is not needed.
> ./drivers/staging/media/atomisp/pci/sh_css_params.c:3006:2-8: WARNING:
> NULL check before some freeing functions is not needed.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <abaci-bugfix@linux.alibaba.com>
> ---
>  drivers/staging/media/atomisp/pci/sh_css_params.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/media/atomisp/pci/sh_css_params.c b/drivers/staging/media/atomisp/pci/sh_css_params.c
> index 24fc497..569473b9 100644
> --- a/drivers/staging/media/atomisp/pci/sh_css_params.c
> +++ b/drivers/staging/media/atomisp/pci/sh_css_params.c
> @@ -1575,8 +1575,7 @@ struct ia_css_isp_3a_statistics_map *
>         return me;
>
>  err:
> -       if (me)
> -               kvfree(me);
> +       kvfree(me);
>         return NULL;
>  }
>
> @@ -3006,8 +3005,7 @@ static void free_map(struct sh_css_ddr_address_map *map)
>         }
>
>         kvfree(params);
> -       if (per_frame_params)
> -               kvfree(per_frame_params);
> +       kvfree(per_frame_params);
>         stream->isp_params_configs = NULL;
>         stream->per_frame_isp_params_configs = NULL;
>
> --
> 1.8.3.1
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
