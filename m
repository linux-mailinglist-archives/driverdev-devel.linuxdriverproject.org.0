Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E8117BE00
	for <lists+driverdev-devel@lfdr.de>; Fri,  6 Mar 2020 14:16:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 60E2E8766D;
	Fri,  6 Mar 2020 13:16:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FCKRkSHvE9oD; Fri,  6 Mar 2020 13:16:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BAFFA87686;
	Fri,  6 Mar 2020 13:16:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BA00D1BF2B6
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 13:16:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B6C9186A78
 for <devel@linuxdriverproject.org>; Fri,  6 Mar 2020 13:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iObo3MZPdnGc for <devel@linuxdriverproject.org>;
 Fri,  6 Mar 2020 13:16:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D16EE86A6F
 for <devel@driverdev.osuosl.org>; Fri,  6 Mar 2020 13:16:38 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 2DF4524B;
 Fri,  6 Mar 2020 14:16:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1583500595;
 bh=/rMq1rqwJlIIRSEMtL+O8FDFAd+2QA+1ULHVhkvPuv0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Qk7w4kF6at+pQnnz2ADC9S4gjiYsADhj1rdQaSA+cm0KFFqJDg80QotWNNPjaITBX
 pUjsV4phQR1MOqE6wB3JKlpsytbxxdu8aUnjftX7FQ//8GwxHrmscS9ccS3zgpuLnG
 eVSDq/x5DxD7tI8l8suf7pFQJUp7AY9+vipyH7Dk=
Date: Fri, 6 Mar 2020 15:16:32 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alex Riesen <alexander.riesen@cetitec.com>
Subject: Re: [PATCH 8/8] arm64: dts: renesas: salvator: add a connection from
 adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <20200306131632.GA4878@pendragon.ideasonboard.com>
References: <cover.1578924232.git.alexander.riesen@cetitec.com>
 <20200113141556.GI3606@pflmari>
 <CAMuHMdV9urx-6N4tiaPdkssa6Wu-9HSB4VY-rvCu+8JpfZcBfA@mail.gmail.com>
 <20200302134011.GA3717@pflmari>
 <CAMuHMdWobAE+y90DRi+zQadObWPxLyQiGNTe4t77O-2S1Vp5yA@mail.gmail.com>
 <20200302150706.GB3717@pflmari>
 <CAMuHMdW21rYXoOSE8azHNqYjng_j41rsL=Fo2bZc=1ULi9+pLw@mail.gmail.com>
 <20200302160906.GC3717@pflmari>
 <CAMuHMdVNGsVHyvAgC5dAHx=8Ax18EHx2tS6Hm5Bkg4ms=mW6Zw@mail.gmail.com>
 <20200305143628.GB25741@pflmari>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305143628.GB25741@pflmari>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Driver Development <devel@driverdev.osuosl.org>,
 Device Tree <devicetree@vger.kernel.org>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Renesas SoC <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alex,

On Thu, Mar 05, 2020 at 03:36:28PM +0100, Alex Riesen wrote:
> Geert Uytterhoeven, Mon, Mar 02, 2020 17:13:30 +0100:
> > On Mon, Mar 2, 2020 at 5:09 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > > Geert Uytterhoeven, Mon, Mar 02, 2020 16:32:32 +0100:
> > > >
> > > > The #clock-cells should be in the main video-receiver node.
> > > > Probably there is more than one clock output, so #clock-cells may be 1?
> > >
> > > AFAICS, the device can provide only this one clock line (audio master clock
> > > for I2S output)... I shall re-check, just in case.
> 
> And you're right, of course: the audio output formatting module of the ADV748x
> devices provides a set of clock lines related to the I2S pins: the already
> discussed master clock, left-right channel clock and the serial clock (bit
> clock?).

I don't think we need to model the last two clocks through CCF though,
they're part of the I2S protocol, not clock sources that need to be
explicitly controlled (or queried).

> > > > There is no need for a fixed-clock compatible, nor for clock-frequency
> > > > and clock-output-names.
> > > >
> > > > But most important: this should be documented in the adv748x DT bindings,
> > > > and implemented in the adv748x driver.
> > >
> > > So if the driver is to export that clock for the kernel (like in this case),
> > > it must implement its support?
> > 
> > Exactly.  Unless that pin is hardcoded to output a fixed clock, in which case
> > you can just override the existing audio_clk_c rate.
> 
> Just to try it out (I'll set #clock-cells to 1), I registered a fixed rate
> clock in the driver, added a clock provider:
> 
> adv748x_probe:
> 
>     clk = clk_register_fixed_rate(state->dev,
> 				  "clk-hdmi-i2s-mclk",
> 				  NULL     /* parent_name */,
> 				  0        /* flags */,
> 				  12288000 /* rate */);
>     of_clk_add_provider(state->dev->of_node, of_clk_src_simple_get, clk);
> 
> And removed the audio_clk_c frequency setting. I also replaced the audio_clk_c
> in the list of input clocks of the R-Car-side sound card with the phandle of
> the adv7482 main node:
> 
> salvator-common.dtsi:
> 
>     &i2c4 {
> 	status = "okay";
> 
> 	adv7482_hdmi_decoder: video-receiver@70 {
> 	    #clock-cells = <0>; // to be replaced with <1>
> 	};
>     };
> 
>     &rcar_sound {
> 	clocks = ..., <&adv7482_hdmi_decoder>, ...;
>     };
> 
> As everything continues to work as before, I assume that at least the clock
> dependencies were resolved.

This looks good to me.

> Is there a way to verify that the added input clock is actually used?
> IOW, if its frequency is actually has been programmed into the ssi4 (R-Car
> receiving hardware) registers, and not just a left-over from previuos attempts
> or plain default setting?
> 
> As the ADV748x devices seem to provide also the clocks for video outputs, will
> it make any sense to place the clock definition into the port node?
> Or should all provided clocks be indexed in the main device node?

Those clocks are part of the CSI-2 protocol and also don't need to be
explicitly controlled. As far as I can tell from a quick check of the
ADV7482 documentation, only the I2S MCLK is a general-purpose clock that
needs to be exposed.

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
