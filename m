Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD0A9C513
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Aug 2019 19:27:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F3B3E86193;
	Sun, 25 Aug 2019 17:27:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9yJcq9Yju3_5; Sun, 25 Aug 2019 17:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9160785F81;
	Sun, 25 Aug 2019 17:27:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 955C31BF589
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 17:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 923932079C
 for <devel@linuxdriverproject.org>; Sun, 25 Aug 2019 17:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sNqfjUmAulQd for <devel@linuxdriverproject.org>;
 Sun, 25 Aug 2019 17:26:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 279F1204C2
 for <devel@driverdev.osuosl.org>; Sun, 25 Aug 2019 17:26:59 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 02DF020870;
 Sun, 25 Aug 2019 17:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566754019;
 bh=t0oYoHkLFxsJMeHaRVYelYoALV01M51eu+Ro+0Kcrt4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=zxppyvSOXkK/QctqTXFFYk2BuQo9SXCgKos6+/KQkgGtJ97yDc5kXshdP0L6yysfa
 RY0Len6mxRTU02ENHYBVxoD2yTL0PKgpUNNMSJfrpSizHVkGxiyZRwJU6upjbcDlWC
 L184Qo5n0DTRSqy6RITnH36sdc0Xb9GRRTH5pRIE=
Date: Sun, 25 Aug 2019 18:26:53 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v3 4/4] dt-bindings: iio: adc: Add AD7606B ADC
 documentation
Message-ID: <20190825182653.25a685d4@archlinux>
In-Reply-To: <20190821141656.4815-4-beniamin.bia@analog.com>
References: <20190821141656.4815-1-beniamin.bia@analog.com>
 <20190821141656.4815-4-beniamin.bia@analog.com>
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
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com, robh+dt@kernel.org,
 pmeerw@pmeerw.net, knaack.h@gmx.de, mchehab+samsung@kernel.org,
 paulmck@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 21 Aug 2019 17:16:56 +0300
Beniamin Bia <beniamin.bia@analog.com> wrote:

> Documentation for AD7606B Analog to Digital Converter and software
> mode was added.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
Tweaked as per Peter's comment and added Rob's Reviewed-by from v2
Seems everyone decided to review this one just as you were posting
the new version ;)

Jonathan

> ---
> Changes in v3:
> -nothing changed
> 
>  Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> index 509dbe9c84d2..2afe31747a70 100644
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> @@ -13,6 +13,7 @@ maintainers:
>  description: |
>    Analog Devices AD7606 Simultaneous Sampling ADC
>    https://www.analog.com/media/en/technical-documentation/data-sheets/ad7606_7606-6_7606-4.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/AD7606B.pdf
>    https://www.analog.com/media/en/technical-documentation/data-sheets/AD7616.pdf
>  
>  properties:
> @@ -22,6 +23,7 @@ properties:
>        - adi,ad7606-8
>        - adi,ad7606-6
>        - adi,ad7606-4
> +      - adi,ad7606b
>        - adi,ad7616
>  
>    reg:
> @@ -87,7 +89,7 @@ properties:
>  
>    adi,sw-mode:
>      description:
> -      Software mode of operation, so far available only for ad7616.
> +      Software mode of operation, so far available only for ad7616 and ad7606B.
>        It is enabled when all three oversampling mode pins are connected to
>        high level. The device is configured by the corresponding registers. If the
>        adi,oversampling-ratio-gpios property is defined, then the driver will set the

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
