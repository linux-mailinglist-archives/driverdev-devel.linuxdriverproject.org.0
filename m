Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7EB1FF87F
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Jun 2020 18:03:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3223587C2B;
	Thu, 18 Jun 2020 16:03:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2wwXwZbVhzIZ; Thu, 18 Jun 2020 16:03:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFA13878C8;
	Thu, 18 Jun 2020 16:03:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 916551BF2F4
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 16:03:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 76DD92051A
 for <devel@linuxdriverproject.org>; Thu, 18 Jun 2020 16:03:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GnREwD5MO7Gh for <devel@linuxdriverproject.org>;
 Thu, 18 Jun 2020 16:03:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com
 [209.85.218.67])
 by silver.osuosl.org (Postfix) with ESMTPS id D066E20361
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 16:03:34 +0000 (UTC)
Received: by mail-ej1-f67.google.com with SMTP id dp18so6962519ejc.8
 for <devel@driverdev.osuosl.org>; Thu, 18 Jun 2020 09:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZTPuttmyD/g1HHmZ6U47P/FAUm11ksITEEPsRfBCiqg=;
 b=Ufp+9pPu5ZJanpPXh6jW749X1WmOo5C0ZkfpNw0LFLUeZ4LvCGFj2PMRBjk1b5vjxu
 JuLqd0cTR9nwMYXFee4tMQy625hPPNx/mC9hFo/ZWJiFp8pSG2aLJPjKX1tfGH2rTcid
 Cdj+tbwxl5tsNHy6stgu+ErwoWQg6+Xdgv5SWlFdcohZn9H8H7kOjwa3WiXwN0XkKXx6
 j3jz+TO8rUNJKfmp65CysYKAoKgcL6MB/oxp36qI/UA+7LlA27pmwuAp6LiLCorzRvzW
 1JO8Kxv2dKYDSckyi2sc3O94l7e6Zwr/xA9dCGbPFrQNhs9rB8CGyhs/JIy1ktqWuq/J
 32sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZTPuttmyD/g1HHmZ6U47P/FAUm11ksITEEPsRfBCiqg=;
 b=skDNf0Ro4J8eBc8DCLdeAKD3h9XFCU9gPGWSLzEd+Eye+85Syk8qtarpxoL8Q2uHmI
 +zdSK4A7YAnywEIrtFrhcVrx4/wMpB10ma2GMW4tur0g+zTk2riml42F7pRj9yPYXUv1
 tp5zPYduU1VimWGMYv5T+7KPXvrVdXVmzDRrplXjSv85GfHzepTW+vScjznVn4y7A7h1
 SS1pPvTwOBP1yL7GP5puFMM/Q6FiColLxq+pZXQfaaXbGfltQbVFTpON39xZ6RQoUlRO
 C5/zhEp8v5W0LLfjhXrvYt07fhRUBr0L/+wGG+HMOuU80ZkFcOvI3PDFDMz5XlxAvKiz
 E6zQ==
X-Gm-Message-State: AOAM5317ezp79SQ2BAyJjm+UG4HzZBqSMpx5x429t/H/sKWw1AXjbol+
 M+349j2ZCJZjIgu5ZovnSp8=
X-Google-Smtp-Source: ABdhPJzGkER2hN6AIMIPCJUIaA8ZJigbh8kHbNx0PXztec3GbN26Km2ciH60Uo1ICppWIF0C62qhAQ==
X-Received: by 2002:a17:906:5595:: with SMTP id
 y21mr4691332ejp.61.1592496213136; 
 Thu, 18 Jun 2020 09:03:33 -0700 (PDT)
Received: from garrit-VirtualBox.fritz.box ([94.31.102.44])
 by smtp.gmail.com with ESMTPSA id e17sm2627838eja.51.2020.06.18.09.03.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:03:32 -0700 (PDT)
From: Garrit Franke <garritfranke@gmail.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org,
 devel@driverdev.osuosl.org
