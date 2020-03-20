Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1FC18C99F
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 10:10:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 012C088ABC;
	Fri, 20 Mar 2020 09:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SchVAzRXNLyp; Fri, 20 Mar 2020 09:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5B19E889FE;
	Fri, 20 Mar 2020 09:10:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B31E71BF2E5
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 09:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AECE524DFD
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 09:10:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EG5sjvL6QOUe for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 09:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by silver.osuosl.org (Postfix) with ESMTPS id E4F55227F7
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 09:10:45 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id t28so5287072ott.5
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 02:10:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=Tg5BjS+sqoKmcQ+42q9TxLcAJmVp9TX8V+2Cw9tSbTc=;
 b=gJA8nCJD6g35iDe5bqnP/OhCnDEcNpZesTNBxas2PzD+Uqw8kyMgMz0xA9oGQrzmdV
 F/2iMXLdao6hrfIVkklVGUptz+YHNBjtT3FSQbOlQs4QvzEG7YTlj1XOz2DQx5juMAXm
 XZ0cL1kNHkWz5evHBlI33cXLtUEP57qxK3zHMhfRhVQPrrG9KnxMdd4bvoqWGPaTfoCO
 hV97rqAh6rtHFcCoufjk/NoyzGfeSwmZUjP8sidyCPlQqPF73C6z8SYnUjKURGMPivS+
 CiChthAUdkWRb+EFZd0flPSzFFCe8Nvy/JV4lNfPWu3ANwgdNCSxFCPbOsegonub0Hf+
 SSwQ==
X-Gm-Message-State: ANhLgQ2/C+G8SJM2MvcxdosdJoFkcvRewRXxc5e9tmj2TVj+N8rz/9Ow
 pb8ky49D5LL9z0cSxvhCN1X//TWBOavXkdBHC2A=
X-Google-Smtp-Source: ADFU+vsUtq7aKxlPk7a6wmuKLwOjxCxHK6YYdo8yUXNmA1Av41cm11S+ggWl9zkA56I5lN+TzJt+7vYyBdanbV3/AIo=
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr5844474otk.145.1584695445126; 
 Fri, 20 Mar 2020 02:10:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <252bb433f47b0ccb61bb077abdbd892091abc550.1584639664.git.alexander.riesen@cetitec.com>
 <CAMuHMdXOAQtuxCAfb=sZKodyJWwSrf-GO-pdV3HYkOytQW4ENg@mail.gmail.com>
 <20200320085748.GC4344@pflmari>
In-Reply-To: <20200320085748.GC4344@pflmari>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Mar 2020 10:10:24 +0100
Message-ID: <CAMuHMdUvLGx41631HD-jOrpiw7Nyode-iXk0hxDhBHZ9JEqy7Q@mail.gmail.com>
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
 Device Tree Mailing List <devicetree@vger.kernel.org>, 
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

On Fri, Mar 20, 2020 at 9:58 AM Alex Riesen
<alexander.riesen@cetitec.com> wrote:
> Geert Uytterhoeven, Fri, Mar 20, 2020 09:43:29 +0100:
> > > +int adv748x_dai_init(struct adv748x_dai *dai)
> > > +{
> > > +       int ret;
> > > +       struct adv748x_state *state = adv748x_dai_to_state(dai);
> > > +
> > > +       dai->mclk = clk_register_fixed_rate(state->dev,
> > > +                                           "adv748x-hdmi-i2s-mclk",
> >
> > I assume there can be multiple adv748x instances in the system?
> > Hence the clock name should be unique for each instance.
>
> I think that can happen.
>
> Is it alright to derive the clock name from the device name? E.g.:
> adv748x.4-0070-mclk? Where "adv748x.4-0070" is a struct device->name.

Yes, that's the idea.

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
