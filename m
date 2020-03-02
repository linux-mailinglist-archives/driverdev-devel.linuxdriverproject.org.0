Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8FC175F4A
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 17:13:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8309204B2;
	Mon,  2 Mar 2020 16:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fsYYpDLN62rd; Mon,  2 Mar 2020 16:13:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 94ABA204A4;
	Mon,  2 Mar 2020 16:13:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7571F1BF321
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:13:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6DA0785F9B
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 16:13:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0INd1abvrE0T for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 16:13:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5911685E12
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 16:13:42 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id i1so10799085oie.8
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 08:13:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=wQyyrYKhl2IEkNe34AsK9CIVdMgcXzMGqPt74D0oPoI=;
 b=ZshehFbjG4G7TBDeLxrzGPgpTbLWcjknOZCWSzFoZ5ayy6VzMMQL1u3iU4xLAMGhTX
 W0nqa5TacHDvMmI3i43H/3buJIBc6vL/z6UAJ7TCVpLaO2djd84kAEJOc7Hm9sf8i5Os
 vMy0TXxnarahe2sGiD4aKJX/xPwOuQ3ZeoaTN54XAkE16jx/Wfrb9lX/lY2jL+rbW9Ph
 EAo8B3YRSs+FJcXdf79uIdoYe8B6gb5vsgG9hmMYUOQSG/VnjUmNSQawi9eSj0r2LgPR
 2sp3haoH0vtBXEJb7t/tbNoYVTpq/FFUi4Ji4KyjzM4MWDH10chtpd+gLx33ez3liWbz
 R9jA==
X-Gm-Message-State: ANhLgQ0JFZEVWyGYE53V6zT1B4Eg1kpLfHdnawkcKzbtrBqWTDWGrwI2
 4TrTqQKKYYty+qsn+EFE8kPH17OfdS9muLoIpCc=
X-Google-Smtp-Source: ADFU+vtgX5P8l3pp8Byli/gDvMCPgCR1jBlOu2Z5pKiwIOplHm/8t6TqxYo4MB2Jy/30YCeHN5RgbSXCAHjgMhFgi3s=
X-Received: by 2002:aca:ac4c:: with SMTP id v73mr185003oie.102.1583165621604; 
 Mon, 02 Mar 2020 08:13:41 -0800 (PST)
MIME-Version: 1.0
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
 <20200113141556.GI3606@pflmari>
 <CAMuHMdV9urx-6N4tiaPdkssa6Wu-9HSB4VY-rvCu+8JpfZcBfA@mail.gmail.com>
 <20200302134011.GA3717@pflmari>
 <CAMuHMdWobAE+y90DRi+zQadObWPxLyQiGNTe4t77O-2S1Vp5yA@mail.gmail.com>
 <20200302150706.GB3717@pflmari>
 <CAMuHMdW21rYXoOSE8azHNqYjng_j41rsL=Fo2bZc=1ULi9+pLw@mail.gmail.com>
 <20200302160906.GC3717@pflmari>
In-Reply-To: <20200302160906.GC3717@pflmari>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Mar 2020 17:13:30 +0100
Message-ID: <CAMuHMdVNGsVHyvAgC5dAHx=8Ax18EHx2tS6Hm5Bkg4ms=mW6Zw@mail.gmail.com>
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

On Mon, Mar 2, 2020 at 5:09 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> Geert Uytterhoeven, Mon, Mar 02, 2020 16:32:32 +0100:
> > > And this absence of documentation also means that whatever clocks (both input
> > > in "clocks=" and output in "#clock-cells") listed in a specific .dts are just
> > > an integration detail?
> >
> > No, the absence probably means that any clock-related properties in a .dts
> > file will just be ignored.
> >
> > Looking at the driver source, it indeed has no support related to clocks at all.
>
> ...
>
> > > Does this below makes more sense, than?
> > >
> > >     video-receiver@70 {
> > >         compatible = "adi,adv7482";
> > >         clocks = <&rcar_sound 3>;
> > >         clock-names = "clk-hdmi-video";
> > >         adv748x_mclk: mclk {
> > >             compatible = "fixed-clock";
> > >             #clock-cells =  <0>;
> > >             /* frequency hard-coded for illustration */
> > >             clock-frequency = <12288000>;
> > >             clock-output-names = "clk-hdmi-i2s-mclk";
> > >         };
> > >     };
> >
> > The #clock-cells should be in the main video-receiver node.
> > Probably there is more than one clock output, so #clock-cells may be 1?
>
> AFAICS, the device can provide only this one clock line (audio master clock
> for I2S output)... I shall re-check, just in case.
>
> > There is no need for a fixed-clock compatible, nor for clock-frequency
> > and clock-output-names.
> >
> > But most important: this should be documented in the adv748x DT bindings,
> > and implemented in the adv748x driver.
>
> So if the driver is to export that clock for the kernel (like in this case),
> it must implement its support?

Exactly.  Unless that pin is hardcoded to output a fixed clock, in which case
you can just override the existing audio_clk_c rate.

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
