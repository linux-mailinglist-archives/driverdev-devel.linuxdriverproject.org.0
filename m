Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 32AF418CC28
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 12:05:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EDEF22353A;
	Fri, 20 Mar 2020 11:05:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7jS8C+bPf7-O; Fri, 20 Mar 2020 11:05:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C57C2227CC;
	Fri, 20 Mar 2020 11:05:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E33EC1BF300
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 11:05:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DDF7A871E4
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 11:05:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id quZUQT5H4tHv for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:05:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
 [209.85.167.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 49A0B86AD1
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 11:05:32 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id y71so6010785oia.7
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 04:05:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=qk9ZSy2DLiaTxJZm6e71Gii7NkNOP2X+Pdycr1qsNeg=;
 b=syeu/tocN/zOO7SK+ykvPs2iBtrOGHW4+fCjYn89VWSY5M1r02rDkQD5NhO35gf1BA
 eMI4fha646CcVlLrZJ0Fx77vTbvqRTL17/XGMX3shu83EA24W9QoDR/OpDI/W7eFbOo8
 y9BvWgFl7wfJmKYa2dHdGFTJgpRFuIy84OC/uUbztCbuvS5OH45J1Os11L3Zy60zUDvE
 fFbKaaaz/O+oD/jvh0yVrzl294DA7pmQZK2mrVQe0Jf0nKaZHwCj0gD6h76E7jiWGPYJ
 q3TYJTVfGB40UpDcsYjdfgbdoDmmp9ochC2+iulWsLRz4o5F23SyA96q/ZKjhDKCZcBm
 krPQ==
X-Gm-Message-State: ANhLgQ1ygj9oDMgdXDJ+54ZHGa2hm8jjHCm/82hxoA8vaPr7iVObMQ0t
 GUlJm/shDhKm1elTi3k0PefS0ba9tdITjmdWa2I=
X-Google-Smtp-Source: ADFU+vvZyP9GBWBhMAk5XHXHMbgIrKzVUdFFXha+oMjRGimfx83JH0ySN8kjfcMPKWHrHJ11GggEe2Z4AVFy0DPZVrQ=
X-Received: by 2002:aca:ad93:: with SMTP id w141mr6113278oie.54.1584702331516; 
 Fri, 20 Mar 2020 04:05:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <252bb433f47b0ccb61bb077abdbd892091abc550.1584639664.git.alexander.riesen@cetitec.com>
 <CAMuHMdXOAQtuxCAfb=sZKodyJWwSrf-GO-pdV3HYkOytQW4ENg@mail.gmail.com>
 <20200320105846.GG4344@pflmari>
In-Reply-To: <20200320105846.GG4344@pflmari>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Mar 2020 12:05:20 +0100
Message-ID: <CAMuHMdVRJZ+RLSxeFdXXPntVxCUMd-Ai+=vizFrvN-CHNW=kjA@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] media: adv748x: add support for HDMI audio
To: Alex Riesen <alexander.riesen@cetitec.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
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
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>
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

On Fri, Mar 20, 2020 at 11:58 AM Alex Riesen
<alexander.riesen@cetitec.com> wrote:
> Geert Uytterhoeven, Fri, Mar 20, 2020 09:43:29 +0100:
> > On Thu, Mar 19, 2020 at 6:42 PM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > > This adds an implemention of SoC DAI driver which provides access to the
> > > I2S port of the device.
>
> I just noticed I don't do clk_prepare_enable anywhere.
> Shouldn't the clock master enable its clocks somewhere?

Usually the consumer is responsible for doing that.
Does the rcar-sound driver do that?

But in this case, perhaps the clock should be enabled implicitly in response
to a request from the audio subsystem, like you do below.

Note that you register a fixed-rate clock, which is assumed to be always
enabled. Perhaps a gateable clock type is more appropriate?

> > > diff --git a/drivers/media/i2c/adv748x/adv748x-dai.c b/drivers/media/i2c/adv748x/adv748x-dai.c
> > > new file mode 100644
> > > index 000000000000..4775a0c7ed7f
> > > --- /dev/null
> > > +++ b/drivers/media/i2c/adv748x/adv748x-dai.c
> ...
> > > +static int adv748x_dai_startup(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
> > > +{
> > > +       struct adv748x_state *state = state_of(dai);
> > > +
> > > +       if (sub->stream != SNDRV_PCM_STREAM_CAPTURE)
> > > +               return -EINVAL;
> > > +       return set_audio_pads_state(state, 1);
> > > +}
>
> For example, here, after activation of the lines succeeded?
>
> > > +static void adv748x_dai_shutdown(struct snd_pcm_substream *sub, struct snd_soc_dai *dai)
> > > +{
> > > +       struct adv748x_state *state = state_of(dai);
> > > +
> > > +       set_audio_pads_state(state, 0);
> > > +}
>
> And clk_disable_unprepare here, before shutting down the pads?
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
