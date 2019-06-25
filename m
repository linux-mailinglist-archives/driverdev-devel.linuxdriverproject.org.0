Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0C8556E1
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 20:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7970085F89;
	Tue, 25 Jun 2019 18:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jDJlehpdmRnq; Tue, 25 Jun 2019 18:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 84EF185D40;
	Tue, 25 Jun 2019 18:17:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8221C1BF3CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7F43385D40
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kK8iCDR3WZ4A for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 18:17:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D98C185AA1
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 18:17:31 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id e5so9254744pls.13
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w7IdLoqaM/pkAnJ/BoKl0kc6qgBZS1ZrZeCfsR3YYF8=;
 b=Se0IbeO6vIvQd+5CJ7kukmA7+d+F4c6uMSZok0m6C/Fs6dAdUTho0JvHEQoy4AgBmP
 mlIQXJWmHXMQBFumYr9HhsRsrP412uAZLK50N/Z4xvpmwrJokY9+63+h3ZO7WB0hASJu
 rtVfDXvLDDBbirz6RivBrEWdkV1ancCKQcZTGQHuOqSJBc0fsMCrq9MnzrXCJ/OTjsE+
 ZOOZUPHPN8nSxCyneH5TcyF7nCOV8NDfhtRdrLKARe8KhGvzrvqXRpApAIhcB6JRBQNR
 rjiSVly6Ao8EBbcnLCe+5uqQBLUmS32NRsFyome56XCpodUkiOP3taRNezEzb+lrBjnH
 oXKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w7IdLoqaM/pkAnJ/BoKl0kc6qgBZS1ZrZeCfsR3YYF8=;
 b=I0QTjL1nNmHQB4AfCgnDFpUmwgPcpsueLxRqF92Cd5HX6dL8XoQsijfzuyMUJfQVYO
 oVtGN7mMW+tSRnZto0NpjVQJhSHyPlzCsuG+V7gDit79IYFtSoLqM+PiTF/rIMAiowLh
 u3TwYDKAk2x+BqXJtEqHRy1i41dXNJgLcX2EvfOoUUzvoHVoTo2tDgZ8U33/AZrGMx16
 MZiqQ7L9n8b0YrSXRRhCVLGPJJ03aQDCOifb0ynFDL44cKqyD30DrKlnCWtXZyB5jM5E
 3grFqKrmaWx+CDRLxjJqYKiVT8UnYPv/GDjNxJ0RwXIDDTiQ9+ivx6qfKDJn9jOJBkH+
 26ZQ==
X-Gm-Message-State: APjAAAX+SMvfSbEqJTG+WxUGXPeVKWI94WHwvmPf8nIYj2uawweWQjl3
 pdl1hsI9lxqOGMOpXdXS+8bgCE66V60=
X-Google-Smtp-Source: APXvYqy4KthWZsAd+dDOYC4XRNhbd4yRpUArFvVQ5rtlvqQuCpnjsLEHIegsA7UtNb4N/3C2s2J4oQ==
X-Received: by 2002:a17:902:4c88:: with SMTP id b8mr43145ple.29.1561486651582; 
 Tue, 25 Jun 2019 11:17:31 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:31 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 3/9] staging: vc04_services: Remove vchiq_arm_force_suspend()
Date: Tue, 25 Jun 2019 23:47:03 +0530
Message-Id: <20190625181710.2267-3-nishkadg.linux@gmail.com>
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

Remove unused function vchiq_arm_force_suspend.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 120 ------------------
 .../interface/vchiq_arm/vchiq_arm.h           |   3 -
 2 files changed, 123 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index bf7c1e2bce67..6e59470d44ab 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2741,126 +2741,6 @@ output_timeout_error(struct vchiq_state *state)
 
 }
 
