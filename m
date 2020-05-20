Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC9C1DBB17
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 May 2020 19:21:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0AA0F88A83;
	Wed, 20 May 2020 17:20:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k0cPd2fV3ROQ; Wed, 20 May 2020 17:20:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2436E88A38;
	Wed, 20 May 2020 17:20:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FC6C1BF4DA
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 17:20:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 075A024D41
 for <devel@linuxdriverproject.org>; Wed, 20 May 2020 17:20:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oMlMUu6zJrun for <devel@linuxdriverproject.org>;
 Wed, 20 May 2020 17:20:50 +0000 (UTC)
X-Greylist: delayed 00:07:42 by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs14.siol.net [185.57.226.205])
 by silver.osuosl.org (Postfix) with ESMTPS id 48ED3230E6
 for <devel@driverdev.osuosl.org>; Wed, 20 May 2020 17:20:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 7177252262E;
 Wed, 20 May 2020 19:12:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Zb2kWSo0VfZD; Wed, 20 May 2020 19:12:23 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 0DB3E5227F4;
 Wed, 20 May 2020 19:12:23 +0200 (CEST)
Received: from kista.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 1D040522746;
 Wed, 20 May 2020 19:12:17 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH] media: cedrus: Add support for additional output formats
Date: Wed, 20 May 2020 19:14:57 +0200
Message-Id: <20200520171457.11937-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.2
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

If VPU supports untiled output, it actually supports several different
YUV 4:2:0 layouts, namely NV12, NV21, YUV420 and YVU420.

Add support for all of them.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus_hw.c | 18 +++++++++++++++++-
 .../staging/media/sunxi/cedrus/cedrus_video.c  | 18 ++++++++++++++++++
 2 files changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
index daf5f244f93b..c119fd8c4b92 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
@@ -83,9 +83,25 @@ void cedrus_dst_format_set(struct cedrus_dev *dev,
 
 	switch (fmt->pixelformat) {
 	case V4L2_PIX_FMT_NV12:
+	case V4L2_PIX_FMT_NV21:
+	case V4L2_PIX_FMT_YUV420:
+	case V4L2_PIX_FMT_YVU420:
 		chroma_size = ALIGN(width, 16) * ALIGN(height, 16) / 2;
 
-		reg = VE_PRIMARY_OUT_FMT_NV12;
+		switch (fmt->pixelformat) {
+		case V4L2_PIX_FMT_NV12:
+			reg = VE_PRIMARY_OUT_FMT_NV12;
+			break;
+		case V4L2_PIX_FMT_NV21:
+			reg = VE_PRIMARY_OUT_FMT_NV21;
+			break;
+		case V4L2_PIX_FMT_YUV420:
+			reg = VE_PRIMARY_OUT_FMT_YU12;
+			break;
+		case V4L2_PIX_FMT_YVU420:
+			reg = VE_PRIMARY_OUT_FMT_YV12;
+			break;
+		}
 		cedrus_write(dev, VE_PRIMARY_OUT_FMT, reg);
 
 		reg = chroma_size / 2;
diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
index 15cf1f10221b..016021d71df2 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
@@ -55,6 +55,21 @@ static struct cedrus_format cedrus_formats[] = {
 		.directions	= CEDRUS_DECODE_DST,
 		.capabilities	= CEDRUS_CAPABILITY_UNTILED,
 	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_NV21,
+		.directions	= CEDRUS_DECODE_DST,
+		.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_YUV420,
+		.directions	= CEDRUS_DECODE_DST,
+		.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	},
+	{
+		.pixelformat	= V4L2_PIX_FMT_YVU420,
+		.directions	= CEDRUS_DECODE_DST,
+		.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	},
 };
 
 #define CEDRUS_FORMATS_COUNT	ARRAY_SIZE(cedrus_formats)
@@ -130,6 +145,9 @@ void cedrus_prepare_format(struct v4l2_pix_format *pix_fmt)
 		break;
 
 	case V4L2_PIX_FMT_NV12:
+	case V4L2_PIX_FMT_NV21:
+	case V4L2_PIX_FMT_YUV420:
+	case V4L2_PIX_FMT_YVU420:
 		/* 16-aligned stride. */
 		bytesperline = ALIGN(width, 16);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
