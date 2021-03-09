Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6BF3321F3
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 10:29:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9D71D4B2D8;
	Tue,  9 Mar 2021 09:29:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RpG1ASg-cgH3; Tue,  9 Mar 2021 09:29:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C2F0483C3;
	Tue,  9 Mar 2021 09:29:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 456181BF406
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 09:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E8126F4F9
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 09:29:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LVQd5xGSxWgF for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 09:29:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com
 [IPv6:2a00:1450:4864:20::429])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F92C6F4A4
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 09:29:36 +0000 (UTC)
Received: by mail-wr1-x429.google.com with SMTP id h98so14376648wrh.11
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 01:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sO+epgmRhJDMZTjy7AJEtlpTCWTyWl78HxLY6u7YYT4=;
 b=K3v2aelY32sKpTuZ0I7x4JWtpKiNpmfBFly7VryV6+xxpJe4g7wPS7xh5S/doLXKcb
 mo03VIkPcwsmyDMuTKEflW0IX9bQz3bdkpAB8lwn4gHX3Yk/24v3TkRJra1g9MVRDVfr
 RshKTZw4JxQOHU32eMgwYbxaCNl0qhd5/P7GOvgGILcxFqzGPuyRG274SU6ZXMzZl3/2
 h5I8RdgVlBNapJaRIhb10UL+wE0BH2uKm4DAHjEIGJbTANjZCF5F5JCUfD1METY6HZv3
 XN9Gu51SLvvM/NoFw80hy0vNU50IQEDciM2LMZJcycbhpAt5YhLGv3J3l0j0GSzOtIoD
 sbbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sO+epgmRhJDMZTjy7AJEtlpTCWTyWl78HxLY6u7YYT4=;
 b=p+z06kwicFUoG6denInK3ev3XnHFlUwUzuxh9WwnFhsSWFgPevY1zvFIfl5Op+/jLk
 S5wLLicWLs3LKqxl/MeTnPml5cKrMtmZVMR2FK6qDg/fVUP+y6U4G8KeZZalVKtIuaUh
 HurQWpPiSKyokTWLqQru7rpjN7n3Cubq0VhP7P3zatAQNNHawhKi2y/N7Zd2No8ggBMr
 NmJPORlCrOWMliKDabyenIvC+yLr5UavAOulpEmoySonf38Pq/LEQrkfIWJwUJHWSGBp
 bjGNz9IxNPjus0hKP5mhiQrbzq7dfo+9DizjqCqnRsjPH+pPUVEi/fnmJ3WlpO8KQRrX
 qwAg==
X-Gm-Message-State: AOAM530RZ1HI55jxn7GNjfCXV60gSSl6WKCchyYnFZE9dUfhrHpWr8YH
 da6OD3cJ7n1BGZ4VIih0aKI=
X-Google-Smtp-Source: ABdhPJxRf5rC6bFM/jX0jWPH/MjxZL5FZ/8xf3aU9Yy6CPERflbdpoh/R7KczYhwdnyHNlKIBhJKmg==
X-Received: by 2002:adf:f841:: with SMTP id d1mr26884305wrq.36.1615282175248; 
 Tue, 09 Mar 2021 01:29:35 -0800 (PST)
Received: from arch-thunder.localdomain (a109-49-46-234.cpe.netcabo.pt.
 [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id o9sm3154597wmc.8.2021.03.09.01.29.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 01:29:34 -0800 (PST)
Date: Tue, 9 Mar 2021 09:29:32 +0000
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH 06/10] staging: greybus: spilib: use 'spi_delay_to_ns'
 for getting xfer delay
Message-ID: <20210309092932.kliwq6ylqlnpqekk@arch-thunder.localdomain>
References: <20210308145502.1075689-1-aardelean@deviqon.com>
 <20210308145502.1075689-7-aardelean@deviqon.com>
 <20210309042809.dgop5dli36z27sj2@vireshk-i7>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210309042809.dgop5dli36z27sj2@vireshk-i7>
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
Cc: devel@driverdev.osuosl.org, elder@kernel.org, gregkh@linuxfoundation.org,
 ldewangan@nvidia.com, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 linux-spi@vger.kernel.org, greybus-dev@lists.linaro.org, broonie@kernel.org,
 bcm-kernel-feedback-list@broadcom.com,
 Alexandru Ardelean <aardelean@deviqon.com>, vireshk@kernel.org,
 linux-tegra@vger.kernel.org, f.fainelli@gmail.com, johan@kernel.org,
 thierry.reding@gmail.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,
On Tue, Mar 09, 2021 at 09:58:09AM +0530, Viresh Kumar wrote:
> On 08-03-21, 16:54, Alexandru Ardelean wrote:
> > The intent is the removal of the 'delay_usecs' field from the
> > spi_transfer struct, as there is a 'delay' field that does the same
> > thing.
> > 
> > The spi_delay_to_ns() can be used to get the transfer delay. It works by
> > using the 'delay_usecs' field first (if it is non-zero), and finally
> > uses the 'delay' field.
> > 
> > Since the 'delay_usecs' field is going away, this change makes use of the
> > spi_delay_to_ns() function. This also means dividing the return value of
> > the function by 1000, to convert it to microseconds.
> > To prevent any potential faults when converting to microseconds and since
> > the result of spi_delay_to_ns() is int, the delay is being computed in 32
> > bits and then clamped between 0 & U16_MAX.
> > 
> > Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
> > ---
> >  drivers/staging/greybus/spilib.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
> > index 672d540d3365..30655153df6a 100644
> > --- a/drivers/staging/greybus/spilib.c
> > +++ b/drivers/staging/greybus/spilib.c
> > @@ -245,6 +245,7 @@ static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
> >  	/* Fill in the transfers array */
> >  	xfer = spi->first_xfer;
> >  	while (msg->state != GB_SPI_STATE_OP_DONE) {
> > +		int xfer_delay;
> >  		if (xfer == spi->last_xfer)
> >  			xfer_len = spi->last_xfer_size;
> >  		else
> > @@ -259,7 +260,9 @@ static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
> >  
> >  		gb_xfer->speed_hz = cpu_to_le32(xfer->speed_hz);
> >  		gb_xfer->len = cpu_to_le32(xfer_len);
> > -		gb_xfer->delay_usecs = cpu_to_le16(xfer->delay_usecs);
> > +		xfer_delay = spi_delay_to_ns(&xfer->delay, xfer) / 1000;
> > +		xfer_delay = clamp_t(u16, xfer_delay, 0, U16_MAX);
> > +		gb_xfer->delay_usecs = cpu_to_le16(xfer_delay);
> >  		gb_xfer->cs_change = xfer->cs_change;
> >  		gb_xfer->bits_per_word = xfer->bits_per_word;
> 
> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

Acked-by: Rui Miguel Silva <rmfrfs@gmail.com>

------
Cheers,
     Rui
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
