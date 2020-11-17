Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FACB2B5A55
	for <lists+driverdev-devel@lfdr.de>; Tue, 17 Nov 2020 08:37:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 90A688669E;
	Tue, 17 Nov 2020 07:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0OxMKL1-E3YK; Tue, 17 Nov 2020 07:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 489EA8667A;
	Tue, 17 Nov 2020 07:37:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2184D1BF27E
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 07:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1D15420422
 for <devel@linuxdriverproject.org>; Tue, 17 Nov 2020 07:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QHwzNvLB+Tn3 for <devel@linuxdriverproject.org>;
 Tue, 17 Nov 2020 07:37:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by silver.osuosl.org (Postfix) with ESMTPS id E4D0B203DF
 for <devel@driverdev.osuosl.org>; Tue, 17 Nov 2020 07:37:47 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id a3so2252986wmb.5
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 23:37:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=18xGlNNpDhvVYVdS8rF0z2fNATOQumPp5b7l5cZcXvw=;
 b=b0vNrvXF4m1TwyPJRtBxO0XZSm5U5byM6CJBYL1amHbBLGjn1FAun5/adkUvM7eRuC
 3MUAy6vOmkY4u6yEOKKylj6Oe+qNx1Cv78qBDEQ4PEXnAA1HvY7hvLeqYKH3Ik9W9Gpt
 B3B4PtvyJbAzoqcgvAO4vs12H6uBGMqw+SKCWdGFYDn0+C4zTo/gD55BZ8Hh814MN/6N
 QYRZPileKJ+AXV4gNPc85DLPstRAYFBy3oOKNSDZAFKi7v/FoptyVWb4TFiHL42+gGeX
 6j6hjiqb7ChGZ/GLxO2ntKi6Pq7MwB83k4JHMCrFAyo7X4IqXtGHapZTyoRrBZCkbjCt
 o1ow==
X-Gm-Message-State: AOAM533QOOTS8WfLZxzARs6pXeQ1gmZtyZPSpLF1t5pI4gBkcOvevdzl
 UMplEs/Wa5t2fQP25l8i1xQ=
X-Google-Smtp-Source: ABdhPJyHbqmcdYgBsSt4If51dziBJ4uOp+0GJRgB5sF5O5WZ7vgFMBLSfMpTds+fFwooZbU/Vhir4w==
X-Received: by 2002:a1c:7704:: with SMTP id t4mr2234501wmi.48.1605598666215;
 Mon, 16 Nov 2020 23:37:46 -0800 (PST)
Received: from kozik-lap (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
 by smtp.googlemail.com with ESMTPSA id t23sm2151117wmn.4.2020.11.16.23.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 23:37:44 -0800 (PST)
Date: Tue, 17 Nov 2020 08:37:43 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Subject: Re: [RFC 2/3] ARM: sunxi: do not select COMMON_CLK to fix builds
Message-ID: <20201117073743.GB3436@kozik-lap>
References: <20201115170950.304460-1-krzk@kernel.org>
 <20201115170950.304460-3-krzk@kernel.org>
 <f637762e-0b02-1705-ea6b-24ac338fcd69@sholland.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f637762e-0b02-1705-ea6b-24ac338fcd69@sholland.org>
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
Cc: devel@driverdev.osuosl.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 Stephen Boyd <sboyd@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Turquette <mturquette@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Nov 16, 2020 at 10:36:12PM -0600, Samuel Holland wrote:
> On 11/15/20 11:09 AM, Krzysztof Kozlowski wrote:
> > COMMON_CLK is a user-selectable option with its own dependencies.  The
> > most important dependency is !HAVE_LEGACY_CLK.  User-selectable drivers
> > should not select COMMON_CLK because they will create a dependency cycle
> > and build failures.  For example on MIPS a configuration with COMMON_CLK
> > (selected by SND_SUN8I_CODEC) and HAVE_LEGACY_CLK (selected by
> > SOC_RT305X) is possible:
> 
> Ah, that makes sense.
> 
> > 
> >   WARNING: unmet direct dependencies detected for COMMON_CLK
> >     Depends on [n]: !HAVE_LEGACY_CLK [=y]
> >     Selected by [y]:
> >     - SND_SUN8I_CODEC [=y] && SOUND [=y] && !UML && SND [=y] && SND_SOC [=y] &&
> >       (ARCH_SUNXI || COMPILE_TEST [=y]) && OF [=y] && (MACH_SUN8I || ARM64 && ARCH_SUNXI || COMPILE_TEST [=y])
> > 
> >     /usr/bin/mips-linux-gnu-ld: drivers/clk/clk.o: in function `clk_set_rate':
> >     (.text+0xaeb4): multiple definition of `clk_set_rate'; arch/mips/ralink/clk.o:(.text+0x88): first defined here
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > ---
> >  arch/arm/mach-sunxi/Kconfig | 1 +
> >  sound/soc/sunxi/Kconfig     | 2 +-
> >  2 files changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
> > index eeadb1a4dcfe..4d9f9b6d329d 100644
> > --- a/arch/arm/mach-sunxi/Kconfig
> > +++ b/arch/arm/mach-sunxi/Kconfig
> > @@ -4,6 +4,7 @@ menuconfig ARCH_SUNXI
> >  	depends on ARCH_MULTI_V5 || ARCH_MULTI_V7
> >  	select ARCH_HAS_RESET_CONTROLLER
> >  	select CLKSRC_MMIO
> > +	select COMMON_CLK
> 
> This is not necessary, since ARCH_SUNXI depends (through ARCH_MULTI_V{5,7}) on
> ARCH_MULTIPLATFORM, which selects COMMON_CLK already.

Thanks. I'll send a v2 with changes and your review.

Best regards,
Krzysztof
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
