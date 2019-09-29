Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 501ABC1941
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Sep 2019 22:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A8B9D85C9A;
	Sun, 29 Sep 2019 20:01:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4SYXzdrTRYJB; Sun, 29 Sep 2019 20:01:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 783B986005;
	Sun, 29 Sep 2019 20:00:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C09D1BF389
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 20:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 973DE20467
 for <devel@linuxdriverproject.org>; Sun, 29 Sep 2019 20:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yWI70qS0DyKH for <devel@linuxdriverproject.org>;
 Sun, 29 Sep 2019 20:00:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs57.siol.net [185.57.226.248])
 by silver.osuosl.org (Postfix) with ESMTPS id AE30E203BA
 for <devel@driverdev.osuosl.org>; Sun, 29 Sep 2019 20:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 866535223B9;
 Sun, 29 Sep 2019 22:00:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Fd2JwI3Pambk; Sun, 29 Sep 2019 22:00:52 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id F375F522639;
 Sun, 29 Sep 2019 22:00:51 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id A3F3E5225ED;
 Sun, 29 Sep 2019 22:00:50 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org, pawel@osciak.com,
 m.szyprowski@samsung.com, kyungmin.park@samsung.com, tfiga@chromium.org,
 wens@csie.org
Subject: [PATCH v2 0/6] media: cedrus: h264: Support multi-slice frames
Date: Sun, 29 Sep 2019 22:00:17 +0200
Message-Id: <20190929200023.215831-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, jonas@kwiboo.se,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 boris.brezillon@collabora.com, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series adds support for decoding multi-slice H264 frames along with
support for V4L2_DEC_CMD_FLUSH and V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF.

Code was tested by modified ffmpeg, which can be found here:
https://github.com/jernejsk/FFmpeg, branch mainline-test
It has to be configured with at least following options:
--enable-v4l2-request --enable-libudev --enable-libdrm

Samples used for testing:
http://jernej.libreelec.tv/videos/h264/BA1_FT_C.mp4
http://jernej.libreelec.tv/videos/h264/h264.mp4

Command line used for testing:
ffmpeg -hwaccel drm -hwaccel_device /dev/dri/card0 -i h264.mp4 -pix_fmt bgra -f fbdev /dev/fb0

Please note that V4L2_DEC_CMD_FLUSH was not tested because I'm
not sure how. ffmpeg follows exactly which slice is last in frame
and sets hold flag accordingly. Improper usage of hold flag would
corrupt ffmpeg assumptions and it would probably crash. Any ideas
how to test this are welcome!

Thanks to Jonas for adjusting ffmpeg.

Please let me know what you think.

Best regards,
Jernej

Changes from v1:
- added Rb tags
- updated V4L2_DEC_CMD_FLUSH documentation
- updated first slice detection in Cedrus
- hold capture buffer flag is set according to source format
- added v4l m2m stateless_(try_)decoder_cmd ioctl helpers

Hans Verkuil (2):
  vb2: add V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF
  videodev2.h: add V4L2_DEC_CMD_FLUSH

Jernej Skrabec (4):
  media: v4l2-mem2mem: add stateless_(try_)decoder_cmd ioctl helpers
  media: cedrus: Detect first slice of a frame
  media: cedrus: h264: Support multiple slices per frame
  media: cedrus: Add support for holding capture buffer

 Documentation/media/uapi/v4l/buffer.rst       | 13 ++++++
 .../media/uapi/v4l/vidioc-decoder-cmd.rst     | 10 +++-
 .../media/uapi/v4l/vidioc-reqbufs.rst         |  6 +++
 .../media/videodev2.h.rst.exceptions          |  1 +
 .../media/common/videobuf2/videobuf2-v4l2.c   |  8 +++-
 drivers/media/v4l2-core/v4l2-mem2mem.c        | 35 ++++++++++++++
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   | 11 +++++
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 11 ++++-
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |  8 ++--
 .../staging/media/sunxi/cedrus/cedrus_video.c | 14 ++++++
 include/media/v4l2-mem2mem.h                  | 46 +++++++++++++++++++
 include/media/videobuf2-core.h                |  3 ++
 include/media/videobuf2-v4l2.h                |  5 ++
 include/uapi/linux/videodev2.h                | 14 ++++--
 15 files changed, 175 insertions(+), 11 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
