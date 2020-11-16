Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 581C72B4440
	for <lists+driverdev-devel@lfdr.de>; Mon, 16 Nov 2020 14:02:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 034F086888;
	Mon, 16 Nov 2020 13:02:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8hFitWtGWRm6; Mon, 16 Nov 2020 13:02:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1638B86806;
	Mon, 16 Nov 2020 13:02:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0E0A31BF990
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 068EF8684F
 for <devel@linuxdriverproject.org>; Mon, 16 Nov 2020 13:02:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ysLczMQCwGZ0 for <devel@linuxdriverproject.org>;
 Mon, 16 Nov 2020 13:02:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from dmz.c-home.cz (gw.c-home.cz [89.24.150.100])
 by whitealder.osuosl.org (Postfix) with ESMTP id CE80E8681A
 for <devel@driverdev.osuosl.org>; Mon, 16 Nov 2020 13:02:37 +0000 (UTC)
Received: from ubuntu2004.c-home.cz (unifi.c-home.cz [192.168.1.227])
 by dmz.c-home.cz (8.14.4+Sun/8.14.4) with ESMTP id 0AGCuMlV021922;
 Mon, 16 Nov 2020 13:56:27 +0100 (CET)
From: Martin Cerveny <m.cerveny@computer.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 0/6] ARM: dts: sun8i: v3s: Enable video decoder
Date: Mon, 16 Nov 2020 13:56:11 +0100
Message-Id: <20201116125617.7597-1-m.cerveny@computer.org>
X-Mailer: git-send-email 2.25.1
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

First patch extends cedrus capability to all decoders
because V3s missing MPEG2 decoder.

Next two patches add system control node (SRAM C1) and 
next three patches add support for Cedrus VPU.

Tested on "Lichee Zero" V3s platform with testing LCD patch
( https://github.com/mcerveny/linux/tree/media_tree_for-v5.11e )
and V4L2 raw API testing utility (updated to v5.10)
( https://github.com/mcerveny/v4l2-request-test ):
- enabled LCD (DRM dual VI and sigle UI planes)
- added RGB panel
- enabled PWM
- need additional patch https://git.linuxtv.org/media_tree.git/commit/?h=fixes&id=9ac924b98728c3733c91c6c59fc410827d0da49f

There is low memory on V3s (64MB) and maximum must be available to CMA:
- CONFIG_CMA_SIZE_MBYTES=28
- add swap to swapout other processes
- decrease buffers in v4l2-request-test (.buffers_count from 16 to 8)

Only H.264 decoder working - MPEG and H.265 unsupported by V3s,
JPEG/MJPEG still unimplemented, encoder unimplemented

best regards,
Martin

Changes since v2:
- updated/rebased to https://git.linuxtv.org/hverkuil/media_tree.git/?h=for-v5.11e
- some parts of patches implemeted by others
- updated R40
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
 .../allwinner,sun4i-a10-system-control.yaml   |  3 ++
 arch/arm/boot/dts/sun8i-v3s.dtsi              | 24 ++++++++++++++
 drivers/staging/media/sunxi/cedrus/cedrus.c   | 32 +++++++++++++++++--
 drivers/staging/media/sunxi/cedrus/cedrus.h   |  2 ++
 .../staging/media/sunxi/cedrus/cedrus_video.c |  2 ++
 6 files changed, 62 insertions(+), 2 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
