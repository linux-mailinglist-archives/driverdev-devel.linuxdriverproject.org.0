Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C2F1EEAA5
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 20:55:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B092124F56;
	Thu,  4 Jun 2020 18:55:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a3BXamZ9l3pl; Thu,  4 Jun 2020 18:55:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3BAD4203F9;
	Thu,  4 Jun 2020 18:55:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3D3C21BF3BA
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 18:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3466824CEB
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 18:55:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wf-LNQKDRb2n for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 18:55:22 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs57.siol.net [185.57.226.248])
 by silver.osuosl.org (Postfix) with ESMTPS id 4D86E203F9
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 18:55:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 77EC0521370;
 Thu,  4 Jun 2020 20:55:20 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 22HNnnPf64Hw; Thu,  4 Jun 2020 20:55:20 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 2AD98521295;
 Thu,  4 Jun 2020 20:55:20 +0200 (CEST)
Received: from kista.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id D2A915211F9;
 Thu,  4 Jun 2020 20:55:17 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: paul.kocialkowski@bootlin.com,
	mripard@kernel.org
Subject: [PATCH 3/3] media: cedrus: h264: Fix frame list construction
Date: Thu,  4 Jun 2020 20:57:45 +0200
Message-Id: <20200604185745.23568-4-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200604185745.23568-1-jernej.skrabec@siol.net>
References: <20200604185745.23568-1-jernej.skrabec@siol.net>
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
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Current frame list construction algorithm assumes that decoded image
will be output into its own buffer. That is true for progressive content
but not for interlaced where each field is decoded separately into same
buffer.

Fix that by checking if capture buffer is listed in DPB. If it is, reuse
it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index c87717d17ec5..4f79386315ae 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -102,7 +102,7 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 	struct cedrus_dev *dev = ctx->dev;
 	unsigned long used_dpbs = 0;
 	unsigned int position;
-	unsigned int output = 0;
+	int output = -1;
 	unsigned int i;
 
 	cap_q = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, V4L2_BUF_TYPE_VIDEO_CAPTURE);
@@ -125,6 +125,11 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 		position = cedrus_buf->codec.h264.position;
 		used_dpbs |= BIT(position);
 
+		if (run->dst->vb2_buf.timestamp == dpb->reference_ts) {
+			output = position;
+			continue;
+		}
+
 		if (!(dpb->flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE))
 			continue;
 
@@ -132,13 +137,11 @@ static void cedrus_write_frame_list(struct cedrus_ctx *ctx,
 				    dpb->top_field_order_cnt,
 				    dpb->bottom_field_order_cnt,
 				    &pic_list[position]);
-
-		output = max(position, output);
 	}
 
-	position = find_next_zero_bit(&used_dpbs, CEDRUS_H264_FRAME_NUM,
-				      output);
-	if (position >= CEDRUS_H264_FRAME_NUM)
+	if (output >= 0)
+		position = output;
+	else
 		position = find_first_zero_bit(&used_dpbs, CEDRUS_H264_FRAME_NUM);
 
 	output_buf = vb2_to_cedrus_buffer(&run->dst->vb2_buf);
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
