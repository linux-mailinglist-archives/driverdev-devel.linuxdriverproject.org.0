Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C66862D7079
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Dec 2020 07:59:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7B4B1231A0;
	Fri, 11 Dec 2020 06:58:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oSwYZ3FgcYd0; Fri, 11 Dec 2020 06:58:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CF2C72741E;
	Fri, 11 Dec 2020 06:58:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E20B41BF393
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 06:58:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DE93986435
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 06:58:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s5KveMO9mjGo for <devel@linuxdriverproject.org>;
 Fri, 11 Dec 2020 06:58:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com
 [209.85.161.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AF808863CD
 for <devel@driverdev.osuosl.org>; Fri, 11 Dec 2020 06:58:52 +0000 (UTC)
Received: by mail-oo1-f66.google.com with SMTP id w9so1909305ooh.13
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 22:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EzWEX84UzInmkz2TvYJ3PGWef5ao1pFDDJMFflQQZVA=;
 b=DWZ2dw4CoxFlz69UT2ewFOGkd9w2VuzDTHuoQpZZfFn4R56VnN7iKjLBLl2xsygTVw
 wqiGmpChTm/iSDe1Ul7A3BW2D5JBMDt1IOHkQTQ4A6ucGQAwwRcjrrmIHFzb2PD9zvv6
 Tfmfw0vXrv/bGDrmHfWU1lu470EWR2+y3JnIEPvEn2L0JOKYU6C6XMf2CvOqPli6uMAp
 82WCo9gMqm2KIP1rHhcEoCo9ubGAIktvNsLSk5W+5P2UT8GETz33v3kA2ofkMKdWCX0i
 aeuW80s1bXp7fFpp14rlkuxIr1q44PA1WARkcy0aD3OZbphyV9doDN2c3S4D+Dv2Ii3o
 LW2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EzWEX84UzInmkz2TvYJ3PGWef5ao1pFDDJMFflQQZVA=;
 b=B0PJ/YkStBNfbSypVCR4y1T/CZXy12g5mTppDxU0vHbNIY19jhPv0pkimJSTJZ2SMI
 acnuO6BqwnVbKDvl7wETO3RtTTQiEWE5zHVGGFjqy8qybupDUn/qv+/N8cGHl8KVumv3
 c2CpoPx3KiaX8dn2hb1AT5zN+gcHQQcmtiDLhlJbkRNGMWt20Qd2KMWDhHOqI5Mgvxk3
 Uhx0s3rm5sRmgd+vSDeRrHXWd93dx30lvp2/u7Enr2OuIKn0lNv568ySxTlPUHP99Kj7
 y+LlvSJ7Nz3Jx7I7JKsJSQw2K5u9spzBzxGSZgrO6T8AcZo6LQ79aYYcIx9pmPbHcwFE
 NnEA==
X-Gm-Message-State: AOAM5303UQA2UFaomRl/4q9xaBhRxxeHYClgPDjpthU5SvnXPVM069+2
 HjUNhUyzV5XmBH50RUcTyG+HeZ5DfIHMMlCiAAo=
X-Google-Smtp-Source: ABdhPJzMUUA4+WqCkK3WdnilTntzzibkGR5Y9ww+a9f0INPrM5RodRYjv5ua4KocyTbMgiNpvzfU6IM3NnpHl9QA53c=
X-Received: by 2002:a4a:ded4:: with SMTP id w20mr8951843oou.49.1607669931921; 
 Thu, 10 Dec 2020 22:58:51 -0800 (PST)
MIME-Version: 1.0
References: <20201208075523.7060-1-sergio.paracuellos@gmail.com>
 <20201208075523.7060-2-sergio.paracuellos@gmail.com>
 <20201210134722.GA2398182@robh.at.kernel.org>
In-Reply-To: <20201210134722.GA2398182@robh.at.kernel.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 11 Dec 2020 07:58:41 +0100
Message-ID: <CAMhs-H8nMxO8Xtm5GbsTHyM2se_fCjy3Z9LiY9C=052my9oi+A@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: pinctrl: rt2880: add binding document
To: Rob Herring <robh@kernel.org>
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Yan <yanaijie@huawei.com>,
 Greg KH <gregkh@linuxfoundation.org>, Linus Walleij <linus.walleij@linaro.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Rob,

On Thu, Dec 10, 2020 at 2:47 PM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Dec 08, 2020 at 08:55:22AM +0100, Sergio Paracuellos wrote:
> > The commit adds rt2880 compatible node in binding document.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> >  .../pinctrl/ralink,rt2880-pinmux.yaml         | 70 +++++++++++++++++++
> >  1 file changed, 70 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
> > new file mode 100644
> > index 000000000000..7dea3e26d99e
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/pinctrl/ralink,rt2880-pinmux.yaml
> > @@ -0,0 +1,70 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/pinctrl/ralink,rt2880-pinmux.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Ralink rt2880 pinmux controller
> > +
> > +maintainers:
> > +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > +
> > +description:
> > +  The rt2880 pinmux can only set the muxing of pin groups. muxing indiviual pins
> > +  is not supported. There is no pinconf support.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - ralink,rt2880-pinmux
>
> What's the control interface as you have no 'reg' property.

There is not used in pinctrl. Every pin has a gpio function and
pinctrl and gpio are separate drivers. Here only pin functions and
groups are defined. The glue
code for this driver is done in arch/mips/ralink/mt7621.c using
specific pinmux.h header defined for ralink and then all that settings
are used in drivers through
the pinctrl driver.

>
> > +
> > +  pinctrl-0:
> > +    description:
> > +      A phandle to the node containing the subnodes containing default
> > +      configurations. This is for pinctrl hogs.
> > +
> > +  pinctrl-names:
> > +    description:
> > +      A pinctrl state named "default" can be defined.
> > +    const: default
>
> These 2 properties go in consumer nodes.

Ok, So I have to remove them from here. I see.

>
> > +
> > +required:
> > +  - compatible
> > +
> > +patternProperties:
> > +  '[a-z0-9_-]+':
> > +    if:
> > +      type: object
> > +      description: node for pinctrl.
> > +      $ref: "pinmux-node.yaml"
> > +    then:
>
> For new bindings, don't do this hack. Just name the nodes '-pins$'

I see. I will update bindings for pinctrl in staging and avoid this
if-then clause.

>
> > +      properties:
> > +        groups:
> > +          description: Name of the pin group to use for the functions.
> > +          enum: [i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2, mdio,
> > +                 pcie, sdhci]
> > +        function:
> > +          description: The mux function to select
> > +          enum: [gpio, i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2,
> > +                 mdio, nand1, nand2, sdhci]
>
>          additionalProperties: false

Ok, I will add this.

>
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  # Pinmux controller node
> > +  - |
> > +    pinctrl {
> > +      compatible = "ralink,rt2880-pinmux";
> > +      pinctrl-names = "default";
> > +      pinctrl-0 = <&state_default>;
> > +
> > +      state_default: pinctrl0 {
> > +      };
> > +
> > +      i2c_pins: i2c0 {
> > +        i2c0 {
> > +          groups = "i2c";
> > +          function = "i2c";
> > +        };
> > +      };
> > +    };
> > --
> > 2.25.1
> >

Thanks for the review.

Best regards,
    Sergio Paracuellos
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
