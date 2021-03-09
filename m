Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 76577331DDE
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 05:28:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBF3C6F5D7;
	Tue,  9 Mar 2021 04:28:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tUthYGi70ddl; Tue,  9 Mar 2021 04:28:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 880936F5A7;
	Tue,  9 Mar 2021 04:28:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 447641BF315
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 04:28:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BB4F6F5A7
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 04:28:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UYA0pbGT-Do1 for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 04:28:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com
 [IPv6:2607:f8b0:4864:20::42b])
 by smtp3.osuosl.org (Postfix) with ESMTPS id DB8136F59A
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 04:28:12 +0000 (UTC)
Received: by mail-pf1-x42b.google.com with SMTP id l7so8653688pfd.3
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 20:28:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=B+8YOxcfUeJ6df3e8CyV/VT9IvcELWSikbdkoM3b6Ug=;
 b=WPQTHGnSeREz9wSvHz9r2PrjIKMMEsp2yhjGN3B/a/X0/KqBnUNKB/YUejoBWSnPph
 ZAn8jlYWvfHr3LGNSSUXIspLawzHepuruNXmTdqcvG81J++aulzAoyHuQ5RY7PMClzQ9
 RvKxmf9JhuAYeCtd2JLVA+B8+AykXOjYoCrkGEwcJRjd8y89IaTKuXG4Ieo7aZIhremy
 nD0czU60gNDUv92hVYvqxb/8f0H8pg1Ccq43PVnWbeqF8oFoG/dXK1Ebk44IDS4coatb
 Vc3b8v2jgU3hTIC4AztvqPODlan1X18N8QJZSz+Sp8xsussgSNIE0rO4obq/a6jd8Nat
 KOWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=B+8YOxcfUeJ6df3e8CyV/VT9IvcELWSikbdkoM3b6Ug=;
 b=rvzP0TT1Xg9wHj0n1qugF5Ch7+kQv6lMP5v9XsKjjKRxIBQBtLiC4IgDvkA9AmdRYx
 A6NlHrOZrAuZ/Ovk9VPkxe/ka+h8dMQOEohasKQluQ69TbIysyfz3TRJe8oS5pBMtZYX
 Znl67dFwKr1Nsiu5pj53uY+vimB7RxolpQhNKDChsUzyfQGIDhQ6ZMPtQJGVjbimdQto
 O84tr3hJNLIHBCYlSWwby7YS+nT6bCIjXwMZuHKxsjVaTzz++zsK9/U8KkPjl9bGMHje
 S6NHwsBQ4Vc04INQf4jWle2TxvKaq1ox5iuX9QFvJgkT6J9KtOvp03nj/6njBc4oTvaS
 DVvw==
X-Gm-Message-State: AOAM531P5E++Udog2pkPMtdlILkwa8xL6E9i8I9mKrTx35flMH5mOb2z
 VIW76A4lpQKfIIYb8yUit8KfSA==
X-Google-Smtp-Source: ABdhPJxLhPHdVshVOVKrFuQWBus/qDOL4qzrr0c6GqxPCA+N0GE32fx4ze30gezz4TNI4bi2Zd3iNg==
X-Received: by 2002:a63:4d4e:: with SMTP id n14mr23409013pgl.37.1615264092034; 
 Mon, 08 Mar 2021 20:28:12 -0800 (PST)
Received: from localhost ([122.171.124.15])
 by smtp.gmail.com with ESMTPSA id g2sm11719102pfi.28.2021.03.08.20.28.10
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Mar 2021 20:28:11 -0800 (PST)
Date: Tue, 9 Mar 2021 09:58:09 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Alexandru Ardelean <aardelean@deviqon.com>
Subject: Re: [PATCH 06/10] staging: greybus: spilib: use 'spi_delay_to_ns'
 for getting xfer delay
Message-ID: <20210309042809.dgop5dli36z27sj2@vireshk-i7>
References: <20210308145502.1075689-1-aardelean@deviqon.com>
 <20210308145502.1075689-7-aardelean@deviqon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210308145502.1075689-7-aardelean@deviqon.com>
User-Agent: NeoMutt/20180716-391-311a52
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
 bcm-kernel-feedback-list@broadcom.com, vireshk@kernel.org,
 linux-tegra@vger.kernel.org, f.fainelli@gmail.com, johan@kernel.org,
 thierry.reding@gmail.com, linux@deviqon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 08-03-21, 16:54, Alexandru Ardelean wrote:
> The intent is the removal of the 'delay_usecs' field from the
> spi_transfer struct, as there is a 'delay' field that does the same
> thing.
> 
> The spi_delay_to_ns() can be used to get the transfer delay. It works by
> using the 'delay_usecs' field first (if it is non-zero), and finally
> uses the 'delay' field.
> 
> Since the 'delay_usecs' field is going away, this change makes use of the
> spi_delay_to_ns() function. This also means dividing the return value of
> the function by 1000, to convert it to microseconds.
> To prevent any potential faults when converting to microseconds and since
> the result of spi_delay_to_ns() is int, the delay is being computed in 32
> bits and then clamped between 0 & U16_MAX.
> 
> Signed-off-by: Alexandru Ardelean <aardelean@deviqon.com>
> ---
>  drivers/staging/greybus/spilib.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/spilib.c b/drivers/staging/greybus/spilib.c
> index 672d540d3365..30655153df6a 100644
> --- a/drivers/staging/greybus/spilib.c
> +++ b/drivers/staging/greybus/spilib.c
> @@ -245,6 +245,7 @@ static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
>  	/* Fill in the transfers array */
>  	xfer = spi->first_xfer;
>  	while (msg->state != GB_SPI_STATE_OP_DONE) {
> +		int xfer_delay;
>  		if (xfer == spi->last_xfer)
>  			xfer_len = spi->last_xfer_size;
>  		else
> @@ -259,7 +260,9 @@ static struct gb_operation *gb_spi_operation_create(struct gb_spilib *spi,
>  
>  		gb_xfer->speed_hz = cpu_to_le32(xfer->speed_hz);
>  		gb_xfer->len = cpu_to_le32(xfer_len);
> -		gb_xfer->delay_usecs = cpu_to_le16(xfer->delay_usecs);
> +		xfer_delay = spi_delay_to_ns(&xfer->delay, xfer) / 1000;
> +		xfer_delay = clamp_t(u16, xfer_delay, 0, U16_MAX);
> +		gb_xfer->delay_usecs = cpu_to_le16(xfer_delay);
>  		gb_xfer->cs_change = xfer->cs_change;
>  		gb_xfer->bits_per_word = xfer->bits_per_word;

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
