Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA7815B12F
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Feb 2020 20:35:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8380386AFD;
	Wed, 12 Feb 2020 19:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SV53TmiS613E; Wed, 12 Feb 2020 19:35:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 585CE86AB8;
	Wed, 12 Feb 2020 19:35:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B55131BF3A1
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 19:35:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B20E586797
 for <devel@linuxdriverproject.org>; Wed, 12 Feb 2020 19:35:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W-g5DDm+ZgSi for <devel@linuxdriverproject.org>;
 Wed, 12 Feb 2020 19:35:48 +0000 (UTC)
X-Greylist: delayed 00:52:08 by SQLgrey-1.7.6
Received: from mail-yw1-f74.google.com (mail-yw1-f74.google.com
 [209.85.161.74])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DF9FE852C7
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 19:35:47 +0000 (UTC)
Received: by mail-yw1-f74.google.com with SMTP id i134so2235562ywg.0
 for <devel@driverdev.osuosl.org>; Wed, 12 Feb 2020 11:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xhIOqHQd0jXYQ2FxBCtmYoOa6FI5uX4A/xLG79gRSwo=;
 b=cHZVQyxcSxtYJehumtNXNDA9jwpIsvtais+yYU05jTGxREWyf0A71whHkY4E+HnATi
 aH0EoTYuP9SWBdkQvRJXhgPFeuL8XSlwDO3fAdzN8Cglj8+TDkKyntDbM44dxwvLAnax
 uTJPHzazcLYISDQEYQQB2JUQkbtY7sy3OQTUwlldMpx0wU7wdE00scMnDvbXp0Zug70u
 11h+VZtDjACvzMX/Et8dH8663bK0Oq44PghBRLkQHqUp+4+A2Cr75c1Ti9/OwN6SkOcO
 n2h/SUIwTWphNAdUVtmraydZ7I0RQf9eleQxly5Pa+2i8m9pf0pSxG1s+Uk4L+mMdptw
 Y23w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xhIOqHQd0jXYQ2FxBCtmYoOa6FI5uX4A/xLG79gRSwo=;
 b=Wc1xnZryGP1DzybyBaDEaJE06Jqrw/gpmlGYVTKIyhG2XP827F6nEyVY9aIc01Os4g
 HyhBqgi3vSB0jWHLMtuX8obVMYpyoZiVDCweZjdczVWxqUKqKza2JGAjUm3cr0xPG+dE
 8V+X0ff0cTjZMRMIPiftjydfuFnhONL/O0sA8+tBSQ9A5Y+CtWZwPkCf4Y79ozTRbrzL
 uT0zML3KEBIFdWfjEUGh/QRioPc60AmAy3vdfGoTZoHJfsvs2MdOv1CnilFKZL+aP4bh
 O01wJ2MeCZEtIZTSg5AltdgdAVaj28PiuLtffBYeRHecIkbd8RGRSP9CqETiNIGcJYMS
 zv6w==
X-Gm-Message-State: APjAAAVW6ngRfWr728ku+ubSsji3d+7JvSl82r2+RiFRhRpH5HsMo7KM
 mMoAD3lilzS4m8ooDIe+iJzzhhCM1qrdFZlYeYk=
X-Google-Smtp-Source: APXvYqyAEUPgzjH6Yri0hlb0y/aBP897CzJIvovSk8Z3BJvN2SuYX37lmSSKnPRtTw3c9/v3TAam2eJAa2vkqZVldHA=
X-Received: by 2002:a81:af10:: with SMTP id n16mr10836934ywh.144.1581533018914; 
 Wed, 12 Feb 2020 10:43:38 -0800 (PST)
Date: Wed, 12 Feb 2020 13:43:33 -0500
In-Reply-To: <cover.1581532523.git.marcgonzalez@google.com>
Message-Id: <ac6186ac888f1acf489b5b504efcba8b0d6a8b25.1581532523.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1581532523.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.25.0.225.g125e21ebc7-goog
Subject: [PATCH 5/5] staging: vc04_services: don't increment service refcount
 when it's not needed
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

