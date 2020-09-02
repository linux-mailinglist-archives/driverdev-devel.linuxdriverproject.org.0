Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 973FF25B0DA
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 18:11:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2A69227A49;
	Wed,  2 Sep 2020 16:11:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aVAHNhUVtyes; Wed,  2 Sep 2020 16:11:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 26BB32740C;
	Wed,  2 Sep 2020 16:11:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 064A21BF3D4
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id F1C83228DF
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 16:10:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v7BMBJvYsXYS for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id C8D702266C
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c3.dynamic.kabel-deutschland.de
 [95.90.213.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7352A21D93;
 Wed,  2 Sep 2020 16:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1599063046;
 bh=QRcYkbu7JvtjVp54e+chCMVF4TavZnBWpxUSfCm0mkI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Z5UQUpl/qc1DM1RcLM0MuJiiLxCHWujkZzq6lqMLt3BtfVDuZrQGWuqCiJZwH1/TY
 Dle5y4L+H+sWF+JhO49ZQnXBzDy1UI0n8r1PIyfcXaVywKsUR+p7JZF6pBkaJjjB57
 /Ln8X10C8Q4dXSKQPyNe9IlYUaQrLPm41QOj0uj4=
Received: from mchehab by mail.kernel.org with local (Exim 4.94)
 (envelope-from <mchehab@kernel.org>)
 id 1kDVLQ-000tB7-L4; Wed, 02 Sep 2020 18:10:44 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 30/38] media: atomisp: don't check for ISP version for includes
Date: Wed,  2 Sep 2020 18:10:33 +0200
Message-Id: <7f589c4f14c767228278e0dd029faa037ce00bcf.1599062230.git.mchehab+huawei@kernel.org>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As there aren't duplicated names anymore, and the end goal
is to do runtime checks between ISP2400 and ISP2401,
remove the part of the Makefile which changes the include
places based on the compile-time version.

This shouldn't cause any effect, but it will make easier
for further patches meant to remove conditional compiler
decisions between ISP versions to be replaced by
runtime ones.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/Makefile | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/atomisp/Makefile b/drivers/staging/media/atomisp/Makefile
index 205d0f8cc2e1..1dfad0dd02d0 100644
--- a/drivers/staging/media/atomisp/Makefile
+++ b/drivers/staging/media/atomisp/Makefile
@@ -307,18 +307,12 @@ INCLUDES += \
 	-I$(atomisp)/pci/runtime/queue/src/ \
 	-I$(atomisp)/pci/runtime/rmgr/interface/ \
 	-I$(atomisp)/pci/runtime/spctrl/interface/ \
-	-I$(atomisp)/pci/runtime/tagger/interface/
-
-INCLUDES_byt += \
+	-I$(atomisp)/pci/runtime/tagger/interface/ \
 	-I$(atomisp)/pci/css_2400_system/hive/ \
-
-INCLUDES_cht += \
 	-I$(atomisp)/pci/css_2401_system/ \
 	-I$(atomisp)/pci/css_2401_system/host/ \
 	-I$(atomisp)/pci/css_2401_system/hive/ \
-	-I$(atomisp)/pci/css_2401_system/hrt/ \
-
-#	-I$(atomisp)/pci/css_2401_system/hive_isp_css_2401_system_generated/ \
+	-I$(atomisp)/pci/css_2401_system/hrt/
 
 DEFINES := -DHRT_HW -DHRT_ISP_CSS_CUSTOM_HOST -DHRT_USE_VIR_ADDRS -D__HOST__
 #DEFINES += -DUSE_DYNAMIC_BIN
@@ -330,11 +324,9 @@ DEFINES := -DHRT_HW -DHRT_ISP_CSS_CUSTOM_HOST -DHRT_USE_VIR_ADDRS -D__HOST__
 
 ifeq ($(CONFIG_VIDEO_ATOMISP_ISP2401),y)
 atomisp-objs += $(obj-cht)
-INCLUDES += $(INCLUDES_cht)
 DEFINES += -DISP2401 -DISP2401_NEW_INPUT_SYSTEM -DSYSTEM_hive_isp_css_2401_system
 else
 atomisp-objs += $(obj-byt)
-INCLUDES += $(INCLUDES_byt)
 DEFINES += -DISP2400 -DSYSTEM_hive_isp_css_2400_system
 endif
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
