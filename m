Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A4EDD9A05A
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Aug 2019 21:45:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5935586B15;
	Thu, 22 Aug 2019 19:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v86qF40us8ZY; Thu, 22 Aug 2019 19:45:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B1E2C86B21;
	Thu, 22 Aug 2019 19:45:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEAFB1BF3B8
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 19:45:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CCCC22261A
 for <devel@linuxdriverproject.org>; Thu, 22 Aug 2019 19:45:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vfJ3Xtdo3AuK for <devel@linuxdriverproject.org>;
 Thu, 22 Aug 2019 19:45:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs4.siol.net [185.57.226.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B4799214EB
 for <devel@driverdev.osuosl.org>; Thu, 22 Aug 2019 19:45:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 6C4E05249EB;
 Thu, 22 Aug 2019 21:45:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Gezw5K_CvG4J; Thu, 22 Aug 2019 21:45:24 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1A23C52481F;
 Thu, 22 Aug 2019 21:45:24 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id A7AAC5249F7;
 Thu, 22 Aug 2019 21:45:21 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
Subject: [PATCH 6/8] media: cedrus: h264: Support multiple slices per frame
Date: Thu, 22 Aug 2019 21:44:58 +0200
Message-Id: <20190822194500.2071-7-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190822194500.2071-1-jernej.skrabec@siol.net>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net, pawel@osciak.com,
 acourbot@chromium.org, jonas@kwiboo.se, gregkh@linuxfoundation.org,
 wens@csie.org, tfiga@chromium.org, kyungmin.park@samsung.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
 ezequiel@collabora.com, linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

With recent changes, support for decoding multi-slice frames can be
easily added now.

Signal VPU if current slice is first in frame or not and add information
about first macroblock coordinates.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index d6a782703c9b..b7260cfeb6f4 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -301,6 +301,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 	dma_addr_t src_buf_addr;
 	u32 offset = slice->header_bit_size;
 	u32 len = (slice->size * 8) - offset;
+	unsigned int pic_width_in_mbs;
+	bool mbaff_pic;
 	u32 reg;
 
 	cedrus_write(dev, VE_H264_VLD_LEN, len);
@@ -370,12 +372,19 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
 		reg |= VE_H264_SPS_DIRECT_8X8_INFERENCE;
 	cedrus_write(dev, VE_H264_SPS, reg);
 
+	mbaff_pic = !(slice->flags & V4L2_H264_SLICE_FLAG_FIELD_PIC) &&
+		    (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD);
+	pic_width_in_mbs = sps->pic_width_in_mbs_minus1 + 1;
+
 	// slice parameters
 	reg = 0;
+	reg |= ((slice->first_mb_in_slice % pic_width_in_mbs) & 0xff) << 24;
+	reg |= (((slice->first_mb_in_slice / pic_width_in_mbs) * (mbaff_pic + 1)) & 0xff) << 16;
 	reg |= decode->nal_ref_idc ? BIT(12) : 0;
 	reg |= (slice->slice_type & 0xf) << 8;
 	reg |= slice->cabac_init_idc & 0x3;
-	reg |= VE_H264_SHS_FIRST_SLICE_IN_PIC;
+	if (run->first_slice)
+		reg |= VE_H264_SHS_FIRST_SLICE_IN_PIC;
 	if (slice->flags & V4L2_H264_SLICE_FLAG_FIELD_PIC)
 		reg |= VE_H264_SHS_FIELD_PIC;
 	if (slice->flags & V4L2_H264_SLICE_FLAG_BOTTOM_FIELD)
-- 
2.22.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
