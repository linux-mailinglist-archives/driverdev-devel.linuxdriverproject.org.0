Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 919A6197686
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Mar 2020 10:33:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F094922C1A;
	Mon, 30 Mar 2020 08:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id os6GBt3GObqu; Mon, 30 Mar 2020 08:33:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E86C1228EF;
	Mon, 30 Mar 2020 08:33:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 314AC1BF35C
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 08:33:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2E05B85F4B
 for <devel@linuxdriverproject.org>; Mon, 30 Mar 2020 08:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kjlBoeSBrXRQ for <devel@linuxdriverproject.org>;
 Mon, 30 Mar 2020 08:32:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2800985F44
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 08:32:59 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id x11so17158032otp.6
 for <devel@driverdev.osuosl.org>; Mon, 30 Mar 2020 01:32:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Gel9b97+smELIFrYMFWtxb4iAAaZuDZrq93k+9Vr7r4=;
 b=YOsR8ftwLKiEeZ7YukVlFQz1WHBlP68YfnPi6/99ctsKmSi2f0SbjPoipUPIUR1TAy
 6TmVpW2fvu1DNAuMRAzztKMPjIQS7K1vFrWXTQ9m5zf37UKP7RruKepkMA/Uqkph3iY+
 RPjFTjT2j7WNk1bbq9eOgLB95Ds2ks4ynMDNsPBbGcPT+xIm4sCmO0r1XEwjnVeQaYoh
 8bIPjD4EmgrI1sLpjfZmtMWWBI/Ar1Nifszqmo0BIg/MF/Ogr4qIFp/e8EY6la9o8NRm
 80jIWjpTogwSKX9lW0AgM9uxeeRQLhE/uy1qNcY212Uk2uXtu+VNDrPvq+mtOZSaz+3a
 /iYA==
X-Gm-Message-State: ANhLgQ0g8jH2TkdXkLeGunDXWP4od+XtLXZpRomKmPR46OKBSfT3+RIv
 4Fi77jATaG36MQQTV573gRuINva1W1FqMOOJbKQ=
X-Google-Smtp-Source: ADFU+vsqb9g7ydmxPiqUUnhhqa6SbE8Ps8XkrQDmUFKt73Iz/YKOQFjnoHB8Y6abBUc6tZj75G8C2+Fn3ZS8XPvCGPY=
X-Received: by 2002:a05:6830:15c2:: with SMTP id
 j2mr7847135otr.107.1585557178365; 
 Mon, 30 Mar 2020 01:32:58 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1585218857.git.alexander.riesen@cetitec.com>
 <ad15f80df51c95a7c24498bb0bd3a46f55fbb62e.1585218857.git.alexander.riesen@cetitec.com>
In-Reply-To: <ad15f80df51c95a7c24498bb0bd3a46f55fbb62e.1585218857.git.alexander.riesen@cetitec.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 30 Mar 2020 10:32:47 +0200
Message-ID: <CAMuHMdV+joeNWJotKySVPHNW9OoT8+iODBwhK5fACspq2SX_eg@mail.gmail.com>
Subject: Re: [PATCH v4 9/9] arm64: dts: renesas: salvator: add a connection
 from adv748x codec (HDMI input) to the R-Car SoC
To: Alex Riesen <alexander.riesen@cetitec.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 driverdevel <devel@driverdev.osuosl.org>, 
 Linux Media Mailing List <linux-media@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alex,

On Thu, Mar 26, 2020 at 11:55 AM Alex Riesen
<alexander.riesen@cetitec.com> wrote:
> As all known variants of the Salvator board have the HDMI decoder
> chip (the ADV7482) connected to the SSI4 on R-Car SoC, the ADV7482
> endpoint and the connection definitions are placed in the common board
> file.
>
> For the same reason, the CLK_C clock line and I2C configuration (similar
> to the ak4613, on the same interface) are added into the common file.
>
> Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> +++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> @@ -460,7 +460,7 @@ pca9654: gpio@20 {
>                 #gpio-cells = <2>;
>         };
>
> -       video-receiver@70 {
> +       adv7482_hdmi_in: video-receiver@70 {
>                 compatible = "adi,adv7482";
>                 reg = <0x70 0x71 0x72 0x73 0x74 0x75
>                        0x60 0x61 0x62 0x63 0x64 0x65>;
> @@ -469,6 +469,7 @@ video-receiver@70 {
>
>                 #address-cells = <1>;
>                 #size-cells = <0>;
> +               #clock-cells = <0>; /* the MCLK for I2S output */
>
>                 interrupt-parent = <&gpio6>;
>                 interrupt-names = "intrq1", "intrq2";
> @@ -510,6 +511,15 @@ adv7482_txb: endpoint {
>                                 remote-endpoint = <&csi20_in>;
>                         };
>                 };
> +
> +               port@c {
> +                       reg = <12>;
> +
> +                       adv7482_i2s: endpoint {
> +                               remote-endpoint = <&rsnd_endpoint3>;
> +                               system-clock-direction-out;
> +                       };
> +               };

As the adv748x driver just ignores "invalid" endpoints...

> @@ -733,8 +744,8 @@ &rcar_sound {
>         pinctrl-0 = <&sound_pins &sound_clk_pins>;
>         pinctrl-names = "default";
>
> -       /* Single DAI */
> -       #sound-dai-cells = <0>;
> +       /* multi DAI */
> +       #sound-dai-cells = <1>;
>
>         /* audio_clkout0/1/2/3 */
>         #clock-cells = <1>;
> @@ -758,8 +769,19 @@ &rcar_sound {
>                  <&cpg CPG_MOD 1020>, <&cpg CPG_MOD 1021>,
>                  <&cpg CPG_MOD 1019>, <&cpg CPG_MOD 1018>,
>                  <&audio_clk_a>, <&cs2000>,
> -                <&audio_clk_c>,
> +                <&adv7482_hdmi_in>,
>                  <&cpg CPG_CORE CPG_AUDIO_CLK_I>;

... and the rsnd driver ignores nonexistent-clocks, the DT change has no
hard dependency on the driver change, and won't introduce regressions
when included, right?

> @@ -777,6 +799,21 @@ rsnd_endpoint0: endpoint {
>                                 capture  = <&ssi1 &src1 &dvc1>;
>                         };
>                 };
> +               rsnd_port3: port@3 {
> +                       reg = <3>;
> +                       rsnd_endpoint3: endpoint {
> +                               remote-endpoint = <&adv7482_i2s>;
> +
> +                               dai-tdm-slot-num = <8>;
> +                               dai-tdm-slot-width = <32>;
> +                               dai-format = "left_j";
> +                               mclk-fs = <256>;
> +                               bitclock-master = <&adv7482_i2s>;
> +                               frame-master = <&adv7482_i2s>;
> +
> +                               capture = <&ssi4>;
> +                       };
> +               };
>         };
>  };

However, as salvator-common.dtsi is shared by all Salvator-X(S) variants,
you'll have to add a dummy ssi4 node to r8a77961.dtsi first.

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
