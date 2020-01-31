Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3629514EAF3
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jan 2020 11:39:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A153686132;
	Fri, 31 Jan 2020 10:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NytRbUnNz0Qx; Fri, 31 Jan 2020 10:39:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3C0078494E;
	Fri, 31 Jan 2020 10:39:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D16B01BF355
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CEACB83491
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 39vTSoqTi49J for <devel@linuxdriverproject.org>;
 Fri, 31 Jan 2020 10:39:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 76B1E8466D
 for <devel@driverdev.osuosl.org>; Fri, 31 Jan 2020 10:39:18 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1A3D2AFF4;
 Fri, 31 Jan 2020 10:39:17 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 16/21] staging: vc04_services: Get of even more
 suspend/resume states
Date: Fri, 31 Jan 2020 11:38:32 +0100
Message-Id: <20200131103836.14312-17-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
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

After the first states cleanup pass some set_suspend/resume_state()
calls disappeared which opened up even more opportunities for deletions.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 100 +-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  12 ---
 2 files changed, 5 insertions(+), 107 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index db7ae204f50f..cee643a33642 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -48,15 +48,8 @@
 int vchiq_arm_log_level = VCHIQ_LOG_DEFAULT;
 int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
-#define VC_SUSPEND_NUM_OFFSET 3 /* number of values before idle which are -ve */
-static const char *const suspend_state_names[] = {
-	"VC_SUSPEND_IDLE",
-	"VC_SUSPEND_IN_PROGRESS",
-};
 #define VC_RESUME_NUM_OFFSET 1 /* number of values before idle which are -ve */
 static const char *const resume_state_names[] = {
-	"VC_RESUME_IDLE",
-	"VC_RESUME_REQUESTED",
 	"VC_RESUME_RESUMED"
 };
 /* The number of times we allow force suspend to timeout before actually
@@ -2361,63 +2354,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 	return VCHIQ_SUCCESS;
 }
 
-/*
-** Functions to modify the state variables;
-**	set_suspend_state
-**	set_resume_state
-**
-** There are more state variables than we might like, so ensure they remain in
-** step.  Suspend and resume state are maintained separately, since most of
-** these state machines can operate independently.  However, there are a few
-** states where state transitions in one state machine cause a reset to the
-** other state machine.  In addition, there are some completion events which
-** need to occur on state machine reset and end-state(s), so these are also
-** dealt with in these functions.
-**
-** In all states we set the state variable according to the input, but in some
-** cases we perform additional steps outlined below;
-**
-** VC_SUSPEND_IDLE - Initialise the suspend completion at the same time.
-**			The suspend completion is completed after any suspend
-**			attempt.  When we reset the state machine we also reset
-**			the completion.  This reset occurs when videocore is
-**			resumed, and also if we initiate suspend after a suspend
-**			failure.
-**
-** VC_SUSPEND_IN_PROGRESS - This state is considered the point of no return for
-**			suspend - ie from this point on we must try to suspend
-**			before resuming can occur.  We therefore also reset the
-**			resume state machine to VC_RESUME_IDLE in this state.
-**
-** VC_RESUME_IDLE - Initialise the resume completion at the same time.  The
-**			resume completion is in it's 'done' state whenever
-**			videcore is running.  Therefore, the VC_RESUME_IDLE
-**			state implies that videocore is suspended.
-**			Hence, any thread which needs to wait until videocore is
-**			running can wait on this completion - it will only block
-**			if videocore is suspended.
-*/
-
-void
-set_suspend_state(struct vchiq_arm_state *arm_state,
-		  enum vc_suspend_status new_state)
-{
-	/* set the state in all cases */
-	arm_state->vc_suspend_state = new_state;
-
-	/* state specific additional actions */
-	switch (new_state) {
-	case VC_SUSPEND_IDLE:
-		break;
-	case VC_SUSPEND_IN_PROGRESS:
-		set_resume_state(arm_state, VC_RESUME_IDLE);
-		break;
-	default:
-		BUG();
-		break;
-	}
-}
-
 void
 set_resume_state(struct vchiq_arm_state *arm_state,
 		 enum vc_resume_status new_state)
