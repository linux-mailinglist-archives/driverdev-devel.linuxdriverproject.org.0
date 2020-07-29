Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E728232045
	for <lists+driverdev-devel@lfdr.de>; Wed, 29 Jul 2020 16:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA89086739;
	Wed, 29 Jul 2020 14:21:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id un0LM9BU0ycF; Wed, 29 Jul 2020 14:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 149B8867B9;
	Wed, 29 Jul 2020 14:21:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4A8EE1BF5A6
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 14:21:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 2853A23524
 for <devel@linuxdriverproject.org>; Wed, 29 Jul 2020 14:21:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZyuVK3y895UW for <devel@linuxdriverproject.org>;
 Wed, 29 Jul 2020 14:21:31 +0000 (UTC)
X-Greylist: delayed 00:14:28 by SQLgrey-1.7.6
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
 by silver.osuosl.org (Postfix) with ESMTPS id C75362046E
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 14:21:30 +0000 (UTC)
Received: from relay5-d.mail.gandi.net (unknown [217.70.183.197])
 by mslow2.mail.gandi.net (Postfix) with ESMTP id CEE513A8DEF
 for <devel@driverdev.osuosl.org>; Wed, 29 Jul 2020 13:57:50 +0000 (UTC)
X-Originating-IP: 84.44.14.226
Received: from nexussix.ar.arcelik (unknown [84.44.14.226])
 (Authenticated sender: cengiz@kernel.wtf)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 758C61C0012;
 Wed, 29 Jul 2020 13:57:42 +0000 (UTC)
From: Cengiz Can <cengiz@kernel.wtf>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH] staging: atomisp: move null check to earlier point
Date: Wed, 29 Jul 2020 16:56:37 +0300
Message-Id: <20200729135636.9220-1-cengiz@kernel.wtf>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, Cengiz Can <cengiz@kernel.wtf>,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

`find_gmin_subdev` function that returns a pointer to `struct
gmin_subdev` can return NULL.

In `gmin_v2p8_ctrl` there's a call to this function but the possibility
of a NULL was not checked before its being dereferenced. ie:

```
/* Acquired here --------v */
struct gmin_subdev *gs = find_gmin_subdev(subdev);
int ret;
int value;

/*  v------Dereferenced here */
if (gs->v2p8_gpio >= 0) {
	pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
		gs->v2p8_gpio);
	ret = gpio_request(gs->v2p8_gpio, "camera_v2p8");
	if (!ret)
		ret = gpio_direction_output(gs->v2p8_gpio, 0);
	if (ret)
		pr_err("V2P8 GPIO initialization failed\n");
}
```

I have moved the NULL check before deref point.

Caught-by: Coverity Static Analyzer CID 1465536
Signed-off-by: Cengiz Can <cengiz@kernel.wtf>
---
 drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index 0df46a1af5f0..8e9c5016f299 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -871,6 +871,11 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, int on)
 	int ret;
 	int value;
 
+	if (!gs) {
+		pr_err("Unable to find gmin subdevice\n");
+		return -EINVAL;
+	}
+
 	if (gs->v2p8_gpio >= 0) {
 		pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
 			gs->v2p8_gpio);
@@ -881,7 +886,7 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, int on)
 			pr_err("V2P8 GPIO initialization failed\n");
 	}
 
-	if (!gs || gs->v2p8_on == on)
+	if (gs->v2p8_on == on)
 		return 0;
 	gs->v2p8_on = on;
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
