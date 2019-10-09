Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10587D0594
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Oct 2019 04:44:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1D8FD877D4;
	Wed,  9 Oct 2019 02:44:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z2KsbVAZ9pcs; Wed,  9 Oct 2019 02:44:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 372AE87680;
	Wed,  9 Oct 2019 02:44:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0FA231BF47D
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 02:44:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0707C22C6B
 for <devel@linuxdriverproject.org>; Wed,  9 Oct 2019 02:44:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lsG4UeU-PLJz for <devel@linuxdriverproject.org>;
 Wed,  9 Oct 2019 02:44:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yb1-f196.google.com (mail-yb1-f196.google.com
 [209.85.219.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 80E6722C1A
 for <devel@driverdev.osuosl.org>; Wed,  9 Oct 2019 02:44:26 +0000 (UTC)
Received: by mail-yb1-f196.google.com with SMTP id y204so232642yby.10
 for <devel@driverdev.osuosl.org>; Tue, 08 Oct 2019 19:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=dJDoDGu2qTpToLkU88XiZ+ldViToICCWK2TmjACjmfo=;
 b=tQJ6XcAK+/L5aN+D4TdlGEdaCy561nnc8FDj0633t8ReMQRW9keehemh/wF56YvEf3
 +73/SthrticZlRm57CoKrEjX6SsPypl91P293yHG6PohSx57SNKZCKUCIVBHJ/xhx6pi
 yXiO8hSnEPFTLzIpy2z/YElqqj5zUn2hEbwcV4JOoZJSWEA2GVRqvZDFViI/fNZvxUXn
 /jJPoj8BeuFY4a3pLXOQpnEsQqZlcXwrnO3WmMTSU+eXLDkN703d+YjaEwdVGGSGBtNp
 h/tmD7FEhpaPlQ/tgWS3hOpiiYE795QKTXVP4uXcazCaboycG6FpQtFKdanXAcI+ogoc
 JXOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dJDoDGu2qTpToLkU88XiZ+ldViToICCWK2TmjACjmfo=;
 b=l6cONU5GtxLKrHiuLG2+nF8hT5KeRDJFxpgghpUIlmm445SQOaZfqUMjxg/jFpzbRD
 dyjOsiyuBuPGoulxTRIaeWVJK2q1eygN+KYqnh1RUEVIAutJtcGftlh4I9AFp6O9iHdN
 A7Eag+xdgeWOWGmeZj2/EqfJUvq9QNmliL+xHwy1j/EEP/cijCa2vmi3u9nUe3+UAL8f
 gbPVwVFgWE+KA734UvK5eRPgdcHfJfHUWsJinzf6y212PRaoPFZ/CpyirpKpUW4C7DF1
 yV1XbKmE2CWB76X61mNdoD1R4wxDjXAs5hb/D9uTaqHR8wBFpcyZpc78WcP9QHbyS1UB
 qR4g==
X-Gm-Message-State: APjAAAWTpasffW8GcY/MVwwE4RcqthT8yWxwzVqzuyu05XAW4j3KIGNh
 uKqrgOw4n3TZeucHovCC5WY=
X-Google-Smtp-Source: APXvYqzL/PqXtu5s08HoYxkW2tZTWEn6NDSiuAXIkcfyflobhI+gs9G4eACZyaQgNhO/JIJbZvAc5Q==
X-Received: by 2002:a25:6b48:: with SMTP id o8mr580833ybm.337.1570589065451;
 Tue, 08 Oct 2019 19:44:25 -0700 (PDT)
Received: from ubuntu ([107.15.113.108])
 by smtp.gmail.com with ESMTPSA id e130sm251622ywh.50.2019.10.08.19.44.23
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 08 Oct 2019 19:44:24 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v3] staging: vc04_services: Avoid NULL comparison
Date: Tue,  8 Oct 2019 19:44:15 -0700
Message-Id: <1570589056-14386-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Nachammai Karuppiah <nachukannan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove NULL comparison. Issue found using checkpatch.pl

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>

---

Changes in V2
   - Remove all NULL comparisons in vc04_services/interface directory.
---

changes in V3
   - Fixed warnings. Reported-by: kbuild test robot <lkp@intel.com>
---

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 22 +++++++++++-----------
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |  4 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  2 +-
 4 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 8dc730c..7cdb21e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -526,11 +526,11 @@ create_pagelist(char __user *buf, size_t count, unsigned short type)
 			return NULL;
 		}
 
-		WARN_ON(g_free_fragments == NULL);
+		WARN_ON(!g_free_fragments);
 
 		down(&g_free_fragments_mutex);
 		fragments = g_free_fragments;
