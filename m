Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D93587A7
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 18:51:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D2DF6221FF;
	Thu, 27 Jun 2019 16:51:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EScwYVTOvHFx; Thu, 27 Jun 2019 16:51:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C20A0221D9;
	Thu, 27 Jun 2019 16:51:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E92591BF3AA
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 16:51:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E657C2044C
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 16:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k4SCsbgi2+Yu for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 16:51:31 +0000 (UTC)
X-Greylist: delayed 00:07:11 by SQLgrey-1.7.6
Received: from wnew4-smtp.messagingengine.com (wnew4-smtp.messagingengine.com
 [64.147.123.18])
 by silver.osuosl.org (Postfix) with ESMTPS id 035AF2036A
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 16:51:31 +0000 (UTC)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.west.internal (Postfix) with ESMTP id AA8634DA;
 Thu, 27 Jun 2019 12:44:18 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute6.internal (MEProxy); Thu, 27 Jun 2019 12:44:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=rDFUjydPbLgsHZHBEgoxvpKuMK6
 XbRLR5IiACkCmvT4=; b=I6vSO2VNuWrji3LYrrKcLmA3Q16/Y9vYiMp0qg0Mj77
 9Fswf/GESw2QATxuYhgU6oCyeuTyu5Rk+1UfNEHnpkAZvufipskhyjlaYHB5LbiV
 6gkNkkYSrJ60fbIjq4PYNONXcRsxKT+n7WCOYW3UHpgfp+Gb+PqwPMpgIuADysVl
 U6WPAB5CS60jXFWoCp2W2FnSdgime72a3nfYaWtPLgnv/JQ0eie8luIW8SGxmUqt
 qNhRKd2dkaCPqXwGGdH787SSEqW80UZKaWybROp6o4HY/gOI6smT6igm42wdZ3g4
 kw6DEHA+m1znV0ednrwwCbpxow+ZzcHKBytAmpN+ItQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=rDFUjy
 dPbLgsHZHBEgoxvpKuMK6XbRLR5IiACkCmvT4=; b=dD+Jzon7HcqaRUKKnkcOM4
 YQRPum6RVEfVcDAAWl0cP+tzyFjoNvnJvkmjHd2Dmb6uBd6ZVlD9ydpM9ikJ/tqM
 xH2zE50xMaliPVN+/YJcswyH6eQsI7ijUWVaduvqeErNDfu89t+G0ueDNhy3r/r4
 hrwvo/x3+ndHySevhQsMz8Z7fcsZBrK1YdcRA0ENWruQb2ot76qkuw/KVMjxcSL1
 UIiVTuV2tzDrsReKysASZxKdhYtn0J0XWF53WoOvlbPANg/Oyn0ezbiRQbZhPQRT
 DBZEX9I7hC/bobjuWOKbinSXnYTfxWK0nfiCoA0lKyH8BcuCUsqbX7MADUuAKmtg
 ==
X-ME-Sender: <xms:YPIUXbYz4uVGFicZm3E9vkxFiL3Rnb1y33-oei5-NMQC0Ry8t_jSwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudekgddutdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjfgesthdtredttdervdenucfhrhhomhepifhrvghg
 ucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheqnecukfhppeekledrvddthedrudefie
 drvddvieenucfrrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
 necuvehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:YPIUXaH2RT0o7koS1e1MTdG5EPWVoCCfhzUYeD48Qp5tJzbj9EMmYg>
 <xmx:YPIUXT5baNsKQ6c7ZrAWhcCbG3NQ8Wxn441MKOqoNeSh_xvW4THzww>
 <xmx:YPIUXb5JOEZTj6f6GhQWmppFXc6zeguxWnlUBcaVv11m1nJkay0Dyw>
 <xmx:YvIUXfUlsC41Jaz8cDTMImQFCmkzxexJJ-a15g7no7P8OQEtze1zHFaB5L4>
Received: from localhost (unknown [89.205.136.226])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9ED34380083;
 Thu, 27 Jun 2019 12:44:15 -0400 (EDT)
Date: Fri, 28 Jun 2019 00:44:05 +0800
From: Greg KH <greg@kroah.com>
To: Lukas Schneider <lukas.s.schneider@fau.de>
Subject: Re: [PATCH] fbtft: Cleanup line over 80 character warnings
Message-ID: <20190627164405.GB9692@kroah.com>
References: <20190627121240.31584-1-lukas.s.schneider@fau.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627121240.31584-1-lukas.s.schneider@fau.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: devel@driverdev.osuosl.org, leobras.c@gmail.com,
 linux-fbdev@vger.kernel.org, digholebhagyashri@gmail.com,
 linux-kernel@i4.cs.fau.de, daniel.vetter@ffwll.ch, der_wolf_@web.de,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 bhanusreemahesh@gmail.com, payal.s.kshirsagar.98@gmail.com,
 Jannik Moritz <jannik.moritz@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jun 27, 2019 at 02:12:40PM +0200, Lukas Schneider wrote:
> Cleanup the line over 80 character warnings, reported by checkpatch
> 
> Signed-off-by: Lukas Schneider <lukas.s.schneider@fau.de>
> Signed-off-by: Jannik Moritz <jannik.moritz@fau.de>
> Cc: <linux-kernel@i4.cs.fau.de>
> ---
>  drivers/staging/fbtft/fbtft-sysfs.c |  3 ++-
>  drivers/staging/fbtft/fbtft.h       | 26 ++++++++++++++++++++++----
>  2 files changed, 24 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
> index 2a5c630dab87..78d2b81ea2e7 100644
> --- a/drivers/staging/fbtft/fbtft-sysfs.c
> +++ b/drivers/staging/fbtft/fbtft-sysfs.c
> @@ -68,7 +68,8 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
>  			ret = get_next_ulong(&curve_p, &val, " ", 16);
>  			if (ret)
>  				goto out;
> -			curves[curve_counter * par->gamma.num_values + value_counter] = val;
> +			curves[curve_counter * par->gamma.num_values
> +				+ value_counter] = val;

Ick, that's horrible to read now, right?

>  			value_counter++;
>  		}
>  		if (value_counter != par->gamma.num_values) {
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 9b6bdb62093d..cddbfd4ffa10 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -348,9 +348,25 @@ module_exit(fbtft_driver_module_exit);
>  
>  /* shorthand debug levels */
>  #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
> -#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
> -#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
> -#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
> +#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 |		\
> +			 DEBUG_DRIVER_INIT_FUNCTIONS |	\
> +			 DEBUG_TIME_FIRST_UPDATE)
> +#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 |		\
> +			 DEBUG_RESET |			\
> +			 DEBUG_INIT_DISPLAY |		\
> +			 DEBUG_BLANK |			\
> +			 DEBUG_REQUEST_GPIOS |		\
> +			 DEBUG_FREE_GPIOS |		\
> +			 DEBUG_VERIFY_GPIOS |		\
> +			 DEBUG_BACKLIGHT |		\
> +			 DEBUG_SYSFS)
> +#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 |		\
> +			 DEBUG_FB_READ |		\
> +			 DEBUG_FB_WRITE |		\
> +			 DEBUG_FB_FILLRECT |		\
> +			 DEBUG_FB_COPYAREA |		\
> +			 DEBUG_FB_IMAGEBLIT |		\
> +			 DEBUG_FB_BLANK)
>  #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
>  #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
>  #define DEBUG_LEVEL_7	0xFFFFFFFF

All of these special debug "levels" need to go away now that the drivers
are working, and just use the in-kernel debugging macros instead.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
