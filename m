Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49B84298F4F
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 15:30:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6855986820;
	Mon, 26 Oct 2020 14:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pwlzTpk2peYd; Mon, 26 Oct 2020 14:30:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDED986818;
	Mon, 26 Oct 2020 14:30:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 790D51BF2CF
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 703CF2E0EE
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 14:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TpmKBbmI7s61 for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 14:30:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f67.google.com (mail-oo1-f67.google.com
 [209.85.161.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 778782046D
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 14:30:26 +0000 (UTC)
Received: by mail-oo1-f67.google.com with SMTP id p73so1107592oop.7
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 07:30:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=EvODWLSlZb9Skc/iTD6aHWqmQrjOtvrwcbltSN0DUow=;
 b=TdMRc6wnyiABe3MeJFjy29Lc2buTR6RtAPzIO4MfXfrm1pEYwNmqb0t/21uGKfQMFZ
 GDNwNOzVAM+fJdPNK8vsB0tRyVZVzOEyiPXKleSWJFuemvYIlKXpG3ChZALbgC0u2sat
 CVtI7otUBMGxv3cVjg6+chZOGfbawj3KCVKD2Juc0VE9tz1SwLLu08TbIU+TLAP45dAD
 kWOpQhieuT0iVj06bBaB1InutaBJxyFV6IHb1HyohIEq2XbG3PkeJPX3AHhAz2BrF33x
 qSTkcVnXCDlB0o+6IjlkuwnIHzN573vZ2CZiwSsGWysSMwGH6l969lCxXBr66ZhTUO+v
 gbhQ==
X-Gm-Message-State: AOAM530POq21Fc6mZPzDtcIjKgxG1D23WuPs1qh5vqe+EfvW26RxYzuL
 6vshpbsDD/vPhnEDIO5QCA==
X-Google-Smtp-Source: ABdhPJy5jo0OcqXys+08F5mv4GOWXCDsbF7iHCxIexI76vlCOrGJygolE/VWzKBmZPl/afqlzltoDg==
X-Received: by 2002:a4a:c98f:: with SMTP id u15mr14230219ooq.78.1603722625676; 
 Mon, 26 Oct 2020 07:30:25 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b125sm2162575oii.19.2020.10.26.07.30.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Oct 2020 07:30:25 -0700 (PDT)
Received: (nullmailer pid 112408 invoked by uid 1000);
 Mon, 26 Oct 2020 14:30:24 -0000
Date: Mon, 26 Oct 2020 09:30:24 -0500
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v2 02/24] dt-bindings: introduce silabs,wfx.yaml
Message-ID: <20201026143024.GA95610@bogus>
References: <20201020125817.1632995-1-Jerome.Pouiller@silabs.com>
 <20201020125817.1632995-3-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020125817.1632995-3-Jerome.Pouiller@silabs.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 20, 2020 at 02:57:55PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  .../bindings/net/wireless/silabs,wfx.yaml     | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/silabs=
,wfx.yaml
> =

> diff --git a/Documentation/devicetree/bindings/net/wireless/silabs,wfx.ya=
ml b/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
> new file mode 100644
> index 000000000000..2605e9fed185
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
> @@ -0,0 +1,133 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (c) 2020, Silicon Laboratories, Inc.
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/net/wireless/silabs,wfx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Silicon Labs WFxxx devicetree bindings
> +
> +maintainers:
> +  - J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> +
> +description: >
> +  Support for the Wifi chip WFxxx from Silicon Labs. Currently, the only=
 device
> +  from the WFxxx series is the WF200 described here:
> +     https://www.silabs.com/documents/public/data-sheets/wf200-datasheet=
.pdf
> +  =

> +  The WF200 can be connected via SPI or via SDIO.
> +  =

> +  For SDIO:
> +  =

> +    Declaring the WFxxx chip in device tree is mandatory (usually, the V=
ID/PID is
> +    sufficient for the SDIO devices).
> +  =

> +    It is recommended to declare a mmc-pwrseq on SDIO host above WFx. Wi=
thout
> +    it, you may encounter issues during reboot. The mmc-pwrseq should be
> +    compatible with mmc-pwrseq-simple. Please consult
> +    Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.txt for more
> +    information.
> +  =

> +  For SPI:
> +  =

> +    In add of the properties below, please consult
> +    Documentation/devicetree/bindings/spi/spi-controller.yaml for option=
al SPI
> +    related properties.
> +
> +properties:
> +  compatible:
> +    const: silabs,wf200
> +
> +  reg:
> +    description:
> +      When used on SDIO bus, <reg> must be set to 1. When used on SPI bu=
s, it is
> +      the chip select address of the device as defined in the SPI devices
> +      bindings.
> +    maxItems: 1
> +
> +  spi-max-frequency: true
> +
> +  interrupts:
> +    description: The interrupt line. Triggers IRQ_TYPE_LEVEL_HIGH and
> +      IRQ_TYPE_EDGE_RISING are both supported by the chip and the driver=
. When
> +      SPI is used, this property is required. When SDIO is used, the "in=
-band"
> +      interrupt provided by the SDIO bus is used unless an interrupt is =
defined
> +      in the Device Tree.
> +    maxItems: 1
> +
> +  reset-gpios:
> +    description: (SPI only) Phandle of gpio that will be used to reset c=
hip
> +      during probe. Without this property, you may encounter issues with=
 warm
> +      boot. (For legacy purpose, the gpio in inverted when compatible =
=3D=3D
> +      "silabs,wfx-spi")
> +
> +      For SDIO, the reset gpio should declared using a mmc-pwrseq.
> +    maxItems: 1
> +
> +  wakeup-gpios:
> +    description: Phandle of gpio that will be used to wake-up chip. With=
out this
> +      property, driver will disable most of power saving features.
> +    maxItems: 1
> +
> +  config-file:

If this is antenna data/config, then make the property name more =

specific. And it needs a vendor prefix as it is vendor specific.

> +    description: Use an alternative file as PDS. Default is `wf200.pds`.
> +
> +  local-mac-address:
> +    $ref: /net/ethernet-controller.yaml#/properties/local-mac-address
> +
> +  mac-address:
> +    $ref: /net/ethernet-controller.yaml#/properties/mac-address

I'd rather see these properties refactored out to their own file. We =

should probably have a wifi-controller.yaml that has these as well as =

enforcing the node name 'wifi'.

> +
> +additionalProperties: true

What properties? This shouldn't be true. If you need spi-cpol or =

spi-cpha, then you should list those. Really, if the SPI mode of the =

device is fixed, then you should never use those. =


> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    spi0 {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        wfx@0 {
> +            compatible =3D "silabs,wf200";
> +            pinctrl-names =3D "default";
> +            pinctrl-0 =3D <&wfx_irq &wfx_gpios>;
> +            reg =3D <0>;
> +            interrupts-extended =3D <&gpio 16 IRQ_TYPE_EDGE_RISING>;
> +            wakeup-gpios =3D <&gpio 12 GPIO_ACTIVE_HIGH>;
> +            reset-gpios =3D <&gpio 13 GPIO_ACTIVE_LOW>;
> +            spi-max-frequency =3D <42000000>;
> +        };
> +    };
> +
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    wfx_pwrseq: wfx_pwrseq {
> +        compatible =3D "mmc-pwrseq-simple";
> +        pinctrl-names =3D "default";
> +        pinctrl-0 =3D <&wfx_reset>;
> +        reset-gpios =3D <&gpio 13 GPIO_ACTIVE_LOW>;
> +    };
> +
> +    mmc0 {
> +        mmc-pwrseq =3D <&wfx_pwrseq>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        mmc@1 {

wifi@1

> +            compatible =3D "silabs,wf200";
> +            pinctrl-names =3D "default";
> +            pinctrl-0 =3D <&wfx_wakeup>;
> +            reg =3D <1>;
> +            wakeup-gpios =3D <&gpio 12 GPIO_ACTIVE_HIGH>;
> +        };
> +    };
> +...
> -- =

> 2.28.0
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
