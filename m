Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5480818D65C
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 18:59:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id CAAC587D98;
	Fri, 20 Mar 2020 17:59:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ujIKwP9+yZYV; Fri, 20 Mar 2020 17:59:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA0F987D93;
	Fri, 20 Mar 2020 17:59:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 869F31BF20B
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 17:59:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 833B925E37
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 17:59:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id teJrKWJEIwQ6 for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 17:59:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com
 [209.85.166.193])
 by silver.osuosl.org (Postfix) with ESMTPS id BC03421511
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 17:59:23 +0000 (UTC)
Received: by mail-il1-f193.google.com with SMTP id d14so6407291ilq.10
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 10:59:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=95Suyv4ag/UW0GMJDUqwKID1E5LJYUXds0iFnK4QjiI=;
 b=YjxWE6kudTL/9L3zuAvjX+8ZRFFQodsh5BPSwr7o/d9BTQHFH8SuApgwwUkXUB+P9c
 zIm84eX4ECdX876/9Z3v2CLdtDpSd3yQLF8teunnSf1+w1vdtAyUgU0OogbToz1ldqcm
 7s1CtHOZfz3SwIDg/WzG4LTtaxcPDtuRe96rR+hRTKjuz3ZHCwcA4jM0HjUJnv0HEF0T
 PxTtPfOcgSuFUwBTPQhq+9F7AKjEv8yTvljPKaJ+VCGDRxw3msgIc6GSdrlhS/ZPZ/X+
 Eu3MUJlBQ4w6NBUlmHAVhYBtDjlyNQ5mk4wVMIMt881L4yy0H6PdqCPikFN7xDlhKOFb
 OLFA==
X-Gm-Message-State: ANhLgQ1ucJItyWLRZ3b+ElUi8JojCBJhd2BH/mpwcJn0Aje/pKqOxBJe
 ZRcCHPgG6QOFrnSiNZELSw==
X-Google-Smtp-Source: ADFU+vt7qmPnUmzTMPbajCklZuNV66re7YCKjK/pSmVBOIAgFLPoaGoK9cfTLRSFh8EnaJJFE/KSYg==
X-Received: by 2002:a92:b61d:: with SMTP id s29mr9370804ili.66.1584727163066; 
 Fri, 20 Mar 2020 10:59:23 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id u77sm2236931ili.35.2020.03.20.10.59.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 10:59:21 -0700 (PDT)
Received: (nullmailer pid 5880 invoked by uid 1000);
 Fri, 20 Mar 2020 17:59:20 -0000
Date: Fri, 20 Mar 2020 11:59:20 -0600
From: Rob Herring <robh@kernel.org>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH v5 16/17] dt: bindings: net: add microchip,wilc1000.yaml
Message-ID: <20200320175920.GA31641@bogus>
References: <20200311121809.5610-1-ajay.kathat@microchip.com>
 <20200311121809.5610-17-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311121809.5610-17-ajay.kathat@microchip.com>
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

On Wed, Mar 11, 2020 at 12:18:50PM +0000, Ajay.Kathat@microchip.com wrote:
> From: Ajay Singh <ajay.kathat@microchip.com>
> 
> This file describes the binding details to connect wilc1000 device. It's
> moved from staging to 'Documentation/devicetree/bindings/net/wireless'
> path.
> 
> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> ---
>  .../net/wireless/microchip,wilc1000.yaml      | 72 +++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
> new file mode 100644
> index 000000000000..bc6cc5d3f347
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000.yaml
> @@ -0,0 +1,72 @@
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
> +  spi-max-frequency: true
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
> +  - interrupts
> +
> +examples:
> +  - |
> +    spi1: spi@fc018000 {

spi {

> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      cs-gpios = <&pioB 21 0>;

Drop this. Not relevant to the example.

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

Drop the label. Either drop the unit address or add a 'reg' property to 
match.

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
> -- 
> 2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
