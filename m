Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B55F205F
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 Nov 2019 22:06:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 997FE822CA;
	Wed,  6 Nov 2019 21:06:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eNH7+gXYTCTy; Wed,  6 Nov 2019 21:06:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 56E9E8A89B;
	Wed,  6 Nov 2019 21:06:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C26A1BF488
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 21:06:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1876C22DC7
 for <devel@linuxdriverproject.org>; Wed,  6 Nov 2019 21:06:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X6MBtBD9U3AQ for <devel@linuxdriverproject.org>;
 Wed,  6 Nov 2019 21:06:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs14.siol.net [185.57.226.205])
 by silver.osuosl.org (Postfix) with ESMTPS id 3587620445
 for <devel@driverdev.osuosl.org>; Wed,  6 Nov 2019 21:06:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 0611F524D2C;
 Wed,  6 Nov 2019 22:06:01 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 9kppblxXd2EZ; Wed,  6 Nov 2019 22:06:01 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 8B6D0524D2D;
 Wed,  6 Nov 2019 22:06:01 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id CEDF0524D2C;
 Wed,  6 Nov 2019 22:06:00 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org, paul.kocialkowski@bootlin.com, hverkuil-cisco@xs4all.nl
Subject: [PATCH v2 0/3] media: cedrus: Add support for 4k videos
Date: Wed,  6 Nov 2019 22:05:35 +0100
Message-Id: <20191106210538.3474-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.24.0
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
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
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

HEVC engine was also tested with 4k video.

Following video was used for H264 video testing:
http://jernej.libreelec.tv/videos/h264/PUPPIES%20BATH%20IN%204K%20(ULTRA%20HD)(Original_H.264-AAC)%20(4ksamples.com).mp4

Note that at this point memory allocation is suboptimal and H264 engine
allocates far more memory that it is really needed. For above video to
work, I had to set CMA size to 512 MiB and add "vmalloc=512M" to kernel
arguments. Memory optimizations will be done later.

Best regards,
Jernej

Changes from v1:
- added Paul's acked-by
- added define for minimum pic info buf size
- added comments that formulas come from CedarX source

Jernej Skrabec (3):
  media: cedrus: Properly signal size in mode register
  media: cedrus: Fix H264 4k support
  media: cedrus: Increase maximum supported size

 drivers/staging/media/sunxi/cedrus/cedrus.h   |  7 ++
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 93 +++++++++++++++++--
 .../staging/media/sunxi/cedrus/cedrus_h265.c  |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |  9 +-
 .../staging/media/sunxi/cedrus/cedrus_hw.h    |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_mpeg2.c |  2 +-
 .../staging/media/sunxi/cedrus/cedrus_regs.h  | 13 +++
 .../staging/media/sunxi/cedrus/cedrus_video.c |  4 +-
 8 files changed, 116 insertions(+), 16 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
