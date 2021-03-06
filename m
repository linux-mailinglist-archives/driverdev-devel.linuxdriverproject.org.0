Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C6932FD14
	for <lists+driverdev-devel@lfdr.de>; Sat,  6 Mar 2021 21:20:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D385983D39;
	Sat,  6 Mar 2021 20:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id llMTU2wUdORH; Sat,  6 Mar 2021 20:20:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F152B83D16;
	Sat,  6 Mar 2021 20:20:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AC8F1BF3A0
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 20:20:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2985960675
 for <devel@linuxdriverproject.org>; Sat,  6 Mar 2021 20:20:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sgUzsNmLdHJp for <devel@linuxdriverproject.org>;
 Sat,  6 Mar 2021 20:20:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 63D9B6066D
 for <devel@driverdev.osuosl.org>; Sat,  6 Mar 2021 20:20:32 +0000 (UTC)
Received: by mail-qk1-f169.google.com with SMTP id g185so5610155qkf.6
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 12:20:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zWfn7H/UEf+l7pWxANCNIEOtNbl8gBUKRtLIogG6HU4=;
 b=GUSEeK2IIHSk+2qR2zBb8NySLYtJe9VqNAF0D9eeveEPHOpAUKE8dgZ72m3ZrvTGLD
 jntRLbkGqQosAjYBl07lIypp9uq8PiU3O7fx+wh/o9cRv3FpIDgsDRgzxFH681dHbVsW
 VGUPrLLlknK2RYfdUurxYRLKnBEK7Ayphpw+ISv7m5xnliQuyv15KibaJ55c+5q1Rf4g
 BwSNCNLmDUGo2OMR6wum8i2QHAyXsJroCpWpRSPYrigULa9D7fh9LrfOol40bz94f3ZH
 LUUkaksV6n8W46qCa+EmJF5MBMVoGlrUcV5W+8sM5M40R2bFB+mECFvaanlWNzrZl4OF
 Vl0A==
X-Gm-Message-State: AOAM530isWhxIMnthKnMgXImjicRzUtshrmf+XhFRoGgmMBelHxzv1TG
 IFfVPnf+dr9RYTcwfj/e4g==
X-Google-Smtp-Source: ABdhPJw26Xz201By6e4mJ0f7HTFQskHAuUpIAQYA5A5yuiz6PQxGnYdEUczCOCgU8Xafebhb5xFZtA==
X-Received: by 2002:a05:620a:164c:: with SMTP id
 c12mr15761060qko.285.1615062031242; 
 Sat, 06 Mar 2021 12:20:31 -0800 (PST)
Received: from robh.at.kernel.org ([172.58.27.98])
 by smtp.gmail.com with ESMTPSA id e18sm4491041qtr.69.2021.03.06.12.20.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 06 Mar 2021 12:20:30 -0800 (PST)
Received: (nullmailer pid 1151680 invoked by uid 1000);
 Sat, 06 Mar 2021 20:20:22 -0000
Date: Sat, 6 Mar 2021 13:20:22 -0700
From: Rob Herring <robh@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Subject: Re: [PATCH v10 8/9] dt-bindings: add documentation of xilinx
 clocking wizard
Message-ID: <20210306202022.GA1146983@robh.at.kernel.org>
References: <1614172241-17326-1-git-send-email-shubhrajyoti.datta@xilinx.com>
 <1614172241-17326-9-git-send-email-shubhrajyoti.datta@xilinx.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1614172241-17326-9-git-send-email-shubhrajyoti.datta@xilinx.com>
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
 shubhrajyoti.datta@gmail.com, sboyd@kernel.org, gregkh@linuxfoundation.org,
 mturquette@baylibre.com, git@xilinx.com, miquel.raynal@bootlin.com,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 24, 2021 at 06:40:40PM +0530, Shubhrajyoti Datta wrote:
> Add the devicetree binding for the xilinx clocking wizard.
> 
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> ---
>  v6:
>  Fix a yaml warning
>  v7:
>  Add vendor prefix speed-grade
>  v8:
>  Fix the warnings
>  v10:
>  Add nr-outputs
> 
>  .../bindings/clock/xlnx,clocking-wizard.yaml       | 72 ++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> 
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> new file mode 100644
> index 0000000..280eb09
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> @@ -0,0 +1,72 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/clock/xlnx,clocking-wizard.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Xilinx clocking wizard
> +
> +maintainers:
> +  - Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
> +
> +description:
> +  The clocking wizard is a soft ip clocking block of Xilinx versal. It
> +  reads required input clock frequencies from the devicetree and acts as clock
> +  clock output.
> +
> +properties:
> +  compatible:
> +    const: xlnx,clocking-wizard

Not very specific. Only 1 version of this h/w?

> +
> +  reg:
> +    maxItems: 1
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
> +
> +  xlnx,speed-grade:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2, 3]
> +    description:
> +      Speed grade of the device. Higher the speed grade faster is the FPGA device.

How does one decide what value?

> +
> +  nr-outputs:

xlnx,nr-outputs

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2, 3, 4, 5, 6, 7, 8]

minimum: 1
maximum: 8

> +    description:
> +      Number of outputs.
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"
> +  - clocks
> +  - clock-names
> +  - xlnx,speed-grade
> +  - nr-outputs
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    wizard@b0000000  {

clock-controller@...

> +        compatible = "xlnx,clocking-wizard";
> +        reg = <0xb0000000 0x10000>;
> +        #clock-cells = <1>;
> +        xlnx,speed-grade = <1>;
> +        nr-outputs = <6>;
> +        clock-names = "clk_in1", "s_axi_aclk";
> +        clocks = <&clkc 15>, <&clkc 15>;
> +    };
> +...
> -- 
> 2.1.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
