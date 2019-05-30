Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BF4303EE
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6187586A92;
	Thu, 30 May 2019 21:15:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id voBSbaPVpiH6; Thu, 30 May 2019 21:15:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6BA886A6C;
	Thu, 30 May 2019 21:15:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5F7B01BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5398987767
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EaU-H9t+Ns1P for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:15:33 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs30.siol.net [185.57.226.221])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 669C986E49
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:15:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 77B93522867;
 Thu, 30 May 2019 23:15:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Q4d6PDinGsox; Thu, 30 May 2019 23:15:30 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 23ACA522869;
 Thu, 30 May 2019 23:15:30 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 41B70522867;
 Thu, 30 May 2019 23:15:28 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 0/7] media: cedrus: Improvements/cleanup
Date: Thu, 30 May 2019 23:15:09 +0200
Message-Id: <20190530211516.1891-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
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
 linux-kernel@vger.kernel.org, wens@csie.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Here is first batch of random Cedrus improvements/cleanups. Only patch 2
has a change which raises a question about H264 controls.

Changes were tested on H3 SoC using modified ffmpeg and Kodi.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (7):
  media: cedrus: Disable engine after each slice decoding
  media: cedrus: Fix H264 default reference index count
  media: cedrus: Fix decoding for some H264 videos
  media: cedrus: Remove dst_bufs from context
  media: cedrus: Don't set chroma size for scale & rotation
  media: cedrus: Add infra for extra buffers connected to capture
    buffers
  media: cedrus: Improve H264 memory efficiency

 drivers/staging/media/sunxi/cedrus/cedrus.h   |  12 +-
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 115 ++++++++----------
 .../staging/media/sunxi/cedrus/cedrus_hw.c    |   4 +-
 .../staging/media/sunxi/cedrus/cedrus_video.c |  25 ++--
 4 files changed, 68 insertions(+), 88 deletions(-)

-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
