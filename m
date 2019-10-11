Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE88D3FFA
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Oct 2019 14:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 92C5E8803B;
	Fri, 11 Oct 2019 12:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id niV0FIpJrD-E; Fri, 11 Oct 2019 12:54:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 004ED88062;
	Fri, 11 Oct 2019 12:54:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83EB81BF292
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8090D88754
 for <devel@linuxdriverproject.org>; Fri, 11 Oct 2019 12:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NMp0hMEdiIO8 for <devel@linuxdriverproject.org>;
 Fri, 11 Oct 2019 12:54:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 292A488751
 for <devel@driverdev.osuosl.org>; Fri, 11 Oct 2019 12:54:24 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9342E33A;
 Fri, 11 Oct 2019 14:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1570798460;
 bh=na56nwT81kmZAQn4N6ZkIrQhhyjZQWOLU7e1j5mpmBg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ie61FfgLthUz7cPPIMrWn//FPuV8ni004oXZwZUs9TmXAD5EOKer+TRjmhr+4jEkP
 JnusZknG7fUyQT9ey0usVjg95TzG1VuSb/y1IrfSJt61ZzjRZbAMbOX0y0buxw34Au
 3XlVsF26O84xhZEKQaerlgyz5f5Vd1/+dv24MoUA=
Date: Fri, 11 Oct 2019 15:54:18 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: drm/bridge: anx7625: MIPI to DP
 transmitter binding
Message-ID: <20191011125418.GE4882@pendragon.ideasonboard.com>
References: <cover.1570760115.git.xji@analogixsemi.com>
 <CGME20191011022154epcas3p1a719423a23f8bf193b6136e853e66b04@epcas3p1.samsung.com>
 <75bb8a47d2c3c1f979c6d62158c21988b846e79b.1570760115.git.xji@analogixsemi.com>
 <3c6067de-9f3c-b93c-f263-fa5dd09c3270@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3c6067de-9f3c-b93c-f263-fa5dd09c3270@samsung.com>
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
 Sheng Pan <span@analogixsemi.com>, Daniel Vetter <daniel@ffwll.ch>,
 Xin Ji <xji@analogixsemi.com>, Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Andrzej,

On Fri, Oct 11, 2019 at 01:21:43PM +0200, Andrzej Hajda wrote:
> On 11.10.2019 04:21, Xin Ji wrote:
> > The ANX7625 is an ultra-low power 4K Mobile HD Transmitter designed
> > for portable device. It converts MIPI to DisplayPort 1.3 4K.
> >
> > You can add support to your board with binding.
> >
> > Example:
> > 	anx7625_bridge: encoder@58 {
> > 		compatible = "analogix,anx7625";
> > 		reg = <0x58>;
> > 		status = "okay";
> > 		panel-flags = <1>;
> > 		enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> > 		reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> > 		#address-cells = <1>;
> > 		#size-cells = <0>;
> >
> > 		port@0 {
> > 		  reg = <0>;
> > 		  anx_1_in: endpoint {
> > 		    remote-endpoint = <&mipi_dsi>;
> > 		  };
> > 		};
> >
> > 		port@3 {
> > 		  reg = <3>;
> > 		  anx_1_out: endpoint {
> > 		    remote-endpoint = <&panel_in>;
> > 		  };
> > 		};
> > 	};
> >
> > Signed-off-by: Xin Ji <xji@analogixsemi.com>
> > ---
> >  .../bindings/display/bridge/anx7625.yaml           | 96 ++++++++++++++++++++++
> >  1 file changed, 96 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > new file mode 100644
> > index 0000000..fc84683
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/anx7625.yaml
> > @@ -0,0 +1,96 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright 2019 Analogix Semiconductor, Inc.
> > +%YAML 1.2
> > +---
> > +$id: "http://devicetree.org/schemas/display/bridge/anx7625.yaml#"
> > +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> > +
> > +title: Analogix ANX7625 SlimPort (4K Mobile HD Transmitter)
> > +
> > +maintainers:
> > +  - Xin Ji <xji@analogixsemi.com>
> > +
> > +description: |
> > +  The ANX7625 is an ultra-low power 4K Mobile HD Transmitter
> > +  designed for portable devices.
> > +
> > +properties:
> > +  "#address-cells": true
> > +  "#size-cells": true
> > +
> > +  compatible:
> > +    items:
> > +      - const: analogix,anx7625
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  panel-flags:
> > +    description: indicate the panel is internal or external
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  enable-gpios:
> > +    description: used for power on chip control, POWER_EN pin D2.
> > +    maxItems: 1
> > +
> > +  reset-gpios:
> > +    description: used for reset chip control, RESET_N pin B7.
> > +    maxItems: 1
> > +
> > +  port@0:
> > +    type: object
> > +    description:
> > +      A port node pointing to MIPI DSI host port node.
> > +
> > +  port@1:
> > +    type: object
> > +    description:
> > +      A port node pointing to MIPI DPI host port node.
> > +
> > +  port@2:
> > +    type: object
> > +    description:
> > +      A port node pointing to external connector port node.
> > +
> > +  port@3:
> > +    type: object
> > +    description:
> > +      A port node pointing to eDP port node.
> 
> 
> Decrypting available product brief[1], there are following physical lines:
> 
> Input:
> 
> - MIPI DSI/DPI - video data, are DSI and DPI lines shared?

It would be much easier if we could have access to more complete
information. I believe the DSI and DPI pins could be muxed, but there
should be more DPI pins than DSI pins.

> 
> - I2S - audio data,
> 
> - I2C - control line,
> 
> - ALERT/INTP - interrupt,
> 
> - USB 3.1 SSRc/Tx - for USB forwarding,
> 
> Output:
> 
> - SS1, SS2,
> 
> - SBU/AUX,
> 
> - CC1/2.
> 
> 
> Having this information I try to understand ports defined by you:
> 
> - port@2 you have defined as pointing to external port, but here the
> port should be rather subnode of ANX7625 - the chip has CC lines, see
> beginning of [2].
> 
> - port@3 describes SS1, SS2 and SBU/AUX lines together, am I right? In
> USB-C binding SBU and SS lines are represented by different ports,
> different approach, but maybe better in this case.

I believe that, when connected to a DP display (either DP or eDP), the
DisplayPort signals are output on SS1 and/or SS2. I this really wonder
if we need two separate ports for this, it seems that port@2 and port@3
should be merged.

> Maybe it would be good to add 2nd example with USB-C port.

That would help with the discussion, yes.

> [1]:
> https://www.analogix.com/system/files/AA-002291-PB-6-ANX7625_ProductBrief.pdf
> 
> [2]: Documentation/devicetree/bindings/connector/usb-connector.txt
> 
> > +
> > +required:
> > +  - "#address-cells"
> > +  - "#size-cells"
> > +  - compatible
> > +  - reg
> > +  - port@0
> > +  - port@3
> > +
> > +example:
> > +  - |
> > +    anx7625_bridge: encoder@58 {
> > +        compatible = "analogix,anx7625";
> > +        reg = <0x58>;
> > +        status = "okay";
> > +        panel-flags = <1>;
> > +        enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
> > +        reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        port@0 {
> > +          reg = <0>;
> > +          anx_1_in: endpoint {
> > +            remote-endpoint = <&mipi_dsi>;
> > +          };
> > +        };
> > +
> > +        port@3 {
> > +          reg = <3>;
> > +          anx_1_out: endpoint {
> > +            remote-endpoint = <&panel_in>;
> > +          };
> > +        };
> > +    };

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
