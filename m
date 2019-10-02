Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD0AC9272
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Oct 2019 21:36:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A6ED587618;
	Wed,  2 Oct 2019 19:36:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QHUGuhXRi6XI; Wed,  2 Oct 2019 19:36:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 116AB87631;
	Wed,  2 Oct 2019 19:36:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DA1231BF96B
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D409481E74
 for <devel@linuxdriverproject.org>; Wed,  2 Oct 2019 19:36:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZLHAQbLM6pE2 for <devel@linuxdriverproject.org>;
 Wed,  2 Oct 2019 19:36:07 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs9.siol.net [185.57.226.200])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8E0148533D
 for <devel@driverdev.osuosl.org>; Wed,  2 Oct 2019 19:36:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 7CA91523B37;
 Wed,  2 Oct 2019 21:36:05 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id WgF6VE6rEv7V; Wed,  2 Oct 2019 21:36:05 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 37B9F523B2B;
 Wed,  2 Oct 2019 21:36:05 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id D00F3523B68;
 Wed,  2 Oct 2019 21:36:02 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH v2 2/3] media: cedrus: Fix H264 default reference index count
Date: Wed,  2 Oct 2019 21:35:52 +0200
Message-Id: <20191002193553.1633467-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002193553.1633467-1-jernej.skrabec@siol.net>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
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

Reference index count in VE_H264_PPS should come from PPS control.
However, this is not really important, because reference index count is
in our case always overridden by that from slice header.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index bd848146eada..4a0e69855c7f 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -364,12 +364,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 
 	// picture parameters
 	reg = 0;
-	/*
-	 * FIXME: the kernel headers are allowing the default value to
-	 * be passed, but the libva doesn't give us that.
-	 */
-	reg |= (slice->num_ref_idx_l0_active_minus1 & 0x1f) << 10;
-	reg |= (slice->num_ref_idx_l1_active_minus1 & 0x1f) << 5;
+	reg |= (pps->num_ref_idx_l0_default_active_minus1 & 0x1f) << 10;
+	reg |= (pps->num_ref_idx_l1_default_active_minus1 & 0x1f) << 5;
 	reg |= (pps->weighted_bipred_idc & 0x3) << 2;
 	if (pps->flags & V4L2_H264_PPS_FLAG_ENTROPY_CODING_MODE)
 		reg |= VE_H264_PPS_ENTROPY_CODING_MODE;
-- 
2.23.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
