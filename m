Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B88F514EAE2
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jan 2020 11:39:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 551D3832E1;
	Fri, 31 Jan 2020 10:39:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RVsZfnd0e72V; Fri, 31 Jan 2020 10:39:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ECF2A84115;
	Fri, 31 Jan 2020 10:39:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D3441BF355
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3A1E786946
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EyOOLhO315SN for <devel@linuxdriverproject.org>;
 Fri, 31 Jan 2020 10:39:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 41B0C8693D
 for <devel@driverdev.osuosl.org>; Fri, 31 Jan 2020 10:39:10 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E5F77B004;
 Fri, 31 Jan 2020 10:39:08 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 06/21] staging: vc04_services: get rid of
 vchiq_platform_use_suspend_timer()
Date: Fri, 31 Jan 2020 11:38:22 +0100
Message-Id: <20200131103836.14312-7-nsaenzjulienne@suse.de>
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

The function always returns 0, delete the function and all code
conditional to it, namely the suspend timer.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes since v1:
 - Don't delete vchiq_dump_service_use_state()

 .../interface/vchiq_arm/vchiq_2835_arm.c      | 11 ---
 .../interface/vchiq_arm/vchiq_arm.c           | 83 ++-----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  9 --
 3 files changed, 5 insertions(+), 98 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index ca30bfd52919..1ffb2aea947c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -284,17 +284,6 @@ vchiq_platform_videocore_wanted(struct vchiq_state *state)
 {
 	return 1; // autosuspend not supported - videocore always wanted
 }
