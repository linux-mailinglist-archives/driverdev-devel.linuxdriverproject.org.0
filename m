Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 658C72D6E49
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Dec 2020 04:01:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id AE27E87228;
	Fri, 11 Dec 2020 03:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y8U4I0tRH-hO; Fri, 11 Dec 2020 03:01:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5331587184;
	Fri, 11 Dec 2020 03:01:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FE2C1BF335
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 03:01:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 77E35860BE
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 03:01:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-TRR7qKkJwG for <devel@linuxdriverproject.org>;
 Fri, 11 Dec 2020 03:01:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B5CD2860AD
 for <devel@driverdev.osuosl.org>; Fri, 11 Dec 2020 03:01:03 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id o11so7017978ote.4
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 19:01:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=bxEVmvuvgvxAxXjfH0UsYcMfJWZdt7Is0fsO8Ao9Gxk=;
 b=OHrLELMA9jq/MeFzgK1m8FD5sVSwnxbb8rpuR7BsZAw5ScQ1SpwVXdMxfffEkV5u1B
 PVkQI4gDTfg4Nm5EfuAzM+A8FXUuwi/fvHVumRCKShOhuz6VSZmaHcQPQkLSBwG3ZArU
 EYBSvmUmkET2V22mapYd8IzxAosFkvIa/B1EwmEFYBwAc55r4l+TUOHCH6vbMQvnHZNU
 ZuOJirG67tRRnidaDAoYXyGIEmCZniUGQlxJ6rdRUMZqQv5oHT/VMgVuJ1HeeFiYU5Pc
 D9tWPQxy1DrNzAC77mi5snthcbdOT9cvE6/j9SSjwIW/Zi4HAuWiy3ZOIbN2J3PMxMCg
 FO/g==
X-Gm-Message-State: AOAM531RoiS8ZLCODqXZ3JJLBGSBAWyBWsLUyWSA2uiQ3XbKJygV2DbH
 lFBfmCCnMwH4HesOMZ+EkQ==
X-Google-Smtp-Source: ABdhPJwNvin4qOwa9EmFH5TamvivmjDAGuGjlF4l85a7pdXJZuKtaj7NhbjkwP8YLrI2g+9wGQwr3A==
X-Received: by 2002:a9d:6642:: with SMTP id q2mr8244070otm.172.1607655663035; 
 Thu, 10 Dec 2020 19:01:03 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p4sm1501461oib.24.2020.12.10.19.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 19:01:02 -0800 (PST)
Received: (nullmailer pid 3535825 invoked by uid 1000);
 Fri, 11 Dec 2020 03:01:01 -0000
Date: Thu, 10 Dec 2020 21:01:01 -0600
From: Rob Herring <robh@kernel.org>
To: =?iso-8859-1?Q?J=F3zsef_Horv=E1th?= <info@ministro.hu>
Subject: Re: [PATCH v1 2/2] Staging: silabs si4455 serial driver: docs device
 tree binding
Message-ID: <20201211030101.GA3530369@robh.at.kernel.org>
References: <20201210122154.GA31799@dincontrollerdev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210122154.GA31799@dincontrollerdev>
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
Cc: devel@driverdev.osuosl.org,
 'Greg Kroah-Hartman' <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 10, 2020 at 12:21:56PM +0000, J=F3zsef Horv=E1th wrote:
> add: device tree binding schema

For the subject, follow conventions of the directory. Something like:

dt-bindings: serial: Add SiLabs SI4455 schema

> Signed-off-by: J=F3zsef Horv=E1th <info@ministro.hu>
> ---
>  .../bindings/serial/silabs,si4455.yaml        | 53 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  2 files changed, 54 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/serial/silabs,si445=
5.yaml
> =

> diff --git a/Documentation/devicetree/bindings/serial/silabs,si4455.yaml =
b/Documentation/devicetree/bindings/serial/silabs,si4455.yaml
> new file mode 100644
> index 000000000000..80a73a61755b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/serial/silabs,si4455.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: "http://devicetree.org/schemas/serial/silabs,si4455.yaml#"
> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
> +
> +title: Silicon Labs Si4455 device tree bindings

Add 'description' with some info on this h/w and possibly a link to =

datasheet if available.

> +
> +maintainers:
> +  - J=F3zsef Horv=E1th <info@ministro.hu>
> +
> +allOf:
> +  - $ref: "/schemas/serial.yaml#"
> +
> +properties:
> +  compatible:
> +    const: silabs,si4455
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    description: maximum clock frequency on SPI port
> +    maximum: 500000
> +
> +  shutdown-gpios:
> +    description: gpio pin for SDN
> +    maxItems: 1
> +
> +required:
> +  - reg
> +  - interrupts
> +  - spi-max-frequency
> +  - shutdown-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    &spi0 {
> +      serial0: si4455@0 {
> +        compatible =3D "silabs,si4455";
> +        reg =3D <0>;
> +        interrupt-parent =3D <&gpio>;
> +        interrupts =3D <7 IRQ_TYPE_LEVEL_LOW>;
> +        shutdown-gpios =3D <&gpio 26 1>;
> +        spi-max-frequency =3D <300000>;
> +      };
> +    };
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a29bc17d446d..16cc96971ac2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15937,7 +15937,7 @@ F:	drivers/platform/x86/touchscreen_dmi.c
>  SILICON LABS SI4455 SERIAL DRIVER
>  M:	J=F3zsef Horv=E1th <info@ministro.hu>
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/staging/serial/silabs,si4455.txt

This is a new file, right?

> +F:	Documentation/devicetree/bindings/serial/silabs,si4455.yaml
>  F:	drivers/tty/serial/si4455.c
>  F:	drivers/tty/serial/si4455_api.h
>  =

> -- =

> 2.17.1
> =

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
