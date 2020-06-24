Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B14207B66
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jun 2020 20:21:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E232877D3;
	Wed, 24 Jun 2020 18:21:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3RPop5W8NMNe; Wed, 24 Jun 2020 18:20:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 549C38773E;
	Wed, 24 Jun 2020 18:20:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7991BF40E
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 18:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 28C7C8773E
 for <devel@linuxdriverproject.org>; Wed, 24 Jun 2020 18:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WLRMWQZDX6U5 for <devel@linuxdriverproject.org>;
 Wed, 24 Jun 2020 18:20:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4302E877E8
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 18:20:46 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id q15so3198659wmj.2
 for <devel@driverdev.osuosl.org>; Wed, 24 Jun 2020 11:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZTPuttmyD/g1HHmZ6U47P/FAUm11ksITEEPsRfBCiqg=;
 b=vBAcW/ETMVFAe2v8wH1JPsxRSfCknsE9S2FUghuQnumEISjON6TvlRAC0mo7ZIzPBZ
 hpY5H7ywtoBYvecZniyZ4c/Q3eV34tnq6vhc8C65ULY8t6y0PnX8bEwrbcoWj9NId7sH
 6jtLfCGxOlabzYWBTaJBUgvBZ0GXN+EeD/Ew+41FQbiJKyj5KjsCnMtnwAfsI25aMQgj
 OcmlOST3zjJcKV1yRfSKuosq6HJTi6ek3obFGdXv4r1Y44hKxdXpz3/XgDno//eVsobx
 dTY2wgCT77eSplLXi9hEEPKaVNGXuT+P/rJ6RJzKI5aL6rl3Ebk+Ddu1rwpF6Q1UviVf
 QVZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZTPuttmyD/g1HHmZ6U47P/FAUm11ksITEEPsRfBCiqg=;
 b=SrL3KCrybZuVC9Q9Cr3V2CJ+SBkXiW+kiRL0xgTSNuw34vrCa//E4C0MQqdD2bWbtu
 oH+Zww6U/fp4LKAlsPckem1ltIpvtaTWimBOpKy+hTZBB6crEijXL9MiHfbLqNmPxplQ
 iOqQD8FwhmQFzXheqdZvdRoAj3gCI514es46LVsMmbX63AveU75iC83Ho2nfmGKOSb9h
 O2VfCM6Klx3NlvsyqSX8YbAy+1LwbVhXkPCNV1aLlVd6MhP6dVT+8idLvstsesohlOlA
 UApbX5iEulXd5GUbkcKj/n23EfyDqkMFs2/5iRf/pTl4+9frj3+vqAPsEtGkTSP7qRcU
 nxhw==
X-Gm-Message-State: AOAM531RGC9dp+o57sL0zusuB5mu4FMnAjMF61M85mR/DP3jyqDFxnU1
 bIpzPk5Cay/ANcmDHWLNKdI=
X-Google-Smtp-Source: ABdhPJz7WAwW8HPbEVbmMx5qyMQkDpuzU1l8abY/AaWFINez+D/6loXx01m1Cky/22DLqtqlri6Hag==
X-Received: by 2002:a7b:cb59:: with SMTP id v25mr4285223wmj.141.1593022844541; 
 Wed, 24 Jun 2020 11:20:44 -0700 (PDT)
Received: from garrit-VirtualBox.fritz.box ([94.31.102.44])
 by smtp.gmail.com with ESMTPSA id w13sm28532046wrr.67.2020.06.24.11.20.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2020 11:20:44 -0700 (PDT)
From: Garrit Franke <garritfranke@gmail.com>
To: dan.carpenter@oracle.com
Subject: [PATCH v2 1/2] staging: vc04_services: vchiq_arm: replace bitshift
 with BIT macro
Date: Wed, 24 Jun 2020 20:20:34 +0200
Message-Id: <20200624182035.16740-2-garritfranke@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619080121.GV4151@kadam>
References: <20200619080121.GV4151@kadam>
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
