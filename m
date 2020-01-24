Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B987B148A4B
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 15:46:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3DE25877EA;
	Fri, 24 Jan 2020 14:46:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fsD5wP-mMmE7; Fri, 24 Jan 2020 14:46:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3702A86519;
	Fri, 24 Jan 2020 14:46:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BB5411BF3AE
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B558886CA5
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Up7da1G9ih-Y for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 14:46:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DF54186C9E
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 14:46:36 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 87099AFBF;
 Fri, 24 Jan 2020 14:46:35 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 08/22] staging: vc04_services: Get rid of
 vchiq_platform_suspend/resume()
Date: Fri, 24 Jan 2020 15:46:02 +0100
Message-Id: <20200124144617.2213-9-nsaenzjulienne@suse.de>
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

vchiq_platform_suspend() and vchiq_platform_resume() do nothing, get rid
of them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c             | 12 ------------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c    |  8 +-------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h    |  3 ---
 .../vc04_services/interface/vchiq_arm/vchiq_core.c   |  4 ----
 .../vc04_services/interface/vchiq_arm/vchiq_core.h   |  3 ---
 5 files changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 5f59145f251b..65e26a90c1db 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -257,18 +257,6 @@ int vchiq_dump_platform_state(void *dump_context)
 	return vchiq_dump(dump_context, buf, len + 1);
 }
 
-enum vchiq_status
-vchiq_platform_suspend(struct vchiq_state *state)
-{
-	return VCHIQ_ERROR;
-}
-
-enum vchiq_status
-vchiq_platform_resume(struct vchiq_state *state)
-{
-	return VCHIQ_SUCCESS;
-}
-
 int
 vchiq_platform_videocore_wanted(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index a75d5092cc73..3c374686ce89 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2572,7 +2572,6 @@ void
 vchiq_platform_check_suspend(struct vchiq_state *state)
 {
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	int susp = 0;
 
 	if (!arm_state)
 		goto out;
@@ -2581,15 +2580,10 @@ vchiq_platform_check_suspend(struct vchiq_state *state)
 
 	write_lock_bh(&arm_state->susp_res_lock);
 	if (arm_state->vc_suspend_state == VC_SUSPEND_REQUESTED &&
-			arm_state->vc_resume_state == VC_RESUME_RESUMED) {
+			arm_state->vc_resume_state == VC_RESUME_RESUMED)
 		set_suspend_state(arm_state, VC_SUSPEND_IN_PROGRESS);
-		susp = 1;
-	}
 	write_unlock_bh(&arm_state->susp_res_lock);
 
-	if (susp)
-		vchiq_platform_suspend(state);
-
 out:
 	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
 	return;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 6daeb3e4f4b1..1f1ec679584b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -112,9 +112,6 @@ vchiq_release_service(unsigned int handle);
 extern enum vchiq_status
 vchiq_check_service(struct vchiq_service *service);
 
-extern enum vchiq_status
-vchiq_platform_suspend(struct vchiq_state *state);
-
 extern int
 vchiq_platform_videocore_wanted(struct vchiq_state *state);
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 71342826ed33..ef8340ab8a52 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1895,10 +1895,6 @@ slot_handler_func(void *v)
 				}
 				break;
 
-			case VCHIQ_CONNSTATE_PAUSED:
-				vchiq_platform_resume(state);
-				break;
-
 			case VCHIQ_CONNSTATE_RESUMING:
 				if (queue_message(state, NULL,
 					VCHIQ_MAKE_MSG(VCHIQ_MSG_RESUME, 0, 0),
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 72c88fe5feb1..535a67cc68ed 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -593,9 +593,6 @@ remote_event_signal(struct remote_event *event);
 void
 vchiq_platform_check_suspend(struct vchiq_state *state);
 
-extern enum vchiq_status
-vchiq_platform_resume(struct vchiq_state *state);
-
 extern int
 vchiq_dump(void *dump_context, const char *str, int len);
 
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
