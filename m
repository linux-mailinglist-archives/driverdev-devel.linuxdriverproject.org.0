Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C96320CFA0
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 17:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7099B8764D;
	Mon, 29 Jun 2020 15:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5dge6WRr1690; Mon, 29 Jun 2020 15:21:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 683C48765E;
	Mon, 29 Jun 2020 15:21:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9F03C1BF35F
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 99AF886DAB
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 15:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Eim1AqSo3Ms9 for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 15:21:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0BB8386DAD
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 15:21:26 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 31F2AB12A;
 Mon, 29 Jun 2020 15:10:11 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 44/47] staging: vchiq: Move conditional barrier definition
 into vchiq_core.h
Date: Mon, 29 Jun 2020 17:09:42 +0200
Message-Id: <20200629150945.10720-45-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629150945.10720-1-nsaenzjulienne@suse.de>
References: <20200629150945.10720-1-nsaenzjulienne@suse.de>
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 linux-kernel@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 laurent.pinchart@ideasonboard.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The barrier is only used by core code. So keep the barrier definition in
the core header.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq.h        | 11 -----------
 .../vc04_services/interface/vchiq_arm/vchiq_core.h   | 12 ++++++++++++
 2 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
index 211b20705e36..57fe7d5e9a85 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq.h
@@ -6,15 +6,4 @@
 
 #include "vchiq_if.h"
 
-/* Do this so that we can test-build the code on non-rpi systems */
-#if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
-
-#else
-
-#ifndef dsb
-#define dsb(a)
-#endif
-
-#endif	/* IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE) */
-
 #endif
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index ff91c04ba6b9..15e9867f78f4 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -15,6 +15,18 @@
 
 #include "vchiq.h"
 
+/* Do this so that we can test-build the code on non-rpi systems */
+#if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
+
+#else
+
+#ifndef dsb
+#define dsb(a)
+#endif
+
+#endif	/* IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE) */
+
+
 /* Run time control of log level, based on KERN_XXX level. */
 #define VCHIQ_LOG_DEFAULT  4
 #define VCHIQ_LOG_ERROR    3
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
