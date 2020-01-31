Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A9714EAE6
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Jan 2020 11:39:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C7B185F96;
	Fri, 31 Jan 2020 10:39:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qSHIaa0r+QLW; Fri, 31 Jan 2020 10:39:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 88199848F0;
	Fri, 31 Jan 2020 10:39:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC7521BF355
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A5CB8869B7
 for <devel@linuxdriverproject.org>; Fri, 31 Jan 2020 10:39:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fzBGK6xlX7ft for <devel@linuxdriverproject.org>;
 Fri, 31 Jan 2020 10:39:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3E74186A0F
 for <devel@driverdev.osuosl.org>; Fri, 31 Jan 2020 10:39:15 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E5D7EAFF6;
 Fri, 31 Jan 2020 10:39:13 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 12/21] staging: vc04_services: Get rid of
 vchiq_arm_vcsuspend()
Date: Fri, 31 Jan 2020 11:38:28 +0100
Message-Id: <20200131103836.14312-13-nsaenzjulienne@suse.de>
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

It's not used.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 51 -------------------
 .../interface/vchiq_arm/vchiq_arm.h           |  3 --
 2 files changed, 54 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 7c620366dfb6..a33f0fb5d45f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2500,57 +2500,6 @@ need_resume(struct vchiq_state *state)
 			(arm_state->vc_resume_state < VC_RESUME_REQUESTED);
 }
 
-/* Initiate suspend via slot handler. Should be called with the write lock
- * held */
-enum vchiq_status
-vchiq_arm_vcsuspend(struct vchiq_state *state)
-{
-	enum vchiq_status status = VCHIQ_ERROR;
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-	status = VCHIQ_SUCCESS;
-
-	switch (arm_state->vc_suspend_state) {
-	case VC_SUSPEND_REQUESTED:
-		vchiq_log_info(vchiq_susp_log_level, "%s: suspend already "
-			"requested", __func__);
-		break;
-	case VC_SUSPEND_IN_PROGRESS:
-		vchiq_log_info(vchiq_susp_log_level, "%s: suspend already in "
-			"progress", __func__);
-		break;
-
-	default:
-		/* We don't expect to be in other states, so log but continue
-		 * anyway */
-		vchiq_log_error(vchiq_susp_log_level,
-			"%s unexpected suspend state %s", __func__,
-			suspend_state_names[arm_state->vc_suspend_state +
-						VC_SUSPEND_NUM_OFFSET]);
-		/* fall through */
-	case VC_SUSPEND_REJECTED:
-	case VC_SUSPEND_FAILED:
-		/* Ensure any idle state actions have been run */
-		set_suspend_state(arm_state, VC_SUSPEND_IDLE);
-		/* fall through */
-	case VC_SUSPEND_IDLE:
-		vchiq_log_info(vchiq_susp_log_level,
-			"%s: suspending", __func__);
-		set_suspend_state(arm_state, VC_SUSPEND_REQUESTED);
-		/* kick the slot handler thread to initiate suspend */
-		request_poll(state, NULL, 0);
-		break;
-	}
-
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit %d", __func__, status);
-	return status;
-}
-
 void
 vchiq_platform_check_suspend(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 0a4efcf95a61..606a519dd3db 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -88,9 +88,6 @@ int vchiq_platform_init(struct platform_device *pdev,
 extern struct vchiq_state *
 vchiq_get_state(void);
 
-extern enum vchiq_status
-vchiq_arm_vcsuspend(struct vchiq_state *state);
-
 extern enum vchiq_status
 vchiq_arm_vcresume(struct vchiq_state *state);
 
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
