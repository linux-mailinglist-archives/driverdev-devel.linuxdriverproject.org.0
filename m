Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F379813F57
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 May 2019 14:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF3418528B;
	Sun,  5 May 2019 12:12:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 10GxiIX3BQyq; Sun,  5 May 2019 12:12:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5F0968113D;
	Sun,  5 May 2019 12:12:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E87EA1BF2F0
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 12:12:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E58C286246
 for <devel@linuxdriverproject.org>; Sun,  5 May 2019 12:12:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 62FQOtCJU+hK for <devel@linuxdriverproject.org>;
 Sun,  5 May 2019 12:12:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 46204861A3
 for <devel@driverdev.osuosl.org>; Sun,  5 May 2019 12:12:13 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8B1B32082F;
 Sun,  5 May 2019 12:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557058333;
 bh=AWraMNufp1TVkWD77c5Ijj2pOjA6QXk6/IDq3mV9NYE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NzjqJxBHAiog1KzyYKm38TtRUK/KLOYorxga68pdGQps54lSL453+0ubIW9R7HgDI
 OUqpXL3NZAfgZ8OWZJCfkvASdsPBsInVv4RHPbNG1KPG+PyyJtUQyxbI8l8R9dL5DL
 Nt4/I48dhvF14Gf4JVTB20NfwvgHzxi0My5qqhYQ=
Date: Sun, 5 May 2019 13:12:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Subject: Re: [PATCH] staging: iio: adc: Add paragraph to describe Kconfig
 symbol
Message-ID: <20190505131207.69fb59ef@archlinux>
In-Reply-To: <20190501071541.4734-1-vatsalanarang@gmail.com>
References: <20190501071541.4734-1-vatsalanarang@gmail.com>
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
Cc: linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, julia.lawall@lip6.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed,  1 May 2019 12:45:41 +0530
Vatsala Narang <vatsalanarang@gmail.com> wrote:

> This patch updates Kconfig with paragraph that describe config symbol
> fully.Issue addressed by checkpatch.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
I'm not a great fan of that particular checkpatch warning as sometimes it
leads to silly details being added to things that really can be described
in very little text.

In this particular case the additional element of the module name seems
worth having though so applied to the togreg branch of iio.git and pushed
out as testing for the autobuilders to play with it.

Thanks,

Jonathan

> ---
>  drivers/staging/iio/adc/Kconfig | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/staging/iio/adc/Kconfig b/drivers/staging/iio/adc/Kconfig
> index 23d9a655a520..31cd9a12f40f 100644
> --- a/drivers/staging/iio/adc/Kconfig
> +++ b/drivers/staging/iio/adc/Kconfig
> @@ -12,6 +12,9 @@ config AD7816
>  	  Say yes here to build support for Analog Devices AD7816/7/8
>  	  temperature sensors and ADC.
>  
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called ad7816.
> +
>  config AD7192
>  	tristate "Analog Devices AD7190 AD7192 AD7193 AD7195 ADC driver"
>  	depends on SPI

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
