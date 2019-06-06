Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B47536A8D
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 05:49:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1793E875CD;
	Thu,  6 Jun 2019 03:49:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YRp0e-VrKzK5; Thu,  6 Jun 2019 03:49:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 24165875DA;
	Thu,  6 Jun 2019 03:49:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 57D731BF329
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 03:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5395C86224
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 03:49:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qKgtGga0KC3t for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 03:49:24 +0000 (UTC)
X-Greylist: delayed 00:25:03 by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C48EA86222
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 03:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ANLy3Q/E3unt0aMYgl32mxZOvr5sBbpUf7AyjjywVKQ=; b=iEghK4qoZQaADY0SiQN7EkLdZY
 EbUM7WxIlLTyuMPQSgRIyojMDBfY8EtVg4DIQjFOp7jbZmEAVGNEW0q/ETCAigxoEAmlJ/ChuI5hY
 Wox7phb1k5chDjUY9EjJD/XNSL1w6JkV0fdr7lTaTLoh8zXrIBxdMXLogUs0kkMGb6YZcivjE9W1L
 PNUTi81pS5IR4MM1YHOioUOx5tDuSXLoB7uXqEmKQGoPenJs50PalcK+iAs3Lc4OAew3AUeVvMcNN
 mPa0ceMdpW0XycAGqcJKSCr08/WrQNzIAR5DsRhykRgjHUqzr/P9yXy1rMKx34zjDqhzAhADCL2ZQ
 qu17LiYg==;
Received: from static-50-53-52-16.bvtn.or.frontiernet.net ([50.53.52.16]
 helo=midway.dunlab)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYj0d-0004PK-Ax; Thu, 06 Jun 2019 03:24:11 +0000
Subject: Re: [PATCH v2] staging: iio: adt7316: Fix build errors when GPIOLIB
 is not set
To: Fabio Estevam <festevam@gmail.com>, jic23@kernel.org
References: <20190606020532.4864-1-festevam@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <7edb325e-9af8-8ae8-d26e-da75c0252284@infradead.org>
Date: Wed, 5 Jun 2019 20:24:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606020532.4864-1-festevam@gmail.com>
Content-Language: en-US
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, Michael.Hennerich@analog.com,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org, preid@electromag.com.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 6/5/19 7:05 PM, Fabio Estevam wrote:
> On x86_64 when GPIOLIB is not set the following build errors
> are seen:
> 
> drivers/staging/iio/addac/adt7316.c:947:3: error: implicit declaration of function 'gpiod_set_value' [-Werror=implicit-function-declaration]
> drivers/staging/iio/addac/adt7316.c:1805:2: error: implicit declaration of function 'irqd_get_trigger_type' [-Werror=implicit-function-declaration]
> 
> These functions are provided by the <linux/gpio/consumer.h>
> and <linux/irq.h> headers, so include them to fix these
> build errors.
> 
> While at it, remove <linux/gpio.h> as this driver is a GPIO
> consumer and not a GPIO driver.
> 
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested

Thanks.

> ---
> Changes since v1:
> - Remove <linux/gpio.h> - Phil
> 
>  drivers/staging/iio/addac/adt7316.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
> index 37ce563cb0e1..9cb3d0e42c38 100644
> --- a/drivers/staging/iio/addac/adt7316.c
> +++ b/drivers/staging/iio/addac/adt7316.c
> @@ -6,7 +6,8 @@
>   */
>  
>  #include <linux/interrupt.h>
> -#include <linux/gpio.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/irq.h>
>  #include <linux/workqueue.h>
>  #include <linux/device.h>
>  #include <linux/kernel.h>
> 


-- 
~Randy
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
