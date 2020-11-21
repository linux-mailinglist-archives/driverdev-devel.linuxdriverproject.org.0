Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D81322BBF4A
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Nov 2020 14:34:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5374286B87;
	Sat, 21 Nov 2020 13:34:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cv8EOVH_BDyS; Sat, 21 Nov 2020 13:34:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6C5186A94;
	Sat, 21 Nov 2020 13:34:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2A8B1BF3D8
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 13:34:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7BC886A44
 for <devel@linuxdriverproject.org>; Sat, 21 Nov 2020 13:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hrQnuWquZ85m for <devel@linuxdriverproject.org>;
 Sat, 21 Nov 2020 13:34:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E5F4F85876
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 13:34:37 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id z3so9323470qtw.9
 for <devel@driverdev.osuosl.org>; Sat, 21 Nov 2020 05:34:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gVAJN3AITwJvYURT465dFmxb9SQx6ktbmJd5dcXuwwU=;
 b=adEVcT/yKVlQitH9q1u09dJC1v4CyZnzY0kyFLvPW9VePfj9aHZvYV3GxsIiYa+k/R
 d2+3l7KsLGs+rX+Mg+Z3Dd3F8LBa/dEdW9AkPU+/GQjpie6iWR1JYWAaNyxxTiI6hUdU
 Zbx82EYIrgnRxBue9bkdBq/m2GuCsu8/k3q7YKFgAteW1p1ZqUYr4a5a73ptEhZ0GpfK
 g6TMYdvYoc8yFNr63qIZ5Fb2Oy+VpPD41BP6JeDaDRdws8VDh1BfrdOQqbM+olOE1KQ8
 2JHeVOug+tfhbsIvMhozWrGr4vgQwwJqA2qXbr4I9NfYDL3vcnScjDuJKPYt5F9hKNmj
 KEJw==
X-Gm-Message-State: AOAM533FVJqQTRrVWcFFi8FaUZoTGh7fCUwenuMBIDnPol5oIWsRu3v9
 HxFFDW463FtWhSy1EHlNwA==
X-Google-Smtp-Source: ABdhPJx5FaScR8LbbgLNVhfSP1f40wIxs3ggHXH6U2c+ZXNwF+ZKW/Qpy1J3pcV71zl1Za4iy9VZ0g==
X-Received: by 2002:aed:3207:: with SMTP id y7mr11094308qtd.217.1605965676826; 
 Sat, 21 Nov 2020 05:34:36 -0800 (PST)
Received: from xps15 ([172.58.99.237])
 by smtp.gmail.com with ESMTPSA id d82sm3896505qkc.14.2020.11.21.05.34.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Nov 2020 05:34:36 -0800 (PST)
Received: (nullmailer pid 2134377 invoked by uid 1000);
 Sat, 21 Nov 2020 13:34:32 -0000
Date: Sat, 21 Nov 2020 07:34:32 -0600
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v3 2/5] dt: bindings: add mt7621-clk device tree binding
 documentation
Message-ID: <20201121133432.GA2130098@robh.at.kernel.org>
References: <20201113154632.24973-1-sergio.paracuellos@gmail.com>
 <20201113154632.24973-3-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201113154632.24973-3-sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, devicetree@vger.kernel.org, tsbogend@alpha.franken.de,
 sboyd@kernel.org, gregkh@linuxfoundation.org, mturquette@baylibre.com,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 jiaxun.yang@flygoat.com, linux-mips@vger.kernel.org, john@phrozen.org,
 neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Nov 13, 2020 at 04:46:29PM +0100, Sergio Paracuellos wrote:
> Adds device tree binding documentation for clocks in the
> MT7621 SOC.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../bindings/clock/mediatek,mt7621-clk.yaml   | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> new file mode 100644
> index 000000000000..363bd9880e29
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> @@ -0,0 +1,61 @@
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
> +  ralink,sysctl:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      phandle to the syscon which is in the same address area with syscon
> +      device.
> +
> +  "#clock-cells":
> +    description:
> +      The first cell indicates the clock gate number, see [1] for available
> +      clocks.
> +    const: 1
> +
> +  clock-output-names:
> +    maxItems: 8
> +
> +required:
> +  - compatible
> +  - ralink,sysctl
> +  - '#clock-cells'
> +  - clock-output-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/mt7621-clk.h>
> +
> +    pll {
> +      compatible = "mediatek,mt7621-clk";
> +      ralink,sysctl = <&sysc>;

If this is the only control interface, then make this a child of 'sysc'. 
And use 'reg' if there's a dedicated range of registers.

> +      #clock-cells = <1>;
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
