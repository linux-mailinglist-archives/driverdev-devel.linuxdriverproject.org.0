Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA51DE8D3B
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Oct 2019 17:48:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C68C5879CF;
	Tue, 29 Oct 2019 16:48:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1lNcc-efw7of; Tue, 29 Oct 2019 16:48:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 139B686038;
	Tue, 29 Oct 2019 16:48:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AFFC1BF317
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 16:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 69A9B84452
 for <devel@linuxdriverproject.org>; Tue, 29 Oct 2019 16:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 17lN7xwxhQE2 for <devel@linuxdriverproject.org>;
 Tue, 29 Oct 2019 16:48:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C95ED84413
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 16:48:32 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id z6so10366288otb.2
 for <devel@driverdev.osuosl.org>; Tue, 29 Oct 2019 09:48:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=RI8zG1ufEnYzuTEZN0YEn2eCjXsRH9KIe+0owaMHLI8=;
 b=puug+g6nirYBzynRHqNd3MnNZDG9IUOxxv1+Yj+xgalcuBnfKNBQ3t3dBM/LnfSa1n
 Ehg9pLYjR1EoRAZfdLpGb0ZUJEC1FLOGHzgsZxeSj57spv+2bVV12yblELFpxRsQJh3z
 Znyjai930tYlRawL1xskR8rDUyTRulnKBJsvAYNOWNrVHVqiwVwI95Dd/raeunVO5ULA
 CLtyXNJ653h5NUrxrme7YFVdYX++Zd7jrcVmV1eFXQKx5izPjpF4igumGlHRAMoyi11j
 YvLZ270r49jNLwMHnWBH8MEHKfPUOKunGh6WSlEjYFW2pU7b/fy5fcOZTxgyTGFhLM2K
 1mCQ==
X-Gm-Message-State: APjAAAUa3TqLyqssyTuS8rDyXwurT8lUtCXDbuTpAp1GwBh2qNYSl5Jk
 /rwThU1i0FHJS8kY5SKXaA==
X-Google-Smtp-Source: APXvYqx+s5uJ0NhlC8JcM6u6lCZ7knvuS4ijj/TCsIhKf8B7RMJaGqDUPbcv5jvl2mAHW5AjZ8bxqg==
X-Received: by 2002:a9d:7756:: with SMTP id t22mr11833715otl.43.1572367711861; 
 Tue, 29 Oct 2019 09:48:31 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d27sm2365348ote.11.2019.10.29.09.48.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 09:48:31 -0700 (PDT)
Date: Tue, 29 Oct 2019 11:48:30 -0500
From: Rob Herring <robh@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH 3/4] dt-binding: iio: Add documentation for AD7091R5
Message-ID: <20191029164830.GA21417@bogus>
References: <20191021170608.26412-1-beniamin.bia@analog.com>
 <20191021170608.26412-3-beniamin.bia@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021170608.26412-3-beniamin.bia@analog.com>
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, lars@metafoo.de,
 biabeniamin@outlook.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com, pmeerw@pmeerw.net,
 knaack.h@gmx.de, mchehab+samsung@kernel.org, paulmck@linux.ibm.com,
 jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Oct 21, 2019 at 08:06:07PM +0300, Beniamin Bia wrote:
> Documentation for AD7091R5 ADC was added.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> ---
>  .../bindings/iio/adc/adi,ad7091r5.yaml        | 53 +++++++++++++++++++
>  1 file changed, 53 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7091r5.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7091r5.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7091r5.yaml
> new file mode 100644
> index 000000000000..d041cd76804e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7091r5.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: GPL-2.0

(GPL-2.0-only OR BSD-2-Clause) for new bindings please.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,ad7091r5.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices AD7091R5 4-Channel 12-Bit ADC
> +
> +maintainers:
> +  - Beniamin Bia <beniamin.bia@analog.com>
> +
> +description: |
> +  Analog Devices AD7091R5 4-Channel 12-Bit ADC
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ad7091r-5.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad7091R5

lowercase 'r' or be consistent with the filename.

> +
> +  reg:
> +    maxItems: 1
> +
> +  avcc-supply:
> +    description:
> +      Phandle to the Avcc power supply
> +    maxItems: 1

Not an array, so you can drop this.

> +
> +  interrupts:
> +    maxItems: 1
> +
> +
> +required:
> +  - compatible
> +  - reg

Add:

additionalProperties: false

> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@0 {

adc@2f

> +                compatible = "adi,ad7091r5";

Doesn't match the schema.

> +                reg = <0x2F>;

Lowercase hex.

> +
> +                interrupts = <25 IRQ_TYPE_EDGE_FALLING>;
> +                interrupt-parent = <&gpio>;
> +        };
> +    };
> +...
> -- 
> 2.17.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
