Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A17F20B325
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jun 2020 16:05:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C08EF87EC7;
	Fri, 26 Jun 2020 14:05:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CgAP7m17w1x6; Fri, 26 Jun 2020 14:05:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BAB187EC2;
	Fri, 26 Jun 2020 14:05:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 11A5E1BF3DE
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0692987DC1
 for <devel@linuxdriverproject.org>; Fri, 26 Jun 2020 14:05:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GQh7dWzeqswG for <devel@linuxdriverproject.org>;
 Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 67F66879E9
 for <devel@driverdev.osuosl.org>; Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de
 [95.90.213.197])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 183E220E65;
 Fri, 26 Jun 2020 14:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1593180302;
 bh=7/2GiHT+xOcz6nhxikdh6BpA4sfdaRgRyRNN5TGFLZc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FmVL8y6fRZEWk7y+1aXncux9dQiXVRIRKAcqLl/l+UsI7mAFsWZKyJz9Ek9f/CygP
 UcJyVm/mBa2U72SezttADzerhtJHxU5WF9D06N+QCLH3cnVz3wvqSlKd3fsZWcJUUL
 ezD/mFyD1+uKhB0zZwW1rJzHgbm/Fha/RmH0JXiU=
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
 (envelope-from <mchehab@kernel.org>)
 id 1jooyS-00HKwP-6Y; Fri, 26 Jun 2020 16:05:00 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Subject: [PATCH 6/7] media: atomisp: split add from find subdev
Date: Fri, 26 Jun 2020 16:04:58 +0200
Message-Id: <c4953a78554a2443373189dcda2e63aef489fbc2.1593180146.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1593180146.git.mchehab+huawei@kernel.org>
References: <cover.1593180146.git.mchehab+huawei@kernel.org>
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
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

There's only one place where a subdev can be added: when the
sensor driver registers it. Trying to do it elsewhere will
cause problems, as the detection code needs to access the
I2C bus in order to probe some things.

Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index 31ec21a3ba84..3136759bf96f 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -202,6 +202,8 @@ int atomisp_register_i2c_module(struct v4l2_subdev *subdev,
 	 * gmin_subdev struct is already initialized for us.
 	 */
 	gs = find_gmin_subdev(subdev);
+	if (!gs)
+		return -ENODEV;
 
 	pdata.subdevs[i].type = type;
 	pdata.subdevs[i].port = gs->csi_port;
@@ -726,7 +728,7 @@ static struct gmin_subdev *find_gmin_subdev(struct v4l2_subdev *subdev)
 	for (i = 0; i < MAX_SUBDEVS; i++)
 		if (gmin_subdevs[i].subdev == subdev)
 			return &gmin_subdevs[i];
-	return gmin_subdev_add(subdev);
+	return NULL;
 }
 
 static int axp_regulator_set(struct device *dev, struct gmin_subdev *gs,
@@ -1077,7 +1079,7 @@ struct camera_sensor_platform_data *gmin_camera_platform_data(
     enum atomisp_input_format csi_format,
     enum atomisp_bayer_order csi_bayer)
 {
-	struct gmin_subdev *gs = find_gmin_subdev(subdev);
+	struct gmin_subdev *gs = gmin_subdev_add(subdev);
 
 	gs->csi_fmt = csi_format;
 	gs->csi_bayer = csi_bayer;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
