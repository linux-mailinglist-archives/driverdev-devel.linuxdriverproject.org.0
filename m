Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03152148A42
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 15:46:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 7CDE62281E;
	Fri, 24 Jan 2020 14:46:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yALuCdFCvt+W; Fri, 24 Jan 2020 14:46:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 68BAA20336;
	Fri, 24 Jan 2020 14:46:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D54A31BF3AE
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1F7B20336
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T-YnpLg9UOWT for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 14:46:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id EF16E203F1
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 14:46:32 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 90665AFCB;
 Fri, 24 Jan 2020 14:46:31 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 03/22] staging: vc04_services: Get rid of resume_blocker
 completion in struct vchiq_arm_state
Date: Fri, 24 Jan 2020 15:45:57 +0100
Message-Id: <20200124144617.2213-4-nsaenzjulienne@suse.de>
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

Nobody is waiting on it, so delete all relevant code.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c     | 11 -----------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h     |  4 ----
 2 files changed, 15 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index af4dc23f5510..311df3d85494 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2386,11 +2386,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 		 * completion while videocore is suspended. */
 		set_resume_state(arm_state, VC_RESUME_RESUMED);
 
-		init_completion(&arm_state->resume_blocker);
-		/* Initialise to 'done' state.  We only want to block on this
-		 * completion while resume is blocked */
-		complete_all(&arm_state->resume_blocker);
-
 		init_completion(&arm_state->blocked_blocker);
 		/* Initialise to 'done' state.  We only want to block on this
 		 * completion while things are waiting on the resume blocker */
@@ -2560,12 +2555,6 @@ need_resume(struct vchiq_state *state)
 			vchiq_videocore_wanted(state);
 }
 
-static inline void
-unblock_resume(struct vchiq_arm_state *arm_state)
-{
-	complete_all(&arm_state->resume_blocker);
-}
-
 /* Initiate suspend via slot handler. Should be called with the write lock
  * held */
 enum vchiq_status
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index c904f7be9084..7d1316875343 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -70,10 +70,6 @@ struct vchiq_arm_state {
 	*/
 	int peer_use_count;
 
-	/* Flag to indicate whether resume is blocked.  This happens when the
-	** ARM is suspending
-	*/
-	struct completion resume_blocker;
 	struct completion blocked_blocker;
 	int blocked_count;
 
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
