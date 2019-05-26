Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8BF2AB7F
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 May 2019 19:50:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4827F868E7;
	Sun, 26 May 2019 17:50:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oEWvqFYzlfSB; Sun, 26 May 2019 17:50:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 178158663C;
	Sun, 26 May 2019 17:50:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 531401BF2C0
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 17:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4FCED878E5
 for <devel@linuxdriverproject.org>; Sun, 26 May 2019 17:50:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EOorBUJhow03 for <devel@linuxdriverproject.org>;
 Sun, 26 May 2019 17:50:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CE1768782A
 for <devel@driverdev.osuosl.org>; Sun, 26 May 2019 17:50:13 +0000 (UTC)
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B3D72075E;
 Sun, 26 May 2019 17:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558893013;
 bh=4RM6HYIAkVdicbPI6ObbbcySK0L/DNIMzRDkdPiV9xc=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2nePc8kXjKAIecH5nsEySC0xpCHkO7tXgcqhLSa7cdB4eWBm1aLeXvyaLSZ8YxQFJ
 CFz9W5r9rxJ31VZl6T13wpl8TeNye4CSsVD+Dk5/HUS9Qs508vJB4HCwMPu1QD7VV1
 jA7+41sT0Ff9byeYatkYAf8S4wrYVdUOvACdzVWg=
Date: Sun, 26 May 2019 18:50:07 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Renato Lui Geh <renatogeh@gmail.com>
Subject: Re: [PATCH] dt-bindings: iio: adc: add adi,ad7780.yaml binding
Message-ID: <20190526185007.41b5f016@archlinux>
In-Reply-To: <20190525002801.ccq54fczbj3wxhan@renatolg>
References: <9992a318aec777b9b7788bb40d976aa89e5963fe.1558219042.git.renatogeh@gmail.com>
 <20190519123208.26c864ce@archlinux>
 <5d7ad2935d1e357f1c0885badc5ce3c351c8ed89.camel@analog.com>
 <20190525002801.ccq54fczbj3wxhan@renatolg>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>, "Popa,
 Stefan Serban" <StefanSerban.Popa@analog.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, 24 May 2019 21:28:02 -0300
Renato Lui Geh <renatogeh@gmail.com> wrote:

