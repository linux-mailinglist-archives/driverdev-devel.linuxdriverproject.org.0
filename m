Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DE914EAEB
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jan 2020 11:39:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id ECFBE227FF;
	Fri, 31 Jan 2020 10:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8tDGJtTOie2G; Fri, 31 Jan 2020 10:39:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 871A022802;
	Fri, 31 Jan 2020 10:39:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A15AB1BF355
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 97BFE869B7
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5GJIXiiMPgCF for <devel@linuxdriverproject.org>;
 Fri, 31 Jan 2020 10:39:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9AB348693D
 for <devel@driverdev.osuosl.org>; Fri, 31 Jan 2020 10:39:17 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 41FF8AF43;
 Fri, 31 Jan 2020 10:39:16 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 15/21] staging: vc04_services: Get rid of unused
 suspend/resume states
Date: Fri, 31 Jan 2020 11:38:31 +0100
Message-Id: <20200131103836.14312-16-nsaenzjulienne@suse.de>
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

It's impossible to get into them, so simply delete them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 55 -------------------
 .../interface/vchiq_arm/vchiq_arm.h           |  7 ---
 2 files changed, 62 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index f66280663d0d..db7ae204f50f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -50,20 +50,13 @@ int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
 #define VC_SUSPEND_NUM_OFFSET 3 /* number of values before idle which are -ve */
 static const char *const suspend_state_names[] = {
-	"VC_SUSPEND_FORCE_CANCELED",
-	"VC_SUSPEND_REJECTED",
-	"VC_SUSPEND_FAILED",
 	"VC_SUSPEND_IDLE",
-	"VC_SUSPEND_REQUESTED",
 	"VC_SUSPEND_IN_PROGRESS",
-	"VC_SUSPEND_SUSPENDED"
 };
 #define VC_RESUME_NUM_OFFSET 1 /* number of values before idle which are -ve */
 static const char *const resume_state_names[] = {
-	"VC_RESUME_FAILED",
 	"VC_RESUME_IDLE",
 	"VC_RESUME_REQUESTED",
-	"VC_RESUME_IN_PROGRESS",
 	"VC_RESUME_RESUMED"
 };
 /* The number of times we allow force suspend to timeout before actually
@@ -2396,18 +2389,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 **			before resuming can occur.  We therefore also reset the
 **			resume state machine to VC_RESUME_IDLE in this state.
 **
-** VC_SUSPEND_SUSPENDED - Suspend has completed successfully. Also call
-**			complete_all on the suspend completion to notify
-**			anything waiting for suspend to happen.
-**
-** VC_SUSPEND_REJECTED - Videocore rejected suspend. Videocore will also
-**			initiate resume, so no need to alter resume state.
-**			We call complete_all on the suspend completion to notify
-**			of suspend rejection.
-**
-** VC_SUSPEND_FAILED - We failed to initiate videocore suspend.  We notify the
-**			suspend completion and reset the resume state machine.
-**
 ** VC_RESUME_IDLE - Initialise the resume completion at the same time.  The
 **			resume completion is in it's 'done' state whenever
 **			videcore is running.  Therefore, the VC_RESUME_IDLE
@@ -2415,13 +2396,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 **			Hence, any thread which needs to wait until videocore is
 **			running can wait on this completion - it will only block
 **			if videocore is suspended.
-**
-** VC_RESUME_RESUMED - Resume has completed successfully.  Videocore is running.
-**			Call complete_all on the resume completion to unblock
-**			any threads waiting for resume.	 Also reset the suspend
-**			state machine to it's idle state.
-**
-** VC_RESUME_FAILED - Currently unused - no mechanism to fail resume exists.
 */
 
 void
