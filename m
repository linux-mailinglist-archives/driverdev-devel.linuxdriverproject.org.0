Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 641E5556DF
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 20:17:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 641BF20791;
	Tue, 25 Jun 2019 18:17:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9DRq9ttJeIi4; Tue, 25 Jun 2019 18:17:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8877A20781;
	Tue, 25 Jun 2019 18:17:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BBDCC1BF3CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8F7D85D40
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XijqIA7Bfyl7 for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 18:17:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 95BCE85AA1
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 18:17:28 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id f25so9352327pgv.10
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bbu2tK3sSakQNVnTXMl1WxahFU6YdysIhCNxY10qcCo=;
 b=tKeM1nGfAFy82ijO53OzXbiMonpIclXTfbiFrjUIX6LNGP9WTd+3/aapkGSqfzAYZa
 J3IRSfzOrSta/n7Jf8cHooKALNszdjpL81TLbuciwWNrhNzQ8GWxX1FS8JyMRq3ghoH1
 iun0X3fs0/XpKbh9CuoDLNxhDYqhCVSQi2wewfn7K9qz3wEVll/Y7tD+X7XgHB5M6NQG
 2iQ9vqe0HFB5troq5IRVo1yUXXJjgcO5uSpyoIcy3xgbgSDVPJBpnjU9pJO1BRAqJ7Er
 qkCdrF9gcVW3YhH8TcATTeo5uAOpc3mMiZdJzcUI5eEZnHXFpOGQs+JWAlgf5R8z/yli
 o6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bbu2tK3sSakQNVnTXMl1WxahFU6YdysIhCNxY10qcCo=;
 b=JBe31pidm+y7spnSuGH8WCQ7yCD2jj7WmgLfeYAgHScJwF/f2BMEvVD1KShrHqeo6E
 /5QH4aWP4Z53YWrX4/sFWGvZV/S9KwAStBNlPZjZYQzNpNvEIol0DnGkZUQfjChOZhm7
 veEns5bMgA+XplsEJXaZpum/onF3HhbM2BLasvwVWAa24IJ/RHsrCUEkRh0fVVmryVzd
 jnZE2TMNzVvEfDAnZnWiL3uu/uUnOoEMntE1BSAvK2WhyR7lndlj3ZDlMrTV3Y2V8U02
 /wpmfr7cTkHQtFosVcfgAwKoVQezFVY6pwoR8f8EHFV7tNbb82Z+a9pfPFna4ImUZlot
 9sWQ==
X-Gm-Message-State: APjAAAVglzBB6U7NCvHGe9x+tv2QCNFlgHWLdkPgxzGXNhpWbZLFIkGb
 kOguWl6J64VvqtaJcQEz5qc=
X-Google-Smtp-Source: APXvYqy/6zI05cRtN3eini2aVDksTAmfLNCv+u3083Kd+IS7U9vzKapIqMvIz+7VpFR658J/vgZ5Xw==
X-Received: by 2002:a63:3f48:: with SMTP id m69mr1507421pga.17.1561486648208; 
 Tue, 25 Jun 2019 11:17:28 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:27 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 2/9] staging: vc04_services: Remove function
 vchiq_arm_allow_resume()
Date: Tue, 25 Jun 2019 23:47:02 +0530
Message-Id: <20190625181710.2267-2-nishkadg.linux@gmail.com>
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

Remove unused function vchiq_arm_allow_resume.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 43 -------------------
 .../interface/vchiq_arm/vchiq_arm.h           |  3 --
 2 files changed, 46 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 9264a07cf160..bf7c1e2bce67 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2883,49 +2883,6 @@ vchiq_check_suspend(struct vchiq_state *state)
 	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
 }
 
-int
-vchiq_arm_allow_resume(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-	int resume = 0;
-	int ret = -1;
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-
-	write_lock_bh(&arm_state->susp_res_lock);
-	unblock_resume(arm_state);
-	resume = vchiq_check_resume(state);
-	write_unlock_bh(&arm_state->susp_res_lock);
-
-	if (resume) {
-		if (wait_for_completion_interruptible(
-			&arm_state->vc_resume_complete) < 0) {
-			vchiq_log_error(vchiq_susp_log_level,
-				"%s interrupted", __func__);
-			/* failed, cannot accurately derive suspend
-			 * state, so exit early. */
-			goto out;
-		}
-	}
-
-	read_lock_bh(&arm_state->susp_res_lock);
-	if (arm_state->vc_suspend_state == VC_SUSPEND_SUSPENDED) {
-		vchiq_log_info(vchiq_susp_log_level,
-				"%s: Videocore remains suspended", __func__);
-	} else {
-		vchiq_log_info(vchiq_susp_log_level,
-				"%s: Videocore resumed", __func__);
-		ret = 0;
-	}
-	read_unlock_bh(&arm_state->susp_res_lock);
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit %d", __func__, ret);
-	return ret;
-}
-
 /* This function should be called with the write lock held */
 int
 vchiq_check_resume(struct vchiq_state *state)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index c1d5a9d17071..61b15278c999 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -115,9 +115,6 @@ vchiq_arm_vcsuspend(struct vchiq_state *state);
 extern VCHIQ_STATUS_T
 vchiq_arm_force_suspend(struct vchiq_state *state);
 
-extern int
-vchiq_arm_allow_resume(struct vchiq_state *state);
-
 extern VCHIQ_STATUS_T
 vchiq_arm_vcresume(struct vchiq_state *state);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
