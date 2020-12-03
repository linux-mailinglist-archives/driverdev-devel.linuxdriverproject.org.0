Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB762CDB77
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 17:45:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A70FC87344;
	Thu,  3 Dec 2020 16:45:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b8x4fUsNgCgz; Thu,  3 Dec 2020 16:45:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EDB3E87171;
	Thu,  3 Dec 2020 16:45:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DCA9A1BF2CA
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 16:44:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BF86A20477
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 16:44:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wyh5UQiiaoHH for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 16:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 149612046C
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 16:44:38 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id f24so3208889ljk.13
 for <devel@driverdev.osuosl.org>; Thu, 03 Dec 2020 08:44:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gSKKMnPPwvy/Gv2/NSqLNOEr9O1XfSpR38BNRVeZqQg=;
 b=Q03Em/9Lv0Lm4r+Cjj9gCVeS9J7u8FGmcWu7O6/KdJTU/tuKb5PqhdMItT2spkHWC/
 u7E6kWUrXPr9G4nQjDx0zSbP8IFwXk7Lz7NXszKHy29eR/2hmPtG2FRqi/ui34lBc4Ko
 8fOPBrmCf94Yz9zHL8xlF7cjmAgHtsGnNRBDADYZnOoB9jD+tvqd/CzaIDXP/ROZXytc
 TFe2lp59JXrnihr2fu2k6+/vQXlfOCPW6HraCt2bBeEPXcAEsMK50CLVRzxyaylYvY1M
 4NCfH0A0h2Ii+FTCJdIgl7+JjSJdOoCKbN5kCjdFKK/5sdMsSF02BcIvUv5uITy+Zqm2
 vrUQ==
X-Gm-Message-State: AOAM532xdUQPDrXILZOtfzbyJhq8rac3Em1JHORiYaoSx45BZG8epPux
 bilZlW3DZAuXj6tap0P0V4GbDx5CmIYnuQ==
X-Google-Smtp-Source: ABdhPJyEyyTdfJUxgb5ZwktBp56ROw/NH6zHDHRcXatqAjAB9ymZ9jSiQ4DgtH9f0K7ggOBNvYmzsA==
X-Received: by 2002:a2e:9b8c:: with SMTP id z12mr1520343lji.360.1607013875682; 
 Thu, 03 Dec 2020 08:44:35 -0800 (PST)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id d19sm686114lfm.211.2020.12.03.08.44.34
 for <devel@driverdev.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Dec 2020 08:44:35 -0800 (PST)
Received: by mail-lj1-f171.google.com with SMTP id y16so3279466ljk.1
 for <devel@driverdev.osuosl.org>; Thu, 03 Dec 2020 08:44:34 -0800 (PST)
X-Received: by 2002:a2e:85ce:: with SMTP id h14mr1596115ljj.190.1607013874724; 
 Thu, 03 Dec 2020 08:44:34 -0800 (PST)
MIME-Version: 1.0
References: <20201116125617.7597-1-m.cerveny@computer.org>
 <20201116125617.7597-4-m.cerveny@computer.org>
 <CAGb2v66T9aakxRQNBbA+=EC-d5EpmUrZSK5xTW=orK6Z7PyG9Q@mail.gmail.com>
 <alpine.GSO.2.00.2012031617500.7044@dmz.c-home.cz>
