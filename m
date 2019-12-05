Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585FB114373
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 16:21:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 30A5F88A8B;
	Thu,  5 Dec 2019 15:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YsYLzdi-qrCd; Thu,  5 Dec 2019 15:21:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0697F88A64;
	Thu,  5 Dec 2019 15:21:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AF50C1BF9B9
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 15:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AB202204AB
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 15:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ng6Anqljh0FV for <devel@linuxdriverproject.org>;
 Thu,  5 Dec 2019 15:21:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by silver.osuosl.org (Postfix) with ESMTPS id E3C1A204A2
 for <devel@driverdev.osuosl.org>; Thu,  5 Dec 2019 15:21:31 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id b8so3062620oiy.5
 for <devel@driverdev.osuosl.org>; Thu, 05 Dec 2019 07:21:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+WIMxLv19tjffTAX77E2M2L63dzYaMaTLYuDHcPpCEE=;
 b=KN/acuFXAdKwiddXZ3SepPTRNibAfl56GqxQ3t10v8VWZywHADjbonc4Zj9N+FoP4j
 Ery76j1yugAsfPhL49hYaHLs2HdeBU5tpErv+AIfetFpPPSLmc4hH7sVafAA+7eCk28G
 LXHmhq2p2JdNaGT7CoLrPaXwbRh6cbS+CkonCPSdukoj5vnSzEgwMbLR413pwvncEypl
 73MsmF/K+lRDmGh9CvpyWk2ob93lYfTHVzZh1SLNtztqeCrf0pJ8xbgj0Vavv8ofC00L
 qc6aFm3NL/BDg1qBzcFzTyLNyXZZMUA1HnjODuvl7pnpmPAL7jpqUaXioxvg8DttCaQP
 1Xag==
X-Gm-Message-State: APjAAAXHUfXFaEheN1BzTQHNnJvDNdZLovJI49wC/Ktwisv6LwZcna8e
 0F/bJBF9mVDL7fJO6ZsrFQ==
X-Google-Smtp-Source: APXvYqxWM2sWW0OmOjxxnjypKw2CsTWhwLb6dpBPypkmM6lnxiLp7y3FhuXuAy+HjZDphQ3sYtuYIw==
X-Received: by 2002:a05:6808:50:: with SMTP id
 v16mr7227208oic.11.1575559291069; 
 Thu, 05 Dec 2019 07:21:31 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j23sm3560484oij.56.2019.12.05.07.21.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Dec 2019 07:21:30 -0800 (PST)
Date: Thu, 5 Dec 2019 09:21:29 -0600
From: Rob Herring <robh@kernel.org>
To: Rodrigo Carvalho <rodrigorsdc@gmail.com>
Subject: Re: [PATCH v5 2/2] dt-bindings: iio: accel: add binding
 documentation for ADIS16240
Message-ID: <20191205152129.GA13911@bogus>
References: <20191123233510.4890-1-rodrigorsdc@gmail.com>
 <20191123233510.4890-2-rodrigorsdc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191123233510.4890-2-rodrigorsdc@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, Stefan Popa <stefan.popa@analog.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>, linux-iio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>, alexandru.ardelean@analog.com,
 Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, Nov 23, 2019 at 08:35:10PM -0300, Rodrigo Carvalho wrote:
> This patch add device tree binding documentation for ADIS16240.
> 
> Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>

checkpatch.pl complains about a mismatch between the author and S-o-b.

> ---
> V5:
>   - None 
> 
>  .../bindings/iio/accel/adi,adis16240.yaml     | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> new file mode 100644
> index 000000000000..8e902f7c49e6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> @@ -0,0 +1,49 @@
> +# SPDX-License-Identifier: GPL-2.0

Dual license new bindings please: (GPL-2.0-only OR BSD-2-Clause)

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/accel/adi,adis16240.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ADIS16240 Programmable Impact Sensor and Recorder driver
> +
> +maintainers:
> +  - Alexandru Ardelean <alexandru.ardelean@analog.com>
> +
> +description: |
> +  ADIS16240 Programmable Impact Sensor and Recorder driver that supports
> +  SPI interface.
> +    https://www.analog.com/en/products/adis16240.html
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,adis16240
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    spi0 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        /* Example for a SPI device node */
> +        accelerometer@0 {
> +            compatible = "adi,adis16240";
> +            reg = <0>;
> +            spi-max-frequency = <2500000>;
> +            interrupt-parent = <&gpio0>;
> +            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> +        };
> +    };
> -- 
> 2.24.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
