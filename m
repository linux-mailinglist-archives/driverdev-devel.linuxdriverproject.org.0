Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB022A0A04
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 16:37:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7035686B22;
	Fri, 30 Oct 2020 15:37:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 847HR+TVDhJT; Fri, 30 Oct 2020 15:37:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 30EA88608B;
	Fri, 30 Oct 2020 15:37:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1946D1BF2B3
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 15:37:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 139EE228D5
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 15:37:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XtNIVxegmHlF for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 15:37:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 3D14520367
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 15:37:04 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id j21so5867942ota.13
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 08:37:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ofFXL9c4WfPJ0vh1CrcqW4yOOzqJ5jwhDnFefF3udus=;
 b=knO+Pw7wHVZ73otcqiS9bpt5CFIBe5DECSTCBV1CW1BkjvmnUqn1vOwoG3ITBdTDgR
 iSODo8Lb+WtrIX2YszYkfV6VSV7qmMCSL90hQB/XgtgQineYoDnRDP4CDCuYZNNIlcva
 hmKGk58ezBcEXAf2Ybh5EKUYszKkK3DHLDxcUMwKUmGp91OvcAw4ZyYyuWHmC7Ob6/jq
 VgYlnY/qMs+OgnLtV34CzgrxskqEeSAA3HBO40hlzK1vcpFnYJxn93vIw9L8r8TTYYXi
 GfGA87bGMm6AmrzDkW/IhfnpieVZlL8iYdPEZiTNa0KsxG3euqo8IK+XVWYYa1p9+C10
 qccg==
X-Gm-Message-State: AOAM531mB6QGQeyfWIPcET7L0e/yl5ptpCE58hkIyhXacev6vcxIGk1O
 miwdNWr8TSlV0Er6uVfPBg==
X-Google-Smtp-Source: ABdhPJycwUiV1vpf0o9YvAtnAVAgs/nLhIp6vbRgzxDr6FgbxTRz8AT2NZiGH5vGAw9RUdLMKfrjGg==
X-Received: by 2002:a05:6830:1345:: with SMTP id
 r5mr2026633otq.6.1604072223527; 
 Fri, 30 Oct 2020 08:37:03 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m13sm1363306otn.20.2020.10.30.08.37.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Oct 2020 08:37:02 -0700 (PDT)
Received: (nullmailer pid 3888717 invoked by uid 1000);
 Fri, 30 Oct 2020 15:37:01 -0000
Date: Fri, 30 Oct 2020 10:37:01 -0500
From: Rob Herring <robh@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 08/10] dt-bindings: pwm: Add binding for RPi firmware
 PWM bus
Message-ID: <20201030153701.GA3888665@bogus>
References: <20201022155858.20867-1-nsaenzjulienne@suse.de>
 <20201022155858.20867-9-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201022155858.20867-9-nsaenzjulienne@suse.de>
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
Cc: devicetree@vger.kernel.org, linus.walleij@linaro.org,
 Eric Anholt <eric@anholt.net>, linux-clk@vger.kernel.org,
 devel@driverdev.osuosl.org, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, u.kleine-koenig@pengutronix.de,
 linux-pwm@vger.kernel.org, Ray Jui <rjui@broadcom.com>,
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

On Thu, 22 Oct 2020 17:58:55 +0200, Nicolas Saenz Julienne wrote:
> The PWM bus controlling the fan in RPi's official PoE hat can only be
> controlled by the board's co-processor.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> Changes since v1:
>  - Update bindings to use 2 #pwm-cells
> 
>  .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 20 +++++++++++++++++++
>  .../pwm/raspberrypi,firmware-pwm.h            | 13 ++++++++++++
>  2 files changed, 33 insertions(+)
>  create mode 100644 include/dt-bindings/pwm/raspberrypi,firmware-pwm.h
> 

Reviewed-by: Rob Herring <robh@kernel.org>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
