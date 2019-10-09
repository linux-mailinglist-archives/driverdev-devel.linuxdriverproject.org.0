Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E77FD0E69
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 14:10:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 72C2688306;
	Wed,  9 Oct 2019 12:10:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TEslNZ67cJwF; Wed,  9 Oct 2019 12:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9F9E2882B0;
	Wed,  9 Oct 2019 12:10:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7513D1BF2B3
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 12:10:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7168222F05
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 12:10:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5OvWnHchER29 for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 12:10:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by silver.osuosl.org (Postfix) with ESMTPS id 5E7A322EE6
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 12:10:08 +0000 (UTC)
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D67CC4FF;
 Wed,  9 Oct 2019 14:10:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1570623005;
 bh=PhDy22LrAQFV8Qw9nKo9Fl2O0XPBZ7UF53kHk9fNHd0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s/OAY4zKq9Khyr4jLxDi3B11juGmESo3MpIm8kqWoJMxRl6UqddUXbz8eJ6PeqIRr
 JSXDUg9LnCqIiqr+PEW9E5W6nOe6rtry1XJ7FehyW8AoInJep7rwxyht1DGFvEiDxJ
 cwIbpMyTXLI1/0JA3Frqj5A4Hz8RmmN8tyj41ig0=
Date: Wed, 9 Oct 2019 15:10:03 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Xin Ji <xji@analogixsemi.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Message-ID: <20191009121003.GM22998@pendragon.ideasonboard.com>
References: <cover.1570588741.git.xji@analogixsemi.com>
 <82d9e3d505699da8f32069844b3cfe7c9fbfd0f1.1570588741.git.xji@analogixsemi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82d9e3d505699da8f32069844b3cfe7c9fbfd0f1.1570588741.git.xji@analogixsemi.com>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Nicolas Boichat <drinkcat@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Sheng Pan <span@analogixsemi.com>,
 Daniel Vetter <daniel@ffwll.ch>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Xin Ji,

Thank you for the patch.

On Wed, Oct 09, 2019 at 09:27:07AM +0000, Xin Ji wrote:
> The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> for portable device. It converts MIPI to DisplayPort 1.3 4K.
> 
> You can add support to your board with binding.
> 
> Example:
> 	anx_bridge: anx7625@58 {
> 		compatible = "analogix,anx7625";
> 		reg = <0x58>;
> 		enable-gpios = <&gpio0 45 GPIO_ACTIVE_LOW>;
> 		reset-gpios = <&gpio0 73 GPIO_ACTIVE_LOW>;
> 		status = "okay";
> 		port@0 {
> 			reg = <0>;
> 			anx7625_1_in: endpoint {
> 				remote-endpoint = <&mipi_dsi_bridge_1>;
> 			};
> 		};
> 	};
> 
> Signed-off-by: Xin Ji <xji@analogixsemi.com>
> ---
>  .../bindings/display/bridge/anx7625.yaml           | 79 ++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> new file mode 100644
> index 0000000..0ef6271
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> @@ -0,0 +1,79 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2019 Analogix Semiconductor, Inc.
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/display/bridge/anx7625.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Analogix ANX7625 SlimPort (4K Mobile HD Transmitter)
> +
> +maintainers:
> +  - Xin Ji <xji@analogixsemi.com>
> +
> +description: |
> +  The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
> +  designed for portable devices.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: analogix,anx7625
> +
> +  reg:
> +    maxItems: 1
> +
> +  hpd-gpios:
> +    description: used for HPD interrupt
> +    maxItems: 1

You explained in your reply to v1 review that this describes the
interrupt generated by the ANX7625. It should be replaced by an
interrupts property.

> +
> +  enable-gpios:
> +    description: used for power on chip control
> +    maxItems: 1
> +
> +  reset-gpios:
> +    description: used for reset chip control
> +    maxItems: 1

Could you please mention the exact name of the corresponding pins on the
chip for enable and reset ?

> +
> +  port@0:
> +    type: object
> +    description:
> +      A port node pointing to MIPI DSI host port node.
> +
> +  port@1:
> +    type: object
> +    description:
> +      A port node pointing to MIPI DPI host port node.
> +
> +  port@2:
> +    type: object
> +    description:
> +      A port node pointing to external connector port node.
> +
> +  port@3:
> +    type: object
> +    description:
> +      A port node pointing to internal panel port node.
> +
> +  port@4:
> +    type: object
> +    description:
> +      A port node pointing to normal eDP port node.

I don't think three output ports is correct. Ports 3 and 4 are really
the same. I'm even unsure about port 2 and 3, someone with better
knowledge of USB-C and DisplayPort would be in a better position to
comment.

> +

You're missing the #address-cells and #size-cells properties required
for the ports. As the device is an I2C device we're lucky that the
parent will specify compatible address and size cells numbers, but I'm
not sure we should rely on that luck.

Rob, how does yaml schema handle this ?

> +required:
> +  - compatible
> +  - reg
> +  - port@0 | port@1
> +
> +example:
> +  - |
> +    anx_bridge: anx7625@58 {

The node name should describe the device's function. How about
encoder@58 ?

> +        compatible = "analogix,anx7625";
> +        reg = <0x58>;
> +        status = "okay";
> +        port@0 {
> +          reg = <0>;
> +          anx7625_1_in: endpoint {
> +            remote-endpoint = <&mipi_dsi_bridge_1>;
> +          };
> +        };
> +    };

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
