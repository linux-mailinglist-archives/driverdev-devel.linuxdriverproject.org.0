Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E118F373B89
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 May 2021 14:38:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 14EF683E16;
	Wed,  5 May 2021 12:38:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n9FuNJxmDRKx; Wed,  5 May 2021 12:38:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E60283DE6;
	Wed,  5 May 2021 12:38:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 798F91BF852
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 12:38:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 68ACE83DE6
 for <devel@linuxdriverproject.org>; Wed,  5 May 2021 12:38:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3MaMl-WmFW0 for <devel@linuxdriverproject.org>;
 Wed,  5 May 2021 12:38:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 305F882D49
 for <devel@driverdev.osuosl.org>; Wed,  5 May 2021 12:38:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id 37BDA1F42E68
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org
Subject: [RFCv2 0/3] vp9 v4l2 stateless uapi
Date: Wed,  5 May 2021 14:38:33 +0200
Message-Id: <20210505123836.9573-1-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
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
Cc: devel@driverdev.osuosl.org, kernel@collabora.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip@lists.infradead.org, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Dear All,

This is a follow-up work for https://patchwork.linuxtv.org/project/linux-media/list/?series=5268
I addressed Hans's comments.

Changes:

v1..v2:
- improve documentation
- imrpove coding style
- factor out of common vp9 code into v4l2-vp9.c
- rename V4L2_CID_STATELESS_VP9_FRAME_DECODE_PARAMS into V4L2_CID_STATELESS_VP9_FRAME

This is still sent as an RFC because the works for adding the second driver (g2@imx8)
are ongoing.

The v1 was an RFC on stateless uapi for vp9 decoding with v4l2, which was based on
https://lkml.org/lkml/2020/11/2/1043, but had been substantially reworked. The important
change was that the v4l2 control used to pass boolean decoder probabilities had been made
unidirectional, and was renamed V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS.

In the original proposal from Boris, to queue a frame the userspace must fully dequeue
the previous one, which effectively results in a forced lockstep behavior and defeats
vb2's capability to enqueue multiple buffers. Such a design was a consequence of backward
probability updates being performed by the kernel driver (which has direct access to
appropriate counter values) but forward probability updates being coupled with compressed
header parsing performed by the userspace.

In vp9 the boolean decoder used to decode the bitstream needs certain parameters to work.
Those are probabilities, which change with each frame. After each frame is decoded it is
known how many times a given symbol occured in the frame, so the probabilities can be adapted.
This process is known as backward probabilities update. A next frame header can also contain
information which modifies probabilities resulting from backward update. The said modification
is called forward probabilities update. The data for backward update is generated by the decoder
hardware, while the data for forward update is prepared by reading the compressed frame header.
The natural place to parse something is userspace, while the natural place to access
hardware-provided counters is the kernel. Such responsibilties assignment was used in the
original work.

To overcome the lockstep, we moved forward probability updates to the kernel, while leaving
parsing them in userspace. This way the v4l2 control which is used to pass the probs becomes
unidirectional (user->kernel) and the userspace can keep parsing and enqueueing succeeding
frames.

If a particular driver parses the compressed header and does backward probability updates
on its own then V4L2_CID_STATELESS_VP9_COMPRESSED_HDR_PROBS does not need to be used.

This series adds vp9 uapi in proper locations, which means it is a proper, "official" uapi,
as opposed to staging uapi which was proposed in the above mentioned lkml thread.

The series adds vp9 support to rkvdec driver.

Rebased onto media_tree, requires this patch:

https://patchwork.linuxtv.org/project/linux-media/patch/20210505122347.7576-2-andrzej.p@collabora.com/

You can test rkvdec implementation with gstreamer, please clone gstreamer and then
use these branches for -base and -bad:

https://gitlab.freedesktop.org/dwlsalmeida/gst-plugins-base/-/tree/vp9-upstream-padding
https://gitlab.freedesktop.org/dwlsalmeida/gst-plugins-bad/-/tree/vp9-upstream

Example invocation:

without format conversion:

gst-launch-1.0 filesrc location=Big_Buck_Bunny_1080_10s_1MB.webm ! parsebin ! v4l2slvp9dec ! filesink location=out.yuv

with format conversion to match vpxdec output:

gst-launch-1.0 filesrc location=Big_Buck_Bunny_1080_10s_1MB.webm ! parsebin ! v4l2slvp9dec ! videoconvert ! video/x-raw,format=I420 ! filesink location=out.yuv

I kindly ask for your comments.

Andrzej Pietrasiewicz (2):
  media: uapi: Add VP9 stateless decoder controls
  media: uapi: Add VP9 v4l2 library

Boris Brezillon (1):
  media: rkvdec: Add the VP9 backend

 .../userspace-api/media/v4l/biblio.rst        |   10 +
 .../media/v4l/ext-ctrls-codec-stateless.rst   |  547 +++++
 .../media/v4l/pixfmt-compressed.rst           |   15 +
 .../media/v4l/vidioc-g-ext-ctrls.rst          |    8 +
 .../media/v4l/vidioc-queryctrl.rst            |   12 +
 .../media/videodev2.h.rst.exceptions          |    2 +
 drivers/media/v4l2-core/Kconfig               |    4 +
 drivers/media/v4l2-core/Makefile              |    1 +
 drivers/media/v4l2-core/v4l2-ctrls.c          |  229 +++
 drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
 drivers/media/v4l2-core/v4l2-vp9.c            | 1831 +++++++++++++++++
 drivers/staging/media/rkvdec/Kconfig          |    1 +
 drivers/staging/media/rkvdec/Makefile         |    2 +-
 drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1084 ++++++++++
 drivers/staging/media/rkvdec/rkvdec.c         |   52 +-
 drivers/staging/media/rkvdec/rkvdec.h         |    6 +
 include/media/v4l2-ctrls.h                    |    4 +
 include/media/v4l2-vp9.h                      |  168 ++
 include/uapi/linux/v4l2-controls.h            |  425 ++++
 include/uapi/linux/videodev2.h                |    6 +
 20 files changed, 4403 insertions(+), 5 deletions(-)
 create mode 100644 drivers/media/v4l2-core/v4l2-vp9.c
 create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
 create mode 100644 include/media/v4l2-vp9.h


base-commit: 0b276e470a4d43e1365d3eb53c608a3d208cabd4
prerequisite-patch-id: d148a5f17bbb03e88c3744a166d1dd2c6088ce7d
prerequisite-patch-id: 1817161060ef577cff00a8f7892eb9cbbfa2f327
prerequisite-patch-id: 5d4236886083146c81f4234d5f97acf6fd6dd4e4
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
