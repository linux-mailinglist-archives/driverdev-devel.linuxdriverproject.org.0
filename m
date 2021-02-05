Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5E6311524
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Feb 2021 23:26:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC5328737E;
	Fri,  5 Feb 2021 22:26:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eFDEBms7Tik9; Fri,  5 Feb 2021 22:26:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1FA4787376;
	Fri,  5 Feb 2021 22:26:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D1971BF576
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:26:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2AA0A203BE
 for <devel@linuxdriverproject.org>; Fri,  5 Feb 2021 22:26:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xEUCbIkIvwn7 for <devel@linuxdriverproject.org>;
 Fri,  5 Feb 2021 22:26:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com
 [209.85.210.50])
 by silver.osuosl.org (Postfix) with ESMTPS id 670D0203A5
 for <devel@driverdev.osuosl.org>; Fri,  5 Feb 2021 22:26:09 +0000 (UTC)
Received: by mail-ot1-f50.google.com with SMTP id d7so6155598otq.6
 for <devel@driverdev.osuosl.org>; Fri, 05 Feb 2021 14:26:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FU+UCOFQQYVXfS0+LCrISl1mGUUH7pHKT1RulCQQqCk=;
 b=bETy0DK10PvAxEhXgJj5L4AKWVYEV5YgtPVlVKrWR2cqPejsaM8DCAkNdhPxNls51c
 gnc7Qx+Ijk+/zLEk/HhT0Rcd6QFyaJjnQEaxL4tMBzCLpkpiohaW2omTOHw9k6rUw42a
 giHnvpmNZGy/vSQ5MwwsDb6UFkSdkw2fiEyrccHkdJq2P3EgQVvPRg0Asd+blYvkcua7
 C+AFowEUS1cmGaAs768t9P4n4ZityBiTL+kLeQkhp59h9esKc5HzLnJqhh10CEeAioX2
 TgRdSBsn5QpbNjm3wr5aDJAoBTgkIoScA8xPUrgv7Jg713Zx/eb6NT2HIEBmiNnQJ3hA
 vq9A==
X-Gm-Message-State: AOAM530ttQidefnZ/QilYstMI5lvBzzQNr+GeIvRzNq2iTesrjobOSIP
 VpAvMyaV9xikf4cUFNrgcw==
X-Google-Smtp-Source: ABdhPJyr1AlIFE4ExmRHCvX9qNXq8/sjd9wV24kKZcLUt9dS+ovyZrQ6nuiOsTAaglcyp92xF8HXfg==
X-Received: by 2002:a9d:37c4:: with SMTP id x62mr5065131otb.87.1612563968681; 
 Fri, 05 Feb 2021 14:26:08 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a63sm2097188otc.75.2021.02.05.14.26.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Feb 2021 14:26:07 -0800 (PST)
Received: (nullmailer pid 3866684 invoked by uid 1000);
 Fri, 05 Feb 2021 22:26:06 -0000
Date: Fri, 5 Feb 2021 16:26:06 -0600
From: Rob Herring <robh@kernel.org>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH v4 18/21] mfd: hi6421-spmi-pmic: move driver from staging
Message-ID: <20210205222606.GA3857395@robh.at.kernel.org>
References: <cover.1611072387.git.mchehab+huawei@kernel.org>
 <e79ffb200c52fc8c8926492cc82ac5dbcda3e3fb.1611072387.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e79ffb200c52fc8c8926492cc82ac5dbcda3e3fb.1611072387.git.mchehab+huawei@kernel.org>
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
 Mayulong <mayulong1@huawei.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Jan 19, 2021 at 05:10:44PM +0100, Mauro Carvalho Chehab wrote:
