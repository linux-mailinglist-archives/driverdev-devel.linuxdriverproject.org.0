Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6240EE58FA
	for <lists+driverdev-devel@lfdr.de>; Sat, 26 Oct 2019 09:29:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3544D85C77;
	Sat, 26 Oct 2019 07:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rkA7Wk6LE1Na; Sat, 26 Oct 2019 07:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E914D869D9;
	Sat, 26 Oct 2019 07:28:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7B86D1BF94B
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 07:28:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7860D87941
 for <devel@linuxdriverproject.org>; Sat, 26 Oct 2019 07:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WQgrYaplyJ-r for <devel@linuxdriverproject.org>;
 Sat, 26 Oct 2019 07:28:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs41.siol.net [185.57.226.232])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 942CB87933
 for <devel@driverdev.osuosl.org>; Sat, 26 Oct 2019 07:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A285A523619;
 Sat, 26 Oct 2019 09:28:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id mq1P5yCeIwmJ; Sat, 26 Oct 2019 09:28:50 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 5B50952363D;
 Sat, 26 Oct 2019 09:28:50 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 111E6523619;
 Sat, 26 Oct 2019 09:28:49 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH v3 0/2] media: cedrus: improvements
Date: Sat, 26 Oct 2019 09:27:50 +0200
Message-Id: <20191026072752.1072711-1-jernej.skrabec@siol.net>
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

This is continuation of https://lkml.org/lkml/2019/5/30/1459 with several
patches removed (2 merged, others needs redesign) and one added.

Patch 1 fixes h264 playback issue which happens in rare cases.

Patch 2 replaces direct accesses to capture queue from m2m contex with
helpers which was designed exactly for that. It's also safer since
helpers do some checks.

Best regards,
Jernej

Changes from v2.
- Removed patch 2, because Paul plans to take different approach
- Rebased patch 1

Jernej Skrabec (2):
  media: cedrus: Fix decoding for some H264 videos
  media: cedrus: Use helpers to access capture queue

 drivers/staging/media/sunxi/cedrus/cedrus.h   |  8 +++-
 .../staging/media/sunxi/cedrus/cedrus_h264.c  | 38 ++++++++++++++++---
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  3 ++
 3 files changed, 42 insertions(+), 7 deletions(-)

-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
