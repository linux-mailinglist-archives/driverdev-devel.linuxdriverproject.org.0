Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAEA2A6D7E
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Nov 2020 20:06:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4737E86FCD;
	Wed,  4 Nov 2020 19:06:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ti5O0A0B02kE; Wed,  4 Nov 2020 19:06:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9519B86FCB;
	Wed,  4 Nov 2020 19:06:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB9771BF38E
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:06:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E568986FCB
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 19:06:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pam+UIS1f-Jx for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 19:06:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 38D0786FB8
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 19:06:16 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id 9so23290076oir.5
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 11:06:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cFN5h9yGsHsZOKXv8QOHIY58GxPhGQOkwRhjB/ZiBHY=;
 b=ayuAGTzPRciUP69EJ/qWPz4FdjzZzzlIoFmtfLZwPQJTSnxjS07WlcBrTOfd6DpAic
 JlQJbp8UVLfjXbTBEfsPXUbZufU91eRQiy8se0aGffm9PMJRBABeeMNCRBscodoXW6s6
 DZ/qam/76HJeC6kBiuMh/XJVPWSKQaZoZvWopExGfe96Vo49qQ4zlgaB2zMIC/vEnyHo
 uMqbZCbvtREQU3URrmIe7dXqBd0x2NmC246L18g1aSesRFlMYgqsfivY87vygb0UwY6f
 xbzyCGL+SVIJlh6XWul0BrHEQQIdrhEUINPna2NR2mXnTFxSYl88aXm35VnNZsQ1Kt6n
 LVEg==
X-Gm-Message-State: AOAM530w0TQGTnKTcmgEDSIvdYJX0QmBBw+ZmNGcrvWbhAapCuhj+HJc
 Fnig6i9YbnsUJ83ioozFzw==
X-Google-Smtp-Source: ABdhPJxg0zwV09ldz2969D3HBuxab6u1/Ts/gJbn+JECdctdgUFKh5ZxAEiWT0cSOANiSBHnw3BhhA==
X-Received: by 2002:aca:a951:: with SMTP id s78mr3577208oie.114.1604516775469; 
 Wed, 04 Nov 2020 11:06:15 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r188sm658438oia.13.2020.11.04.11.06.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 11:06:14 -0800 (PST)
Received: (nullmailer pid 3960013 invoked by uid 1000);
 Wed, 04 Nov 2020 19:06:12 -0000
Date: Wed, 4 Nov 2020 13:06:12 -0600
From: Rob Herring <robh@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 09/11] dt-bindings: pwm: Add binding for RPi firmware
 PWM bus
Message-ID: <20201104190612.GA3959462@bogus>
References: <20201104103938.1286-1-nsaenzjulienne@suse.de>
 <20201104103938.1286-10-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201104103938.1286-10-nsaenzjulienne@suse.de>
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
Cc: linux-pwm@vger.kernel.org, linus.walleij@linaro.org,
 Eric Anholt <eric@anholt.net>, linux-clk@vger.kernel.org,
 devel@driverdev.osuosl.org, Florian Fainelli <f.fainelli@gmail.com>,
 bgolaszewski@baylibre.com, andy.shevchenko@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, u.kleine-koenig@pengutronix.de,
 devicetree@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
 linux-input@vger.kernel.org, linux-gpio@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 sboyd@kernel.org, gregkh@linuxfoundation.org, dmitry.torokhov@gmail.com,
 linux-kernel@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 p.zabel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, 04 Nov 2020 11:39:35 +0100, Nicolas Saenz Julienne wrote:
> The PWM bus controlling the fan in RPi's official PoE hat can only be
> controlled by the board's co-processor.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Rob Herring <robh@kernel.org>
> 
> ---
> 
> Changes since v1:
>  - Update bindings to use 2 #pwm-cells
> 
>  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 20 +++++++++++++++++++
>  .../pwm/raspberrypi,firmware-pwm.h            | 13 ++++++++++++
>  2 files changed, 33 insertions(+)
>  create mode 100644 include/dt-bindings/pwm/raspberrypi,firmware-pwm.h
> 


My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.example.dt.yaml: firmware: pwm:#pwm-cells:0:0: 2 was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml


See https://patchwork.ozlabs.org/patch/1393804

The base for the patch is generally the last rc1. Any dependencies
should be noted.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
