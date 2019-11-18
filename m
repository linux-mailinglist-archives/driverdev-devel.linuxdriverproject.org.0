Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF50E100ACF
	for <lists+driverdev-devel@lfdr.de>; Mon, 18 Nov 2019 18:49:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D1AA885FB2;
	Mon, 18 Nov 2019 17:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UPRu4zruoIxE; Mon, 18 Nov 2019 17:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0054685F7C;
	Mon, 18 Nov 2019 17:49:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 38BE91BF3CB
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 17:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 300C687B5D
 for <devel@linuxdriverproject.org>; Mon, 18 Nov 2019 17:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Jw54OZ9B-CQp for <devel@linuxdriverproject.org>;
 Mon, 18 Nov 2019 17:49:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0709586D37
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 17:49:29 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id l202so16145524oig.1
 for <devel@driverdev.osuosl.org>; Mon, 18 Nov 2019 09:49:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y3Qx19fdBbWInRKoCFh0bqdIwNk3ZTrVmE+pGg14hpQ=;
 b=o5n7G+ls+UxjieJGk/FHOcYc4CE2ZmeJ55mKtwMgcRIR6eQzTBn5e5kb34sqqgTxJH
 uVWClpTSh/bFmrYnKmNcyFKSSRoejjGHz+o7GYKtu6LRbCPRveYSg6T+qDufwx89Ceil
 UglJCwGT5ONaBeBxEL10djfw3aNEv0FybkrBK/uML47Gua2L77+vkl275z2Sua5dmoB6
 Uy/AHcnm5m5uMXlK4ZMZzTIcxMIFFojCz5Gk+cy7+rbIHvNkiISL44DbOYr8HYeeZ6yW
 6oZsJj544PjxmaGcS6/XmZmIdA30PnTtRX75ZwBQNfVhLO+NmlqBfH27Q52IkyJmogwL
 sozw==
X-Gm-Message-State: APjAAAXkDCvVI9Tk7x4jqhZbj6M4qIsJ7nv48i9NkXISFZUGvwaZfLVr
 2vtMTst0N+efpu4sfSjKgA==
X-Google-Smtp-Source: APXvYqxI/5VqcHNlQb1w8L6k5hQ217PuWT8L9RUidu7eci3tR2apxY3hjBJW0goFv+jkWcaFvmY3SQ==
X-Received: by 2002:aca:4fce:: with SMTP id d197mr147098oib.142.1574099368064; 
 Mon, 18 Nov 2019 09:49:28 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s25sm6152148oic.13.2019.11.18.09.49.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 09:49:27 -0800 (PST)
Date: Mon, 18 Nov 2019 11:49:26 -0600
From: Rob Herring <robh@kernel.org>
To: Beniamin Bia <beniamin.bia@analog.com>
Subject: Re: [PATCH 2/3] dt-binding: iio: Add documentation for ADM1177
Message-ID: <20191118174926.GA19914@bogus>
References: <20191112153552.27431-1-beniamin.bia@analog.com>
 <20191112153552.27431-2-beniamin.bia@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112153552.27431-2-beniamin.bia@analog.com>
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
 mchehab+samsung@kernel.org, paulmck@linux.ibm.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Nov 12, 2019 at 05:35:51PM +0200, Beniamin Bia wrote:
> Documentation for ADM1177 was added.
> 
> Signed-off-by: Beniamin Bia <beniamin.bia@analog.com>
> ---
>  .../bindings/iio/adc/adi,adm1177.yaml         | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,adm1177.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,adm1177.yaml b/Documentation/devicetree/bindings/iio/adc/adi,adm1177.yaml
> new file mode 100644
> index 000000000000..69a0230e59f5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/adi,adm1177.yaml
> @@ -0,0 +1,60 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/adi,adm1177.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices ADM1177 Hot Swap Controller and Digital Power Monitor
> +
> +maintainers:
> +  - Michael Hennerich <michael.hennerich@analog.com>
> +  - Beniamin Bia <beniamin.bia@analog.com>
> +
> +description: |
> +  Analog Devices ADM1177 Hot Swap Controller and Digital Power Monitor
> +  https://www.analog.com/media/en/technical-documentation/data-sheets/ADM1177.pdf
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,adm1177
> +
> +  reg:
> +    maxItems: 1
> +
> +  avcc-supply:
> +    description:
> +      Phandle to the Avcc power supply
> +
> +  adi,r-sense-micro-ohms:
> +    description:
> +      The value of curent sense resistor in microohms.

s/curent/current/

Is there a range of values allowed?

> +
> +  adi,shutdown-threshold-microamp:
> +    description:
> +      Specifies the current level at which an over current alert occurs.
> +    maximum: 255
> +
> +  adi,vrange-high-enable:
> +    description:
> +      Specifies which internal voltage divider to be used. A 1 selects
> +      a 7:2 voltage divider while a 0 selects a 14:1 voltage divider.
> +    type: boolean
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    i2c0 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        adc@b4 {
> +                compatible = "adi,adm1177";
> +                reg = <0xb4>;
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
