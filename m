Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89FB33E866
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 05:26:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FBA9431F7;
	Wed, 17 Mar 2021 04:26:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PmMLIzW9s5mM; Wed, 17 Mar 2021 04:26:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E40D431E7;
	Wed, 17 Mar 2021 04:26:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 13C221BF34B
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 04:26:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C4CF431EC
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 04:26:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSvCidmVad9n for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 04:25:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5534142FC1
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 04:25:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 27F3764F9E;
 Wed, 17 Mar 2021 04:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1615955158;
 bh=b0+guY3uHI/7UugdBIJZaedLb8084zSH7Fj2VTny2X0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZnTO7xz3vXP2Hf3iarFYTkOy0PTS63Wwsd6gQE4Sklk4G9sX/pd5jC78A3wO+QrNo
 rCOBENUMFbAvxpj2Bdkrls0VFfqJ3FiRzw45r4MCdpzcC0vFkP1fXhlj6N+hod6RhI
 0caOQfvz+18hHQu6dcxqShjZ0CjLMxgyf1on3dpS7pKxBmpnbDF3PIoro33h5aAdnu
 iiOJRlTEDqLRVzUN3V4iuKv8Vd6EvxHP82AN3+bG7xP81PHIujuNKe9bWWsBO11ak1
 0YcZEJDZNUQRdHtCvJDAz+T+800RykOSqCTdtghpS00lMdv1T/OxaLn07ALduFYk0W
 htpuRlHqcfXhw==
Date: Wed, 17 Mar 2021 06:25:54 +0200
From: Leon Romanovsky <leon@kernel.org>
To: =?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>
Subject: Re: [PATCH v5 03/24] wfx: add Makefile/Kconfig
Message-ID: <YFGE0t5LQuPp0M5h@unreal>
References: <20210315132501.441681-1-Jerome.Pouiller@silabs.com>
 <20210315132501.441681-4-Jerome.Pouiller@silabs.com>
 <YE95OCx5hWRedi+W@unreal> <1718324.Ee3sdLpQUQ@pc-42>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1718324.Ee3sdLpQUQ@pc-42>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mmc@vger.kernel.org,
 Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Mar 15, 2021 at 05:21:35PM +0100, J=E9r=F4me Pouiller wrote:
> Hi Leon,
>
> On Monday 15 March 2021 16:11:52 CET Leon Romanovsky wrote:
> > On Mon, Mar 15, 2021 at 02:24:40PM +0100, Jerome Pouiller wrote:
> > > From: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > >
> > > Signed-off-by: J=E9r=F4me Pouiller <jerome.pouiller@silabs.com>
> > > ---
> > >  drivers/net/wireless/silabs/wfx/Kconfig  | 12 +++++++++++
> > >  drivers/net/wireless/silabs/wfx/Makefile | 26 ++++++++++++++++++++++=
++
> > >  2 files changed, 38 insertions(+)
> > >  create mode 100644 drivers/net/wireless/silabs/wfx/Kconfig
> > >  create mode 100644 drivers/net/wireless/silabs/wfx/Makefile
> > >
> > > diff --git a/drivers/net/wireless/silabs/wfx/Kconfig b/drivers/net/wi=
reless/silabs/wfx/Kconfig
> > > new file mode 100644
> > > index 000000000000..3be4b1e735e1
> > > --- /dev/null
> > > +++ b/drivers/net/wireless/silabs/wfx/Kconfig
> > > @@ -0,0 +1,12 @@
> > > +config WFX
> > > +     tristate "Silicon Labs wireless chips WF200 and further"
> > > +     depends on MAC80211
> > > +     depends on MMC || !MMC # do not allow WFX=3Dy if MMC=3Dm
> > > +     depends on (SPI || MMC)
> > > +     help
> > > +       This is a driver for Silicons Labs WFxxx series (WF200 and fu=
rther)
> > > +       chipsets. This chip can be found on SPI or SDIO buses.
> > > +
> > > +       Silabs does not use a reliable SDIO vendor ID. So, to avoid c=
onflicts,
> > > +       the driver won't probe the device if it is not also declared =
in the
> > > +       Device Tree.
> > > diff --git a/drivers/net/wireless/silabs/wfx/Makefile b/drivers/net/w=
ireless/silabs/wfx/Makefile
> > > new file mode 100644
> > > index 000000000000..f399962c8619
> > > --- /dev/null
> > > +++ b/drivers/net/wireless/silabs/wfx/Makefile
> > > @@ -0,0 +1,26 @@
> > > +# SPDX-License-Identifier: GPL-2.0
> > > +
> > > +# Necessary for CREATE_TRACE_POINTS
> > > +CFLAGS_debug.o =3D -I$(src)
> >
> > I wonder if it is still relevant outside of the staging tree.
>
> It seems this pattern is common in the main tree. You suggest to relocate
> trace.h to include/trace/events?

No, leave it as it. Sorry for the noise.

Thanks

>
> --
> J=E9r=F4me Pouiller
>
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
