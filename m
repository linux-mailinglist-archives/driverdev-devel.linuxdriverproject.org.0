Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 489F92C5E2B
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Nov 2020 00:34:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C616871BA;
	Thu, 26 Nov 2020 23:34:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Grs69gDgKa07; Thu, 26 Nov 2020 23:34:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D0C2687419;
	Thu, 26 Nov 2020 23:34:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 97B551BF275
 for <devel@linuxdriverproject.org>; Thu, 26 Nov 2020 23:34:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 91378878C2
 for <devel@linuxdriverproject.org>; Thu, 26 Nov 2020 23:34:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FQ3f9hAJqcEr for <devel@linuxdriverproject.org>;
 Thu, 26 Nov 2020 23:34:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs25.siol.net [185.57.226.216])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3B850878BB
 for <devel@driverdev.osuosl.org>; Thu, 26 Nov 2020 23:34:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 441AB522A20;
 Fri, 27 Nov 2020 00:34:28 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 52p7gfV7aUUY; Fri, 27 Nov 2020 00:34:27 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C5FF3522A27;
 Fri, 27 Nov 2020 00:34:27 +0100 (CET)
Received: from kista.localnet (cpe1-5-97.cable.triera.net [213.161.5.97])
 (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 37DA3522A20;
 Fri, 27 Nov 2020 00:34:26 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: mripard@kernel.org, paul.kocialkowski@bootlin.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: Re: [PATCH v3] media: cedrus: Add support for VP8 decoding
Date: Fri, 27 Nov 2020 00:40:31 +0100
Message-ID: <2282897.HYN9I3zZbb@kista>
In-Reply-To: <1496f292eadc62a3ab585a89cf9b997ce4a1d799.camel@collabora.com>
References: <20201110223540.4105284-1-jernej.skrabec@siol.net>
 <1496f292eadc62a3ab585a89cf9b997ce4a1d799.camel@collabora.com>
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
Cc: devel@driverdev.osuosl.org, Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

Dne petek, 27. november 2020 ob 00:21:11 CET je Ezequiel Garcia napisal(a):
> Hi Jernej, Emmanuel,
> 
> Thanks for the patch.
> 
> On Tue, 2020-11-10 at 23:35 +0100, Jernej Skrabec wrote:
> > VP8 in Cedrus shares same engine as H264.
> > 
> > Note that it seems necessary to call bitstream parsing functions,
> > to parse frame header, otherwise decoded image is garbage. This is
> > contrary to what is driver supposed to do. However, values are not
> > really used, so this might be acceptable. It's possible that bitstream
> > parsing functions set some internal VPU state, which is later necessary
> > for proper decoding. Biggest suspect is "VP8 probs update" trigger.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > [addressed issues from reviewer]
> > Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> > ---
> > Changes in v3:
> > - addressed comments from Ezequiel Garcia - new comments,
> >   using new macros from VP8 UAPI, new function for waiting
> >   on bit to be set
> > Changes in v2:
> > - rebased on top of current linux-media master branch
> > 
> > NOTE: This now depends on following patch:
> > https://patchwork.linuxtv.org/project/linux-media/patch/
20201108202021.4187-1-linkmauve@linkmauve.fr/
> > 
> 
> The patch looks fairly good, so let's wait and see
> what Hans, Paul and Maxime think about it.
> 
> FWIW, my humble Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks!

> 
> It would be good to make sure this doesn't regress
> v4l2-compliance, or cause some regression in decoding.

I didn't include v4l2-compliance here, but it was in previous revisions. This 
revision has just cosmetics. Not sure how it could cause any regression since 
it's pretty standalone.

> 
> Not really a blocker to merge this, but I'm thinking
> that now that we have Fluster for conformance testing,
> we could add the VP8 vectors and use them against
> Cedrus and Hantro:
> 
> https://chromium.googlesource.com/webm/vp8-test-vectors/+/refs/heads/master

I tested VP8 test vectors with initial version of this decoder by hand and all 
videos were properly decoded as far as I can tell. But automated testing is 
always welcome.

Best regards,
Jernej

> 
> Thanks,
> Ezequiel
> 
> >  drivers/staging/media/sunxi/cedrus/Makefile   |   3 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus.c   |   8 +
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  24 +
> >  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   5 +
> >  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   2 +
> >  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  80 ++
> >  .../staging/media/sunxi/cedrus/cedrus_video.c |   9 +
> >  .../staging/media/sunxi/cedrus/cedrus_vp8.c   | 907 ++++++++++++++++++
> >  8 files changed, 1037 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_vp8.c
> > 
> 
> 


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
