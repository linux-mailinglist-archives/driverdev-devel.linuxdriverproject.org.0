Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0086D2E8239
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Dec 2020 23:38:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 13A6920489;
	Thu, 31 Dec 2020 22:38:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ouhvlR1bKSEP; Thu, 31 Dec 2020 22:38:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F3F8720488;
	Thu, 31 Dec 2020 22:38:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2207F1BF29E
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 22:38:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 184E78678A
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 22:38:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jy3dJJnXvJDC for <devel@linuxdriverproject.org>;
 Thu, 31 Dec 2020 22:38:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com
 [209.85.166.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1477686788
 for <devel@driverdev.osuosl.org>; Thu, 31 Dec 2020 22:38:47 +0000 (UTC)
Received: by mail-il1-f170.google.com with SMTP id r17so18300795ilo.11
 for <devel@driverdev.osuosl.org>; Thu, 31 Dec 2020 14:38:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=An3yvvM30RFSSdQsTF6nqBc3O8X7QGJ6M/oMxqoqkDg=;
 b=nxEVUK2eas/bgwrrN3MNb6FJ5nS3sYaFtFT3EFipuD0DXFzNGb38ljU5AsenTUxfU3
 QywcgNN8Ul+/o39OvflhqW2+wnz5pqEmVta/+J0idSOSWcAl24wAAZB5rIOz/bK1t2zX
 VsNyo11LXZnnxcgWZdKbq6J8CxRA67AED7nPFTH6U3XM5haNHVG8kr1f72+twIQh6vdc
 Dxx6Ren1NBeZzIKmYdnh5bdDtrI291to3e9ZpEQdFenZfsTQSOtKzaqeup2ftF7vUrxe
 qTq01bpN2Y4ivyYr0dtvQh8vSWQmvJwAMyI55LBtGqYWLk+b6RtgB4ivOT86oc7Q2PjT
 PpPw==
X-Gm-Message-State: AOAM533W3beSOsCisBpMkavPRzDEa1TdkoaQfLLr/9sgojeS6/iKL7oX
 x3otzvUeNoSLZ4MfQDE36g==
X-Google-Smtp-Source: ABdhPJwygH2C/u5I/SjE5VeC8cY1a79JkJGb77NCs+fguLBs7jezfjqi4R48w8/4D9Xk0nvHBtGSJQ==
X-Received: by 2002:a92:9510:: with SMTP id y16mr58767465ilh.26.1609454326373; 
 Thu, 31 Dec 2020 14:38:46 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id h2sm31671377ili.56.2020.12.31.14.38.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Dec 2020 14:38:45 -0800 (PST)
Received: (nullmailer pid 2505330 invoked by uid 1000);
 Thu, 31 Dec 2020 22:38:43 -0000
Date: Thu, 31 Dec 2020 15:38:43 -0700
From: Rob Herring <robh@kernel.org>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Subject: Re: [PATCH v5 2/6] dt: bindings: add mt7621-clk device tree binding
 documentation
Message-ID: <20201231223843.GA2494920@robh.at.kernel.org>
References: <20201220093724.4906-1-sergio.paracuellos@gmail.com>
 <20201220093724.4906-3-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201220093724.4906-3-sergio.paracuellos@gmail.com>
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
 sboyd@kernel.org, gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org, john@phrozen.org,
 neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, Dec 20, 2020 at 10:37:20AM +0100, Sergio Paracuellos wrote:
> Adds device tree binding documentation for clocks in the
> MT7621 SOC.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../bindings/clock/mediatek,mt7621-clk.yaml   | 52 +++++++++++++++++++
>  1 file changed, 52 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> new file mode 100644
> index 000000000000..f58d01bdc82c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/mediatek,mt7621-clk.yaml
> @@ -0,0 +1,52 @@
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
> +  clock-output-names:
> +    maxItems: 8
> +
> +required:
> +  - compatible
> +  - '#clock-cells'
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
> +      clock-output-names = "xtal", "cpu", "bus",
> +                           "50m", "125m", "150m",
> +                           "250m", "270m";

How do you access this h/w. There's nothing defined like 'reg' or 
a parent node or...

The suggestion on v4 was to get rid of the child node by merging it with 
the parent like this:

+    sysc: sysc@0 {
+      compatible = "mediatek,mt7621-sysc", "syscon";
+      reg = <0x0 0x100>;
+      #clock-cells = <1>;
+      clock-output-names = "xtal", "cpu", "bus",
+                             "50m", "125m", "150m",
+                             "250m", "270m";
+    };

Whether you need child nodes or not really depends on what all is in the 
'mt7621-sysc' h/w block.

Rob
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