-		WARN_ON(fragments == NULL);
+		WARN_ON(!fragments);
 		g_free_fragments = *(char **) g_free_fragments;
 		up(&g_free_fragments_mutex);
 		pagelist->type = PAGELIST_READ_WITH_FRAGMENTS +
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index b1595b1..d7d9c7c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -827,7 +827,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		/* Remove all services */
 		i = 0;
 		while ((service = next_service_by_instance(instance->state,
-			instance, &i)) != NULL) {
+			instance, &i))) {
 			status = vchiq_remove_service(service->handle);
 			unlock_service(service);
 			if (status != VCHIQ_SUCCESS)
@@ -907,7 +907,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 				&args.params, srvstate,
 				instance, user_service_free);
 
-		if (service != NULL) {
+		if (service) {
 			user_service->service = service;
 			user_service->userdata = userdata;
 			user_service->instance = instance;
@@ -988,7 +988,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
 
 		service = find_service_for_instance(instance, handle);
-		if (service != NULL) {
+		if (service) {
 			status = (cmd == VCHIQ_IOC_USE_SERVICE)	?
 				vchiq_use_service_internal(service) :
 				vchiq_release_service_internal(service);
@@ -1021,7 +1021,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 		service = find_service_for_instance(instance, args.handle);
 
-		if ((service != NULL) && (args.count <= MAX_ELEMENTS)) {
+		if (service && (args.count <= MAX_ELEMENTS)) {
 			/* Copy elements into kernel space */
 			struct vchiq_element elements[MAX_ELEMENTS];
 
@@ -1343,11 +1343,11 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		spin_unlock(&msg_queue_spinlock);
 
 		complete(&user_service->remove_event);
-		if (header == NULL)
+		if (!header)
 			ret = -ENOTCONN;
 		else if (header->size <= args.bufsize) {
 			/* Copy to user space if msgbuf is not NULL */
-			if ((args.buf == NULL) ||
+			if (!args.buf ||
 				(copy_to_user((void __user *)args.buf,
 				header->data,
 				header->size) == 0)) {
@@ -1426,7 +1426,7 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		VCHIQ_SERVICE_HANDLE_T handle = (VCHIQ_SERVICE_HANDLE_T)arg;
 
 		service = find_closed_service_for_instance(instance, handle);
-		if (service != NULL) {
+		if (service) {
 			struct user_service *user_service =
 				(struct user_service *)service->base.userdata;
 			close_delivered(user_service);
@@ -2223,13 +2223,13 @@ struct vchiq_state *
 vchiq_get_state(void)
 {
 
-	if (g_state.remote == NULL)
+	if (!g_state.remote)
 		printk(KERN_ERR "%s: g_state.remote == NULL\n", __func__);
 	else if (g_state.remote->initialised != 1)
 		printk(KERN_NOTICE "%s: g_state.remote->initialised != 1 (%d)\n",
 			__func__, g_state.remote->initialised);
 
-	return ((g_state.remote != NULL) &&
+	return (g_state.remote &&
 		(g_state.remote->initialised == 1)) ? &g_state : NULL;
 }
 
@@ -2924,7 +2924,7 @@ vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
 
 	i = 0;
 	while ((service = next_service_by_instance(instance->state,
-		instance, &i)) != NULL) {
+		instance, &i))) {
 		use_count += service->service_use_count;
 		unlock_service(service);
 	}
@@ -2951,7 +2951,7 @@ vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace)
 
 	i = 0;
 	while ((service = next_service_by_instance(instance->state,
-		instance, &i)) != NULL) {
+		instance, &i))) {
 		service->trace = trace;
 		unlock_service(service);
 	}
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 56a23a2..4c375cd 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -542,7 +542,7 @@ reserve_space(struct vchiq_state *state, size_t space, int is_blocking)
 	if (space > slot_space) {
 		struct vchiq_header *header;
 		/* Fill the remaining space with padding */
-		WARN_ON(state->tx_data == NULL);
+		WARN_ON(!state->tx_data);
 		header = (struct vchiq_header *)
 			(state->tx_data + (tx_pos & VCHIQ_SLOT_MASK));
 		header->msgid = VCHIQ_MSGID_PADDING;
@@ -3578,7 +3578,7 @@ void vchiq_log_dump_mem(const char *label, u32 addr, const void *void_mem,
 		}
 		*s++ = '\0';
 
-		if ((label != NULL) && (*label != '\0'))
+		if (label && (*label != '\0'))
 			vchiq_log_trace(VCHIQ_LOG_TRACE,
 				"%s: %08x: %s", label, addr, line_buf);
 		else
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 17a4f2c..10be23e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -628,7 +628,7 @@ int32_t vchi_service_open(VCHI_INSTANCE_T instance_handle,
 		}
 	}
 
-	return (service != NULL) ? 0 : -1;
+	return service ? 0 : -1;
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
