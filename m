Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E472CC3EE
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Dec 2020 18:38:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3712F87269;
	Wed,  2 Dec 2020 17:38:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lyJb0zxXVIFX; Wed,  2 Dec 2020 17:38:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F28D087270;
	Wed,  2 Dec 2020 17:38:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B90B61BF3BE
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:38:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B5E3B8724A
 for <devel@linuxdriverproject.org>; Wed,  2 Dec 2020 17:38:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WQz7R5mvn_6g for <devel@linuxdriverproject.org>;
 Wed,  2 Dec 2020 17:38:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs49.siol.net [185.57.226.240])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C317C87247
 for <devel@driverdev.osuosl.org>; Wed,  2 Dec 2020 17:38:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id E2BA4520BC0;
 Wed,  2 Dec 2020 18:38:06 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 9W8g8N5VEJ-i; Wed,  2 Dec 2020 18:38:06 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 6609D5208E4;
 Wed,  2 Dec 2020 18:38:06 +0100 (CET)
Received: from kista.localdomain (cpe1-5-97.cable.triera.net [213.161.5.97])
 (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id D8F2C520BC0;
 Wed,  2 Dec 2020 18:38:05 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	hverkuil@xs4all.nl
Subject: [PATCH] media: cedrus: Make VP8 codec as capability
Date: Wed,  2 Dec 2020 18:44:13 +0100
Message-Id: <20201202174413.303658-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.29.2
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
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Commit 31d9b9ef8564 ("media: cedrus: Register all codecs as capability")
makes separate capability flags for each codec. However, VP8 codec was
merged at the same time as mentioned patch, so there is no capability
flag for it.

This patch adds capability flag for VP8 and enables it for all variants
except for V3s.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
Note: this should be merged after both of these PRs:
https://patchwork.linuxtv.org/project/linux-media/patch/8cf5021f-559c-5ea8-f1f0-250c00bc119d@xs4all.nl/
https://patchwork.linuxtv.org/project/linux-media/patch/5dbd468d-1d10-e0c8-43f0-ebe8f17abef8@xs4all.nl/

 drivers/staging/media/sunxi/cedrus/cedrus.c   | 27 ++++++++++++-------
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  1 +
 .../staging/media/sunxi/cedrus/cedrus_video.c |  1 +
 3 files changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index dce7cbc95872..c0f226d75feb 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -495,26 +495,30 @@ static int cedrus_remove(struct platform_device *pdev)
 
 static const struct cedrus_variant sun4i_a10_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_MPEG2_DEC |
-			  CEDRUS_CAPABILITY_H264_DEC,
+			  CEDRUS_CAPABILITY_H264_DEC |
+			  CEDRUS_CAPABILITY_VP8_DEC,
 	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun5i_a13_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_MPEG2_DEC |
-			  CEDRUS_CAPABILITY_H264_DEC,
+			  CEDRUS_CAPABILITY_H264_DEC |
+			  CEDRUS_CAPABILITY_VP8_DEC,
 	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun7i_a20_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_MPEG2_DEC |
-			  CEDRUS_CAPABILITY_H264_DEC,
+			  CEDRUS_CAPABILITY_H264_DEC |
+			  CEDRUS_CAPABILITY_VP8_DEC,
 	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun8i_a33_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
 			  CEDRUS_CAPABILITY_MPEG2_DEC |
-			  CEDRUS_CAPABILITY_H264_DEC,
+			  CEDRUS_CAPABILITY_H264_DEC |
+			  CEDRUS_CAPABILITY_VP8_DEC,
 	.mod_rate	= 320000000,
 };
 
@@ -522,7 +526,8 @@ static const struct cedrus_variant sun8i_h3_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
 			  CEDRUS_CAPABILITY_MPEG2_DEC |
 			  CEDRUS_CAPABILITY_H264_DEC |
-			  CEDRUS_CAPABILITY_H265_DEC,
+			  CEDRUS_CAPABILITY_H265_DEC |
+			  CEDRUS_CAPABILITY_VP8_DEC,
 	.mod_rate	= 402000000,
 };
 
@@ -535,7 +540,8 @@ static const struct cedrus_variant sun8i_v3s_cedrus_variant = {
 static const struct cedrus_variant sun8i_r40_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
 			  CEDRUS_CAPABILITY_MPEG2_DEC |
-			  CEDRUS_CAPABILITY_H264_DEC,
+			  CEDRUS_CAPABILITY_H264_DEC |
+			  CEDRUS_CAPABILITY_VP8_DEC,
 	.mod_rate	= 297000000,
 };
 
@@ -543,7 +549,8 @@ static const struct cedrus_variant sun50i_a64_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
 			  CEDRUS_CAPABILITY_MPEG2_DEC |
 			  CEDRUS_CAPABILITY_H264_DEC |
-			  CEDRUS_CAPABILITY_H265_DEC,
+			  CEDRUS_CAPABILITY_H265_DEC |
+			  CEDRUS_CAPABILITY_VP8_DEC,
 	.mod_rate	= 402000000,
 };
 
@@ -551,7 +558,8 @@ static const struct cedrus_variant sun50i_h5_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
 			  CEDRUS_CAPABILITY_MPEG2_DEC |
 			  CEDRUS_CAPABILITY_H264_DEC |
-			  CEDRUS_CAPABILITY_H265_DEC,
+			  CEDRUS_CAPABILITY_H265_DEC |
+			  CEDRUS_CAPABILITY_VP8_DEC,
 	.mod_rate	= 402000000,
 };
 
@@ -559,7 +567,8 @@ static const struct cedrus_variant sun50i_h6_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
 			  CEDRUS_CAPABILITY_MPEG2_DEC |
 			  CEDRUS_CAPABILITY_H264_DEC |
-			  CEDRUS_CAPABILITY_H265_DEC,
+			  CEDRUS_CAPABILITY_H265_DEC |
+			  CEDRUS_CAPABILITY_VP8_DEC,
 	.quirks		= CEDRUS_QUIRK_NO_DMA_OFFSET,
 	.mod_rate	= 600000000,
 };
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 0bf1cbddac9c..e61c41853ba2 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -31,6 +31,7 @@
 #define CEDRUS_CAPABILITY_H265_DEC	BIT(1)
 #define CEDRUS_CAPABILITY_H264_DEC	BIT(2)
 #define CEDRUS_CAPABILITY_MPEG2_DEC	BIT(3)
+#define CEDRUS_CAPABILITY_VP8_DEC	BIT(4)
 
 #define CEDRUS_QUIRK_NO_DMA_OFFSET	BIT(0)
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 8a01e6b9bebb..b62eb8e84057 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -53,6 +53,7 @@ static struct cedrus_format cedrus_formats[] = {
 	{
 		.pixelformat	= V4L2_PIX_FMT_VP8_FRAME,
 		.directions	= CEDRUS_DECODE_SRC,
+		.capabilities	= CEDRUS_CAPABILITY_VP8_DEC,
 	},
 	{
 		.pixelformat	= V4L2_PIX_FMT_SUNXI_TILED_NV12,
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
