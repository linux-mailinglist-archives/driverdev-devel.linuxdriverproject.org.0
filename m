Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1AA175E43
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 16:32:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F263D85817;
	Mon,  2 Mar 2020 15:32:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fRgioHU66CLQ; Mon,  2 Mar 2020 15:32:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB451858B8;
	Mon,  2 Mar 2020 15:32:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ACF7F1BF30F
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 15:32:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A98DA870A9
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 15:32:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tCL+WCsRjm8k for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 15:32:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9805086FAF
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 15:32:44 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id x19so5303394otp.7
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 07:32:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=ZZC2Pupfl/eFbEiQmQK8DrdbI5TFes5OKB8zq+O8R1I=;
 b=T624RUcfhOjgJp7xdX4whqS+bHfi1CUic2W7Lxi3geiiYcq4pkqqYlpvvYtmUctSrr
 ytwCcxITKtnuQ7O6LIhC0EShi3sqaWhMPHOGjte+gEJwZbzU1ZurxOyO2NzsfFp5u9IZ
 9T4/vfaOH0OVM1WgtrJ03CKwu6DZECjPCMFrQ7UY0A/Tk+LORGhdqv5aHBZEZ6mYS6tA
 0yZ3tOLOIbbCyIF58zcxtnbj1KyKg32KCN0tM0lRt4XtgWQEfBNH+BYURanedcLlBSW/
 lICIj/JZXf0zj1GTSI012tNZQ/rDHwfwCgrGE9fs5Gw6vqfv8OZ6H2d0pQxco8UT+MwJ
 byOA==
X-Gm-Message-State: APjAAAUtsQS+Pz7EIVPSDrWJZ9EwlHSTzH03wGoumav9G+Pu+IDsCMlS
 bdGeTMsmXOlFxdNJzjDncDk4XljvqZvwNcwiBVo=
X-Google-Smtp-Source: APXvYqwgjIFCSqSj4qBpYRjDRfnQGcUTZSl3tHFJqbuFk9d/EBsOPPhJjGzJbigayYo0pnbjUOze3Cw83b79RAdw6Sc=
X-Received: by 2002:a9d:dc1:: with SMTP id 59mr13477946ots.250.1583163163733; 
 Mon, 02 Mar 2020 07:32:43 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
 <20200113141556.GI3606@pflmari>
 <CAMuHMdV9urx-6N4tiaPdkssa6Wu-9HSB4VY-rvCu+8JpfZcBfA@mail.gmail.com>
 <20200302134011.GA3717@pflmari>
 <CAMuHMdWobAE+y90DRi+zQadObWPxLyQiGNTe4t77O-2S1Vp5yA@mail.gmail.com>
 <20200302150706.GB3717@pflmari>
In-Reply-To: <20200302150706.GB3717@pflmari>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Mar 2020 16:32:32 +0100
Message-ID: <CAMuHMdW21rYXoOSE8azHNqYjng_j41rsL=Fo2bZc=1ULi9+pLw@mail.gmail.com>
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

On Mon, Mar 2, 2020 at 4:07 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> Geert Uytterhoeven, Mon, Mar 02, 2020 14:47:46 +0100:
> > On Mon, Mar 2, 2020 at 2:40 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > > > > --- a/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> > > > > +++ b/arch/arm64/boot/dts/renesas/salvator-common.dtsi
> > > > > @@ -322,6 +322,10 @@
> > > > >         clock-frequency = <22579200>;
> > > > >  };
> > > > >
> > > > > +&audio_clk_c {
> > > > > +       clock-frequency = <12288000>;
> > > > > +};
> > > >
> > > > Does the ADV7482 always generate a 12.288 MHz clock signal?
> > > > Or is this programmable?
> > >
> > > Oops. It looks like it is and the value is derived from the sampling rate
> > > (48kHz) and the master clock multiplier. Both hard-coded in the board file.
> >
> > Where are these hardcoded in the board file?
>
> In the endpoint definition, arch/arm64/boot/dts/renesas/r8a7795-es1-salvator-x.dts
>
> So the frequency can be set at the run-time, perhaps even derived from
> endpoint connected to the output. In this case, rsnd_endpoint3,
> which has the "mclk-fs" setting. Not sure if the sampling rate
> can be set to something else for the HDMI, though.
>
> > Even if they are, technically this is a clock output of the ADV7482.
>
> ... which I hope to correct as soon as I steal the hardware from whoever stole
> it from me...
>
> > > > > video-receiver@70 {
> > > > >     compatible = "adi,adv7482";
> > > > > ...
> > > > > +   clocks = <&rcar_sound 3>, <&audio_clk_c>;
> > > > > +   clock-names = "clk-hdmi-video", "clk-hdmi-i2s-mclk";
> > > >
> > > > The above declares the Audio CLK C to be a clock input of the ADV7482, while
> > > > it is an output.
> > >
> > > I would gladly give it right direction if I *really* understood what I was
> > > doing...
> >
> > :-)
> >
> > > > Furthermore, the DT bindings do not document that clocks can be specified.
> > >
> > > Should the DT bindings document that the clock cannot be specified than?
> >
> > It currently does say so, as it doesn't list "clocks" in its properties section.
>
> The bindings documentation file, which we're talking about here and which does
> not list the specifiable input clocks in its properties, is it the
>
>     Documentation/devicetree/bindings/media/i2c/adv748x.txt
>
> ?