There are a few places where a service's reference count is incremented,
something quick is done, and the refcount is dropped. This can be made
a little simpler/faster by not grabbing a reference in these cases.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 16 ++++-----
 .../interface/vchiq_arm/vchiq_core.c          | 36 +++++++++++++------
 .../interface/vchiq_arm/vchiq_core.h          |  8 ++++-
 3 files changed, 40 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 3ed0e4ea7f5c..b377f18aed45 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2497,11 +2497,11 @@ vchiq_instance_get_use_count(struct vchiq_instance *instance)
 	int use_count = 0, i;
 
 	i = 0;
-	while ((service = next_service_by_instance(instance->state,
-		instance, &i))) {
+	rcu_read_lock();
+	while ((service = __next_service_by_instance(instance->state,
+						     instance, &i)))
 		use_count += service->service_use_count;
-		unlock_service(service);
-	}
+	rcu_read_unlock();
 	return use_count;
 }
 
@@ -2524,11 +2524,11 @@ vchiq_instance_set_trace(struct vchiq_instance *instance, int trace)
 	int i;
 
 	i = 0;
-	while ((service = next_service_by_instance(instance->state,
-		instance, &i))) {
+	rcu_read_lock();
+	while ((service = __next_service_by_instance(instance->state,
+						     instance, &i)))
 		service->trace = trace;
-		unlock_service(service);
-	}
+	rcu_read_unlock();
 	instance->trace = (trace != 0);
 }
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 65270a5b29db..d7d7f4d9d57f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -222,28 +222,42 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
 }
 
 struct vchiq_service *
-next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
-			 int *pidx)
+__next_service_by_instance(struct vchiq_state *state,
+			   struct vchiq_instance *instance,
+			   int *pidx)
 {
 	struct vchiq_service *service = NULL;
 	int idx = *pidx;
 
-	rcu_read_lock();
 	while (idx < state->unused_service) {
 		struct vchiq_service *srv;
 
 		srv = rcu_dereference(state->services[idx++]);
 		if (srv && srv->srvstate != VCHIQ_SRVSTATE_FREE &&
-		    srv->instance == instance &&
-		    kref_get_unless_zero(&srv->ref_count)) {
-			service = rcu_pointer_handoff(srv);
+		    srv->instance == instance) {
+			service = srv;
 			break;
 		}
 	}
-	rcu_read_unlock();
 
 	*pidx = idx;
+	return service;
+}
 
+struct vchiq_service *
+next_service_by_instance(struct vchiq_state *state,
+			 struct vchiq_instance *instance,
+			 int *pidx)
+{
+	struct vchiq_service *service;
+
+	rcu_read_lock();
+	service = __next_service_by_instance(state, instance, pidx);
+	if (service && kref_get_unless_zero(&service->ref_count))
+		service = rcu_pointer_handoff(service);
+	else
+		service = NULL;
+	rcu_read_unlock();
 	return service;
 }
 
@@ -283,13 +297,13 @@ unlock_service(struct vchiq_service *service)
 int
 vchiq_get_client_id(unsigned int handle)
 {
-	struct vchiq_service *service = find_service_by_handle(handle);
+	struct vchiq_service *service;
 	int id;
 
+	rcu_read_lock();
+	service = handle_to_service(handle);
 	id = service ? service->client_id : 0;
-	if (service)
-		unlock_service(service);
-
+	rcu_read_unlock();
 	return id;
 }
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 30e4965c7666..cedd8e721aae 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -572,7 +572,13 @@ find_closed_service_for_instance(struct vchiq_instance *instance,
 	unsigned int handle);
 
 extern struct vchiq_service *
-next_service_by_instance(struct vchiq_state *state, struct vchiq_instance *instance,
+__next_service_by_instance(struct vchiq_state *state,
+			   struct vchiq_instance *instance,
+			   int *pidx);
+
+extern struct vchiq_service *
+next_service_by_instance(struct vchiq_state *state,
+			 struct vchiq_instance *instance,
 			 int *pidx);
 
 extern void
-- 
2.25.0.225.g125e21ebc7-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