Subject: [PATCH] staging: vc04_services: vchiq_arm: replace bitshift with BIT
 macro
Date: Thu, 18 Jun 2020 18:02:59 +0200
Message-Id: <20200618160258.77915-1-garritfranke@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: Garrit Franke <garritfranke@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This should prevent possible overflowing bits by using the BIT macro in
vchiq_core

Signed-off-by: Garrit Franke <garritfranke@gmail.com>
---
 .../interface/vchiq_arm/vchiq_core.c          | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index ae9183db44ee..5a6d2bd59ec0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -39,9 +39,9 @@ struct vchiq_openack_payload {
 };
 
 enum {
-	QMFLAGS_IS_BLOCKING     = (1 << 0),
-	QMFLAGS_NO_MUTEX_LOCK   = (1 << 1),
-	QMFLAGS_NO_MUTEX_UNLOCK = (1 << 2)
+	QMFLAGS_IS_BLOCKING     = BIT(0),
+	QMFLAGS_NO_MUTEX_LOCK   = BIT(1),
+	QMFLAGS_NO_MUTEX_UNLOCK = BIT(2)
 };
 
 /* we require this for consistency between endpoints */
@@ -526,14 +526,14 @@ request_poll(struct vchiq_state *state, struct vchiq_service *service,
 		do {
 			value = atomic_read(&service->poll_flags);
 		} while (atomic_cmpxchg(&service->poll_flags, value,
-			value | (1 << poll_type)) != value);
+			value | BIT(poll_type)) != value);
 
 		do {
 			value = atomic_read(&state->poll_services[
 				service->localport>>5]);
 		} while (atomic_cmpxchg(
 			&state->poll_services[service->localport>>5],
-			value, value | (1 << (service->localport & 0x1f)))
+			value, value | BIT((service->localport & 0x1f)))
 			!= value);
 	}
 
@@ -1287,19 +1287,19 @@ poll_services(struct vchiq_state *state)
 
 		flags = atomic_xchg(&state->poll_services[group], 0);
 		for (i = 0; flags; i++) {
-			if (flags & (1 << i)) {
+			if (flags & BIT(i)) {
 				struct vchiq_service *service =
 					find_service_by_port(state,
 						(group<<5) + i);
 				u32 service_flags;
 
-				flags &= ~(1 << i);
+				flags &= ~BIT(i);
 				if (!service)
 					continue;
 				service_flags =
 					atomic_xchg(&service->poll_flags, 0);
 				if (service_flags &
-					(1 << VCHIQ_POLL_REMOVE)) {
+					BIT(VCHIQ_POLL_REMOVE)) {
 					vchiq_log_info(vchiq_core_log_level,
 						"%d: ps - remove %d<->%d",
 						state->id, service->localport,
@@ -1317,7 +1317,7 @@ poll_services(struct vchiq_state *state)
 						request_poll(state, service,
 							VCHIQ_POLL_REMOVE);
 				} else if (service_flags &
-					(1 << VCHIQ_POLL_TERMINATE)) {
+					BIT(VCHIQ_POLL_TERMINATE)) {
 					vchiq_log_info(vchiq_core_log_level,
 						"%d: ps - terminate %d<->%d",
 						state->id, service->localport,
@@ -1328,11 +1328,11 @@ poll_services(struct vchiq_state *state)
 						request_poll(state, service,
 							VCHIQ_POLL_TERMINATE);
 				}
-				if (service_flags & (1 << VCHIQ_POLL_TXNOTIFY))
+				if (service_flags & BIT(VCHIQ_POLL_TXNOTIFY))
 					notify_bulks(service,
 						&service->bulk_tx,
 						1/*retry_poll*/);
-				if (service_flags & (1 << VCHIQ_POLL_RXNOTIFY))
+				if (service_flags & BIT(VCHIQ_POLL_RXNOTIFY))
 					notify_bulks(service,
 						&service->bulk_rx,
 						1/*retry_poll*/);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
