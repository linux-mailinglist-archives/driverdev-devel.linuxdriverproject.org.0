Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9DD18C9EF
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 10:15:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 092F888A2D;
	Fri, 20 Mar 2020 09:15:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LysTG2jv1atb; Fri, 20 Mar 2020 09:15:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76777886F5;
	Fri, 20 Mar 2020 09:15:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 49CE71BF2E5
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 09:15:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4678687425
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 09:15:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rUqGDCS0TP88 for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 09:15:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f65.google.com (mail-ot1-f65.google.com
 [209.85.210.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 57466873AF
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 09:15:29 +0000 (UTC)
Received: by mail-ot1-f65.google.com with SMTP id 111so5243682oth.13
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 02:15:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=8x4focGPb4ERLGjucd62jlveYIVPZ0IBCjA7nXBe5yM=;
 b=MXZw3z+bTmmClGD8ygO2YWnlKyWymRpz0SewdmAHb72ePMuQUfSpidp5oB4fNJFQ0y
 e+3+Nvu7rK9aA0GC0gYDT25gQR0p0uCR5NjDq4069kTg55znQADtZTH15OfAF5BuqFoF
 8VqFHpT8x8LnuYqj6BQCjVibELFC/Bd8k/QY4+7//qZ4uLADtOwm76KIHRblLeU50dg/
 iErpnKPDO90a9aXCd3Doj/mi5gsEejBnETW5iogiVh8w05agheIKfnSnCJ2DkIC1K9Yq
 1fcsiwhWgt3wBc6Gwn8SgzY+DDY/n5QUAqYLM8SpRx/QCAb/RjtVbQ2+kR92lNVZ3Rk4
 Yklw==
X-Gm-Message-State: ANhLgQ15LN8092898hBzi0Tk23tKjYu4XaH8pBLhn0JY9zXeri/jN5O1
 J/LsG4r/4I8Lqnh64kgKBRThGQA7w7JrKa6htJA=
X-Google-Smtp-Source: ADFU+vsYLnunQuvHtatOG7BsZ09H8JNgkdZkzpSDXVv4nRP0XZF8aXP6gXAbKfpS7Iv8xwSoBWNPpDjt9weJDu9tK5g=
X-Received: by 2002:a9d:6a47:: with SMTP id h7mr6013558otn.297.1584695728515; 
 Fri, 20 Mar 2020 02:15:28 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <c9ff553f804f178a247dca356306948e971432fb.1584639664.git.alexander.riesen@cetitec.com>
 <20200319180125.GJ14585@pendragon.ideasonboard.com>
 <20200320084406.GB4344@pflmari>
 <CAMuHMdUdVb0LwZDx-MH2FLYYPvgq=uj_3Nrzo9obWAi-Q-2ZnA@mail.gmail.com>
 <20200320090339.GD4344@pflmari>
In-Reply-To: <20200320090339.GD4344@pflmari>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 20 Mar 2020 10:15:17 +0100
Message-ID: <CAMuHMdVtsdNg0s5fio8GAhHGV9H+1J=xvuCXj5VdZ6gwqxGrZw@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] dt-bindings: adv748x: add information about
 serial audio interface (I2S/TDM)
To: Alex Riesen <alexander.riesen@cetitec.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
 Kieran Bingham <kieran.bingham@ideasonboard.com>, 
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

On Fri, Mar 20, 2020 at 10:03 AM Alex Riesen
<alexander.riesen@cetitec.com> wrote:
> Geert Uytterhoeven, Fri, Mar 20, 2020 09:48:14 +0100:
> > On Fri, Mar 20, 2020 at 9:44 AM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > > Laurent Pinchart, Thu, Mar 19, 2020 19:01:25 +0100:
> > > > On Thu, Mar 19, 2020 at 06:42:36PM +0100, Alex Riesen wrote:
> > > > > As the driver has some support for the audio interface of the device,
> > > > > the bindings file should mention it.
> >
> > > > > @@ -16,6 +18,8 @@ Required Properties:
> > > > >      slave device on the I2C bus. The main address is mandatory, others are
> > > > >      optional and remain at default values if not specified.
> > > > >
> > > > > +  - #clock-cells: must be <0> if the I2S port is used
> > > >
> > > > Wouldn't it be simpler to set it to 0 unconditionally ?
> > >
> > > Would it? If the port itself is optional, shouldn't the clock be an option
> > > too?
> >
> > You'd be surprised how many board designers would consider this a cheap
> > 12.288 MHz clock source, without using the I2S port ;-)
>
> Well, I am :-)
>
> Especially considering that the driver will not switch the MCLK pin aktive
> (all I2S-related pins are tristate by default).

OK, didn't consider that.  But that still won't stop the hardware designer.
E.g. on Lager, the clock input of the PMIC is tied to the clock line of an SPI
bus, so to use that feature, the SPI clock must be kept running all the time,
not just when doing a transfer.

> And how do I require it to be set unconditionally? By just removing the
> "if ..." part of the statement?

Indeed.  This is still the plain text binding, not yaml.

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
