Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CD22A3CE6
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Nov 2020 07:39:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0065B85F4E;
	Tue,  3 Nov 2020 06:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BcCVBllNj8ZL; Tue,  3 Nov 2020 06:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE7A185F69;
	Tue,  3 Nov 2020 06:39:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0D55E1BF2F7
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  3 Nov 2020 06:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0732086B27
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  3 Nov 2020 06:39:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B-2FtYnxgWIL
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  3 Nov 2020 06:39:42 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CE8EC86B0A
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  3 Nov 2020 06:39:42 +0000 (UTC)
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 812EF22277;
 Tue,  3 Nov 2020 06:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604385582;
 bh=Ji6TEm4Dw1qvqf+IO1VM5YKiMj6TTRAT5gweQdoSwys=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NrPfSWQ/C3F5m+WsWwKX/3a7qJ1A5vz84/mGhsZoEx0K5YHBsLVV5NrO9aZO8qOB+
 +9sQ8YQNGOOjWn+KrpOtoLTC1xsl08cTXW0RA/My8U8tXGG4FQ9zgC3L66DuCHbUaM
 sQqRpgHdj3WCCmrDVZQfMboA2w+mVj8drCT+OJfw=
Date: Tue, 3 Nov 2020 07:39:36 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH] drivers: most: add ALSA sound driver
Message-ID: <20201103063936.GB74830@kroah.com>
References: <1604330043-5517-1-git-send-email-christian.gromm@microchip.com>
 <20201102153145.GA1034326@kroah.com>
 <cf4cc3291546b87595207d0740c679f6bc8012a0.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cf4cc3291546b87595207d0740c679f6bc8012a0.camel@microchip.com>
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

