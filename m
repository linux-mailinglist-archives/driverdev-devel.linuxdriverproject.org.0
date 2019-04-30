Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 48F5CF85F
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 14:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9BD5E8698E;
	Tue, 30 Apr 2019 12:08:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0AKyd5JO5He9; Tue, 30 Apr 2019 12:08:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5216E86974;
	Tue, 30 Apr 2019 12:08:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E5D751BF28F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 12:08:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E2D8A8546F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 12:08:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XDCR+Ti14NKc
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 12:08:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E7A9587919
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 12:08:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3231F205ED;
 Tue, 30 Apr 2019 12:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556626088;
 bh=I47vkYm+6d6c2ywx9BGAVj9Kijj3EMO3PqU/2Pt2WPY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rx0AoQ9DLC0iBfDmgJ0Ci8+wkqIVLznp+WQpffXuo2zbj/mi2kSOqktkrCrxGEQR4
 ITgKBqKuwySK9y9mw8avHhyCPoK1YwyK4wAUsQl2CQ0I8L/QsenYJHuccrydhTCx2n
 PNK/0mG/TjyLalrK0qGjhef7iGTN372iEthPKfaA=
Date: Tue, 30 Apr 2019 14:08:06 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian.Gromm@microchip.com
Subject: Re: [PATCH] staging: most: sound: pass correct device when creating
 a sound card
Message-ID: <20190430120806.GA23538@kroah.com>
References: <1556614822-21464-1-git-send-email-christian.gromm@microchip.com>
 <20190430092058.GA14684@kroah.com>
 <1556625357.21063.13.camel@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556625357.21063.13.camel@microchip.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: driverdev-devel@linuxdriverproject.org, erosca@de.adit-jv.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 11:53:01AM +0000, Christian.Gromm@microchip.com wro=
te:
> On Di, 2019-04-30 at 11:20 +0200, Greg KH wrote:
> > External E-Mail
> > =

> > =

> > On Tue, Apr 30, 2019 at 11:00:22AM +0200, Christian Gromm wrote:
> > > =

> > > This patch fixes the usage of the wrong struct device when calling
> > > function snd_card_new.
> > > =

> > > Reported-by: Eugeniu Rosca <erosca@de.adit-jv.com>
> > > Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> > > ---
> > > =A0drivers/staging/most/sound/sound.c | 2 +-
> > > =A01 file changed, 1 insertion(+), 1 deletion(-)
> > Does this fix a specific commit?=A0=A0If so, should there be a "Fixes: "
> > tag
> > in the s-o-b: area?=A0=A0Does this need to go to the stable trees?
> =

> Yes, yes and yes. I'll be sending a v2 shortly.
> =

> I wasn't aware that I need to refer to a certain commit when fixing
> things up. How can bugfix patches not fix a specific commit anyway?
> The bugs must have gotten in somehow, right?

Yes, they must have snuck in somehow :)
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
