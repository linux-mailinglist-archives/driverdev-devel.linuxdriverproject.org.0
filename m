Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0ED11E7D6
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 17:15:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6574A87381;
	Fri, 13 Dec 2019 16:15:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fdvx_a062JpR; Fri, 13 Dec 2019 16:15:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 488D08735C;
	Fri, 13 Dec 2019 16:15:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 004A31BF9C8
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 16:15:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ECACB2042A
 for <devel@linuxdriverproject.org>; Fri, 13 Dec 2019 16:15:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qne47iiFYkNk for <devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 16:15:25 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs57.siol.net [185.57.226.248])
 by silver.osuosl.org (Postfix) with ESMTPS id D6E2420424
 for <devel@driverdev.osuosl.org>; Fri, 13 Dec 2019 16:15:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id CDC705245A4;
 Fri, 13 Dec 2019 17:15:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id FVEEviERtmZv; Fri, 13 Dec 2019 17:15:22 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 7DFA75245AA;
 Fri, 13 Dec 2019 17:15:22 +0100 (CET)
Received: from localhost.localdomain (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 19BF9524592;
 Fri, 13 Dec 2019 17:15:22 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, mripard@kernel.org, paul.kocialkowski@bootlin.com,
 hverkuil@xs4all.nl
Subject: [PATCH 0/2] media: cedrus: hevc: Minor fixes
Date: Fri, 13 Dec 2019 17:15:14 +0100
Message-Id: <20191213161516.54688-1-jernej.skrabec@siol.net>
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

I noticed that some HEVC videos are not decoded correctly. It turns out
that same workaround which works for H264 also works for HEVC. Crash is
in HEVC more noticable. Any HEVC video decoding afterwards produces only
green screen.

Second patch just adds missing luma bit depth which was probably
overlooked in initial HEVC driver.

This was developed on top of:
https://patchwork.linuxtv.org/cover/60729/

Best regards,
Jernej

Jernej Skrabec (2):
  media: cedrus: Fix decoding for some HEVC videos
  media: cedrus: hevc: Add luma bit depth

 .../staging/media/sunxi/cedrus/cedrus_h265.c  | 26 ++++++++++++++++---
 .../staging/media/sunxi/cedrus/cedrus_regs.h  |  1 +
 2 files changed, 24 insertions(+), 3 deletions(-)

-- 
2.24.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
