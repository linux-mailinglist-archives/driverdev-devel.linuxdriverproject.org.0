Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C6D176A57
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 03:02:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CA269204D9;
	Tue,  3 Mar 2020 02:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zg7Y+kwjkmD8; Tue,  3 Mar 2020 02:02:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 15C4D204F1;
	Tue,  3 Mar 2020 02:02:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E4AB1BF2C8
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 02:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7134E86FB0
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 02:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uxUua9vsXSpK for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 02:02:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BA32A86981
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 02:02:32 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id v19so1438106ote.8
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 18:02:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RtixrG9AQvpOs2d4QLEzLorqikP02pM+UwgYV/xmhrM=;
 b=E/eAF6JGRBr6xTFKJmlBfcIjnm92fOv+Pr1xgjaobIrMicIFdi4DGZHdl5HcsK1Y0T
 +bUdPk50PduwMmvO9qKXbjiGBtMCZLTLPPr5OhXNTcXd35jjUh9A8Y/JHMgQR7iT+W5Q
 E8VQNyuEw0I6XFQZFCoWeMdvxfQTpX4xWDzauI0hH6z2rw61h8lGkkjzCQ8+8SROLpe3
 g8yVaE7lsa1dNUPp+MD69pCUsKgmvSNQr/pMjYzBAJRdSvCT29CN4tqKUaq0NKknjXmh
 S9c86OTTpKs2JbrrHMcoKUKqBnL4YhDJtbpW/rgH92vlBTJebtJoB2HXvriAwOkVdR9z
 1DQg==
X-Gm-Message-State: ANhLgQ0Ud2OfD+g/vGJkjmHWaKL/DdjUQcMZSdlIH92nEOHbH2VTwrRV
 Pwb64M1u2GvYzlncUR1qgg==
X-Google-Smtp-Source: ADFU+vuhYpzQz9XvzyQDfJMuF7vroKr5isl1iZnuLB8Mgo4b7r4I1KCoCpnc42teUBpwzRA0cW6BOA==
X-Received: by 2002:a9d:7695:: with SMTP id j21mr1664602otl.157.1583200951832; 
 Mon, 02 Mar 2020 18:02:31 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w15sm3291374oiw.43.2020.03.02.18.02.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 18:02:31 -0800 (PST)
Received: (nullmailer pid 22840 invoked by uid 1000);
 Tue, 03 Mar 2020 02:02:30 -0000
Date: Mon, 2 Mar 2020 20:02:30 -0600
From: Rob Herring <robh@kernel.org>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH v4 17/18] dt: bindings: net: add
 microchip,wilc1000,spi.yaml
Message-ID: <20200303020230.GA15543@bogus>
References: <20200302163414.4342-1-ajay.kathat@microchip.com>
 <20200302163414.4342-18-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302163414.4342-18-ajay.kathat@microchip.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Venkateswara.Kaja@microchip.com, gregkh@linuxfoundation.org,
 linux-wireless@vger.kernel.org, Nicolas.Ferre@microchip.com,
 Adham.Abozaeid@microchip.com, johannes@sipsolutions.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 02, 2020 at 04:34:40PM +0000, Ajay.Kathat@microchip.com wrote:
> From: Ajay Singh <ajay.kathat@microchip.com>
> 
> Moved '/drivers/staging/wilc1000//microchip,wilc1000,spi.yaml' to
> 'Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml'.

Not a useful changelog.

I think this should be combined with the SDIO version. Details below.

> 
> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> ---
>  .../net/wireless/microchip,wilc1000,spi.yaml  | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml
> new file mode 100644
> index 000000000000..cc8ed64ce627
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,spi.yaml
> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000,spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip WILC wireless SPI devicetree bindings
> +
> +maintainers:
> +  - Adham Abozaeid <adham.abozaeid@microchip.com>
> +  - Ajay Singh <ajay.kathat@microchip.com>
> +
> +description:
> +  The wilc1000 chips can be connected via SPI. This document describes
> +  the binding for the SPI connected module.
> +
> +properties:
> +  compatible:
> +    const: microchip,wilc1000-spi

You can drop '-spi' (and '-sdio'). They don't need to be different 
because they already sit on different buses.

> +
> +  spi-max-frequency:
> +    description: Maximum SPI clocking speed of device in Hz.
> +    maxItems: 1
> +
> +  reg:
> +    description: Chip select address of device.
> +    maxItems: 1
> +
> +  irq-gpios:
> +    description: The GPIO phandle connect to a host IRQ.
> +    maxItems: 1
> +
> +  clocks:
> +    description: phandle to the clock connected on rtc clock line.
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - spi-max-frequency

This should not be required.

> +  - reg
> +  - irq-gpios
> +
> +examples:
> +  - |
> +    spi1: spi@fc018000 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      cs-gpios = <&pioB 21 0>;
> +      status = "okay";
> +      wilc_spi@0 {
> +        compatible = "microchip,wilc1000-spi";
> +        spi-max-frequency = <48000000>;
> +        reg = <0>;
> +        irq-gpios = <&pioC 27 0>;
> +        clocks = <&pck1>;
> +        clock-names = "rtc_clk";

Not documented. '_clk' is redundant.

> +        assigned-clocks = <&pck1>;
> +        assigned-clock-rates = <32768>;

Not documented.

> +        status = "okay";
> +      };
> +    };
> -- 
> 2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
