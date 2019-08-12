Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DAA89E4C
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 14:29:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1F2AD2034C;
	Mon, 12 Aug 2019 12:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jlpYUWowTXCQ; Mon, 12 Aug 2019 12:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6598621517;
	Mon, 12 Aug 2019 12:29:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7A1561BF36C
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 12:29:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 773DA81D2A
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 12:29:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RkeqqzI0tU07 for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 12:29:00 +0000 (UTC)
X-Greylist: delayed 00:07:44 by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs63.siol.net [185.57.226.254])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 7E5BF81B81
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 12:29:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 791135206FB;
 Mon, 12 Aug 2019 14:21:13 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id gEiOe5RdhaUL; Mon, 12 Aug 2019 14:21:13 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1E9B452379C;
 Mon, 12 Aug 2019 14:21:13 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 7FD855206FB;
 Mon, 12 Aug 2019 14:21:12 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [PATCH 0/7] media: cedrus: Improvements/cleanup
Date: Mon, 12 Aug 2019 14:21:11 +0200
Message-ID: <4636127.h7jaTrrqaR@jernej-laptop>
In-Reply-To: <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, maxime.ripard@bootlin.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne ponedeljek, 12. avgust 2019 ob 14:12:21 CEST je Hans Verkuil napisal(a):
> On 5/30/19 11:15 PM, Jernej Skrabec wrote:
> > Here is first batch of random Cedrus improvements/cleanups. Only patch 2
> > has a change which raises a question about H264 controls.
> > 
> > Changes were tested on H3 SoC using modified ffmpeg and Kodi.
> > 
> > Please take a look.
> 
> This has been sitting in patchwork for quite some time. I've updated the
> status of the various patches and most needed extra work.
> 
> It seems that patches 4/7 and 5/7 are OK. Maxime, can you please confirm
> that these two are still valid? They apply cleanly on the latest master
> at least, but since they are a bit old I prefer to have confirmation that
> it's OK to merge them.

I'm not sure about patch 4, IIRC Boris Brezillon also wants to improve that 
area in separate series, but patch 5 should be safe to merge.

Anyway, I didn't post new version because I'm waiting on close-to-be-merged 
H264 and HEVC patch series to be actually merged.

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > Best regards,
> > Jernej
> > 
> > Jernej Skrabec (7):
> >   media: cedrus: Disable engine after each slice decoding
> >   media: cedrus: Fix H264 default reference index count
> >   media: cedrus: Fix decoding for some H264 videos
> >   media: cedrus: Remove dst_bufs from context
> >   media: cedrus: Don't set chroma size for scale & rotation
> >   media: cedrus: Add infra for extra buffers connected to capture
> >   
> >     buffers
> >   
> >   media: cedrus: Improve H264 memory efficiency
> >  
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  12 +-
> >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 115 ++++++++----------
> >  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +-
> >  .../staging/media/sunxi/cedrus/cedrus_video.c |  25 ++--
> >  4 files changed, 68 insertions(+), 88 deletions(-)




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
