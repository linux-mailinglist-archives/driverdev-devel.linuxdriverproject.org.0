Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8500039F4A
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2019 13:55:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8213385E28;
	Sat,  8 Jun 2019 11:55:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id muvHLbAeSjn2; Sat,  8 Jun 2019 11:55:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6ECF685DF8;
	Sat,  8 Jun 2019 11:55:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4C3661BF389
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:55:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4009E85DF8
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2019 11:55:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GakyTo0gxg1O for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2019 11:55:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B388985DC1
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2019 11:55:34 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AA00C214AE;
 Sat,  8 Jun 2019 11:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559994934;
 bh=F6qhJyzp+hpUv2sORpYggFf/Ny8xu1gIsJ0ENP514b0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=09qiwXFGhaa0dUCKYNylcQjOmR+PZj6LLK6kzr2MTogPnwnqDJrPaCx8UDHx1Lwx5
 anuhyP2nWsxCDj5938enn1xIWXRQNmwTkpx3rSeHz960Q2W2l/jrwTHVlsrTVfSgvL
 0EKfyn+xGi2R6rlkcc/CCV9rThV12vyKN0KJ6yEU=
Date: Sat, 8 Jun 2019 12:55:29 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Randy Dunlap <rdunlap@infradead.org>
Subject: Re: [PATCH v2] staging: iio: adt7316: Fix build errors when GPIOLIB
 is not set
Message-ID: <20190608125529.6aa5c0a7@archlinux>
In-Reply-To: <7edb325e-9af8-8ae8-d26e-da75c0252284@infradead.org>
References: <20190606020532.4864-1-festevam@gmail.com>
 <7edb325e-9af8-8ae8-d26e-da75c0252284@infradead.org>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Wed, 5 Jun 2019 20:24:09 -0700
Randy Dunlap <rdunlap@infradead.org> wrote:

> On 6/5/19 7:05 PM, Fabio Estevam wrote:
> > On x86_64 when GPIOLIB is not set the following build errors
> > are seen:
> > 
> > drivers/staging/iio/addac/adt7316.c:947:3: error: implicit declaration of function 'gpiod_set_value' [-Werror=implicit-function-declaration]
> > drivers/staging/iio/addac/adt7316.c:1805:2: error: implicit declaration of function 'irqd_get_trigger_type' [-Werror=implicit-function-declaration]
> > 
> > These functions are provided by the <linux/gpio/consumer.h>
> > and <linux/irq.h> headers, so include them to fix these
> > build errors.
> > 
> > While at it, remove <linux/gpio.h> as this driver is a GPIO
> > consumer and not a GPIO driver.
> > 
> > Reported-by: Randy Dunlap <rdunlap@infradead.org>
> > Signed-off-by: Fabio Estevam <festevam@gmail.com>  
> 
> Acked-by: Randy Dunlap <rdunlap@infradead.org> # build-tested
Applied to the fixes-togreg branch of iio.git.

thanks,

Jonathan

> 
> Thanks.
> 
> > ---
> > Changes since v1:
> > - Remove <linux/gpio.h> - Phil
> > 
> >  drivers/staging/iio/addac/adt7316.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
> > index 37ce563cb0e1..9cb3d0e42c38 100644
> > --- a/drivers/staging/iio/addac/adt7316.c
> > +++ b/drivers/staging/iio/addac/adt7316.c
> > @@ -6,7 +6,8 @@
> >   */
> >  
> >  #include <linux/interrupt.h>
> > -#include <linux/gpio.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/irq.h>
> >  #include <linux/workqueue.h>
> >  #include <linux/device.h>
> >  #include <linux/kernel.h>
> >   
> 
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
