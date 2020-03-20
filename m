Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D35118C92D
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 09:48:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7426D889D4;
	Fri, 20 Mar 2020 08:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZrvIWHnkL2aS; Fri, 20 Mar 2020 08:48:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5AC28892E;
	Fri, 20 Mar 2020 08:48:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 422C81BF31B
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 08:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2FEC3880D2
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 08:48:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BBhAIBcVUA-r for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 08:48:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 956BC87F6F
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 08:48:26 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id 9so5649987oiq.12
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 01:48:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=r20INFdy7c88gDnE8p93UG+z/HnHRIMdNoDb/T153Dk=;
 b=NCLSu5+XprssgN3GlYsj2Uqzpy6cXTai7AVeN683qPuk1j/b1uYIXXf1sM4eKMH+kw
 cT43/zbMXhPxwtpY06SdvvQGqXuzrNbVe8fRWoBE4HIx/PTKAmB2gCHKrQmxRDOcczFN
 iGAzoIUIaHI7KvS+vn7Uqm2AC1SNceZxb3XfBrOFm/dcYPQv0wq9o/HGzcQkwcoRjdTj
 dbETBkKHsSNW9Kfr5AUHY0m3GpTcSxQkCtdBYo+EjIoeqKnrYzgbVY11e1t6qOemHRxH
 qb6uR9ZkX1N1I07lhX110Bfh9dLo/uh7w3S7yFmzlXX56bob55VLDNW/e9/pNWRcyXTS
 6t0A==
X-Gm-Message-State: ANhLgQ2BwzNUQz9pWDduWhVQvrwvw/qDbxmdVJQwvrmlvO9yy5pEoqbX
 Y8TZ4OQ9275GBRs2dcJLTjVbK+RatsFaZsBFnTE=
X-Google-Smtp-Source: ADFU+vuodlM7mvUF+rTQ9nef3TgHryKYhBbHdZc1CmVWQ2CDidna4tAYWLd1J2bx8M6xmj0E3O52PNbuj3QsnGbiDSk=
X-Received: by 2002:aca:4e57:: with SMTP id c84mr5311062oib.148.1584694105840; 
 Fri, 20 Mar 2020 01:48:25 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <c9ff553f804f178a247dca356306948e971432fb.1584639664.git.alexander.riesen@cetitec.com>
 <20200319180125.GJ14585@pendragon.ideasonboard.com>
 <20200320084406.GB4344@pflmari>
In-Reply-To: <20200320084406.GB4344@pflmari>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Mar 2020 09:48:14 +0100
Message-ID: <CAMuHMdUdVb0LwZDx-MH2FLYYPvgq=uj_3Nrzo9obWAi-Q-2ZnA@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] dt-bindings: adv748x: add information about
 serial audio interface (I2S/TDM)
To: Alex Riesen <alexander.riesen@cetitec.com>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 driverdevel <devel@driverdev.osuosl.org>, 
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

On Fri, Mar 20, 2020 at 9:44 AM Alex Riesen
<alexander.riesen@cetitec.com> wrote:
> Laurent Pinchart, Thu, Mar 19, 2020 19:01:25 +0100:
> > On Thu, Mar 19, 2020 at 06:42:36PM +0100, Alex Riesen wrote:
> > > As the driver has some support for the audio interface of the device,
> > > the bindings file should mention it.

> > > @@ -16,6 +18,8 @@ Required Properties:
> > >      slave device on the I2C bus. The main address is mandatory, others are
> > >      optional and remain at default values if not specified.
> > >
> > > +  - #clock-cells: must be <0> if the I2S port is used
> >
> > Wouldn't it be simpler to set it to 0 unconditionally ?
>
> Would it? If the port itself is optional, shouldn't the clock be an option
> too?

You'd be surprised how many board designers would consider this a cheap
12.288 MHz clock source, without using the I2S port ;-)

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
