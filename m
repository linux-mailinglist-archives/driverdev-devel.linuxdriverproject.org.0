Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FED32B443F
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 14:02:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 293F686877;
	Mon, 16 Nov 2020 13:02:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id laSdxZvmn5ib; Mon, 16 Nov 2020 13:02:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 318F6867E8;
	Mon, 16 Nov 2020 13:02:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 26A8B1BF41C
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 235C285EAE
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NzQ0AzWKvXBt for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 13:02:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3962B85F0F
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 13:02:31 +0000 (UTC)
Received: from ubuntu2004.c-home.cz (unifi.c-home.cz [192.168.1.227])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 0AGCuMlZ021922;
 Mon, 16 Nov 2020 13:56:43 +0100 (CET)
From: Martin Cerveny <m.cerveny@computer.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 4/6] media: cedrus: Add support for V3s
Date: Mon, 16 Nov 2020 13:56:15 +0100
Message-Id: <20201116125617.7597-5-m.cerveny@computer.org>
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

V3s video engine runs at lower speed and support video decoder
for H.264 and JPEG/MJPEG only.

Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
---
 drivers/staging/media/sunxi/cedrus/cedrus.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index 3487554fab68..ee4e21b29374 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -518,6 +518,12 @@ static const struct cedrus_variant sun8i_h3_cedrus_variant = {
 	.mod_rate	= 402000000,
 };
 
+static const struct cedrus_variant sun8i_v3s_cedrus_variant = {
+	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
+			  CEDRUS_CAPABILITY_H264_DEC,
+	.mod_rate	= 297000000,
+};
+
 static const struct cedrus_variant sun8i_r40_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
 			  CEDRUS_CAPABILITY_MPEG2_DEC |
@@ -571,6 +577,10 @@ static const struct of_device_id cedrus_dt_match[] = {
 		.compatible = "allwinner,sun8i-h3-video-engine",
 		.data = &sun8i_h3_cedrus_variant,
 	},
+	{
+		.compatible = "allwinner,sun8i-v3s-video-engine",
+		.data = &sun8i_v3s_cedrus_variant,
+	},
 	{
 		.compatible = "allwinner,sun8i-r40-video-engine",
 		.data = &sun8i_r40_cedrus_variant,
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
