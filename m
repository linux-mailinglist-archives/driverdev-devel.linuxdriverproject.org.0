Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75172130384
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Jan 2020 17:24:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A2D6F85552;
	Sat,  4 Jan 2020 16:24:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PTGihfsoHoUH; Sat,  4 Jan 2020 16:24:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6B01285516;
	Sat,  4 Jan 2020 16:24:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45FB91BF48D
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:24:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4283585516
 for <devel@linuxdriverproject.org>; Sat,  4 Jan 2020 16:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bEGnwWcJiiQI for <devel@linuxdriverproject.org>;
 Sat,  4 Jan 2020 16:24:31 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from condef-07.nifty.com (condef-07.nifty.com [202.248.20.72])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E570D8508E
 for <devel@driverdev.osuosl.org>; Sat,  4 Jan 2020 16:24:30 +0000 (UTC)
Received: from conuserg-12.nifty.com ([10.126.8.75])by condef-07.nifty.com
 with ESMTP id 004GM69V024360
 for <devel@driverdev.osuosl.org>; Sun, 5 Jan 2020 01:22:06 +0900
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 004GLdDP002506;
 Sun, 5 Jan 2020 01:21:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 004GLdDP002506
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578154900;
 bh=uQKrLBOYgdFdcVp9fop+HlNYZJ0MosPKWndzy3BrPf0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BYTorUDxystZm/sbdTyyqXpDOrUR7PIOW5+NWbBQHwhIR9C0TS4dmwTSNuunMCEdt
 H2Zm4lxEJEgm/xfPNhG/Xua9HnFKSMliCnC6QfGPLtZ6fVHPMbmNnHRoNKUXefuLmG
 d4SWMKkk7U+BLEm5t7SOEBlJBuqEVybxV974Dj4W4yg4G/KhXSQIOER7iEDXu5lzTH
 8oSEBmIZryXh5cATb5Jk7xE29XZ7U98VWbbP8jmf1SejA4MiVaAw+H0fm7EX35Djcz
 OU5LLo02IzxqqWAEwaiMUAsNA/6bBLhgU8uqiEyXn9FLNEY8vqzQ4ysQTC33JsOMtS
 YOKkjhnPEs03w==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/3] staging: rtl8192u: remove header include path to
 ieee80211/
Date: Sun,  5 Jan 2020 01:21:35 +0900
Message-Id: <20200104162136.19170-2-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200104162136.19170-1-masahiroy@kernel.org>
References: <20200104162136.19170-1-masahiroy@kernel.org>
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
Cc: devel@driverdev.osuosl.org, Masahiro Yamada <masahiroy@kernel.org>,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There is no need to add "ccflags-y += -I $(srctree)/$(src)/ieee80211"
just for including "dot11d.h".

Use the correct relative path for the #include "..." directive.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 drivers/staging/rtl8192u/Makefile      | 1 -
 drivers/staging/rtl8192u/r8192U_core.c | 2 +-
 drivers/staging/rtl8192u/r8192U_wx.c   | 2 +-
 drivers/staging/rtl8192u/r819xU_phy.c  | 2 +-
 4 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/Makefile b/drivers/staging/rtl8192u/Makefile
index dcd51bf4aed3..a7e5d3d91d9c 100644
--- a/drivers/staging/rtl8192u/Makefile
+++ b/drivers/staging/rtl8192u/Makefile
@@ -7,7 +7,6 @@ ccflags-y += -O2
 ccflags-y += -DCONFIG_FORCE_HARD_FLOAT=y
 ccflags-y += -DJACKSON_NEW_8187 -DJACKSON_NEW_RX
 ccflags-y += -DTHOMAS_BEACON -DTHOMAS_TASKLET -DTHOMAS_SKB -DTHOMAS_TURBO
-ccflags-y += -I $(srctree)/$(src)/ieee80211
 
 r8192u_usb-y := r8192U_core.o r8180_93cx6.o r8192U_wx.o		\
 		  r8190_rtl8256.o r819xU_phy.o r819xU_firmware.o	\
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 7e2cabd16e88..00fdcbf64b0b 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -60,7 +60,7 @@ double __extendsfdf2(float a)
 #include <linux/seq_file.h>
 /* FIXME: check if 2.6.7 is ok */
 
-#include "dot11d.h"
+#include "ieee80211/dot11d.h"
 /* set here to open your trace code. */
 u32 rt_global_debug_component = COMP_DOWN	|
 				COMP_SEC	|
diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 5822bb7984b9..0118edb0b9ab 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -23,7 +23,7 @@
 #include "r8192U.h"
 #include "r8192U_hw.h"
 
-#include "dot11d.h"
+#include "ieee80211/dot11d.h"
 #include "r8192U_wx.h"
 
 #define RATE_COUNT 12
diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index c04d8eca0cfb..555e52522be6 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -7,7 +7,7 @@
 #include "r8192U_dm.h"
 #include "r819xU_firmware_img.h"
 
-#include "dot11d.h"
+#include "ieee80211/dot11d.h"
 #include <linux/bitops.h>
 
 static u32 RF_CHANNEL_TABLE_ZEBRA[] = {
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
