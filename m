Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F0D32F612
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Mar 2021 23:48:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BD801844DF;
	Fri,  5 Mar 2021 22:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tmOLe1JOpiim; Fri,  5 Mar 2021 22:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C71EC8449D;
	Fri,  5 Mar 2021 22:48:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88E951BF324
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 22:48:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 72F9843010
 for <devel@linuxdriverproject.org>; Fri,  5 Mar 2021 22:48:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FUQnvG5rp8TE for <devel@linuxdriverproject.org>;
 Fri,  5 Mar 2021 22:47:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 32CF242FEE
 for <devel@driverdev.osuosl.org>; Fri,  5 Mar 2021 22:47:59 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id l133so4286471oib.4
 for <devel@driverdev.osuosl.org>; Fri, 05 Mar 2021 14:47:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3PmDH/3Q7mXi/NObz8TJWT61R8BEoKRpXo3ei3eRvmA=;
 b=LgmElzHLaNmgSjOHzDILNTsUVJpHFQ8DFsNPDtuWK06F8Qs2vG0nrRcRDyWo7DvJU+
 MYKpbIseHUJQaN9IWX3kZlpc/Y5JPIEHYNyMvw30f71/7KIMyfbp+H1wI2GgcPLGeZNt
 m3cuCH2wnnchVMCX190MMGk1Mck29uWbzmAamv2bdi4Wy6J+TRArmTOvVyk/u0OdT2QL
 KnnwPdDt3cMCG4gNG7PB704eBcJM4/OIC2YgLlTv0qPpLzb9KD+uwUv1XB4DaKeV5Xqs
 3LKuQh81bzf49NRDBFuhMYf7RHXyyklW52GEsuJPhVNvQjQM9dIcmzfgc31o94hpzMpb
 uFiQ==
X-Gm-Message-State: AOAM532GVaZ9UOhHl99xFNm4o+/JoxDZojuCNW/PmQs9uLS3/KtcPelI
 nwu29OzCFFkVjF1uwFQVbQ==
X-Google-Smtp-Source: ABdhPJzomuI9sDgyHbhIt5jV1MXkZ7U7EFJoQTpae3ngwH/RvlkfOIyLVNgz7qXsVpfAgk13hlzUBg==
X-Received: by 2002:aca:4d55:: with SMTP id a82mr8749226oib.23.1614984478279; 
 Fri, 05 Mar 2021 14:47:58 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t145sm842835oie.10.2021.03.05.14.47.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 14:47:57 -0800 (PST)
Received: (nullmailer pid 784017 invoked by uid 1000);
 Fri, 05 Mar 2021 22:47:56 -0000
Date: Fri, 5 Mar 2021 16:47:56 -0600
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v9 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
Message-ID: <20210305224756.GA777984@robh.at.kernel.org>
References: <20210218070709.11932-1-sergio.paracuellos@gmail.com>
 <20210218070709.11932-3-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210218070709.11932-3-sergio.paracuellos@gmail.com>
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
 tsbogend@alpha.franken.de, sboyd@kernel.org, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, john@phrozen.org,
 neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 18, 2021 at 08:07:05AM +0100, Sergio Paracuellos wrote:
> Adds device tree binding documentation for clocks in the
> MT7621 SOC.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../bindings/clock/mediatek,mt7621-clk.yaml   | 66 +++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> new file mode 100644
> index 000000000000..842a0f2c9d40
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> @@ -0,0 +1,66 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/mediatek,mt7621-clk.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MT7621 Clock Device Tree Bindings
> +
> +maintainers:
> +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> +
> +description: |
> +  The MT7621 has a PLL controller from where the cpu clock is provided
> +  as well as derived clocks for the bus and the peripherals. It also
> +  can gate SoC device clocks.
> +
> +  Each clock is assigned an identifier and client nodes use this identifier
> +  to specify the clock which they consume.
> +
> +  All these identifiers could be found in:
> +  [1]: <include/dt-bindings/clock/mt7621-clk.h>.
> +
> +properties:
> +  compatible:
> +    const: mediatek,mt7621-clk
> +
> +  "#clock-cells":
> +    description:
> +      The first cell indicates the clock number, see [1] for available
> +      clocks.
> +    const: 1
> +
> +  ralink,sysctl:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandle of syscon used to control system registers
> +
> +  ralink,memctl:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandle of syscon used to control memory registers

I assume one of these phandles are the main registers for the clocks? 
Make this a child node and drop that phandle.

> +
> +  clock-output-names:
> +    maxItems: 8
> +
> +required:
> +  - compatible
> +  - '#clock-cells'
> +  - ralink,sysctl
> +  - ralink,memctl
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/mt7621-clk.h>
> +
> +    pll {
> +      compatible = "mediatek,mt7621-clk";
> +      #clock-cells = <1>;
> +      ralink,sysctl = <&sysc>;
> +      ralink,memctl = <&memc>;
> +      clock-output-names = "xtal", "cpu", "bus",
> +                           "50m", "125m", "150m",
> +                           "250m", "270m";
> +    };
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
