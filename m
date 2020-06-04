Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 366481EEC50
	for <lists+driverdev-devel@lfdr.de>; Thu,  4 Jun 2020 22:47:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40E20883E9;
	Thu,  4 Jun 2020 20:47:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hrk0uYQgZ1MD; Thu,  4 Jun 2020 20:47:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B9DDF883D6;
	Thu,  4 Jun 2020 20:47:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 551041BF2C6
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5082C88375
 for <devel@linuxdriverproject.org>; Thu,  4 Jun 2020 20:47:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yUcIjZdhr+Oo for <devel@linuxdriverproject.org>;
 Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1F2B9882B7
 for <devel@driverdev.osuosl.org>; Thu,  4 Jun 2020 20:47:09 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C96F8207ED;
 Thu,  4 Jun 2020 20:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591303628;
 bh=Log6SWQTxsYpVF33fzIXGDOjHxh7iIO6XU823Wot5zs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Y4B81oxEoJDir5oj3zQwUjcub8lh6hDhZFb3WlJdDXCtAaGHHJpHojnxvOS6kWeNV
 rtGqbqkOZ/g9/wWExaQysPvRCb5Aocw7QRQF4RVI/mj+0pooX+X12Gl9OgatNCg0a1
 XpY+ZH/zF+MVByZFNLUToI/xxzpWPiRLmYBNOWwQ=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jgwlW-0004Al-Sd; Thu, 04 Jun 2020 22:47:06 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 4/5] media: atomisp: change clock source default for ISP2401
Date: Thu,  4 Jun 2020 22:47:04 +0200
Message-Id: <37f290eeb7f0c26b93fe34223d45d1bbce3e8e0c.1591303518.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1591303518.git.mchehab+huawei@kernel.org>
References: <cover.1591303518.git.mchehab+huawei@kernel.org>
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

There's a notice there stating that the PLL is not reliable
for CHT. Yet, it tries to read it via the BIOS. Well,
this will fail (at least with the devices I checked the
DSDT tables). So, change the logic in a way that it will
change the default, depending on the ISP version.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/atomisp_gmin_platform.c  | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index cb02806274d1..a14326111b26 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -493,9 +493,23 @@ static struct gmin_subdev *gmin_subdev_add(struct v4l2_subdev *subdev)
 
 	gmin_subdevs[i].subdev = subdev;
 	gmin_subdevs[i].clock_num = gmin_get_var_int(dev, false, "CamClk", 0);
-	/*WA:CHT requires XTAL clock as PLL is not stable.*/
+	/*
+	 * FIXME:
+	 * 	WA:CHT requires XTAL clock as PLL is not stable.
+	 *
+	 * However, such data doesn't seem to be present at the _DSM
+	 * table under the GUID dc2f6c4f-045b-4f1d-97b9-882a6860a4be.
+	 * So, let's change the default according with the ISP version,
+	 * but allowing it to be overridden by BIOS or by DMI match tables.
+	 */
+	if (IS_ISP2401)
+		gmin_subdevs[i].clock_src = VLV2_CLK_XTAL_25_0MHz;
+	else
+		gmin_subdevs[i].clock_src = VLV2_CLK_PLL_19P2MHZ;
+
 	gmin_subdevs[i].clock_src = gmin_get_var_int(dev, false, "ClkSrc",
-				    VLV2_CLK_PLL_19P2MHZ);
+						     gmin_subdevs[i].clock_src);
+
 	gmin_subdevs[i].csi_port = gmin_get_var_int(dev, false, "CsiPort", 0);
 	gmin_subdevs[i].csi_lanes = gmin_get_var_int(dev, false, "CsiLanes", 1);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
