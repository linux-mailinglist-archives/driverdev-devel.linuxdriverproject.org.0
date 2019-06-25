Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2449556E3
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 20:17:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A499120797;
	Tue, 25 Jun 2019 18:17:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UeIElIlEDQri; Tue, 25 Jun 2019 18:17:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D12B320781;
	Tue, 25 Jun 2019 18:17:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F3BEE1BF3CE
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F0E4485F33
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 18:17:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EfhpFF14VFqb for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 18:17:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 73B6985D40
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 18:17:38 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id v9so9326642pgr.13
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 11:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TPd8ferAVo0HvYrCWk5KrEQ9AnVSJ83ueSCdzT8Hy3Y=;
 b=Glm2fnCH5Knprr1c5OUlWUeOYPwxM5GitpTmCM+Oo4HEF38UyXNm4b01UYCaefch6v
 Um9Sj6ISGiadSFIt+UAN1pZmZd+yvXAyt6hG9duvXdOhlmjM5IHuUNEfR0JBLZ8OZEk/
 0vG4txuXrHSM2JvHWkkm+OuZCppMbOgaNlRq0hjz+XM/aGRfqbYwyYefLFleuTy1A90K
 PDUf6kvEnHf1v6IuU+z2+UldEbFIhdIQYHOn6faMiuYKubtIs9dC3uP9BF0XLy4jVuuf
 RH6WFUBYdIFWI1iZmPNQeDATEUsED5wuTndl6DQEsZrlI6mDJ+BRQ6svewQBpB9UP9B9
 qVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TPd8ferAVo0HvYrCWk5KrEQ9AnVSJ83ueSCdzT8Hy3Y=;
 b=lZzUh5n3JMabGI7pDq5tKwvx9fmF3Gv+p1UsLh6ALYKV/r6QAQo3+sOdAFki+Nj4+8
 7lxpsf0Yv8yyfa6JYdErOkrupQUnR8eeuYHvO2UMlZcj9O+4zKtlV7g8wZFZAnmFGl/r
 wK1ByV2NGYUOHjU0HJ6HL5qJgWiOb4JmkM50p55dFv9SlSCNtIx6cOHYTl8Zt3o5ldwv
 y3gXMcg2z2jwLl0x1GHmlMmO7fS+4h1bJ8xVoxiELmdTa7QLLAXS8hXm6GTVez0IsvUs
 r+UuWFn7/h5bqi6UI8BTPzDspBVgw6sSjetHsT8VhhMR9mgolL3713bcS7gWKuDD53X6
 gQHw==
X-Gm-Message-State: APjAAAXBeOsCeOQVb7Fuq+zJdxgT0k1Vh3COGTphSO4UiiGVXQnNWdVO
 eyWdRZm61NpaPbfd1jW4UZw=
X-Google-Smtp-Source: APXvYqzq3ns3IcREp9Pgz/jP+aV8t5Ma8TdnTIJ79KzabdlwjSRqsHg7+tNbvorfmyAB0jV5TX/SCQ==
X-Received: by 2002:a17:90a:dc86:: with SMTP id
 j6mr126154pjv.141.1561486658147; 
 Tue, 25 Jun 2019 11:17:38 -0700 (PDT)
Received: from localhost.localdomain ([122.163.71.137])
 by smtp.gmail.com with ESMTPSA id w7sm14042959pfb.117.2019.06.25.11.17.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 11:17:37 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: eric@anholt.net, wahrenst@gmx.net, gregkh@linuxfoundation.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org
Subject: [PATCH 5/9] staging: vc04_services: Remove vchiq_resume_internal()
Date: Tue, 25 Jun 2019 23:47:05 +0530
Message-Id: <20190625181710.2267-5-nishkadg.linux@gmail.com>
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

Remove unused function vchiq_resume_internal.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 .../interface/vchiq_arm/vchiq_core.c             | 16 ----------------
 .../interface/vchiq_arm/vchiq_core.h             |  3 ---
 2 files changed, 19 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 7f093b2679ae..5e231cc5c87d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -2830,22 +2830,6 @@ vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance)
 	return VCHIQ_SUCCESS;
 }
 
-VCHIQ_STATUS_T
-vchiq_resume_internal(struct vchiq_state *state)
-{
-	VCHIQ_STATUS_T status = VCHIQ_SUCCESS;
-
-	if (state->conn_state == VCHIQ_CONNSTATE_PAUSED) {
-		vchiq_set_conn_state(state, VCHIQ_CONNSTATE_RESUMING);
-		request_poll(state, NULL, 0);
-	} else {
-		status = VCHIQ_ERROR;
-		VCHIQ_STATS_INC(state, error_count);
-	}
-
-	return status;
-}
-
 VCHIQ_STATUS_T
 vchiq_close_service(VCHIQ_SERVICE_HANDLE_T handle)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index b319031145ed..b5e09d52b202 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -518,9 +518,6 @@ vchiq_free_service_internal(struct vchiq_service *service);
 extern VCHIQ_STATUS_T
 vchiq_shutdown_internal(struct vchiq_state *state, VCHIQ_INSTANCE_T instance);
 
-extern VCHIQ_STATUS_T
-vchiq_resume_internal(struct vchiq_state *state);
-
 extern void
 remote_event_pollall(struct vchiq_state *state);
 
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
