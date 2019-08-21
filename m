Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC4998589
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Aug 2019 22:24:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8F42686E89;
	Wed, 21 Aug 2019 20:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GYlSNaLKL6Vk; Wed, 21 Aug 2019 20:24:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D767E86D53;
	Wed, 21 Aug 2019 20:24:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BD1991BF405
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 20:24:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BA25584595
 for <devel@linuxdriverproject.org>; Wed, 21 Aug 2019 20:24:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LGdG4UI3imzG for <devel@linuxdriverproject.org>;
 Wed, 21 Aug 2019 20:24:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E2BCA83702
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 20:24:32 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id w4so3290681ote.11
 for <devel@driverdev.osuosl.org>; Wed, 21 Aug 2019 13:24:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=VlPveHWnHmyI+1GWA+q9rNyELGwhQs00BTq/EJHSID0=;
 b=LfMPao4DZd3wWVmfv11oKhcz67D4bye5VeZX6fJblaObLD+/ZkKM3AGungyCA6HxkI
 ajLalz+d/ugODhMXALuO5aRglnFSyD1vISEwdJUsggX1XOtqkcDFi93MBklzSBgxr+P0
 LOQd/3sC/55jPlGOdqq2CBFJ9LAafSGXInP5nEB7A57qS7tNmb8ZlOIfHrgxM2TgOM6f
 Zc7niw98kkgfaR2rAYKtKwnd2MXwE8LLwQFZboMHHGcR+bkVhWTLP0TjVt00ow2NsMfY
 2aOSz5r8iHVMRgPG4kZTFrkcSlzfK9/M0Q/jVg5A/LJEmwpWmQkUez+YjL+zLAUhDHt9
 /xCA==
X-Gm-Message-State: APjAAAWBLNRTM290zfBUGzkBdI9y5J+dud7/9urv2j9iNReoUZRPaQTS
 3GgZBt9gVBZfohRYpkLrFw==
X-Google-Smtp-Source: APXvYqxsyxl0+BA8DnarEBxAjNEfvqSpPFn4omaSMp55d98bPbvFplH4u83uwrmvf7zORhjwacx89w==
X-Received: by 2002:a05:6830:1151:: with SMTP id
 x17mr26546521otq.270.1566419072002; 
 Wed, 21 Aug 2019 13:24:32 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a21sm3387232oie.9.2019.08.21.13.24.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 13:24:31 -0700 (PDT)
Date: Wed, 21 Aug 2019 15:24:30 -0500
From: Rob Herring <robh@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: iio: adc: Migrate AD7606
 documentation to yaml
Message-ID: <20190821202430.GA16419@bogus>
References: <20190807133137.11185-1-beniamin.bia@analog.com>
 <20190807133137.11185-3-beniamin.bia@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807133137.11185-3-beniamin.bia@analog.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com, pmeerw@pmeerw.net,
 knaack.h@gmx.de, mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 jic23@kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Aug 07, 2019 at 04:31:36PM +0300, Beniamin Bia wrote:
> The documentation for ad7606 was migrated to yaml.
> =

> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> ---
> Changes in v2:
> -old txt file was deleted
> =

>  .../bindings/iio/adc/adi,ad7606.txt           |  66 ---------
>  .../bindings/iio/adc/adi,ad7606.yaml          | 134 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 135 insertions(+), 67 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7606.=
txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7606.=
yaml
> =

> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.txt b/D=
ocumentation/devicetree/bindings/iio/adc/adi,ad7606.txt
> deleted file mode 100644
> index d8652460198e..000000000000
> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.txt
> +++ /dev/null
> @@ -1,66 +0,0 @@
> -Analog Devices AD7606 Simultaneous Sampling ADC
> -
> -Required properties for the AD7606:
> -
> -- compatible: Must be one of
> -	* "adi,ad7605-4"
> -	* "adi,ad7606-8"
> -	* "adi,ad7606-6"
> -	* "adi,ad7606-4"
> -	* "adi,ad7616"
> -- reg: SPI chip select number for the device
> -- spi-max-frequency: Max SPI frequency to use
> -	see: Documentation/devicetree/bindings/spi/spi-bus.txt
> -- spi-cpha: See Documentation/devicetree/bindings/spi/spi-bus.txt
> -- avcc-supply: phandle to the Avcc power supply
> -- interrupts: IRQ line for the ADC
> -	see: Documentation/devicetree/bindings/interrupt-controller/interrupts.=
txt
> -- adi,conversion-start-gpios: must be the device tree identifier of the =
CONVST pin.
> -		  This logic input is used to initiate conversions on the analog
> -		  input channels. As the line is active high, it should be marked
> -		  GPIO_ACTIVE_HIGH.
> -
> -Optional properties:
> -
> -- reset-gpios: must be the device tree identifier of the RESET pin. If s=
pecified,
> -	       it will be asserted during driver probe. As the line is active h=
igh,
> -	       it should be marked GPIO_ACTIVE_HIGH.
> -- standby-gpios: must be the device tree identifier of the STBY pin. Thi=
s pin is used
> -		to place the AD7606 into one of two power-down modes, Standby mode or
> -		Shutdown mode. As the line is active low, it should be marked
> -		GPIO_ACTIVE_LOW.
> -- adi,first-data-gpios: must be the device tree identifier of the FRSTDA=
TA pin.
> -		    The FRSTDATA output indicates when the first channel, V1, is
> -		    being read back on either the parallel, byte or serial interface.
> -		    As the line is active high, it should be marked GPIO_ACTIVE_HIGH.
> -- adi,range-gpios: must be the device tree identifier of the RANGE pin. =
The polarity on
> -	      this pin determines the input range of the analog input channels.=
 If
