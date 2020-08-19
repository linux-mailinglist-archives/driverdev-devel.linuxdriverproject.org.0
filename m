Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73540249C3B
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Aug 2020 13:47:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1FB0585A6E;
	Wed, 19 Aug 2020 11:47:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BuYHrwOvIyK3; Wed, 19 Aug 2020 11:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8124F84AA7;
	Wed, 19 Aug 2020 11:46:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0541C1BF30D
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F16AA86864
 for <devel@linuxdriverproject.org>; Wed, 19 Aug 2020 11:46:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 305GLiR-OQg1 for <devel@linuxdriverproject.org>;
 Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2668F86758
 for <devel@driverdev.osuosl.org>; Wed, 19 Aug 2020 11:46:24 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5a3.dynamic.kabel-deutschland.de
 [95.90.213.163])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBAF523101;
 Wed, 19 Aug 2020 11:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597837583;
 bh=v4yqX3wsgRwd3N1S84TVE2HcRnPAURPn4O0qze3Kx80=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=socLXt5sgZayd0VhzC5/GvG9J4DWcq3iFE9vlpJjdRH9/8oqHGkdGNahmGvkp5Dfi
 gScvPhgR4we94E0D9YjG01x5xMaZSocNOqsxLed8M81MMiE/EIQASy9gUK0j+9TPFL
 387zxWfcBxeIqMMhLU2/nCiORVryd38DG6Pwu7/8=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1k8MXs-00EubX-Ox; Wed, 19 Aug 2020 13:46:20 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 35/49] staging: hikey9xx/gpu: add SPMI headers
Date: Wed, 19 Aug 2020 13:46:03 +0200
Message-Id: <bb29260b57073c3e25b5a7d6379af0aea3cb7ee6.1597833138.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1597833138.git.mchehab+huawei@kernel.org>
References: <cover.1597833138.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Liwei Cai <cailiwei@hisilicon.com>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chen Feng <puck.chen@hisilicon.com>,
 Wanchun Zheng <zhengwanchun@hisilicon.com>, linuxarm@huawei.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Xiubin Zhang <zhangxiubin1@huawei.com>, Liuyao An <anliuyao@huawei.com>,
 John Stultz <john.stultz@linaro.org>, Daniel Vetter <daniel@ffwll.ch>,
 mauro.chehab@huawei.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Use SPMI headers to identify the license of each file.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/hikey9xx/gpu/kirin960_dpe_reg.h   |  1 +
 .../staging/hikey9xx/gpu/kirin970_dpe_reg.h   |  1 +
 .../hikey9xx/gpu/kirin9xx_drm_dpe_utils.c     |  4 ++-
 .../hikey9xx/gpu/kirin9xx_drm_dpe_utils.h     |  4 ++-
 .../staging/hikey9xx/gpu/kirin9xx_drm_drv.c   |  1 +
 .../staging/hikey9xx/gpu/kirin9xx_drm_drv.h   |  1 +
 .../staging/hikey9xx/gpu/kirin9xx_drm_dss.c   |  1 +
 .../hikey9xx/gpu/kirin9xx_drm_overlay_utils.c | 10 +++----
 .../hikey9xx/gpu/kirin9xx_dw_drm_dsi.c        |  2 +-
 .../hikey9xx/gpu/kirin9xx_dw_dsi_reg.h        |  1 +
 .../staging/hikey9xx/gpu/kirin9xx_fb_panel.h  | 25 +++++++++---------
 drivers/staging/hikey9xx/gpu/kirin9xx_pwm.c   | 26 ++++++++++---------
 12 files changed, 43 insertions(+), 34 deletions(-)

diff --git a/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h b/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
index 7b9da796a671..131bb80d9bd1 100644
--- a/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
+++ b/drivers/staging/hikey9xx/gpu/kirin960_dpe_reg.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2016 Linaro Limited.
  * Copyright (c) 2014-2016 Hisilicon Limited.
