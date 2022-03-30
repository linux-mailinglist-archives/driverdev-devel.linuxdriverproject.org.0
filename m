Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3E994EC055
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Mar 2022 13:49:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6B53540CC0;
	Wed, 30 Mar 2022 11:49:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k-dy2EKEH9hm; Wed, 30 Mar 2022 11:49:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1659540CBF;
	Wed, 30 Mar 2022 11:49:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2FDB21BF5A4
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:49:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1C5E440CB0
 for <devel@linuxdriverproject.org>; Wed, 30 Mar 2022 11:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4LzyYkOMCI4P for <devel@linuxdriverproject.org>;
 Wed, 30 Mar 2022 11:49:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CAC1D4049A
 for <devel@driverdev.osuosl.org>; Wed, 30 Mar 2022 11:49:09 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E825CB81C3B;
 Wed, 30 Mar 2022 11:49:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0DF0C340F2;
 Wed, 30 Mar 2022 11:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1648640946;
 bh=9kDFyJtz5aRFD1HOBnwM1kO3is+NlX0c7whwfOn5IIw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=h9mWYZJBTyZkPr6nfbe1cM+4xo7ogYrgrRRAHmv/uE06SF4T75FyNLUtImi+b1M28
 6dvbYKOv6ThPIaB/8C0pbVRlZ3EJ8xHoXMBRLnOPP2gg9i9QNIE1tzXPRHXl4NUSPV
 QbxYUiNSGy8Ti5DouMpgCXlK8pTVIGmo5ghmEEfiSub/y5eS2f45jMJjFbVj4dpnRU
 RHp07r2DtykDJymCQ3yWh/Aa+VEurqOWDeJcPeGaHQCiOvdVVZtlxEkRfnLG6ado56
 fRmeMci8Kn76HUfUgFCiaYFp5bQgAoEhFhPPXgT1V4dmifbPDKya4RdfgXoTjPskB/
 /YwX1okt34fiQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.16 21/59] media: atomisp_gmin_platform: Add DMI
 quirk to not turn AXP ELDO2 regulator off on some boards
Date: Wed, 30 Mar 2022 07:47:53 -0400
Message-Id: <20220330114831.1670235-21-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220330114831.1670235-1-sashal@kernel.org>
References: <20220330114831.1670235-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org, Hans de Goede <hdegoede@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Hans de Goede <hdegoede@redhat.com>

[ Upstream commit 2c39a01154ea57d596470afa1d278e3be3b37f6a ]

The TrekStor SurfTab duo W1 10.1 has a hw bug where turning eldo2 back on
after having turned it off causes the CPLM3218 ambient-light-sensor on
the front camera sensor's I2C bus to crash, hanging the bus.

Add a DMI quirk table for systems on which to leave eldo2 on.

Note an alternative fix is to turn off the CPLM3218 ambient-light-sensor
as long as the camera sensor is being used, this is what Windows seems
to do as a workaround (based on analyzing the DSDT). But that is not
easy to do cleanly under Linux.

Link: https://lore.kernel.org/linux-media/20220116215204.307649-10-hdegoede@redhat.com
Signed-off-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../media/atomisp/pci/atomisp_gmin_platform.c  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index 62dc06e22476..cd0a771454da 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -729,6 +729,21 @@ static int axp_regulator_set(struct device *dev, struct gmin_subdev *gs,
 	return 0;
 }
 
+/*
+ * Some boards contain a hw-bug where turning eldo2 back on after having turned
+ * it off causes the CPLM3218 ambient-light-sensor on the image-sensor's I2C bus
+ * to crash, hanging the bus. Do not turn eldo2 off on these systems.
+ */
+static const struct dmi_system_id axp_leave_eldo2_on_ids[] = {
+	{
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "TrekStor"),
+			DMI_MATCH(DMI_PRODUCT_NAME, "SurfTab duo W1 10.1 (VT4)"),
+		},
+	},
+	{ }
+};
+
 static int axp_v1p8_on(struct device *dev, struct gmin_subdev *gs)
 {
 	int ret;
@@ -763,6 +778,9 @@ static int axp_v1p8_off(struct device *dev, struct gmin_subdev *gs)
 	if (ret)
 		return ret;
 
+	if (dmi_check_system(axp_leave_eldo2_on_ids))
+		return 0;
+
 	ret = axp_regulator_set(dev, gs, gs->eldo2_sel_reg, gs->eldo2_1p8v,
 				ELDO_CTRL_REG, gs->eldo2_ctrl_shift, false);
 	return ret;
-- 
2.34.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
