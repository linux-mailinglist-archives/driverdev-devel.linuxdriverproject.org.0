Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 332DE14EADA
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jan 2020 11:39:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B40DF81B8A;
	Fri, 31 Jan 2020 10:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bR8TKdZTFi68; Fri, 31 Jan 2020 10:39:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7BB2282835;
	Fri, 31 Jan 2020 10:39:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4C38A1BF355
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4950D81B76
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cJsAMseVMmqt for <devel@linuxdriverproject.org>;
 Fri, 31 Jan 2020 10:39:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2FC03816F9
 for <devel@driverdev.osuosl.org>; Fri, 31 Jan 2020 10:39:07 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B2A9EB001;
 Fri, 31 Jan 2020 10:39:05 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/21] staging: vc04_services: Get rid of resume_blocked in
 struct vchiq_arm_state
Date: Fri, 31 Jan 2020 11:38:18 +0100
Message-Id: <20200131103836.14312-3-nsaenzjulienne@suse.de>
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

The boolean value is never set to true, hence remove it and all the code that
depends on it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 51 +------------------
 .../interface/vchiq_arm/vchiq_arm.h           |  1 -
 2 files changed, 2 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 4458c1e60fa3..af4dc23f5510 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2270,10 +2270,7 @@ vchiq_videocore_wanted(struct vchiq_state *state)
 		return 1;
 	else if (!arm_state->videocore_use_count)
 		/* usage count zero - check for override unless we're forcing */
-		if (arm_state->resume_blocked)
-			return 0;
-		else
-			return vchiq_platform_videocore_wanted(state);
+		return vchiq_platform_videocore_wanted(state);
 	else
 		/* non-zero usage count - videocore still required */
 		return 1;
@@ -2567,7 +2564,6 @@ static inline void
 unblock_resume(struct vchiq_arm_state *arm_state)
 {
 	complete_all(&arm_state->resume_blocker);
-	arm_state->resume_blocked = 0;
 }
 
 /* Initiate suspend via slot handler. Should be called with the write lock
@@ -2724,46 +2720,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	}
 
 	write_lock_bh(&arm_state->susp_res_lock);
-	while (arm_state->resume_blocked) {
-		/* If we call 'use' while force suspend is waiting for suspend,
-		 * then we're about to block the thread which the force is
-		 * waiting to complete, so we're bound to just time out. In this
-		 * case, set the suspend state such that the wait will be
-		 * canceled, so we can complete as quickly as possible. */
-		if (arm_state->resume_blocked && arm_state->vc_suspend_state ==
-				VC_SUSPEND_IDLE) {
-			set_suspend_state(arm_state, VC_SUSPEND_FORCE_CANCELED);
-			break;
-		}
-		/* If suspend is already in progress then we need to block */
-		if (!try_wait_for_completion(&arm_state->resume_blocker)) {
-			/* Indicate that there are threads waiting on the resume
-			 * blocker.  These need to be allowed to complete before
-			 * a _second_ call to force suspend can complete,
-			 * otherwise low priority threads might never actually
-			 * continue */
-			arm_state->blocked_count++;
-			write_unlock_bh(&arm_state->susp_res_lock);
-			vchiq_log_info(vchiq_susp_log_level, "%s %s resume "
-				"blocked - waiting...", __func__, entity);
-			if (wait_for_completion_killable(
-					&arm_state->resume_blocker)) {
-				vchiq_log_error(vchiq_susp_log_level, "%s %s "
-					"wait for resume blocker interrupted",
-					__func__, entity);
-				ret = VCHIQ_ERROR;
-				write_lock_bh(&arm_state->susp_res_lock);
-				arm_state->blocked_count--;
-				write_unlock_bh(&arm_state->susp_res_lock);
-				goto out;
-			}
-			vchiq_log_info(vchiq_susp_log_level, "%s %s resume "
-				"unblocked", __func__, entity);
-			write_lock_bh(&arm_state->susp_res_lock);
-			if (--arm_state->blocked_count == 0)
-				complete_all(&arm_state->blocked_blocker);
-		}
-	}
 
 	stop_suspend_timer(arm_state);
 
@@ -2861,10 +2817,7 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 	--(*entity_uc);
 
 	if (!vchiq_videocore_wanted(state)) {
-		if (vchiq_platform_use_suspend_timer() &&
-				!arm_state->resume_blocked) {
-			/* Only use the timer if we're not trying to force
-			 * suspend (=> resume_blocked) */
+		if (vchiq_platform_use_suspend_timer()) {
 			start_suspend_timer(arm_state);
 		} else {
 			vchiq_log_info(vchiq_susp_log_level,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index f0044289b6bc..c904f7be9084 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -74,7 +74,6 @@ struct vchiq_arm_state {
 	** ARM is suspending
 	*/
 	struct completion resume_blocker;
-	int resume_blocked;
 	struct completion blocked_blocker;
 	int blocked_count;
 
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
