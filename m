Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B10B175C0B
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 14:48:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6735120489;
	Mon,  2 Mar 2020 13:48:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IxlaHnOafec5; Mon,  2 Mar 2020 13:48:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 914DB2048F;
	Mon,  2 Mar 2020 13:48:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F2941BF29E
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:47:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 82B6385CD5
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 13:47:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36voaYbySRbn for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 13:47:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AAA7E85C98
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 13:47:58 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id p125so10281420oif.10
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 05:47:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=hDB6s0mVsZWzKBwRcoxWaZ6NA1lo5wdAr0u5W26z+JE=;
 b=KJT+u0BT/LtXLekP0ZDsCwddrgzCauaDd9SHM3AzmEf3beUC63YcNtlte/i50S0BQh
 v3LQfIzsu3ztNdrM7IsZZP7HobWdlYnr3RzpW2sHKqxTnAV62djSgi1kHoYGGRrDz072
 TTy2ZLjja70o5w/Ju2XvqrOn9CHazPVZ4bTs2RKUv9HSFV76V6lV66CjA4eAp+yi1i/h
 4KCBb9vz/rPrRS+pAgRdIb7TG+5WvY6cx92daVanb017TDIqg5mKgAp/4CjbBSwFFYQV
 K2ZsSV17xYhy7wD4h80JDBvb7ZBFYAi4Rhu3Lrg63LcLfxcEu2xxOPxpVBR9aXVST9vx
 qJow==
X-Gm-Message-State: APjAAAULQIiTMs2holNVWgoA7Z+XAGZr4T81hbm3GQE35DQyPVbq2EA7
 YWmwiOU1ZUA9UHioAUgkmCJgx9FDMUInarBG5dg=
X-Google-Smtp-Source: APXvYqzWVp9IhNwDI2+UTTrugW/SFZ+bbTayj2vr/BAzNkK7k45D30xX4RP/S0TypGTtAOrugGLKPdfWiiTIxXsXYzM=
X-Received: by 2002:aca:1a06:: with SMTP id a6mr11048818oia.148.1583156877859; 
 Mon, 02 Mar 2020 05:47:57 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
 <20200113141556.GI3606@pflmari>
 <CAMuHMdV9urx-6N4tiaPdkssa6Wu-9HSB4VY-rvCu+8JpfZcBfA@mail.gmail.com>
 <20200302134011.GA3717@pflmari>
In-Reply-To: <20200302134011.GA3717@pflmari>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Mar 2020 14:47:46 +0100
Message-ID: <CAMuHMdWobAE+y90DRi+zQadObWPxLyQiGNTe4t77O-2S1Vp5yA@mail.gmail.com>
Subject: Re: [PATCH 8/8] arm64: dts: renesas: salvator: add a connection from
 adv748x codec (HDMI input) to the R-Car SoC
To: Alex Riesen <alexander.riesen@cetitec.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, 
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

On Mon, Mar 2, 2020 at 2:40 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> Geert Uytterhoeven, Mon, Mar 02, 2020 13:28:13 +0100:
> > On Mon, Jan 13, 2020 at 3:24 PM Alex Riesen
> > <alexander.riesen@cetitec.com> wrote:
> > > Not sure if all variants of the Salvator board have the HDMI decoder
> > > chip (the ADV7482) connected to the SSI4 on R-Car SoC, as it is on
> > > Salvator-X ES1, so the the ADV7482 endpoint and connection definitions
> > > are placed in the board file.
> >
> > Both Salvator-X and Salvator-XS have SSI4 wired to the ADV7482.
> >
> > > I do assume though that all Salvator variants have the CLK_C clock line
> > > hard-wired to the ADV7482 HDMI decoder, and remove it from the list of
> > > clocks provided by the R-Car sound system.
> >
> > Yes, both Salvator-X and Salvator-XS have it wired that way.
>
> Ok, seems like I can move that part into the common file as well.
> Integrations of ADV7482 and R-Car which use salvator-common.dts can still
> redefine the endpoint settings in their board files, right?

Indeed.

> > > --- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> > > +++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> > > @@ -322,6 +322,10 @@
> > >         clock-frequency = <22579200>;
> > >  };
> > >
> > > +&audio_clk_c {
> > > +       clock-frequency = <12288000>;
> > > +};
> >
> > Does the ADV7482 always generate a 12.288 MHz clock signal?
> > Or is this programmable?
>
> Oops. It looks like it is and the value is derived from the sampling rate
> (48kHz) and the master clock multiplier. Both hard-coded in the board file.

Where are these hardcoded in the board file?
Even if they are, technically this is a clock output of the ADC7482.

> > > video-receiver@70 {
> > >     compatible = "adi,adv7482";
> > > ...
> > > +   clocks = <&rcar_sound 3>, <&audio_clk_c>;
> > > +   clock-names = "clk-hdmi-video", "clk-hdmi-i2s-mclk";
> >
> > The above declares the Audio CLK C to be a clock input of the ADV7482, while
> > it is an output.
>
> I would gladly give it right direction if I *really* understood what I was
> doing...

:-)

> > Furthermore, the DT bindings do not document that clocks can be specified.
>
> Should the DT bindings document that the clock cannot be specified than?

It currently does say so, as it doesn't list "clocks" in its properties section.

> > > @@ -686,7 +700,8 @@
> > >         };
> > >
> > >         sound_pins: sound {
> > > -               groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data_a";
> > > +               groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data_a",
> > > +                        "ssi4_data";
> >
> > Missing "ss4_ctrl", for the SCK4 and WS4 pins.
>
> I'll add them.
> As the device seems to function even without thoes, does this mean the pins in
> the group are used "on demand" by whatever needs them?

Probably the SCK4/WS4 functions are the reset-state defaults.

> > > @@ -760,8 +775,18 @@
> > >                  <&cpg CPG_MOD 1020>, <&cpg CPG_MOD 1021>,
> > >                  <&cpg CPG_MOD 1019>, <&cpg CPG_MOD 1018>,
> > >                  <&audio_clk_a>, <&cs2000>,
> > > -                <&audio_clk_c>,
> >
> > Why remove it? This is the list of clock inputs, not outputs.
>
> ...probably because I was thinking the specification was exactly the other way
> around.
>
> Does a "clocks = ..." statement always mean input clocks?

Yes it does.
If a device has clock outputs and is thus a clock provider, it should
have a #clock-cells property, and this should be documented in the bindings.

A clock consumer will refer to clocks of a provider using the "clocks"
property, specifying a clock specifier (phandle and zero or more indices)
for each clock referenced.

> I shall correct that and re-test (might take a while, I don't have the
> hardware anymore).

Oops.

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
