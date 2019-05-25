Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F23D2A479
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 May 2019 14:51:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8448C2284A;
	Sat, 25 May 2019 12:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QjBpkbENvtnj; Sat, 25 May 2019 12:51:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AECDE227E1;
	Sat, 25 May 2019 12:51:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B4D71BF255
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 12:51:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0581E882BB
 for <devel@linuxdriverproject.org>; Sat, 25 May 2019 12:51:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FuYyjiJ0Xm-Z for <devel@linuxdriverproject.org>;
 Sat, 25 May 2019 12:51:41 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs59.siol.net [185.57.226.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1134B882B5
 for <devel@driverdev.osuosl.org>; Sat, 25 May 2019 12:51:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 37BEE52243C;
 Sat, 25 May 2019 14:51:38 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id mbbF_S_xVf-j; Sat, 25 May 2019 14:51:37 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id BC98B522442;
 Sat, 25 May 2019 14:51:37 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 2A20C52243C;
 Sat, 25 May 2019 14:51:35 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v5 2/4] media: pixfmt: Add HEVC slice pixel format
Date: Sat, 25 May 2019 14:51:34 +0200
Message-ID: <9334832.WyQZ0g7QqJ@jernej-laptop>
In-Reply-To: <20190524093635.1832-3-paul.kocialkowski@bootlin.com>
References: <20190524093635.1832-1-paul.kocialkowski@bootlin.com>
 <20190524093635.1832-3-paul.kocialkowski@bootlin.com>
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
Cc: devel@driverdev.osuosl.org, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Tomasz Figa <tfiga@chromium.org>, Alexandre Courbot <acourbot@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 linux-sunxi@googlegroups.com, Boris Brezillon <boris.brezillon@collabora.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi!

Dne petek, 24. maj 2019 ob 11:36:33 CEST je Paul Kocialkowski napisal(a):
> Introduce the V4L2_PIX_FMT_HEVC_SLICE pixel format, which currently
> describes an output buffer with enough appended slice data for
> producing one decoded frame with a stateless video decoder.
> 
> This will need to be reworked (along with the controls and the core) to
> allow passing slice data individually, as it is the natural decoding
> unit in HEVC.
> 
> We also need to figure out the description of the possible source data:
> * Compressed slice data only, with slice controls attached;
> * Slice data in Annex-B format (with raw slice header), without slice
>   controls attached;
> * Slice data in Annex-B format (with raw slice header), with slice
>   controls attached.
> 
> Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> ---
>  include/media/hevc-ctrls.h | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
> index 9ea013c88afc..2de83d9f6d47 100644
> --- a/include/media/hevc-ctrls.h
> +++ b/include/media/hevc-ctrls.h
> @@ -11,6 +11,9 @@
>  #ifndef _HEVC_CTRLS_H_
>  #define _HEVC_CTRLS_H_
> 
> +/* The pixel format isn't stable at the moment and will likely be renamed.
> */ +#define V4L2_PIX_FMT_HEVC_SLICE v4l2_fourcc('S', '2', '6', '5') /* HEVC

You should add include to cover v4l2_fourcc() macro.

Best regards,
Jernej

> parsed slices */ +
>  #define V4L2_CID_MPEG_VIDEO_HEVC_SPS		(V4L2_CID_MPEG_BASE + 
1008)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_PPS		(V4L2_CID_MPEG_BASE + 
1009)
>  #define V4L2_CID_MPEG_VIDEO_HEVC_SLICE_PARAMS	(V4L2_CID_MPEG_BASE + 
1010)




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
