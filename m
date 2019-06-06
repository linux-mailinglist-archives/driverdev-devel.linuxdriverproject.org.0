Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA270369CB
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Jun 2019 04:07:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56E87880C3;
	Thu,  6 Jun 2019 02:07:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-nIaYT+lrlS; Thu,  6 Jun 2019 02:07:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C0A188081;
	Thu,  6 Jun 2019 02:07:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 133AC1BF400
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 02:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0D4A581B86
 for <devel@linuxdriverproject.org>; Thu,  6 Jun 2019 02:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YoIsvRxgppsG for <devel@linuxdriverproject.org>;
 Thu,  6 Jun 2019 02:06:30 +0000 (UTC)
X-Greylist: delayed 00:06:40 by SQLgrey-1.7.6
Received: from anchovy3.45ru.net.au (anchovy3.45ru.net.au [203.30.46.155])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2036D81B75
 for <devel@driverdev.osuosl.org>; Thu,  6 Jun 2019 02:06:29 +0000 (UTC)
Received: (qmail 20477 invoked by uid 5089); 6 Jun 2019 01:59:46 -0000
Received: by simscan 1.2.0 ppid: 20389, pid: 20390, t: 0.0556s
 scanners: regex: 1.2.0 attach: 1.2.0 clamav: 0.88.3/m:40/d:1950
Received: from unknown (HELO ?192.168.0.128?)
 (preid@electromag.com.au@203.59.235.95)
 by anchovy2.45ru.net.au with ESMTPA; 6 Jun 2019 01:59:46 -0000
Subject: Re: [PATCH] staging: iio: adt7316: Fix build errors when GPIOLIB is
 not set
To: Fabio Estevam <festevam@gmail.com>, jic23@kernel.org
References: <20190606014246.1850-1-festevam@gmail.com>
From: Phil Reid <preid@electromag.com.au>
Message-ID: <81b33d1f-0129-5fe4-9883-a9c30feafd9d@electromag.com.au>
Date: Thu, 6 Jun 2019 09:59:35 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190606014246.1850-1-festevam@gmail.com>
Content-Language: en-AU
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
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

G'day Fabio,

On 6/06/2019 09:42, Fabio Estevam wrote:
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
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>   drivers/staging/iio/addac/adt7316.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
> index 37ce563cb0e1..5470a9c3f872 100644
> --- a/drivers/staging/iio/addac/adt7316.c
> +++ b/drivers/staging/iio/addac/adt7316.c
> @@ -7,6 +7,8 @@
>   
>   #include <linux/interrupt.h>
>   #include <linux/gpio.h>
This should be removed as well.
See comment at top of linux/gpio.h



> +#include <linux/gpio/consumer.h>
> +#include <linux/irq.h>
>   #include <linux/workqueue.h>
>   #include <linux/device.h>
>   #include <linux/kernel.h>
> 


-- 
Regards
Phil Reid
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
