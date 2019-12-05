Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0701142FC
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Dec 2019 15:49:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C820F882A7;
	Thu,  5 Dec 2019 14:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FPBFTvERGTXc; Thu,  5 Dec 2019 14:49:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 39BFE88220;
	Thu,  5 Dec 2019 14:49:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9D99B1BF316
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 14:49:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9374E881BE
 for <devel@linuxdriverproject.org>; Thu,  5 Dec 2019 14:49:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zfcWoqUHszW1 for <devel@linuxdriverproject.org>;
 Thu,  5 Dec 2019 14:49:49 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from rere.qmqm.pl (rere.qmqm.pl [91.227.64.183])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 5CB828815B
 for <devel@driverdev.osuosl.org>; Thu,  5 Dec 2019 14:49:49 +0000 (UTC)
Received: from remote.user (localhost [127.0.0.1])
 by rere.qmqm.pl (Postfix) with ESMTPSA id 47TJTZ2DSpz3c;
 Thu,  5 Dec 2019 15:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=rere.qmqm.pl; s=1;
 t=1575557234; bh=SdhSC4B4qnY5nHTEIulHuGXWpsS6ubKaRhfb6FXv6F0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GCisWDnMuiO3s6XgyfUW7VxaCIffzvteDBYLehPFGJmBQ7sCFAxEo0JlWNfjhUUqB
 qOYihABrLOYXEB5eqOOKRvwBxKW+8aE9+so1fOaxzEaISx5ddWVcoD8aBEzsk6VF4x
 l4Oh96a3/d4OCPJO+UCYI0d9nSYDJT2UaQrBoweb9d0cmTTymjgCFnh+FJQiDi+kQG
 kzX/wobFQGBLP2KPV5HWgAKkv5MRlITMyfEOwAKcOQ3OKxzn/xAZcGDfLbTnPkW4oV
 Zrxt/L+2dADI/MRLaIKI8vcTqYrkEuGzy6VRZvmvJ7VwIjXARVe3owcNtHr0W6uz4S
 Q4Ef4IBICDL8g==
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.101.4 at mail
Date: Thu, 5 Dec 2019 15:49:41 +0100
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: =?iso-8859-2?B?Suly9G1l?= Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH] staging: wfx: fix reset GPIO polarity
Message-ID: <20191205144941.GA12859@qmqm.qmqm.pl>
References: <f9ebb05f4a13cce4a8724dfb17f8383ec9b2d468.1575478705.git.mirq-linux@rere.qmqm.pl>
 <3343657.nOMI9WY9u8@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3343657.nOMI9WY9u8@pc-42>
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Dec 05, 2019 at 02:08:23PM +0000, J=E9r=F4me Pouiller wrote:
> On Wednesday 4 December 2019 17:59:46 CET Micha=B3 Miros=B3aw wrote:
> > Driver inverts meaning of GPIO_ACTIVE_LOW/HIGH. Fix it to prevent
> > confusion.
> > =

> > Signed-off-by: Micha=B3 Miros=B3aw <mirq-linux@rere.qmqm.pl>
> > ---
> >  drivers/staging/wfx/bus_spi.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/staging/wfx/bus_spi.c b/drivers/staging/wfx/bus_sp=
i.c
> > index ab0cda1e124f..73d0157a86ba 100644
> > --- a/drivers/staging/wfx/bus_spi.c
> > +++ b/drivers/staging/wfx/bus_spi.c
> > @@ -199,9 +199,9 @@ static int wfx_spi_probe(struct spi_device *func)
> >         if (!bus->gpio_reset) {
> >                 dev_warn(&func->dev, "try to load firmware anyway\n");
> >         } else {
> > -               gpiod_set_value(bus->gpio_reset, 0);
> > -               udelay(100);
> >                 gpiod_set_value(bus->gpio_reset, 1);
> > +               udelay(100);
> > +               gpiod_set_value(bus->gpio_reset, 0);
> >                 udelay(2000);
> >         }
> Hello Micha=B3,
> =

> I did not find real consensus in kernel code. My personal taste would
> be to keep this gpio "ACTIVE_HIGH" and rename it gpio_nreset. What do
> you think about it?
> =

> (in add, this solution would explicitly change the name of the DT
> attribute instead of changing the semantic of the existing attribute)

As a user (board developer) I would expect that DT describes the
GPIO meaning directly: so when I specify GPIO_ACTIVE_HIGH flag I also
wire up the board so that outputing 1 would match the active state of
the chip's signal (that might be inverted for some reason). I think we
should stick to what is said in Documentation/devicetree/bindings/gpio.txt
(section 1.1).

Since this is a new driver in kernel I would prefer to fix it at the start.
Changing the name of the GPIO would also be ok, but since there is no DT
binding yet, I guess there will come up an issue of 'compatible' string
format that does not match 'vendor,chip' now, so we can use the difference
for backwards compatibility with out-of-tree driver if needed.

Best Regards,
Micha=B3=A0Miros=B3aw
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
