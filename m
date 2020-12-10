Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEE82D5C30
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 14:47:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7220C8738C;
	Thu, 10 Dec 2020 13:47:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSyA01kWaFfa; Thu, 10 Dec 2020 13:47:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2F9787155;
	Thu, 10 Dec 2020 13:47:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4AA251BF867
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 13:47:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4528F86845
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 13:47:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DMNXecfy6Ng5 for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 13:47:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com
 [209.85.161.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A1723863DE
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 13:47:25 +0000 (UTC)
Received: by mail-oo1-f65.google.com with SMTP id s1so1281418oon.2
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 05:47:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=rtPwb/iP58uu5ke6NQGygRXL/HSwc+xhqrdX/apPstE=;
 b=f1kGsFuG4Q7SdQOO+XkFAwd4VRaEDVP59A7VdTNIezW7dMTkA43dFuCf7aDNHGUCbQ
 dCsV+y+y9xAve12IOG49N8Qdr/FMbludNFs8eye7j25hTKGzFQMeco9/7J8U/7ONWJMd
 eD1KEXkf1LqAQyedYyz1B/Wsuo4TzpbsdEsvN+UACR8tXgCfcbRhhSvAGoVQcH9c3Xpm
 AC5nlSwVH+2FbyC3AZixiHj2tn0Z/DNEUXKV6XnucHBHWVHPAkP06S98DeYoJ1LCFbds
 VyDEsJto3qQJwZ78WJbqsziGsKicAXpcL5u2zx2nwedmrdPpb16097GgzItRnTbtlR5H
 /QNg==
X-Gm-Message-State: AOAM531qgjd3PR7g+l64cq3YZe8XeIfHe1zsC8Puz+oDdTGDE3x4wFOY
 GQv2yzzSXYzs2SJkIH1HUQ==
X-Google-Smtp-Source: ABdhPJx+Mb7Jx52bQ8gbRBeBuQw/kRP2h9E+j6aq/s74LN1EPUW5/qqTCA/ukWVzOO/mOLgPzhlS+Q==
X-Received: by 2002:a4a:6f01:: with SMTP id h1mr4143678ooc.88.1607608044877;
 Thu, 10 Dec 2020 05:47:24 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v13sm1006381oic.17.2020.12.10.05.47.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 05:47:24 -0800 (PST)
Received: (nullmailer pid 2404051 invoked by uid 1000);
 Thu, 10 Dec 2020 13:47:22 -0000
Date: Thu, 10 Dec 2020 07:47:22 -0600
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: rt2880: add binding document
Message-ID: <20201210134722.GA2398182@robh.at.kernel.org>
References: <20201208075523.7060-1-sergio.paracuellos@gmail.com>
 <20201208075523.7060-2-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201208075523.7060-2-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 08, 2020 at 08:55:22AM +0100, Sergio Paracuellos wrote:
> The commit adds rt2880 compatible node in binding document.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../pinctrl/ralink,rt2880-pinmux.yaml         | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
> new file mode 100644
> index 000000000000..7dea3e26d99e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/ralink,rt2880-pinmux.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Ralink rt2880 pinmux controller
> +
> +maintainers:
> +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> +
> +description:
> +  The rt2880 pinmux can only set the muxing of pin groups. muxing indiviual pins
> +  is not supported. There is no pinconf support.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - ralink,rt2880-pinmux

What's the control interface as you have no 'reg' property.

> +
> +  pinctrl-0:
> +    description:
> +      A phandle to the node containing the subnodes containing default
> +      configurations. This is for pinctrl hogs.
> +
> +  pinctrl-names:
> +    description:
> +      A pinctrl state named "default" can be defined.
> +    const: default

These 2 properties go in consumer nodes.

> +
> +required:
> +  - compatible
> +
> +patternProperties:
> +  '[a-z0-9_-]+':
> +    if:
> +      type: object
> +      description: node for pinctrl.
> +      $ref: "pinmux-node.yaml"
> +    then:

For new bindings, don't do this hack. Just name the nodes '-pins$'

> +      properties:
> +        groups:
> +          description: Name of the pin group to use for the functions.
> +          enum: [i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2, mdio,
> +                 pcie, sdhci]
> +        function:
> +          description: The mux function to select
> +          enum: [gpio, i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2,
> +                 mdio, nand1, nand2, sdhci]

         additionalProperties: false
     
> +
> +additionalProperties: false
> +
> +examples:
> +  # Pinmux controller node
> +  - |
> +    pinctrl {
> +      compatible = "ralink,rt2880-pinmux";
> +      pinctrl-names = "default";
> +      pinctrl-0 = <&state_default>;
> +
> +      state_default: pinctrl0 {
> +      };
> +
> +      i2c_pins: i2c0 {
> +        i2c0 {
> +          groups = "i2c";
> +          function = "i2c";
> +        };
> +      };
> +    };
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
