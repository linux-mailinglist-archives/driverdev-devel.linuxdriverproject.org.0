Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5FBC9270
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 21:36:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA65984AE2;
	Wed,  2 Oct 2019 19:36:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Zgw9vUEzexc; Wed,  2 Oct 2019 19:36:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F898857B0;
	Wed,  2 Oct 2019 19:36:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7200D1BF969
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:36:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6F47281FCB
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OhZLp48Hp6xA for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 19:36:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs3.siol.net [185.57.226.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6B78D81DF6
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 19:36:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 7B6BF523B24;
 Wed,  2 Oct 2019 21:36:00 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 5fuv00fu8Dpe; Wed,  2 Oct 2019 21:36:00 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1AC3B523B2B;
 Wed,  2 Oct 2019 21:36:00 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 8EC87523B24;
 Wed,  2 Oct 2019 21:35:58 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH v2 0/3] media: cedrus: improvements
Date: Wed,  2 Oct 2019 21:35:50 +0200
Message-Id: <20191002193553.1633467-1-jernej.skrabec@siol.net>
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
 linux-kernel@vger.kernel.org, wens@csie.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This is continuation of https://lkml.org/lkml/2019/5/30/1459 with several
patches removed (2 merged, others needs redesign) and one added.

Patch 1 fixes h264 playback issue which happens in rare cases.

Patch 2 sets PPS default reference index count in register from PPS
control. Currently it was set to values from slice control.

Patch 3 replaces direct accesses to capture queue from m2m contex with
helpers which was designed exactly for that. It's also safer since
helpers do some checks.

Best regards,
Jernej

Jernej Skrabec (3):
  media: cedrus: Fix decoding for some H264 videos
  media: cedrus: Fix H264 default reference index count
  media: cedrus: Use helpers to access capture queue

 drivers/staging/media/sunxi/cedrus/cedrus.h   |  8 +++-
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 46 ++++++++++++++-----
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  3 ++
 3 files changed, 44 insertions(+), 13 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
