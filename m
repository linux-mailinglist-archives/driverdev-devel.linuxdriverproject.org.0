Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD6D556E2
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 20:17:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 86FC2865FC;
	Tue, 25 Jun 2019 18:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9lgNUON20IFz; Tue, 25 Jun 2019 18:17:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id CE20C865CF;
	Tue, 25 Jun 2019 18:17:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B48001BF3CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B1F9087B08
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iZJE9g+++Ekm for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 18:17:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D0E887A5A
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 18:17:35 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id f25so9352449pgv.10
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4zbgv1pM7bI2m8GxF16hew58WU7DUKWqaBruIQtO3DI=;
 b=VQyg9TcdelCeyiI1djapCGLalyj5yASTmGId7fjqOx1QPMlkGJnrfZejEUD0c0pVV8
 VSW0684Ej6upzAFlRLe9nuzxGK9V1kIFasWuOsS7yjI3wX/uGyqrVI1TemKfYEzuEmyJ
 TxYCnlK0dPd0G3hVc57zF2Fo0eJqxWyHTOdQENn8BoXsOopdQoUOeFZAG/7gzKX79iMJ
 2BbAUpM81Cw8YrHcLeQEv6mNSzdKrY1BxlJU6+wrtNOJl6fhr1A2fyfQaKBzW246EbRz
 DCzXnyQeSIp2q7YOwlhqRsp8vf+RvGaKUjbKSW051MuhjxZc2YUm53kc9TSRh0sh3Jab
 NzOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4zbgv1pM7bI2m8GxF16hew58WU7DUKWqaBruIQtO3DI=;
 b=EpR3YBfupeQre0xO2v+isRBKEpWA7OPafpkNDLSa4HpIl4l7QT8h+sijXWNVt1UiJd
 dyI1trAUiAIiqCXtdwp/k0uPtS2VCQh/hZa8jBrtwVh3up9EhNILFfT6qbdDLqaw8eQ0
 s4tEWiVQkzXtsgdMXRWHmYXJekqYKWeY67VKJn83oiarMUOIeeL7ZayDANnOtRpioqNT
 vT9LYtDDV03moTwV5Sf+HN+g3HZZaQzXv0bdbsAfpLCOPX6BvE4lEavAcOvaAJ4AGgzJ
 MwftwX6dzWXazS7Hc241gQo6yYeOjqOHs5q5/xEy5c2DQKze2XD/EZR3XSkH5OQ0/U3p
 AFEA==
X-Gm-Message-State: APjAAAWpWW4n+e74OFs61o8923Xwlp0vHtLwKAlA6FoR4A2eIEzji49r
 EW9s+oxgX6hS+ZTMIP0o/UQ=
X-Google-Smtp-Source: APXvYqzuGtrSRpXvN1EfFPGsLNzynnPpRFeOY7mm9/vTss2CahrlmDd9kan7wMnjSVb4D4VK/MOGGw==
X-Received: by 2002:a17:90a:cb12:: with SMTP id
 z18mr191644pjt.82.1561486654799; 
 Tue, 25 Jun 2019 11:17:34 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:34 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 4/9] staging: vc04_services: Remove vchiq_pause_internal()
Date: Tue, 25 Jun 2019 23:47:04 +0530
Message-Id: <20190625181710.2267-4-nishkadg.linux@gmail.com>
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

Remove unused function vchiq_pause_internal.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_core.c          | 23 -------------------
 .../interface/vchiq_arm/vchiq_core.h          |  3 ---
 2 files changed, 26 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 0dca6e834ffa..7f093b2679ae 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2830,29 +2830,6 @@ vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 	return VCHIQ_SUCCESS;
 }
 
-VCHIQ_STATUS_T
-vchiq_pause_internal(struct vchiq_state *state)
-{
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
-
-	switch (state->conn_state) {
-	case VCHIQ_CONNSTATE_CONNECTED:
-		/* Request a pause */
-		vchiq_set_conn_state(state, VCHIQ_CONNSTATE_PAUSING);
-		request_poll(state, NULL, 0);
-		break;
-	default:
-		vchiq_log_error(vchiq_core_log_level,
-			"%s in state %s\n",
-			__func__, conn_state_names[state->conn_state]);
-		status = VCHIQ_ERROR;
-		VCHIQ_STATS_INC(state, error_count);
-		break;
-	}
-
-	return status;
-}
-
 VCHIQ_STATUS_T
 vchiq_resume_internal(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index aee2d362e88d..b319031145ed 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -518,9 +518,6 @@ vchiq_free_service_internal(struct vchiq_service *service);
 extern VCHIQ_STATUS_T
 vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
 
-extern VCHIQ_STATUS_T
-vchiq_pause_internal(struct vchiq_state *state);
-
 extern VCHIQ_STATUS_T
 vchiq_resume_internal(struct vchiq_state *state);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
