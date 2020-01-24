Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28390148A4C
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 15:46:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C6A8D86DB0;
	Fri, 24 Jan 2020 14:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yJWXKFg5NPUs; Fri, 24 Jan 2020 14:46:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3A2FC86D8D;
	Fri, 24 Jan 2020 14:46:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 431451BF3AE
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3A2598840C
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TDbLjlndKbmQ for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 14:46:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2F77488400
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 14:46:38 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D52B1AFCB;
 Fri, 24 Jan 2020 14:46:36 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 09/22] staging: vc04_services: Get rid of
 vchiq_platform_videocore_wanted()
Date: Fri, 24 Jan 2020 15:46:03 +0100
Message-Id: <20200124144617.2213-10-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The function always returns true, which makes a whole bunch of code
useless.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  5 ---
 .../interface/vchiq_arm/vchiq_arm.c           | 34 +++----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  3 --
 3 files changed, 5 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 65e26a90c1db..a7f72dba2e20 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -257,11 +257,6 @@ int vchiq_dump_platform_state(void *dump_context)
 	return vchiq_dump(dump_context, buf, len + 1);
 }
 
-int
-vchiq_platform_videocore_wanted(struct vchiq_state *state)
-{
-	return 1; // autosuspend not supported - videocore always wanted
-}
 void
 vchiq_platform_handle_timeout(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 3c374686ce89..a90d6fbbb54b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2253,22 +2253,6 @@ vchiq_fops = {
  * Autosuspend related functionality
  */
 
-int
-vchiq_videocore_wanted(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	if (!arm_state)
-		/* autosuspend not supported - always return wanted */
-		return 1;
-	else if (!arm_state->videocore_use_count)
-		/* usage count zero - check for override unless we're forcing */
-		return vchiq_platform_videocore_wanted(state);
-	else
-		/* non-zero usage count - videocore still required */
-		return 1;
-}
-
 static enum vchiq_status
 vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
 	struct vchiq_header *header,
@@ -2513,8 +2497,7 @@ need_resume(struct vchiq_state *state)
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
 
 	return (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) &&
-			(arm_state->vc_resume_state < VC_RESUME_REQUESTED) &&
-			vchiq_videocore_wanted(state);
+			(arm_state->vc_resume_state < VC_RESUME_REQUESTED);
 }
 
 /* Initiate suspend via slot handler. Should be called with the write lock
@@ -2736,17 +2719,10 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 	--arm_state->videocore_use_count;
 	--(*entity_uc);
 
-	if (!vchiq_videocore_wanted(state)) {
-		vchiq_log_info(vchiq_susp_log_level,
-			"%s %s count %d, state count %d - suspending",
-			__func__, entity, *entity_uc,
-			arm_state->videocore_use_count);
-		vchiq_arm_vcsuspend(state);
-	} else
-		vchiq_log_trace(vchiq_susp_log_level,
-			"%s %s count %d, state count %d",
-			__func__, entity, *entity_uc,
-			arm_state->videocore_use_count);
+	vchiq_log_trace(vchiq_susp_log_level,
+		"%s %s count %d, state count %d",
+		__func__, entity, *entity_uc,
+		arm_state->videocore_use_count);
 
 unlock:
 	write_unlock_bh(&arm_state->susp_res_lock);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 1f1ec679584b..beac1469d54d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -112,9 +112,6 @@ vchiq_release_service(unsigned int handle);
 extern enum vchiq_status
 vchiq_check_service(struct vchiq_service *service);
 
-extern int
-vchiq_platform_videocore_wanted(struct vchiq_state *state);
-
 extern void
 vchiq_dump_platform_use_state(struct vchiq_state *state);
 
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
