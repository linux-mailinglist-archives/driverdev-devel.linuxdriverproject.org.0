Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FED148A55
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 15:47:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B008086CE5;
	Fri, 24 Jan 2020 14:47:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xXdoQo2DUdsk; Fri, 24 Jan 2020 14:47:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6942F86D92;
	Fri, 24 Jan 2020 14:47:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 461B81BF3AE
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4284220336
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 14:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ywLfeJEXdHRB for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 14:46:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by silver.osuosl.org (Postfix) with ESMTPS id 7AB2B203EE
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 14:46:46 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1F856AF0D;
 Fri, 24 Jan 2020 14:46:45 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 19/22] staging: vc04_services: Get rid of vc_suspend_state in
 struct vchiq_arm_state
Date: Fri, 24 Jan 2020 15:46:13 +0100
Message-Id: <20200124144617.2213-20-nsaenzjulienne@suse.de>
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

It's never used.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c     | 11 ++---------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h     |  1 -
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 577ecfefce3c..049512589375 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2619,7 +2619,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 	int only_nonzero = 0;
 	static const char *nz = "<-- preventing suspend";
 
-	enum vc_suspend_status vc_suspend_state;
 	enum vc_resume_status  vc_resume_state;
 	int peer_count;
 	int vc_use_count;
@@ -2634,7 +2633,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 		return;
 
 	read_lock_bh(&arm_state->susp_res_lock);
-	vc_suspend_state = arm_state->vc_suspend_state;
 	vc_resume_state  = arm_state->vc_resume_state;
 	peer_count = arm_state->peer_use_count;
 	vc_use_count = arm_state->videocore_use_count;
@@ -2664,9 +2662,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 
 	read_unlock_bh(&arm_state->susp_res_lock);
 
-	vchiq_log_warning(vchiq_susp_log_level,
-		"-- Videcore suspend state: %s --",
-		suspend_state_names[vc_suspend_state + VC_SUSPEND_NUM_OFFSET]);
 	vchiq_log_warning(vchiq_susp_log_level,
 		"-- Videcore resume state: %s --",
 		resume_state_names[vc_resume_state + VC_RESUME_NUM_OFFSET]);
@@ -2713,12 +2708,10 @@ vchiq_check_service(struct vchiq_service *service)
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
 	}
 out:
 	return ret;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index e2f7fa865694..780c352a5d64 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -34,7 +34,6 @@ struct vchiq_arm_state {
 	struct completion vc_resume_complete;
 
 	rwlock_t susp_res_lock;
-	enum vc_suspend_status vc_suspend_state;
 	enum vc_resume_status vc_resume_state;
 
 	struct vchiq_state *state;
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