-/* Try to get videocore into suspended state, regardless of autosuspend state.
-** We don't actually force suspend, since videocore may get into a bad state
-** if we force suspend at a bad time.  Instead, we wait for autosuspend to
-** determine a good point to suspend.  If this doesn't happen within 100ms we
-** report failure.
-**
-** Returns VCHIQ_SUCCESS if videocore suspended successfully, VCHIQ_RETRY if
-** videocore failed to suspend in time or VCHIQ_ERROR if interrupted.
-*/
-VCHIQ_STATUS_T
-vchiq_arm_force_suspend(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	VCHIQ_STATUS_T status = VCHIQ_ERROR;
-	long rc = 0;
-	int repeat = -1;
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-
-	write_lock_bh(&arm_state->susp_res_lock);
-
-	status = block_resume(arm_state);
-	if (status != VCHIQ_SUCCESS)
-		goto unlock;
-	if (arm_state->vc_suspend_state == VC_SUSPEND_SUSPENDED) {
-		/* Already suspended - just block resume and exit */
-		vchiq_log_info(vchiq_susp_log_level, "%s already suspended",
-			__func__);
-		status = VCHIQ_SUCCESS;
-		goto unlock;
-	} else if (arm_state->vc_suspend_state <= VC_SUSPEND_IDLE) {
-		/* initiate suspend immediately in the case that we're waiting
-		 * for the timeout */
-		stop_suspend_timer(arm_state);
-		if (!vchiq_videocore_wanted(state)) {
-			vchiq_log_info(vchiq_susp_log_level, "%s videocore "
-				"idle, initiating suspend", __func__);
-			status = vchiq_arm_vcsuspend(state);
-		} else if (arm_state->autosuspend_override <
-						FORCE_SUSPEND_FAIL_MAX) {
-			vchiq_log_info(vchiq_susp_log_level, "%s letting "
-				"videocore go idle", __func__);
-			status = VCHIQ_SUCCESS;
-		} else {
-			vchiq_log_warning(vchiq_susp_log_level, "%s failed too "
-				"many times - attempting suspend", __func__);
-			status = vchiq_arm_vcsuspend(state);
-		}
-	} else {
-		vchiq_log_info(vchiq_susp_log_level, "%s videocore suspend "
-			"in progress - wait for completion", __func__);
-		status = VCHIQ_SUCCESS;
-	}
-
-	/* Wait for suspend to happen due to system idle (not forced..) */
-	if (status != VCHIQ_SUCCESS)
-		goto unblock_resume;
-
-	do {
-		write_unlock_bh(&arm_state->susp_res_lock);
-
-		rc = wait_for_completion_interruptible_timeout(
-				&arm_state->vc_suspend_complete,
-				msecs_to_jiffies(FORCE_SUSPEND_TIMEOUT_MS));
-
-		write_lock_bh(&arm_state->susp_res_lock);
-		if (rc < 0) {
-			vchiq_log_warning(vchiq_susp_log_level, "%s "
-				"interrupted waiting for suspend", __func__);
-			status = VCHIQ_ERROR;
-			goto unblock_resume;
-		} else if (rc == 0) {
-			if (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) {
-				/* Repeat timeout once if in progress */
-				if (repeat < 0) {
-					repeat = 1;
-					continue;
-				}
-			}
-			arm_state->autosuspend_override++;
-			output_timeout_error(state);
-
-			status = VCHIQ_RETRY;
-			goto unblock_resume;
-		}
-	} while (0 < (repeat--));
-
-	/* Check and report state in case we need to abort ARM suspend */
-	if (arm_state->vc_suspend_state != VC_SUSPEND_SUSPENDED) {
-		status = VCHIQ_RETRY;
-		vchiq_log_error(vchiq_susp_log_level,
-			"%s videocore suspend failed (state %s)", __func__,
-			suspend_state_names[arm_state->vc_suspend_state +
-						VC_SUSPEND_NUM_OFFSET]);
-		/* Reset the state only if it's still in an error state.
-		 * Something could have already initiated another suspend. */
-		if (arm_state->vc_suspend_state < VC_SUSPEND_IDLE)
-			set_suspend_state(arm_state, VC_SUSPEND_IDLE);
-
-		goto unblock_resume;
-	}
-
-	/* successfully suspended - unlock and exit */
-	goto unlock;
-
-unblock_resume:
-	/* all error states need to unblock resume before exit */
-	unblock_resume(arm_state);
-
-unlock:
-	write_unlock_bh(&arm_state->susp_res_lock);
-
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit %d", __func__, status);
-	return status;
-}
-
 void
 vchiq_check_suspend(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 61b15278c999..b424323e9613 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -112,9 +112,6 @@ vchiq_get_state(void);
 extern VCHIQ_STATUS_T
 vchiq_arm_vcsuspend(struct vchiq_state *state);
 
-extern VCHIQ_STATUS_T
-vchiq_arm_force_suspend(struct vchiq_state *state);
-
 extern VCHIQ_STATUS_T
 vchiq_arm_vcresume(struct vchiq_state *state);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
