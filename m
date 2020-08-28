Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABA792562AE
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Aug 2020 23:56:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB2AF87D57;
	Fri, 28 Aug 2020 21:56:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mA55NPRCTw6g; Fri, 28 Aug 2020 21:56:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 19AE7878A9;
	Fri, 28 Aug 2020 21:56:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA8B41BF859
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 21:56:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9896C203C3
 for <devel@linuxdriverproject.org>; Fri, 28 Aug 2020 21:56:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FK28HRyruStA for <devel@linuxdriverproject.org>;
 Fri, 28 Aug 2020 21:56:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 4AE5020380
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 21:56:26 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id g128so516636iof.11
 for <devel@driverdev.osuosl.org>; Fri, 28 Aug 2020 14:56:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=bnuQFFeQy61Sm8kS2vhKjdCEzpmvVQn8pWWRcCfWkZQ=;
 b=QSs900tBr7ph7m7mgZbfXQ2EWDIwd7Yze//1CeDvX/d6dlaM4zZlhpmIiSM/qCO5T3
 YylbTTKN+elHHTB4c2OaNVJk6vxwJ8mA0B2yEggVrzn0c2d8iGL9KLkFOHtTlH+Ef9hE
 W5sJZgNmIlpp5XQHGIcU9B95QnsXtiYkVVnGVnD0hnjz6LwLSM3UTMPkstKgoreEV3dZ
 YmoSrPGkWZXs3QDr6C0IVK0pwVuffvkkm+xjxkhBiWEH8jDmt1gqfabnzVzHH9zQcUCi
 JUPLGV/DZBscg2Fr9boAVy1Af2jSynojLa4ie++CZuAO/GG/GeT7Ge5PO/09FVygH/RV
 koVg==
X-Gm-Message-State: AOAM533Y8Pvc0deW7Yh7k4hpXLwtoOK546BLgGRhnCRop+LyHRFUhwsU
 yNmKK5K+K0ODmXokuf8afg==
X-Google-Smtp-Source: ABdhPJxAo0CwfDWujxgV01Kcz5GmAk8vpvEoBxI69Bslbj8QJirVXxKSjpE8Ok5gcXfKWgKIkT6gaw==
X-Received: by 2002:a5d:871a:: with SMTP id u26mr623569iom.92.1598651785621;
 Fri, 28 Aug 2020 14:56:25 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
 by smtp.gmail.com with ESMTPSA id h18sm230268iow.16.2020.08.28.14.56.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Aug 2020 14:56:24 -0700 (PDT)
Received: (nullmailer pid 3474171 invoked by uid 1000);
 Fri, 28 Aug 2020 21:56:22 -0000
Date: Fri, 28 Aug 2020 15:56:22 -0600
From: Rob Herring <robh@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v6 1/8] dt-bindings: add documentation of xilinx clocking
 wizard
Message-ID: <20200828215622.GA3469481@bogus>
References: <1598621996-31040-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1598621996-31040-2-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1598621996-31040-2-git-send-email-shubhrajyoti.datta@xilinx.com>
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
 gregkh@linuxfoundation.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Aug 28, 2020 at 07:09:49PM +0530, Shubhrajyoti Datta wrote:
> Add the devicetree binding for the xilinx clocking wizard.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
> v6:
> Fix a yaml warning
> 
>  .../bindings/clock/xlnx,clocking-wizard.yaml       | 71 ++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> new file mode 100644
> index 0000000..ca63593
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> @@ -0,0 +1,71 @@
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
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:

You can drop 'items' since there is only 1.

> +          - xlnx,clocking-wizard
> +          - xlnx,clocking-wizard-6.0
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  clocks:
> +    description: List of clock specifiers which are external input
> +      clocks to the given clock controller.

Drop this. That's every 'clocks' property.

> +    items:
> +      - description: clock input
> +      - description: axi clock
> +
> +  clock-names:
> +    items:
> +      - const: clk_in1
> +      - const: s_axi_aclk
> +
> +  speed-grade:

Needs a vendor prefix.

> +    allOf:

You can remove the 'allOf'.

> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [1, 2, 3]
> +    description:
> +      Speed grade of the device.
> +    maxItems: 1

Drop this. A 'uint32' is always 1 item.

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
> +        compatible = "xlnx,clk-wizard-1.0";

Doesn't match the schema.

> +        speed-grade = <1>;
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
