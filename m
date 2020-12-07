Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A80312D1D8C
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Dec 2020 23:42:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C63E287769;
	Mon,  7 Dec 2020 22:42:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lGAg1QjZ0F7G; Mon,  7 Dec 2020 22:42:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E0BA873FD;
	Mon,  7 Dec 2020 22:42:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 264841BF312
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 22:42:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2290E873FD
 for <devel@linuxdriverproject.org>; Mon,  7 Dec 2020 22:42:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mXdZ1ta9G5FT for <devel@linuxdriverproject.org>;
 Mon,  7 Dec 2020 22:42:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f196.google.com (mail-lj1-f196.google.com
 [209.85.208.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB3C9873E9
 for <devel@driverdev.osuosl.org>; Mon,  7 Dec 2020 22:42:30 +0000 (UTC)
Received: by mail-lj1-f196.google.com with SMTP id o24so16873991ljj.6
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 14:42:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cImNfTxV3yatbn+FwY8M9bZp9qMjG8D8HnYsrobPKBM=;
 b=l/3wAoeuSBrTZ5kzXGqkOaoPHawgUXp/mHZNKiEgADA645+ISC1YZ5iqJSJE4+v7XZ
 xITpXU1sinnNXZW40rT7HZ9HShZ2VXfN0X+Aub2v/zs7L1Z9Rpi5mG56cCwHWGDM7EfC
 TYf097m6CnVspCAAUT7WedGTeh+kjr78Ck97MfE4ZiBDJSdNjadXF8AF0c3WKqiv5gQy
 1K3PB9Gu3LhF7EApfg/b+njaSxfT7CJBuj0f6/eB6HvN3aeATU7Ogpo0xxmALvGEUhrK
 UmnvAGyBnC3OfhTcxyd1TAzTPNXz9tUs239JVEq2mS0RhykttT9WUZEjnT9zoW+1x9QF
 W4Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cImNfTxV3yatbn+FwY8M9bZp9qMjG8D8HnYsrobPKBM=;
 b=lvRWof/TbmnA1v0L0nvziUFiziF9+YncDyYGRvq5EEnv/9IwLC4ZeBOAa76dLsHLwZ
 lEMR5czsjHshDy79miTCkEgek7M2rn9Cs38l7JAHTa0pHkUyux4Y3tjgqUYth3IRIF1z
 GMQTytsBzauvFv+MCXpIK2CRH+wjgdAP20gPf0fQKZofdnubT22DfU3QLu0usAWHRw0W
 1SWud20kSrDVuj90QlnD8BRI0cOX75kJsSGV+sf/n+z/qQ3t+c4ECsKmCaeoqXF1QuBY
 T0FO78j8zpZM5RB73dxYdfcWqISv878YP6kbQqCxy9C/7q9WwlrDls5VhJWTgWHUQrLT
 LJVA==
X-Gm-Message-State: AOAM532mFJo7OLT7LzhitkxwirgbGQU94DQDLM/2mGwCGmDRYCn//QYI
 kzxpCgRpvUe+VvDutZ8Fi6T4J+uBprO2z7Sam6er1w==
X-Google-Smtp-Source: ABdhPJy8Ot+W5f80Fu6BvEpJfkPnwWQJWnUoywlXCUa7zl1OOM6UIV8Ecm6vA/ioB3u0PzOzFPstmhe2dwDhcTnSjz8=
X-Received: by 2002:a2e:9ad3:: with SMTP id p19mr4433350ljj.286.1607380948588; 
 Mon, 07 Dec 2020 14:42:28 -0800 (PST)
MIME-Version: 1.0
References: <20201207192104.6046-1-sergio.paracuellos@gmail.com>
 <20201207192104.6046-2-sergio.paracuellos@gmail.com>
In-Reply-To: <20201207192104.6046-2-sergio.paracuellos@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 7 Dec 2020 23:42:16 +0100
Message-ID: <CACRpkdavpQ+QP56MVQ5E0oxNKWb0tR9g8vHay6-LAc+Bj7tAQQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: pinctrl: rt2880: add binding document
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
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
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Sergio,

thanks for driving this!

On Mon, Dec 7, 2020 at 8:21 PM Sergio Paracuellos
<sergio.paracuellos@gmail.com> wrote:

> The commit adds rt2880 compatible node in binding document.
>
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
(...)
> +description:
> +  The rt2880 pinmux can only set the muxing of pin groups. muxing indiviual pins
> +  is not supported. There is no pinconf support.

OK!

> +properties:
> +  compatible:
> +    enum:
> +      - ralink,rt2880-pinmux
> +
> +  pinctrl-0:
> +    description:
> +      A phandle to the node containing the subnodes containing default
> +      configurations.

As it is a node on the pin controller itself, this is a hog so write something
about that this is for pinctrl hogs.

> +  pinctrl-names:
> +    description:
> +      A pinctrl state named "default" must be defined.
> +    const: default

Is it really compulsory?

> +required:
> +  - compatible
> +  - pinctrl-names
> +  - pinctrl-0

I wonder if the hogs are really compulsory.

> +patternProperties:
> +  '^.*$':

That's liberal node naming!
What about [a-z0-9_-]+ or something?

> +    if:
> +      type: object
> +      description: |
> +        A pinctrl node should contain at least one subnodes representing the
> +        pinctrl groups available on the machine.
> +      $ref: "pinmux-node.yaml"
> +      required:
> +        - groups
> +        - function
> +      additionalProperties: false
> +    then:
> +      properties:
> +        groups:
> +          description:
> +            Name of the pin group to use for the functions.
> +          $ref: "/schemas/types.yaml#/definitions/string"
> +          enum: [i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2, mdio,
> +                 pcie, sdhci]
> +        function:
> +          description:
> +            The mux function to select
> +          $ref: "/schemas/types.yaml#/definitions/string"
> +          enum: [gpio, i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2,
> +                 mdio, nand1, nand2, sdhci]

Why do we have this complex if: clause?
$ref: "pinmux-node.yaml" should bring in the groups and
function properties. Then you can add some further restrictions
on top of that, right?

I would just do:

patternProperties:
  '^[a-z0-9_]+$':
    type: object
      description: node for pinctrl
      $ref "pinmux-node.yaml"

      properties:
        groups:
          description: groups...
          enum: [i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2, mdio,
pcie, sdhci]
        function:
          description: function...
          enum: [gpio, i2c, spi, uart1, uart2, uart3, rgmii1, rgmii2,
mdio, nand1, nand2, sdhci]

Note: the function names are fine but the group names are a bit
confusion since often a group can be used for more than one
function, and e.g.

function = "i2c";
group = "uart1";

to use the uart1 pins for an i2c is gonna look mildly confusing.

But if this is what the hardware calls it I suppose it is
fine.

Yours,
Linus Walleij
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
