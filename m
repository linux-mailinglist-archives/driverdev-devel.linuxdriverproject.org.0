Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31651267ADA
	for <lists+driverdev-devel@lfdr.de>; Sat, 12 Sep 2020 16:31:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5191C87607;
	Sat, 12 Sep 2020 14:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b8ydkpxCYrEW; Sat, 12 Sep 2020 14:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C386B875D1;
	Sat, 12 Sep 2020 14:31:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 98A4A1BF86D
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 14:31:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9308586D1D
 for <devel@linuxdriverproject.org>; Sat, 12 Sep 2020 14:31:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vidm0QuPuS0S for <devel@linuxdriverproject.org>;
 Sat, 12 Sep 2020 14:31:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by whitealder.osuosl.org (Postfix) with ESMTP id ADE0F86DD8
 for <devel@driverdev.osuosl.org>; Sat, 12 Sep 2020 14:31:11 +0000 (UTC)
Received: from ubuntu1804.c-home.cz (unifi.c-home.cz [192.168.1.239])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 08CEUtMx007223;
 Sat, 12 Sep 2020 16:31:01 +0200 (CEST)
From: Martin Cerveny <m.cerveny@computer.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v2 0/6] ARM: dts: sun8i: v3s: Enable video decoder
Date: Sat, 12 Sep 2020 16:30:46 +0200
Message-Id: <20200912143052.30952-1-m.cerveny@computer.org>
X-Mailer: git-send-email 2.17.1
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
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

First patch extends cedrus capability to all decoders
because V3s missing MPEG2 decoder.

Next two patches add system control node (SRAM C1) and 
next three patches add support for Cedrus VPU.

Tested on "Lichee Zero" V3s platform with testing LCD patch
( https://github.com/mcerveny/linux/tree/v3s_videocodec_v4 )
and V4L2 raw API testing utility
( https://github.com/mcerveny/v4l2-request-test ):
- enabled LCD (DRM dual VI and sigle UI planes)
- added RGB panel
- enabled PWM

There is low memory on V3s (64MB) and maximum must be available to CMA:
- CONFIG_CMA_SIZE_MBYTES=28
- add swap to swapout other processes
- decrease buffers in v4l2-request-test (.buffers_count from 16 to 6)

Only H.264 decoder working - MPEG and H.265 unsupported by V3s,
JPEG/MJPEG still unimplemented, encoder unimplemented

best regards,
Martin

Changes since v1:
- patch 0005 rename
- added testing description

Martin Cerveny (6):
  media: cedrus: Register all codecs as capability
  dt-bindings: sram: allwinner,sun4i-a10-system-control: Add V3s
    compatibles
  ARM: dts: sun8i: v3s: Add node for system control
  media: cedrus: Add support for V3s
  dt-bindings: media: cedrus: Add V3s compatible
  ARM: dts: sun8i: v3s: Add video engine node

 .../allwinner,sun4i-a10-video-engine.yaml     |  1 +
 .../allwinner,sun4i-a10-system-control.yaml   |  6 ++++
 arch/arm/boot/dts/sun8i-v3s.dtsi              | 33 +++++++++++++++++++
 drivers/staging/media/sunxi/cedrus/cedrus.c   | 28 +++++++++++++++-
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  2 ++
 .../staging/media/sunxi/cedrus/cedrus_video.c |  2 ++
 6 files changed, 71 insertions(+), 1 deletion(-)

-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
