Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EA72A2E55
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 16:30:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D83DC86516;
	Mon,  2 Nov 2020 15:30:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ks7C51510Y3P; Mon,  2 Nov 2020 15:30:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4304686432;
	Mon,  2 Nov 2020 15:30:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F2D321BF32B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 15:30:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DAB072010F
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 15:30:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i4PkEOACZObL
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 15:30:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C98F320035
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 15:30:50 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9D8D2231B;
 Mon,  2 Nov 2020 15:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604331050;
 bh=1gKkkjY0WlZxxwYymKE81IEG3cS6lB6h5Oa8CHLUWas=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0hTcc3UXFr5Y21XYWrWoZsyDIrMdI1PXZlmq797X/7oI5O7nXRBYrn8KbjBRvTT8c
 ImeaTbYDIIvftA8Ug3p1HOa73o6Eyh1SuOObWjRb+sE6OJOBCTiVGX8VPW3E9aTHAn
 owXxa8XEMS0wg3kZLDujZuVj9E5tNITzR7P1lS4Q=
Date: Mon, 2 Nov 2020 16:31:45 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH] drivers: most: add ALSA sound driver
Message-ID: <20201102153145.GA1034326@kroah.com>
References: <1604330043-5517-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1604330043-5517-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, linux-sound@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 02, 2020 at 04:14:03PM +0100, Christian Gromm wrote:
> This patch moves the ALSA sound driver out of the staging area and adds it
> to the stable part of the MOST driver. Modifications to the Makefiles and
> Kconfigs are done accordingly to not break the build.
> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
>  drivers/most/Kconfig                |  10 +
>  drivers/most/Makefile               |   1 +
>  drivers/most/most_snd.c             | 753 ++++++++++++++++++++++++++++++++++++
>  drivers/staging/most/Kconfig        |   2 -
>  drivers/staging/most/Makefile       |   1 -
>  drivers/staging/most/sound/Kconfig  |  14 -
>  drivers/staging/most/sound/Makefile |   4 -
>  drivers/staging/most/sound/sound.c  | 753 ------------------------------------
>  8 files changed, 764 insertions(+), 774 deletions(-)
>  create mode 100644 drivers/most/most_snd.c
>  delete mode 100644 drivers/staging/most/sound/Kconfig
>  delete mode 100644 drivers/staging/most/sound/Makefile
>  delete mode 100644 drivers/staging/most/sound/sound.c
> 
> diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
> index ebfe84e..4b8145b 100644
> --- a/drivers/most/Kconfig
> +++ b/drivers/most/Kconfig
> @@ -32,4 +32,14 @@ config MOST_CDEV
>  
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called most_cdev.
> +
> +config MOST_SND
> +	tristate "Sound"
> +	depends on SND
> +	select SND_PCM
> +	help
> +	  Say Y here if you want to commumicate via ALSA/sound devices.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called most_sound.
>  endif
> diff --git a/drivers/most/Makefile b/drivers/most/Makefile
> index 8b53ca4..60db6cd 100644
> --- a/drivers/most/Makefile
> +++ b/drivers/most/Makefile
> @@ -5,3 +5,4 @@ most_core-y :=	core.o \
>  
>  obj-$(CONFIG_MOST_USB_HDM) += most_usb.o
>  obj-$(CONFIG_MOST_CDEV) += most_cdev.o
> +obj-$(CONFIG_MOST_SND) += most_snd.o
> diff --git a/drivers/most/most_snd.c b/drivers/most/most_snd.c
> new file mode 100644
> index 0000000..8a449ab
> --- /dev/null
> +++ b/drivers/most/most_snd.c
> @@ -0,0 +1,753 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * sound.c - Sound component for Mostcore
> + *
> + * Copyright (C) 2015 Microchip Technology Germany II GmbH & Co. KG
> + */
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
> +#include <linux/module.h>
> +#include <linux/printk.h>
> +#include <linux/kernel.h>
> +#include <linux/slab.h>
> +#include <linux/init.h>
> +#include <sound/core.h>
> +#include <sound/pcm.h>
> +#include <sound/pcm_params.h>
> +#include <linux/sched.h>
> +#include <linux/kthread.h>
> +#include <linux/most.h>
> +
> +#define DRIVER_NAME "sound"
> +#define STRING_SIZE	80
> +
> +static struct most_component comp;
> +
> +/**
> + * struct channel - private structure to keep channel specific data
> + * @substream: stores the substream structure
> + * @iface: interface for which the channel belongs to
> + * @cfg: channel configuration
> + * @card: registered sound card
> + * @list: list for private use
> + * @id: channel index
> + * @period_pos: current period position (ring buffer)
> + * @buffer_pos: current buffer position (ring buffer)
> + * @is_stream_running: identifies whether a stream is running or not
> + * @opened: set when the stream is opened
> + * @playback_task: playback thread
> + * @playback_waitq: waitq used by playback thread
> + */
> +struct channel {
> +	struct snd_pcm_substream *substream;
> +	struct snd_pcm_hardware pcm_hardware;
> +	struct most_interface *iface;
> +	struct most_channel_config *cfg;
> +	struct snd_card *card;
> +	struct list_head list;
> +	int id;
> +	unsigned int period_pos;
> +	unsigned int buffer_pos;
> +	bool is_stream_running;
> +	struct task_struct *playback_task;
> +	wait_queue_head_t playback_waitq;
> +	void (*copy_fn)(void *alsa, void *most, unsigned int bytes);
> +};
> +
> +struct sound_adapter {
> +	struct list_head dev_list;
> +	struct most_interface *iface;
> +	struct snd_card *card;
> +	struct list_head list;
> +	bool registered;
> +	int pcm_dev_idx;
> +};
> +
> +static struct list_head adpt_list;
> +
> +#define MOST_PCM_INFO (SNDRV_PCM_INFO_MMAP | \
> +		       SNDRV_PCM_INFO_MMAP_VALID | \
> +		       SNDRV_PCM_INFO_BATCH | \
> +		       SNDRV_PCM_INFO_INTERLEAVED | \
> +		       SNDRV_PCM_INFO_BLOCK_TRANSFER)
> +
> +#define swap16(val) ( \
> +	(((u16)(val) << 8) & (u16)0xFF00) | \
> +	(((u16)(val) >> 8) & (u16)0x00FF))
> +
> +#define swap32(val) ( \
> +	(((u32)(val) << 24) & (u32)0xFF000000) | \
> +	(((u32)(val) <<  8) & (u32)0x00FF0000) | \
> +	(((u32)(val) >>  8) & (u32)0x0000FF00) | \
> +	(((u32)(val) >> 24) & (u32)0x000000FF))

Doesn't swab16() and swab32() work for this?  I don't think you need to
reimplement these.

> +
> +static void swap_copy16(u16 *dest, const u16 *source, unsigned int bytes)
> +{
> +	unsigned int i = 0;
> +
> +	while (i < (bytes / 2)) {
> +		dest[i] = swap16(source[i]);
> +		i++;
> +	}
> +}
> +
> +static void swap_copy24(u8 *dest, const u8 *source, unsigned int bytes)
> +{
> +	unsigned int i = 0;
> +
> +	while (i < bytes - 2) {
> +		dest[i] = source[i + 2];
> +		dest[i + 1] = source[i + 1];
> +		dest[i + 2] = source[i];
> +		i += 3;
> +	}
> +}
> +
> +static void swap_copy32(u32 *dest, const u32 *source, unsigned int bytes)
> +{
> +	unsigned int i = 0;
> +
> +	while (i < bytes / 4) {
> +		dest[i] = swap32(source[i]);
> +		i++;
> +	}
> +}

Same for the above, don't we have functions for this?

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
