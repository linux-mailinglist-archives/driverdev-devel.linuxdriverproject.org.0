Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C904621F6
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Nov 2021 21:14:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1D03C40449;
	Mon, 29 Nov 2021 20:14:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VB1Z15UKKpnY; Mon, 29 Nov 2021 20:14:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B62FC403EB;
	Mon, 29 Nov 2021 20:14:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0AD1BF390
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 20:13:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 39F4E40417
 for <devel@linuxdriverproject.org>; Mon, 29 Nov 2021 20:13:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U7XngIGmK1rD for <devel@linuxdriverproject.org>;
 Mon, 29 Nov 2021 20:13:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D106C401F7
 for <devel@driverdev.osuosl.org>; Mon, 29 Nov 2021 20:13:54 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id v1so76958773edx.2
 for <devel@driverdev.osuosl.org>; Mon, 29 Nov 2021 12:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fi42U/2jTpx4BPkiel0v3NDRtd9dtjlNx3pYLf3HPek=;
 b=Cp149vpQac3NuayyncHRgVWAufJASCZmcQmiC8wTWF0gcADkg5OetNokGVSlko2U5V
 wu95zs4NSFS4Zef9eezxIxUyrXSwLKbBAQod5t5j8q51tKRtYf+I9C35RQ7He8CjsOGj
 ozkkesanML5s0T/kTEQASrhj+zaxg1f4wLkX3jQMn6XnmzMl8ITbNwUe2xP6Ewk887Bg
 bPoCn8Y9V5lj9fxOnFBtkW/ITEqk0Ng7XMbBVgSAsb8aYsMu85Bt71uJpF1a7A1SuXIp
 1EzEILVjPx8v9ChnM9Gioa5D+yd/pSWgze8wHFEQM7jbT5DHLUkfT5lg1Sw0/K69pveF
 25tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fi42U/2jTpx4BPkiel0v3NDRtd9dtjlNx3pYLf3HPek=;
 b=iBNaaLhAiFBuWEko4b/ZZ72mgsBkTqI50QqdXmXZJpvJLo5Aud3RrVvKVf+z/ffxot
 dgC0IU5RtGiW3W6BB4cLLYYfn9ypZ0VC5H7zNLRJzw1RuBUhkZtWbo6qowOOsKJCzEXV
 AAJtQgo5F9RGZ5DT4bCBKvi8ih5Iq10Jn5NcmZ3lncZOwEruWKGwHw+CY4+etMq6ShXZ
 aE9nkOvk1iIIH9D3Acg/+mDoAIx9lFAOn9QluKyD0KW+k9FdYiuFM1nycYITvxRcsmsL
 4sRXvH90RSX7AvOdszw0w95ojc79cwxbhKyrfawbnff9KGRqBwAiEWEYJvEelf+LMJcL
 kHlA==
X-Gm-Message-State: AOAM531mzyzBa6LpHDy0y0FQa1H1HVwPbSgaS94cXLQdaWpIb23jK0/I
 p5gKM9nCfFAhro1yiGodZ410d0NjezeH5YVf/Gs=
X-Google-Smtp-Source: ABdhPJxomutnM/GNTZ/jmxeBw2lYvQB2BV61no9JvRS0JnbN0CtivcJkvJEPPqNAW7GUtFRbx/PgSf3ryQizZel12NE=
X-Received: by 2002:a05:6402:3595:: with SMTP id
 y21mr78068428edc.332.1638216832876; 
 Mon, 29 Nov 2021 12:13:52 -0800 (PST)
MIME-Version: 1.0
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-3-benjamin.gaignard@collabora.com>
In-Reply-To: <20210407073534.376722-3-benjamin.gaignard@collabora.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 29 Nov 2021 14:13:41 -0600
Message-ID: <CAHCN7x+HOMoVNq-swqA2p3ddGKft_8QkB2qm00-CN8Dujaw52Q@mail.gmail.com>
Subject: Re: [PATCH v9 02/13] dt-bindings: media: nxp, imx8mq-vpu: Update the
 bindings for G2 support
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
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
Cc: kernel@collabora.com, devel@driverdev.osuosl.org,
 Rob Herring <robh@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, NXP Linux Team <linux-imx@nxp.com>,
 Chris Healy <cphealy@gmail.com>, linux-media <linux-media@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Sascha Hauer <s.hauer@pengutronix.de>,
 mripard@kernel.org, Rob Herring <robh+dt@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, emil.l.velikov@gmail.com,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 paul.kocialkowski@bootlin.com, Sascha Hauer <kernel@pengutronix.de>,
 hverkuil-cisco@xs4all.nl, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Apr 7, 2021 at 2:37 AM Benjamin Gaignard
