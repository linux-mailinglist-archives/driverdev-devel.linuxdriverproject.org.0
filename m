Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C74F2A6DAC
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 20:15:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D722860F2;
	Wed,  4 Nov 2020 19:15:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BpjDyLH8Lmfl; Wed,  4 Nov 2020 19:15:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BF3DA860F0;
	Wed,  4 Nov 2020 19:15:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89CDE1BF38E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:15:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76E41203CC
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:15:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DR7POJlMpgTT for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 19:15:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 74A7D203C9
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 19:15:22 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id b2so20342961ots.5
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 11:15:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3ktR9xXAhm5rkXgxzXt3WdwZLIj5Pq6xAAQ/UnvJYVQ=;
 b=kOMpdPtlmv7HljJHBUzVCzcGo1c05p4RtMsKOpKPpry9K9RdSy8be0i0eJbsrjR5vG
 N8WHEBZBmKErOwAovvcrkGlQFmnWzBgrHZhGzSbYoE+Mb6d/0bnA3zo/OunOqICKuQNW
 QBsoRWLJuxH2quWTk9x+jL1eENnctGU8sW8bUbjm/TJS7BA1M6AgH13KyFD0YmxQ5oUp
 7gK/4B+sBVqrHBraGj9UkmVbUvYvEEVznSKMHL+mpNtNSzpTgH0dTRVCnn4GKFQwKiPr
 8Sn2tzAe7aG3HaI20FDRFV1JYe3eIU5hQKNWuM5Podk3v/5Ys/3cdG5RyKnVUIO5GMWS
 UVZQ==
X-Gm-Message-State: AOAM531XvqhrZK3MBVTf0Qg3pLAWB0IgVTvqWoo1H3V/APOTxWZzOlZ6
 Y36Srl4F075BpE27J2eL0A==
X-Google-Smtp-Source: ABdhPJxynEbTDEPWyxdkPjdoSSl8j0qBRbQwd+b7vgHuU/oNQqSspABE21ehLcNPH7MIDU3+IrBepQ==
X-Received: by 2002:a9d:a87:: with SMTP id 7mr14380326otq.29.1604517321660;
 Wed, 04 Nov 2020 11:15:21 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d22sm641493oij.53.2020.11.04.11.15.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 11:15:20 -0800 (PST)
Received: (nullmailer pid 3972094 invoked by uid 1000);
 Wed, 04 Nov 2020 19:15:20 -0000
Date: Wed, 4 Nov 2020 13:15:20 -0600
From: Rob Herring <robh@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v7 1/7] dt-bindings: add documentation of xilinx clocking
 wizard
Message-ID: <20201104191520.GB3967018@bogus>
References: <1604502407-14352-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1604502407-14352-2-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1604502407-14352-2-git-send-email-shubhrajyoti.datta@xilinx.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, mturquette@baylibre.com, git@xilinx.com,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Nov 04, 2020 at 08:36:41PM +0530, Shubhrajyoti Datta wrote:
> Add the devicetree binding for the xilinx clocking wizard.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
> v6:
> Fix a yaml warning
> v7:
> Add vendor prefix speed-grade
> 
>  .../bindings/clock/xlnx,clocking-wizard.yaml       | 65 ++++++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> new file mode 100644
> index 0000000..a19b9bb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/xlnx,clocking-wizard.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx clocking wizard
> +
> +maintainers:
> +  - Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> +
> +description: |
> +  The clocking wizard is a soft ip clocking block of Xilinx versal. It
> +  reads required input clock frequencies from the devicetree and acts as clock
> +  clock output.
> +
> +select: false

Why? That's one way to make the example pass with your schema...

> +
> +properties:
> +  compatible:
> +      - enum:
> +          - xlnx,clocking-wizard
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  clocks:
> +    items:
> +      - description: clock input
> +      - description: axi clock
> +
> +  clock-names:
> +    items:
> +      - const: clk_in1
> +      - const: s_axi_aclk
> +
> +  xlnx,speed-grade:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [1, 2, 3]
> +    description:
> +      Speed grade of the device.
> +
> +required:
> +  - compatible
> +  - "#clock-cells"
> +  - clocks
> +  - clock-names
> +  - speed-grade
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    clock-generator@40040000 {
> +        #clock-cells = <1>;
> +        reg = <0x40040000 0x1000>;
> +        compatible = "xlnx,clocking-wizard";
> +        xlnx,speed-grade = <1>;
> +        clock-names = "clk_in1", "s_axi_aclk";
> +        clocks = <&clkc 15>, <&clkc 15>;
> +        clock-output-names = "clk_out1", "clk_out2",
> +        "clk_out3", "clk_out4", "clk_out5",
> +        "clk_out6", "clk_out7";
> +    };
> +...
> -- 
> 2.1.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
