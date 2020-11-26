Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C2C2C5E1A
	for <lists+driverdev-devel@lfdr.de>; Fri, 27 Nov 2020 00:21:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9CF362E285;
	Thu, 26 Nov 2020 23:21:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GqlhiVGHxvql; Thu, 26 Nov 2020 23:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 45FDB20397;
	Thu, 26 Nov 2020 23:21:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 550CB1BF275
 for <devel@linuxdriverproject.org>; Thu, 26 Nov 2020 23:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5112A87763
 for <devel@linuxdriverproject.org>; Thu, 26 Nov 2020 23:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VkdorUM7UxnJ for <devel@linuxdriverproject.org>;
 Thu, 26 Nov 2020 23:21:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6854D8774F
 for <devel@driverdev.osuosl.org>; Thu, 26 Nov 2020 23:21:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A2EB61F46084
Message-ID: <1496f292eadc62a3ab585a89cf9b997ce4a1d799.camel@collabora.com>
Subject: Re: [PATCH v3] media: cedrus: Add support for VP8 decoding
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com
Date: Thu, 26 Nov 2020 20:21:11 -0300
In-Reply-To: <20201110223540.4105284-1-jernej.skrabec@siol.net>
References: <20201110223540.4105284-1-jernej.skrabec@siol.net>
Organization: Collabora
User-Agent: Evolution 3.36.3-1 
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

Hi Jernej, Emmanuel,

Thanks for the patch.

On Tue, 2020-11-10 at 23:35 +0100, Jernej Skrabec wrote:
> VP8 in Cedrus shares same engine as H264.
> 
> Note that it seems necessary to call bitstream parsing functions,
> to parse frame header, otherwise decoded image is garbage. This is
> contrary to what is driver supposed to do. However, values are not
> really used, so this might be acceptable. It's possible that bitstream
> parsing functions set some internal VPU state, which is later necessary
> for proper decoding. Biggest suspect is "VP8 probs update" trigger.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> [addressed issues from reviewer]
> Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> ---
> Changes in v3:
> - addressed comments from Ezequiel Garcia - new comments,
>   using new macros from VP8 UAPI, new function for waiting
>   on bit to be set
> Changes in v2:
> - rebased on top of current linux-media master branch
> 
> NOTE: This now depends on following patch:
> https://patchwork.linuxtv.org/project/linux-media/patch/20201108202021.4187-1-linkmauve@linkmauve.fr/
> 

The patch looks fairly good, so let's wait and see
what Hans, Paul and Maxime think about it.

FWIW, my humble Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

It would be good to make sure this doesn't regress
v4l2-compliance, or cause some regression in decoding.

Not really a blocker to merge this, but I'm thinking
that now that we have Fluster for conformance testing,
we could add the VP8 vectors and use them against
Cedrus and Hantro:

https://chromium.googlesource.com/webm/vp8-test-vectors/+/refs/heads/master

Thanks,
Ezequiel

>  drivers/staging/media/sunxi/cedrus/Makefile   |   3 +-
>  drivers/staging/media/sunxi/cedrus/cedrus.c   |   8 +
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  24 +
>  .../staging/media/sunxi/cedrus/cedrus_dec.c   |   5 +
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   2 +
>  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  80 ++
>  .../staging/media/sunxi/cedrus/cedrus_video.c |   9 +
>  .../staging/media/sunxi/cedrus/cedrus_vp8.c   | 907 ++++++++++++++++++
>  8 files changed, 1037 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/staging/media/sunxi/cedrus/cedrus_vp8.c
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
