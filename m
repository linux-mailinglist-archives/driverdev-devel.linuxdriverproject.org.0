Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 074163189C8
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 12:50:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCBAD87420;
	Thu, 11 Feb 2021 11:50:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eDJtbbHAmLvJ; Thu, 11 Feb 2021 11:50:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8C4068736D;
	Thu, 11 Feb 2021 11:50:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A2FF21BF3EB
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:50:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9129D6F5E5
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:50:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ust8bcikdbgj for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 11:50:19 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id DF4066F615; Thu, 11 Feb 2021 11:50:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 523756F5E1
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 11:50:17 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:94f7:2542:9eb3:b5ba])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id D64311F40F2D;
 Thu, 11 Feb 2021 11:50:12 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, ezequiel@collabora.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 0/4] Reset driver for IMX8MQ VPU hardware block
Date: Thu, 11 Feb 2021 12:49:59 +0100
Message-Id: <20210211115003.249367-1-benjamin.gaignard@collabora.com>
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
 benjamin.gaignard@collabora.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-imx@nxp.com, kernel@pengutronix.de,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The two VPUs inside IMX8MQ share the same control block which can be see
as a reset hardware block.
In order to be able to add the second VPU (for HECV decoding) it will be
more handy if the both VPU drivers instance don't have to share the
control block registers. This lead to implement it as an independ reset 
driver and to change the VPU driver to use it.

Benjamin Gaignard (4):
  dt-bindings: reset: IMX8MQ VPU reset
  reset: Add reset driver for IMX8MQ VPU block
  media: hantro: Use reset driver
  arm64: dts: imx8mq: Use reset driver for VPU hardware block

 .../bindings/reset/fsl,imx8mq-vpu-reset.yaml  |  54 ++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  31 +++-
 drivers/reset/Kconfig                         |   8 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-imx8mq-vpu.c              | 169 ++++++++++++++++++
 drivers/staging/media/hantro/Kconfig          |   1 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c   |  61 ++-----
 include/dt-bindings/reset/imx8mq-vpu-reset.h  |  16 ++
 8 files changed, 285 insertions(+), 56 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
 create mode 100644 drivers/reset/reset-imx8mq-vpu.c
 create mode 100644 include/dt-bindings/reset/imx8mq-vpu-reset.h

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
