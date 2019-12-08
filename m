Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3891161A0
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Dec 2019 14:32:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7E81120424;
	Sun,  8 Dec 2019 13:32:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bmAJL0nuqORh; Sun,  8 Dec 2019 13:32:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 39F46203F7;
	Sun,  8 Dec 2019 13:32:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4B6BB1BF44C
 for <devel@linuxdriverproject.org>; Sun,  8 Dec 2019 13:32:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 47789203DE
 for <devel@linuxdriverproject.org>; Sun,  8 Dec 2019 13:32:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HHGhBRgSu4Mx for <devel@linuxdriverproject.org>;
 Sun,  8 Dec 2019 13:31:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by silver.osuosl.org (Postfix) with ESMTPS id 6911C203C8
 for <devel@driverdev.osuosl.org>; Sun,  8 Dec 2019 13:31:59 +0000 (UTC)
Received: from faui04e.informatik.uni-erlangen.de
 (faui04e.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:135])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id B579F2414A1;
 Sun,  8 Dec 2019 14:31:57 +0100 (CET)
Received: by faui04e.informatik.uni-erlangen.de (Postfix, from userid 28475)
 id A6F563C1272; Sun,  8 Dec 2019 14:31:57 +0100 (CET)
From: Sven Leykauf <sven_leykauf1@web.de>
To: devel@driverdev.osuosl.org
Subject: [PATCH 3/3] sm750fb: Fix Overlong Line Issues
Date: Sun,  8 Dec 2019 14:29:01 +0100
Message-Id: <20191208132852.1557-3-sven_leykauf1@web.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191208132852.1557-1-sven_leykauf1@web.de>
References: <20191208132852.1557-1-sven_leykauf1@web.de>
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
Cc: Daniel Bauer <daniel.j.bauer@fau.de>, Sven Leykauf <sven_leykauf1@web.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix issues of newly introduced overlong lines, due to name enlargement
within the former two patches.

Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
---
 drivers/staging/sm750fb/ddk750_dvi.c    | 24 ++++++++++++------------
 drivers/staging/sm750fb/ddk750_sii164.c |  3 ++-
 drivers/staging/sm750fb/sm750_accel.c   |  8 +++++---
 3 files changed, 19 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_dvi.c b/drivers/staging/sm750fb/ddk750_dvi.c
index 930f56d91474..1536e252e37c 100644
--- a/drivers/staging/sm750fb/ddk750_dvi.c
+++ b/drivers/staging/sm750fb/ddk750_dvi.c
@@ -13,20 +13,20 @@
  */
 static struct dvi_ctrl_device g_dcft_supported_dvi_controller[] = {
 #ifdef DVI_CTRL_SII164
-	{
-		.pfn_init = sii164_init_chip,
-		.pfn_get_vendor_id = sii164_get_vendor_id,
-		.pfn_get_device_id = sii164_get_device_id,
+{
+	.pfn_init = sii164_init_chip,
+	.pfn_get_vendor_id = sii164_get_vendor_id,
+	.pfn_get_device_id = sii164_get_device_id,
 #ifdef SII164_FULL_FUNCTIONS
-		.pfn_reset_chip = sii164_reset_chip,
-		.pfn_get_chip_string = sii164_get_chip_string,
-		.pfn_set_power = sii164_set_power,
-		.pfn_enable_hot_plug_detection = sii164_enable_hot_plug_detection,
-		.pfn_is_connected = sii164_is_connected,
-		.pfn_check_interrupt = sii164_check_interrupt,
-		.pfn_clear_interrupt = sii164_clear_interrupt,
+	.pfn_reset_chip = sii164_reset_chip,
+	.pfn_get_chip_string = sii164_get_chip_string,
+	.pfn_set_power = sii164_set_power,
+	.pfn_enable_hot_plug_detection = sii164_enable_hot_plug_detection,
+	.pfn_is_connected = sii164_is_connected,
+	.pfn_check_interrupt = sii164_check_interrupt,
+	.pfn_clear_interrupt = sii164_clear_interrupt,
 #endif
-	},
+},
 #endif
 };
 
diff --git a/drivers/staging/sm750fb/ddk750_sii164.c b/drivers/staging/sm750fb/ddk750_sii164.c
index 781eceb2f402..47895df1173e 100644
--- a/drivers/staging/sm750fb/ddk750_sii164.c
+++ b/drivers/staging/sm750fb/ddk750_sii164.c
@@ -301,7 +301,8 @@ void sii164_set_power(unsigned char power_up)
  *  sii164_select_hot_plug_detection_mode
  *      This function selects the mode of the hot plug detection.
  */
-static void sii164_select_hot_plug_detection_mode(enum sii164_hot_plug_mode hot_plug_mode)
+static void sii164_select_hot_plug_detection_mode(enum sii164_hot_plug_mode
+						  hot_plug_mode)
 {
 	unsigned char detect_reg;
 
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index d1f940120721..86605df163f0 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -18,7 +18,8 @@
 
 #include "sm750.h"
 #include "sm750_accel.h"
-static inline void write_dpr(struct lynx_accel *accel, int offset, u32 reg_value)
+static inline void write_dpr(struct lynx_accel *accel,
+			     int offset, u32 reg_value)
 {
 	writel(reg_value, accel->dpr_base + offset);
 }
@@ -354,7 +355,7 @@ int sm750_hw_imageblit(struct lynx_accel *accel, const char *p_srcbuf,
 	write_dpr(accel, DE_PITCH,
 		  ((d_pitch / byte_per_pixel << DE_PITCH_DESTINATION_SHIFT) &
 		   DE_PITCH_DESTINATION_MASK) |
-		  (d_pitch / byte_per_pixel & DE_PITCH_SOURCE_MASK)); /* dpr10 */
+		  (d_pitch / byte_per_pixel & DE_PITCH_SOURCE_MASK));/* dpr10 */
 
 	/*
 	 * Screen Window width in Pixels.
@@ -396,7 +397,8 @@ int sm750_hw_imageblit(struct lynx_accel *accel, const char *p_srcbuf,
 	for (i = 0; i < height; i++) {
 		/* For each line, send the data in chunks of 4 bytes */
 		for (j = 0; j < (ul_4bytes_per_scan / 4); j++)
-			write_dp_port(accel, *(unsigned int *)(p_srcbuf + (j * 4)));
+			write_dp_port(accel,
+				      *(unsigned int *)(p_srcbuf + (j * 4)));
 
 		if (ul_bytes_remain) {
 			memcpy(aj_remain, p_srcbuf + ul_4bytes_per_scan,
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
