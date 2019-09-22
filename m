Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C600FBA2E4
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Sep 2019 16:24:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8544845C3;
	Sun, 22 Sep 2019 14:24:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vsD5T3Qal3p5; Sun, 22 Sep 2019 14:24:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84DB384520;
	Sun, 22 Sep 2019 14:24:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 47B651BF3BB
 for <devel@linuxdriverproject.org>; Sun, 22 Sep 2019 14:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3F6228547F
 for <devel@linuxdriverproject.org>; Sun, 22 Sep 2019 14:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VAkNxkLvYHpP for <devel@linuxdriverproject.org>;
 Sun, 22 Sep 2019 14:24:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com
 [209.85.222.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6B3818547B
 for <devel@driverdev.osuosl.org>; Sun, 22 Sep 2019 14:24:34 +0000 (UTC)
Received: by mail-qk1-f193.google.com with SMTP id z67so12609241qkb.12
 for <devel@driverdev.osuosl.org>; Sun, 22 Sep 2019 07:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nxamFfzGQMxVC3EoWkNOqWdCNC3v4cbH3EQQXhPiNiE=;
 b=DV3REy4+SHrXWdyEh87oENW6rR5K+oTdjpXgEyuCztS12cFPnnyBGQbGNMknV9/JU+
 G5Ok+mCTRMf8SKO/fmTum9NX9l4h2Ug9SniKjboSpWVn9UVz+KtRLtiEy0joNTcfayWb
 9QaDOpF68IyPJ4+1z0JBLj6vLDOL1sYo+UiWHvZvHyGxeWaIoWPLCGR+OkwsKDxvXMsl
 VZwNuvFIYx1LG+k4Fxkex89EZS3hGecMIib5knXkg3UHlMYePMH7Kfy5k5yylqb3synp
 v4T3PcBG8/6fJAq2AXBWrhIJfZhOa26XEiS+/TEoqnuqc/1hWZBPpb/kBXdLOqZoxWEp
 QK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nxamFfzGQMxVC3EoWkNOqWdCNC3v4cbH3EQQXhPiNiE=;
 b=oyoMBTJHdzK81R4gy/rgeH2/oQZl9YzoMFJ7Ubm/5/U+b+OHoKXLCwldWeKZ7zkrmn
 w7Inznd09DayfiASJDljjZ7wH9cEX+UCGSXNZ4CuPDobBvPqOVNE61Om4C0Mt5doNre0
 lIJb6kgkL9YogCtxiVOkW6U/Tn1M7jm0BCh3VpE8cM/AfoJX+tIkMyzbHjPwLFyeCkwd
 lEd3yH7QClRffSv/SNiH22Co9+KBU8hcfgQm/XXV0kqeGYklfNmDowusDEY/e6fzp0q1
 CeqMeMeaAeDw1Yf2wMCOUot7QzBlv8Hrg2RC3JnJ/JxLnvPHNWfw4BlHHXS5N6yM6J//
 XlFA==
X-Gm-Message-State: APjAAAVe1vUi3bQnY0fQ5k5ZRQRIVUe0wPs+mOe5hexoTizgSLk0DaN8
 kZS8VzVkB2OpPn2yDQ5a0kI=
X-Google-Smtp-Source: APXvYqyAeQ3D9FeXd1t/Nw4Ex4oo7+jyyA2oK+Qa3fWHeTAaH411jn4fGI4DJ2uh25/+IhTyIVAdVA==
X-Received: by 2002:a37:af02:: with SMTP id y2mr13178890qke.305.1569162273352; 
 Sun, 22 Sep 2019 07:24:33 -0700 (PDT)
Received: from smtp.gmail.com ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id 63sm1835495qkh.82.2019.09.22.07.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Sep 2019 07:24:32 -0700 (PDT)
Date: Sun, 22 Sep 2019 11:24:27 -0300
From: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH v2] dt-bindings: iio: accel: add binding documentation
 for ADIS16240
