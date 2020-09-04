Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC03725E292
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Sep 2020 22:18:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2402C875A1;
	Fri,  4 Sep 2020 20:18:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aP2+EKUqA8ko; Fri,  4 Sep 2020 20:18:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5E8558759E;
	Fri,  4 Sep 2020 20:18:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B0F61BF283
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 20:18:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 23EE58448B
 for <devel@linuxdriverproject.org>; Fri,  4 Sep 2020 20:18:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XsA_PnE2wJxj for <devel@linuxdriverproject.org>;
 Fri,  4 Sep 2020 20:18:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 51A1380EC2
 for <devel@driverdev.osuosl.org>; Fri,  4 Sep 2020 20:18:26 +0000 (UTC)
Received: from ubuntu1804.c-home.cz (unifi.c-home.cz [192.168.1.239])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 084K1Ed9002405;
 Fri, 4 Sep 2020 22:01:26 +0200 (CEST)
From: Martin Cerveny <m.cerveny@computer.org>
To: devicetree@vger.kernel.org
Subject: [PATCH 1/6] media: cedrus: Register all codecs as capability
Date: Fri,  4 Sep 2020 22:01:07 +0200
Message-Id: <20200904200112.5563-2-m.cerveny@computer.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904200112.5563-1-m.cerveny@computer.org>
References: <20200904200112.5563-1-m.cerveny@computer.org>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Martin Cerveny <m.cerveny@computer.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

All codecs should have capabilities.
For example "Allwinner V3s" does not support "MPEG2".

Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
---
 drivers/staging/media/sunxi/cedrus/cedrus.c    | 18 +++++++++++++++++-
 drivers/staging/media/sunxi/cedrus/cedrus.h    |  2 ++
 .../staging/media/sunxi/cedrus/cedrus_video.c  |  2 ++
 3 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index bc27f9430..3fd9fd810 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -474,42 +474,58 @@ static int cedrus_remove(struct platform_device *pdev)
 }
 
 static const struct cedrus_variant sun4i_a10_cedrus_variant = {
+	.capabilities	= CEDRUS_CAPABILITY_MPEG2_DEC |
+			  CEDRUS_CAPABILITY_H264_DEC,
 	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun5i_a13_cedrus_variant = {
+	.capabilities	= CEDRUS_CAPABILITY_MPEG2_DEC |
+			  CEDRUS_CAPABILITY_H264_DEC,
 	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun7i_a20_cedrus_variant = {
+	.capabilities	= CEDRUS_CAPABILITY_MPEG2_DEC |
+			  CEDRUS_CAPABILITY_H264_DEC,
 	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun8i_a33_cedrus_variant = {
-	.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
+			  CEDRUS_CAPABILITY_MPEG2_DEC |
+			  CEDRUS_CAPABILITY_H264_DEC,
 	.mod_rate	= 320000000,
 };
 
 static const struct cedrus_variant sun8i_h3_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
+			  CEDRUS_CAPABILITY_MPEG2_DEC |
+			  CEDRUS_CAPABILITY_H264_DEC |
 			  CEDRUS_CAPABILITY_H265_DEC,
 	.mod_rate	= 402000000,
 };
 
 static const struct cedrus_variant sun50i_a64_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
+			  CEDRUS_CAPABILITY_MPEG2_DEC |
+			  CEDRUS_CAPABILITY_H264_DEC |
 			  CEDRUS_CAPABILITY_H265_DEC,
 	.mod_rate	= 402000000,
 };
 
 static const struct cedrus_variant sun50i_h5_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
+			  CEDRUS_CAPABILITY_MPEG2_DEC |
+			  CEDRUS_CAPABILITY_H264_DEC |
 			  CEDRUS_CAPABILITY_H265_DEC,
 	.mod_rate	= 402000000,
 };
 
 static const struct cedrus_variant sun50i_h6_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
+			  CEDRUS_CAPABILITY_MPEG2_DEC |
+			  CEDRUS_CAPABILITY_H264_DEC |
 			  CEDRUS_CAPABILITY_H265_DEC,
 	.quirks		= CEDRUS_QUIRK_NO_DMA_OFFSET,
 	.mod_rate	= 600000000,
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h b/drivers/staging/media/sunxi/cedrus/cedrus.h
index 96765555a..b6032f40c 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -28,6 +28,8 @@
 
 #define CEDRUS_CAPABILITY_UNTILED	BIT(0)
 #define CEDRUS_CAPABILITY_H265_DEC	BIT(1)
+#define CEDRUS_CAPABILITY_H264_DEC	BIT(2)
+#define CEDRUS_CAPABILITY_MPEG2_DEC	BIT(3)
 
 #define CEDRUS_QUIRK_NO_DMA_OFFSET	BIT(0)
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 16d82309e..cb4aca5be 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -38,10 +38,12 @@ static struct cedrus_format cedrus_formats[] = {
 	{
 		.pixelformat	= V4L2_PIX_FMT_MPEG2_SLICE,
 		.directions	= CEDRUS_DECODE_SRC,
+		.capabilities	= CEDRUS_CAPABILITY_MPEG2_DEC,
 	},
 	{
 		.pixelformat	= V4L2_PIX_FMT_H264_SLICE,
 		.directions	= CEDRUS_DECODE_SRC,
+		.capabilities	= CEDRUS_CAPABILITY_H264_DEC,
 	},
 	{
 		.pixelformat	= V4L2_PIX_FMT_HEVC_SLICE,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
