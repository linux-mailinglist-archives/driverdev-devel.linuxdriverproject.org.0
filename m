Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6611E8E8B
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 08:57:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4B58E885FC;
	Sat, 30 May 2020 06:57:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WHME6JVqGP+i; Sat, 30 May 2020 06:57:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD4CE88612;
	Sat, 30 May 2020 06:56:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 420D81BF2C8
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D0D2875E0
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j5xI2rsXVVRk for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 06:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B67CF87617
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 06:56:04 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73456221F7;
 Sat, 30 May 2020 06:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590821764;
 bh=LjjzFw3NkkZPnbm04q5U6LrJoSCasK1Q3wt7fXKXAI8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IsAVHSpi58wzneYQNrOeArq/niTH89/+xIrnsFYxM51I4qyEDP6ZyhZckSdSHun0B
 Gl6OYiffK47eTtkRjg3wnk5CwTIGzhKHjEPrxwlCapPaD/nVXuvJdAYUZ2oljlpWJZ
 8Ba78sllRqe9Tcx/aLwImVnLmLNofGXdk6G/GJSA=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jevPW-001hr1-B7; Sat, 30 May 2020 08:56:02 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 37/41] media: atomisp: allow passing firmware name at
 modprobe time
Date: Sat, 30 May 2020 08:55:54 +0200
Message-Id: <eab84414f14e6efc165ca985d2a1f0d401138b19.1590821410.git.mchehab+huawei@kernel.org>
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

It can be useful to be able to test different firmware files
at modprobe time, in order to be able to test different
variants without much efforts.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/media/atomisp/pci/atomisp_v4l2.c  | 30 ++++++++++++-------
 1 file changed, 19 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 891c990ab857..dea420a77f0a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -95,6 +95,10 @@ int mipicsi_flag;
 module_param(mipicsi_flag, int, 0644);
 MODULE_PARM_DESC(mipicsi_flag, "mipi csi compression predictor algorithm");
 
+static char firmware_name[256];
+module_param_string(firmware_name, firmware_name, sizeof(firmware_name), 0);
+MODULE_PARM_DESC(firmware_name, "Firmware file name. Allows overriding the default firmware name.");
+
 /*set to 16x16 since this is the amount of lines and pixels the sensor
 exports extra. If these are kept at the 10x8 that they were on, in yuv
 downscaling modes incorrect resolutions where requested to the sensor
@@ -1455,19 +1459,23 @@ atomisp_load_firmware(struct atomisp_device *isp)
 	if (skip_fwload)
 		return NULL;
 
-	if ((isp->media_dev.hw_revision  >> ATOMISP_HW_REVISION_SHIFT)
-	     == ATOMISP_HW_REVISION_ISP2401)
-		fw_path = "shisp_2401a0_v21.bin";
+	if (firmware_name[0] != '\0') {
+		fw_path = firmware_name;
+	} else {
+		if ((isp->media_dev.hw_revision  >> ATOMISP_HW_REVISION_SHIFT)
+		    == ATOMISP_HW_REVISION_ISP2401)
+			fw_path = "shisp_2401a0_v21.bin";
 
-	if (isp->media_dev.hw_revision ==
-	    ((ATOMISP_HW_REVISION_ISP2401_LEGACY << ATOMISP_HW_REVISION_SHIFT)
-	     | ATOMISP_HW_STEPPING_A0))
-		fw_path = "shisp_2401a0_legacy_v21.bin";
+		if (isp->media_dev.hw_revision ==
+		    ((ATOMISP_HW_REVISION_ISP2401_LEGACY << ATOMISP_HW_REVISION_SHIFT)
+		    | ATOMISP_HW_STEPPING_A0))
+			fw_path = "shisp_2401a0_legacy_v21.bin";
 
-	if (isp->media_dev.hw_revision ==
-	    ((ATOMISP_HW_REVISION_ISP2400 << ATOMISP_HW_REVISION_SHIFT)
-	     | ATOMISP_HW_STEPPING_B0))
-		fw_path = "shisp_2400b0_v21.bin";
+		if (isp->media_dev.hw_revision ==
+		    ((ATOMISP_HW_REVISION_ISP2400 << ATOMISP_HW_REVISION_SHIFT)
+		    | ATOMISP_HW_STEPPING_B0))
+			fw_path = "shisp_2400b0_v21.bin";
+	}
 
 	if (!fw_path) {
 		dev_err(isp->dev, "Unsupported hw_revision 0x%x\n",
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
