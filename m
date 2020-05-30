Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1441E8E6E
	for <lists+driverdev-devel@lfdr.de>; Sat, 30 May 2020 08:56:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5900B87516;
	Sat, 30 May 2020 06:56:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bS8ot9fr5jeQ; Sat, 30 May 2020 06:56:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 010E387637;
	Sat, 30 May 2020 06:56:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD1031BF2C8
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A48E188493
 for <devel@linuxdriverproject.org>; Sat, 30 May 2020 06:56:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FGZLk+pNluD9 for <devel@linuxdriverproject.org>;
 Sat, 30 May 2020 06:56:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B1331885DB
 for <devel@driverdev.osuosl.org>; Sat, 30 May 2020 06:56:04 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6955E221F1;
 Sat, 30 May 2020 06:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590821764;
 bh=scAvoLDDGn5cq3ZLD2TTb4DoukfwOFpBqOOQshZmdXg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gtUjHPF4pvuZQE6KtrK5iJ+dYC5RdKOpOKuQABgncK4ZIvZB6erGclHUB9G7uwqyx
 W1EK+Xnve/unhrNMX1dDtbQpBYkQemW3gq87TjszuOU5ZKZ4jBhumXseOQIs5wkyFE
 qFkh761p5cNJoHoN7N5UDY8MsKXhem1rWb/jDRFM=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jevPW-001hqw-A6; Sat, 30 May 2020 08:56:02 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH v2 36/41] media: atomisp: print firmware data during load
Date: Sat, 30 May 2020 08:55:53 +0200
Message-Id: <0cad0cb793ea9946043b8a02112673165e24ec72.1590821410.git.mchehab+huawei@kernel.org>
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

While there's a way to list the firmware binaries in runtime,
it is worth to also print it during firmware load.

One advantage is that this code also introduces additional
checks with regards to invalid firmware types, which can be
useful to identify problems.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/sh_css_firmware.c       | 48 ++++++++++++++++++-
 1 file changed, 47 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
index 63415356c36d..7cd27707a35f 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_firmware.c
@@ -206,6 +206,20 @@ sh_css_check_firmware_version(struct device *dev, const char *fw_data)
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
+	[IA_CSS_ACC_OUTPUT] = 		"Accel for output",
+	[IA_CSS_ACC_VIEWFINDER] = 	"Accel for viewfinder",
+	[IA_CSS_ACC_STANDALONE] = 	"Stand-alone accel",
+};
+
 int
 sh_css_load_firmware(struct device *dev, const char *fw_data,
 		     unsigned int fw_size) {
@@ -276,13 +290,45 @@ sh_css_load_firmware(struct device *dev, const char *fw_data,
 		if (bi->blob.offset + bi->blob.size > fw_size)
 			return -EINVAL;
 
+		switch (bd.header.type) {
+		case ia_css_isp_firmware:
+			if (bd.header.info.isp.type > IA_CSS_ACC_STANDALONE) {
+				dev_err(dev, "binary #%2d: invalid SP type\n",
+					i);
+				return -EINVAL;
+			}
+
+			dev_dbg(dev,
+				"binary #%-2d type %s (%s), binary id is %2d: %s\n",
+				i,
+				fw_type_name[bd.header.type],
+				fw_acc_type_name[bd.header.info.isp.type],
+				bd.header.info.isp.sp.id,
+				bd.name);
+			break;
+		case ia_css_sp_firmware:
+		case ia_css_bootloader_firmware:
+		case ia_css_acc_firmware:
+			dev_dbg(dev,
+				"binary #%-2d type %s: %s\n",
+				i, fw_type_name[bd.header.type],
+				bd.name);
+		default:
+			if (bd.header.info.isp.type > IA_CSS_ACC_STANDALONE) {
+				dev_err(dev,
+					"binary #%2d: invalid firmware type\n",
+					i);
+				return -EINVAL;
+			}
+			break;
+		}
+
 		if (bi->type == ia_css_sp_firmware) {
 			if (i != SP_FIRMWARE)
 				return -EINVAL;
 			err = setup_binary(bi, fw_data, &sh_css_sp_fw, i);
 			if (err)
 				return err;
-			dev_dbg(dev, "firmware #%d (SP), name %s\n", i, bd.name);
 
 		} else {
 			/* All subsequent binaries (including bootloaders) (i>NUM_OF_SPS) are ISP firmware */
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
