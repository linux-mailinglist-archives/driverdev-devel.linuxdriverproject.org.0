Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FB41C2D3A
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 May 2020 17:08:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F108F88376;
	Sun,  3 May 2020 15:08:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rpfhcRknTHxe; Sun,  3 May 2020 15:08:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B8CFA876C0;
	Sun,  3 May 2020 15:08:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 53F561BF578
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 15:08:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 467C587686
 for <devel@linuxdriverproject.org>; Sun,  3 May 2020 15:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rWyY5kpiSfRi for <devel@linuxdriverproject.org>;
 Sun,  3 May 2020 15:08:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A7DDE8766A
 for <devel@driverdev.osuosl.org>; Sun,  3 May 2020 15:08:22 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2155E205C9;
 Sun,  3 May 2020 15:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588518502;
 bh=w7Utrujni184cNMcEj7EFp2YNBz0N8rVFKDCB7+6ma8=;
 h=From:To:Cc:Subject:Date:From;
 b=PpcbTUVZUBR/kLUY2+tN7/q0uxlDPO0p7Xw7kSpe/lETfvDAGQiVhmq9eJGeZHR0M
 aei7YzIti4rd92sooQcT1aqAmHH6zeIBeEmLjSvYncZmb5BGQ+zr9uvbbihcgbCdoL
 sHBCdVS5TsJqBTFDjUtHETrE4HImfEZ7rw6srT9g=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jVGE7-00GN8O-UF; Sun, 03 May 2020 17:08:19 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Francescodario Cuzzocrea <francescodario.cuzzocrea@mail.polimi.it>
Subject: [PATCH] media: atomisp: move ia_css_configure_sc() implementation
Date: Sun,  3 May 2020 17:08:18 +0200
Message-Id: <d13afe4d7e2288ee19139505cbf878930490d43b.1588518483.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.4
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
 Sakari Ailus <sakari.ailus@linux.intel.com>, Alan Cox <alan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

With the changes, this function is now undefined if built
for ISP2400. So, move its implementation to the file which
calls it.

Reported-by: Francescodario Cuzzocrea <francescodario.cuzzocrea@mail.polimi.it>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../css_2401_system/hive/ia_css_isp_configs.c | 27 -----------------
 .../media/atomisp/pci/ia_css_isp_configs.h    |  8 -----
 .../isp/kernels/sc/sc_1.0/ia_css_sc.host.c    | 29 +++++++++++++++++++
 3 files changed, 29 insertions(+), 35 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_configs.c b/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_configs.c
index cd37e7e3d779..29d85407cac4 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_configs.c
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/hive/ia_css_isp_configs.c
@@ -272,33 +272,6 @@ ia_css_configure_output(
 			    "ia_css_configure_output() leave:\n");
 }
 
-/* Code generated by genparam/genconfig.c:gen_configure_function() */
-
-void
-ia_css_configure_sc(
-    const struct ia_css_binary *binary,
-    const struct ia_css_sc_configuration *config_dmem)
-{
-	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
-			    "ia_css_configure_sc() enter:\n");
-
-	{
-		unsigned int offset = 0;
-		unsigned int size   = 0;
-
-		if (binary->info->mem_offsets.offsets.config) {
-			size   = binary->info->mem_offsets.offsets.config->dmem.sc.size;
-			offset = binary->info->mem_offsets.offsets.config->dmem.sc.offset;
-		}
-		if (size) {
-			ia_css_sc_config((struct sh_css_isp_sc_isp_config *)
-					 &binary->mem_params.params[IA_CSS_PARAM_CLASS_CONFIG][IA_CSS_ISP_DMEM].address[offset],
-					 config_dmem, size);
-		}
-	}
-	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
-			    "ia_css_configure_sc() leave:\n");
-}
 
 /* Code generated by genparam/genconfig.c:gen_configure_function() */
 
diff --git a/drivers/staging/media/atomisp/pci/ia_css_isp_configs.h b/drivers/staging/media/atomisp/pci/ia_css_isp_configs.h
index 6dd0205fa59e..6545efd24cbe 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_isp_configs.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_isp_configs.h
@@ -152,14 +152,6 @@ ia_css_configure_output(
 
 /* Code generated by genparam/genconfig.c:gen_configure_function() */
 
-/* ISP2401 */
-void
-ia_css_configure_sc(
-    const struct ia_css_binary *binary,
-    const struct ia_css_sc_configuration *config_dmem);
-
-/* Code generated by genparam/genconfig.c:gen_configure_function() */
-
 void
 ia_css_configure_raw(
     const struct ia_css_binary *binary,
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.c
index 000cbe600f97..43954ed6d106 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sc/sc_1.0/ia_css_sc.host.c
@@ -22,6 +22,35 @@
 
 #include "ia_css_sc.host.h"
 
+/* Code generated by genparam/genconfig.c:gen_configure_function() */
+
+/* ISP2401 */
+static void
+ia_css_configure_sc(
+    const struct ia_css_binary *binary,
+    const struct ia_css_sc_configuration *config_dmem)
+{
+	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
+			    "ia_css_configure_sc() enter:\n");
+
+	{
+		unsigned int offset = 0;
+		unsigned int size   = 0;
+
+		if (binary->info->mem_offsets.offsets.config) {
+			size   = binary->info->mem_offsets.offsets.config->dmem.sc.size;
+			offset = binary->info->mem_offsets.offsets.config->dmem.sc.offset;
+		}
+		if (size) {
+			ia_css_sc_config((struct sh_css_isp_sc_isp_config *)
+					 &binary->mem_params.params[IA_CSS_PARAM_CLASS_CONFIG][IA_CSS_ISP_DMEM].address[offset],
+					 config_dmem, size);
+		}
+	}
+	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE_PRIVATE,
+			    "ia_css_configure_sc() leave:\n");
+}
+
 void
 ia_css_sc_encode(
     struct sh_css_isp_sc_params *to,
-- 
2.25.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
