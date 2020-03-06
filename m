Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7231017C1E9
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Mar 2020 16:35:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 613E188367;
	Fri,  6 Mar 2020 15:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id su6fhr9D3VyV; Fri,  6 Mar 2020 15:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9FDBF88350;
	Fri,  6 Mar 2020 15:35:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 088DB1BF341
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 15:35:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 045FC876FB
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 15:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id esYSzMaTDfoN for <devel@linuxdriverproject.org>;
 Fri,  6 Mar 2020 15:35:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 564A88766A
 for <devel@driverdev.osuosl.org>; Fri,  6 Mar 2020 15:35:30 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com
 [209.85.219.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DB3C2073B
 for <devel@driverdev.osuosl.org>; Fri,  6 Mar 2020 15:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583508930;
 bh=iNFqdKLv+eRvs3H2Mi3RchCyVRMkK9tatJ+t/BU07yk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=iRtX8L9N2ARyt/i4JwDyOinTaKffwSoBdwG2XQievED77xfIsOBUuRbLWg5OznX6Z
 HbgZqkv0uPQ1LlDHbTLY+oID44WU8dj4nvhopLhTynSYXRqnpITMsdGBw4eKOPbzJZ
 TAJk/vvYcGjz4r2UZqPNbtrwahqJZjCJ2VgoC9u8=
Received: by mail-qv1-f47.google.com with SMTP id du17so507787qvb.12
 for <devel@driverdev.osuosl.org>; Fri, 06 Mar 2020 07:35:30 -0800 (PST)
X-Gm-Message-State: ANhLgQ0F+GqDfH/nAoUbuyeXVRBoSCRUDB/ryrgHbYGKJ+an6BnFoB6d
 0RFec0LBtB4TraszLwYSNKghA4/lPuj3FitoVQ==
X-Google-Smtp-Source: ADFU+vuhZOwle3B1BdZhiJMPa1o4Ows241SJR8YEgkbTjVTAQFPyg8WmNmCIyOgO1eykQ9B8gJHEPH/0gdrGV5yipJg=
X-Received: by 2002:ad4:4593:: with SMTP id x19mr3274776qvu.79.1583508929178; 
 Fri, 06 Mar 2020 07:35:29 -0800 (PST)
MIME-Version: 1.0
References: <20200306144400.4269-1-ajay.kathat@microchip.com>
 <20200306144400.4269-2-ajay.kathat@microchip.com>
In-Reply-To: <20200306144400.4269-2-ajay.kathat@microchip.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 6 Mar 2020 09:35:13 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKP-9bBMpkvMfphyAfdeVd44=pYDSOY=fSsx5xYkJPCjA@mail.gmail.com>
Message-ID: <CAL_JsqKP-9bBMpkvMfphyAfdeVd44=pYDSOY=fSsx5xYkJPCjA@mail.gmail.com>
Subject: Re: [PATCH 1/2] staging: wilc1000: use 'interrupts' property instead
 of 'irq-gpio'
To: Ajay.Kathat@microchip.com
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-wireless <linux-wireless@vger.kernel.org>, Adham.Abozaeid@microchip.com,
 Johannes Berg <johannes@sipsolutions.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Mar 6, 2020 at 8:44 AM <Ajay.Kathat@microchip.com> wrote:
>
> From: Ajay Singh <ajay.kathat@microchip.com>
>
> Make use of 'interrupts' property instead of using gpio for handling
> the interrupt as suggested in [1].
>
> [1]. https://lore.kernel.org/linux-wireless/20200303015558.GA6876@bogus/
>
> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> ---
>  .../net/wireless/microchip,wilc1000.yaml      | 79 +++++++++++++++++++
>  .../wilc1000/microchip,wilc1000,sdio.yaml     |  8 +-
>  .../wilc1000/microchip,wilc1000,spi.yaml      |  8 +-

Bindings should be a separate patch.

>  drivers/staging/wilc1000/netdev.c             | 24 ++----
>  drivers/staging/wilc1000/netdev.h             |  1 -
>  drivers/staging/wilc1000/sdio.c               | 31 +++-----
>  drivers/staging/wilc1000/spi.c                | 15 +---
>  drivers/staging/wilc1000/wlan.h               |  1 -
>  8 files changed, 108 insertions(+), 59 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
>
> diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
> new file mode 100644
> index 000000000000..a1914449ad07
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip WILC wireless devicetree bindings
> +
> +maintainers:
> +  - Adham Abozaeid <adham.abozaeid@microchip.com>
> +  - Ajay Singh <ajay.kathat@microchip.com>
> +
> +description:
> +  The wilc1000 chips can be connected via SPI or SDIO. This document
> +  describes the binding to connect wilc devices.
> +
> +properties:
> +  compatible:
> +    const: microchip,wilc1000
> +
> +  spi-max-frequency:
> +    description: Maximum SPI clocking speed of device in Hz.
> +    maxItems: 1

No need to redefine a common property. Just:

spi-max-frequency: true

> +
> +  reg:
> +    description: Chip select address of device.

Drop this.

> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    description: phandle to the clock connected on rtc clock line.
> +    maxItems: 1
> +
> +  clock-names:
> +    const: rtc
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +examples:
> +  - |
> +    spi1: spi@fc018000 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      cs-gpios = <&pioB 21 0>;
> +      wifi@0 {
> +        compatible = "microchip,wilc1000";
> +        spi-max-frequency = <48000000>;
> +        reg = <0>;
> +        interrupt-parent = <&pioC>;
> +        interrupts = <27 0>;
> +        clocks = <&pck1>;
> +        clock-names = "rtc";
> +      };
> +    };
> +
> +  - |
> +    mmc1: mmc@fc000000 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      pinctrl-names = "default";
> +      pinctrl-0 = <&pinctrl_mmc1_clk_cmd_dat0 &pinctrl_mmc1_dat1_3>;
> +      non-removable;
> +      vmmc-supply = <&vcc_mmc1_reg>;
> +      vqmmc-supply = <&vcc_3v3_reg>;
> +      bus-width = <4>;
> +      wifi@0 {
> +        compatible = "microchip,wilc1000";
> +        reg = <0>;
> +        interrupt-parent = <&pioC>;
> +        interrupts = <27 0>;
> +        clocks = <&pck1>;
> +        clock-names = "rtc";
> +      };
> +    };
> diff --git a/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml b/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml
> index b338f569f7e2..9df7327bc668 100644
> --- a/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml
> +++ b/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml

Why aren't you just removing this file and the spi one?

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
