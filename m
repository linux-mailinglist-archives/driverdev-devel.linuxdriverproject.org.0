Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA8B3315DD
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Mar 2021 19:24:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 825DE40101;
	Mon,  8 Mar 2021 18:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DkwzSY0HAlEN; Mon,  8 Mar 2021 18:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8B49D40100;
	Mon,  8 Mar 2021 18:24:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B89DC1BF364
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 18:24:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A82CB82BA1
 for <devel@linuxdriverproject.org>; Mon,  8 Mar 2021 18:24:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XE3SrOKgEwe0 for <devel@linuxdriverproject.org>;
 Mon,  8 Mar 2021 18:24:00 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9BF682846
 for <devel@driverdev.osuosl.org>; Mon,  8 Mar 2021 18:24:00 +0000 (UTC)
Received: by mail-il1-f173.google.com with SMTP id h18so9747929ils.2
 for <devel@driverdev.osuosl.org>; Mon, 08 Mar 2021 10:24:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PLiShrgEDa+YZGxymkcoz3r/gBAUf5KhORptv57Q7PU=;
 b=p/cJpi1WZ7is9hWBfpvELZ8WnDW8hUSFKUOvq/tEOVwnBnSPNJR6jFj/bxswAuEOk/
 0KbCNz+v7dNRogXVSCCHbVi0yFoL7LT2sXFzrCru9cpcibUH+5a8PqLttrcIB4wrWJ2G
 TOMAahQPPznQrCOSU2VfNuiGrq4Dx2QbXfAd5qciZN1GMyh7xAqSM8QoFAWoVvztiGxp
 sukBjuoWrlC2K9a9ON3i7BioUYd5CchEnIOvjn/AqAPnOaxAIlZBIW9BVi/iKKtvFqij
 ES3bP0dX996hObX3yKZyjUxsuRMU7RagQCZX77D0XnMJ9NE7DQXrs1gh7mWo2e3PtZXN
 aCuQ==
X-Gm-Message-State: AOAM532O7+brZ3jVNd5dCWynLMrjnkRmoRaWM8n6VnSaxAb0xQr64U2m
 eYxxNK99Rp3bn2m1G7QWPg==
X-Google-Smtp-Source: ABdhPJxwGUCavMylqrxYrtCaf9JyknJB34LVNHlt+wpP3oXmyDFpN7LHxPrWUPGRxrzRYjnckByvUg==
X-Received: by 2002:a05:6e02:d53:: with SMTP id
 h19mr21756929ilj.157.1615227839943; 
 Mon, 08 Mar 2021 10:23:59 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id n7sm6636715ile.12.2021.03.08.10.23.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 10:23:59 -0800 (PST)
Received: (nullmailer pid 2741091 invoked by uid 1000);
 Mon, 08 Mar 2021 18:23:56 -0000
Date: Mon, 8 Mar 2021 11:23:56 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v3 1/5] dt-bindings: reset: IMX8MQ VPU reset
Message-ID: <20210308182356.GB2735443@robh.at.kernel.org>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301151754.104749-2-benjamin.gaignard@collabora.com>
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
 kernel@collabora.com, kernel@pengutronix.de, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, p.zabel@pengutronix.de, gregkh@linuxfoundation.org,
 shawnguo@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 01, 2021 at 04:17:50PM +0100, Benjamin Gaignard wrote:
> Document bindings for IMX8MQ VPU reset hardware block
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../bindings/reset/fsl,imx8mq-vpu-reset.yaml  | 54 +++++++++++++++++++
>  include/dt-bindings/reset/imx8mq-vpu-reset.h  | 16 ++++++
>  2 files changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
>  create mode 100644 include/dt-bindings/reset/imx8mq-vpu-reset.h
> 
> diff --git a/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml b/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
> new file mode 100644
> index 000000000000..00020421c0e3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/fsl,imx8mq-vpu-reset.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MQ VPU Reset Controller
> +
> +maintainers:
> +  - Benjamin Gaignard <benjamin.gaignard@collabora.com>
> +
> +description: |
> +  The VPU reset controller is used to reset the video processor
> +  unit peripherals. Device nodes that need access to reset lines should
> +  specify them as a reset phandle in their corresponding node as
> +  specified in reset.txt.
> +
> +  For list of all valid reset indices see
> +    <dt-bindings/reset/imx8mq-vpu-reset.h> for i.MX8MQ.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: fsl,imx8mq-vpu-reset
> +      - const: syscon

Is there other functionality in the block? If so, add some details in 
'description' above.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 3

Need to say what each clock is.

> +
> +  '#reset-cells':
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - '#reset-cells'
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +
> +    vpu-reset@38320000 {

reset-controller@...

> +        compatible = "fsl,imx8mq-vpu-reset", "syscon";
> +        reg = <0x38320000 0x10000>;
> +        clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> +        #reset-cells = <1>;
> +    };
> diff --git a/include/dt-bindings/reset/imx8mq-vpu-reset.h b/include/dt-bindings/reset/imx8mq-vpu-reset.h
> new file mode 100644
> index 000000000000..efcbe18177fe
> --- /dev/null
> +++ b/include/dt-bindings/reset/imx8mq-vpu-reset.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2021, Collabora
> + *
> + * i.MX7 System Reset Controller (SRC) driver
> + *
> + * Author: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> + */
> +
> +#ifndef DT_BINDINGS_VPU_RESET_IMX8MQ
> +#define DT_BINDINGS_VPU_RESET_IMX8MQ
> +
> +#define IMX8MQ_RESET_VPU_RESET_G1	0
> +#define IMX8MQ_RESET_VPU_RESET_G2	1
> +
> +#endif
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
