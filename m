Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3404531D6AC
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 09:36:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 33FAC85F2D;
	Wed, 17 Feb 2021 08:36:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rlHc6tSnr8xQ; Wed, 17 Feb 2021 08:36:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7034D8538A;
	Wed, 17 Feb 2021 08:36:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD0A01BF59C
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:36:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A936385E0D
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 08:36:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n9L4gHFE7geD for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 08:36:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3D265859B6
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 08:36:45 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1AF9264E28;
 Wed, 17 Feb 2021 08:36:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613551004;
 bh=i4kNSveyDKj4UzuU1mXSC8PvJCQPboPkNLn+8F+ab1k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yv8i9+KWelFKyWLh1az5qyANS5nqW/AHNH77/f72B/vWnXtGRFkSTStnMXIzvn9+/
 7Yapooh4A9SgaLexotU/96Kqx2XvJlhLyMEQmHNANmx1G4weIrm/bwd1/Aq4aDsYwO
 o+5GaOV3bjjAb3IKdFImyUa6w0MOJR8ndzyMTx1U=
Date: Wed, 17 Feb 2021 09:36:41 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
Message-ID: <YCzVmRVL79KMkxXQ@kroah.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <YCzO7SRmBKzGeMUS@kroah.com>
 <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
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
Cc: peng.fan@nxp.com, kernel@collabora.com, devel@driverdev.osuosl.org,
 Anson.Huang@nxp.com, krzk@kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, linux-imx@nxp.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de, s.hauer@pengutronix.de,
 mripard@kernel.org, robh+dt@kernel.org, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 aisheng.dong@nxp.com, jernej.skrabec@siol.net, adrian.ratiu@collabora.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 p.zabel@pengutronix.de, hverkuil-cisco@xs4all.nl, shawnguo@kernel.org,
 shengjiu.wang@nxp.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 09:28:09AM +0100, Benjamin Gaignard wrote:
> =

> Le 17/02/2021 =E0 09:08, Greg KH a =E9crit=A0:
> > On Wed, Feb 17, 2021 at 09:02:48AM +0100, Benjamin Gaignard wrote:
> > > The IMX8MQ got two VPUs but until now only G1 has been enabled.
> > > This series aim to add the second VPU (aka G2) and provide basic
> > > HEVC decoding support.
> > Why are you adding this directly to drivers/staging/media/ and not
> > drivers/media/?  Why can't this just go to the main location and not
> > live in staging?
> =

> G2/HEVC is added inside the already exiting Hantro driver, it is "just"
> an other codec from Hantro driver point of view.
> In addition of that v4l2-hevc uAPI is still unstable.
> One goal of this series is to have one more consumer of this v4l2-hevc
> uAPI so maybe we can claim it to be stable enough to move away from stagi=
ng
> and then do the same for Hantro driver. That would be a great achievement=
 !

I know I do not like seeing new additions/features/whatever being added
to staging drivers as that encourages people to do new stuff on them
without doing the real work needed to get them out of staging.

So what is preventing the existing driver from getting out of staging
now?

And how are you all creating new userspace apis for staging drivers to
the v4l layer?  What happens when you export something new and then
userspace starts to rely on it and then you change it?

Anyway, the media staging drivers are on their own, I don't touch them,
it just feels odd to me...

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