<benjamin.gaignard@collabora.com> wrote:
>
> Introducing the G2 hevc video decoder requires modifications of the bindings to allow
> one node per VPU.
>
> VPUs share one hardware control block which is provided as a phandle on
> a syscon.
> Each node has now one reg and one interrupt.
> Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.
>
> To be compatible with older DT the driver is still capable to use the 'ctrl'
> reg-name even if it is deprecated now.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

I need to edit the yaml file to add support the imx8mm, but it doesn't
appear that this series has gone anywhere.  I know there is still some
waiting on the vpu-blk-ctrl driver, but it seems like the 8mq could
split the codecs out using syscon in place of the blk-ctrl until that
driver is available.  If that doesn't work, I might have to introduce
a separate yaml file for mini which could be somehow merged with the
8mq in the future.  I am just not sure which way to go right now.

adam
> ---
> version 9:
>  - Corrections in commit message
>
> version 7:
>  - Add Rob and Philipp reviewed-by tag
>  - Change syscon phandle name to nxp,imx8m-vpu-ctrl (remove 'q' to be
>    usable for iMX8MM too)
>
> version 5:
> - This version doesn't break the backward compatibilty between kernel
>   and DT.
>
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 53 ++++++++++++-------
>  1 file changed, 34 insertions(+), 19 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..18e7d40a5f24 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,22 +15,18 @@ description:
>
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +    oneOf:
> +      - const: nxp,imx8mq-vpu
> +      - const: nxp,imx8mq-vpu-g2
>
>    reg:
> -    maxItems: 3
> -
> -  reg-names:
> -    items:
> -      - const: g1
> -      - const: g2
> -      - const: ctrl
> +    maxItems: 1
>
>    interrupts:
> -    maxItems: 2
> +    maxItems: 1
>
>    interrupt-names:
> -    items:
> +    oneOf:
>        - const: g1
>        - const: g2
>
> @@ -46,14 +42,18 @@ properties:
>    power-domains:
>      maxItems: 1
>
> +  nxp,imx8m-vpu-ctrl:
> +    description: Specifies a phandle to syscon VPU hardware control block
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +
>  required:
>    - compatible
>    - reg
> -  - reg-names
>    - interrupts
>    - interrupt-names
>    - clocks
>    - clock-names
> +  - nxp,imx8m-vpu-ctrl
>
>  additionalProperties: false
>
> @@ -62,18 +62,33 @@ examples:
>          #include <dt-bindings/clock/imx8mq-clock.h>
>          #include <dt-bindings/interrupt-controller/arm-gic.h>
>
> -        vpu: video-codec@38300000 {
> +        vpu_ctrl: syscon@38320000 {
> +                 compatible = "nxp,imx8mq-vpu-ctrl", "syscon";
> +                 reg = <0x38320000 0x10000>;
> +        };
> +
> +        vpu_g1: video-codec@38300000 {
>                  compatible = "nxp,imx8mq-vpu";
> -                reg = <0x38300000 0x10000>,
> -                      <0x38310000 0x10000>,
> -                      <0x38320000 0x10000>;
> -                reg-names = "g1", "g2", "ctrl";
> -                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> -                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> -                interrupt-names = "g1", "g2";
> +                reg = <0x38300000 0x10000>;
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g1";
> +                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> +                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> +                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> +                clock-names = "g1", "g2", "bus";
> +                power-domains = <&pgc_vpu>;
> +                nxp,imx8m-vpu-ctrl = <&vpu_ctrl>;
> +        };
> +
> +        vpu_g2: video-codec@38310000 {
> +                compatible = "nxp,imx8mq-vpu-g2";
> +                reg = <0x38300000 0x10000>;
> +                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g2";
>                  clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
>                           <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
>                           <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
>                  clock-names = "g1", "g2", "bus";
>                  power-domains = <&pgc_vpu>;
> +                nxp,imx8m-vpu-ctrl = <&vpu_ctrl>;
>          };
> --
> 2.25.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
