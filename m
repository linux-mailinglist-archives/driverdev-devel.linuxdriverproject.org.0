Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3760FF435
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 Nov 2019 18:11:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A26F2870F6;
	Sat, 16 Nov 2019 17:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0e+5ngfLQWII; Sat, 16 Nov 2019 17:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6C1D486E1A;
	Sat, 16 Nov 2019 17:11:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C28481BF408
 for <devel@linuxdriverproject.org>; Sat, 16 Nov 2019 17:11:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B9B9F86BA1
 for <devel@linuxdriverproject.org>; Sat, 16 Nov 2019 17:11:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RTj+aMsYRKZ0 for <devel@linuxdriverproject.org>;
 Sat, 16 Nov 2019 17:11:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2A86386A07
 for <devel@driverdev.osuosl.org>; Sat, 16 Nov 2019 17:11:52 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 58860214E0;
 Sat, 16 Nov 2019 17:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573924311;
 bh=LN3C1kuC2V3MUsIX/lSbSx0Ac7RRwn+wgAylpuf6cYo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=IlzfehQqgakG3TXV9S0nYj8jLyHRxBU7PuGAFfuO3PCuc6C32vqEFoaFzBXXb3Ogr
 0noU10cZz4v7ue9NIMhBmLvPc2ELxW0W/cdaxMBdWslC2q6G3NdLpmkW4BnBow8HwM
 oUPK0f2wp0zdQlN0rRTM7qW0j73Jt8vQFMAP6s5o=
Date: Sat, 16 Nov 2019 17:11:46 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v5 4/4] MAINTAINERS: add entry for AD7091R5 driver
Message-ID: <20191116171146.029e2a57@archlinux>
In-Reply-To: <20191115135723.12219-4-beniamin.bia@analog.com>
References: <20191115135723.12219-1-beniamin.bia@analog.com>
 <20191115135723.12219-4-beniamin.bia@analog.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 15 Nov 2019 15:57:23 +0200
Beniamin Bia <beniamin.bia@analog.com> wrote:

> Add Beniamin Bia as a maintainer for AD7091R5 ADC.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
Applied,

Thanks,

Jonathan

> ---
> Changes in v5:
> -nothing changed
> 
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2e01d0f0b0e5..7f1e4b88688f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -893,6 +893,14 @@ S:	Supported
>  F:	drivers/iio/dac/ad5758.c
>  F:	Documentation/devicetree/bindings/iio/dac/ad5758.txt
>  
> +ANALOG DEVICES INC AD7091R5 DRIVER
> +M:	Beniamin Bia <beniamin.bia@analog.com>
> +L:	linux-iio@vger.kernel.org
> +W:	http://ez.analog.com/community/linux-device-drivers
> +S:	Supported
> +F:	drivers/iio/adc/ad7091r5.c
> +F:	Documentation/devicetree/bindings/iio/adc/adi,ad7091r5.yaml
> +
>  ANALOG DEVICES INC AD7124 DRIVER
>  M:	Stefan Popa <stefan.popa@analog.com>
>  L:	linux-iio@vger.kernel.org

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
