Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 006D731E2C0
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 23:49:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 681D6605D5
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 22:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nr5QKebci6Lq for <lists+driverdev-devel@lfdr.de>;
	Wed, 17 Feb 2021 22:49:15 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 4F811605BE; Wed, 17 Feb 2021 22:49:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92CE960093;
	Wed, 17 Feb 2021 22:48:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B1CF21BF3CC
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 22:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ADC7D85C7D
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 22:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a5BuncuyPCAv for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 22:48:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8CB3185AD6
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 22:48:43 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id l19so16773477oih.6
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 14:48:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=iwFEJ3kjWH7byU1Bj+qTU+zAIBp4rtQWtPBYut/wBEM=;
 b=hMlcvBzwxmB2LxHnXQ/ex0H62YRuicOrlEwbN+GFbbEOkiZABc23VRnCWZxoii38jq
 LchheWAeRSWDsljWwqMTbuO9Wx4+vfVMCFM/85E8KSwrhlDbvldiDMrP3YTarrkHe2DP
 s71J55AiE+GbUIXCFnWbwfyrSOMMq6miqI5eLEo3ocvZmMiNAno+Kk2hiz7hlwSoLyUr
 ivGIvgpmdYQbnH4T1hf2fEuU9wAbVgE+sDxWrAstssjBw6PVgUGr9A4mcxeqebVK6vAE
 rtY7qjbGJB5ADDo/oKXS8WbkoUA/dkd+L8fgc0ib4yjF/++xOgjPg31cnvsqAkSnBK9Q
 sung==
X-Gm-Message-State: AOAM531L1JAfWsycg092r4iWhLjY530tT9oojlLu9TWleh8DOrhvuGd0
 AKNKuXvjA7qeeCG2WjZCGw==
X-Google-Smtp-Source: ABdhPJyf/6sqkBW6AkNJ46Z+XYd5SPLiqxsxxEvUsHVT9KbgLtYtbIRNM/9Zyv8yIyOIeh47JrRsXA==
X-Received: by 2002:a05:6808:8da:: with SMTP id
 k26mr704298oij.165.1613602122708; 
 Wed, 17 Feb 2021 14:48:42 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 20sm166385oiz.14.2021.02.17.14.48.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Feb 2021 14:48:41 -0800 (PST)
Received: (nullmailer pid 2937635 invoked by uid 1000);
 Wed, 17 Feb 2021 22:48:39 -0000
Date: Wed, 17 Feb 2021 16:48:39 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 17/18] dt-bindings: media: nxp,imx8mq-vpu: Update
 bindings
Message-ID: <20210217224839.GA2888647@robh.at.kernel.org>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <20210217080306.157876-18-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210217080306.157876-18-benjamin.gaignard@collabora.com>
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
Cc: peng.fan@nxp.com, kernel@collabora.com, devel@driverdev.osuosl.org,
 Anson.Huang@nxp.com, krzk@kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 jernej.skrabec@siol.net, gregkh@linuxfoundation.org,
 adrian.ratiu@collabora.com, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, p.zabel@pengutronix.de,
 hverkuil-cisco@xs4all.nl, shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 09:03:05AM +0100, Benjamin Gaignard wrote:
> The introduction on HEVC decoder lead to update the bindings
> to support it.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
> ---
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 54 ++++++++++++-------
>  1 file changed, 36 insertions(+), 18 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..468435c70eef 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,24 +15,25 @@ description:
>  
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +    enum:
> +      - nxp,imx8mq-vpu
> +      - nxp,imx8mq-vpu-g2
>  
>    reg:
> -    maxItems: 3
> +    maxItems: 1
>  
>    reg-names:
> -    items:
> -      - const: g1
> -      - const: g2
> -      - const: ctrl
> +    enum:
> +      - g1
> +      - g2

This isn't a compatible change. You need to state why that's okay if it 
is okay.

>  
>    interrupts:
> -    maxItems: 2
> +    maxItems: 1
>  
>    interrupt-names:
> -    items:
> -      - const: g1
> -      - const: g2
> +    enum:
> +      - g1
> +      - g2
>  
>    clocks:
>      maxItems: 3
> @@ -46,6 +47,9 @@ properties:
>    power-domains:
>      maxItems: 1
>  
> +  resets:
> +    maxItems: 1
> +
>  required:
>    - compatible
>    - reg
> @@ -54,6 +58,7 @@ required:
>    - interrupt-names
>    - clocks
>    - clock-names
> +  - resets
>  
>  additionalProperties: false
>  
> @@ -61,19 +66,32 @@ examples:
>    - |
>          #include <dt-bindings/clock/imx8mq-clock.h>
>          #include <dt-bindings/interrupt-controller/arm-gic.h>
> +        #include <dt-bindings/reset/imx8mq-vpu-reset.h>
>  
> -        vpu: video-codec@38300000 {
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
> +                reg-names = "g1";
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g1";
> +                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> +                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> +                         <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> +                clock-names = "g1", "g2", "bus";
> +                power-domains = <&pgc_vpu>;
> +                resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G1>;
> +        };
> +
> +        vpu_g2: video-codec@38310000 {
> +                compatible = "nxp,imx8mq-vpu-g2";
> +                reg = <0x38310000 0x10000>;
> +                reg-names = "g2";
> +                interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g2";
>                  clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
>                           <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
>                           <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
>                  clock-names = "g1", "g2", "bus";
>                  power-domains = <&pgc_vpu>;
> +                resets = <&vpu_reset IMX8MQ_RESET_VPU_RESET_G2>;
>          };
> -- 
> 2.25.1
> 
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
