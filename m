Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D008303F1
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 23:15:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B43788471;
	Thu, 30 May 2019 21:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0a8UGo8rZxDu; Thu, 30 May 2019 21:15:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AAC78837C;
	Thu, 30 May 2019 21:15:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 75E6F1BF867
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 674EC203C7
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 21:15:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x0cdQ4AzODfP for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 21:15:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs52.siol.net [185.57.226.243])
 by silver.osuosl.org (Postfix) with ESMTPS id 38C46203C4
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 21:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id DEC8E52287A;
 Thu, 30 May 2019 23:15:35 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id SKLhHVptzaCe; Thu, 30 May 2019 23:15:35 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 8A25A522869;
 Thu, 30 May 2019 23:15:35 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id E82C452287A;
 Thu, 30 May 2019 23:15:32 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	maxime.ripard@bootlin.com
Subject: [PATCH 2/7] media: cedrus: Fix H264 default reference index count
Date: Thu, 30 May 2019 23:15:11 +0200
Message-Id: <20190530211516.1891-3-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, nicolas@ndufresne.ca, wens@csie.org,
 boris.brezillon@collabora.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reference index count in VE_H264_PPS reg should come from PPS control.
However, this is not really important because reference index count is
in our case always overridden by that from slice header.

Cc: nicolas@ndufresne.ca
Cc: boris.brezillon@collabora.com
Cc: jonas@kwiboo.se

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
We have to decide if we drop pps->num_ref_idx_l0_default_active_minus1
and pps->num_ref_idx_l1_default_active_minus1 fields or add
num_ref_idx_l0_active_override_flag and num_ref_idx_l0_active_override_flag
to slice control.

Current control doesn't have those two flags, so in Cedrus override flag is
always set and we rely on userspace to set slice->num_ref_idx_l0_active_minus1
and slice->num_ref_idx_l1_active_minus1 to correct values. This means that
values stored in PPS are not needed and always ignored by VPU.

If I understand correctly, algorithm is very simple:

ref_count = PPS->ref_count
if (override_flag)
	ref_count = slice->ref_count

It seems that VAAPI provides only final value. In my opinion we should do the
same - get rid of PPS default ref index count fields.

 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index a30bb283f69f..cc8d17f211a1 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -340,12 +340,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 
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
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
