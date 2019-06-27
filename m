Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D08581F4
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 13:57:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BF7A587EDB;
	Thu, 27 Jun 2019 11:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ozRYUKXJUHr; Thu, 27 Jun 2019 11:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DCC087EBA;
	Thu, 27 Jun 2019 11:57:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7E01BF83B
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 11:57:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 59B2686227
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 11:57:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pggUN4p19eZA for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 11:57:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DD60E86226
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 11:57:27 +0000 (UTC)
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5711743F;
 Thu, 27 Jun 2019 13:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1561636644;
 bh=+Yw94xXBxTOU5ZeGcgeqs8j4etBdUYK7CTWY3lO0u6Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=idM4uYcxNxp48HTXmEn77yLKT5kmOl6KqQr6js6t9CO1AqwtMi+nl2XWUPoGY9fIY
 aFHFAaTw2VzNBf5187+GXWOY+RZ7Y6oYILw9Pi6v3KVAlX4zQUIyQ+gBFi6CGr0Us3
 nivTk4VMazT8ksiBxzY7stSV8uFKMe++rWcTWZSw=
Date: Thu, 27 Jun 2019 14:57:05 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v1] Adjust analogix chip driver location
Message-ID: <20190627115705.GB5021@pendragon.ideasonboard.com>
References: <20190627112939.GA4832@xin-VirtualBox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627112939.GA4832@xin-VirtualBox>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 David Airlie <airlied@linux.ie>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 "sjoerd.simons@collabora.co.uk" <sjoerd.simons@collabora.co.uk>,
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hello Xin Ji,

Thank you for the patch.

On Thu, Jun 27, 2019 at 11:29:47AM +0000, Xin Ji wrote:
> Move analogix chip ANX78XX bridge driver into "analogix" directory.
> 
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  drivers/gpu/drm/bridge/Kconfig                           | 10 ----------
>  drivers/gpu/drm/bridge/Makefile                          |  3 +--
>  drivers/gpu/drm/bridge/analogix/Kconfig                  | 10 ++++++++++
>  drivers/gpu/drm/bridge/analogix/Makefile                 |  2 ++
>  drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.c |  0
>  drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.h |  0
>  6 files changed, 13 insertions(+), 12 deletions(-)
>  rename drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.c (100%)
>  rename drivers/gpu/drm/bridge/{ => analogix}/analogix-anx78xx.h (100%)
> 
> diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
> index ee77746..862789b 100644
> --- a/drivers/gpu/drm/bridge/Kconfig
> +++ b/drivers/gpu/drm/bridge/Kconfig
> @@ -16,16 +16,6 @@ config DRM_PANEL_BRIDGE
>  menu "Display Interface Bridges"
>  	depends on DRM && DRM_BRIDGE
>  
> -config DRM_ANALOGIX_ANX78XX
> -	tristate "Analogix ANX78XX bridge"
> -	select DRM_KMS_HELPER
> -	select REGMAP_I2C
> -	---help---
> -	  ANX78XX is an ultra-low Full-HD SlimPort transmitter
> -	  designed for portable devices. The ANX78XX transforms
> -	  the HDMI output of an application processor to MyDP
> -	  or DisplayPort.
> -
>  config DRM_CDNS_DSI
>  	tristate "Cadence DPI/DSI bridge"
>  	select DRM_KMS_HELPER
> diff --git a/drivers/gpu/drm/bridge/Makefile b/drivers/gpu/drm/bridge/Makefile
> index 4934fcf..02cb4cd 100644
> --- a/drivers/gpu/drm/bridge/Makefile
> +++ b/drivers/gpu/drm/bridge/Makefile
> @@ -1,5 +1,4 @@
>  # SPDX-License-Identifier: GPL-2.0
> -obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
>  obj-$(CONFIG_DRM_CDNS_DSI) += cdns-dsi.o
>  obj-$(CONFIG_DRM_DUMB_VGA_DAC) += dumb-vga-dac.o
>  obj-$(CONFIG_DRM_LVDS_ENCODER) += lvds-encoder.o
> @@ -12,8 +11,8 @@ obj-$(CONFIG_DRM_SII9234) += sii9234.o
>  obj-$(CONFIG_DRM_THINE_THC63LVD1024) += thc63lvd1024.o
>  obj-$(CONFIG_DRM_TOSHIBA_TC358764) += tc358764.o
>  obj-$(CONFIG_DRM_TOSHIBA_TC358767) += tc358767.o
> -obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix/
>  obj-$(CONFIG_DRM_I2C_ADV7511) += adv7511/
>  obj-$(CONFIG_DRM_TI_SN65DSI86) += ti-sn65dsi86.o
>  obj-$(CONFIG_DRM_TI_TFP410) += ti-tfp410.o
>  obj-y += synopsys/
> +obj-y += analogix/

Could you place that line just above the synopsys/ directory, to have
them alphabetically sorted (this could also be done while applying) ?
Apart from that the patch looks good to me, so

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
> index e930ff9..dfe84f5 100644
> --- a/drivers/gpu/drm/bridge/analogix/Kconfig
> +++ b/drivers/gpu/drm/bridge/analogix/Kconfig
> @@ -1,4 +1,14 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +config DRM_ANALOGIX_ANX78XX
> +	tristate "Analogix ANX78XX bridge"
> +	select DRM_KMS_HELPER
> +	select REGMAP_I2C
> +	---help---
> +	  ANX78XX is an ultra-low Full-HD SlimPort transmitter
> +	  designed for portable devices. The ANX78XX transforms
> +	  the HDMI output of an application processor to MyDP
> +	  or DisplayPort.
> +
>  config DRM_ANALOGIX_DP
>  	tristate
>  	depends on DRM
> diff --git a/drivers/gpu/drm/bridge/analogix/Makefile b/drivers/gpu/drm/bridge/analogix/Makefile
> index fdbf3fd..d4c54ac 100644
> --- a/drivers/gpu/drm/bridge/analogix/Makefile
> +++ b/drivers/gpu/drm/bridge/analogix/Makefile
> @@ -1,3 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_DRM_ANALOGIX_ANX78XX) += analogix-anx78xx.o
> +
>  analogix_dp-objs := analogix_dp_core.o analogix_dp_reg.o
>  obj-$(CONFIG_DRM_ANALOGIX_DP) += analogix_dp.o
> diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> similarity index 100%
> rename from drivers/gpu/drm/bridge/analogix-anx78xx.c
> rename to drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
> diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.h b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h
> similarity index 100%
> rename from drivers/gpu/drm/bridge/analogix-anx78xx.h
> rename to drivers/gpu/drm/bridge/analogix/analogix-anx78xx.h

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
