Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B9A2B4442
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 14:02:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6D06685BF2;
	Mon, 16 Nov 2020 13:02:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aTgIdgXU_km6; Mon, 16 Nov 2020 13:02:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CBB2E85EF3;
	Mon, 16 Nov 2020 13:02:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E58751BF41C
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D38DA20487
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gt-bAgXXnQZy for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 13:02:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by silver.osuosl.org (Postfix) with ESMTP id 267122047B
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 13:02:44 +0000 (UTC)
Received: from ubuntu2004.c-home.cz (unifi.c-home.cz [192.168.1.227])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 0AGCuMlW021922;
 Mon, 16 Nov 2020 13:56:39 +0100 (CET)
From: Martin Cerveny <m.cerveny@computer.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 1/6] media: cedrus: Register all codecs as capability
Date: Mon, 16 Nov 2020 13:56:12 +0100
Message-Id: <20201116125617.7597-2-m.cerveny@computer.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116125617.7597-1-m.cerveny@computer.org>
References: <20201116125617.7597-1-m.cerveny@computer.org>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Martin Cerveny <m.cerveny@computer.org>, linux-media@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

All codecs should have capabilities.
For example "Allwinner V3s" does not support "MPEG2".

Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
---
 drivers/staging/media/sunxi/cedrus/cedrus.c   | 22 +++++++++++++++++--
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  2 ++
 .../staging/media/sunxi/cedrus/cedrus_video.c |  2 ++
 3 files changed, 24 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index 9a102b7c1bb9..3487554fab68 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -486,47 +486,65 @@ static int cedrus_remove(struct platform_device *pdev)
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
 
 static const struct cedrus_variant sun8i_r40_cedrus_variant = {
-	.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
+			  CEDRUS_CAPABILITY_MPEG2_DEC |
+			  CEDRUS_CAPABILITY_H264_DEC,
 	.mod_rate	= 297000000,
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
index 93c843ae14bb..30cdb15d6800 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.h
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
@@ -28,6 +28,8 @@
 
 #define CEDRUS_CAPABILITY_UNTILED	BIT(0)
 #define CEDRUS_CAPABILITY_H265_DEC	BIT(1)
+#define CEDRUS_CAPABILITY_H264_DEC	BIT(2)
+#define CEDRUS_CAPABILITY_MPEG2_DEC	BIT(3)
 
 #define CEDRUS_QUIRK_NO_DMA_OFFSET	BIT(0)
 
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 911f607d9b09..bdca23fc214b 100644
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
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
