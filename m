Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 151742A21F
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 02:28:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0E8288172;
	Sat, 25 May 2019 00:28:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vt7zrC1-Xlkj; Sat, 25 May 2019 00:28:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E1FFA8816C;
	Sat, 25 May 2019 00:28:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CFC4C1C1639
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 00:28:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C5F4C8815A
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 00:28:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4EQjGJLbLq5H for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 00:28:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 96084873B8
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 00:28:09 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id p26so7442365qkj.5
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 17:28:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=AmssAmMD6meoyYR0aDDzoUlpZp3YaMp7uyas5pLvf4k=;
 b=pLJLni3YVm7CEOhvdFE06jiSz4ZB0utUzWLpavg1dULdCbYxmL780/JRabKzTqeXYV
 65BvIFZjr3CptEHDItqLy3pUujEGDLPLYrIJmP13PuLQUsiUu65H6dKDylvgPAluNWiy
 5HD+Sj+ZgxURZHwwkrCF3iJl/pIbOGlclfGcWCnMp4oF9O2e/4CIP0JKuAiRX+QendU3
 FjaW4QlZZk/kGPOzNx84m/BM7mSPUqhF0LGTFwd2IlHJq3oSfWyjz9A5dfr7ov3/xZ5/
 O26gE/1Kbu79EtnI3HAZkzzab3f1+2PmxQE7ONQGT/Du4H6QJ09N/AKsWD9cEydjCout
 OpnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=AmssAmMD6meoyYR0aDDzoUlpZp3YaMp7uyas5pLvf4k=;
 b=cWUyqT+XDnAJc0Pz9T5s+oQ8USzxShFAvXWYLkSS00GOKUXcumF4fC7hWfOP2v/N4J
 XpgABFQbMYv/UsIyDO5UBO+WqIBwNAK9bmOYG24GxHdoji/4sa787eSuZjIWTOZoexU9
 Cw8oxkUPBWRcCcTLcPr2jDMQ9U+QAlbm2tbYB+8aL8xYHDo7kN4IBACNvlu5P3YpNW89
 Wb1jPykkImYGOg2z14uZZ4hU8wHaGMlqNTpb8Qpd/NFq+HEC1xm4+/D2WDYxpROOLzg3
 PtnxGgJmbZxN/WBYHdQE+ZGcWNvBflJZa2ZrrrjxNtqeah/lJrR5hrFeGUsBZHcRhj3o
 vtfw==
X-Gm-Message-State: APjAAAVOi9jviQ6U7gDddZvescRZsOH//k3YXlTswGndIZUd22/Trv8G
 oz21XvhWrcezm+kiHqyh73I=
X-Google-Smtp-Source: APXvYqxBV0dfevd+oUzPwnJDoxpXpjX3opIIx7eCOEn1SejUoJZ7bLZlUwFQCIOHNOEwscFRd6uduw==
X-Received: by 2002:ac8:30c6:: with SMTP id w6mr90687923qta.186.1558744088477; 
 Fri, 24 May 2019 17:28:08 -0700 (PDT)
Received: from renatolg ([186.220.0.156])
 by smtp.gmail.com with ESMTPSA id x8sm1770788qtc.96.2019.05.24.17.28.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 24 May 2019 17:28:08 -0700 (PDT)
From: Renato Lui Geh <renatogeh@gmail.com>
X-Google-Original-From: Renato Lui Geh <renatogeh@renatolg>
Date: Fri, 24 May 2019 21:28:02 -0300
To: "Ardelean, Alexandru" <alexandru.Ardelean@analog.com>
Subject: Re: [PATCH] dt-bindings: iio: adc: add adi,ad7780.yaml binding
Message-ID: <20190525002801.ccq54fczbj3wxhan@renatolg>
References: <9992a318aec777b9b7788bb40d976aa89e5963fe.1558219042.git.renatogeh@gmail.com>
 <20190519123208.26c864ce@archlinux>
 <5d7ad2935d1e357f1c0885badc5ce3c351c8ed89.camel@analog.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5d7ad2935d1e357f1c0885badc5ce3c351c8ed89.camel@analog.com>
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
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lars@metafoo.de" <lars@metafoo.de>, "Hennerich,
 Michael" <Michael.Hennerich@analog.com>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kernel-usp@googlegroups.com" <kernel-usp@googlegroups.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "pmeerw@pmeerw.net" <pmeerw@pmeerw.net>, "knaack.h@gmx.de" <knaack.h@gmx.de>,
 "renatogeh@gmail.com" <renatogeh@gmail.com>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "Popa,
 Stefan Serban" <StefanSerban.Popa@analog.com>,
 "jic23@kernel.org" <jic23@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Jonathan, Alex,

