Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 061B6F06C1
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 Nov 2019 21:19:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5F56422621;
	Tue,  5 Nov 2019 20:19:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I5nS4wcPLCfN; Tue,  5 Nov 2019 20:19:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 09F5B204D0;
	Tue,  5 Nov 2019 20:19:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 324881BF334
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 20:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2721288EE6
 for <devel@linuxdriverproject.org>; Tue,  5 Nov 2019 20:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3ORTC+i8idET for <devel@linuxdriverproject.org>;
 Tue,  5 Nov 2019 20:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 85E5388E3E
 for <devel@driverdev.osuosl.org>; Tue,  5 Nov 2019 20:19:34 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id m193so18809376oig.0
 for <devel@driverdev.osuosl.org>; Tue, 05 Nov 2019 12:19:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Nx7kJTn3OdCopAIR7Uif4GRlSRK0moBADISBNdcfrTs=;
 b=N8UaqeWpEjGd+9OqyLp17+dUX5biodywCYDfl0W3icWTZu8iRsTHoISkr2HPb9s9nj
 c+P8XlxsZeWzDNhkA261iJ0ZieSR0OyWruLqfjjPz/WhD/pVCz8sR2qjXV8Nbw47q3Xl
 n3yf0JUdg6DZi3SUhTZdnlTz3nXKizqPLGah0LZt/mQXep86ddROzaretKKbLBLVupEf
 8vNCRcAqlbGC1xoYsjmsVyaCD3MIUND+vyXCOWlqDEL8efUV2/bBmqs7aPHntRq6WY6C
 ema7jX/XgCg7WL/6rjAB3b2qLcE14S1OFnDgWtQee3E3/4XdSBnB8+f4tnADRfQl8lOb
 in4w==
X-Gm-Message-State: APjAAAV2gAqAduI4+yu/yzyIbuv4okhkJ8gikDTyLavKbrosaFxPwanC
 vQePAwoGkwuNeR6P77Zegg==
X-Google-Smtp-Source: APXvYqzcwQTTuh/ucjVOm77Dw2qQBBOp4x78YLgbH+mDcvDa5vMIG9/s7Mrn5jjgeZmF/Hy7tj1Clw==
X-Received: by 2002:aca:dd0a:: with SMTP id u10mr766731oig.130.1572985173589; 
 Tue, 05 Nov 2019 12:19:33 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v26sm2778262oic.5.2019.11.05.12.19.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 12:19:32 -0800 (PST)
Date: Tue, 5 Nov 2019 14:19:32 -0600
From: Rob Herring <robh@kernel.org>
To: Rodrigo Carvalho <rodrigorsdc@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: iio: accel: add binding documentation
 for ADIS16240
Message-ID: <20191105201932.GA24515@bogus>
References: <20191101000301.12901-1-rodrigorsdc@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101000301.12901-1-rodrigorsdc@gmail.com>
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
 Hartmut Knaack <knaack.h@gmx.de>, Jonathan Cameron <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Oct 31, 2019 at 09:03:01PM -0300, Rodrigo Carvalho wrote:
> This patch add device tree binding documentation for ADIS16240.
> 
> Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> ---
> V3:
>    - Remove spi-cpol and spi-cpha field. They don't seem necessary

Not necessary to document or use? The latter requires the former.

If your device only supports one timing mode, then you don't need them 
because it should be implied and the driver can just tell the SPI 
subsystem what mode it requires. If the device can support multiple 
timing modes, then you should document that you are using the 
properties.

>  .../bindings/iio/accel/adi,adis16240.yaml     | 51 +++++++++++++++++++
>  1 file changed, 51 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> new file mode 100644
> index 000000000000..9a4cd12c4818
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0
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
> +            spi-cpol;
> +            spi-cpha;
> +            interrupt-parent = <&gpio0>;
> +            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> +        };
> +    };
> -- 
> 2.23.0
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
