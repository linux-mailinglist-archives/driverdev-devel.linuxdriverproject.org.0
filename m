Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 546791E5755
	for <lists+driverdev-devel@lfdr.de>; Thu, 28 May 2020 08:14:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C859688165;
	Thu, 28 May 2020 06:14:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LFj9KXc6lNia; Thu, 28 May 2020 06:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CFFBC87E91;
	Thu, 28 May 2020 06:14:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7ECC11BF9B5
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7BE25888A4
 for <devel@linuxdriverproject.org>; Thu, 28 May 2020 06:14:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nK6JiVbDKAAj for <devel@linuxdriverproject.org>;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6CE5D88907
 for <devel@driverdev.osuosl.org>; Thu, 28 May 2020 06:14:26 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B75A21655;
 Thu, 28 May 2020 06:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590646466;
 bh=3goC8OB6qeZ0rHTPEgwao31zlEt51Co3ej14dAQU+3k=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rRO9kaQBA0u7H97v0soctWi1/YJAdSi6Mp8nbOx8W3IzwrUPkRAB8tG68WyeqULDz
 ymVV5mTixMU5zFvJ61EWQ0TTnGCVxHFDVItREyrzY57UqmEV75u55J3hzO7LUg6q78
 tYWaWQOLaN2cqrKdrYDB9Mfe3NbTbOVEvGxdfSrA=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jeBo8-000VHt-4s; Thu, 28 May 2020 08:14:24 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 12/20] media: atomisp: get rid of a warning message
Date: Thu, 28 May 2020 08:14:12 +0200
Message-Id: <559ae093b059c6953f77b23346324c4fdd5ca6c5.1590646166.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590646166.git.mchehab+huawei@kernel.org>
References: <cover.1590646166.git.mchehab+huawei@kernel.org>
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
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There's a warning message about an unused code. The code that
were using it were commented out, due to a problem causing the
firmware load to fail on the machines we're using for testing.

Change the place where we're commenting the code out, in order
to avoid the warning.

Fixes: 95d1f398c4dc ("media: atomisp: keep the ISP powered on when setting it")
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../staging/media/atomisp/pci/atomisp_v4l2.c   | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index b30a2e54067c..c89d477a3948 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -734,6 +734,10 @@ static int atomisp_mrfld_pre_power_down(struct atomisp_device *isp)
 * WA for DDR DVFS enable/disable
 * By default, ISP will force DDR DVFS 1600MHz before disable DVFS
 */
+
+#if 0
+// Used only by atomisp_mrfld_power
+
 static void punit_ddr_dvfs_enable(bool enable)
 {
 	int door_bell = 1 << 8;
@@ -758,9 +762,12 @@ static void punit_ddr_dvfs_enable(bool enable)
 	if (max_wait == -1)
 		pr_info("DDR DVFS, door bell is not cleared within 3ms\n");
 }
+#endif
 
 static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
 {
+// FIXME: at least with ISP2401, the code below causes the driver to break
+#if 0
 	unsigned long timeout;
 	u32 val = enable ? MRFLD_ISPSSPM0_IUNIT_POWER_ON :
 			   MRFLD_ISPSSPM0_IUNIT_POWER_OFF;
@@ -817,22 +824,21 @@ static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
 
 	dev_err(isp->dev, "IUNIT power-%s timeout.\n", enable ? "on" : "off");
 	return -EBUSY;
+#else
+	return 0;
+#endif
 }
 
 /* Workaround for pmu_nc_set_power_state not ready in MRFLD */
 int atomisp_mrfld_power_down(struct atomisp_device *isp)
 {
-	return 0;
-// FIXME: at least with ISP2401, the code below causes the driver to break
-//	return atomisp_mrfld_power(isp, false);
+	return atomisp_mrfld_power(isp, false);
 }
 
 /* Workaround for pmu_nc_set_power_state not ready in MRFLD */
 int atomisp_mrfld_power_up(struct atomisp_device *isp)
 {
-	return 0;
-// FIXME: at least with ISP2401, the code below causes the driver to break
-//	return atomisp_mrfld_power(isp, true);
+	return atomisp_mrfld_power(isp, true);
 }
 
 int atomisp_runtime_suspend(struct device *dev)
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
