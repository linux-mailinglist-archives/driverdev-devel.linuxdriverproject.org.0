Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E47AA13E5D3
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jan 2020 18:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E82386594;
	Thu, 16 Jan 2020 17:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0HAxO_4-rgGl; Thu, 16 Jan 2020 17:17:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B852F86529;
	Thu, 16 Jan 2020 17:17:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53AE71BF2B0
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 506E687EAD
 for <devel@linuxdriverproject.org>; Thu, 16 Jan 2020 17:17:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DYWs1+AIidcP for <devel@linuxdriverproject.org>;
 Thu, 16 Jan 2020 17:17:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2A42F85A1D
 for <devel@driverdev.osuosl.org>; Thu, 16 Jan 2020 17:17:49 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D184E2075B;
 Thu, 16 Jan 2020 17:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195069;
 bh=1HtmT7m+kFaRKNM2WgnRVGCCkcls9ULYbGmvbiUNWpU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sgWMjhZUr6V1iPCupAmP4er6NOv76X8/hGz2qRqruqEMuAgQbJSFfiXjUFmWhunZd
 65WluACAqaUr3KB6ykIL00YF26TGzNg8Nx0mDbUTMxJVZeYXzhhGlODtnxH/lBUSYn
 OhgYeMWBZYhKyK2M3hH6WtnePN4RR7F13iudxfvc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 022/371] staging: bcm2835-camera: Abort probe if
 there is no camera
Date: Thu, 16 Jan 2020 12:11:30 -0500
Message-Id: <20200116171719.16965-22-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116171719.16965-1-sashal@kernel.org>
References: <20200116171719.16965-1-sashal@kernel.org>
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Sasha Levin <sashal@kernel.org>,
 devel@driverdev.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Stefan Wahren <stefan.wahren@i2se.com>

[ Upstream commit 7566f39dfdc11f8a97d5810c6e6295a88f97ef91 ]

Abort the probing of the camera driver in case there isn't a camera
actually connected to the Raspberry Pi. This solution also avoids a
NULL ptr dereference of mmal instance on driver unload.

Fixes: 7b3ad5abf027 ("staging: Import the BCM2835 MMAL-based V4L2 camera driver.")
Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../vc04_services/bcm2835-camera/bcm2835-camera.c        | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
index 377da037f31c..b521752d9aa0 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/bcm2835-camera.c
@@ -1849,6 +1849,12 @@ static int __init bm2835_mmal_init(void)
 	num_cameras = get_num_cameras(instance,
 				      resolutions,
 				      MAX_BCM2835_CAMERAS);
+
+	if (num_cameras < 1) {
+		ret = -ENODEV;
+		goto cleanup_mmal;
+	}
+
 	if (num_cameras > MAX_BCM2835_CAMERAS)
 		num_cameras = MAX_BCM2835_CAMERAS;
 
@@ -1948,6 +1954,9 @@ static int __init bm2835_mmal_init(void)
 	pr_info("%s: error %d while loading driver\n",
 		BM2835_MMAL_MODULE_NAME, ret);
 
+cleanup_mmal:
+	vchiq_mmal_finalise(instance);
+
 	return ret;
 }
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