> Hi Jonathan, Alex,
> 
> Thanks for the review. Some comments inline.
> 
> Thanks,
> Renato
> 
> On 05/20, Ardelean, Alexandru wrote:
> >On Sun, 2019-05-19 at 12:32 +0100, Jonathan Cameron wrote:  
> >> [External]
> >>
> >>
> >> On Sat, 18 May 2019 19:41:12 -0300
> >> Renato Lui Geh <renatogeh@gmail.com> wrote:
> >>  
> >> > This patch adds a YAML binding for the Analog Devices AD7780/1 and
> >> > AD7170/1 analog-to-digital converters.
> >> >
> >> > Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>  
> >>
> >> One comment inline.  I'll also be needing an ack from Analog on this,
> >> preferably Michael's.
> >>
> >> Thanks,
> >>
> >> Jonathan  
> >> > ---
> >> >  .../bindings/iio/adc/adi,ad7780.txt           | 48 -----------
> >> >  .../bindings/iio/adc/adi,ad7780.yaml          | 85 +++++++++++++++++++  
> >
> >You should also update the MAINTAINERS file.
> >Maybe in a following patch.
> >It looks like there is not entry in there, so maybe you need to add a new
> >one.
> >
> >Something like:
> >
> >
> >ANALOG DEVICES INC AD7780 DRIVER
> >M:      Michael Hennerich <Michael.Hennerich@analog.com>
> >M:      Renato Lui Geh <renatogeh@gmail.com>
> >L:      linux-iio@vger.kernel.org
> >W:      http://ez.analog.com/community/linux-device-drivers
> >S:      Supported
> >F:      drivers/iio/adc/ad7780.c
> >F:      Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> >
> >This should be after this block
> >ANALOG DEVICES INC AD7768-1 DRIVER
> >
> >Note that I added you as a co-maintainer.
> >If you want, you do not need to add that line.
> >  
> >> >  2 files changed, 85 insertions(+), 48 deletions(-)
> >> >  delete mode 100644
> >> > Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> >> >  create mode 100644
> >> > Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> >> >
> >> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> >> > b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> >> > deleted file mode 100644
> >> > index 440e52555349..000000000000
> >> > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
> >> > +++ /dev/null
> >> > @@ -1,48 +0,0 @@
> >> > -* Analog Devices AD7170/AD7171/AD7780/AD7781
> >> > -
> >> > -Data sheets:
> >> > -
> >> > -- AD7170:
> >> > -     *
> >> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
> >> > -- AD7171:
> >> > -     *
> >> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
> >> > -- AD7780:
> >> > -     *
> >> > https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
> >> > -- AD7781:
> >> > -     *
> >> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
> >> > -
> >> > -Required properties:
> >> > -
> >> > -- compatible: should be one of
> >> > -     * "adi,ad7170"
> >> > -     * "adi,ad7171"
> >> > -     * "adi,ad7780"
> >> > -     * "adi,ad7781"
> >> > -- reg: spi chip select number for the device
> >> > -- vref-supply: the regulator supply for the ADC reference voltage
> >> > -
> >> > -Optional properties:
> >> > -
> >> > -- powerdown-gpios:  must be the device tree identifier of the PDRST
> >> > pin. If
> >> > -                 specified, it will be asserted during driver probe.
> >> > As the
> >> > -                 line is active high, it should be marked
> >> > GPIO_ACTIVE_HIGH.
> >> > -- adi,gain-gpios:   must be the device tree identifier of the GAIN
> >> > pin. Only for
> >> > -                 the ad778x chips. If specified, it will be asserted
> >> > during
> >> > -                 driver probe. As the line is active low, it should be
> >> > marked
> >> > -                 GPIO_ACTIVE_LOW.
> >> > -- adi,filter-gpios: must be the device tree identifier of the FILTER
> >> > pin. Only
> >> > -                 for the ad778x chips. If specified, it will be
> >> > asserted
> >> > -                 during driver probe. As the line is active low, it
> >> > should be
> >> > -                 marked GPIO_ACTIVE_LOW.
> >> > -
> >> > -Example:
> >> > -
> >> > -adc@0 {
> >> > -     compatible =  "adi,ad7780";
> >> > -     reg =         <0>;
> >> > -     vref-supply = <&vdd_supply>
> >> > -
> >> > -     powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
> >> > -     adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
> >> > -     adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
> >> > -};
> >> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> >> > b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> >> > new file mode 100644
> >> > index 000000000000..931bc4f8ec04
> >> > --- /dev/null
> >> > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
> >> > @@ -0,0 +1,85 @@
> >> > +# SPDX-License-Identifier: GPL-2.0
> >> > +%YAML 1.2
> >> > +---
> >> > +$id: http://devicetree.org/schemas/iio/adc/adi,ad7780.yaml#
> >> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> > +
> >> > +title: Analog Devices AD7170/AD7171/AD7780/AD7781 analog to digital
> >> > converters
> >> > +
> >> > +maintainers:
> >> > +  - Michael Hennerich <michael.hennerich@analog.com>
> >> > +
> >> > +description: |
> >> > +  The ad7780 is a sigma-delta analog to digital converter. This driver
> >> > provides
> >> > +  reading voltage values and status bits from both the ad778x and
> >> > ad717x series.
> >> > +  Its interface also allows writing on the FILTER and GAIN GPIO pins
> >> > on the
> >> > +  ad778x.
> >> > +
> >> > +  Specifications on the converters can be found at:
> >> > +    AD7170:
> >> > +
> >> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
> >> > +    AD7171:
> >> > +
> >> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
> >> > +    AD7780:
> >> > +
> >> > https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
> >> > +    AD7781:
> >> > +
> >> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
> >> > +
> >> > +properties:
> >> > +  compatible:
> >> > +    enum:
> >> > +      - adi,ad7170
> >> > +      - adi,ad7171
> >> > +      - adi,ad7780
> >> > +      - adi,ad7781
> >> > +
> >> > +  reg:
> >> > +    description:
> >> > +      Chip select number for the device  
> >
> >No need to add a description.
> >This is pretty standard.
> >  
> >> > +    maxItems: 1
> >> > +
> >> > +  vref-supply:
> >> > +    description:
> >> > +      The regulator supply for the ADC reference voltage
> >> > +    maxItems: 1
> >> > +  
> >
> >As I see in the driver, it's not vref-supply, it's avdd-supply.  
> 
> You're absolutely right. Shouldn't have mindlessly copied
> from the txt, even though the txt's was also my fault.
> 
> By the way, a quick look at ad7170 and ad7780's datasheets
> shows that the 7170 uses VDD, and the 7780, AVDD. Are they
> equivalent?
> >  
> >> > +  powerdown-gpios:
> >> > +    description:
> >> > +      Must be the device tree identifier of the PDRST pin. If
> >> > +      specified, it will be asserted during driver probe. As the
> >> > +      line is active high, it should be marked GPIO_ACTIVE_HIGH.
> >> > +    maxItems: 1
> >> > +
> >> > +  adi,gain-gpios:
> >> > +    description:
> >> > +      Must be the device tree identifier of the GAIN pin. Only for
> >> > +      the ad778x chips. If specified, it will be asserted during
> >> > +      driver probe. As the line is active low, it should be marked
> >> > +      GPIO_ACTIVE_LOW.
> >> > +    maxItems: 1
> >> > +
> >> > +  adi,filter-gpios:
> >> > +    description:
> >> > +      Must be the device tree identifier of the FILTER pin. Only
> >> > +      for the ad778x chips. If specified, it will be asserted
> >> > +      during driver probe. As the line is active low, it should be
> >> > +      marked GPIO_ACTIVE_LOW.
> >> > +    maxItems: 1
> >> > +
> >> > +required:
> >> > +  - compatible
> >> > +  - reg
> >> > +  - vref-supply  
> >>
> >> Is that actually true?  I'd imagine it'll use a stub regulator if
> >> it isn't supplied.  
> >
> >Hmm, I also think this can be omitted as required.
> >devm_regulator_get() is used.
> >devm_regulator_get_exclusive() would be needed to make this required.  
> 
> I see. So the difference between devm_regulator_get and
> devm_regulator_get_optional is that the former uses a stub
> when the requested reg isn't supplied, and the latter
> doesn't?
Correct.  If you 'require' a regulator you actually have to use
the optional form and then check if you got one. Otherwise you get
a stub and only find out later that you can't read it's current
value.

Jonathan

> >  
> >>  
> >> > +
> >> > +examples:
> >> > +  - |
> >> > +    #include <dt-bindings/gpio/gpio.h>
> >> > +    adc@0 {  
> >
> >The adc@0 block should be included in a spi block.
> >
> >So, something like
> >
> >spi0 {
> >     adc@0 {
> >            compatible =  "adi,ad7780";
> >            reg =         <0>;
> >            avdd-supply = <&vdd_supply>
> >
> >            powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
> >            adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
> >            adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
> >     };
> >};
> >
> >I know this wasn't the case before, but it should be (from what I recall).
> >  
> >> > +      compatible =  "adi,ad7780";
> >> > +      reg = <0>;
> >> > +      vref-supply = <&vdd_supply>;
> >> > +
> >> > +      powerdown-gpios  = <&gpio0 12 GPIO_ACTIVE_HIGH>;
> >> > +      adi,gain-gpios   = <&gpio1  5 GPIO_ACTIVE_LOW>;
> >> > +      adi,filter-gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;  
> >
> >Rest looks good.
> >
> >Thanks
> >Alex
> >  
> >> > +    };  
> >>
> >>  

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
