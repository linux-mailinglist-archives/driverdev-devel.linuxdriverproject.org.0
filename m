Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FB21EC9E8
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Jun 2020 09:01:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A77D686745;
	Wed,  3 Jun 2020 07:01:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C3XCXP1Zu_hK; Wed,  3 Jun 2020 07:01:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1A584869D9;
	Wed,  3 Jun 2020 07:01:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CAD01BF3E9
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 92BC42156F
 for <devel@linuxdriverproject.org>; Wed,  3 Jun 2020 07:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PUkmRzFtIovR for <devel@linuxdriverproject.org>;
 Wed,  3 Jun 2020 07:01:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 09FF421515
 for <devel@driverdev.osuosl.org>; Wed,  3 Jun 2020 07:01:06 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 87764207F7;
 Wed,  3 Jun 2020 07:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591167665;
 bh=KH29YEuParkhVcZgvESxlf+E49kxxHP8MfihF720ksc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=B53c8WC0mGUV8/+NKV0FjhKwUDPnGIHSTz5k8h3nYUoRhpAdqXIlFiAZ7Os5s0D6q
 GciT4og6cmQKbvr50HqGnzYPhfGfBEd4462TalK86QAJLIiUF2yjQTUAkAT052O7jr
 BJ7ilqZP7od+b7m+dJYtFkPxTViR19+fv8kJXN8Y=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgNOZ-004j8G-8F; Wed, 03 Jun 2020 09:01:03 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 04/15] media: atomisp: get rid of ifdef nonsense
Date: Wed,  3 Jun 2020 09:00:50 +0200
Message-Id: <82d6e2b75e5dba3c44ee379f62f299a617a02f4e.1591167358.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591167358.git.mchehab+huawei@kernel.org>
References: <cover.1591167358.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There are some ifdefs there that end doing the same thing.
Get rid of them.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../atomisp/pci/isp2400_input_system_local.h      | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/isp2400_input_system_local.h b/drivers/staging/media/atomisp/pci/isp2400_input_system_local.h
index 58ea58ba56e4..4b7034e4adb4 100644
--- a/drivers/staging/media/atomisp/pci/isp2400_input_system_local.h
+++ b/drivers/staging/media/atomisp/pci/isp2400_input_system_local.h
@@ -21,15 +21,14 @@
 #include "input_system_global.h"
 
 #include "input_system_defs.h"		/* HIVE_ISYS_GPREG_MULTICAST_A_IDX,... */
-#include "css_receiver_2400_defs.h"	/* _HRT_CSS_RECEIVER_2400_TWO_PIXEL_EN_REG_IDX, _HRT_CSS_RECEIVER_2400_CSI2_FUNC_PROG_REG_IDX,... */
-#if defined(IS_ISP_2400_MAMOIADA_SYSTEM)
+
+/*
+ * _HRT_CSS_RECEIVER_2400_TWO_PIXEL_EN_REG_IDX, 											* _HRT_CSS_RECEIVER_2400_CSI2_FUNC_PROG_REG_IDX,...
+ */
+#include "css_receiver_2400_defs.h"
+
 #include "isp_capture_defs.h"
-#elif defined(IS_ISP_2401_MAMOIADA_SYSTEM)
-/* Same name, but keep the distinction,it is a different device */
-#include "isp_capture_defs.h"
-#else
-#error "input_system_local.h: 2400_SYSTEM must be one of {2400, 2401 }"
-#endif
+
 #include "isp_acquisition_defs.h"
 #include "input_system_ctrl_defs.h"
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
