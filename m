Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D17222DD5A
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 10:56:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6522D860D5;
	Sun, 26 Jul 2020 08:56:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QhFG_2OaMs8N; Sun, 26 Jul 2020 08:56:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2A348609D;
	Sun, 26 Jul 2020 08:56:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2A6761BF568
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 08:56:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 231FC87D6E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 08:56:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U-XzKYiU74zD for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 08:56:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9716187D28
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 08:56:36 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id o13so7756229pgf.0
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 01:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cAjop5ZjgObLEdrvvwvFABP+HAGhe/69qePNfdSogC0=;
 b=RaucRnjPITiz7zCD20F3AtFvGykB2zfxUliQRoe3n//7YXiPTVXwUQfNc3dQS0y5ti
 KEApbPG6Y0mLcL1AhCMC78JRcP8Mk+N1W0Dy0JhoktzBQL0mhKavDpQ6WHysTHLrkpKm
 3YMax3j7YZ+BYaQub/5ozUcuoDmbbKLjQqbz4mHW31rB02U7dSAJQcg50c59bk95brEc
 WJrJOTQMVs19xKAxI5UzOrLKq9TUqqAxmh9FA46lbWvlW7kuy1XFsc6m5/R6dQ7/y2+j
 kKsLE5lp2m7d/g4D4docS8beW79E4kCu1vuHLVo3wun0KTxKQf5wZiGuYH+2HYQQIgeh
 zyBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cAjop5ZjgObLEdrvvwvFABP+HAGhe/69qePNfdSogC0=;
 b=jM7tUJGqEefAEjlIY0HSnQ8wBojwiJfRlLWMVSamAUc4XMoDm1/mTqlDcuhFeTvkbQ
 0JkNeUZy74EL2oDPJ1b3TKb2WPO2bt+FuZAcGjZNd81XfT5z8d+eyno4rrGUOZWyW0QE
 YBI6BE5S7NdxeeIezPhjsQrS9Iz2WRanZUa95fry1hThhpZHvSYZ0tTZOuEpDAmX3mML
 Rs9hD6JPvbWNFIDIdsd0gguBQI8FXW/ePBYVOK4ku6pYPFEay5j9ffTsRL+fWkF4bu8d
 slHmBQI6BNwYKrR5jLvsNIVlNXZvtpVLdO4fo4fffL/U3iJHgbj8h8AyYYuD7ZP4TpCu
 fCQA==
X-Gm-Message-State: AOAM531z/GkUYeWSl21q5Vxo6pIOO2TjksYUUQjrMEwmj9dHW6SGTQh5
 mGEmzbo6t0ZPMqrY7uvfOAc=
X-Google-Smtp-Source: ABdhPJxIrBw803YT5wSlbdopZtLISFYIUHaIoO3qYOqseXcgMSIdPoSuvOz/zXkIuLeexpWpsjbu1Q==
X-Received: by 2002:aa7:9575:: with SMTP id x21mr15510611pfq.140.1595753796078; 
 Sun, 26 Jul 2020 01:56:36 -0700 (PDT)
Received: from localhost.localdomain ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id o22sm4577041pfu.206.2020.07.26.01.56.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 01:56:35 -0700 (PDT)
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: [PATCH v2 1/4] fix style of block comments
Date: Sun, 26 Jul 2020 14:18:58 +0530
Message-Id: <20200726084900.19246-1-bharadwaj.rohit8@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

this patch fixes the coding style of block comments.

Signed-off-by: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
---
v2: split patch into sequence of patches 
v1: fix all coding style issues in single patch

 .../media/atomisp/pci/sh_css_firmware.c       | 28 +++++++++++++------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index d4ab15b6d1ac..2907aead98b7 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -51,9 +51,12 @@ struct fw_param {
 
 static struct firmware_header *firmware_header;
 
-/* The string STR is a place holder
+/*
+ * The string STR is a place holder
  * which will be replaced with the actual RELEASE_VERSION
- * during package generation. Please do not modify  */
+ * during package generation. Please do not modify
+ */
+
 static const char *isp2400_release_version = STR(irci_stable_candrpv_0415_20150521_0458);
 static const char *isp2401_release_version = STR(irci_ecr - master_20150911_0724);
 
@@ -276,10 +279,11 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 	for (i = 0; i < sh_css_num_binaries; i++)
 	{
 		struct ia_css_fw_info *bi = &binaries[i];
-		/* note: the var below is made static as it is quite large;
-		   if it is not static it ends up on the stack which could
-		   cause issues for drivers
-		*/
+		/*
+		 * note: the var below is made static as it is quite large;
+		 * if it is not static it ends up on the stack which could
+		 * cause issues for drivers
+		 */
 		static struct ia_css_blob_descr bd;
 		int err;
 
@@ -333,7 +337,11 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 				return err;
 
 		} else {
-			/* All subsequent binaries (including bootloaders) (i>NUM_OF_SPS) are ISP firmware */
+			/*
+			 * All subsequent binaries
+			 * (including bootloaders) (i>NUM_OF_SPS)
+			 * are ISP firmware
+			 */
 			if (i < NUM_OF_SPS)
 				return -EINVAL;
 
@@ -374,8 +382,10 @@ ia_css_ptr
 sh_css_load_blob(const unsigned char *blob, unsigned int size)
 {
 	ia_css_ptr target_addr = hmm_alloc(size, HMM_BO_PRIVATE, 0, NULL, 0);
-	/* this will allocate memory aligned to a DDR word boundary which
-	   is required for the CSS DMA to read the instructions. */
+	/*
+	 * this will allocate memory aligned to a DDR word boundary which
+	 * is required for the CSS DMA to read the instructions.
+	 */
 
 	assert(blob);
 	if (target_addr)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
