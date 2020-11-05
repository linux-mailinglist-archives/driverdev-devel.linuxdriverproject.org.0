Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B582A799D
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 09:49:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 19790870AD;
	Thu,  5 Nov 2020 08:49:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQtl5JyIBO4k; Thu,  5 Nov 2020 08:49:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 82E7F8704B;
	Thu,  5 Nov 2020 08:49:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6001F1BF3C4
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 08:49:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5C73E85633
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 08:49:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jl_3TG7jTT6y for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 08:49:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 142D285277
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 08:49:03 +0000 (UTC)
IronPort-SDR: YAcoXLau4LjLfJmlHKFr5tpuwZRxoUfx7mynh9FpaVJ6ze1rQwHoklcSTpAyqMYlDMlBKuBRhL
 y6Mt5r5G5RpA==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="230976707"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="230976707"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 00:49:02 -0800
IronPort-SDR: zeDz80cwtr5wzyggCKqBu7UeVVw/aWKtbcnIb0FCNl5tR3p10c5Kkq2Q0/T0mSONCICPYxYFiX
 Syy2fs2GyH9Q==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="539303094"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 00:48:57 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 864AA20901; Thu,  5 Nov 2020 10:48:55 +0200 (EET)
Date: Thu, 5 Nov 2020 10:48:55 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 11/14] dt-bindings: media: i2c: Add A83T MIPI CSI-2
 bindings documentation
Message-ID: <20201105084855.GA26150@paasikivi.fi.intel.com>
References: <20201023174546.504028-1-paul.kocialkowski@bootlin.com>
 <20201023174546.504028-12-paul.kocialkowski@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023174546.504028-12-paul.kocialkowski@bootlin.com>
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
 Philipp Zabel <p.zabel@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Helen Koike <helen.koike@collabora.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Yong Deng <yong.deng@magewell.com>, Hans Verkuil <hans.verkuil@cisco.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kevin.lhopital@hotmail.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Paul,

On Fri, Oct 23, 2020 at 07:45:43PM +0200, Paul Kocialkowski wrote:
> This introduces YAML bindings documentation for the A83T MIPI CSI-2
> controller.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  .../media/allwinner,sun8i-a83t-mipi-csi2.yaml | 158 ++++++++++++++++++
>  1 file changed, 158 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
> new file mode 100644
> index 000000000000..2384ae4e7be0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-mipi-csi2.yaml
> @@ -0,0 +1,158 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-mipi-csi2.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Allwinner A83T MIPI CSI-2 Device Tree Bindings
> +
> +maintainers:
> +  - Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> +
> +properties:
> +  compatible:
> +    const: allwinner,sun8i-a83t-mipi-csi2
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
> +      - description: MIPI-specific Clock
> +      - description: Misc CSI Clock
> +
> +  clock-names:
> +    items:
> +      - const: bus
> +      - const: mod
> +      - const: mipi
> +      - const: misc
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

Again, if this is D-PHY only, you can remove this.

> +
> +              clock-lanes:
> +                maxItems: 1
> +
> +              data-lanes:
> +                minItems: 1
> +                maxItems: 4

Does the device support lane reordering? If not, you can remove
clock-lanes.

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

Is it a MIPI CSI-2 D-PHY -> MIPI CSI-2 D-PHY device? I call that "cable".
:-)

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
> +    #include <dt-bindings/clock/sun8i-a83t-ccu.h>
> +    #include <dt-bindings/reset/sun8i-a83t-ccu.h>
> +
> +    mipi_csi2: mipi-csi2@1cb1000 {
> +        compatible = "allwinner,sun8i-a83t-mipi-csi2";
> +        reg = <0x01cb1000 0x1000>;
> +        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&ccu CLK_BUS_CSI>,
> +                 <&ccu CLK_CSI_SCLK>,
> +                 <&ccu CLK_MIPI_CSI>,
> +                 <&ccu CLK_CSI_MISC>;
> +        clock-names = "bus", "mod", "mipi", "misc";
> +        resets = <&ccu RST_BUS_CSI>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            mipi_csi2_in: port@0 {
> +                reg = <0>;
> +
> +                mipi_csi2_in_ov8865: endpoint {
> +                    bus-type = <4>; /* MIPI CSI-2 D-PHY */
> +                    clock-lanes = <0>;
> +                    data-lanes = <1 2 3 4>;
> +
> +                    remote-endpoint = <&ov8865_out_mipi_csi2>;
> +                };
> +            };
> +
> +            mipi_csi2_out: port@1 {
> +                reg = <1>;
> +
> +                mipi_csi2_out_csi: endpoint {
> +                    bus-type = <4>; /* MIPI CSI-2 D-PHY */
> +                    remote-endpoint = <&csi_in_mipi_csi2>;
> +                };
> +            };
> +        };
> +    };
> +
> +...

-- 
Regards,

Sakari Ailus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
