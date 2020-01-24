Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBA6148A51
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 15:46:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D8A1520336;
	Fri, 24 Jan 2020 14:46:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uf+D67Z7KzOU; Fri, 24 Jan 2020 14:46:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A4C3203FF;
	Fri, 24 Jan 2020 14:46:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 62D0C1BF3AE
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5D7B686CE5
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nebs4_VMCGJc for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 14:46:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C6D0386D19
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 14:46:42 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 68410AF22;
 Fri, 24 Jan 2020 14:46:41 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 14/22] staging: vc04_services: Delete vc_suspend_complete
 completion
Date: Fri, 24 Jan 2020 15:46:08 +0100
Message-Id: <20200124144617.2213-15-nsaenzjulienne@suse.de>
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

Nobody is waiting on it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c  | 7 -------
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.h  | 1 -
 2 files changed, 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 774ce4aa216f..da95bb1ec0eb 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2356,8 +2356,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 		atomic_set(&arm_state->ka_use_ack_count, 0);
 		atomic_set(&arm_state->ka_release_count, 0);
 
-		init_completion(&arm_state->vc_suspend_complete);
-
 		init_completion(&arm_state->vc_resume_complete);
 		/* Initialise to 'done' state.  We only want to block on resume
 		 * completion while videocore is suspended. */
@@ -2436,18 +2434,14 @@ set_suspend_state(struct vchiq_arm_state *arm_state,
 	/* state specific additional actions */
 	switch (new_state) {
 	case VC_SUSPEND_FORCE_CANCELED:
-		complete_all(&arm_state->vc_suspend_complete);
 		break;
 	case VC_SUSPEND_REJECTED:
-		complete_all(&arm_state->vc_suspend_complete);
 		break;
 	case VC_SUSPEND_FAILED:
-		complete_all(&arm_state->vc_suspend_complete);
 		arm_state->vc_resume_state = VC_RESUME_RESUMED;
 		complete_all(&arm_state->vc_resume_complete);
 		break;
 	case VC_SUSPEND_IDLE:
-		reinit_completion(&arm_state->vc_suspend_complete);
 		break;
 	case VC_SUSPEND_REQUESTED:
 		break;
@@ -2455,7 +2449,6 @@ set_suspend_state(struct vchiq_arm_state *arm_state,
 		set_resume_state(arm_state, VC_RESUME_IDLE);
 		break;
 	case VC_SUSPEND_SUSPENDED:
-		complete_all(&arm_state->vc_suspend_complete);
 		break;
 	default:
 		BUG();
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 9a8ecc089c69..ac065f284372 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -46,7 +46,6 @@ struct vchiq_arm_state {
 	atomic_t ka_use_ack_count;
 	atomic_t ka_release_count;
 
-	struct completion vc_suspend_complete;
 	struct completion vc_resume_complete;
 
 	rwlock_t susp_res_lock;
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
