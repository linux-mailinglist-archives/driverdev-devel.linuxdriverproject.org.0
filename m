Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A511E8E8E
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 08:57:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 45EF2885E5;
	Sat, 30 May 2020 06:57:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kTf49a6M5Q1r; Sat, 30 May 2020 06:57:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 278C088624;
	Sat, 30 May 2020 06:56:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BA9441BF2C8
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B42228851A
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 75+d+7dvGYqK for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 06:56:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AC8FB885D8
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 06:56:04 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 695A0221F2;
 Sat, 30 May 2020 06:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590821764;
 bh=lnroMgkuu/2OfbTdrWlWyV07vIHB3BjJje5yLAQP5Lk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wEpwg171iBCXVPd2hFHVW1Qz9Qi3921XueYCD0Bq/VvrIEDOEQCWNUJVqTB7xPxCC
 04uTsWhYqzFKBVB3qQCiZ5viQHJeliMaTZ5nZqribwPooETmqbEhWkbpSil7/+aem3
 nVSEcCj+ABjdP0+jArdGJwfv1PJ9Q4wmgGUwta6A=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jevPW-001hqr-91; Sat, 30 May 2020 08:56:02 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 35/41] media: atomisp: provide more details about the
 firmware binaries
Date: Sat, 30 May 2020 08:55:52 +0200
Message-Id: <a82883dc24db390b47784ff81a276e8471a78ff3.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
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

In order to make easier to identify what a firmware file
contains, add more info at the firmware dump log facility.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/atomisp_compat_css20.c  | 39 +++++++++++++++++--
 .../media/atomisp/pci/ia_css_acc_types.h      |  4 +-
 .../media/atomisp/pci/sh_css_firmware.c       |  2 +
 3 files changed, 40 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index 76e5eda0a8a8..4d2441f07630 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -4306,6 +4306,20 @@ int atomisp_css_dump_sp_raw_copy_linecount(bool reduced)
 	return 0;
 }
 
+static const char *fw_type_name[] = {
+	[ia_css_sp_firmware]		= "SP",
+	[ia_css_isp_firmware]		= "ISP",
+	[ia_css_bootloader_firmware]	= "BootLoader",
+	[ia_css_acc_firmware]		= "accel",
+};
+
+static const char *fw_acc_type_name[] = {
+	[IA_CSS_ACC_NONE] = 		"Normal",
+	[IA_CSS_ACC_OUTPUT] = 		"Accel stage on output",
+	[IA_CSS_ACC_VIEWFINDER] = 	"Accel stage on viewfinder",
+	[IA_CSS_ACC_STANDALONE] = 	"Stand-alone acceleration",
+};
+
 int atomisp_css_dump_blob_infor(void)
 {
 	struct ia_css_blob_descr *bd = sh_css_blob_info;
@@ -4316,9 +4330,28 @@ int atomisp_css_dump_blob_infor(void)
 	if (!bd)
 		return -EPERM;
 
-	for (i = 1; i < sh_css_num_binaries; i++)
-		dev_dbg(atomisp_dev, "Num%d binary id is %d, name is %s\n", i,
-			bd[i - 1].header.info.isp.sp.id, bd[i - 1].name);
+	/*
+	 * The sh_css_load_firmware function discard the initial
+	 * "SPS" binaries
+	 */
+	for (i = 0; i < sh_css_num_binaries - NUM_OF_SPS; i++) {
+		switch (bd[i].header.type) {
+		case ia_css_isp_firmware:
+			dev_dbg(atomisp_dev,
+				"Num%2d type %s (%s), binary id is %2d, name is %s\n",
+				i + NUM_OF_SPS,
+				fw_type_name[bd[i].header.type],
+				fw_acc_type_name[bd[i].header.info.isp.type],
+				bd[i].header.info.isp.sp.id,
+				bd[i].name);
+			break;
+		default:
+			dev_dbg(atomisp_dev,
+				"Num%2d type %s, name is %s\n",
+				i + NUM_OF_SPS, fw_type_name[bd[i].header.type],
+				bd[i].name);
+		}
+	}
 
 	return 0;
 }
diff --git a/drivers/staging/media/atomisp/pci/ia_css_acc_types.h b/drivers/staging/media/atomisp/pci/ia_css_acc_types.h
index 55b4dc9bb5ea..557fe8a3c18f 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_acc_types.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_acc_types.h
@@ -62,8 +62,8 @@ enum ia_css_cell_type {
  */
 enum ia_css_fw_type {
 	ia_css_sp_firmware,		/** Firmware for the SP */
-	ia_css_isp_firmware,	/** Firmware for the ISP */
-	ia_css_bootloader_firmware, /** Firmware for the BootLoader */
+	ia_css_isp_firmware,		/** Firmware for the ISP */
+	ia_css_bootloader_firmware,	/** Firmware for the BootLoader */
 	ia_css_acc_firmware		/** Firmware for accelrations */
 };
 
diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index 5009f47abf01..63415356c36d 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -282,6 +282,8 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 			err = setup_binary(bi, fw_data, &sh_css_sp_fw, i);
 			if (err)
 				return err;
+			dev_dbg(dev, "firmware #%d (SP), name %s\n", i, bd.name);
+
 		} else {
 			/* All subsequent binaries (including bootloaders) (i>NUM_OF_SPS) are ISP firmware */
 			if (i < NUM_OF_SPS)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
