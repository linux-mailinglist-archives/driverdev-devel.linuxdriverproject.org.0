Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91929104145
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 17:49:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id ABC9488667;
	Wed, 20 Nov 2019 16:49:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eE+snH-8-MpO; Wed, 20 Nov 2019 16:49:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0DE948865B;
	Wed, 20 Nov 2019 16:49:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0582E1BF2CA
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 16:49:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0213D86D80
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 16:49:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wRgrukja-de1 for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 16:49:15 +0000 (UTC)
X-Greylist: delayed 00:07:15 by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7462A86D7F
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 16:49:15 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id b17so358757wmj.2
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 08:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DoBrdkQjnM2M/sNIIdwf16laThZkuQKlh8PPcfsQfYM=;
 b=GN0/nFYDPFzOUrHsl9BbUvlxMEQgUTa5wU0hEQG8hzQRTEesfxWZBj4Q/qj3QnsV4K
 AjN2mkwABi+vsodfnJLOTctxxyuhkQ55UuAtU8xswqrCnp7gxOrM8XDS6g1oeux1y2AZ
 q8O3Fd5bQRf9OxPkeDbthgLX0cnVMUMd6NecI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=DoBrdkQjnM2M/sNIIdwf16laThZkuQKlh8PPcfsQfYM=;
 b=taqw/NF3S5OlkYKjfO4yD1nLGg9dGN6bUQC8gjhwZVH//rMQ3cIR41vkZOpNQSuLIi
 b55mpTL44YiNr4eoraAk6pngQCySrfeg7/+n1n/SH5a16eeWwb/8vrv5YPnPLn0mrOUW
 +q1T8Z5bLjhI3wPc2yPRnU6jg0B/7PgN8J42kG8oNvMxeoXjt54MZeDZ5cH9mhhOyxLb
 d5vZccieSjtr24Mg0fdTNxA5LEL6kAwOD5adjVtrREte4Ub/724GREWogNuaIsUBeM2D
 rBtgfriyp7qlwzm6WPduFML7qLZbg3mDgBNJDcWbP80Y9epIxpUawNPBakIWP8yr+N8M
 5aOg==
X-Gm-Message-State: APjAAAV1wihedZhq1m1LRc3MSpo6W/KTgucEf+GAquvaIKeNmaPZfXhU
 i5BtnXP1ueN7ReHMJMIlZolIsj78jBQ=
X-Google-Smtp-Source: APXvYqxcp61Ouq7qqx6fMqpJbU5o8VCWsZA5gd0+Tv52/4/6QtREkNjADbOEaEE5seygIX0OYcGmYw==
X-Received: by 2002:a1c:cc01:: with SMTP id h1mr4269171wmb.172.1574268118420; 
 Wed, 20 Nov 2019 08:41:58 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id j2sm32071445wrt.61.2019.11.20.08.41.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 08:41:57 -0800 (PST)
Date: Wed, 20 Nov 2019 17:41:55 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] staging: fbtft: Fix Kconfig indentation
Message-ID: <20191120164155.GR30416@phenom.ffwll.local>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20191120133911.13539-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120133911.13539-1-krzk@kernel.org>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.12.2 (2019-09-21)
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
 linux-fbdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 20, 2019 at 09:39:11PM +0800, Krzysztof Kozlowski wrote:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

I expect Greg will pick this up.
-Daniel

> ---
>  drivers/staging/fbtft/Kconfig | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/Kconfig b/drivers/staging/fbtft/Kconfig
> index d994aea84b21..19d9d88e9150 100644
> --- a/drivers/staging/fbtft/Kconfig
> +++ b/drivers/staging/fbtft/Kconfig
> @@ -95,8 +95,8 @@ config FB_TFT_PCD8544
>  	  Generic Framebuffer support for PCD8544
>  
>  config FB_TFT_RA8875
> -        tristate "FB driver for the RA8875 LCD Controller"
> -        depends on FB_TFT
> +	tristate "FB driver for the RA8875 LCD Controller"
> +	depends on FB_TFT
>  	help
>  	  Generic Framebuffer support for RA8875
>  
> @@ -132,10 +132,10 @@ config FB_TFT_SSD1289
>  	  Framebuffer support for SSD1289
>  
>  config FB_TFT_SSD1305
> -        tristate "FB driver for the SSD1305 OLED Controller"
> -        depends on FB_TFT
> -        help
> -          Framebuffer support for SSD1305
> +	tristate "FB driver for the SSD1305 OLED Controller"
> +	depends on FB_TFT
> +	help
> +	  Framebuffer support for SSD1305
>  
>  config FB_TFT_SSD1306
>  	tristate "FB driver for the SSD1306 OLED Controller"
> -- 
> 2.17.1
> 
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
