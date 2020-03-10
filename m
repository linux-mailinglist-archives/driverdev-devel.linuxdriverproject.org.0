Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A9A17F52C
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 11:40:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D09B2883C6;
	Tue, 10 Mar 2020 10:40:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SX8JxflQP84C; Tue, 10 Mar 2020 10:40:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E09F883BF;
	Tue, 10 Mar 2020 10:40:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9C7B91BF299
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 10:40:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 98D35882F4
 for <devel@linuxdriverproject.org>; Tue, 10 Mar 2020 10:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5tt8UjWlp6L for <devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 10:40:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EA76188011
 for <devel@driverdev.osuosl.org>; Tue, 10 Mar 2020 10:40:00 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id AE4E65F;
 Tue, 10 Mar 2020 11:39:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1583836797;
 bh=+AUuY204i66OP7awF0kMnbhoBdFNbFPnKEFfeYpp95I=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qcjiOxUDnjlL2aIFS1CYWap5S3HJ7/ayRPVzENi12Tooxx06z0CIDhQG+CHqhdmgT
 9NTbCdmMw6QdRerILDCOVat8G5qsbXY4rpF0zjGWNdHpdrlsyuWlDpmJsvdjD8fSoO
 p+OZY+V44umtuYGmpSjFoh2tomy9SHC8XHZmspTo=
Date: Tue, 10 Mar 2020 12:39:54 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alex Riesen <alexander.riesen@cetitec.com>
Subject: Re: [PATCH 8/8] arm64: dts: renesas: salvator: add a connection from
 adv748x codec (HDMI input) to the R-Car SoC
Message-ID: <20200310103954.GA4871@pendragon.ideasonboard.com>
References: <20200302160906.GC3717@pflmari>
 <CAMuHMdVNGsVHyvAgC5dAHx=8Ax18EHx2tS6Hm5Bkg4ms=mW6Zw@mail.gmail.com>
 <20200305143628.GB25741@pflmari>
 <20200306131632.GA4878@pendragon.ideasonboard.com>
 <20200306134154.GD27714@pflmari>
 <20200306134546.GE4878@pendragon.ideasonboard.com>
 <87r1y2wbze.wl-kuninori.morimoto.gx@renesas.com>
 <20200309110931.GB3593@pflmari>
 <87a74pvwz8.wl-kuninori.morimoto.gx@renesas.com>
 <20200310081714.GA11274@pflmari>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310081714.GA11274@pflmari>
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
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
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

On Tue, Mar 10, 2020 at 09:17:14AM +0100, Alex Riesen wrote:
> Kuninori Morimoto, Tue, Mar 10, 2020 02:07:23 +0100:
> > > Should the adv748x driver also implement anything to configure the frequency
> > > of MCLK clock? I mean something like .set_sysclk and .set_fmt callbacks of
> > > snd_soc_dai_ops?
> > > 
> > > Or is the driver implementation, which depends on mclk-fs to be 256, the audio
> > > stream format to be 8x S24_LE, and requires strictly 48kHz sampling rate on
> > > the HDMI input, a totally acceptable first attempt at writing a DAI driver?
> > > 
> > > I'm a bit bothered by that, as the hardware is also capable of decoding
> > > stereo, sampling rate 32-192kHz, a variety of PCM and compressed/encrypted
> > > formats, 128-768fs MCLK multipliers, and a row of I2S options.
> > > 
> > > I just find it confusing to place the configuration interfaces.
> > > For instance, the patches use the media ioctl for audio output selection to
> > > select I2S protocol. While works, it does not feel right (shouldn't it be in
> > > the device tree?)
> > > 
> > > Maybe you can point me at a driver doing something similar? I'm studying media
> > > drivers now, but not many of them use ASoC interfaces for devices providing a
> > > clock. Or maybe I should better look at sound/soc/...?
> > 
> > Setting Sound Clock for all cases/patterns are very complex and difficult actually.
> > (ADV7482 configuration) x (ADG divider / selector) x etc, etc...
> > 
> > Thus, Current R-Car sound is assuming that audio_clk_a/b/c/i are providing
> > route clock (= no configuration, fixed clock), and ADG divides it,
> > and provide best clock to each SSIx.
> > Current Salvator/ULCB already have 44.1/48kHz route clock (= CS2000 and Audio_CLK_A),
> > and we can reuse it for all SSIx. Thus, ADV7482 clock is not necessary, I guess ?
> > Or providing specific clock for some case is enough
> > (ADG will automatically select it if necessary).
> 
> In this particular case, the ADV7482 *must* provide the clock, I believe: it
> extracts the audio stream from the HDMI connection (in addition to everything
> else) and serves the stream on I2S. Its MCLK line is physically connected to
> the CLK_C line (which is an input) of the R-Car SoC. The I2S audio
> transmission does not work if the ADV7482 clock is not programmed (or
> programmed incorrectly).
> Yes, I tried (I also tried programming it incorrectly, just because I didn't
> know what I was doing).
> 
> > If ADV7482 needs more detail clock settings combination,
> > then, there is no method to adjust to it.
> > We need to consider such system somehow.
> 
> Not encouraging...
> 
> Maybe I should leave the clock fixed, with the frequency configuration in the
> device tree, e.g. as adv7482 port node property "clock-frequency".
> Which feels rather pathetic, but at least serves my purpose (48k, 8x24).
> 
> But let me describe the situation as I see it first.
> 
> As far as I understand, the SSI4 (Salvator-X board) should be programmed by
> the snd-soc-rcar driver in the "slave receiver" mode for this use case, which
> is HDMI input ADV7482 (I2S master, TDM) -> SSI4 (I2S slave)):
> 
> [   63.305990] asoc_simple_card_parse_clk: asoc-audio-graph-card sound: rsnd-dai.1 : sysclk = 66666664, direction 0
> [   63.306028] asoc_simple_card_parse_clk: asoc-audio-graph-card sound: adv748x-i2s : sysclk = 12288000, direction 1
> 
> I am a bit bothered by the fact that sysclk of rsnd-dai.1 does not match that
> sysclk of adv7482-i2s, but I think it's just DT node configuration.
> 
> [   63.306033] asoc_simple_card_set_dailink_name: asoc-audio-graph-card sound: name : rsnd-dai.1-adv748x-i2s
> ...
> [   63.332641] asoc-audio-graph-card sound: adv748x.4-0070 <-> rsnd-dai.1 mapping ok
> ...
> [   63.341317] dapm_connect_dai_link_widgets:  rsnd-dai.1-adv748x-i2s: connected DAI link adv748x.4-0070:Capture -> ec500000.sound:DAI1 Capture
> ...
> [  128.961389] rsnd_write: rcar_sound ec500000.sound: w ssi[4] - SSICR ( 124) : 9ceb0100
> 
> Decoding this last line (9ceb0100) gives SSICR.TRMD (bit1) =0, SSICR.SCKD
> (bit15) =0, SSICR.SWSD (bit14) =0. The combination is documented as "slave
> receiver". Which, I assume, makes SSI4 use the external clock. Given the
> received stream looks ok, something also must have set the dividers correctly.
> 
> From the above, I conclude, whatever the complexity of the audio system clock
> configuration, it seems to be implemented for the case.
> 
> I only miss a more or less clear way to configure the I2S master (ADV7482, that is).

As a stop-gap measure, until the sound driver programs the clock, you
can set its frequency in DT with the assigned-clock-rates property.

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
