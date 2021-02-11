Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF183189C7
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 12:50:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3895887583;
	Thu, 11 Feb 2021 11:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VONGMJPJQd8K; Thu, 11 Feb 2021 11:50:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FEC287514;
	Thu, 11 Feb 2021 11:50:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C64321BF3EB
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:50:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BF8B087518
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:50:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aMgYyGJN5a9y for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 11:50:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B7F8A87514
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 11:50:17 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:94f7:2542:9eb3:b5ba])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C44F11F45970;
 Thu, 11 Feb 2021 11:50:13 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: p.zabel@pengutronix.de, robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, ezequiel@collabora.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org
Subject: [PATCH 1/4] dt-bindings: reset: IMX8MQ VPU reset
Date: Thu, 11 Feb 2021 12:50:00 +0100
Message-Id: <20210211115003.249367-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210211115003.249367-1-benjamin.gaignard@collabora.com>
References: <20210211115003.249367-1-benjamin.gaignard@collabora.com>
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

Document bindings for IMX8MQ VPU reset hardware block

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../bindings/reset/fsl,imx8mq-vpu-reset.yaml  | 54 +++++++++++++++++++
 include/dt-bindings/reset/imx8mq-vpu-reset.h  | 16 ++++++
 2 files changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
 create mode 100644 include/dt-bindings/reset/imx8mq-vpu-reset.h

diff --git a/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml b/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
new file mode 100644
index 000000000000..00020421c0e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/reset/fsl,imx8mq-vpu-reset.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Freescale i.MX8MQ VPU Reset Controller
+
+maintainers:
+  - Benjamin Gaignard <benjamin.gaignard@collabora.com>
+
+description: |
+  The VPU reset controller is used to reset the video processor
+  unit peripherals. Device nodes that need access to reset lines should
+  specify them as a reset phandle in their corresponding node as
+  specified in reset.txt.
+
+  For list of all valid reset indices see
+    <dt-bindings/reset/imx8mq-vpu-reset.h> for i.MX8MQ.
+
+properties:
+  compatible:
+    items:
+      - const: fsl,imx8mq-vpu-reset
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  '#reset-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#reset-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/imx8mq-clock.h>
+
+    vpu-reset@38320000 {
+        compatible = "fsl,imx8mq-vpu-reset", "syscon";
+        reg = <0x38320000 0x10000>;
+        clocks = <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
+        #reset-cells = <1>;
+    };
diff --git a/include/dt-bindings/reset/imx8mq-vpu-reset.h b/include/dt-bindings/reset/imx8mq-vpu-reset.h
new file mode 100644
index 000000000000..efcbe18177fe
--- /dev/null
+++ b/include/dt-bindings/reset/imx8mq-vpu-reset.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2021, Collabora
+ *
+ * i.MX7 System Reset Controller (SRC) driver
+ *
+ * Author: Benjamin Gaignard <benjamin.gaignard@collabora.com>
+ */
+
+#ifndef DT_BINDINGS_VPU_RESET_IMX8MQ
+#define DT_BINDINGS_VPU_RESET_IMX8MQ
+
+#define IMX8MQ_RESET_VPU_RESET_G1	0
+#define IMX8MQ_RESET_VPU_RESET_G2	1
+
+#endif
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
