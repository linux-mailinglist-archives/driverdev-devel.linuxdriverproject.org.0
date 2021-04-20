Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3696A36589A
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Apr 2021 14:12:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A600F83B1A;
	Tue, 20 Apr 2021 12:12:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wrtVlerkYJo7; Tue, 20 Apr 2021 12:12:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5A3083A56;
	Tue, 20 Apr 2021 12:12:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5C9D31BF5A2
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 12:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4BCC783A8C
 for <devel@linuxdriverproject.org>; Tue, 20 Apr 2021 12:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0L2golSM7k8F for <devel@linuxdriverproject.org>;
 Tue, 20 Apr 2021 12:11:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 517AB83ABC
 for <devel@driverdev.osuosl.org>; Tue, 20 Apr 2021 12:11:12 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id DFFC81F428E2
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com
Subject: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
Date: Tue, 20 Apr 2021 14:10:43 +0200
Message-Id: <20210420121046.181889-7-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
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
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 cphealy@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The HEVC HANTRO driver needs to know the number of bits to skip at
the beginning of the slice header.
That is a hardware specific requirement so create a dedicated control
for this purpose.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../userspace-api/media/drivers/hantro.rst    | 19 +++++++++++++++++++
 .../userspace-api/media/drivers/index.rst     |  1 +
 include/media/hevc-ctrls.h                    | 13 +++++++++++++
 3 files changed, 33 insertions(+)
 create mode 100644 Documentation/userspace-api/media/drivers/hantro.rst

diff --git a/Documentation/userspace-api/media/drivers/hantro.rst b/Documentation/userspace-api/media/drivers/hantro.rst
new file mode 100644
index 000000000000..cd9754b4e005
--- /dev/null
+++ b/Documentation/userspace-api/media/drivers/hantro.rst
@@ -0,0 +1,19 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+Hantro video decoder driver
+===========================
+
+The Hantro video decoder driver implements the following driver-specific controls:
+
+``V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP (integer)``
+    Specifies to Hantro HEVC video decoder driver the number of data (in bits) to
+    skip in the slice segment header.
+    If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
+    to before syntax element "slice_temporal_mvp_enabled_flag".
+    If IDR, the skipped bits are just "pic_output_flag"
+    (separate_colour_plane_flag is not supported).
+
+.. note::
+
+        This control is not yet part of the public kernel API and
+        it is expected to change.
diff --git a/Documentation/userspace-api/media/drivers/index.rst b/Documentation/userspace-api/media/drivers/index.rst
index 1a9038f5f9fa..12e3c512d718 100644
--- a/Documentation/userspace-api/media/drivers/index.rst
+++ b/Documentation/userspace-api/media/drivers/index.rst
@@ -33,6 +33,7 @@ For more details see the file COPYING in the source distribution of Linux.
 
 	ccs
 	cx2341x-uapi
+        hantro
 	imx-uapi
 	max2175
 	meye-uapi
diff --git a/include/media/hevc-ctrls.h b/include/media/hevc-ctrls.h
index 8e0109eea454..b713eeed1915 100644
--- a/include/media/hevc-ctrls.h
+++ b/include/media/hevc-ctrls.h
@@ -224,4 +224,17 @@ struct v4l2_ctrl_hevc_decode_params {
 	__u64	flags;
 };
 
+/*  MPEG-class control IDs specific to the Hantro driver as defined by V4L2 */
+#define V4L2_CID_CODEC_HANTRO_BASE				(V4L2_CTRL_CLASS_CODEC | 0x1200)
+/*
+ * V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP -
+ * the number of data (in bits) to skip in the
+ * slice segment header.
+ * If non-IDR, the bits to be skipped go from syntax element "pic_output_flag"
+ * to before syntax element "slice_temporal_mvp_enabled_flag".
+ * If IDR, the skipped bits are just "pic_output_flag"
+ * (separate_colour_plane_flag is not supported).
+ */
+#define V4L2_CID_HANTRO_HEVC_SLICE_HEADER_SKIP	(V4L2_CID_CODEC_HANTRO_BASE + 0)
+
 #endif
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
