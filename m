Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6F9148A57
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 15:47:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B5B7122816;
	Fri, 24 Jan 2020 14:47:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8ew6cJkA7XY6; Fri, 24 Jan 2020 14:47:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 85F45203FF;
	Fri, 24 Jan 2020 14:46:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D7F541BF9BA
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D453D86D19
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QnaGiRD4f0AW for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 14:46:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BC98D86D8D
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 14:46:45 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 65BA5AFA8;
 Fri, 24 Jan 2020 14:46:44 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 18/22] staging: vc04_services: Get of even more suspend/resume
 states
Date: Fri, 24 Jan 2020 15:46:12 +0100
Message-Id: <20200124144617.2213-19-nsaenzjulienne@suse.de>
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

After the first states cleanup pass some set_suspend/resume_state()
calls disappeared which opened up even more opportunities for deletions.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 92 +------------------
 .../interface/vchiq_arm/vchiq_arm.h           | 11 ---
 2 files changed, 3 insertions(+), 100 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 8ec5a61c5d89..577ecfefce3c 100644
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
 enum vchiq_status
 vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 		   enum USE_TYPE_E use_type)
@@ -2485,16 +2406,9 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	local_uc = ++arm_state->videocore_use_count;
 	local_entity_uc = ++(*entity_uc);
 
-	if (need_resume(state)) {
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
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index d01d91e24a89..e2f7fa865694 100644
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
 
@@ -128,10 +121,6 @@ vchiq_instance_get_trace(struct vchiq_instance *instance);
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
