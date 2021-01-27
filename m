Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763A9305B36
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 13:25:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E0CE871B6;
	Wed, 27 Jan 2021 12:25:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YnDhWsinEPXS; Wed, 27 Jan 2021 12:25:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D3A6486F69;
	Wed, 27 Jan 2021 12:25:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BDC7A1BF5E6
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 12:25:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BAB268719A
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 12:25:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3kV-dCgU6oKc for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 12:25:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 302E186F69
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 12:25:11 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 336752070E;
 Wed, 27 Jan 2021 12:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611750310;
 bh=imd80gPIHbJE8uuSvdkKYNt06yTy9wGgnng4tuLO1bE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PSrfJ2+mqCpTL9w5GZtWEYar7eDEJWbgyU+G6jO/ZATY7Bj4zQm+RDJ6hyn1gdwz2
 EavnWQI6fK3FMdK1im06stlhsW35tDv3fwGIkQIytV7NsowOc1L1cvot9jKmfa71F8
 OU8jF+mvh41FerQOm7gCQaG/22YnGRMRuQyKPPoI=
Date: Wed, 27 Jan 2021 13:25:07 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Carlis <zhangxuezhi3@gmail.com>
Subject: Re: [PATCH v8] fbtft: add tearing signal detect
Message-ID: <YBFbo3QEHF9eQBxy@kroah.com>
References: <1611743206-136112-1-git-send-email-zhangxuezhi3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1611743206-136112-1-git-send-email-zhangxuezhi3@gmail.com>
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
 mh12gx2825@gmail.com, oliver.graute@kococonnector.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 sbrivio@redhat.com, colin.king@canonical.com, zhangxuezhi1@yulong.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Jan 27, 2021 at 06:26:46PM +0800, Carlis wrote:
> From: zhangxuezhi <zhangxuezhi1@yulong.com>
> 
> For st7789v ic,add tearing signal detect to avoid screen tearing
> 
> Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>
> ---
> v8: delete a log line
> ---
>  drivers/staging/fbtft/fb_st7789v.c | 132 ++++++++++++++++++++++++++++++++++++-
>  drivers/staging/fbtft/fbtft.h      |   1 +
>  2 files changed, 132 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> index 3a280cc..de7460c 100644
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
>  #include "fbtft.h"
>  
>  #define DRVNAME "fb_st7789v"
> @@ -66,6 +69,32 @@ enum st7789v_command {
>  #define MADCTL_MX BIT(6) /* bitmask for column address order */
>  #define MADCTL_MY BIT(7) /* bitmask for page address order */
>  
> +#define SPI_PANEL_TE_TIMEOUT	400
> +static struct mutex te_mutex;/*mutex for tearing line*/
> +static struct completion spi_panel_te;
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
> +
> +	mutex_lock(&te_mutex);
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
> +		pr_err("Failed to request te gpio: %d\n", rc);

You are a driver, always use dev_* calls, not pr_*.

This should be dev_err().

same for other pr_ functions you add in this patch.

Also, look at other commits for this file and make your subject: line
match them (i.e. you forgot "staging: ")

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
