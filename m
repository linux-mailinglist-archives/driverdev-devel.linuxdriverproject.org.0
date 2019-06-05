Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B446B36593
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 22:36:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 761DB875B1;
	Wed,  5 Jun 2019 20:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U1FmXJ6n0JNb; Wed,  5 Jun 2019 20:36:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CC30E87591;
	Wed,  5 Jun 2019 20:36:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6F4C31BF2EC
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 20:36:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6BFF286F92
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 20:36:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z9lO7VzY913J for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 20:36:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com
 [209.85.222.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 095B486F8A
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 20:36:03 +0000 (UTC)
Received: by mail-qk1-f196.google.com with SMTP id c11so78336qkk.8
 for <devel@driverdev.osuosl.org>; Wed, 05 Jun 2019 13:36:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CAnC+wdfkUeaurm1Ol5XgkbBFWcJSDA54dS6qStgNNo=;
 b=Kez/1+upBfuCN4OBJvZLZoxpT9cEZQmdWuw9GCVS/t4GCB91yKTRfAEHId3fOLhfpc
 bzfXqY6HOmkhUbgn9I8CV2/bzslaEw8APrDoMP7icqH/Z3zO4Mug+OYHF4/NXl98X0Ib
 o8oMy4wSDLJe9ZF24yUqipi3sJ3taIlag84pEoWNbYBYAxn1wpaAA0vmXj2W9prrqrhC
 3xkX9wF9bUoYEefySX/ltmh2bRGxedR+F6g8AgGs+oQFajKfpHiUCli0KHWKNKUX7OQw
 xaXfIA71YJJjlTHnac0hNw1GwtUk+9iIgpp6EQgjOHgfP9b1gNPMolmrditB0pSWiPK5
 ZBaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CAnC+wdfkUeaurm1Ol5XgkbBFWcJSDA54dS6qStgNNo=;
 b=bD5vxJMmJR5dd6wqJWADZczBgjnkOOQl8fXRjiC7kOdR3qOqlbLYjCXXbNvBnhCsJX
 AKN8hD7ev28F9gPLm2gphKOa0hk9gD/etmdFTKoIxItNYz11OpsI7dATrAMMZ2DjAfux
 Umh1fnunOmhBY/iSeFiVlWpAK+tnJevB9ogWhOPcnJNtci2U3Q0riIa49DxipVNMLh63
 LzntFl29aBIZBq+saO3KI+fS8n/Wh0tZ5w1ujBdxkSx2Ke4fFmi09rrGuRieXrYR+nUU
 LiNNVKoFXWnPxVU5ZEfzHaV5KMmjjcDatrkvt25E1B0Mw73oU9IHP91EYpJdVoubcPTD
 Omew==
X-Gm-Message-State: APjAAAV6E+AohUMhgEfj6CoXcyVGVCewao3E19msbREbhYpZu+Nxpi+r
 jE9gru8dXBVwlxp3oR1IpbI=
X-Google-Smtp-Source: APXvYqx9wAT2rnwnZPKWjF3Cc6LRy7IPHIbFjqhvs138P6JEtql0S+NdiL//EvkPyh82nNPbkt3S0w==
X-Received: by 2002:a37:9ece:: with SMTP id h197mr16112882qke.50.1559766961826; 
 Wed, 05 Jun 2019 13:36:01 -0700 (PDT)
Received: from renatolg ([143.107.45.1])
 by smtp.gmail.com with ESMTPSA id n10sm6932589qtp.81.2019.06.05.13.35.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 05 Jun 2019 13:36:01 -0700 (PDT)
From: Renato Lui Geh <renatogeh@gmail.com>
X-Google-Original-From: Renato Lui Geh <renatogeh@renatolg>
Date: Wed, 5 Jun 2019 17:35:56 -0300
To: Jonathan Cameron <jic23@kernel.org>
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: adc: add adi, ad7780.yaml binding
Message-ID: <20190605203554.podktlonhp527iqq@renatolg>
References: <cover.1558746978.git.renatogeh@gmail.com>
 <2426649b2d8224ae72e7706bcb8c4f2c44c581d2.1558746978.git.renatogeh@gmail.com>
 <20190526173911.57ae3d11@archlinux>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190526173911.57ae3d11@archlinux>
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
Cc: mark.rutland@arm.com, devel@driverdev.osuosl.org, lars@metafoo.de,
 stefan.popa@analog.com, Michael.Hennerich@analog.com,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 kernel-usp@googlegroups.com, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, Renato Lui Geh <renatogeh@gmail.com>,
 alexandru.Ardelean@analog.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 05/26, Jonathan Cameron wrote:
>On Fri, 24 May 2019 22:26:30 -0300
>Renato Lui Geh <renatogeh@gmail.com> wrote:
>
>> This patch adds a YAML binding for the Analog Devices AD7780/1 and
>> AD7170/1 analog-to-digital converters.
>>
>> Signed-off-by: Renato Lui Geh <renatogeh@gmail.com>
>Looks good to me, but I'm still finding my feet with these so will
>leave it for a few days for others to have time to comment.
>
>Michael, looking for a quick reply from you to say if you are happy
>being explicitly listed as maintainer for this one, or if you'd
>rather land it on someone else.  Same applies for patch 2.
>
>Renato, if I seem to have forgotten this in a week or so, feel
>free to give me a poke. I've been known to loose patches entirely!

Hi Jonathan,

Just here to give you a poke. :)

By the way, in these cases, which would be easier for you? To send you
an email like I'm doing right now on last week's thread; or to resend
the entire patch(set)?