diff --git a/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h b/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
index 0c6b6eb9dcab..00bbad95ee3d 100644
--- a/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
+++ b/drivers/staging/hikey9xx/gpu/kirin970_dpe_reg.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2016 Linaro Limited.
  * Copyright (c) 2014-2016 Hisilicon Limited.
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c
index 3b8ff0bdd359..fa317be188e0 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.c
@@ -1,4 +1,6 @@
-/* Copyright (c) 2013-2014, Hisilicon Tech. Co., Ltd. All rights reserved.
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2013-2014, Hisilicon Tech. Co., Ltd. All rights reserved.
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License version 2 and
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
index 0c5681d0a5ac..e3681c26f7f4 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dpe_utils.h
@@ -1,4 +1,6 @@
-/* Copyright (c) 2013-2014, Hisilicon Tech. Co., Ltd. All rights reserved.
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2013-2014, Hisilicon Tech. Co., Ltd. All rights reserved.
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License version 2 and
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
index 3d1b5f738a7f..12668646c2d3 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Hisilicon Kirin SoCs drm master driver
  *
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
index 54b4ddc2fe42..8322abc0752c 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_drv.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2016 Linaro Limited.
  * Copyright (c) 2014-2016 Hisilicon Limited.
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
index fe5b371734fe..10e62bdb9161 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_dss.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * Hisilicon Hi6220 SoC ADE(Advanced Display Engine)'s crtc&plane driver
  *
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
index 2b9672a3d057..128d63d74168 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_drm_overlay_utils.c
@@ -1,4 +1,6 @@
-/* Copyright (c) 2008-2011, Hisilicon Tech. Co., Ltd. All rights reserved.
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2008-2011, Hisilicon Tech. Co., Ltd. All rights reserved.
  *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License version 2 and
@@ -8,12 +10,6 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
- * 02110-1301, USA.
- *
  */
 
 #include <drm/drm_atomic.h>
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c b/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
index f7f0deca3f53..0612ca149c4b 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_dw_drm_dsi.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
 /*
  * DesignWare MIPI DSI Host Controller v1.02 driver
  *
@@ -11,7 +12,6 @@
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License version 2 as
  * published by the Free Software Foundation.
- *
  */
 
 #include <linux/clk.h>
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_dw_dsi_reg.h b/drivers/staging/hikey9xx/gpu/kirin9xx_dw_dsi_reg.h
index 00fac1f35265..c22f237a1262 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_dw_dsi_reg.h
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_dw_dsi_reg.h
@@ -1,3 +1,4 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (c) 2016 Linaro Limited.
  * Copyright (c) 2014-2016 Hisilicon Limited.
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_fb_panel.h b/drivers/staging/hikey9xx/gpu/kirin9xx_fb_panel.h
index 83e79a4350c1..69c7f1fd7ccf 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_fb_panel.h
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_fb_panel.h
@@ -1,15 +1,16 @@
-/* Copyright (c) 2013-2014, Hisilicon Tech. Co., Ltd. All rights reserved.
-*
-* This program is free software; you can redistribute it and/or modify
-* it under the terms of the GNU General Public License version 2 and
-* only version 2 as published by the Free Software Foundation.
-*
-* This program is distributed in the hope that it will be useful,
-* but WITHOUT ANY WARRANTY; without even the implied warranty of
-* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
-* GNU General Public License for more details.
-*
-*/
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2013-2014, Hisilicon Tech. Co., Ltd. All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 and
+ * only version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
+ * GNU General Public License for more details.
+ */
 #ifndef KIRIN_FB_PANEL_H
 #define KIRIN_FB_PANEL_H
 
diff --git a/drivers/staging/hikey9xx/gpu/kirin9xx_pwm.c b/drivers/staging/hikey9xx/gpu/kirin9xx_pwm.c
index bb540f5d77a6..f2b9cfe8fa54 100644
--- a/drivers/staging/hikey9xx/gpu/kirin9xx_pwm.c
+++ b/drivers/staging/hikey9xx/gpu/kirin9xx_pwm.c
@@ -1,15 +1,17 @@
-/* Copyright (c) 2013-2014, Hisilicon Tech. Co., Ltd. All rights reserved.
-*
-* This program is free software; you can redistribute it and/or modify
-* it under the terms of the GNU General Public License version 2 and
-* only version 2 as published by the Free Software Foundation.
-*
-* This program is distributed in the hope that it will be useful,
-* but WITHOUT ANY WARRANTY; without even the implied warranty of
-* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
-* GNU General Public License for more details.
-*
-*/
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2013-2014, Hisilicon Tech. Co., Ltd. All rights reserved.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 and
+ * only version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the
+ * GNU General Public License for more details.
+ *
+ */
 #include <drm/drm_drv.h>
 #include <drm/drm_mipi_dsi.h>
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
