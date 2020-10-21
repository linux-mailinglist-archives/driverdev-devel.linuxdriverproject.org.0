Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37925295376
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 22:28:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4F62786AAA;
	Wed, 21 Oct 2020 20:28:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZIsjzzJ2lGMb; Wed, 21 Oct 2020 20:28:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 314D186A34;
	Wed, 21 Oct 2020 20:28:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 440EF1BF2A0
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 20:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 40AC286A36
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 20:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A9g29VTFIgvj for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 20:28:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs2.siol.net [185.57.226.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 75CA886A34
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 20:28:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 72205527E38;
 Wed, 21 Oct 2020 22:28:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 6EpMvPOddic6; Wed, 21 Oct 2020 22:28:04 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 1F8D0527E43;
 Wed, 21 Oct 2020 22:28:04 +0200 (CEST)
Received: from kista.localdomain (cpe1-5-97.cable.triera.net [213.161.5.97])
 (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 5A2AD527E38;
 Wed, 21 Oct 2020 22:28:03 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH] media: cedrus: h264: Fix check for presence of scaling matrix
Date: Wed, 21 Oct 2020 22:33:25 +0200
Message-Id: <20201021203325.543189-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.29.0
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

If scaling matrix control is present, VPU should not use default matrix.
Fix that.

Fixes: b3a23db0e2f8 ("media: cedrus: Use H264_SCALING_MATRIX only when required")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index 28319351e909..781c84a9b1b7 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -446,7 +446,7 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 	reg |= (pps->second_chroma_qp_index_offset & 0x3f) << 16;
 	reg |= (pps->chroma_qp_index_offset & 0x3f) << 8;
 	reg |= (pps->pic_init_qp_minus26 + 26 + slice->slice_qp_delta) & 0x3f;
-	if (pps->flags & V4L2_H264_PPS_FLAG_SCALING_MATRIX_PRESENT)
+	if (!(pps->flags & V4L2_H264_PPS_FLAG_SCALING_MATRIX_PRESENT))
 		reg |= VE_H264_SHS_QP_SCALING_MATRIX_DEFAULT;
 	cedrus_write(dev, VE_H264_SHS_QP, reg);
 
-- 
2.29.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