-
-int
-vchiq_platform_use_suspend_timer(void)
-{
-	return 0;
-}
-void
-vchiq_dump_platform_use_state(struct vchiq_state *state)
-{
-	vchiq_log_info(vchiq_arm_log_level, "Suspend timer not in use");
-}
 void
 vchiq_platform_handle_timeout(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 4545df573c90..2dfa5793d83b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -48,9 +48,6 @@
 int vchiq_arm_log_level = VCHIQ_LOG_DEFAULT;
 int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
-#define SUSPEND_TIMER_TIMEOUT_MS 100
-#define SUSPEND_RETRY_TIMER_TIMEOUT_MS 1000
-
 #define VC_SUSPEND_NUM_OFFSET 3 /* number of values before idle which are -ve */
 static const char *const suspend_state_names[] = {
 	"VC_SUSPEND_FORCE_CANCELED",
@@ -79,8 +76,6 @@ static const char *const resume_state_names[] = {
  * requested */
 #define FORCE_SUSPEND_TIMEOUT_MS 200
 
-static void suspend_timer_callback(struct timer_list *t);
-
 struct user_service {
 	struct vchiq_service *service;
 	void *userdata;
@@ -2384,12 +2379,7 @@ vchiq_arm_init_state(struct vchiq_state *state,
 		 * completion while videocore is suspended. */
 		set_resume_state(arm_state, VC_RESUME_RESUMED);
 
-		arm_state->suspend_timer_timeout = SUSPEND_TIMER_TIMEOUT_MS;
-		arm_state->suspend_timer_running = 0;
 		arm_state->state = state;
-		timer_setup(&arm_state->suspend_timer, suspend_timer_callback,
-			    0);
-
 		arm_state->first_connect = 0;
 
 	}
@@ -2517,27 +2507,6 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 	}
 }
 
-/* should be called with the write lock held */
-inline void
-start_suspend_timer(struct vchiq_arm_state *arm_state)
-{
-	del_timer(&arm_state->suspend_timer);
-	arm_state->suspend_timer.expires = jiffies +
-		msecs_to_jiffies(arm_state->suspend_timer_timeout);
-	add_timer(&arm_state->suspend_timer);
-	arm_state->suspend_timer_running = 1;
-}
-
-/* should be called with the write lock held */
-static inline void
-stop_suspend_timer(struct vchiq_arm_state *arm_state)
-{
-	if (arm_state->suspend_timer_running) {
-		del_timer(&arm_state->suspend_timer);
-		arm_state->suspend_timer_running = 0;
-	}
-}
-
 static inline int
 need_resume(struct vchiq_state *state)
 {
@@ -2626,28 +2595,6 @@ vchiq_platform_check_suspend(struct vchiq_state *state)
 	return;
 }
 
-void
-vchiq_check_suspend(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-
-	write_lock_bh(&arm_state->susp_res_lock);
-	if (arm_state->vc_suspend_state != VC_SUSPEND_SUSPENDED &&
-			arm_state->first_connect &&
-			!vchiq_videocore_wanted(state)) {
-		vchiq_arm_vcsuspend(state);
-	}
-	write_unlock_bh(&arm_state->susp_res_lock);
-
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
-}
-
 /* This function should be called with the write lock held */
 int
 vchiq_check_resume(struct vchiq_state *state)
@@ -2702,9 +2649,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	}
 
 	write_lock_bh(&arm_state->susp_res_lock);
-
-	stop_suspend_timer(arm_state);
-
 	local_uc = ++arm_state->videocore_use_count;
 	local_entity_uc = ++(*entity_uc);
 
@@ -2799,15 +2743,11 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 	--(*entity_uc);
 
 	if (!vchiq_videocore_wanted(state)) {
-		if (vchiq_platform_use_suspend_timer()) {
-			start_suspend_timer(arm_state);
-		} else {
-			vchiq_log_info(vchiq_susp_log_level,
-				"%s %s count %d, state count %d - suspending",
-				__func__, entity, *entity_uc,
-				arm_state->videocore_use_count);
-			vchiq_arm_vcsuspend(state);
-		}
+		vchiq_log_info(vchiq_susp_log_level,
+			"%s %s count %d, state count %d - suspending",
+			__func__, entity, *entity_uc,
+			arm_state->videocore_use_count);
+		vchiq_arm_vcsuspend(state);
 	} else
 		vchiq_log_trace(vchiq_susp_log_level,
 			"%s %s count %d, state count %d",
@@ -2902,17 +2842,6 @@ vchiq_instance_set_trace(struct vchiq_instance *instance, int trace)
 	instance->trace = (trace != 0);
 }
 
-static void suspend_timer_callback(struct timer_list *t)
-{
-	struct vchiq_arm_state *arm_state =
-					from_timer(arm_state, t, suspend_timer);
-	struct vchiq_state *state = arm_state->state;
-
-	vchiq_log_info(vchiq_susp_log_level,
-		"%s - suspend timer expired - check suspend", __func__);
-	vchiq_check_suspend(state);
-}
-
 enum vchiq_status
 vchiq_use_service(unsigned int handle)
 {
@@ -3028,8 +2957,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 		"--- Overall vchiq instance use count %d", vc_use_count);
 
 	kfree(service_data);
-
-	vchiq_dump_platform_use_state(state);
 }
 
 enum vchiq_status
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 35889a65b17f..61c50d7d4396 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -54,9 +54,6 @@ struct vchiq_arm_state {
 	enum vc_resume_status vc_resume_state;
 
 	struct vchiq_state *state;
-	struct timer_list suspend_timer;
-	int suspend_timer_timeout;
-	int suspend_timer_running;
 
 	/* Global use count for videocore.
 	** This is equal to the sum of the use counts for all services.  When
@@ -121,9 +118,6 @@ vchiq_platform_suspend(struct vchiq_state *state);
 extern int
 vchiq_platform_videocore_wanted(struct vchiq_state *state);
 
-extern int
-vchiq_platform_use_suspend_timer(void);
-
 extern void
 vchiq_dump_platform_use_state(struct vchiq_state *state);
 
@@ -166,7 +160,4 @@ extern void
 set_resume_state(struct vchiq_arm_state *arm_state,
 		 enum vc_resume_status new_state);
 
-extern void
-start_suspend_timer(struct vchiq_arm_state *arm_state);
-
 #endif /* VCHIQ_ARM_H */
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
