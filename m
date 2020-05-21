Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E60D21DD787
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 21:44:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0463320762;
	Thu, 21 May 2020 19:44:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9hiruiPOVwXX; Thu, 21 May 2020 19:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id A5847204D2;
	Thu, 21 May 2020 19:44:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0D2BD1BF306
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 19:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0A132893B5
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 19:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4AMqfOviQRkq for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 19:44:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by hemlock.osuosl.org (Postfix) with ESMTPS id CAF14893B0
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 19:44:39 +0000 (UTC)
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1jbr7I-00085v-KW; Thu, 21 May 2020 19:44:32 +0000
From: Colin King <colin.king@canonical.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH][next] media: atomisp: fix a handful of spelling mistakes
Date: Thu, 21 May 2020 20:44:32 +0100
Message-Id: <20200521194432.357572-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.25.1
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Colin Ian King <colin.king@canonical.com>

There are several spelling mistakes in various messages and literal
strings. Fix these.

Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 .../staging/media/atomisp/pci/base/refcount/src/refcount.c  | 2 +-
 .../media/atomisp/pci/css_2401_system/host/csi_rx_private.h | 4 ++--
 .../atomisp/pci/css_2401_system/host/pixelgen_private.h     | 4 ++--
 drivers/staging/media/atomisp/pci/sh_css.c                  | 6 +++---
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
index e39cc2132953..8f0c94449ec9 100644
--- a/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
+++ b/drivers/staging/media/atomisp/pci/base/refcount/src/refcount.c
@@ -46,7 +46,7 @@ static struct ia_css_refcount_entry *refcount_find_entry(hrt_vaddress ptr,
 		return NULL;
 	if (!myrefcount.items) {
 		ia_css_debug_dtrace(IA_CSS_DEBUG_ERROR,
-				    "refcount_find_entry(): Ref count not initiliazed!\n");
+				    "refcount_find_entry(): Ref count not initialized!\n");
 		return NULL;
 	}
 
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_private.h
index 3fa3c3a487ab..97ad67e438f0 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/csi_rx_private.h
@@ -289,12 +289,12 @@ static inline void csi_rx_be_ctrl_dump_state(
 	 * lut.
 	 */
 	for (i = 0; i < N_SHORT_PACKET_LUT_ENTRIES[ID]; i++) {
-		ia_css_print("CSI RX BE STATE Controller ID %d Short packat entry %d shart packet lut id 0x%x\n",
+		ia_css_print("CSI RX BE STATE Controller ID %d Short packet entry %d short packet lut id 0x%x\n",
 			     ID, i,
 			     state->short_packet_lut_entry[i]);
 	}
 	for (i = 0; i < N_LONG_PACKET_LUT_ENTRIES[ID]; i++) {
-		ia_css_print("CSI RX BE STATE Controller ID %d Long packat entry %d Long packet lut id 0x%x\n",
+		ia_css_print("CSI RX BE STATE Controller ID %d Long packet entry %d long packet lut id 0x%x\n",
 			     ID, i,
 			     state->long_packet_lut_entry[i]);
 	}
diff --git a/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h b/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h
index 65ea23604479..5d4ffe03d13b 100644
--- a/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h
+++ b/drivers/staging/media/atomisp/pci/css_2401_system/host/pixelgen_private.h
@@ -97,9 +97,9 @@ STORAGE_CLASS_PIXELGEN_C void pixelgen_ctrl_dump_state(
     pixelgen_ctrl_state_t *state)
 {
 	ia_css_print("Pixel Generator ID %d Enable  0x%x\n", ID, state->com_enable);
-	ia_css_print("Pixel Generator ID %d PRBS reset vlue 0 0x%x\n", ID,
+	ia_css_print("Pixel Generator ID %d PRBS reset value 0 0x%x\n", ID,
 		     state->prbs_rstval0);
-	ia_css_print("Pixel Generator ID %d PRBS reset vlue 1 0x%x\n", ID,
+	ia_css_print("Pixel Generator ID %d PRBS reset value 1 0x%x\n", ID,
 		     state->prbs_rstval1);
 	ia_css_print("Pixel Generator ID %d SYNC SID 0x%x\n", ID, state->syng_sid);
 	ia_css_print("Pixel Generator ID %d syng free run 0x%x\n", ID,
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index d77432254a2c..fee91b542c65 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -1324,7 +1324,7 @@ static void print_pc_histogram(void)
 		sh_css_print(" pc_histogram for binary %d\n", metrics->id);
 		print_pc_histo("  ISP", &metrics->isp_histogram);
 		print_pc_histo("  SP",   &metrics->sp_histogram);
-		sh_css_print("print_pc_histogram() done for binay->id = %d, done.\n",
+		sh_css_print("print_pc_histogram() done for binary->id = %d, done.\n",
 			     metrics->id);
 	}
 
@@ -5335,7 +5335,7 @@ static enum ia_css_err sh_css_pipe_configure_output(
 {
 	enum ia_css_err err = IA_CSS_SUCCESS;
 
-	IA_CSS_ENTER_PRIVATE("pipe = %p, width = %d, height = %d, paddaed width = %d, format = %d, idx = %d",
+	IA_CSS_ENTER_PRIVATE("pipe = %p, width = %d, height = %d, padded width = %d, format = %d, idx = %d",
 			     pipe, width, height, padded_width, format, idx);
 	if (!pipe) {
 		IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INVALID_ARGUMENTS);
@@ -10705,7 +10705,7 @@ ia_css_unlock_raw_frame(struct ia_css_stream *stream, uint32_t exp_id) {
 	if (exp_id > IA_CSS_ISYS_MAX_EXPOSURE_ID ||
 	    exp_id < IA_CSS_ISYS_MIN_EXPOSURE_ID)
 	{
-		IA_CSS_ERROR("invalid expsure ID: %d\n", exp_id);
+		IA_CSS_ERROR("invalid exposure ID: %d\n", exp_id);
 		return IA_CSS_ERR_INVALID_ARGUMENTS;
 	}
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