Message-ID: <20190922142426.jzodybftlgui3hgx@smtp.gmail.com>
References: <20190912213929.3664-1-rodrigorsdc@gmail.com>
 <448e180cc41bfc748d729f3269376b14ba6d3ac9.camel@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <448e180cc41bfc748d729f3269376b14ba6d3ac9.camel@analog.com>
User-Agent: NeoMutt/20180716
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "rodrigorsdc@gmail.com" <rodrigorsdc@gmail.com>, kernel-usp@googlegroups.com,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Popa, Stefan Serban" <StefanSerban.Popa@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

Could anyone with some experience in devicetree give us a hint on what
to do here?

I have built a binding doc using the same spi-cpha property.
https://github.com/analogdevicesinc/linux/commit/bb2945e489dfdf2faa0255dd2cf09ae4ee77d826

On 09/13, Ardelean, Alexandru wrote:
> On Thu, 2019-09-12 at 18:39 -0300, Rodrigo Carvalho wrote:
> > This patch add device tree binding documentation for ADIS16240.
> > 
> > Signed-off-by: Rodrigo Ribeiro Carvalho <rodrigorsdc@gmail.com>
> > ---
> > V2:
> >   - Remove true constant for spi-cpha and spi-cpol
> >   - Add description field for spi-cpha and spi-cpol
> >   - Add maxItems field for spi-cpha and spi-cpol
> > 
> >  .../bindings/iio/accel/adi,adis16240.yaml     | 61 +++++++++++++++++++
> >  1 file changed, 61 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > new file mode 100644
> > index 000000000000..4b1bd2419604
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iio/accel/adi,adis16240.yaml
> > @@ -0,0 +1,61 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iio/accel/adi,adis16240.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: ADIS16240 Programmable Impact Sensor and Recorder driver
> > +
> > +maintainers:
> > +  - Alexandru Ardelean <alexandru.ardelean@analog.com>
> > +
> > +description: |
> > +  ADIS16240 Programmable Impact Sensor and Recorder driver that supports
> > +  SPI interface.
> > +    https://www.analog.com/en/products/adis16240.html
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - adi,adis16240
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  spi-cpha:
> > +    description: |
> > +      See Documentation/devicetree/bindings/spi/spi-controller.yaml
> > +    maxItems: 1
> 
> Description for standard properties is not required.
> 
> For spi-cpha/cpol just "true" seems sufficient.
> 
> So
> 
>      spi-cpha: true
> 
>      spi-cpol: true
> 
I'm not Rob, but I think it is not necessary to explicitly say the
property is true. In this case, it should be enough if it is present. If
needed to know whether some property is "true" or not, one can use the
of_property_read_bool function. For the AD7292 driver on it was enough
to just add the property names. The spi-chpa did not need any further
care. Without the spi-cpha property, the AD7292 vendor ID came as 0x0C
(one bit shifted to the right).

Rodrigo is participating at FLUSP students group. It would be good if we
could test whether these properties are really needed. However, I don't
think we have the ADIS16240 part. Would anyone test it?

> > +
> > +  spi-cpol: |
> > +    description: |
> > +      See Documentation/devicetree/bindings/spi/spi-controller.yaml
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +
> 
> If spi-cpha & spi-cpol are true, they should typically be also required.
> Though, I think Rob would answer things better here.
> 
Some feedback about the need (or not) to link to the spi-controller doc
would also be appreciated.

> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    spi0 {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +
> > +        /* Example for a SPI device node */
> > +        accelerometer@0 {
> > +            compatible = "adi,adis16240";
> > +            reg = <0>;
> > +            spi-max-frequency = <2500000>;
> > +            spi-cpol;
> > +            spi-cpha;
> > +            interrupt-parent = <&gpio0>;
> > +            interrupts = <0 IRQ_TYPE_LEVEL_HIGH>;
> > +        };
> > +    };

Thanks,

Marcelo
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