Thanks,
Renato
>
>Thanks,
>
>Jonathan
>> ---
>> Changes in v2:
>>  - vref-supply to avdd-supply
>>  - remove avdd-supply from required list
>>  - include adc block in an spi block
>>
>>  .../bindings/iio/adc/adi,ad7780.txt           | 48 ----------
>>  .../bindings/iio/adc/adi,ad7780.yaml          | 87 +++++++++++++++++++
>>  2 files changed, 87 insertions(+), 48 deletions(-)
>>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
>>  create mode 100644 Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
>> deleted file mode 100644
>> index 440e52555349..000000000000
>> --- a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.txt
>> +++ /dev/null
>> @@ -1,48 +0,0 @@
>> -* Analog Devices AD7170/AD7171/AD7780/AD7781
>> -
>> -Data sheets:
>> -
>> -- AD7170:
>> -	* https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
>> -- AD7171:
>> -	* https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
>> -- AD7780:
>> -	* https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
>> -- AD7781:
>> -	* https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
>> -
>> -Required properties:
>> -
>> -- compatible: should be one of
>> -	* "adi,ad7170"
>> -	* "adi,ad7171"
>> -	* "adi,ad7780"
>> -	* "adi,ad7781"
>> -- reg: spi chip select number for the device
>> -- vref-supply: the regulator supply for the ADC reference voltage
>> -
>> -Optional properties:
>> -
>> -- powerdown-gpios:  must be the device tree identifier of the PDRST pin. If
>> -		    specified, it will be asserted during driver probe. As the
>> -		    line is active high, it should be marked GPIO_ACTIVE_HIGH.
>> -- adi,gain-gpios:   must be the device tree identifier of the GAIN pin. Only for
>> -		    the ad778x chips. If specified, it will be asserted during
>> -		    driver probe. As the line is active low, it should be marked
>> -		    GPIO_ACTIVE_LOW.
>> -- adi,filter-gpios: must be the device tree identifier of the FILTER pin. Only
>> -		    for the ad778x chips. If specified, it will be asserted
>> -		    during driver probe. As the line is active low, it should be
>> -		    marked GPIO_ACTIVE_LOW.
>> -
>> -Example:
>> -
>> -adc@0 {
>> -	compatible =  "adi,ad7780";
>> -	reg =	      <0>;
>> -	vref-supply = <&vdd_supply>
>> -
>> -	powerdown-gpios  = <&gpio 12 GPIO_ACTIVE_HIGH>;
>> -	adi,gain-gpios   = <&gpio  5 GPIO_ACTIVE_LOW>;
>> -	adi,filter-gpios = <&gpio 15 GPIO_ACTIVE_LOW>;
>> -};
>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
>> new file mode 100644
>> index 000000000000..d1109416963c
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad7780.yaml
>> @@ -0,0 +1,87 @@
>> +# SPDX-License-Identifier: GPL-2.0
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/adc/adi,ad7780.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Analog Devices AD7170/AD7171/AD7780/AD7781 analog to digital converters
>> +
>> +maintainers:
>> +  - Michael Hennerich <michael.hennerich@analog.com>
>> +
>> +description: |
>> +  The ad7780 is a sigma-delta analog to digital converter. This driver provides
>> +  reading voltage values and status bits from both the ad778x and ad717x series.
>> +  Its interface also allows writing on the FILTER and GAIN GPIO pins on the
>> +  ad778x.
>> +
>> +  Specifications on the converters can be found at:
>> +    AD7170:
>> +      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7170.pdf
>> +    AD7171:
>> +      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7171.pdf
>> +    AD7780:
>> +      https://www.analog.com/media/en/technical-documentation/data-sheets/ad7780.pdf
>> +    AD7781:
>> +      https://www.analog.com/media/en/technical-documentation/data-sheets/AD7781.pdf
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - adi,ad7170
>> +      - adi,ad7171
>> +      - adi,ad7780
>> +      - adi,ad7781
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  avdd-supply:
>> +    description:
>> +      The regulator supply for the ADC reference voltage.
>> +    maxItems: 1
>> +
>> +  powerdown-gpios:
>> +    description:
>> +      Must be the device tree identifier of the PDRST pin. If
>> +      specified, it will be asserted during driver probe. As the
>> +      line is active high, it should be marked GPIO_ACTIVE_HIGH.
>> +    maxItems: 1
>> +
>> +  adi,gain-gpios:
>> +    description:
>> +      Must be the device tree identifier of the GAIN pin. Only for
>> +      the ad778x chips. If specified, it will be asserted during
>> +      driver probe. As the line is active low, it should be marked
>> +      GPIO_ACTIVE_LOW.
>> +    maxItems: 1
>> +
>> +  adi,filter-gpios:
>> +    description:
>> +      Must be the device tree identifier of the FILTER pin. Only
>> +      for the ad778x chips. If specified, it will be asserted
>> +      during driver probe. As the line is active low, it should be
>> +      marked GPIO_ACTIVE_LOW.
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/gpio/gpio.h>
>> +    spi0 {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        adc@0 {
>> +            compatible = "adi,ad7780";
>> +            reg = <0>;
>> +
>> +            avdd-supply      = <&vdd_supply>;
>> +            powerdown-gpios  = <&gpio0 12 GPIO_ACTIVE_HIGH>;
>> +            adi,gain-gpios   = <&gpio1  5 GPIO_ACTIVE_LOW>;
>> +            adi,filter-gpios = <&gpio2 15 GPIO_ACTIVE_LOW>;
>> +        };
>> +    };
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
