Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AE228D299
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Oct 2020 18:49:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00BB287B3B;
	Tue, 13 Oct 2020 16:49:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ig6736ikoZwP; Tue, 13 Oct 2020 16:49:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72DC387958;
	Tue, 13 Oct 2020 16:49:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5DCF1BF3F7
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 16:49:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id CF55487AC8
 for <devel@linuxdriverproject.org>; Tue, 13 Oct 2020 16:49:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vm-ZtRQmzZFn for <devel@linuxdriverproject.org>;
 Tue, 13 Oct 2020 16:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id ADF3A87958
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 16:49:37 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id q21so631306ota.8
 for <devel@driverdev.osuosl.org>; Tue, 13 Oct 2020 09:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=t3HNao7Z7e7NuJhBeYuaJzFgEjzmb6YkqhZHsBnqQYs=;
 b=WQTergU3Qu0H/+KJw+UOpde8R7FZ+UorV9rEZAXNy8uXa7RHSrGUoyvm2mSusRMrQ4
 7/SSI0ZzkCJeyo1DweiZuo/mBysKCWo8HxBjczawjTp8mnfsjMOXvCFjhYdHkISeGWwN
 9EqfBAj87d0sbjUrnbGDMXFKIiq6ZsnwY39v0CulMzfYyv8KuLyQIZxcrfatwvHjfh9H
 9ep57T6uBktcpAKD5ozu1zK38gKkRRKmCwViiGlcAtWlNaylGi1cvjtpjnxsceHUPcl1
 Rp6VdBSrKd6+mE5dOdO+Y1ata2fSizWIam3DqoWMd9s1TNKc50pBTmw9nNITgZxXQ4hD
 6dpA==
X-Gm-Message-State: AOAM532OcRgfUEVVn+ExFTZLvlNPAoT+LrT6ZOouZu9Dh+IjzGohKH+T
 P5oPLlxXyt96vLOlCdGiNw==
X-Google-Smtp-Source: ABdhPJyH/mGcnXgbLGg8F+zEGrAXfo+6YioxMnkhPYtvGQU8P7FvyNa+0b5j5ZW/MgdzWOgEDxx/dg==
X-Received: by 2002:a9d:66a:: with SMTP id 97mr390825otn.233.1602607776861;
 Tue, 13 Oct 2020 09:49:36 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a16sm98061otk.39.2020.10.13.09.49.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Oct 2020 09:49:36 -0700 (PDT)
Received: (nullmailer pid 3675125 invoked by uid 1000);
 Tue, 13 Oct 2020 16:49:35 -0000
Date: Tue, 13 Oct 2020 11:49:35 -0500
From: Rob Herring <robh@kernel.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 01/23] dt-bindings: introduce silabs,wfx.yaml
Message-ID: <20201013164935.GA3646933@bogus>
References: <20201012104648.985256-1-Jerome.Pouiller@silabs.com>
 <20201012104648.985256-2-Jerome.Pouiller@silabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201012104648.985256-2-Jerome.Pouiller@silabs.com>
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
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 12, 2020 at 12:46:26PM +0200, Jerome Pouiller wrote:
> From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> =

> Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> ---
>  .../bindings/net/wireless/silabs,wfx.yaml     | 125 ++++++++++++++++++
>  1 file changed, 125 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/silabs=
,wfx.yaml
> =

> diff --git a/Documentation/devicetree/bindings/net/wireless/silabs,wfx.ya=
ml b/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
> new file mode 100644
> index 000000000000..43b5630c0407
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/wireless/silabs,wfx.yaml
> @@ -0,0 +1,125 @@
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
> +description:
> +  The WFxxx chip series can be connected via SPI or via SDIO.

What does this chip do? WiFi or some other wireless?

> +
> +  For SDIO':'
> +
> +    The driver is able to detect a WFxxx chip on SDIO bus by matching it=
s Vendor
> +    ID and Product ID. However, driver will only provide limited feature=
s in
> +    this case. Thus declaring WFxxx chip in device tree is recommended (=
and may
> +    become mandatory in the future).
> +
> +    In addition, it is recommended to declare a mmc-pwrseq on SDIO host =
above
> +    WFx. Without it, you may encounter issues with warm boot. The mmc-pw=
rseq
> +    should be compatible with mmc-pwrseq-simple. Please consult
> +    Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.txt for more
> +    information.
> +
> +  For SPI':'
> +
> +    In add of the properties below, please consult
> +    Documentation/devicetree/bindings/spi/spi-controller.yaml for option=
al SPI
> +    related properties.
> +
> +  Note that in add of the properties below, the WFx driver also supports
> +  `mac-address` and `local-mac-address` as described in
> +  Documentation/devicetree/bindings/net/ethernet.txt

Note what ethernet.txt contains... This should have a $ref to =

ethernet-controller.yaml to express the above.

You can add 'mac-address: true' if you want to be explicit about what =

properties are used.

> +
> +properties:
> +  compatible:
> +    const: silabs,wf200

blank line between each DT property.

> +  reg:
> +    description:
> +      When used on SDIO bus, <reg> must be set to 1. When used on SPI bu=
s, it is
> +      the chip select address of the device as defined in the SPI devices
> +      bindings.
> +    maxItems: 1
> +  spi-max-frequency:
> +    description: (SPI only) Maximum SPI clocking speed of device in Hz.

No need to redefine a common property.

> +    maxItems: 1

Not an array. Just need:

spi-max-frequency: true

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
> +  wakeup-gpios:
> +    description: Phandle of gpio that will be used to wake-up chip. With=
out this
> +      property, driver will disable most of power saving features.
> +    maxItems: 1
> +  config-file:
> +    description: Use an alternative file as PDS. Default is `wf200.pds`.=
 Only
> +      necessary for development/debug purpose.

'firmware-name' is typically what we'd use here. Though if just for =

debug/dev, perhaps do a debugfs interface for this instead. As DT should =

come from the firmware/bootloader, requiring changing the DT for =

dev/debug is not the easiest workflow compared to doing something from =

userspace.

> +    maxItems: 1

Looks like a string, not an array.

> +
> +required:
> +  - compatible
> +  - reg

Will need additionalProperties or unevaluatedProperties depending on =

whether you list out properties from ethernet-controller.yaml or not.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
