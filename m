Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8326B175A7C
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 13:28:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A1A586064;
	Mon,  2 Mar 2020 12:28:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YzujkPnLBL1a; Mon,  2 Mar 2020 12:28:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EE52185C50;
	Mon,  2 Mar 2020 12:28:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D1B3F1BF343
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 12:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE88D843FE
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 12:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UPH72QZhl7rW for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 12:28:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AF6EA842DE
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 12:28:25 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id x19so4676912otp.7
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 04:28:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=wZYZAbcqMvd207t9hfFOk6y3G0CkgQqD0dKaK71lZb4=;
 b=R0KpxJxtG+UQPgjSqrKZ21jyTJy4Mlw/Yu8QmMy4x9HE3CMHGkJiGIe1g5GetR6jgn
 Xv7smuVJInhTKDXOnjpjvrrvmGWzt3D6c6lutU96TZQr9up2agqK3+kN+4HqpFfir12H
 Qu9gk+EdP7timM7Y3Si3TV9/2FQUYYaBbZIzX8Cj6bv+MU5riVpErrqLvGJTCKqW1hcL
 vY+qXJPsbw30TZAAJlZ0xjitJxr6eq39FwxUMpo4E0VURUr5Nnh/4U4MgsXIPVw8zaun
 ZflMTU9wHI2ybOZUfKjsLjcezwaSexywn/HD2sxtQUsELJmlMCCR3IksKxb8clPj3ssr
 yjEg==
X-Gm-Message-State: APjAAAVN7nIUqoU6Q74E7D3lnsBWmArBcG6ZiM56z2YM3U9SjTu13KN+
 2jf9JodZ49WBSNN2rFvRTp/YTGXAROmBOr7gAdE=
X-Google-Smtp-Source: APXvYqzN+m0jue0ZTokoqurX7tBCYT/bfoG/F9HvM0fLl2C7tpJvdjqoMETuKvoCS8cUYtBFAfQ6dPbGSXXYJ4em2mQ=
X-Received: by 2002:a05:6830:1d4:: with SMTP id
 r20mr12476739ota.107.1583152104944; 
 Mon, 02 Mar 2020 04:28:24 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
 <20200113141556.GI3606@pflmari>
In-Reply-To: <20200113141556.GI3606@pflmari>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Mar 2020 13:28:13 +0100
Message-ID: <CAMuHMdV9urx-6N4tiaPdkssa6Wu-9HSB4VY-rvCu+8JpfZcBfA@mail.gmail.com>
Subject: Re: [PATCH 8/8] arm64: dts: renesas: salvator: add a connection from
 adv748x codec (HDMI input) to the R-Car SoC
To: Alex Riesen <alexander.riesen@cetitec.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, driverdevel <devel@driverdev.osuosl.org>, 
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

Thanks for your patch!

On Mon, Jan 13, 2020 at 3:24 PM Alex Riesen
<alexander.riesen@cetitec.com> wrote:
> Not sure if all variants of the Salvator board have the HDMI decoder
> chip (the ADV7482) connected to the SSI4 on R-Car SoC, as it is on
> Salvator-X ES1, so the the ADV7482 endpoint and connection definitions
> are placed in the board file.

Both Salvator-X and Salvator-XS have SSI4 wired to the ADV7482.

> I do assume though that all Salvator variants have the CLK_C clock line
> hard-wired to the ADV7482 HDMI decoder, and remove it from the list of
> clocks provided by the R-Car sound system.

Yes, both Salvator-X and Salvator-XS have it wired that way.  But please
see below.

> The I2C wiring is also likely to persist across the variants (similar
> to ak4613, connected to the same interface), so that is in the common
> file.
>
> Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>

Below are my comments w.r.t. the board-specific wiring.
I'll defer to the multimedia people for commenting on the audio parts.

BTW, what is the status of the other patches in this series?

> --- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> +++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> @@ -322,6 +322,10 @@
>         clock-frequency = <22579200>;
>  };
>
> +&audio_clk_c {
> +       clock-frequency = <12288000>;
> +};

Does the ADV7482 always generate a 12.288 MHz clock signal?
Or is this programmable?

> +
>  &avb {
>         pinctrl-0 = <&avb_pins>;
>         pinctrl-names = "default";
> @@ -471,12 +475,14 @@
>
>                 #address-cells = <1>;
>                 #size-cells = <0>;
> +               #sound-dai-cells = <0>;
>
>                 interrupt-parent = <&gpio6>;
>                 interrupt-names = "intrq1", "intrq2";
>                 interrupts = <30 IRQ_TYPE_LEVEL_LOW>,
>                              <31 IRQ_TYPE_LEVEL_LOW>;
> -
> +               clocks = <&rcar_sound 3>, <&audio_clk_c>;
> +               clock-names = "clk-hdmi-video", "clk-hdmi-i2s-mclk";

The above declares the Audio CLK C to be a clock input of the ADV7482, while
it is an output.
Furthermore, the DT bindings do not document that clocks can be specified.

>                 port@7 {
>                         reg = <7>;
>
> @@ -512,6 +518,14 @@
>                                 remote-endpoint = <&csi20_in>;
>                         };
>                 };
> +
> +               port@c {
> +                       reg = <12>;
> +
> +                       adv7482_i2s: endpoint {
> +                               /* remote-endpoint defined in the board file */
> +                       };
> +               };
>         };
>
>         csa_vdd: adc@7c {
> @@ -686,7 +700,8 @@
>         };
>
>         sound_pins: sound {
> -               groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data_a";
> +               groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data_a",
> +                        "ssi4_data";

Missing "ss4_ctrl", for the SCK4 and WS4 pins.

>                 function = "ssi";
>         };
>
> @@ -735,8 +750,8 @@
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
> @@ -760,8 +775,18 @@
>                  <&cpg CPG_MOD 1020>, <&cpg CPG_MOD 1021>,
>                  <&cpg CPG_MOD 1019>, <&cpg CPG_MOD 1018>,
>                  <&audio_clk_a>, <&cs2000>,
> -                <&audio_clk_c>,

Why remove it? This is the list of clock inputs, not outputs.

>                  <&cpg CPG_CORE CPG_AUDIO_CLK_I>;
> +       clock-names = "ssi-all",
> +                     "ssi.9", "ssi.8", "ssi.7", "ssi.6",
> +                     "ssi.5", "ssi.4", "ssi.3", "ssi.2",
> +                     "ssi.1", "ssi.0",
> +                     "src.9", "src.8", "src.7", "src.6",
> +                     "src.5", "src.4", "src.3", "src.2",
> +                     "src.1", "src.0",
> +                     "mix.1", "mix.0",
> +                     "ctu.1", "ctu.0",
> +                     "dvc.0", "dvc.1",
> +                     "clk_a", "clk_b", "clk_i";
>
>         ports {
>                 #address-cells = <1>;
> --
> 2.24.1.508.g91d2dafee0

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
