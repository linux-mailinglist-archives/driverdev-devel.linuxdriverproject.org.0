Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD90E5912
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 09:50:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8DA7C204D6;
	Sat, 26 Oct 2019 07:50:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rOS+u6gOgYJF; Sat, 26 Oct 2019 07:50:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C3BB320412;
	Sat, 26 Oct 2019 07:50:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B75F91BF94B
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 07:50:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B0DE787BF5
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 07:50:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nm1wSoMfyhjf for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 07:50:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs27.siol.net [185.57.226.218])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7CCFA879FD
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 07:50:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3165A521C51;
 Sat, 26 Oct 2019 09:50:17 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id GGY99NcpPuBy; Sat, 26 Oct 2019 09:50:16 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id D4D8D521CAF;
 Sat, 26 Oct 2019 09:50:16 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 6928B521C52;
 Sat, 26 Oct 2019 09:50:16 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 0/3] media: cedrus: Add support for 4k videos
Date: Sat, 26 Oct 2019 09:49:56 +0200
Message-Id: <20191026074959.1073512-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

While cedrus driver accepts videos up to 3840x2160, they are not decoded
correctly. Driver doesn't correctly set mode register for widths greater
than 2048 (patch 1). H264 engine also needs additional buffers which are
not provided currently (patch 2). Finally, there are several different
resolutions which can be considered 4k. Biggest is 4096x2304 which is
also supported by HW. Set that new maximum size (patch 3).

HEVC engine was not yet tested with 4k video, but as far as I know, it
doesn't need any special setting besides patch 1.

Following video was used for H264 video testing:
http://jernej.libreelec.tv/videos/h264/PUPPIES%20BATH%20IN%204K%20(ULTRA%20HD)(Original_H.264-AAC)%20(4ksamples.com).mp4

Note that at this point memory allocation is suboptimal and H264 engine
allocates far more memory that it is really needed. For above video to
work, I had to set CMA size to 512 MiB and add "vmalloc=512M" to kernel
arguments. Memory optimizations will be done later.

This series is based on top of https://patchwork.linuxtv.org/cover/59653/

Best regards,
Jernej

Jernej Skrabec (3):
  media: cedrus: Properly signal size in mode register
  media: cedrus: Fix H264 4k support
  media: cedrus: Increase maximum supported size

 drivers/staging/media/sunxi/cedrus/cedrus.h   |  7 ++
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 85 +++++++++++++++++--
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |  9 +-
 .../staging/media/sunxi/cedrus/cedrus_hw.h    |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_mpeg2.c |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_regs.h  | 13 +++
 .../staging/media/sunxi/cedrus/cedrus_video.c |  4 +-
 8 files changed, 108 insertions(+), 16 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