@@ -2427,14 +2363,8 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 
 	/* state specific additional actions */
 	switch (new_state) {
-	case VC_RESUME_IDLE:
-		reinit_completion(&arm_state->vc_resume_complete);
-		break;
-	case VC_RESUME_REQUESTED:
-		break;
 	case VC_RESUME_RESUMED:
 		complete_all(&arm_state->vc_resume_complete);
-		set_suspend_state(arm_state, VC_SUSPEND_IDLE);
 		break;
 	default:
 		BUG();
@@ -2442,15 +2372,6 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 	}
 }
 
-static inline int
-need_resume(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	return (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) &&
-			(arm_state->vc_resume_state < VC_RESUME_REQUESTED);
-}
-
 void
 vchiq_platform_check_suspend(struct vchiq_state *state)
 {
@@ -2500,16 +2421,9 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	local_uc = ++arm_state->videocore_use_count;
 	local_entity_uc = ++(*entity_uc);
 
-	if ((use_type != USE_TYPE_SERVICE_NO_RESUME) && need_resume(state)) {
-		set_resume_state(arm_state, VC_RESUME_REQUESTED);
-		vchiq_log_info(vchiq_susp_log_level,
-			"%s %s count %d, state count %d",
-			__func__, entity, local_entity_uc, local_uc);
-		request_poll(state, NULL, 0);
-	} else
-		vchiq_log_trace(vchiq_susp_log_level,
-			"%s %s count %d, state count %d",
-			__func__, entity, *entity_uc, local_uc);
+	vchiq_log_trace(vchiq_susp_log_level,
+		"%s %s count %d, state count %d",
+		__func__, entity, *entity_uc, local_uc);
 
 	write_unlock_bh(&arm_state->susp_res_lock);
 
@@ -2720,7 +2634,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 	int only_nonzero = 0;
 	static const char *nz = "<-- preventing suspend";
 
-	enum vc_suspend_status vc_suspend_state;
 	enum vc_resume_status  vc_resume_state;
 	int peer_count;
 	int vc_use_count;
@@ -2735,7 +2648,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 		return;
 
 	read_lock_bh(&arm_state->susp_res_lock);
-	vc_suspend_state = arm_state->vc_suspend_state;
 	vc_resume_state  = arm_state->vc_resume_state;
 	peer_count = arm_state->peer_use_count;
 	vc_use_count = arm_state->videocore_use_count;
@@ -2814,12 +2726,10 @@ vchiq_check_service(struct vchiq_service *service)
 	if (ret == VCHIQ_ERROR) {
 		vchiq_log_error(vchiq_susp_log_level,
 			"%s ERROR - %c%c%c%c:%d service count %d, "
-			"state count %d, videocore suspend state %s", __func__,
+			"state count %d", __func__,
 			VCHIQ_FOURCC_AS_4CHARS(service->base.fourcc),
 			service->client_id, service->service_use_count,
-			arm_state->videocore_use_count,
-			suspend_state_names[arm_state->vc_suspend_state +
-						VC_SUSPEND_NUM_OFFSET]);
+			arm_state->videocore_use_count);
 		vchiq_dump_service_use_state(service->state);
 	}
 out:
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index afd822546e2e..b1fad282db04 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -14,14 +14,7 @@
 #include "vchiq_core.h"
 #include "vchiq_debugfs.h"
 
-enum vc_suspend_status {
-	VC_SUSPEND_IDLE = 0,       /* VC active, no suspend actions */
-	VC_SUSPEND_IN_PROGRESS,    /* Slot handler has recvd suspend request */
-};
-
 enum vc_resume_status {
-	VC_RESUME_IDLE = 0,    /* VC suspended, no resume actions */
-	VC_RESUME_REQUESTED,   /* User has requested resume */
 	VC_RESUME_RESUMED      /* Videocore resumed successfully (active) */
 };
 
@@ -42,7 +35,6 @@ struct vchiq_arm_state {
 	struct completion vc_resume_complete;
 
 	rwlock_t susp_res_lock;
-	enum vc_suspend_status vc_suspend_state;
 	enum vc_resume_status vc_resume_state;
 
 	struct vchiq_state *state;
@@ -130,10 +122,6 @@ vchiq_instance_get_trace(struct vchiq_instance *instance);
 extern void
 vchiq_instance_set_trace(struct vchiq_instance *instance, int trace);
 
-extern void
-set_suspend_state(struct vchiq_arm_state *arm_state,
-		  enum vc_suspend_status new_state);
-
 extern void
 set_resume_state(struct vchiq_arm_state *arm_state,
 		 enum vc_resume_status new_state);
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
