Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4530819EA7E
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Apr 2020 12:46:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE4A2204EB;
	Sun,  5 Apr 2020 10:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iuhsje41ta6F; Sun,  5 Apr 2020 10:46:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E5B7B20356;
	Sun,  5 Apr 2020 10:46:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3F611BF3CA
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 10:46:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DB88220356
 for <devel@linuxdriverproject.org>; Sun,  5 Apr 2020 10:46:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mjtBRwGSCJqq for <devel@linuxdriverproject.org>;
 Sun,  5 Apr 2020 10:46:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C964120346
 for <devel@driverdev.osuosl.org>; Sun,  5 Apr 2020 10:46:06 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 406F5206B8;
 Sun,  5 Apr 2020 10:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586083566;
 bh=ei7dY175ZTQdNCbfUxChZGjkMvGPPhBe13PsivIWOSA=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=N81zGrWkJOqifa+/UrodK7kgmy32fbmCqDYoYU22LVI+dRMoJoNk/BHm3p/364e5i
 Jo0udIWDW6Tk3ksjPQzBSNCbYqWBaWrAuoIcnYxX26xObKzJjf0gQB8SL8IahIdWFS
 /KtX6QIASULhnYAowVgFBUt58PT1mxvQA3zfFql8=
Date: Sun, 5 Apr 2020 11:46:02 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Re: [PATCH 1/3] iio: kfifo: add iio_device_attach_kfifo_buffer()
 helper
Message-ID: <20200405114602.160c690b@archlinux>
In-Reply-To: <20200401125936.6398-1-alexandru.ardelean@analog.com>
References: <20200401125936.6398-1-alexandru.ardelean@analog.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, lars@metafoo.de, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, pmeerw@pmeerw.net, knaack.h@gmx.de,
 lorenzo.bianconi83@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 1 Apr 2020 15:59:34 +0300
Alexandru Ardelean <alexandru.ardelean@analog.com> wrote:

> This change adds the iio_device_attach_kfifo_buffer() helper/short-hand,
> which groups the simple routine of allocating a kfifo buffers via
> devm_iio_kfifo_allocate() and calling iio_device_attach_buffer().
> 
> The mode_flags parameter is required. The setup_ops parameter is optional.
> 
> This function will be a bit more useful when needing to define multiple
> buffers per IIO device.
> 
> One requirement [that is more a recommendation] for this helper, is to call
> it after 'indio_dev' has been populated.
> 
> Also, one consequence related to using this helper is that the resource
> management of the buffer will be tied to 'indio_dev->dev'. Previously it
> was open-coded, and each driver does it slightly differently. Most of them
> tied it to the parent device, some of them to 'indio_dev->dev'.
> This shouldn't be a problem, and may be a good idea when adding more
> buffers per-device.

I'm glad you highlighted this subtlety.  I'm not sure it's safe in all cases
because the result is that the managed cleanup for this will occur once we
get to the cleanup for devm_iio_device_alloc and we release the indio_dev->dev

That would put it 'after' any other devm calls that are still hung off the parent
device.

Now the question is whether that ever causes us problems... See next patch.
It potentially does.  I think we need to provide the dev separately even
if it feels a bit silly to do so.  Scope management is complex so I don't
really want to force people to mix and match between different devices
and so get it wrong by accident.

The other issue is that it's not readily apparent from the naming that
this function is registering stuff that is cleaned up automatically or
that it even allocates anything that might need that..

devm_iio_device_attach_new_kfifo_buffer maybe?

I'm sort of wondering if we should do what dma did and have

iiom_device_attach_new_kfifo_buffer to indicate it's managed in the
scope of the iio device?

What do people think?

However, see patch 2 before commenting.  Reality is I'm not sure forcing
managed calls to hang off iio_dev->dev is a good idea (at this stage given
where we are).

Thanks

Jonathan


> 
> Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
> ---
>  drivers/iio/buffer/kfifo_buf.c | 37 ++++++++++++++++++++++++++++++++++
>  include/linux/iio/kfifo_buf.h  |  4 ++++
>  2 files changed, 41 insertions(+)
> 
> diff --git a/drivers/iio/buffer/kfifo_buf.c b/drivers/iio/buffer/kfifo_buf.c
> index 3150f8ab984b..05b7c5fc6f1d 100644
> --- a/drivers/iio/buffer/kfifo_buf.c
> +++ b/drivers/iio/buffer/kfifo_buf.c
> @@ -228,4 +228,41 @@ void devm_iio_kfifo_free(struct device *dev, struct iio_buffer *r)
>  }
>  EXPORT_SYMBOL(devm_iio_kfifo_free);
>  
> +/**
> + * iio_device_attach_kfifo_buffer - Allocate a kfifo buffer & attach it to an IIO device
> + * @indio_dev: The device the buffer should be attached to
> + * @mode_flags: The mode flags for this buffer (INDIO_BUFFER_SOFTWARE and/or
> + *		INDIO_BUFFER_TRIGGERED).
> + * @setup_ops: The setup_ops required to configure the HW part of the buffer (optional)
> + *
> + * This function allocates a kfifo buffer via devm_iio_kfifo_allocate() and
> + * attaches it to the IIO device via iio_device_attach_buffer().
> + * This is meant to be a bit of a short-hand/helper function as many driver
> + * seem to do this.
> + */
> +int iio_device_attach_kfifo_buffer(struct iio_dev *indio_dev,
> +				   int mode_flags,
> +				   const struct iio_buffer_setup_ops *setup_ops)
> +{
> +	struct iio_buffer *buffer;
> +
> +	if (mode_flags)
> +		mode_flags &= kfifo_access_funcs.modes;
> +
> +	if (!mode_flags)
> +		return -EINVAL;
> +
> +	buffer = devm_iio_kfifo_allocate(&indio_dev->dev);
> +	if (!buffer)
> +		return -ENOMEM;
> +
> +	iio_device_attach_buffer(indio_dev, buffer);
> +
> +	indio_dev->modes |= mode_flags;
> +	indio_dev->setup_ops = setup_ops;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(iio_device_attach_kfifo_buffer);
> +
>  MODULE_LICENSE("GPL");
> diff --git a/include/linux/iio/kfifo_buf.h b/include/linux/iio/kfifo_buf.h
> index 764659e01b68..2363a931be14 100644
> --- a/include/linux/iio/kfifo_buf.h
> +++ b/include/linux/iio/kfifo_buf.h
> @@ -11,4 +11,8 @@ void iio_kfifo_free(struct iio_buffer *r);
>  struct iio_buffer *devm_iio_kfifo_allocate(struct device *dev);
>  void devm_iio_kfifo_free(struct device *dev, struct iio_buffer *r);
>  
> +int iio_device_attach_kfifo_buffer(struct iio_dev *indio_dev,
> +				   int mode_flags,
> +				   const struct iio_buffer_setup_ops *setup_ops);
> +
>  #endif

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
