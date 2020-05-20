Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FAB1DC210
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 00:31:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BAE0287026;
	Wed, 20 May 2020 22:31:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YDaJP1ByytaF; Wed, 20 May 2020 22:31:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 56B0186EC2;
	Wed, 20 May 2020 22:31:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A11C01BF475
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 22:31:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 90BC3204DB
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 22:31:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DOjwfT3cyKNU for <devel@linuxdriverproject.org>;
 Wed, 20 May 2020 22:31:01 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs15.siol.net [185.57.226.206])
 by silver.osuosl.org (Postfix) with ESMTPS id 700E32049D
 for <devel@driverdev.osuosl.org>; Wed, 20 May 2020 22:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 5F0AD521CA5;
 Thu, 21 May 2020 00:30:58 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id WVPCA-mzMnE8; Thu, 21 May 2020 00:30:58 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E1B7A521CA2;
 Thu, 21 May 2020 00:30:57 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 6D5FC521C9C;
 Thu, 21 May 2020 00:30:57 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, paul.kocialkowski@bootlin.com,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH] media: cedrus: Add support for VP8 decoding
Date: Thu, 21 May 2020 00:30:56 +0200
Message-ID: <2875977.BS6FNRR2HQ@jernej-laptop>
In-Reply-To: <ee0aa12fdf1655c4e563b8fc9753a5ab5e52f4cf.camel@ndufresne.ca>
References: <20200520210129.132816-1-jernej.skrabec@siol.net>
 <ee0aa12fdf1655c4e563b8fc9753a5ab5e52f4cf.camel@ndufresne.ca>
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne sreda, 20. maj 2020 ob 23:43:40 CEST je Nicolas Dufresne napisal(a):
> Le mercredi 20 mai 2020 =E0 23:01 +0200, Jernej Skrabec a =E9crit :
> > VP8 in Cedrus shares same engine as H264.
> > =

> > Note that it seems necessary to call bitstream parsing functions,
> > to parse frame header, otherwise decoded image is garbage. This is
> > contrary to what is driver supposed to do. However, values are not
> > really used, so this might be acceptable. It's possible that bitstream
> =

> Have you verified that all values passed through controls are not used
> ? To remain a stateless driver, there is no requirement for parsed data
> to be used, the only requirement is that the reference are used.
> Otherwise doing parallel decoding of two stream of different stream
> would be broken. Have you verified that parallel decoding is working as
> expected ?

I'm not sure if you understand what I meant. Although userspace app parses =

frame header and fills all data in VP8 control, driver parses frame header =

again, using HW bitstream parsing functionality in cedrus_read_header(). =

Without that second header parsing in HW, decoded image is garbage. Note th=
at =

cedrus_read_header() discards all parsed values and relies on those provide=
d =

in controls.

This parsing doesn't cause any problems with parallel decoding or anything. =

It's done during frame decoding job, so it doesn't affect any state. It's j=
ust =

that we shouldn't need to parse header in driver because all data is alread=
y =

provided in controls. It seems that Cedrus core was never tested without th=
at =

HW frame header parsing. I found out that HEVC and H264 frames can sometime=
s =

also be wrongly decoded if no bitstream parsing function is triggered in HW =

before final decoding.

I spend a lot of time trying to avoid that header parsing, but I couldn't f=
ind =

any way around it.

In another words, Cedrus VPU provides two functionalities - HW bitstream =

parsing (to speed up header parsing) and video decoding. One would thought =

that video decoding can be used independently, if all data from header is =

already known, but it can't be.

Best regards,
Jernej

> =

> > parsing functions set some internal VPU state, which is later necessary
> > for proper decoding. Biggest suspect is "VP8 probs update" trigger.
> > =

> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > =

> >  drivers/staging/media/sunxi/cedrus/Makefile   |   3 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus.c   |   8 +
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  15 +
> >  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   5 +
> >  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   1 +
> >  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  80 ++
> >  .../staging/media/sunxi/cedrus/cedrus_video.c |   9 +
> >  .../staging/media/sunxi/cedrus/cedrus_vp8.c   | 699 ++++++++++++++++++
> >  8 files changed, 819 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_vp8.c



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
