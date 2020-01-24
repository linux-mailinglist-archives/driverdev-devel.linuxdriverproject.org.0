Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D10FF148A58
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 15:47:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 83FBE8848A;
	Fri, 24 Jan 2020 14:47:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Fc-PhfcX4004; Fri, 24 Jan 2020 14:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B8A9088515;
	Fri, 24 Jan 2020 14:47:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7AA81BF3AE
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D4ACD86D94
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NJIrgjN1cKcb for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 14:46:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CD92686CA5
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 14:46:47 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 71C8BAF32;
 Fri, 24 Jan 2020 14:46:46 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 21/22] staging: vc04_services: Get rid of the rest of
 suspend/resume state handling
Date: Fri, 24 Jan 2020 15:46:15 +0100
Message-Id: <20200124144617.2213-22-nsaenzjulienne@suse.de>
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

The only remaining state doesn't provide any information anymore nor the
completion that depends on it, which is set to complete_all() before any
user may wait on it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 49 -------------------
 .../interface/vchiq_arm/vchiq_arm.h           | 11 -----
 2 files changed, 60 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 049512589375..d81c2ed27ccc 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -48,10 +48,6 @@
 int vchiq_arm_log_level = VCHIQ_LOG_DEFAULT;
 int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
-#define VC_RESUME_NUM_OFFSET 1 /* number of values before idle which are -ve */
-static const char *const resume_state_names[] = {
-	"VC_RESUME_RESUMED"
-};
 /* The number of times we allow force suspend to timeout before actually
 ** _forcing_ suspend.  This is to cater for SW which fails to release vchiq
 ** correctly - we don't want to prevent ARM suspend indefinitely in this case.
@@ -2342,11 +2338,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 		atomic_set(&arm_state->ka_use_ack_count, 0);
 		atomic_set(&arm_state->ka_release_count, 0);
 
-		init_completion(&arm_state->vc_resume_complete);
-		/* Initialise to 'done' state.  We only want to block on resume
-		 * completion while videocore is suspended. */
-		set_resume_state(arm_state, VC_RESUME_RESUMED);
-
 		arm_state->state = state;
 		arm_state->first_connect = 0;
 
@@ -2354,24 +2345,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 	return VCHIQ_SUCCESS;
 }
 
-void
-set_resume_state(struct vchiq_arm_state *arm_state,
-		 enum vc_resume_status new_state)
-{
-	/* set the state in all cases */
-	arm_state->vc_resume_state = new_state;
-
-	/* state specific additional actions */
-	switch (new_state) {
-	case VC_RESUME_RESUMED:
-		complete_all(&arm_state->vc_resume_complete);
-		break;
-	default:
-		BUG();
-		break;
-	}
-}
-
 enum vchiq_status
 vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 		   enum USE_TYPE_E use_type)
@@ -2412,22 +2385,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 
 	write_unlock_bh(&arm_state->susp_res_lock);
 
-	/* Completion is in a done state when we're not suspended, so this won't
-	 * block for the non-suspended case. */
-	if (!try_wait_for_completion(&arm_state->vc_resume_complete)) {
-		vchiq_log_info(vchiq_susp_log_level, "%s %s wait for resume",
-			__func__, entity);
-		if (wait_for_completion_killable(
-				&arm_state->vc_resume_complete)) {
-			vchiq_log_error(vchiq_susp_log_level, "%s %s wait for "
-				"resume interrupted", __func__, entity);
-			ret = VCHIQ_ERROR;
-			goto out;
-		}
-		vchiq_log_info(vchiq_susp_log_level, "%s %s resumed", __func__,
-			entity);
-	}
-
 	if (ret == VCHIQ_SUCCESS) {
 		enum vchiq_status status = VCHIQ_SUCCESS;
 		long ack_cnt = atomic_xchg(&arm_state->ka_use_ack_count, 0);
@@ -2619,7 +2576,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 	int only_nonzero = 0;
 	static const char *nz = "<-- preventing suspend";
 
-	enum vc_resume_status  vc_resume_state;
 	int peer_count;
 	int vc_use_count;
 	int active_services;
@@ -2633,7 +2589,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 		return;
 
 	read_lock_bh(&arm_state->susp_res_lock);
-	vc_resume_state  = arm_state->vc_resume_state;
 	peer_count = arm_state->peer_use_count;
 	vc_use_count = arm_state->videocore_use_count;
 	active_services = state->unused_service;
@@ -2662,10 +2617,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 
 	read_unlock_bh(&arm_state->susp_res_lock);
 
-	vchiq_log_warning(vchiq_susp_log_level,
-		"-- Videcore resume state: %s --",
-		resume_state_names[vc_resume_state + VC_RESUME_NUM_OFFSET]);
-
 	if (only_nonzero)
 		vchiq_log_warning(vchiq_susp_log_level, "Too many active "
 			"services (%d).  Only dumping up to first %d services "
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 7f5daa9aaf3d..2d747af4457a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -14,10 +14,6 @@
 #include "vchiq_core.h"
 #include "vchiq_debugfs.h"
 
-enum vc_resume_status {
-	VC_RESUME_RESUMED      /* Videocore resumed successfully (active) */
-};
-
 enum USE_TYPE_E {
 	USE_TYPE_SERVICE,
 	USE_TYPE_VCHIQ
@@ -31,10 +27,7 @@ struct vchiq_arm_state {
 	atomic_t ka_use_ack_count;
 	atomic_t ka_release_count;
 
-	struct completion vc_resume_complete;
-
 	rwlock_t susp_res_lock;
-	enum vc_resume_status vc_resume_state;
 
 	struct vchiq_state *state;
 
@@ -117,8 +110,4 @@ vchiq_instance_get_trace(struct vchiq_instance *instance);
 extern void
 vchiq_instance_set_trace(struct vchiq_instance *instance, int trace);
 
-extern void
-set_resume_state(struct vchiq_arm_state *arm_state,
-		 enum vc_resume_status new_state);
-
 #endif /* VCHIQ_ARM_H */
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
