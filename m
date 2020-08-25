Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 253D1251E6D
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 19:35:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA4128835D;
	Tue, 25 Aug 2020 17:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ucHPfYy24mmc; Tue, 25 Aug 2020 17:35:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1701188357;
	Tue, 25 Aug 2020 17:35:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 290651BF41C
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:35:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 25E7588790
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5EH3pGcC-HlM for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 17:35:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs30.siol.net [185.57.226.221])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 36044887BF
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 17:35:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id CCD5C5247D2;
 Tue, 25 Aug 2020 19:35:40 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id Cuc8QcMBidfA; Tue, 25 Aug 2020 19:35:40 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 85AE15247E0;
 Tue, 25 Aug 2020 19:35:40 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 3E7C75247D2;
 Tue, 25 Aug 2020 19:35:38 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 4/5] media: cedrus: Add support for R40
Date: Tue, 25 Aug 2020 19:35:22 +0200
Message-Id: <20200825173523.1289379-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200825173523.1289379-1-jernej.skrabec@siol.net>
References: <20200825173523.1289379-1-jernej.skrabec@siol.net>
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
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Video engine in R40 is very similar to that in A33 but it runs on lower
speed, at least according to OS images released by board designer.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/staging/media/sunxi/cedrus/cedrus.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.c b/drivers/staging/media/sunxi/cedrus/cedrus.c
index bc27f9430eeb..83a654a618be 100644
--- a/drivers/staging/media/sunxi/cedrus/cedrus.c
+++ b/drivers/staging/media/sunxi/cedrus/cedrus.c
@@ -496,6 +496,11 @@ static const struct cedrus_variant sun8i_h3_cedrus_variant = {
 	.mod_rate	= 402000000,
 };
 
+static const struct cedrus_variant sun8i_r40_cedrus_variant = {
+	.capabilities	= CEDRUS_CAPABILITY_UNTILED,
+	.mod_rate	= 297000000,
+};
+
 static const struct cedrus_variant sun50i_a64_cedrus_variant = {
 	.capabilities	= CEDRUS_CAPABILITY_UNTILED |
 			  CEDRUS_CAPABILITY_H265_DEC,
@@ -536,6 +541,10 @@ static const struct of_device_id cedrus_dt_match[] = {
 		.compatible = "allwinner,sun8i-h3-video-engine",
 		.data = &sun8i_h3_cedrus_variant,
 	},
+	{
+		.compatible = "allwinner,sun8i-r40-video-engine",
+		.data = &sun8i_r40_cedrus_variant,
+	},
 	{
 		.compatible = "allwinner,sun50i-a64-video-engine",
 		.data = &sun50i_a64_cedrus_variant,
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
