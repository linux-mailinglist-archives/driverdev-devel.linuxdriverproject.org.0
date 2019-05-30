Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97178303F3
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:15:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id BD8FD88494;
	Thu, 30 May 2019 21:15:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HCgBOL-dNxuo; Thu, 30 May 2019 21:15:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 583D388299;
	Thu, 30 May 2019 21:15:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B6DF1BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E1EA86A9D
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6-x3Kk5U1qj6 for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:15:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs31.siol.net [185.57.226.222])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8A26486A70
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:15:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id B1A70522869;
 Thu, 30 May 2019 23:15:42 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 41SBzfmFGsOm; Thu, 30 May 2019 23:15:42 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 77ED052286B;
 Thu, 30 May 2019 23:15:42 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 32AB6522869;
 Thu, 30 May 2019 23:15:40 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 5/7] media: cedrus: Don't set chroma size for scale & rotation
Date: Thu, 30 May 2019 23:15:14 +0200
Message-Id: <20190530211516.1891-6-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190530211516.1891-1-jernej.skrabec@siol.net>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
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

Scale and rotation are currently not implemented, so it makes no sense to
set chroma size for it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index 9c5819def186..9de20ae47916 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -79,9 +79,6 @@ void cedrus_dst_format_set(struct cedrus_dev *dev,
 		reg = VE_PRIMARY_OUT_FMT_NV12;
 		cedrus_write(dev, VE_PRIMARY_OUT_FMT, reg);
 
-		reg = VE_CHROMA_BUF_LEN_SDRT(chroma_size / 2);
-		cedrus_write(dev, VE_CHROMA_BUF_LEN, reg);
-
 		reg = chroma_size / 2;
 		cedrus_write(dev, VE_PRIMARY_CHROMA_BUF_LEN, reg);
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
