Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DF031D6EF
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Feb 2021 10:24:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A60DF85F5D;
	Wed, 17 Feb 2021 09:24:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2fcSYn0Yb0YW; Wed, 17 Feb 2021 09:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3787585F34;
	Wed, 17 Feb 2021 09:24:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6F67F1BF865
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 09:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 60F3D86D37
 for <devel@linuxdriverproject.org>; Wed, 17 Feb 2021 09:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cVwCTR0oYg9W for <devel@linuxdriverproject.org>;
 Wed, 17 Feb 2021 09:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B89C386C03
 for <devel@driverdev.osuosl.org>; Wed, 17 Feb 2021 09:23:59 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9CD2664E33;
 Wed, 17 Feb 2021 09:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1613553839;
 bh=FD7WhxzDm+JDUfR6hgpEBF+USlSpiOrjLGWZu2X98cI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jF0NlVSCU9pO4orJwFctgDl16Qz2q2xtNLtJz1DaP0buysksSPJFRfQZaeyvNHuJC
 bWg6BJByx2Um/j+t1QKHcL4nCqILFeEcl0KBWCZ0NTtWvCyVZbQCHShrxjkS/D1663
 kEFHpQqChcLhQHnuNstCKZ+Z5w5oZm7MHbJhrH2I=
Date: Wed, 17 Feb 2021 10:23:56 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v1 00/18] Add HANTRO G2/HEVC decoder support for IMX8MQ
Message-ID: <YCzgrGr8JpUYcQ+L@kroah.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
 <YCzO7SRmBKzGeMUS@kroah.com>
 <04dfae0b-92e5-e02d-c687-ba4d28b7aaf2@collabora.com>
 <YCzVmRVL79KMkxXQ@kroah.com>
 <63b62e9e-b95f-59a4-b830-c56d2cb9e4f8@xs4all.nl>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63b62e9e-b95f-59a4-b830-c56d2cb9e4f8@xs4all.nl>
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
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, Anson.Huang@nxp.com,
 krzk@kernel.org, linux-rockchip@lists.infradead.org, wens@csie.org,
 linux-imx@nxp.com, linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 p.zabel@pengutronix.de, s.hauer@pengutronix.de, mripard@kernel.org,
 robh+dt@kernel.org, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 jernej.skrabec@siol.net, adrian.ratiu@collabora.com,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com,
 kernel@pengutronix.de, shawnguo@kernel.org, shengjiu.wang@nxp.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Wed, Feb 17, 2021 at 10:10:35AM +0100, Hans Verkuil wrote:
> On 17/02/2021 09:36, Greg KH wrote:
> > On Wed, Feb 17, 2021 at 09:28:09AM +0100, Benjamin Gaignard wrote:
> >>
> >> Le 17/02/2021 =E0 09:08, Greg KH a =E9crit=A0:
> >>> On Wed, Feb 17, 2021 at 09:02:48AM +0100, Benjamin Gaignard wrote:
> >>>> The IMX8MQ got two VPUs but until now only G1 has been enabled.
> >>>> This series aim to add the second VPU (aka G2) and provide basic
> >>>> HEVC decoding support.
> >>> Why are you adding this directly to drivers/staging/media/ and not
> >>> drivers/media/?  Why can't this just go to the main location and not
> >>> live in staging?
> >>
> >> G2/HEVC is added inside the already exiting Hantro driver, it is "just"
> >> an other codec from Hantro driver point of view.
> >> In addition of that v4l2-hevc uAPI is still unstable.
> >> One goal of this series is to have one more consumer of this v4l2-hevc
> >> uAPI so maybe we can claim it to be stable enough to move away from st=
aging
> >> and then do the same for Hantro driver. That would be a great achievem=
ent !
> > =

> > I know I do not like seeing new additions/features/whatever being added
> > to staging drivers as that encourages people to do new stuff on them
> > without doing the real work needed to get them out of staging.
> =

> In order to support a specific codec (MPEG-2, H.264, HEVC, VP8, etc.) for
> stateless codec hardware like the hantro, V4L2 controls need to be define=
d.
> The contents of these controls is derived directly from the underlying co=
dec
> standards, but it is quite difficult to get this right with the first att=
empt,
> since these standards are very complex.
> =

> So we went for the strategy of keeping these drivers in staging to make it
> easy to work on, while keeping the APIs for each codec private (i.e., the=
y are
> not exposed in include/uapi/linux).
> =

> Once we have sufficient confidence in the API for a specific codec we move
> it to uapi and thus fix the API. We also renumber the control IDs at that
> time to avoid any confusion between the staging version and the final ver=
sion.
> =

> We did that for H.264 and I hope we can soon do the same for MPEG-2 and V=
P8.
> =

> HEVC is definitely not ready for that yet.
> =

> The key phrase is 'sufficient confidence': one requirement is that it is =
supported
> by at least two drivers to be reasonably certain the API doesn't contain =
any HW
> specific stuff, and it passes test suites and review by codec experts.
> =

> All this is actively being worked on, so this is very much alive, but it =
is
> complex and time consuming.
> =

> > So what is preventing the existing driver from getting out of staging
> > now?
> =

> Once MPEG-2 and VP8 are finalized it is probably time to move these drive=
rs
> out of staging, while still keeping the HEVC API part private.
> =

> > =

> > And how are you all creating new userspace apis for staging drivers to
> > the v4l layer?  What happens when you export something new and then
> > userspace starts to rely on it and then you change it?
> =

> Nothing is exported. So if userspace want to use it they have to manually
> copy headers from include/media to their application.
> =

> > =

> > Anyway, the media staging drivers are on their own, I don't touch them,
> > it just feels odd to me...
> =

> It's an unusual situation. But putting the drivers in staging and keeping
> the codec API headers private turns out to be the most effective way to
> develop this.

Ah, ok, thanks for the explaination, makes sense.

good luck!

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
