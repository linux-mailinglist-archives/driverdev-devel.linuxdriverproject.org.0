Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 568B42A3871
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Nov 2020 02:19:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DAE4A20500;
	Tue,  3 Nov 2020 01:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uwtbKn-AoeTt; Tue,  3 Nov 2020 01:19:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8C4B2204F8;
	Tue,  3 Nov 2020 01:19:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 418761BF28A
 for <devel@linuxdriverproject.org>; Tue,  3 Nov 2020 01:19:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3CC39204DD
 for <devel@linuxdriverproject.org>; Tue,  3 Nov 2020 01:19:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yOcRXi53fIFe for <devel@linuxdriverproject.org>;
 Tue,  3 Nov 2020 01:19:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id DE16620380
 for <devel@driverdev.osuosl.org>; Tue,  3 Nov 2020 01:19:19 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78D1422264;
 Tue,  3 Nov 2020 01:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1604366359;
 bh=K/SXxsNkThrwbE4r+ibPrqWEftAgxZ6uEO6Io1rGk3I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D0rXoHlSI62in4qQrdlxPc4O6OOslfSJM+743B9r5wjeXQYrCDZvXDcY6GNdb1PqW
 oeOKPTBIcEEk5/G1Ea2JaYrbxPxYpaKTYuyz6rkl6nMyfotcemnvQL4EaGMwALFL40
 vPJJs671MO4iWGmjgL1CukN86o8U42S+Loabib1s=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.9 29/35] staging: mmal-vchiq: Fix memory leak for
 vchiq_instance
Date: Mon,  2 Nov 2020 20:18:34 -0500
Message-Id: <20201103011840.182814-29-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201103011840.182814-1-sashal@kernel.org>
References: <20201103011840.182814-1-sashal@kernel.org>
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Seung-Woo Kim <sw0312.kim@samsung.com>, Jaehoon Chung <jh80.chung@samsung.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Seung-Woo Kim <sw0312.kim@samsung.com>

[ Upstream commit b6ae84d648954fae096d94faea1ddb6518b27841 ]

The vchiq_instance is allocated with vchiq_initialise() but never
freed properly. Fix memory leak for the vchiq_instance.

Reported-by: Jaehoon Chung <jh80.chung@samsung.com>
Signed-off-by: Seung-Woo Kim <sw0312.kim@samsung.com>
Link: https://lore.kernel.org/r/1603706150-10806-1-git-send-email-sw0312.kim@samsung.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index e798d494f00ff..bbf033ca47362 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -179,6 +179,9 @@ struct vchiq_mmal_instance {
 
 	/* ordered workqueue to process all bulk operations */
 	struct workqueue_struct *bulk_wq;
+
+	/* handle for a vchiq instance */
+	struct vchiq_instance *vchiq_instance;
 };
 
 static struct mmal_msg_context *
@@ -1840,6 +1843,7 @@ int vchiq_mmal_finalise(struct vchiq_mmal_instance *instance)
 
 	mutex_unlock(&instance->vchiq_mutex);
 
+	vchiq_shutdown(instance->vchiq_instance);
 	flush_workqueue(instance->bulk_wq);
 	destroy_workqueue(instance->bulk_wq);
 
@@ -1856,6 +1860,7 @@ EXPORT_SYMBOL_GPL(vchiq_mmal_finalise);
 int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 {
 	int status;
+	int err = -ENODEV;
 	struct vchiq_mmal_instance *instance;
 	static struct vchiq_instance *vchiq_instance;
 	struct vchiq_service_params params = {
@@ -1890,17 +1895,21 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	status = vchiq_connect(vchiq_instance);
 	if (status) {
 		pr_err("Failed to connect VCHI instance (status=%d)\n", status);
-		return -EIO;
+		err = -EIO;
+		goto err_shutdown_vchiq;
 	}
 
 	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 
-	if (!instance)
-		return -ENOMEM;
+	if (!instance) {
+		err = -ENOMEM;
+		goto err_shutdown_vchiq;
+	}
 
 	mutex_init(&instance->vchiq_mutex);
 
 	instance->bulk_scratch = vmalloc(PAGE_SIZE);
+	instance->vchiq_instance = vchiq_instance;
 
 	mutex_init(&instance->context_map_lock);
 	idr_init_base(&instance->context_map, 1);
@@ -1932,7 +1941,9 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 err_free:
 	vfree(instance->bulk_scratch);
 	kfree(instance);
-	return -ENODEV;
+err_shutdown_vchiq:
+	vchiq_shutdown(vchiq_instance);
+	return err;
 }
 EXPORT_SYMBOL_GPL(vchiq_mmal_init);
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
