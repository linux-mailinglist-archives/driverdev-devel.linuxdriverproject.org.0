Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3E1212A7A
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jul 2020 18:55:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 49D3488FBF;
	Thu,  2 Jul 2020 16:55:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6lxrYlS2VWJy; Thu,  2 Jul 2020 16:55:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2A1BA88F4A;
	Thu,  2 Jul 2020 16:55:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 057E21BF487
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 16:55:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0289B88F88
 for <devel@linuxdriverproject.org>; Thu,  2 Jul 2020 16:55:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IqUqMHXVo4Vb for <devel@linuxdriverproject.org>;
 Thu,  2 Jul 2020 16:54:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 80B2888E90
 for <devel@driverdev.osuosl.org>; Thu,  2 Jul 2020 16:54:59 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id F1AF12A603F
From: Helen Koike <helen.koike@collabora.com>
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v3 7/9] media: MAINTAINERS: rkisp1: add path to dt-bindings
Date: Thu,  2 Jul 2020 13:54:08 -0300
Message-Id: <20200702165410.2583375-8-helen.koike@collabora.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200702165410.2583375-1-helen.koike@collabora.com>
References: <20200702165410.2583375-1-helen.koike@collabora.com>
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com, eddie.cai.linux@gmail.com,
 tfiga@chromium.org, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 kishon@ti.com, zhengsq@rock-chips.com, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 jbx6244@gmail.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The Rockchip ISP bindings was moved out of staging.
Update MAINTAINERS file with the new path.

Fields sorted according to output of
./scripts/parse-maintainers.pl --input=MAINTAINERS --output=MAINTAINERS
--order

Signed-off-by: Helen Koike <helen.koike@collabora.com>

---

V3:
- Add line:
L:     linux-rockchip@lists.infradead.org
- Re-order:
F:     drivers/staging/media/rkisp1/

V2:
- This is a new patch in the series
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 634d2c3d621aa..d7141cf17072f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14679,7 +14679,9 @@ F:	include/linux/hid-roccat*
 ROCKCHIP ISP V1 DRIVER
 M:	Helen Koike <helen.koike@collabora.com>
 L:	linux-media@vger.kernel.org
+L:	linux-rockchip@lists.infradead.org
 S:	Maintained
+F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml
 F:	drivers/staging/media/rkisp1/
 
 ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
-- 
2.26.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
