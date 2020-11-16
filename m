Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 038552B443D
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 14:02:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4F2B3204E0;
	Mon, 16 Nov 2020 13:02:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aizbVHwQ9+Kz; Mon, 16 Nov 2020 13:02:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4841D20113;
	Mon, 16 Nov 2020 13:02:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F7D21BF41C
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2399D867E8
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ytzEfxGU1NIk for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 13:02:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by whitealder.osuosl.org (Postfix) with ESMTP id 66BBE8682A
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 13:02:18 +0000 (UTC)
Received: from ubuntu2004.c-home.cz (unifi.c-home.cz [192.168.1.227])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 0AGCuMla021922;
 Mon, 16 Nov 2020 13:56:44 +0100 (CET)
From: Martin Cerveny <m.cerveny@computer.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 5/6] dt-bindings: media: cedrus: Add V3s compatible
Date: Mon, 16 Nov 2020 13:56:16 +0100
Message-Id: <20201116125617.7597-6-m.cerveny@computer.org>
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

Allwinner V3s SoC contains video engine. Add compatible for it.

Signed-off-by: Martin Cerveny <m.cerveny@computer.org>
---
 .../bindings/media/allwinner,sun4i-a10-video-engine.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
index 0d58bbcd24d3..2f7058f7760c 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
@@ -18,6 +18,7 @@ properties:
       - allwinner,sun7i-a20-video-engine
       - allwinner,sun8i-a33-video-engine
       - allwinner,sun8i-h3-video-engine
+      - allwinner,sun8i-v3s-video-engine
       - allwinner,sun8i-r40-video-engine
       - allwinner,sun50i-a64-video-engine
       - allwinner,sun50i-h5-video-engine
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
