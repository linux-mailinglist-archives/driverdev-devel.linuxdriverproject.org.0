Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5739A556EA
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 20:17:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EF8AD85F51;
	Tue, 25 Jun 2019 18:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fwqs5qUWWy3y; Tue, 25 Jun 2019 18:17:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9AFF485F81;
	Tue, 25 Jun 2019 18:17:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 75CD71BF3CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 71864203C7
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hc2zjmYfhr+P for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 18:17:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 4959E20781
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 18:17:53 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id a93so9285101pla.7
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yuHblpfu5i68xJ6EQkdjloP0O8Tt/QPPF6JuJ1uV5XQ=;
 b=NXofPKhwS8Li19Fm0qYYRh60USSNiUUxcmSm7u5FQTA78Z3TWQVE+qTmBSWdmFoXqI
 Ch1EpzFu925iz6D2OsrsopmWWQdpdapUKKIEeaHyLbj5pxs159q1LxwUFbkNuXfVYmQ7
 OveFAMOqerAovsILc2nnOGDr2nO7VCpG7zJjqjrt2Kk8Y/vxYuSJQ/mXoayGE5LAXxLR
 sxmxonI6utk6uA3jeweOB5U0w0+e4alpq9vzZ0khhYcNYRUHdTweGp+z4fvfaqwOZtjY
 B7gM2P/Xrxgg75gxy19aEBBMZBsSfoWiCqvmNkDkPDxPi+jk+c2T8/aYNfGuOfs1e7nN
 r4tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yuHblpfu5i68xJ6EQkdjloP0O8Tt/QPPF6JuJ1uV5XQ=;
 b=jPYMGaLgONZq3yldLb5cz3aEHitCK+YcKx2nRHyQBDFqFtOrkPneU4fNwDV30Da0gd
 qeLvM3xQXEMOFuLUDgvlSmeZ7JH2sHJdhgkZbludd7ifLShC0oSVzEjaE7xI1JLodV0H
 fGvxQnyye07gCM9SY9IvBHQ5LEg7JSlGxhDN0i17MVZ+79h1JyBZ5vzpLF5mcxPukxx5
 NHwlXjm0x0Qy7BlBhhAm+zwP54O2ii/Kn/vbkYzHZRFIcC75eSIAoTlzckDdkNIKsQRf
 uRJFj9PTWK+SlBxi+pjJBzpBq17Z6nROK7AokbLP23HmdrBIAvkFHM+VFhPo94bdquAN
 l4Uw==
X-Gm-Message-State: APjAAAUjCTHSwuQGICTqUvL82+tA2fmMa5F4VFM+aYCEPuVgRkV3iQRu
 wMC5t2TT2XxliISeGeD4nko=
X-Google-Smtp-Source: APXvYqxnGY9Wr6s8gpGV/odUIOfRZg8u/r4QEu70F5gaNfKnHVHycE5N/Jdnjm9pzvNeTKHeGedlYA==
X-Received: by 2002:a17:902:2e81:: with SMTP id r1mr97555plb.0.1561486672980; 
 Tue, 25 Jun 2019 11:17:52 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:52 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 9/9] staging: vc04_services: Remove function block_resume()
Date: Tue, 25 Jun 2019 23:47:09 +0530
Message-Id: <20190625181710.2267-9-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190625181710.2267-1-nishkadg.linux@gmail.com>
References: <20190625181710.2267-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function block_resume as it was only called by
vchiq_arm_force_suspend, which was removed in a previous patch.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 66 -------------------
 1 file changed, 66 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index ebf7e2a3bd3b..cc4383d1ec3e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2554,72 +2554,6 @@ need_resume(struct vchiq_state *state)
 			vchiq_videocore_wanted(state);
 }
 
-static int
-block_resume(struct vchiq_arm_state *arm_state)
-{
-	int status = VCHIQ_SUCCESS;
-	const unsigned long timeout_val =
-				msecs_to_jiffies(FORCE_SUSPEND_TIMEOUT_MS);
-	int resume_count = 0;
-
-	/* Allow any threads which were blocked by the last force suspend to
-	 * complete if they haven't already.  Only give this one shot; if
-	 * blocked_count is incremented after blocked_blocker is completed
-	 * (which only happens when blocked_count hits 0) then those threads
-	 * will have to wait until next time around */
-	if (arm_state->blocked_count) {
-		reinit_completion(&arm_state->blocked_blocker);
-		write_unlock_bh(&arm_state->susp_res_lock);
-		vchiq_log_info(vchiq_susp_log_level, "%s wait for previously "
-			"blocked clients", __func__);
-		if (wait_for_completion_interruptible_timeout(
-				&arm_state->blocked_blocker, timeout_val)
-					<= 0) {
-			vchiq_log_error(vchiq_susp_log_level, "%s wait for "
-				"previously blocked clients failed", __func__);
-			status = VCHIQ_ERROR;
-			write_lock_bh(&arm_state->susp_res_lock);
-			goto out;
-		}
-		vchiq_log_info(vchiq_susp_log_level, "%s previously blocked "
-			"clients resumed", __func__);
-		write_lock_bh(&arm_state->susp_res_lock);
-	}
-
-	/* We need to wait for resume to complete if it's in process */
-	while (arm_state->vc_resume_state != VC_RESUME_RESUMED &&
-			arm_state->vc_resume_state > VC_RESUME_IDLE) {
-		if (resume_count > 1) {
-			status = VCHIQ_ERROR;
-			vchiq_log_error(vchiq_susp_log_level, "%s waited too "
-				"many times for resume", __func__);
-			goto out;
-		}
-		write_unlock_bh(&arm_state->susp_res_lock);
-		vchiq_log_info(vchiq_susp_log_level, "%s wait for resume",
-			__func__);
-		if (wait_for_completion_interruptible_timeout(
-				&arm_state->vc_resume_complete, timeout_val)
-					<= 0) {
-			vchiq_log_error(vchiq_susp_log_level, "%s wait for "
-				"resume failed (%s)", __func__,
-				resume_state_names[arm_state->vc_resume_state +
-							VC_RESUME_NUM_OFFSET]);
-			status = VCHIQ_ERROR;
-			write_lock_bh(&arm_state->susp_res_lock);
-			goto out;
-		}
-		vchiq_log_info(vchiq_susp_log_level, "%s resumed", __func__);
-		write_lock_bh(&arm_state->susp_res_lock);
-		resume_count++;
-	}
-	reinit_completion(&arm_state->resume_blocker);
-	arm_state->resume_blocked = 1;
-
-out:
-	return status;
-}
-
 static inline void
 unblock_resume(struct vchiq_arm_state *arm_state)
 {
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
