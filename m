Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D82952EEB44
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Jan 2021 03:28:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CCDF28729A;
	Fri,  8 Jan 2021 02:28:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x6rCJqlBgBI4; Fri,  8 Jan 2021 02:28:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F3638727E;
	Fri,  8 Jan 2021 02:28:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BD6651BF30D
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 02:28:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF14A2E0FD
 for <devel@linuxdriverproject.org>; Fri,  8 Jan 2021 02:28:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJtkVikCqCLT for <devel@linuxdriverproject.org>;
 Fri,  8 Jan 2021 02:28:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180])
 by silver.osuosl.org (Postfix) with ESMTPS id BA77C20428
 for <devel@driverdev.osuosl.org>; Fri,  8 Jan 2021 02:28:17 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id u12so8852755ilv.3
 for <devel@driverdev.osuosl.org>; Thu, 07 Jan 2021 18:28:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=4v0yXGMtjVzg0GR4VJAcMxCAi3C/k0/sDlzwVx/HuwA=;
 b=M9rPLncKfTpksiBOmJC3NsboY6bI6W4TVohl6XrmlmD7CQ9EwsArhjqbyT81bpgpI4
 Z8FvQCwsNwp4dqbCUghYMS+PPIwcrUR3MSHjPEEpvrLxS58pkSldlZ/1UdJChw/EP8/9
 4IRDtAoqfXj5iK2WJSbbhf3TCltKdVmUys31DCiaeaBJb/xBRMPruUSkswWB8Y9tzcP3
 +0G6DMVtsLXTLhhAHMyeQxikHKzSJmY8I0p1U31COfpGFYxQQynMirGohcutcuuPdQQq
 g7w8L9CQyS9M2FR57CpoiNhcqPzNd/cqPFEsZBZyo60Irk68rzUh8kG3rYsK+e/jq+PP
 FUvw==
X-Gm-Message-State: AOAM531NSCW9extVJ29UmC/OHohzCngN8nNQ6KsT0a9gyvA/6TsqAZui
 aW5j90HwAqufarTYmoQXJA==
X-Google-Smtp-Source: ABdhPJyb+2E6oPfTxbL0DlUunHkJR+PHkbpVAfqM8TZJ7y8fTIKJGU5mLf/lOpFwyffXDH0xl2JHsA==
X-Received: by 2002:a92:d6cb:: with SMTP id z11mr1791226ilp.169.1610072897059; 
 Thu, 07 Jan 2021 18:28:17 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id s25sm1419581ioe.27.2021.01.07.18.28.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 18:28:16 -0800 (PST)
Received: (nullmailer pid 1750590 invoked by uid 1000);
 Fri, 08 Jan 2021 02:28:13 -0000
Date: Thu, 7 Jan 2021 19:28:13 -0700
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH v4 02/24] dt-bindings: introduce silabs,wfx.yaml
Message-ID: <20210108022813.GA1747586@robh.at.kernel.org>
References: <20201223153925.73742-1-Jerome.Pouiller@silabs.com>
 <20201223153925.73742-3-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201223153925.73742-3-Jerome.Pouiller@silabs.com>
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

On Wed, Dec 23, 2020 at 04:39:03PM +0100, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>

Commit message?

checkpatch.pl reports trailing whitespace errors.

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
> index 000000000000..487d46c5fdc0
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
> +  silabs,antenna-config-file:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: Use an alternative file for antenna configuration (aka
> +      "Platform Data Set" in Silabs jargon). Default is 'wf200.pds'.
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
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        wifi@0 {
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
> +        wifi@1 {
> +            compatible =3D "silabs,wf200";
> +            pinctrl-names =3D "default";
> +            pinctrl-0 =3D <&wfx_wakeup>;
> +            reg =3D <1>;
> +            wakeup-gpios =3D <&gpio 12 GPIO_ACTIVE_HIGH>;
> +        };
> +    };
> +...
> -- =

> 2.29.2
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
