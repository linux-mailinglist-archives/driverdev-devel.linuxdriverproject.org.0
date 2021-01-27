Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 870E7305C98
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 Jan 2021 14:11:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 03818227AD;
	Wed, 27 Jan 2021 13:11:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0SHpowoQzwi7; Wed, 27 Jan 2021 13:11:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0509F226E9;
	Wed, 27 Jan 2021 13:11:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 184A61BF301
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 13:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 14DB285B0D
 for <devel@linuxdriverproject.org>; Wed, 27 Jan 2021 13:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hluOVQpSNP_3 for <devel@linuxdriverproject.org>;
 Wed, 27 Jan 2021 13:11:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 06F8685A84
 for <devel@driverdev.osuosl.org>; Wed, 27 Jan 2021 13:11:34 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 113DE207A9;
 Wed, 27 Jan 2021 13:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1611753094;
 bh=I4r0yZ8jap4E3EH0ZHseFzeM7MtZzKaH9l7xqzv59bQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MNpK4IHRXaQOtZQCN+SVmVPuvONxqxbedb9G528D2M42gjQjlh6qtaJX88ER4zDYu
 mro5u6r7etWNHbnk+eYxbKMS62eiR0DLUwBN72TktzslBxxiNpbtL0c4VyW90XY3Gk
 EIpTgEjl31XAWdi3AoABxtbWjMulbNQfE2QpcvKk=
Date: Wed, 27 Jan 2021 14:11:31 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Carlis <zhangxuezhi3@gmail.com>
Subject: Re: [PATCH v9] staging: fbtft: add tearing signal detect
Message-ID: <YBFmg3yHlORg1mhf@kroah.com>
References: <1611752257-150851-1-git-send-email-zhangxuezhi3@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1611752257-150851-1-git-send-email-zhangxuezhi3@gmail.com>
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

On Wed, Jan 27, 2021 at 08:57:37PM +0800, Carlis wrote:
> From: zhangxuezhi <zhangxuezhi1@yulong.com>
> 
> For st7789v ic,add tearing signal detect to avoid screen tearing

I need a much better changelog description here please.

> 
> Signed-off-by: zhangxuezhi <zhangxuezhi1@yulong.com>
> ---
> v9: change pr_* to dev_*
> ---

What changed in all of your previous versions?  All of them should be
listed here, right?



>  drivers/staging/fbtft/fb_st7789v.c | 132 ++++++++++++++++++++++++++++++++++++-
>  drivers/staging/fbtft/fbtft.h      |   1 +
>  2 files changed, 132 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
> index 3a280cc..9aa2f36 100644
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

What is the units here?  Where did this value come from?

> +static struct mutex te_mutex;/*mutex for tearing line*/

Does that look correct???

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
