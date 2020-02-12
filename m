Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA7015B024
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 19:49:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 14C5820797;
	Wed, 12 Feb 2020 18:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cHP5jyd4wuD4; Wed, 12 Feb 2020 18:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E7AF420788;
	Wed, 12 Feb 2020 18:49:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E79821BF2E5
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 18:49:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E4A3C85E9F
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 18:49:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GLuIagSNOE0X for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 18:49:13 +0000 (UTC)
X-Greylist: delayed 00:05:37 by SQLgrey-1.7.6
Received: from mail-qk1-f202.google.com (mail-qk1-f202.google.com
 [209.85.222.202])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2D8A385E98
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 18:49:13 +0000 (UTC)
Received: by mail-qk1-f202.google.com with SMTP id q2so1966114qkq.19
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 10:49:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=pcOBb9Gl/WRWA3Ymrm6bfzbSFQo1wkeo11JEJsz9YFw=;
 b=D3ou7JpmR3pG1c6H+B0wMM0E3ipQlaZdk8TRAH7nGnRbmW59z3+07T6Oc5ByShQ8Tp
 egnIEFAMoC75pPkFx0kHvXhmnH0mRO9KD1LuyooZWIKawPs0mpbAGXr1fwQ+zq9n2rdh
 NJepnwVK/kjy2RN31MrwqQcepOx55bQ/nyscDpf3O/Pe9s1VG1SBOnfGt/qAV1z7OxyJ
 VvjyaZMVwI6kZ9TJzv2/BtodAu5DoauUvfMWHWKJnoIC9u90Tx7fH+vQLai6nxOiwsQX
 K2h6QPLZUQGRG7UXOzlbg3JRAtqhULO39RMbOMXOKg5/AEvYf5aAEWaOl9Q4zqu8Tog4
 ElQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=pcOBb9Gl/WRWA3Ymrm6bfzbSFQo1wkeo11JEJsz9YFw=;
 b=ddZNuW+lsLAwUIvKUxkrHKjqGUx2WsqOuRzom2ePFn96r+ekKgHVczud5gWSU4Ijvp
 H+e4VP7ZX/OqK3AAVJ3v/2y7RPSA2vOBLMV/Jj4ruLviD5bMekCUVw+XQ4cRzKK2hGbD
 GlyYkcL4i6XBbfOayt+F1z8me0Bj4Sgp7h8MUYpINrz2UKn9hpx1frKkCbVzOEvGa9bg
 Rl/Oxb9iiArjs/yT54g1WJvt+mNCNeeTjdFkIb7uFbVADyKuVe0HNsdQuzMELffQ5btl
 WSN0VJj0oY9PelsyCnQ8QlXe5saL4GXUJBAwL71dZ5aJSYDNw+Pic6t9xhYfLsmihtP6
 5Vrw==
X-Gm-Message-State: APjAAAU01HMsvC9Oc+29b1ViutsYVbyjNRpdUHDZJwOoSXZQw5IOyXPx
 pwHF33tEBm2RWo5fVF9YGoMB/tN6IAty+7hcT8U=
X-Google-Smtp-Source: APXvYqxTlRbtQWoSwxLyGFEKlNpZxXyax/yz+qrvizf9iiNWI5pAkF1ufWWPAKOFkcANYBicZHjUrk3aM+ebqrqyNA4=
X-Received: by 2002:ac8:6759:: with SMTP id n25mr8536077qtp.226.1581533015831; 
 Wed, 12 Feb 2020 10:43:35 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:30 -0500
In-Reply-To: <cover.1581532523.git.marcgonzalez@google.com>
Message-Id: <41511abf64f73af62f21f8e0c7457edc289af905.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 2/5] staging: vc04_services: remove unneeded parentheses
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: nsaenzjulienne@suse.de, gregkh@linuxfoundation.org
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

there are extra parentheses around many conditional statements
that make things a little harder to read

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++----------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 4f8b59deaec9..72bfa0f73958 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -138,8 +138,8 @@ find_service_by_handle(unsigned int handle)
 
 	spin_lock(&service_spinlock);
 	service = handle_to_service(handle);
-	if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
-		(service->handle == handle)) {
+	if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
+	    service->handle == handle) {
 		WARN_ON(service->ref_count == 0);
 		service->ref_count++;
 	} else
@@ -161,7 +161,7 @@ find_service_by_port(struct vchiq_state *state, int localport)
 	if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
 		spin_lock(&service_spinlock);
 		service = state->services[localport];
-		if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE)) {
+		if (service && service->srvstate != VCHIQ_SRVSTATE_FREE) {
 			WARN_ON(service->ref_count == 0);
 			service->ref_count++;
 		} else
@@ -184,9 +184,9 @@ find_service_for_instance(struct vchiq_instance *instance,
 
 	spin_lock(&service_spinlock);
 	service = handle_to_service(handle);
-	if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE) &&
-		(service->handle == handle) &&
-		(service->instance == instance)) {
+	if (service && service->srvstate != VCHIQ_SRVSTATE_FREE &&
+	    service->handle == handle &&
+	    service->instance == instance) {
 		WARN_ON(service->ref_count == 0);
 		service->ref_count++;
 	} else
@@ -209,10 +209,10 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
 	spin_lock(&service_spinlock);
 	service = handle_to_service(handle);
 	if (service &&
-		((service->srvstate == VCHIQ_SRVSTATE_FREE) ||
-		 (service->srvstate == VCHIQ_SRVSTATE_CLOSED)) &&
-		(service->handle == handle) &&
-		(service->instance == instance)) {
+	    (service->srvstate == VCHIQ_SRVSTATE_FREE ||
+	     service->srvstate == VCHIQ_SRVSTATE_CLOSED) &&
+	    service->handle == handle &&
+	    service->instance == instance) {
 		WARN_ON(service->ref_count == 0);
 		service->ref_count++;
 	} else
@@ -237,8 +237,8 @@ next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *insta
 	while (idx < state->unused_service) {
 		struct vchiq_service *srv = state->services[idx++];
 
-		if (srv && (srv->srvstate != VCHIQ_SRVSTATE_FREE) &&
-			(srv->instance == instance)) {
+		if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
+		    srv->instance == instance) {
 			service = srv;
 			WARN_ON(service->ref_count == 0);
 			service->ref_count++;
@@ -464,10 +464,10 @@ get_listening_service(struct vchiq_state *state, int fourcc)
 		struct vchiq_service *service = state->services[i];
 
 		if (service &&
-			(service->public_fourcc == fourcc) &&
-			((service->srvstate == VCHIQ_SRVSTATE_LISTENING) ||
-			((service->srvstate == VCHIQ_SRVSTATE_OPEN) &&
-			(service->remoteport == VCHIQ_PORT_FREE)))) {
+		    service->public_fourcc == fourcc &&
+		    (service->srvstate == VCHIQ_SRVSTATE_LISTENING ||
+		     (service->srvstate == VCHIQ_SRVSTATE_OPEN &&
+		      service->remoteport == VCHIQ_PORT_FREE))) {
 			lock_service(service);
 			return service;
 		}
@@ -485,8 +485,8 @@ get_connected_service(struct vchiq_state *state, unsigned int port)
 	for (i = 0; i < state->unused_service; i++) {
 		struct vchiq_service *service = state->services[i];
 
-		if (service && (service->srvstate == VCHIQ_SRVSTATE_OPEN)
-			&& (service->remoteport == port)) {
+		if (service && service->srvstate == VCHIQ_SRVSTATE_OPEN &&
+		    service->remoteport == port) {
 			lock_service(service);
 			return service;
 		}
-- 
2.25.0.225.g125e21ebc7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
