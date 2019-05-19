Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBF4226C1
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 May 2019 13:32:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C38987852;
	Sun, 19 May 2019 11:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pfnsWqzkrePu; Sun, 19 May 2019 11:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9721E8778F;
	Sun, 19 May 2019 11:32:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 424641BF3A4
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E74B85B73
 for <devel@linuxdriverproject.org>; Sun, 19 May 2019 11:32:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CKa6lfqQkoGG for <devel@linuxdriverproject.org>;
 Sun, 19 May 2019 11:32:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 71DCE857D6
 for <devel@driverdev.osuosl.org>; Sun, 19 May 2019 11:32:14 +0000 (UTC)
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B90A22184C;
 Sun, 19 May 2019 11:32:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558265534;
 bh=xIfjBwAnlTWBS0xxGQD5dBqlbiDtOuwak7rtI6d9ews=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=GPMTJt0OBU4YMg/nWSbx2+7UgvG3DnR4qCJII+CBIyI66geFnRx9GAkLjEYWAJ98v
 dtRFiITp+iIsLVEhnO+T9MfoSz9mipx67cuXIQHAeV05mlu0Ky+HyNwFaYnCl/3xEA
 kl6f+j19GOty2U876rxE1FXCZwbtDAwUSBDbOZCc=
Date: Sun, 19 May 2019 12:32:08 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Renato Lui Geh <renatogeh@gmail.com>
Subject: Re: [PATCH] dt-bindings: iio: adc: add adi,ad7780.yaml binding
Message-ID: <20190519123208.26c864ce@archlinux>
In-Reply-To: <9992a318aec777b9b7788bb40d976aa89e5963fe.1558219042.git.renatogeh@gmail.com>
References: <9992a318aec777b9b7788bb40d976aa89e5963fe.1558219042.git.renatogeh@gmail.com>
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
Cc: mark.rutland@arm.com, devel@driverdev.osuosl.org, lars@metafoo.de,
 pmeerw@pmeerw.net, Michael.Hennerich@analog.com, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, kernel-usp@googlegroups.com, robh+dt@kernel.org,
 stefan.popa@analog.com, knaack.h@gmx.de, alexandru.Ardelean@analog.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 18 May 2019 19:41:12 -0300
Renato Lui Geh <renatogeh@gmail.com> wrote:

> This patch adds a YAML binding for the Analog Devices AD7780/1 and
> AD7170/1 analog-to-digital converters.
> 
> Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
One comment inline.  I'll also be needing an ack from Analog on this,
preferably Michael's.

Thanks,

Jonathan
> ---
>  .../bindings/iio/adc/adi,ad7780.txt           | 48 -----------
>  .../bindings/iio/adc/adi,ad7780.yaml          | 85 +++++++++++++++++++
>  2 files changed, 85 insertions(+), 48 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> deleted file mode 100644
> index 440e52555349..000000000000
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> +++ /dev/null
> @@ -1,48 +0,0 @@
> -* Analog Devices AD7170/AD7171/AD7780/AD7781
> -
> -Data sheets:
> -
> -- AD7170:
> -	* https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
> -- AD7171:
> -	* https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
> -- AD7780:
> -	* https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
> -- AD7781:
> -	* https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
> -
> -Required properties:
> -
> -- compatible: should be one of
> -	* "adi,ad7170"
> -	* "adi,ad7171"
> -	* "adi,ad7780"
> -	* "adi,ad7781"
> -- reg: spi chip select number for the device
> -- vref-supply: the regulator supply for the ADC reference voltage
> -
> -Optional properties:
> -
> -- powerdown-gpios:  must be the device tree identifier of the PDRST pin. If
> -		    specified, it will be asserted during driver probe. As the
> -		    line is active high, it should be marked GPIO_ACTIVE_HIGH.
> -- adi,gain-gpios:   must be the device tree identifier of the GAIN pin. Only for
> -		    the ad778x chips. If specified, it will be asserted during
> -		    driver probe. As the line is active low, it should be marked
> -		    GPIO_ACTIVE_LOW.
> -- adi,filter-gpios: must be the device tree identifier of the FILTER pin. Only
> -		    for the ad778x chips. If specified, it will be asserted
> -		    during driver probe. As the line is active low, it should be
> -		    marked GPIO_ACTIVE_LOW.
> -
> -Example:
> -
> -adc@0 {
> -	compatible =  "adi,ad7780";
> -	reg =	      <0>;
> -	vref-supply = <&vdd_supply>
> -
> -	powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
> -	adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
> -	adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
> -};
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> new file mode 100644
> index 000000000000..931bc4f8ec04
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> @@ -0,0 +1,85 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad7780.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD7170/AD7171/AD7780/AD7781 analog to digital converters
> +
> +maintainers:
> +  - Michael Hennerich <michael.hennerich@analog.com>
> +
> +description: |
> +  The ad7780 is a sigma-delta analog to digital converter. This driver provides
> +  reading voltage values and status bits from both the ad778x and ad717x series.
> +  Its interface also allows writing on the FILTER and GAIN GPIO pins on the
> +  ad778x.
> +
> +  Specifications on the converters can be found at:
> +    AD7170:
> +      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
> +    AD7171:
> +      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
> +    AD7780:
> +      https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
> +    AD7781:
> +      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad7170
> +      - adi,ad7171
> +      - adi,ad7780
> +      - adi,ad7781
> +
> +  reg:
> +    description:
> +      Chip select number for the device
> +    maxItems: 1
> +
> +  vref-supply:
> +    description:
> +      The regulator supply for the ADC reference voltage
> +    maxItems: 1
> +
> +  powerdown-gpios:
> +    description:
> +      Must be the device tree identifier of the PDRST pin. If
> +      specified, it will be asserted during driver probe. As the
> +      line is active high, it should be marked GPIO_ACTIVE_HIGH.
> +    maxItems: 1
> +
> +  adi,gain-gpios:
> +    description:
> +      Must be the device tree identifier of the GAIN pin. Only for
> +      the ad778x chips. If specified, it will be asserted during
> +      driver probe. As the line is active low, it should be marked
> +      GPIO_ACTIVE_LOW.
> +    maxItems: 1
> +
> +  adi,filter-gpios:
> +    description:
> +      Must be the device tree identifier of the FILTER pin. Only
> +      for the ad778x chips. If specified, it will be asserted
> +      during driver probe. As the line is active low, it should be
> +      marked GPIO_ACTIVE_LOW.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - vref-supply
Is that actually true?  I'd imagine it'll use a stub regulator if
it isn't supplied.

> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    adc@0 {
> +      compatible =  "adi,ad7780";
> +      reg = <0>;
> +      vref-supply = <&vdd_supply>;
> +
> +      powerdown-gpios  = <&gpio0 12 GPIO_ACTIVE_HIGH>;
> +      adi,gain-gpios   = <&gpio1  5 GPIO_ACTIVE_LOW>;
> +      adi,filter-gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;
> +    };

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
