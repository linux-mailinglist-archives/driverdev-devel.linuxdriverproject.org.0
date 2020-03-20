Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6A818CAFC
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 10:59:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9AFF2887EF;
	Fri, 20 Mar 2020 09:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HOor2Aau3u5k; Fri, 20 Mar 2020 09:59:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 070268862C;
	Fri, 20 Mar 2020 09:59:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0DD761BF20B
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 09:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 095592286C
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 09:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZgERN3kUlGdX for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 09:59:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by silver.osuosl.org (Postfix) with ESMTPS id 15E932284A
 for <devel@driverdev.osuosl.org>; Fri, 20 Mar 2020 09:59:16 +0000 (UTC)
Received: from pendragon.ideasonboard.com (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id CA6A1504;
 Fri, 20 Mar 2020 10:59:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1584698353;
 bh=ZzexViwT1sNWNVrixfFMMsQEew/KhYKWu3YzN5cmzCI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ohp5TXh1V32/7TUc41A62vGmBmoziycU4oAdYUdLefFdH37z8W96SsCvO+jDYOPci
 yl56teBS9RGHB2sEtwfPKoIF4R0VFKV7zfs7bEv6wK6b+oVhRBgi9uw+HZ903G71qx
 CnOC7JOVk/Z9/c2QQky3jfKcRhZ0B5Dqi7Y4FRrw=
Date: Fri, 20 Mar 2020 11:59:07 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alex Riesen <alexander.riesen@cetitec.com>
Subject: Re: [PATCH v2 07/10] dt-bindings: adv748x: add information about
 serial audio interface (I2S/TDM)
Message-ID: <20200320095907.GB5193@pendragon.ideasonboard.com>
References: <cover.1584639664.git.alexander.riesen@cetitec.com>
 <c9ff553f804f178a247dca356306948e971432fb.1584639664.git.alexander.riesen@cetitec.com>
 <20200319180125.GJ14585@pendragon.ideasonboard.com>
 <20200320084406.GB4344@pflmari>
 <CAMuHMdUdVb0LwZDx-MH2FLYYPvgq=uj_3Nrzo9obWAi-Q-2ZnA@mail.gmail.com>
 <20200320090339.GD4344@pflmari>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320090339.GD4344@pflmari>
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
 driverdevel <devel@driverdev.osuosl.org>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Alex,

On Fri, Mar 20, 2020 at 10:03:39AM +0100, Alex Riesen wrote:
> Geert Uytterhoeven, Fri, Mar 20, 2020 09:48:14 +0100:
> > On Fri, Mar 20, 2020 at 9:44 AM Alex Riesen <alexander.riesen@cetitec.com> wrote:
> > > Laurent Pinchart, Thu, Mar 19, 2020 19:01:25 +0100:
> > > > On Thu, Mar 19, 2020 at 06:42:36PM +0100, Alex Riesen wrote:
> > > > > As the driver has some support for the audio interface of the device,
> > > > > the bindings file should mention it.
> > > > >
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

If the MCLK can't be output without enabling the I2S then I don't mind
if we make the #clock-cells optional, although, as Geert mentioned,
someone may still want to use it.

> And how do I require it to be set unconditionally? By just removing the
> "if ..." part of the statement?

Yes. For YAML it's easy too, the hard part is making properties
conditional :-)

-- 
Regards,

Laurent Pinchart
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
