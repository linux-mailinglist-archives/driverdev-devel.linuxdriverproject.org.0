Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FC1306730
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 23:32:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C778386398;
	Wed, 27 Jan 2021 22:32:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3AsfhdZ2nI-y; Wed, 27 Jan 2021 22:32:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 545C086130;
	Wed, 27 Jan 2021 22:32:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5F9B91BF4E3
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 22:32:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4ED0B226F3
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 22:32:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eSTo6zsPwvJ4 for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 22:32:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by silver.osuosl.org (Postfix) with ESMTPS id 42F002078B
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 22:32:28 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id e2so1311368lfj.13
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 14:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=dfF0wNipTrvglZ/p6TYZqAPD+KZd+0K0D3xuQURerUY=;
 b=slRTTe1J6MdVoKWLrDTtJ9/NNGXVCi+vOoNzZeT6lhXyrtufVxmWp2cHCB6whVQkUv
 1G30wFJKxHD0pKT+KxYox3D/PneMiecYU/yXKboe2niCnLANssCCNlbf7l+2Ju52NQCt
 VImlaCCjAbfJW0dznwZKWz7E0SmRtutW9FLwqOqAlyNthX6tqEDq3XxcZB+ZGjqOgw49
 KJa5U6RalBRYFW0FwKg6xoRI8Q3tXLzQRWc/h60Z/Cnlbt7WpB4LP6VGvT11P59+iMej
 UiJtpplqD4aywTY55Rz/I1KLd6gi00NWRpKViLgpYTUOhGDj5KTBR3ZRtOsbmWtrtSUh
 jNgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=dfF0wNipTrvglZ/p6TYZqAPD+KZd+0K0D3xuQURerUY=;
 b=noRQmR4rjKyHfUtFaH5ROVpTTmMS/D2/j4zih4MWFaWJ3Odu0yvZdDWu35GXvn/gNg
 rRqaowIy9ESwZD1I9xpFJum2+5VZ18RaC0W3Zsw1gfq8uztbCTEvusraMRHzvlw+wDC+
 o1vI0bYPzQaC3S5Mi54IM5qGuqw5hiMVjZNmEvMPdM7uRWZG1EM6NsRHEGI/BEqas/H9
 Yh3JBdVoL5d46x4LuEyzNBYuYfmB+WK8Z5f9OiSsAofKklebfmk1YLQyrMRhifs9Jo5N
 CEnzpRvcRbAAOdVrV4ACB8zEEHURiC2mNtbx4Oi70EJ53l5bS05QNB3pWntJYAbqSj2A
 RwYg==
X-Gm-Message-State: AOAM5321zUqRAT10HT8qXkifLxAGgh8wdLUbP+Ju2ZvkT0i8xjAPIpVx
 T4/d+WBjSPmdsTjfZOAqBZk=
X-Google-Smtp-Source: ABdhPJzHWR0KZhiLWKWelVWAFpiPrCVa0weM+Hv2p7dCNqpHFqAdMgKVRCwXelVlm8mdsA2kqfEKQQ==
X-Received: by 2002:a05:6512:3bc:: with SMTP id
 v28mr6249003lfp.30.1611786746092; 
 Wed, 27 Jan 2021 14:32:26 -0800 (PST)
Received: from kari-VirtualBox (87-95-193-210.bb.dnainternet.fi.
 [87.95.193.210])
 by smtp.gmail.com with ESMTPSA id n13sm862313lfu.265.2021.01.27.14.32.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Jan 2021 14:32:25 -0800 (PST)
Date: Thu, 28 Jan 2021 00:32:22 +0200
From: Kari Argillander <kari.argillander@gmail.com>
To: Carlis <zhangxuezhi3@gmail.com>
Subject: Re: [PATCH v10] staging: fbtft: add tearing signal detect
Message-ID: <20210127223222.3lavtl3roc4cabso@kari-VirtualBox>
References: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1611754972-151016-1-git-send-email-zhangxuezhi3@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 mh12gx2825@gmail.com, gregkh@linuxfoundation.org,
 oliver.graute@kococonnector.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sbrivio@redhat.com, colin.king@canonical.com,
 zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 27, 2021 at 09:42:52PM +0800, Carlis wrote:
> For st7789v ic,when we need continuous full screen refresh, it is best to
> wait for the TE signal arrive to avoid screen tearing
 
> diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> index 3a280cc..cba08a8 100644
> --- a/drivers/staging/fbtft/fb_st7789v.c
> +++ b/drivers/staging/fbtft/fb_st7789v.c
> @@ -9,9 +9,12 @@
>  #include <linux/delay.h>
>  #include <linux/init.h>
>  #include <linux/kernel.h>
> +#include <linux/mutex.h>
> +#include <linux/interrupt.h>
> +#include <linux/completion.h>
>  #include <linux/module.h>
>  #include <video/mipi_display.h>
> -
> +#include <linux/gpio/consumer.h>

Space after local headers. Also this should one up so all Linux headers
are group together. You agreed?

>  #include "fbtft.h"
>  
>  #define DRVNAME "fb_st7789v"
> @@ -66,6 +69,32 @@ enum st7789v_command {
>  #define MADCTL_MX BIT(6) /* bitmask for column address order */
>  #define MADCTL_MY BIT(7) /* bitmask for page address order */
>  
> +#define SPI_PANEL_TE_TIMEOUT	400 /* msecs */
> +static struct mutex te_mutex;/* mutex for set te gpio irq status */

Space after ;

> +static struct completion spi_panel_te;

What if multiple displays? Is this possible for user?

> +
> +static irqreturn_t spi_panel_te_handler(int irq, void *data)
> +{
> +	complete(&spi_panel_te);
> +	return IRQ_HANDLED;
> +}
> +
> +static void set_spi_panel_te_irq_status(struct fbtft_par *par, bool enable)
> +{
> +	static int te_irq_count;

Same here. Maybe you can think better way and then this code would also be
cleaner.

> +
> +	mutex_lock(&te_mutex);

So locking should be done if we really do action and not just in case.

> +
> +	if (enable) {
> +		if (++te_irq_count == 1)
> +			enable_irq(gpiod_to_irq(par->gpio.te));
> +	} else {
> +		if (--te_irq_count == 0)
> +			disable_irq(gpiod_to_irq(par->gpio.te));
> +	}
> +	mutex_unlock(&te_mutex);
> +}
> +
>  /**
>   * init_display() - initialize the display controller
>   *
> @@ -82,6 +111,33 @@ enum st7789v_command {
>   */
>  static int init_display(struct fbtft_par *par)
>  {
> +	int rc;
> +	struct device *dev = par->info->device;
> +
> +	par->gpio.te = devm_gpiod_get_index_optional(dev, "te", 0, GPIOD_IN);
> +	if (IS_ERR(par->gpio.te)) {
> +		rc = PTR_ERR(par->gpio.te);
> +		dev_err(par->info->device, "Failed to request te gpio: %d\n", rc);
> +		return rc;
> +	}

You request with optinal and you still want to error out? We could just
continue and not care about that error. User will be happier if device
still works somehow.

> +	if (par->gpio.te) {
> +		init_completion(&spi_panel_te);
> +		mutex_init(&te_mutex);
> +		rc = devm_request_irq(dev,
> +				      gpiod_to_irq(par->gpio.te),
> +				     spi_panel_te_handler, IRQF_TRIGGER_RISING,
> +				     "TE_GPIO", par);
> +		if (rc) {
> +			dev_err(par->info->device, "TE request_irq failed.\n");
> +			devm_gpiod_put(dev, par->gpio.te);
> +			return rc;
> +		}
> +
> +		disable_irq_nosync(gpiod_to_irq(par->gpio.te));
> +	} else {
> +		dev_info(par->info->device, "%s:%d, TE gpio not specified\n",
> +			 __func__, __LINE__);
> +	}
>  	/* turn off sleep mode */
>  	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
>  	mdelay(120);
> @@ -137,6 +193,9 @@ static int init_display(struct fbtft_par *par)
>  	 */
>  	write_reg(par, PWCTRL1, 0xA4, 0xA1);
>  
> +    /*Tearing Effect Line On*/

Spaces and why upcase everything?

> +	if (par->gpio.te)
> +		write_reg(par, 0x35, 0x00);
>  	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
>  
>  	if (HSD20_IPS)
> @@ -145,6 +204,76 @@ static int init_display(struct fbtft_par *par)
>  	return 0;
>  }
>  
> +/*****************************************************************************
> + *
> + *   int (*write_vmem)(struct fbtft_par *par);
> + *
> + *****************************************************************************/
> +

Why this kind of function comment? Please use same as another function
comments in this file. They are atleast almoust like kernel-doc style.

> +/* 16 bit pixel over 8-bit databus */
> +static int st7789v_write_vmem16_bus8(struct fbtft_par *par, size_t offset, size_t len)
> +{
> +	u16 *vmem16;
> +	__be16 *txbuf16 = par->txbuf.buf;
> +	size_t remain;
> +	size_t to_copy;
> +	size_t tx_array_size;
> +	int i;
> +	int ret = 0;
> +	size_t startbyte_size = 0;
> +
> +	fbtft_par_dbg(DEBUG_WRITE_VMEM, par, "st7789v ---%s(offset=%zu, len=%zu)\n",
> +		      __func__, offset, len);
> +
> +	remain = len / 2;
> +	vmem16 = (u16 *)(par->info->screen_buffer + offset);
> +
> +	if (par->gpio.dc)
> +		gpiod_set_value(par->gpio.dc, 1);
> +
> +	/* non buffered write */
> +	if (!par->txbuf.buf)
> +		return par->fbtftops.write(par, vmem16, len);
> +
> +	/* buffered write */
> +	tx_array_size = par->txbuf.len / 2;
> +
> +	if (par->startbyte) {
> +		txbuf16 = par->txbuf.buf + 1;
> +		tx_array_size -= 2;
> +		*(u8 *)(par->txbuf.buf) = par->startbyte | 0x2;
> +		startbyte_size = 1;
> +	}
> +
> +	while (remain) {

for (remain = len / 2; remain; remain -= to_copy) {

or even use len = len / 2 if you wanna save variable.

> +		to_copy = min(tx_array_size, remain);

Care must be taken that this will not be endless loop if another is 0. I
will not check this further but hopefully you have.

> +		dev_dbg(par->info->device, "    to_copy=%zu, remain=%zu\n",
> +			to_copy, remain - to_copy);
> +
> +		for (i = 0; i < to_copy; i++)
> +			txbuf16[i] = cpu_to_be16(vmem16[i]);
> +
> +		vmem16 = vmem16 + to_copy;

+= Or you can ++ vmem16 at the for loop but that is not so readable
sometimes with pointers.

> +		if (par->gpio.te) {
> +			set_spi_panel_te_irq_status(par, true);
> +			reinit_completion(&spi_panel_te);
> +			ret = wait_for_completion_timeout(&spi_panel_te,
> +							  msecs_to_jiffies(SPI_PANEL_TE_TIMEOUT));
> +			if (ret == 0)

!ret

> +				dev_err(par->info->device, "wait panel TE time out\n");
> +		}
> +		ret = par->fbtftops.write(par, par->txbuf.buf,
> +					 startbyte_size + to_copy * 2);
> +		if (par->gpio.te)
> +			set_spi_panel_te_irq_status(par, false);
> +		if (ret < 0)
> +			return ret;
> +		remain -= to_copy;
> +	}
> +
> +	return ret;

Do we want to return something over 0? If not then this can be return 0.
And then you do not need to even init ret value at the beginning.

Also wait little bit like Greg sayd before sending new version. Someone
might nack about what I say or say something more.

> +}
> +
>  /**
>   * set_var() - apply LCD properties like rotation and BGR mode
>   *
> @@ -259,6 +388,7 @@ static int blank(struct fbtft_par *par, bool on)
>  	.gamma = HSD20_IPS_GAMMA,
>  	.fbtftops = {
>  		.init_display = init_display,
> +		.write_vmem = st7789v_write_vmem16_bus8,
>  		.set_var = set_var,
>  		.set_gamma = set_gamma,
>  		.blank = blank,
> diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
> index 76f8c09..93bac05 100644
> --- a/drivers/staging/fbtft/fbtft.h
> +++ b/drivers/staging/fbtft/fbtft.h
> @@ -212,6 +212,7 @@ struct fbtft_par {
>  		struct gpio_desc *wr;
>  		struct gpio_desc *latch;
>  		struct gpio_desc *cs;
> +		struct gpio_desc *te;
>  		struct gpio_desc *db[16];
>  		struct gpio_desc *led[16];
>  		struct gpio_desc *aux[16];
> -- 
> 1.9.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
