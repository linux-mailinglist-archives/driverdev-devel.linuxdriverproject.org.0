Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F2025B0C7
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:11:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1879023100;
	Wed,  2 Sep 2020 16:10:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4Qev58joULtv; Wed,  2 Sep 2020 16:10:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6E669228D1;
	Wed,  2 Sep 2020 16:10:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 500DD1BF3D4
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4CD1B85551
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MW-49xIbaAeE for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D83088487A
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 955EA221E9;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599063046;
 bh=ygOrs9/TbmE/SLDVqbxZuGdRzrY5tz+l2wQYXOLaHX8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qcn81GzS9uljGnPISviBx4p4SjOF+payyjuLCy1wTyowFB7aCMFHOqjuxeweKGsiO
 nXOkOG6H0hgBrP7lqlvedRme68Vp1opIap5GqEIcGCrhdbzp6+6wIGReqIgHMIrKNE
 O93L+9GzlzfxcfKY/fxb6PFSiFje3vfyppMhQ8mA=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDVLQ-000tBD-OK; Wed, 02 Sep 2020 18:10:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 33/38] media: atomisp: reorder functions at pixelgen_private.h
Date: Wed,  2 Sep 2020 18:10:36 +0200
Message-Id: <0e922e4d1f89b430585cb774fd92f00d4eb734d8.1599062230.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1599062230.git.mchehab+huawei@kernel.org>
References: <cover.1599062230.git.mchehab+huawei@kernel.org>
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
Cc: devel@driverdev.osuosl.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Colin Ian King <colin.king@canonical.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reorder functions in order to declare before usage.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../css_2401_system/host/pixelgen_private.h   | 73 ++++++++++---------
 1 file changed, 37 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h
index 4faa519219ee..1c7938d8ccb5 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h
@@ -20,6 +20,43 @@
 #include "device_access.h"	/* ia_css_device_load_uint32 */
 #include "assert_support.h" /* assert */
 
+/*****************************************************
+ *
+ * Device level interface (DLI).
+ *
+ *****************************************************/
+/**
+ * @brief Load the register value.
+ * Refer to "pixelgen_public.h" for details.
+ */
+STORAGE_CLASS_PIXELGEN_C hrt_data pixelgen_ctrl_reg_load(
+    const pixelgen_ID_t ID,
+    const hrt_address reg)
+{
+	assert(ID < N_PIXELGEN_ID);
+	assert(PIXELGEN_CTRL_BASE[ID] != (hrt_address) - 1);
+	return ia_css_device_load_uint32(PIXELGEN_CTRL_BASE[ID] + reg * sizeof(
+					     hrt_data));
+}
+
+/**
+ * @brief Store a value to the register.
+ * Refer to "pixelgen_ctrl_public.h" for details.
+ */
+STORAGE_CLASS_PIXELGEN_C void pixelgen_ctrl_reg_store(
+    const pixelgen_ID_t ID,
+    const hrt_address reg,
+    const hrt_data value)
+{
+	assert(ID < N_PIXELGEN_ID);
+	assert(PIXELGEN_CTRL_BASE[ID] != (hrt_address)-1);
+
+	ia_css_device_store_uint32(PIXELGEN_CTRL_BASE[ID] + reg * sizeof(hrt_data),
+				   value);
+}
+
+/* end of DLI */
+
 /*****************************************************
  *
  * Native command interface (NCI).
@@ -144,40 +181,4 @@ STORAGE_CLASS_PIXELGEN_C void pixelgen_ctrl_dump_state(
 }
 
 /* end of NCI */
-/*****************************************************
- *
- * Device level interface (DLI).
- *
- *****************************************************/
-/**
- * @brief Load the register value.
- * Refer to "pixelgen_public.h" for details.
- */
-STORAGE_CLASS_PIXELGEN_C hrt_data pixelgen_ctrl_reg_load(
-    const pixelgen_ID_t ID,
-    const hrt_address reg)
-{
-	assert(ID < N_PIXELGEN_ID);
-	assert(PIXELGEN_CTRL_BASE[ID] != (hrt_address) - 1);
-	return ia_css_device_load_uint32(PIXELGEN_CTRL_BASE[ID] + reg * sizeof(
-					     hrt_data));
-}
-
-/**
- * @brief Store a value to the register.
- * Refer to "pixelgen_ctrl_public.h" for details.
- */
-STORAGE_CLASS_PIXELGEN_C void pixelgen_ctrl_reg_store(
-    const pixelgen_ID_t ID,
-    const hrt_address reg,
-    const hrt_data value)
-{
-	assert(ID < N_PIXELGEN_ID);
-	assert(PIXELGEN_CTRL_BASE[ID] != (hrt_address)-1);
-
-	ia_css_device_store_uint32(PIXELGEN_CTRL_BASE[ID] + reg * sizeof(hrt_data),
-				   value);
-}
-
-/* end of DLI */
 #endif /* __PIXELGEN_PRIVATE_H_INCLUDED__ */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