> This driver is ready for mainstream. So, move it out of staging.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> ---
>  .../mfd/hisilicon,hi6421-spmi-pmic.yaml       | 135 +++++++++
>  MAINTAINERS                                   |   7 +
>  drivers/mfd/Kconfig                           |  15 +
>  drivers/mfd/Makefile                          |   1 +
>  drivers/mfd/hi6421-spmi-pmic.c                | 281 ++++++++++++++++++
>  drivers/staging/hikey9xx/Kconfig              |  16 -
>  drivers/staging/hikey9xx/Makefile             |   1 -
>  drivers/staging/hikey9xx/hi6421-spmi-pmic.c   | 281 ------------------
>  .../hikey9xx/hisilicon,hi6421-spmi-pmic.yaml  | 135 ---------
>  9 files changed, 439 insertions(+), 433 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
>  create mode 100644 drivers/mfd/hi6421-spmi-pmic.c
>  delete mode 100644 drivers/staging/hikey9xx/hi6421-spmi-pmic.c
>  delete mode 100644 drivers/staging/hikey9xx/hisilicon,hi6421-spmi-pmic.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
> new file mode 100644
> index 000000000000..3b23ad56b31a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/hisilicon,hi6421-spmi-pmic.yaml
> @@ -0,0 +1,135 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/hisilicon,hi6421-spmi-pmic.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: HiSilicon 6421v600 SPMI PMIC
> +
> +maintainers:
> +  - Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
> +
> +description: |
> +  HiSilicon 6421v600 should be connected inside a MIPI System Power Management
> +  (SPMI) bus. It provides interrupts and power supply.
> +
> +  The GPIO and interrupt settings are represented as part of the top-level PMIC
> +  node.
> +
> +  The SPMI controller part is provided by
> +  drivers/staging/hikey9xx/hisilicon,hisi-spmi-controller.yaml.
> +
> +properties:
> +  $nodename:
> +    pattern: "pmic@[0-9a-f]"
> +
> +  compatible:
> +    const: hisilicon,hi6421v600-spmi

'-spmi' is redundant.

> +
> +  reg:
> +    maxItems: 1
> +
> +  '#interrupt-cells':
> +    const: 2
> +
> +  interrupt-controller:
> +    description:
> +      Identify that the PMIC is capable of behaving as an interrupt controller.

Don't need a description here.

Don't you need 'interrupts' here to get the interrupts to the host?

> +
> +  gpios:
> +    maxItems: 1

GPIO for what? It's preferred to have a named gpio.

> +
> +  regulators:
> +    type: object
> +
> +    properties:
> +      '#address-cells':
> +        const: 1
> +
> +      '#size-cells':
> +        const: 0
> +
> +    patternProperties:
> +      '^ldo[0-9]+@[0-9a-f]$':
> +        type: object
> +
> +        $ref: "/schemas/regulator/regulator.yaml#"

       additionalProperties: false

Which will give you errors in the example.

> +
> +required:
> +  - compatible
> +  - reg
> +  - regulators
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    /* pmic properties */
> +
> +    pmic: pmic@0 {
> +      compatible = "hisilicon,hi6421-spmi";
> +      reg = <0 0>;
> +
> +      #interrupt-cells = <2>;
> +      interrupt-controller;
> +      gpios = <&gpio28 0 0>;
> +
> +      regulators {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        ldo3: LDO3 {

LDO3: ldo3  {

is preferred and closer to what you defined above.

> +          regulator-name = "ldo3";
> +          regulator-min-microvolt = <1500000>;
> +          regulator-max-microvolt = <2000000>;
> +          regulator-boot-on;
> +        };
> +
> +        ldo4: LDO4 {
> +          regulator-name = "ldo4";
> +          regulator-min-microvolt = <1725000>;
> +          regulator-max-microvolt = <1900000>;
> +          regulator-boot-on;
> +        };
> +
> +        ldo9: LDO9 {
> +          regulator-name = "ldo9";
> +          regulator-min-microvolt = <1750000>;
> +          regulator-max-microvolt = <3300000>;
> +          regulator-boot-on;
> +        };
> +
> +        ldo15: LDO15 {
> +          regulator-name = "ldo15";
> +          regulator-min-microvolt = <1800000>;
> +          regulator-max-microvolt = <3000000>;
> +          regulator-always-on;
> +        };
> +
> +        ldo16: LDO16 {
> +          regulator-name = "ldo16";
> +          regulator-min-microvolt = <1800000>;
> +          regulator-max-microvolt = <3000000>;
> +          regulator-boot-on;
> +        };
> +
> +        ldo17: LDO17 {
> +          regulator-name = "ldo17";
> +          regulator-min-microvolt = <2500000>;
> +          regulator-max-microvolt = <3300000>;
> +        };
> +
> +        ldo33: LDO33 {
> +          regulator-name = "ldo33";
> +          regulator-min-microvolt = <2500000>;
> +          regulator-max-microvolt = <3300000>;
> +          regulator-boot-on;
> +        };
> +
> +        ldo34: LDO34 {
> +          regulator-name = "ldo34";
> +          regulator-min-microvolt = <2600000>;
> +          regulator-max-microvolt = <3300000>;
> +        };
> +      };
> +    };
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