On Mon, Nov 02, 2020 at 11:17:40PM +0000, Christian.Gromm@microchip.com wrote:
> On Mon, 2020-11-02 at 16:31 +0100, Greg KH wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you
> > know the content is safe
> > 
> > On Mon, Nov 02, 2020 at 04:14:03PM +0100, Christian Gromm wrote:
> > > This patch moves the ALSA sound driver out of the staging area and
> > > adds it
> > > to the stable part of the MOST driver. Modifications to the
> > > Makefiles and
> > > Kconfigs are done accordingly to not break the build.
> > > 
> > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > ---
> > >  drivers/most/Kconfig                |  10 +
> > >  drivers/most/Makefile               |   1 +
> > >  drivers/most/most_snd.c             | 753
> > > ++++++++++++++++++++++++++++++++++++
> > >  drivers/staging/most/Kconfig        |   2 -
> > >  drivers/staging/most/Makefile       |   1 -
> > >  drivers/staging/most/sound/Kconfig  |  14 -
> > >  drivers/staging/most/sound/Makefile |   4 -
> > >  drivers/staging/most/sound/sound.c  | 753 ------------------------
> > > ------------
> > >  8 files changed, 764 insertions(+), 774 deletions(-)
> > >  create mode 100644 drivers/most/most_snd.c
> > >  delete mode 100644 drivers/staging/most/sound/Kconfig
> > >  delete mode 100644 drivers/staging/most/sound/Makefile
> > >  delete mode 100644 drivers/staging/most/sound/sound.c
> > > 
> > > diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
> > > index ebfe84e..4b8145b 100644
> > > --- a/drivers/most/Kconfig
> > > +++ b/drivers/most/Kconfig
> > > @@ -32,4 +32,14 @@ config MOST_CDEV
> > > 
> > >         To compile this driver as a module, choose M here: the
> > >         module will be called most_cdev.
> > > +
> > > +config MOST_SND
> > > +     tristate "Sound"
> > > +     depends on SND
> > > +     select SND_PCM
> > > +     help
> > > +       Say Y here if you want to commumicate via ALSA/sound
> > > devices.
> > > +
> > > +       To compile this driver as a module, choose M here: the
> > > +       module will be called most_sound.
> > >  endif
> > > diff --git a/drivers/most/Makefile b/drivers/most/Makefile
> > > index 8b53ca4..60db6cd 100644
> > > --- a/drivers/most/Makefile
> > > +++ b/drivers/most/Makefile
> > > @@ -5,3 +5,4 @@ most_core-y :=        core.o \
> > > 
> > >  obj-$(CONFIG_MOST_USB_HDM) += most_usb.o
> > >  obj-$(CONFIG_MOST_CDEV) += most_cdev.o
> > > +obj-$(CONFIG_MOST_SND) += most_snd.o
> > > diff --git a/drivers/most/most_snd.c b/drivers/most/most_snd.c
> > > new file mode 100644
> > > index 0000000..8a449ab
> > > --- /dev/null
> > > +++ b/drivers/most/most_snd.c
> > > @@ -0,0 +1,753 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * sound.c - Sound component for Mostcore
> > > + *
> > > + * Copyright (C) 2015 Microchip Technology Germany II GmbH & Co.
> > > KG
> > > + */
> > > +
> > > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > > +
> > > +#include <linux/module.h>
> > > +#include <linux/printk.h>
> > > +#include <linux/kernel.h>
> > > +#include <linux/slab.h>
> > > +#include <linux/init.h>
> > > +#include <sound/core.h>
> > > +#include <sound/pcm.h>
> > > +#include <sound/pcm_params.h>
> > > +#include <linux/sched.h>
> > > +#include <linux/kthread.h>
> > > +#include <linux/most.h>
> > > +
> > > +#define DRIVER_NAME "sound"
> > > +#define STRING_SIZE  80
> > > +
> > > +static struct most_component comp;
> > > +
> > > +/**
> > > + * struct channel - private structure to keep channel specific
> > > data
> > > + * @substream: stores the substream structure
> > > + * @iface: interface for which the channel belongs to
> > > + * @cfg: channel configuration
> > > + * @card: registered sound card
> > > + * @list: list for private use
> > > + * @id: channel index
> > > + * @period_pos: current period position (ring buffer)
> > > + * @buffer_pos: current buffer position (ring buffer)
> > > + * @is_stream_running: identifies whether a stream is running or
> > > not
> > > + * @opened: set when the stream is opened
> > > + * @playback_task: playback thread
> > > + * @playback_waitq: waitq used by playback thread
> > > + */
> > > +struct channel {
> > > +     struct snd_pcm_substream *substream;
> > > +     struct snd_pcm_hardware pcm_hardware;
> > > +     struct most_interface *iface;
> > > +     struct most_channel_config *cfg;
> > > +     struct snd_card *card;
> > > +     struct list_head list;
> > > +     int id;
> > > +     unsigned int period_pos;
> > > +     unsigned int buffer_pos;
> > > +     bool is_stream_running;
> > > +     struct task_struct *playback_task;
> > > +     wait_queue_head_t playback_waitq;
> > > +     void (*copy_fn)(void *alsa, void *most, unsigned int bytes);
> > > +};
> > > +
> > > +struct sound_adapter {
> > > +     struct list_head dev_list;
> > > +     struct most_interface *iface;
> > > +     struct snd_card *card;
> > > +     struct list_head list;
> > > +     bool registered;
> > > +     int pcm_dev_idx;
> > > +};
> > > +
> > > +static struct list_head adpt_list;
> > > +
> > > +#define MOST_PCM_INFO (SNDRV_PCM_INFO_MMAP | \
> > > +                    SNDRV_PCM_INFO_MMAP_VALID | \
> > > +                    SNDRV_PCM_INFO_BATCH | \
> > > +                    SNDRV_PCM_INFO_INTERLEAVED | \
> > > +                    SNDRV_PCM_INFO_BLOCK_TRANSFER)
> > > +
> > > +#define swap16(val) ( \
> > > +     (((u16)(val) << 8) & (u16)0xFF00) | \
> > > +     (((u16)(val) >> 8) & (u16)0x00FF))
> > > +
> > > +#define swap32(val) ( \
> > > +     (((u32)(val) << 24) & (u32)0xFF000000) | \
> > > +     (((u32)(val) <<  8) & (u32)0x00FF0000) | \
> > > +     (((u32)(val) >>  8) & (u32)0x0000FF00) | \
> > > +     (((u32)(val) >> 24) & (u32)0x000000FF))
> > 
> > Doesn't swab16() and swab32() work for this?  I don't think you need
> > to
> > reimplement these.
> > 
> > > +
> > > +static void swap_copy16(u16 *dest, const u16 *source, unsigned int
> > > bytes)
> > > +{
> > > +     unsigned int i = 0;
> > > +
> > > +     while (i < (bytes / 2)) {
> > > +             dest[i] = swap16(source[i]);
> > > +             i++;
> > > +     }
> > > +}
> > > +
> > > +static void swap_copy24(u8 *dest, const u8 *source, unsigned int
> > > bytes)
> > > +{
> > > +     unsigned int i = 0;
> > > +
> > > +     while (i < bytes - 2) {
> > > +             dest[i] = source[i + 2];
> > > +             dest[i + 1] = source[i + 1];
> > > +             dest[i + 2] = source[i];
> > > +             i += 3;
> > > +     }
> > > +}
> > > +
> > > +static void swap_copy32(u32 *dest, const u32 *source, unsigned int
> > > bytes)
> > > +{
> > > +     unsigned int i = 0;
> > > +
> > > +     while (i < bytes / 4) {
> > > +             dest[i] = swap32(source[i]);
> > > +             i++;
> > > +     }
> > > +}
> > 
> > Same for the above, don't we have functions for this?
> 
> Can't find any of those. Do you happen to have a pointer where
> those functions are?

I assumed we might, given we have the other functions above.  See where
they are used?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
