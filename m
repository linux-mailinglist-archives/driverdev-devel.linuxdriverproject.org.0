Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 360BD209BF4
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jun 2020 11:33:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9BDDD85D3D;
	Thu, 25 Jun 2020 09:33:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3ROMsxFyaZpe; Thu, 25 Jun 2020 09:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1C90886142;
	Thu, 25 Jun 2020 09:33:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CE1D01BF84C
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 09:33:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C54E5887B0
 for <devel@linuxdriverproject.org>; Thu, 25 Jun 2020 09:33:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gTT1glkdVJcz for <devel@linuxdriverproject.org>;
 Thu, 25 Jun 2020 09:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BFD30886B6
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 09:33:00 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id d15so3647147edm.10
 for <devel@driverdev.osuosl.org>; Thu, 25 Jun 2020 02:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+57ZvxNAZh0uGeZ2gqtuvaNpLTEdFrNCJp+ytZkrjNc=;
 b=lh6I3oPypBycmCQPRx7XnGoCIWjn7zsTku6RFbZ02D0+z0Srke81z03LIVF7lEegY+
 XHwLHEX0jvezRKUTdo3yODwYA5lyM4NoK3kjiCJgZR+MfdQnHk9z5PC19+ZQKC0mzKp0
 Tehng5Vt1p21ZUYy4E5rqmjEa/1yLEOtlbNTqEaKGyHRG633EwGApRhATl7Wpw0jnk1z
 q2b1KS4tHWckvGXkcDLh9uIvE1Xy9Fl525T/aCSm8hG3QenDFKsygOFl4r+57Axgb+P7
 LEQRQPEy+wFUFBwV9U0y2s/l9i5dkArMnPZ1rqNqXQTSsVxvteIAIzvCLg8ZiuMTHPsb
 NNnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+57ZvxNAZh0uGeZ2gqtuvaNpLTEdFrNCJp+ytZkrjNc=;
 b=KNR0+E8j6ziFfcNj0oPUCT39+cbSGNdBWedTIpUGzjo5A8rW5eB7L5iCyMwECfLR+t
 sl7xkc82tln2Qgrp8Va6MeBNXp+ae6nH15qZ5umgkURtzD+EjpNiA6GeWoC0l9EC0MwW
 z6+32eL0MRSXTV15GZ5PfpssocU3NjMMmPokEuzMbCu/W96Dcf0/XiVPjcIMV75piOWC
 2hZ5fboPJstwkGcI/rZTO3CKpwuCTRniAgW6Ytgo9qiLMXGzn/uDiWwOGKRlx9tFBOt9
 4nMmrShmv5dLAyW2bG/rjlVlys0rakNs+WfSbZyZ7XxOicYWxr5uI1xaKv0qZznDDC4M
 HrHg==
X-Gm-Message-State: AOAM532bSqXAhk04E8rKEjXgJ6a3Tovt8+JQxmyQRTvfQWXhg9Cdzyhu
 dIv6J2+zzTQvCJDsAlS5cYk=
X-Google-Smtp-Source: ABdhPJysBl52w/FrB4z3bNLZYzQOWQLH1GtWV4FifnXFR11G94H2+tkBGRkVcFwNuI63s51rzq5Mjg==
X-Received: by 2002:a05:6402:22a5:: with SMTP id
 cx5mr32441498edb.246.1593077579047; 
 Thu, 25 Jun 2020 02:32:59 -0700 (PDT)
Received: from garrit-VirtualBox.fritz.box ([94.31.102.44])
 by smtp.gmail.com with ESMTPSA id s7sm5047178edr.57.2020.06.25.02.32.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2020 02:32:58 -0700 (PDT)
From: Garrit Franke <garritfranke@gmail.com>
To: dan.carpenter@oracle.com
Subject: [PATCH v2] trivial: staging: vc04_services: replace bitshift with BIT
 macro
Date: Thu, 25 Jun 2020 11:32:37 +0200
Message-Id: <20200625093237.2640-1-garritfranke@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200625090610.GA2571@kadam>
References: <20200625090610.GA2571@kadam>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 Garrit Franke <garritfranke@gmail.com>, nsaenzjulienne@suse.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up some bitshifts by using the BIT macro.

Signed-off-by: Garrit Franke <garritfranke@gmail.com>
---
 .../interface/vchiq_arm/vchiq_core.c          | 22 +++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index ae9183db44ee..e0027148963e 100644
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
+			value, value | BIT(service->localport & 0x1f))
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
