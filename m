Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10138229BF7
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Jul 2020 17:55:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9EC9F86B0E;
	Wed, 22 Jul 2020 15:55:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sGZfhcbHH6va; Wed, 22 Jul 2020 15:55:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30BF786A8D;
	Wed, 22 Jul 2020 15:55:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 487181BF360
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:55:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4228B86892
 for <devel@linuxdriverproject.org>; Wed, 22 Jul 2020 15:55:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RnO_-1yjgTHD for <devel@linuxdriverproject.org>;
 Wed, 22 Jul 2020 15:55:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4633B86365
 for <devel@driverdev.osuosl.org>; Wed, 22 Jul 2020 15:55:52 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 5FABE2976FD
From: Helen Koike <helen.koike@collabora.com>
To: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH v5 1/9] media: staging: dt-bindings: rkisp1: add missing
 required nodes
Date: Wed, 22 Jul 2020 12:55:25 -0300
Message-Id: <20200722155533.252844-2-helen.koike@collabora.com>
X-Mailer: git-send-email 2.28.0.rc1
In-Reply-To: <20200722155533.252844-1-helen.koike@collabora.com>
References: <20200722155533.252844-1-helen.koike@collabora.com>
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
 zhengsq@rock-chips.com, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 jbx6244@gmail.com, kernel@collabora.com, ezequiel@collabora.com,
 robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add missing required nodes in json-schema yaml file for
Rockchip ISP1 dt-bindings.

Signed-off-by: Helen Koike <helen.koike@collabora.com>
Acked-by: Rob Herring <robh@kernel.org>
---

Changes in v2:
- New patch in the series
---
 .../devicetree/bindings/media/rockchip-isp1.yaml          | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
index af246b71eac6b..a77b6ec500c95 100644
--- a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
+++ b/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
@@ -94,11 +94,19 @@ properties:
 
               remote-endpoint: true
 
+        required:
+          - reg
+          - "#address-cells"
+          - "#size-cells"
+
     required:
+      - "#address-cells"
+      - "#size-cells"
       - port@0
 
 required:
   - compatible
+  - reg
   - interrupts
   - clocks
   - clock-names
-- 
2.28.0.rc1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
