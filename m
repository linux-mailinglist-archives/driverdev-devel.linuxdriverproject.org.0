Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 305004BA543
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Feb 2022 16:58:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8691B6005E;
	Thu, 17 Feb 2022 15:58:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RzefqnTvxx8p; Thu, 17 Feb 2022 15:58:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CE4060AB0;
	Thu, 17 Feb 2022 15:58:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 60E2B1BF2B9
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 15:58:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4EFDA81332
 for <devel@linuxdriverproject.org>; Thu, 17 Feb 2022 15:58:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6XRFDXmA4Du for <devel@linuxdriverproject.org>;
 Thu, 17 Feb 2022 15:58:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 252E18100D
 for <devel@driverdev.osuosl.org>; Thu, 17 Feb 2022 15:58:47 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0537360B23;
 Thu, 17 Feb 2022 15:58:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB1FBC340E8;
 Thu, 17 Feb 2022 15:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1645113525;
 bh=7xZ83u8iDo18S5QTR71wMPT5q3d56ibzjE9KfTJtmwI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EKdcSlgtu62AhJylD9QXGdp0i48vq0MMSevZuMBJG/jcEPbLP1JSeyZ9ufKr4reuq
 pkzQUvZ7K2fqeZQXA358lJNja50Lp/hhvuk+RPUwKXtMYpIdXYfDNOHcxYjz/pqQPI
 ULYM4K2ScoMQbZrCnp2cjwNEEI2/SO8p/a4Uq0Mw=
Date: Thu, 17 Feb 2022 16:58:42 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH 2/2] staging: wfx: apply the necessary SDIO quirks for
 the Silabs WF200
Message-ID: <Yg5wsmsPQaFOANwv@kroah.com>
References: <20220216093112.92469-1-Jerome.Pouiller@silabs.com>
 <CAPDyKFqm3tGa+dtAGPn803rLnfY=tdcoX5DySnG-spFFqM=CrA@mail.gmail.com>
 <87ley9zg8c.fsf@kernel.org> <2063576.g1lFC2ckuq@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2063576.g1lFC2ckuq@pc-42>
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
Cc: devel@driverdev.osuosl.org, Ulf Hansson <ulf.hansson@linaro.org>,
 netdev@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mmc@vger.kernel.org, Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Feb 17, 2022 at 04:41:38PM +0100, J=E9r=F4me Pouiller wrote:
> On Thursday 17 February 2022 16:04:51 CET Kalle Valo wrote:
> > Ulf Hansson <ulf.hansson@linaro.org> writes:
> > > On Thu, 17 Feb 2022 at 10:59, Kalle Valo <kvalo@kernel.org> wrote:
> > >> Jerome Pouiller <Jerome.Pouiller@silabs.com> writes:
> > >> > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >> >
> > >> > Until now, the SDIO quirks are applied directly from the driver.
> > >> > However, it is better to apply the quirks before driver probing. S=
o,
> > >> > this patch relocate the quirks in the MMC framework.
> > >>
> > >> It would be good to know how this is better, what's the concrete
> > >> advantage?
> > >
> > > The mmc core has a quirk interface for all types of cards
> > > (eMMC/SD/SDIO), which thus keeps these things from sprinkling to
> > > drivers. In some cases, the quirk needs to be applied already during
> > > card initialization, which is earlier than when probing an SDIO func
> > > driver or the MMC block device driver.
> > >
> > > Perhaps it's a good idea to explain a bit about this in the commit me=
ssage.
> > =

> > I would add the whole paragraph to the commit log :)
> =

> Arf, Greg has just pulled this patch into staging-testing. I assume it is
> too late to change the commit message.

I can drop it, but really, it's fine as-is.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