Thanks for the review. Some comments inline.

Thanks,
Renato

On 05/20, Ardelean, Alexandru wrote:
>On Sun, 2019-05-19 at 12:32 +0100, Jonathan Cameron wrote:
>> [External]
>>
>>
>> On Sat, 18 May 2019 19:41:12 -0300
>> Renato Lui Geh <renatogeh@gmail.com> wrote:
>>
>> > This patch adds a YAML binding for the Analog Devices AD7780/1 and
>> > AD7170/1 analog-to-digital converters.
>> >
>> > Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
>>
>> One comment inline.  I'll also be needing an ack from Analog on this,
>> preferably Michael's.
>>
>> Thanks,
>>
>> Jonathan
>> > ---
>> >  .../bindings/iio/adc/adi,ad7780.txt           | 48 -----------
>> >  .../bindings/iio/adc/adi,ad7780.yaml          | 85 +++++++++++++++++++
>
>You should also update the MAINTAINERS file.
>Maybe in a following patch.
>It looks like there is not entry in there, so maybe you need to add a new
>one.
>
>Something like:
>
>
>ANALOG DEVICES INC AD7780 DRIVER
>M:      Michael Hennerich <Michael.Hennerich@analog.com>
>M:      Renato Lui Geh <renatogeh@gmail.com>
>L:      linux-iio@vger.kernel.org
>W:      http://ez.analog.com/community/linux-device-drivers
>S:      Supported
>F:      drivers/iio/adc/ad7780.c
>F:      Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
>
>This should be after this block
>ANALOG DEVICES INC AD7768-1 DRIVER
>
>Note that I added you as a co-maintainer.
>If you want, you do not need to add that line.
>
>> >  2 files changed, 85 insertions(+), 48 deletions(-)
>> >  delete mode 100644
>> > Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
>> >  create mode 100644
>> > Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
>> >
>> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
>> > b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
>> > deleted file mode 100644
>> > index 440e52555349..000000000000
>> > --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
>> > +++ /dev/null
>> > @@ -1,48 +0,0 @@
>> > -* Analog Devices AD7170/AD7171/AD7780/AD7781
>> > -
>> > -Data sheets:
>> > -
>> > -- AD7170:
>> > -     *
>> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
>> > -- AD7171:
>> > -     *
>> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
>> > -- AD7780:
>> > -     *
>> > https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
>> > -- AD7781:
>> > -     *
>> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
>> > -
>> > -Required properties:
>> > -
>> > -- compatible: should be one of
>> > -     * "adi,ad7170"
>> > -     * "adi,ad7171"
>> > -     * "adi,ad7780"
>> > -     * "adi,ad7781"
>> > -- reg: spi chip select number for the device
>> > -- vref-supply: the regulator supply for the ADC reference voltage
>> > -
>> > -Optional properties:
>> > -
>> > -- powerdown-gpios:  must be the device tree identifier of the PDRST
>> > pin. If
>> > -                 specified, it will be asserted during driver probe.
>> > As the
>> > -                 line is active high, it should be marked
>> > GPIO_ACTIVE_HIGH.
>> > -- adi,gain-gpios:   must be the device tree identifier of the GAIN
>> > pin. Only for
>> > -                 the ad778x chips. If specified, it will be asserted
>> > during
>> > -                 driver probe. As the line is active low, it should be
>> > marked
>> > -                 GPIO_ACTIVE_LOW.
>> > -- adi,filter-gpios: must be the device tree identifier of the FILTER
>> > pin. Only
>> > -                 for the ad778x chips. If specified, it will be
>> > asserted
>> > -                 during driver probe. As the line is active low, it
>> > should be
>> > -                 marked GPIO_ACTIVE_LOW.
>> > -
>> > -Example:
>> > -
>> > -adc@0 {
>> > -     compatible =  "adi,ad7780";
>> > -     reg =         <0>;
>> > -     vref-supply = <&vdd_supply>
>> > -
>> > -     powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
>> > -     adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
>> > -     adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
>> > -};
>> > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
>> > b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
>> > new file mode 100644
>> > index 000000000000..931bc4f8ec04
>> > --- /dev/null
>> > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
>> > @@ -0,0 +1,85 @@
>> > +# SPDX-License-Identifier: GPL-2.0
>> > +%YAML 1.2
>> > +---
>> > +$id: http://devicetree.org/schemas/iio/adc/adi,ad7780.yaml#
>> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> > +
>> > +title: Analog Devices AD7170/AD7171/AD7780/AD7781 analog to digital
>> > converters
>> > +
>> > +maintainers:
>> > +  - Michael Hennerich <michael.hennerich@analog.com>
>> > +
>> > +description: |
>> > +  The ad7780 is a sigma-delta analog to digital converter. This driver
>> > provides
>> > +  reading voltage values and status bits from both the ad778x and
>> > ad717x series.
>> > +  Its interface also allows writing on the FILTER and GAIN GPIO pins
>> > on the
>> > +  ad778x.
>> > +
>> > +  Specifications on the converters can be found at:
>> > +    AD7170:
>> > +
>> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
>> > +    AD7171:
>> > +
>> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
>> > +    AD7780:
>> > +
>> > https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
>> > +    AD7781:
>> > +
>> > https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
>> > +
>> > +properties:
>> > +  compatible:
>> > +    enum:
>> > +      - adi,ad7170
>> > +      - adi,ad7171
>> > +      - adi,ad7780
>> > +      - adi,ad7781
>> > +
>> > +  reg:
>> > +    description:
>> > +      Chip select number for the device
>
>No need to add a description.
>This is pretty standard.
>
>> > +    maxItems: 1
>> > +
>> > +  vref-supply:
>> > +    description:
>> > +      The regulator supply for the ADC reference voltage
>> > +    maxItems: 1
>> > +
>
>As I see in the driver, it's not vref-supply, it's avdd-supply.