Yes.

>
> And this absence of documentation also means that whatever clocks (both input
> in "clocks=" and output in "#clock-cells") listed in a specific .dts are just
> an integration detail?

No, the absence probably means that any clock-related properties in a .dts
file will just be ignored.

Looking at the driver source, it indeed has no support related to clocks at all.

> Does this below makes more sense, than?
>
>     video-receiver@70 {
>         compatible = "adi,adv7482";
>         clocks = <&rcar_sound 3>;
>         clock-names = "clk-hdmi-video";
>         adv748x_mclk: mclk {
>             compatible = "fixed-clock";
>             #clock-cells =  <0>;
>             /* frequency hard-coded for illustration */
>             clock-frequency = <12288000>;
>             clock-output-names = "clk-hdmi-i2s-mclk";
>         };
>     };

The #clock-cells should be in the main video-receiver node.
Probably there is more than one clock output, so #clock-cells may be 1?
There is no need for a fixed-clock compatible, nor for clock-frequency
and clock-output-names.

But most important: this should be documented in the adv748x DT bindings,
and implemented in the adv748x driver.

> Now I'm a bit hazy on how to declare that the MCLK output of the
> video-receiver@70 is connected to the Audio Clock C of the SoC...
> Probably remove use of "audio_clk_c" completely?

Yes, the current audio_clk_c definition in the DTS assumes a fixed
crystal.

> > > > > @@ -686,7 +700,8 @@
> > > > >         };
> > > > >
> > > > >         sound_pins: sound {
> > > > > -               groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data_a";
> > > > > +               groups = "ssi01239_ctrl", "ssi0_data", "ssi1_data_a",
> > > > > +                        "ssi4_data";
> > > >
> > > > Missing "ss4_ctrl", for the SCK4 and WS4 pins.
> > >
> > > I'll add them.
> > > As the device seems to function even without thoes, does this mean the
> > > pins in the group are used "on demand" by whatever needs them?
> >
> > Probably the SCK4/WS4 functions are the reset-state defaults.
>
> That ... might require some trial and testing: when I add them to the group,
> the reset defaults will be overridden by the platform initialization, which is
> not necessarily the reset default. Will see.

Or by the boot loader.  Anyway, you need to specify these in the DTS.

> > > Does a "clocks = ..." statement always mean input clocks?
> >
> > Yes it does.
> > If a device has clock outputs and is thus a clock provider, it should
> > have a #clock-cells property, and this should be documented in the bindings.
> >
> > A clock consumer will refer to clocks of a provider using the "clocks"
> > property, specifying a clock specifier (phandle and zero or more indices)
> > for each clock referenced.
>
> Something like this?
>
>     &rcar_sound {
>         clocks = ...,
>                  <&adv748x_mclk>,
>                  <&cpg CPG_CORE CPG_AUDIO_CLK_I>;
>         clock-names = ...,
>                       "clk_c",
>                       "clk_i";
>     };

More or less.

Might become

    find_a_better_label_choice: video-receiver@70 {
            ...
    };

    &rcar_sound {
            clock = ...,
                    <&find_a_better_label_choice 0>,
                    ...
    };

as there may be multiple clock outputs on the ADV7482.

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