> -	      this pin is tied to a logic high, the analog input range is =B110=
V for
> -	      all channels. If this pin is tied to a logic low, the analog inpu=
t range
> -	      is =B15V for all channels. As the line is active high, it should =
be marked
> -	      GPIO_ACTIVE_HIGH.
> -- adi,oversampling-ratio-gpios: must be the device tree identifier of th=
e over-sampling
> -				mode pins. As the line is active high, it should be marked
> -				GPIO_ACTIVE_HIGH.
> -
> -Example:
> -
> -	adc@0 {
> -		compatible =3D "adi,ad7606-8";
> -		reg =3D <0>;
> -		spi-max-frequency =3D <1000000>;
> -		spi-cpol;
> -
> -		avcc-supply =3D <&adc_vref>;
> -
> -		interrupts =3D <25 IRQ_TYPE_EDGE_FALLING>;
> -		interrupt-parent =3D <&gpio>;
> -
> -		adi,conversion-start-gpios =3D <&gpio 17 GPIO_ACTIVE_HIGH>;
> -		reset-gpios =3D <&gpio 27 GPIO_ACTIVE_HIGH>;
> -		adi,first-data-gpios =3D <&gpio 22 GPIO_ACTIVE_HIGH>;
> -		adi,oversampling-ratio-gpios =3D <&gpio 18 GPIO_ACTIVE_HIGH
> -						&gpio 23 GPIO_ACTIVE_HIGH
> -						&gpio 26 GPIO_ACTIVE_HIGH>;
> -		standby-gpios =3D <&gpio 24 GPIO_ACTIVE_LOW>;
> -	};
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml b/=
Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> new file mode 100644
> index 000000000000..509dbe9c84d2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7606.yaml
> @@ -0,0 +1,134 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad7606.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD7606 Simultaneous Sampling ADC
> +
> +maintainers:
> +  - Beniamin Bia <beniamin.bia@analog.com>
> +  - Stefan Popa <stefan.popa@analog.com>
> +
> +description: |
> +  Analog Devices AD7606 Simultaneous Sampling ADC
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad=
7606_7606-6_7606-4.pdf
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/AD=
7616.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad7605-4
> +      - adi,ad7606-8
> +      - adi,ad7606-6
> +      - adi,ad7606-4
> +      - adi,ad7616
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-cpha: true
> +
> +  avcc-supply:
> +    description:
> +      Phandle to the Avcc power supply
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  adi,conversion-start-gpios:
> +    description:
> +      Must be the device tree identifier of the CONVST pin.
> +      This logic input is used to initiate conversions on the analog
> +      input channels. As the line is active high, it should be marked
> +      GPIO_ACTIVE_HIGH.
> +    maxItems: 1
> +
> +  reset-gpios:
> +    description:
> +      Must be the device tree identifier of the RESET pin. If specified,
> +      it will be asserted during driver probe. As the line is active hig=
h,
> +      it should be marked GPIO_ACTIVE_HIGH.
> +    maxItems: 1
> +
> +  standby-gpios:
> +    description:
> +       Must be the device tree identifier of the STBY pin. This pin is u=
sed
> +       to place the AD7606 into one of two power-down modes, Standby mod=
e or
> +       Shutdown mode. As the line is active low, it should be marked
> +       GPIO_ACTIVE_LOW.
> +    maxItems: 1
> +
> +  adi,first-data-gpios:
> +    description:
> +      Must be the device tree identifier of the FRSTDATA pin.
> +      The FRSTDATA output indicates when the first channel, V1, is
> +      being read back on either the parallel, byte or serial interface.
> +      As the line is active high, it should be marked GPIO_ACTIVE_HIGH.
> +    maxItems: 1
> +
> +  adi,range-gpios:
> +    description:
> +      Must be the device tree identifier of the RANGE pin. The polarity =
on
> +      this pin determines the input range of the analog input channels. =
If
> +      this pin is tied to a logic high, the analog input range is =B110V=
 for
> +      all channels. If this pin is tied to a logic low, the analog input=
 range
> +      is =B15V for all channels. As the line is active high, it should b=
e marked
> +      GPIO_ACTIVE_HIGH.
> +    maxItems: 1
> +
> +  adi,oversampling-ratio-gpios:
> +    description:
> +      Must be the device tree identifier of the over-sampling
> +      mode pins. As the line is active high, it should be marked
> +      GPIO_ACTIVE_HIGH.
> +    maxItems: 1
> +
> +  adi,sw-mode:
> +    description:
> +      Software mode of operation, so far available only for ad7616.
> +      It is enabled when all three oversampling mode pins are connected =
to
> +      high level. The device is configured by the corresponding register=
s. If the
> +      adi,oversampling-ratio-gpios property is defined, then the driver =
will set the
> +      oversampling gpios to high. Otherwise, it is assumed that the pins=
 are hardwired
> +      to VDD.
> +    maxItems: 1

Drop this. Doesn't make sense as a boolean can't be an array. I have a =

meta-schema check for this pending.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
