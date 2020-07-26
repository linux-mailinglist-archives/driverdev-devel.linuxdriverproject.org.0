Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A1422DD7C
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 11:07:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E99B288861;
	Sun, 26 Jul 2020 09:07:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id frn+1Wer01XT; Sun, 26 Jul 2020 09:07:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 976B187E16;
	Sun, 26 Jul 2020 09:07:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 459D11BF35E
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 40FB987775
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 09:07:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M28w+0AdcQ+c for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 09:07:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A820C87736
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 09:07:22 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id w126so7336442pfw.8
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 02:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TE4WH5V1PjNKPvtTMrDOivZD9WEtomgUlgWMan48ZxE=;
 b=uhXn4kVy0oaA9ZPnoC9GsTva+siN9ZF/ExTW9LMFY/H5Bc4BsgDoebQ2YwEYChA8sh
 LNxct7T1xLzjgW+QRQNw0VYcui8I88igldfo4FvSGrMK9hcdyT1K8dMZ3UizwpHcFp91
 oDCe/pI4aX+LuEbHc5uaK5D28EXAAc6pokCSqZrUB5sOtgEUyjIwlpyDP3sPej91OSyV
 o1t2wg3edrx3jD3997Yn7np/pnDKI62tWoKCkFl5PrMKqI36WfBEmsTDNNlSOwOlsO7I
 BHhCImMs0tRuQ2i0zupqyrb/LJxUJIhdX0rmC8FD031jns3JSk5RDYoiSTWKO02GgvjL
 WBYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TE4WH5V1PjNKPvtTMrDOivZD9WEtomgUlgWMan48ZxE=;
 b=Hc27S1MSU6kzUXPD7fqlAcyUi6XwFk3l7pWXowTbb8qFcqcLdtqQ870e9oeyQMlgE1
 7nlFqzBNHbVWgZTRInouzxWpLWgngi+oY2bm2vPvPCaqj+NiuPjwlLpRFDo7fYSfhbvU
 G5Ul7YCHj1kjvRvmI/znjsM9+M3DKeQg122oR4afyZ/BBhIH85ZY7kdU53TSC7qwEcPY
 nZVZxg6EQqnZ94wfU7lJ8mQh+DogbTrS5q+dytWJ134c8j7jnBjd0lStHJQTCLHEd5p+
 qGuYH1sb5CAwAk3fCMcoCC/L8QX00mEDziFzeGEDMkuJuvJk7mAaxyDNu6NfPSu/nQkH
 NsTA==
X-Gm-Message-State: AOAM532FzePcYQqCWq8MVzbyKHZmlQoqFeVjlQWF6xY3sMrSmZX0jbYL
 BUB+L2wsEjkJ9ER6fOngoNE=
X-Google-Smtp-Source: ABdhPJxdhVAyLhJhlakixUSaEi7TlhaMIolqf0rTviYwGQnxqsQXqtWf5IDyvqA5lL++d6/M9sCEfQ==
X-Received: by 2002:a65:66c4:: with SMTP id c4mr10209304pgw.442.1595754442248; 
 Sun, 26 Jul 2020 02:07:22 -0700 (PDT)
Received: from localhost.localdomain ([1.186.115.27])
 by smtp.gmail.com with ESMTPSA id a129sm1608215pfd.165.2020.07.26.02.07.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Jul 2020 02:07:21 -0700 (PDT)
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
To: mchehab@kernel.org, sakari.ailus@linux.intel.com,
 gregkh@linuxfoundation.org
Subject: [PATCH v3 1/4] staging: media: atomisp: fix style of block comments
Date: Sun, 26 Jul 2020 14:35:10 +0530
Message-Id: <20200726090512.20574-1-bharadwaj.rohit8@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
References: <20200726062541.11304-1-bharadwaj.rohit8@gmail.com>
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
v3: change patch subject prefix
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
