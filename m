Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7132E1B5A
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Dec 2020 12:07:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C963185E2B;
	Wed, 23 Dec 2020 11:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a3NH8mmlLd5o; Wed, 23 Dec 2020 11:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9DFC385E07;
	Wed, 23 Dec 2020 11:07:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE7461BF339
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 11:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B9F0B867FB
 for <devel@linuxdriverproject.org>; Wed, 23 Dec 2020 11:07:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9KjUtArsjzjA for <devel@linuxdriverproject.org>;
 Wed, 23 Dec 2020 11:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs16.siol.net [185.57.226.207])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0D093867D3
 for <devel@driverdev.osuosl.org>; Wed, 23 Dec 2020 11:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 2599A5223E4;
 Wed, 23 Dec 2020 12:07:14 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id gHen5p7CaN0H; Wed, 23 Dec 2020 12:07:13 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id CE31452248C;
 Wed, 23 Dec 2020 12:07:13 +0100 (CET)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 7D6145224CF;
 Wed, 23 Dec 2020 12:07:11 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 2/2] media: cedrus: Fix H264 decoding
Date: Wed, 23 Dec 2020 12:06:59 +0100
Message-Id: <20201223110659.2631255-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201223110659.2631255-1-jernej.skrabec@siol.net>
References: <20201223110659.2631255-1-jernej.skrabec@siol.net>
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
Cc: devel@driverdev.osuosl.org, jernej.skrabec@siol.net,
 nicolas.dufresne@collabora.com, gregkh@linuxfoundation.org,
 linux-sunxi@googlegroups.com, Andre Heider <a.heider@gmail.com>,
 linux-kernel@vger.kernel.org, wens@csie.org, hans.verkuil@cisco.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

During H264 API overhaul subtle bug was introduced Cedrus driver.
Progressive references have both, top and bottom reference flags set.
Cedrus reference list expects only bottom reference flag and only when
interlaced frames are decoded. However, due to a bug in Cedrus check,
exclusivity is not tested and that flag is set also for progressive
references. That causes "jumpy" background with many videos.

Fix that by checking that only bottom reference flag is set in control
and nothing else.

Tested-by: Andre Heider <a.heider@gmail.com>
Fixes: cfc8c3ed533e ("media: cedrus: h264: Properly configure reference field")
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_h264.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
index 781c84a9b1b7..de7442d4834d 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
@@ -203,7 +203,7 @@ static void _cedrus_write_ref_list(struct cedrus_ctx *ctx,
 		position = cedrus_buf->codec.h264.position;
 
 		sram_array[i] |= position << 1;
-		if (ref_list[i].fields & V4L2_H264_BOTTOM_FIELD_REF)
+		if (ref_list[i].fields == V4L2_H264_BOTTOM_FIELD_REF)
 			sram_array[i] |= BIT(0);
 	}
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
