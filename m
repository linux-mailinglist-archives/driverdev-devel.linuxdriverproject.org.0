Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68DB9C2976
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Oct 2019 00:27:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0F738868E4;
	Mon, 30 Sep 2019 22:27:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eKvw1t8tnv7C; Mon, 30 Sep 2019 22:27:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D88486931;
	Mon, 30 Sep 2019 22:27:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 902311BF2B9
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 22:27:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8D0BF85965
 for <devel@linuxdriverproject.org>; Mon, 30 Sep 2019 22:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9irQ9AGt8GIj for <devel@linuxdriverproject.org>;
 Mon, 30 Sep 2019 22:27:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs18.siol.net [185.57.226.209])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5B89C87B45
 for <devel@driverdev.osuosl.org>; Mon, 30 Sep 2019 22:27:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 4E1E9521949;
 Tue,  1 Oct 2019 00:27:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ptcGB7QC91-1; Tue,  1 Oct 2019 00:27:34 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id A502F522D91;
 Tue,  1 Oct 2019 00:27:34 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 19572521949;
 Tue,  1 Oct 2019 00:27:33 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
Date: Tue, 01 Oct 2019 00:27:32 +0200
Message-ID: <4342181.Ehiz7mZe5m@jernej-laptop>
In-Reply-To: <9ec1c07e-b0e8-f50c-7f46-df7ca303a5bc@xs4all.nl>
References: <20190929200023.215831-1-jernej.skrabec@siol.net>
 <9ec1c07e-b0e8-f50c-7f46-df7ca303a5bc@xs4all.nl>
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
Cc: devel@driverdev.osuosl.org, linux-media@vger.kernel.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 boris.brezillon@collabora.com, linux-arm-kernel@lists.infradead.org,
 mchehab@kernel.org, ezequiel@collabora.com, linux-kernel@vger.kernel.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dne ponedeljek, 30. september 2019 ob 10:10:48 CEST je Hans Verkuil 
napisal(a):
> On 9/29/19 10:00 PM, Jernej Skrabec wrote:
> > This series adds support for decoding multi-slice H264 frames along with
> > support for V4L2_DEC_CMD_FLUSH and V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF.
> > 
> > Code was tested by modified ffmpeg, which can be found here:
> > https://github.com/jernejsk/FFmpeg, branch mainline-test
> > It has to be configured with at least following options:
> > --enable-v4l2-request --enable-libudev --enable-libdrm
> > 
> > Samples used for testing:
> > http://jernej.libreelec.tv/videos/h264/BA1_FT_C.mp4
> > http://jernej.libreelec.tv/videos/h264/h264.mp4
> > 
> > Command line used for testing:
> > ffmpeg -hwaccel drm -hwaccel_device /dev/dri/card0 -i h264.mp4 -pix_fmt
> > bgra -f fbdev /dev/fb0
> > 
> > Please note that V4L2_DEC_CMD_FLUSH was not tested because I'm
> > not sure how. ffmpeg follows exactly which slice is last in frame
> > and sets hold flag accordingly. Improper usage of hold flag would
> > corrupt ffmpeg assumptions and it would probably crash. Any ideas
> > how to test this are welcome!
> 
> It can be tested partially at least: if ffmpeg tells you it is the last
> slice, then queue the slice with the HOLD flag set, then call FLUSH
> afterwards. This should clear the HOLD flag again. In this case the queued
> buffer is probably not yet processed, so the flag is cleared before the
> decode job starts.
> 
> You can also try to add a sleep before calling FLUSH to see what happens
> if the last queued buffer is already decoded.

Ok, I tried following code:
https://github.com/jernejsk/FFmpeg/blob/flush_test/libavcodec/
v4l2_request.c#L220-L233

But results are not good. It seems that out_vb in flush command is always NULL 
and so it always marks capture buffer as done, which leads to kernel warnings.

dmesg output with debugging messages is here: http://ix.io/1Ks8

Currently I'm not sure what is going on. Shouldn't be output buffer queued and 
waiting to MEDIA_REQUEST_IOC_QUEUE which is executed after flush command as it 
can be seen from ffmpeg code linked above?

Best regards,
Jernej

> 
> Regards,
> 
> 	Hans
> 
> > Thanks to Jonas for adjusting ffmpeg.
> > 
> > Please let me know what you think.
> > 
> > Best regards,
> > Jernej
> > 
> > Changes from v1:
> > - added Rb tags
> > - updated V4L2_DEC_CMD_FLUSH documentation
> > - updated first slice detection in Cedrus
> > - hold capture buffer flag is set according to source format
> > - added v4l m2m stateless_(try_)decoder_cmd ioctl helpers
> > 
> > Hans Verkuil (2):
> >   vb2: add V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF
> >   videodev2.h: add V4L2_DEC_CMD_FLUSH
> > 
> > Jernej Skrabec (4):
> >   media: v4l2-mem2mem: add stateless_(try_)decoder_cmd ioctl helpers
> >   media: cedrus: Detect first slice of a frame
> >   media: cedrus: h264: Support multiple slices per frame
> >   media: cedrus: Add support for holding capture buffer
> >  
> >  Documentation/media/uapi/v4l/buffer.rst       | 13 ++++++
> >  .../media/uapi/v4l/vidioc-decoder-cmd.rst     | 10 +++-
> >  .../media/uapi/v4l/vidioc-reqbufs.rst         |  6 +++
> >  .../media/videodev2.h.rst.exceptions          |  1 +
> >  .../media/common/videobuf2/videobuf2-v4l2.c   |  8 +++-
> >  drivers/media/v4l2-core/v4l2-mem2mem.c        | 35 ++++++++++++++
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
> >  .../staging/media/sunxi/cedrus/cedrus_dec.c   | 11 +++++
> >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 11 ++++-
> >  .../staging/media/sunxi/cedrus/cedrus_hw.c    |  8 ++--
> >  .../staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++
> >  include/media/v4l2-mem2mem.h                  | 46 +++++++++++++++++++
> >  include/media/videobuf2-core.h                |  3 ++
> >  include/media/videobuf2-v4l2.h                |  5 ++
> >  include/uapi/linux/videodev2.h                | 14 ++++--
> >  15 files changed, 175 insertions(+), 11 deletions(-)




_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
