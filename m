Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF55148BAAC
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jan 2022 23:20:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B479040917;
	Tue, 11 Jan 2022 22:20:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oaU0S3NpQack; Tue, 11 Jan 2022 22:20:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E769E40918;
	Tue, 11 Jan 2022 22:20:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 07E811BF32E
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 22:20:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E900340915
 for <devel@linuxdriverproject.org>; Tue, 11 Jan 2022 22:20:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BOVjxv2gDQZ9 for <devel@linuxdriverproject.org>;
 Tue, 11 Jan 2022 22:19:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
 [209.85.167.173])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8EE5940914
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 22:19:59 +0000 (UTC)
Received: by mail-oi1-f173.google.com with SMTP id s9so969968oib.11
 for <devel@driverdev.osuosl.org>; Tue, 11 Jan 2022 14:19:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=506v6Xprj7syTiQqAlY2fnFjDQjng6ljCNvJOQAD9zo=;
 b=vki602vThWw0f79ZykvR8rERxk49T0LhWCYFhe5ILSSMMgKs8IM0K3V/+/LqCBTaUx
 WPgghVsDmloCOq7WRchgEbFdUTKn8dsZCerC874YIfkbif1qhpjBmFbAj2m5L9ehuJul
 3EUFK5+9tuVWFePr4zAPeM/KpWBXncOa/5LhKfT6Q6nLQXuXfjoG+SWzTsOUzkdk+U9X
 9mocv0/IayfuGBr096k0b7MV90byh6SfYOuQQZW5GyVtdBJChqjrHpHCRLoHujLAF8bI
 11AVqjdZ24EB//st2oMNDJHdUCIdGHHDuiBT5DZlajTxK8z4Eb8rGPXkLnVbUGWDzuvz
 9VuA==
X-Gm-Message-State: AOAM532BLhYACNriIJbnC/XsK21c2b8vhczu9mSNQeBzQ82DeQnCKzLE
 ngtRQnCplqJUelCePIuClg==
X-Google-Smtp-Source: ABdhPJwlX38O3DGL+NuOlvDakdHxI9C2ckidPXRJYVTVfZQQ2Xe2mIuLqk3juKG5iI2Ir2d7KTBkKA==
X-Received: by 2002:a05:6808:48a:: with SMTP id
 z10mr3208208oid.137.1641939598502; 
 Tue, 11 Jan 2022 14:19:58 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id g25sm2134008oou.12.2022.01.11.14.19.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 Jan 2022 14:19:57 -0800 (PST)
Received: (nullmailer pid 3605690 invoked by uid 1000);
 Tue, 11 Jan 2022 22:19:56 -0000
Date: Tue, 11 Jan 2022 16:19:56 -0600
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v9 02/24] dt-bindings: introduce silabs,wfx.yaml
Message-ID: <Yd4CjAM+3/PmLSyY@robh.at.kernel.org>
References: <20220111171424.862764-1-Jerome.Pouiller@silabs.com>
 <20220111171424.862764-3-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220111171424.862764-3-Jerome.Pouiller@silabs.com>
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

On Tue, Jan 11, 2022 at 06:14:02PM +0100, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Prepare the inclusion of the wfx driver in the kernel.
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  .../bindings/net/wireless/silabs,wfx.yaml     | 138 ++++++++++++++++++
>  1 file changed, 138 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/silabs=
,wfx.yaml
> =

> diff --git a/Documentation/devicetree/bindings/net/wireless/silabs,wfx.ya=
ml b/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
> new file mode 100644
> index 000000000000..d12f262868cf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
> @@ -0,0 +1,138 @@
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
> +
> +  The WF200 can be connected via SPI or via SDIO.
> +
> +  For SDIO:
> +
> +    Declaring the WFxxx chip in device tree is mandatory (usually, the V=
ID/PID is
> +    sufficient for the SDIO devices).
> +
> +    It is recommended to declare a mmc-pwrseq on SDIO host above WFx. Wi=
thout
> +    it, you may encounter issues during reboot. The mmc-pwrseq should be
> +    compatible with mmc-pwrseq-simple. Please consult
> +    Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml for more
> +    information.
> +
> +  For SPI:
> +
> +    In add of the properties below, please consult
> +    Documentation/devicetree/bindings/spi/spi-controller.yaml for option=
al SPI
> +    related properties.
> +
> +properties:
> +  compatible:
> +    anyOf:
> +      - const: silabs,wf200    # Chip alone without antenna
> +      - const: silabs,brd4001a # WGM160P Evaluation Board
> +      - const: silabs,brd8022a # WF200 Evaluation Board
> +      - const: silabs,brd8023a # WFM200 Evaluation Board

This still defines that compatible is a single entry. You need something =

like:

items:
  - enum:
      - silabs,brd4001a
      - silabs,brd8022a
      - silabs,brd8023a
  - const: silabs,wf200

You need a separate 'items' list for different number of compatible =

entries (e.g. if a single string is valid) and that is when you need to =

use 'oneOf'. Plenty of examples in the tree.

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

Unless there is a mode you can configure, supporting both is wrong even =

though edge will mostly work for a device that is really level.

What a driver supports is not relevant to the binding.

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

What legacy? This is a new binding.

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
> +  silabs,antenna-config-file:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: Use an alternative file for antenna configuration (aka
> +      "Platform Data Set" in Silabs jargon). Default depends of "compati=
ble"
> +      string. For "silabs,wf200", the default is 'wf200.pds'.
> +
> +  local-mac-address: true
> +
> +  mac-address: true
> +
> +additionalProperties: false
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

spi {

> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        wifi@0 {
> +            compatible =3D "silabs,brd4001a", "silabs,wf200";
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

mmc {

> +        mmc-pwrseq =3D <&wfx_pwrseq>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        wifi@1 {
> +            compatible =3D "silabs,brd8022a", "silabs,wf200";
> +            pinctrl-names =3D "default";
> +            pinctrl-0 =3D <&wfx_wakeup>;
> +            reg =3D <1>;
> +            wakeup-gpios =3D <&gpio 12 GPIO_ACTIVE_HIGH>;
> +        };
> +    };
> +...
> -- =

> 2.34.1
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
