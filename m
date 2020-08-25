Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1FE251E69
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Aug 2020 19:35:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA45023600;
	Tue, 25 Aug 2020 17:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vPp9LJjJAg-L; Tue, 25 Aug 2020 17:35:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5283123509;
	Tue, 25 Aug 2020 17:35:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 879161BF41C
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:35:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8250786CC5
 for <devel@linuxdriverproject.org>; Tue, 25 Aug 2020 17:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C7bNBVYSG14f for <devel@linuxdriverproject.org>;
 Tue, 25 Aug 2020 17:35:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.siol.net (mailoutvs34.siol.net [185.57.226.225])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BAB2186DD0
 for <devel@driverdev.osuosl.org>; Tue, 25 Aug 2020 17:35:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 9FD295247BB;
 Tue, 25 Aug 2020 19:35:31 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 7CVdfufbXldm; Tue, 25 Aug 2020 19:35:31 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 39FEC5247D2;
 Tue, 25 Aug 2020 19:35:31 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 909865247CD;
 Tue, 25 Aug 2020 19:35:30 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org,
	paul.kocialkowski@bootlin.com
Subject: [PATCH 0/5] ARM: dts: sun8i: r40: Enable video decoder
Date: Tue, 25 Aug 2020 19:35:18 +0200
Message-Id: <20200825173523.1289379-1-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.28.0
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

Allwinner R40 SoC contains video engine very similar to that in A33.

First two patches add system controller nodes and the rest of them
add support for Cedrus VPU.

Please take a look.

Best regards,
Jernej

Jernej Skrabec (5):
  dt-bindings: sram: allwinner,sun4i-a10-system-control: Add R40
    compatibles
  ARM: dts: sun8i: r40: Add node for system controller
  dt-bindings: media: allwinner,sun4i-a10-video-engine: Add R40
    compatible
  media: cedrus: Add support for R40
  ARM: dts: sun8i: r40: Add video engine node

 .../allwinner,sun4i-a10-video-engine.yaml     |  1 +
 .../allwinner,sun4i-a10-system-control.yaml   |  6 ++++
 arch/arm/boot/dts/sun8i-r40.dtsi              | 34 +++++++++++++++++++
 drivers/staging/media/sunxi/cedrus/cedrus.c   |  9 +++++
 4 files changed, 50 insertions(+)

-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