You're absolutely right. Shouldn't have mindlessly copied
from the txt, even though the txt's was also my fault.

By the way, a quick look at ad7170 and ad7780's datasheets
shows that the 7170 uses VDD, and the 7780, AVDD. Are they
equivalent?
>
>> > +  powerdown-gpios:
>> > +    description:
>> > +      Must be the device tree identifier of the PDRST pin. If
>> > +      specified, it will be asserted during driver probe. As the
>> > +      line is active high, it should be marked GPIO_ACTIVE_HIGH.
>> > +    maxItems: 1
>> > +
>> > +  adi,gain-gpios:
>> > +    description:
>> > +      Must be the device tree identifier of the GAIN pin. Only for
>> > +      the ad778x chips. If specified, it will be asserted during
>> > +      driver probe. As the line is active low, it should be marked
>> > +      GPIO_ACTIVE_LOW.
>> > +    maxItems: 1
>> > +
>> > +  adi,filter-gpios:
>> > +    description:
>> > +      Must be the device tree identifier of the FILTER pin. Only
>> > +      for the ad778x chips. If specified, it will be asserted
>> > +      during driver probe. As the line is active low, it should be
>> > +      marked GPIO_ACTIVE_LOW.
>> > +    maxItems: 1
>> > +
>> > +required:
>> > +  - compatible
>> > +  - reg
>> > +  - vref-supply
>>
>> Is that actually true?  I'd imagine it'll use a stub regulator if
>> it isn't supplied.
>
>Hmm, I also think this can be omitted as required.
>devm_regulator_get() is used.
>devm_regulator_get_exclusive() would be needed to make this required.

I see. So the difference between devm_regulator_get and
devm_regulator_get_optional is that the former uses a stub
when the requested reg isn't supplied, and the latter
doesn't?
>
>>
>> > +
>> > +examples:
>> > +  - |
>> > +    #include <dt-bindings/gpio/gpio.h>
>> > +    adc@0 {
>
>The adc@0 block should be included in a spi block.
>
>So, something like
>
>spi0 {
>     adc@0 {
>            compatible =  "adi,ad7780";
>            reg =         <0>;
>            avdd-supply = <&vdd_supply>
>
>            powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
>            adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
>            adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
>     };
>};
>
>I know this wasn't the case before, but it should be (from what I recall).
>
>> > +      compatible =  "adi,ad7780";
>> > +      reg = <0>;
>> > +      vref-supply = <&vdd_supply>;
>> > +
>> > +      powerdown-gpios  = <&gpio0 12 GPIO_ACTIVE_HIGH>;
>> > +      adi,gain-gpios   = <&gpio1  5 GPIO_ACTIVE_LOW>;
>> > +      adi,filter-gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;
>
>Rest looks good.
>
>Thanks
>Alex
>
>> > +    };
>>
>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