@@ -2433,23 +2407,11 @@ set_suspend_state(struct vchiq_arm_state *arm_state,
 
 	/* state specific additional actions */
 	switch (new_state) {
-	case VC_SUSPEND_FORCE_CANCELED:
-		break;
-	case VC_SUSPEND_REJECTED:
-		break;
-	case VC_SUSPEND_FAILED:
-		arm_state->vc_resume_state = VC_RESUME_RESUMED;
-		complete_all(&arm_state->vc_resume_complete);
-		break;
 	case VC_SUSPEND_IDLE:
 		break;
-	case VC_SUSPEND_REQUESTED:
-		break;
 	case VC_SUSPEND_IN_PROGRESS:
 		set_resume_state(arm_state, VC_RESUME_IDLE);
 		break;
-	case VC_SUSPEND_SUSPENDED:
-		break;
 	default:
 		BUG();
 		break;
@@ -2465,15 +2427,11 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 
 	/* state specific additional actions */
 	switch (new_state) {
-	case VC_RESUME_FAILED:
-		break;
 	case VC_RESUME_IDLE:
 		reinit_completion(&arm_state->vc_resume_complete);
 		break;
 	case VC_RESUME_REQUESTED:
 		break;
-	case VC_RESUME_IN_PROGRESS:
-		break;
 	case VC_RESUME_RESUMED:
 		complete_all(&arm_state->vc_resume_complete);
 		set_suspend_state(arm_state, VC_SUSPEND_IDLE);
@@ -2503,12 +2461,6 @@ vchiq_platform_check_suspend(struct vchiq_state *state)
 
 	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
 
-	write_lock_bh(&arm_state->susp_res_lock);
-	if (arm_state->vc_suspend_state == VC_SUSPEND_REQUESTED &&
-			arm_state->vc_resume_state == VC_RESUME_RESUMED)
-		set_suspend_state(arm_state, VC_SUSPEND_IN_PROGRESS);
-	write_unlock_bh(&arm_state->susp_res_lock);
-
 out:
 	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
 	return;
@@ -2548,13 +2500,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	local_uc = ++arm_state->videocore_use_count;
 	local_entity_uc = ++(*entity_uc);
 
-	/* If there's a pending request which hasn't yet been serviced then
-	 * just clear it.  If we're past VC_SUSPEND_REQUESTED state then
-	 * vc_resume_complete will block until we either resume or fail to
-	 * suspend */
-	if (arm_state->vc_suspend_state <= VC_SUSPEND_REQUESTED)
-		set_suspend_state(arm_state, VC_SUSPEND_IDLE);
-
 	if ((use_type != USE_TYPE_SERVICE_NO_RESUME) && need_resume(state)) {
 		set_resume_state(arm_state, VC_RESUME_REQUESTED);
 		vchiq_log_info(vchiq_susp_log_level,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index aa081d642818..afd822546e2e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -15,20 +15,13 @@
 #include "vchiq_debugfs.h"
 
 enum vc_suspend_status {
-	VC_SUSPEND_FORCE_CANCELED = -3, /* Force suspend canceled, too busy */
-	VC_SUSPEND_REJECTED = -2,  /* Videocore rejected suspend request */
-	VC_SUSPEND_FAILED = -1,    /* Videocore suspend failed */
 	VC_SUSPEND_IDLE = 0,       /* VC active, no suspend actions */
-	VC_SUSPEND_REQUESTED,      /* User has requested suspend */
 	VC_SUSPEND_IN_PROGRESS,    /* Slot handler has recvd suspend request */
-	VC_SUSPEND_SUSPENDED       /* Videocore suspend succeeded */
 };
 
 enum vc_resume_status {
-	VC_RESUME_FAILED = -1, /* Videocore resume failed */
 	VC_RESUME_IDLE = 0,    /* VC suspended, no resume actions */
 	VC_RESUME_REQUESTED,   /* User has requested resume */
-	VC_RESUME_IN_PROGRESS, /* Slot handler has received resume request */
 	VC_RESUME_RESUMED      /* Videocore resumed successfully (active) */
 };
 
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