In-Reply-To: <alpine.GSO.2.00.2012031617500.7044@dmz.c-home.cz>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 4 Dec 2020 00:44:21 +0800
X-Gmail-Original-Message-ID: <CAGb2v65Kb1BrdwKjMv9w1CNQpe=ExpN1d-yUSvZ6TA=fvgE5og@mail.gmail.com>
Message-ID: <CAGb2v65Kb1BrdwKjMv9w1CNQpe=ExpN1d-yUSvZ6TA=fvgE5og@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] ARM: dts: sun8i: v3s: Add node for system control
To: Martin Cerveny <M.Cerveny@computer.org>
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
Cc: devel@driverdev.osuosl.org, devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mark Brown <broonie@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Icenowy Zheng <icenowy@aosc.io>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Fri, Dec 4, 2020 at 12:25 AM Martin Cerveny <martin@c-home.cz> wrote:
>
> Hello.
>
> On Thu, 3 Dec 2020, Chen-Yu Tsai wrote:
>
> > Hi,
> >
> > On Mon, Nov 16, 2020 at 8:57 PM Martin Cerveny <m.cerveny@computer.org> wrote:
> >>
> >> Allwinner V3s has system control and SRAM C1 region similar to H3.
> >>
> >> Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
> >> ---
> >>  arch/arm/boot/dts/sun8i-v3s.dtsi | 14 ++++++++++++++
> >>  1 file changed, 14 insertions(+)
> >>
> >> diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
> >> index 0c7341676921..70193512c222 100644
> >> --- a/arch/arm/boot/dts/sun8i-v3s.dtsi
> >> +++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
> >> @@ -161,6 +161,20 @@ syscon: system-control@1c00000 {
> >>                         #address-cells = <1>;
> >>                         #size-cells = <1>;
> >>                         ranges;
> >> +
> >> +                       sram_c: sram@1d00000 {
> >> +                               compatible = "mmio-sram";
> >> +                               reg = <0x01d00000 0x80000>;
> >
> > How was this address derived? Did you check that there is actually SRAM here?
>
> Yes, I did some checking (mmap). But I repeated measurement and found
> mirrored regions:
>
> - SRAM_C is mirrored from 0x0000_4000 (primary location) to 0x01d0_4000 (size 0xb000)
>    (probably exact size is 0xb0c0)
> - rest of 0x01d0_0000 are discontinuously filled with R/W register sets
>    (probably some internals registers from VE) that I thought to be SRAM too
> - register SRAM_CTRL_REG0==0x01c00_0000 (value 0x7fff_ffff) switch whole
>    region 0x01d0_0000-0x01df_ffff __AND__ 0x0000_4000-0x0000_ffff
> - VE/cedrus code use this regions indirectly
>    (VE_AVC_SRAM_PORT_OFFSET/VE_AVC_SRAM_PORT_DATA...)
>    and it is not influenced by "true" SRAM mapping or size

Could you add this to your commit log? That would make the information
available to others, and you could mention that you only added the
location that is contiguous SRAM without the interspersed registers.

So based on this, and what we've seen with the H616, I'm guessing
0x01d0_0000 - 0x01df_ffff exposes all the internal guts of the VE,
while SRAM C @ 0x4000 just maps a small portion out.

> -> so I suppose to better use only SRAM_C lower definition:

Yes that would be more appropriate, as it matches the manual, and as you
mentioned, is *real* SRAM.

> ---
> diff --git a/arch/arm/boot/dts/sun8i-v3s.dtsi b/arch/arm/boot/dts/sun8i-v3s.dtsi
> index e8f304125e2d..90d703e5b73b 100644
> --- a/arch/arm/boot/dts/sun8i-v3s.dtsi
> +++ b/arch/arm/boot/dts/sun8i-v3s.dtsi
> @@ -162,17 +162,17 @@ syscon: system-control@1c00000 {
>                         #size-cells = <1>;
>                         ranges;
>
> -                       sram_c: sram@1d00000 {
> +                       sram_c: sram@4000 {
>                                 compatible = "mmio-sram";
> -                               reg = <0x01d00000 0x80000>;
> +                               reg = <0x4000 0xb000>;
>                                 #address-cells = <1>;
>                                 #size-cells = <1>;
> -                               ranges = <0 0x01d00000 0x80000>;
> +                               ranges = <0 0 0x4000 0xb000>;
>
>                                 ve_sram: sram-section@0 {
>                                         compatible = "allwinner,sun8i-v3s-sram-c1",
>                                                      "allwinner,sun4i-a10-sram-c1";
> -                                       reg = <0x000000 0x80000>;
> +                                       reg = <0x0 0xb000>;
>                                 };
>                         };
>                 };
> ---
>
> Does someone have accessible specific documentation of VE/cedrus for V3s ?

I doubt such information exists.


Regards
ChenYu

> Regards, Martin
>
> > ChenYu
> >
> >> +                               #address-cells = <1>;
> >> +                               #size-cells = <1>;
> >> +                               ranges = <0 0x01d00000 0x80000>;
> >> +
> >> +                               ve_sram: sram-section@0 {
> >> +                                       compatible = "allwinner,sun8i-v3s-sram-c1",
> >> +                                                    "allwinner,sun4i-a10-sram-c1";
> >> +                                       reg = <0x000000 0x80000>;
> >> +                               };
> >> +                       };
> >>                 };
> >>
> >>                 tcon0: lcd-controller@1c0c000 {
> >> --
> >> 2.25.1
> >>
> >>
> >> _______________________________________________
> >> linux-arm-kernel mailing list
> >> linux-arm-kernel@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> >
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
