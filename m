Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50126176A42
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 02:56:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C25E87648;
	Tue,  3 Mar 2020 01:56:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SBD+LFvYAPR8; Tue,  3 Mar 2020 01:56:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 384A987541;
	Tue,  3 Mar 2020 01:56:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BB6881BF2C8
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 01:56:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B674F204ED
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 01:56:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iLLRnUDVFj-K for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 01:56:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 0D6C5204D9
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 01:56:01 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id x19so1438840otp.7
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 17:56:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5wU+iQU10o8A0zqKTfobuWZ7wNf9lzAIbOUXJE7/Vvk=;
 b=EmvZG89wRGIYNFNqyL2ur+2YX/RVXaUwdewkHI/QrcQconxmmRL67qFBVptAfRJ5xL
 OPpPReZf0LLPcC7CkIqb+Na1Gaeb8lbLxf9IKwW0ZeNj7UbL25KoHzfiQGC+U8eZMLLT
 3vGwcSzt/FSLzSk077EgVgE73Gur3ir0LSlhFEYaugTcolhW2PAIw8AaDpHjkcZxKB0l
 7P/HBJVBVGY6znIJxIXgUOmaW2fLjR+CRQt2EEw3HMwxYX8RGtwgsYQqn0uNap6UlRjB
 CzROelTFvsWE28olbgj/Qmz4qWS8bVhwvivMHnm2WtGu4x+eBQ4GnZy1KT/DRP0n65Ls
 9Y6w==
X-Gm-Message-State: ANhLgQ2U3ARxgbaTIRyZflf0obwN287LVYRQEBwp3ugIg6gT9Ngp5h0y
 kdxVo5bVfnskgHR3VYNcoA==
X-Google-Smtp-Source: ADFU+vve24zXbvrJ5KqKxMiEejDGOBgBCPa+DEVNrcccvUHzbaA2GMWwFb4xvxUS9FkHZcCY7jLmTQ==
X-Received: by 2002:a05:6830:108d:: with SMTP id
 y13mr1633603oto.241.1583200560125; 
 Mon, 02 Mar 2020 17:56:00 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s12sm6991570oic.31.2020.03.02.17.55.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 17:55:59 -0800 (PST)
Received: (nullmailer pid 13760 invoked by uid 1000);
 Tue, 03 Mar 2020 01:55:58 -0000
Date: Mon, 2 Mar 2020 19:55:58 -0600
From: Rob Herring <robh@kernel.org>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH v4 16/18] dt: bindings: net: add
 microchip,wilc1000,sdio.yaml
Message-ID: <20200303015558.GA6876@bogus>
References: <20200302163414.4342-1-ajay.kathat@microchip.com>
 <20200302163414.4342-17-ajay.kathat@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302163414.4342-17-ajay.kathat@microchip.com>
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
> Moved '/drivers/staging/wilc1000/microchip,wilc1000,sdio.yaml' to
> 'Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml'.
> 
> Signed-off-by: Ajay Singh <ajay.kathat@microchip.com>
> ---
>  .../net/wireless/microchip,wilc1000,sdio.yaml | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml
> new file mode 100644
> index 000000000000..b338f569f7e2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/wireless/microchip,wilc1000,sdio.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/wireless/microchip,wilc1000,sdio.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip WILC wireless SDIO devicetree bindings
> +
> +maintainers:
> +  - Adham Abozaeid <adham.abozaeid@microchip.com>
> +  - Ajay Singh <ajay.kathat@microchip.com>
> +
> +description:
> +  The wilc1000 chips can be connected via SDIO. The node is used to
> +  specify child node to the SDIO controller that connects the device
> +  to the system.
> +
> +properties:
> +  compatible:
> +    const: microchip,wilc1000-sdio
> +
> +  irq-gpios:

Unless you need GPIO control of the line, use 'interrupts' instead.

> +    description: The GPIO phandle connect to a host IRQ.
> +    maxItems: 1
> +
> +  reg:
> +    description: Slot ID used in the controller.

No, it's the function number. But you can just drop this.

> +    maxItems: 1
> +
> +  clocks:
> +    description: phandle to the clock connected on rtc clock line.
> +    maxItems: 1
> +
> +  bus-width:

I believe this is defined to go in the parent node.

> +    description: The number of data lines wired up the slot.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [1, 4, 8]
> +      - default: 1
> +
> +required:
> +  - compatible
> +  - irq-gpios
> +  - reg
> +
> +examples:
> +  - |
> +    mmc1: mmc@fc000000 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;
> +      pinctrl-names = "default";
> +      pinctrl-0 = <&pinctrl_mmc1_clk_cmd_dat0 &pinctrl_mmc1_dat1_3>;
> +      non-removable;
> +      vmmc-supply = <&vcc_mmc1_reg>;
> +      vqmmc-supply = <&vcc_3v3_reg>;
> +      status = "okay";

Don't show 'status' in examples.

> +      wilc_sdio@0 {

wifi@0

> +        compatible = "microchip,wilc1000-sdio";
> +          irq-gpios = <&pioC 27 0>;
> +          reg = <0>;
> +          clocks = <&pck1>;
> +          clock-names = "rtc_clk";
> +          assigned-clocks = <&pck1>;
> +          assigned-clock-rates = <32768>;
> +          status = "okay";
> +          bus-width = <4>;
> +        };
> +    };
> -- 
> 2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
