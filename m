Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDC311E784
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 17:04:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C87B787330;
	Fri, 13 Dec 2019 16:04:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9ef-bvSrmL9B; Fri, 13 Dec 2019 16:04:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A60CF87320;
	Fri, 13 Dec 2019 16:04:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24CDD1BF27E
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 16:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B5EFC8897B
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 16:04:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lC38z5Tj+Kdu for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 16:04:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs36.siol.net [185.57.226.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BC73187A77
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 16:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 54CA85228AD;
 Fri, 13 Dec 2019 17:04:38 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id QYqcThSw1mTk; Fri, 13 Dec 2019 17:04:38 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 0327052454E;
 Fri, 13 Dec 2019 17:04:38 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 0DF0C5228AD;
 Fri, 13 Dec 2019 17:04:35 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, mripard@kernel.org, paul.kocialkowski@bootlin.com,
 hverkuil@xs4all.nl
Subject: [PATCH v2 0/4] media: cedrus: hevc: Add support for scaling matrix
 and multi-slice frames
Date: Fri, 13 Dec 2019 17:04:24 +0100
Message-Id: <20191213160428.54303-1-jernej.skrabec@siol.net>
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
 linux-kernel@vger.kernel.org, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently there is no control for HEVC scaling matrix and segment address
field is also missing. This series adds those and implements support for
them in Cedrus driver.

Following videos were used for testing:
- scaling matrix:
http://jernej.libreelec.tv/videos/h265/slist_test.mp4
- multi-slice:
http://jernej.libreelec.tv/videos/h265/Dredd%20%E2%80%93%20DTS%20Sound%20Check%20DTS-HD%20MA%207.1.m2ts

Best regards,
Jernej

Changes from v1:
- always set CTB_ADDR_X and CTB_ADDR_Y (patch 4)

Jernej Skrabec (4):
  media: uapi: hevc: Add scaling matrix control
  media: cedrus: hevc: Add support for scaling matrix
  media: uapi: hevc: Add segment address field
  media: cedrus: hevc: Add support for multiple slices

 .../media/uapi/v4l/ext-ctrls-codec.rst        | 46 ++++++++-
 .../media/uapi/v4l/pixfmt-compressed.rst      |  1 +
 drivers/media/v4l2-core/v4l2-ctrls.c          | 10 ++
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  7 ++
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
 .../staging/media/sunxi/cedrus/cedrus_dec.c   |  2 +
 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 96 ++++++++++++++++---
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  2 +
 .../staging/media/sunxi/cedrus/cedrus_video.c |  1 +
 include/media/hevc-ctrls.h                    | 16 +++-
 10 files changed, 169 insertions(+), 13 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
