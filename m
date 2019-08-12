Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 918BA89DC1
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Aug 2019 14:12:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5ED1485C88;
	Mon, 12 Aug 2019 12:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B-xg84W+Ec+J; Mon, 12 Aug 2019 12:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C732085C4C;
	Mon, 12 Aug 2019 12:12:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1601BF36C
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 12:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0949420404
 for <devel@linuxdriverproject.org>; Mon, 12 Aug 2019 12:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ejlZjOrJ2XgT for <devel@linuxdriverproject.org>;
 Mon, 12 Aug 2019 12:12:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net
 [194.109.24.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 623D62034C
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2019 12:12:31 +0000 (UTC)
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud7.xs4all.net with ESMTPA
 id x9BVhQe5dur8Tx9BYhiGAM; Mon, 12 Aug 2019 14:12:29 +0200
Subject: Re: [PATCH 0/7] media: cedrus: Improvements/cleanup
To: Jernej Skrabec <jernej.skrabec@siol.net>, paul.kocialkowski@bootlin.com,
 maxime.ripard@bootlin.com
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <274221f1-b2d2-83aa-d84b-e1c572a1b832@xs4all.nl>
Date: Mon, 12 Aug 2019 14:12:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190530211516.1891-1-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAFWVdV0JuxSwgL/k0OdJ/hvoW5zZZWMBGhCaQMUPuAYTfosQIyoA4MERBpQBFRKsudj+6sf32UIuymx2PzdO5yuRrH1TFwLkOyZO/Jia4K+L6oFojCb
 IIe7VxjGIqmR8mYrzfFwErnbwyITZAN0wTNOcQvAcL9vpCAMTo8SaOqdRDk+vQHW1m21nzhxt5VoS9wrv3e0yrnJvGYNzpcMZmeeomvpKU4H2DWnBVt2X6ml
 R9paVRT1QEKGDTpR8lizWT3XfkF5Isu+67yb99S1rzew7UBWHbCdFhDi7ZW5WMsFSYifZwshD2cfYiW1oNMNda2ToBW1HHkX7WSuHsPqC2Uvk0DlXaVODubC
 JzMzvRXTU6+i3qrVT7DkigTNVvKKt/vUrippGWoSGA0rOjImrWxNiWibhVpDSDWBS3vN6Q1NYRI9Lut+KrnP1jl6BjWObynPHn3xVqANmpiiiEIvgFnAea4m
 gGWSASJtf+wp6Qwd0DZNd/487v2g5kPOBY/wRxsTDYVdbVCQYg3ysW9VANo=
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
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On 5/30/19 11:15 PM, Jernej Skrabec wrote:
> Here is first batch of random Cedrus improvements/cleanups. Only patch 2
> has a change which raises a question about H264 controls.
> 
> Changes were tested on H3 SoC using modified ffmpeg and Kodi.
> 
> Please take a look.

This has been sitting in patchwork for quite some time. I've updated the
status of the various patches and most needed extra work.

It seems that patches 4/7 and 5/7 are OK. Maxime, can you please confirm
that these two are still valid? They apply cleanly on the latest master
at least, but since they are a bit old I prefer to have confirmation that
it's OK to merge them.

Regards,

	Hans

> 
> Best regards,
> Jernej
> 
> Jernej Skrabec (7):
>   media: cedrus: Disable engine after each slice decoding
>   media: cedrus: Fix H264 default reference index count
>   media: cedrus: Fix decoding for some H264 videos
>   media: cedrus: Remove dst_bufs from context
>   media: cedrus: Don't set chroma size for scale & rotation
>   media: cedrus: Add infra for extra buffers connected to capture
>     buffers
>   media: cedrus: Improve H264 memory efficiency
> 
>  drivers/staging/media/sunxi/cedrus/cedrus.h   |  12 +-
>  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 115 ++++++++----------
>  .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +-
>  .../staging/media/sunxi/cedrus/cedrus_video.c |  25 ++--
>  4 files changed, 68 insertions(+), 88 deletions(-)
> 

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
