Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E17022A0B34
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 17:33:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D4D28689B;
	Fri, 30 Oct 2020 16:33:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a8fmqxhTjfwI; Fri, 30 Oct 2020 16:33:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B2D5C86851;
	Fri, 30 Oct 2020 16:33:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E42561BF280
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 16:33:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C47DB8731C
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 16:33:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iuiYdWbFLYwo for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 16:33:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BADDD8730D
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 16:33:39 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id s21so7277078oij.0
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 09:33:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MwY/vQiiKvOTnY+5d4Wh+IuN2OSwrlDI1QDv3JPHT60=;
 b=oLUyWNS5uSUJgyqZ7YceSScMQRW2by0pmbUmszvWCduIaDFIB1pdsmyF70C199J7Hl
 uXlXZPxgvEBfK3BZBIXodtist+aWTy01J/o9N++pyBFjMfbZtw4eMjnMNB7FxaESvMai
 iJf+IqYXNh1X+NbSjmw4QmP4El4UsnEka+sSUD8YIjbzWxU6DQcNqufFSFcwGkQA2zFc
 lBoR7uY9ymNqM0hblQb8dxhCX8gG0hOTvmFSe7E0bznEbkHXri8R1y3CPyCD3TfF65VH
 7R6gkj861qiWxMFGAEYWeS7llO/zhlWZXIY6Pf1osp39sPugGE/gQFi0ZgozIWX/NAM7
 eimA==
X-Gm-Message-State: AOAM533x9wNAabAnpjQdUyajOCR4Se68kBOPHkUA4ZSYkwCHoBOO4zzJ
 ZWgFBzUsr+Y7xXNs5Y0YWQ==
X-Google-Smtp-Source: ABdhPJy1NHaacIWHlnsek2tAF8Q1rBIIxcawIvq0Pez4qO1EJ2wmCFxJGI5JBYbP/xiW+nLe4IG4XA==
X-Received: by 2002:aca:d401:: with SMTP id l1mr702570oig.96.1604075618577;
 Fri, 30 Oct 2020 09:33:38 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id h135sm1509717oib.23.2020.10.30.09.33.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Oct 2020 09:33:37 -0700 (PDT)
Received: (nullmailer pid 3958664 invoked by uid 1000);
 Fri, 30 Oct 2020 16:33:36 -0000
Date: Fri, 30 Oct 2020 11:33:36 -0500
From: Rob Herring <robh@kernel.org>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 07/14] dt-bindings: media: i2c: Add A31 MIPI CSI-2
 bindings documentation
Message-ID: <20201030163336.GA3909744@bogus>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-8-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023174546.504028-8-paul.kocialkowski@bootlin.com>
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
 Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-sunxi@googlegroups.com,
 Vinod Koul <vkoul@kernel.org>, Yong Deng <yong.deng@magewell.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Oct 23, 2020 at 07:45:39PM +0200, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the A31 MIPI CSI-2
> controller.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun6i-a31-mipi-csi2.yaml  | 168 ++++++++++++++++++
>  1 file changed, 168 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> new file mode 100644
> index 000000000000..9adc0bc27033
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun6i-a31-mipi-csi2.yaml
> @@ -0,0 +1,168 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/allwinner,sun6i-a31-mipi-csi2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A31 MIPI CSI-2 Device Tree Bindings
> +
> +maintainers:
> +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: allwinner,sun6i-a31-mipi-csi2
> +      - items:
> +          - const: allwinner,sun8i-v3s-mipi-csi2
> +          - const: allwinner,sun6i-a31-mipi-csi2
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Bus Clock
> +      - description: Module Clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +
> +  phys:
> +    items:
> +      - description: MIPI D-PHY
> +
> +  phy-names:
> +    items:
> +      - const: dphy
> +
> +  resets:
> +    maxItems: 1
> +
> +  # See ./video-interfaces.txt for details
> +  ports:
> +    type: object
> +
> +    properties:
> +      port@0:
> +        type: object
> +        description: Input port, connect to a MIPI CSI-2 sensor
> +
> +        properties:
> +          reg:
> +            const: 0
> +
> +          endpoint:
> +            type: object
> +
> +            properties:
> +              remote-endpoint: true
> +
> +              bus-type:
> +                const: 4
> +
> +              clock-lanes:
> +                maxItems: 1
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4
> +
> +            required:
> +              - bus-type
> +              - data-lanes
> +              - remote-endpoint
> +
> +            additionalProperties: false
> +
> +        required:
> +          - endpoint
> +
> +        additionalProperties: false
> +
> +      port@1:
> +        type: object
> +        description: Output port, connect to a CSI controller
> +
> +        properties:
> +          reg:
> +            const: 1
> +
> +          endpoint:
> +            type: object
> +
> +            properties:
> +              remote-endpoint: true
> +
> +              bus-type:
> +                const: 4
> +
> +            additionalProperties: false
> +
> +        required:
> +          - endpoint
> +
> +        additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - resets
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/sun8i-v3s-ccu.h>
> +    #include <dt-bindings/reset/sun8i-v3s-ccu.h>
> +
> +    mipi_csi2: mipi-csi2@1cb1000 {

I agree with using 'csi' here as that is at least aligned with 'dsi' 
meaning the host side of the protocol. We've not been consistent here...

> +        compatible = "allwinner,sun8i-v3s-mipi-csi2",
> +                     "allwinner,sun6i-a31-mipi-csi2";
> +        reg = <0x01cb1000 0x1000>;
> +        interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&ccu CLK_BUS_CSI>,
> +                 <&ccu CLK_CSI1_SCLK>;
> +        clock-names = "bus", "mod";
> +        resets = <&ccu RST_BUS_CSI>;
> +
> +        phys = <&dphy>;
> +        phy-names = "dphy";
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            mipi_csi2_in: port@0 {
> +                reg = <0>;
> +
> +                mipi_csi2_in_ov5648: endpoint {
> +                    bus-type = <4>; /* MIPI CSI-2 D-PHY */
> +                    clock-lanes = <0>;
> +                    data-lanes = <1 2 3 4>;
> +
> +                    remote-endpoint = <&ov5648_out_mipi_csi2>;
> +                };
> +            };
> +
> +            mipi_csi2_out: port@1 {
> +                reg = <1>;
> +
> +                mipi_csi2_out_csi0: endpoint {
> +                    bus-type = <4>; /* MIPI CSI-2 D-PHY */
> +                    remote-endpoint = <&csi0_in_mipi_csi2>;
> +                };
> +            };
> +        };
> +    };
> +
> +...
> -- 
> 2.28.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
