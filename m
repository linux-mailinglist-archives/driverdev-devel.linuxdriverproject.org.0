Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B12358240
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jun 2019 14:13:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1708886D39;
	Thu, 27 Jun 2019 12:13:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Csjfr2QO2-Ki; Thu, 27 Jun 2019 12:13:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8413486D91;
	Thu, 27 Jun 2019 12:13:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC2D21BF414
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 12:13:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A659486250
 for <devel@linuxdriverproject.org>; Thu, 27 Jun 2019 12:13:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UhDxch7VawSs for <devel@linuxdriverproject.org>;
 Thu, 27 Jun 2019 12:13:19 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB05980EBA
 for <devel@driverdev.osuosl.org>; Thu, 27 Jun 2019 12:13:18 +0000 (UTC)
Received: from faui01a.informatik.uni-erlangen.de
 (faui01a.informatik.uni-erlangen.de [131.188.60.127])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 1D51F241569;
 Thu, 27 Jun 2019 14:12:51 +0200 (CEST)
Received: by faui01a.informatik.uni-erlangen.de (Postfix, from userid 30063)
 id 080D0F40079; Thu, 27 Jun 2019 14:12:50 +0200 (CEST)
From: Lukas Schneider <lukas.s.schneider@fau.de>
To: leobras.c@gmail.com, digholebhagyashri@gmail.com,
 bhanusreemahesh@gmail.com, daniel.vetter@ffwll.ch, der_wolf_@web.de,
 payal.s.kshirsagar.98@gmail.com, dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] fbtft: Cleanup line over 80 character warnings
Date: Thu, 27 Jun 2019 14:12:40 +0200
Message-Id: <20190627121240.31584-1-lukas.s.schneider@fau.de>
X-Mailer: git-send-email 2.19.1
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
Cc: Jannik Moritz <jannik.moritz@fau.de>, linux-kernel@i4.cs.fau.de,
 Lukas Schneider <lukas.s.schneider@fau.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleanup the line over 80 character warnings, reported by checkpatch

Signed-off-by: Lukas Schneider <lukas.s.schneider@fau.de>
Signed-off-by: Jannik Moritz <jannik.moritz@fau.de>
Cc: <linux-kernel@i4.cs.fau.de>
---
 drivers/staging/fbtft/fbtft-sysfs.c |  3 ++-
 drivers/staging/fbtft/fbtft.h       | 26 ++++++++++++++++++++++----
 2 files changed, 24 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
index 2a5c630dab87..78d2b81ea2e7 100644
--- a/drivers/staging/fbtft/fbtft-sysfs.c
+++ b/drivers/staging/fbtft/fbtft-sysfs.c
@@ -68,7 +68,8 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
 			ret = get_next_ulong(&curve_p, &val, " ", 16);
 			if (ret)
 				goto out;
-			curves[curve_counter * par->gamma.num_values + value_counter] = val;
+			curves[curve_counter * par->gamma.num_values
+				+ value_counter] = val;
 			value_counter++;
 		}
 		if (value_counter != par->gamma.num_values) {
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 9b6bdb62093d..cddbfd4ffa10 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -348,9 +348,25 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 |		\
+			 DEBUG_DRIVER_INIT_FUNCTIONS |	\
+			 DEBUG_TIME_FIRST_UPDATE)
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 |		\
+			 DEBUG_RESET |			\
+			 DEBUG_INIT_DISPLAY |		\
+			 DEBUG_BLANK |			\
+			 DEBUG_REQUEST_GPIOS |		\
+			 DEBUG_FREE_GPIOS |		\
+			 DEBUG_VERIFY_GPIOS |		\
+			 DEBUG_BACKLIGHT |		\
+			 DEBUG_SYSFS)
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 |		\
+			 DEBUG_FB_READ |		\
+			 DEBUG_FB_WRITE |		\
+			 DEBUG_FB_FILLRECT |		\
+			 DEBUG_FB_COPYAREA |		\
+			 DEBUG_FB_IMAGEBLIT |		\
+			 DEBUG_FB_BLANK)
 #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
@@ -392,7 +408,9 @@ module_exit(fbtft_driver_module_exit);
 #define fbtft_init_dbg(dev, format, arg...)                  \
 do {                                                         \
 	if (unlikely((dev)->platform_data &&                 \
-	    (((struct fbtft_platform_data *)(dev)->platform_data)->display.debug & DEBUG_DRIVER_INIT_FUNCTIONS))) \
+		(((struct fbtft_platform_data *)	     \
+		(dev)->platform_data)->display.debug	     \
+		& DEBUG_DRIVER_INIT_FUNCTIONS)))	     \
 		dev_info(dev, format, ##arg);                \
 } while (0)
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
