Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7672B233B30
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jul 2020 00:18:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AD9B203F9;
	Thu, 30 Jul 2020 22:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rk1oBHPQNNzt; Thu, 30 Jul 2020 22:18:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EEAFD2042A;
	Thu, 30 Jul 2020 22:18:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E60721BF2F0
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 22:18:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E2CAE87E3B
 for <devel@linuxdriverproject.org>; Thu, 30 Jul 2020 22:18:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nfqjzxC0RW1p for <devel@linuxdriverproject.org>;
 Thu, 30 Jul 2020 22:18:35 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from relay11.mail.gandi.net (relay11.mail.gandi.net [217.70.178.231])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0CE5F87EAF
 for <devel@driverdev.osuosl.org>; Thu, 30 Jul 2020 22:18:34 +0000 (UTC)
Received: from localhost.localdomain (unknown [46.106.42.139])
 (Authenticated sender: cengiz@kernel.wtf)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 2AB1D100003;
 Thu, 30 Jul 2020 22:18:26 +0000 (UTC)
From: Cengiz Can <cengiz@kernel.wtf>
To: dan.carpenter@oracle.com,
	andy.shevchenko@gmail.com
Subject: [PATCH v2] staging: atomisp: move null check to earlier point
Date: Fri, 31 Jul 2020 01:17:38 +0300
Message-Id: <20200730221737.51569-1-cengiz@kernel.wtf>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200730084545.GB1793@kadam>
References: <20200730084545.GB1793@kadam>
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
Cc: devel@driverdev.osuosl.org, mchehab@kernel.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, sakari.ailus@linux.intel.com, cengiz@kernel.wtf,
 andriy.shevchenko@linux.intel.com, linux-media@vger.kernel.org
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

/*  v------Dereferenced here */
if (gs->v2p8_gpio >= 0) {
    ...
}
```

To avoid the issue, null check has been moved to an earlier point
and return semantics has been changed to reflect this exception.

Please do note that this change introduces a new return value to
`gmin_v2p8_ctrl`.

[NEW] - raise a WARN and return -ENODEV if there are no subdevices.
      - return result of `gpio_request` or `gpio_direction_output`.
      - return 0 if GPIO is ON.
      - return results of `regulator_enable` or `regulator_disable`.
      - according to PMIC type, return result of `axp_regulator_set`
        or `gmin_i2c_write`.
      - return -EINVAL if unknown PMIC type.

Caught-by: Coverity Static Analyzer CID 1465536
Signed-off-by: Cengiz Can <cengiz@kernel.wtf>
---
 drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
index 0df46a1af5f0..1ad0246764a6 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_gmin_platform.c
@@ -871,6 +871,9 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, int on)
 	int ret;
 	int value;
 
+	if (WARN_ON(!gs))
+		return -ENODEV;
+
 	if (gs->v2p8_gpio >= 0) {
 		pr_info("atomisp_gmin_platform: 2.8v power on GPIO %d\n",
 			gs->v2p8_gpio);
@@ -881,7 +884,7 @@ static int gmin_v2p8_ctrl(struct v4l2_subdev *subdev, int on)
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
