Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4034C19DB07
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Apr 2020 18:16:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4FDF48835B;
	Fri,  3 Apr 2020 16:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0JDL-oOJGFmc; Fri,  3 Apr 2020 16:15:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4861287EE3;
	Fri,  3 Apr 2020 16:15:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B93AB1BF232
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 16:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B4DCA26370
 for <devel@linuxdriverproject.org>; Fri,  3 Apr 2020 16:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8y0XV-hdBjlL for <devel@linuxdriverproject.org>;
 Fri,  3 Apr 2020 16:15:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A9012634F
 for <devel@driverdev.osuosl.org>; Fri,  3 Apr 2020 16:15:55 +0000 (UTC)
Received: from floko.floko.floko (unknown
 [IPv6:2804:431:e7cc:11ff:4f80:3de:e2b2:5c1d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: koike)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A4716297D6D;
 Fri,  3 Apr 2020 17:15:47 +0100 (BST)
From: Helen Koike <helen.koike@collabora.com>
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v2 0/9] move Rockchip ISP bindings out of staging / add ISP DT
 nodes for RK3399
Date: Fri,  3 Apr 2020 13:15:29 -0300
Message-Id: <20200403161538.1375908-1-helen.koike@collabora.com>
X-Mailer: git-send-email 2.26.0
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, jbx6244@gmail.com, kernel@collabora.com,
 ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Move the bindings out of drivers/staging and place them in
Documentation/devicetree/bindings instead.

Also, add DT nodes for RK3399 and verify with make ARCH=arm64 dtbs_check
and make ARCH=arm64 dt_binding_check.

Tested by verifying images streamed from RockPi 4 board with imx219
module.

Changes in v2:
Add patches modifying bindings, as sugested by Johan Jonker in v1,
before moving them out of staging.

Johan, I added a Suggested-by tag in the commits, please let me know if
you prefer not having the tag there.

Helen Koike (7):
  media: staging: dt-bindings: rkisp1: add missing required nodes
  media: staging: dt-bindings: rkisp1: add required items in i2c example
  media: staging: dt-bindings: rkisp1: re-order properties
  media: staging: dt-bindings: phy-rockchip-dphy-rx0: remove non-used
    reg property
  dt-bindings: phy: phy-rockchip-dphy-rx0: move rockchip dphy rx0
    bindings out of staging
  dt-bindings: media: rkisp1: move rockchip-isp1 bindings out of staging
  media: MAINTAINERS: rkisp1: add path to dt-bindings

Shunqian Zheng (2):
  arm64: dts: rockchip: add rx0 mipi-phy for rk3399
  arm64: dts: rockchip: add isp0 node for rk3399

 .../bindings/media/rockchip-isp1.yaml         | 45 ++++++++++++-------
 .../bindings/phy/rockchip-mipi-dphy-rx0.yaml  |  3 --
 MAINTAINERS                                   |  1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      | 38 ++++++++++++++++
 4 files changed, 68 insertions(+), 19 deletions(-)
 rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (91%)
 rename {drivers/staging/media/phy-rockchip-dphy-rx0/Documentation => Documentation}/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml (98%)

-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
