Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F15CEF0E
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Oct 2019 00:30:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id BDE6786D72;
	Mon,  7 Oct 2019 22:30:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bj9hwwajxEAg; Mon,  7 Oct 2019 22:30:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DF34586B33;
	Mon,  7 Oct 2019 22:30:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AEF3E1BF2C6
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 22:29:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A5C5C869E1
 for <devel@linuxdriverproject.org>; Mon,  7 Oct 2019 22:29:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NiW8W3Ky+se1 for <devel@linuxdriverproject.org>;
 Mon,  7 Oct 2019 22:29:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-yw1-f67.google.com (mail-yw1-f67.google.com
 [209.85.161.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A2B458693D
 for <devel@driverdev.osuosl.org>; Mon,  7 Oct 2019 22:29:37 +0000 (UTC)
Received: by mail-yw1-f67.google.com with SMTP id x64so5748787ywg.3
 for <devel@driverdev.osuosl.org>; Mon, 07 Oct 2019 15:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Vh/BXioQ6oy7rRWMvrPF2n3H3tPYXp6LKVPTrcmyM0Y=;
 b=UPufEnk+whbcuyeXgcOySlxDnPOKp6HR8pcmu/+YFHCmYCIDej+rKuWwfLBHa17+XT
 xm/ZugK8V8kHF+V6g57nicwe/cu9Q2k9L7oWMMOViVP7ykplODU1cmxSwyYWCb0yNUH5
 Rf1Pqj1YD8JyI8ufcd7pBpoSTr7XGF4jg7tlogFcaT5nB9nEsA555EUXYR1oMeVNVR57
 S6bTM8fnSCWDC9VoXgtRKaSsW2HL9DpYGnunJYKoRxn6KSbI1qOZ7A6go0PR/tRiTSD2
 IKxRUVGoUYj6sZnUBXlS70tOtb1eLG3QgCn29SRKKrm5IdyYkk3H2DtWFTKOE2z6rrAu
 6fjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Vh/BXioQ6oy7rRWMvrPF2n3H3tPYXp6LKVPTrcmyM0Y=;
 b=dE0UchvvQl//XNcPCIKByIrSXnQdn0ptyU920MWceAyFsS3SXRIh+i8goeaHepBGXz
 WvZNbsdepLJ7jw8D6BiLoUkZhYI3+lc+EgzLJ/hS4DfTHpeg7mmwUyNiAc25TuHddwE7
 RMHAYOexBH0omYeHOSJ0mbS/YQoZ/MDc4e0QecnWDqHHQTuR8PNMbpmnoEfrPfAKK2MC
 ORR6CwJ6mf3VnXHR7JJq7lDM9I0XyEeDdfB2ZShmWcBCA/Zilo5nmqmjKgq6+ru4i3uS
 l8vnjkLwpjOOr1gaaEllm75W8KOfPgP3MCUuT6Cs9L3KA8Dvg7QjI+zYMBHIWtnafICR
 SK9A==
X-Gm-Message-State: APjAAAWIgxC0FIh4bFYym9nfxzgBQabFmgGFeTQ1XjEvU8PIsGBx2JHQ
 3nCK2xcBOU8oGsgU52tua64=
X-Google-Smtp-Source: APXvYqy9ON5hfbol3ID3uuJpDMRN6iuGha/Q0jx0MKfnfMEvbBRtfE+MgY2/dPRnM58NOtiRbGSmRA==
X-Received: by 2002:a81:994a:: with SMTP id q71mr20313699ywg.266.1570487376637; 
 Mon, 07 Oct 2019 15:29:36 -0700 (PDT)
Received: from ubuntu ([107.15.113.108])
 by smtp.gmail.com with ESMTPSA id l2sm4026015ywd.16.2019.10.07.15.29.35
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 07 Oct 2019 15:29:35 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vc04_services: Avoid NULL comparison
Date: Mon,  7 Oct 2019 15:29:28 -0700
Message-Id: <1570487369-35454-1-git-send-email-nachukannan@gmail.com>
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
 .../interface/vchiq_arm/vchiq_2835_arm.c           |  4 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c  | 28 +++++++++++-----------
 .../vc04_services/interface/vchiq_arm/vchiq_core.c |  4 ++--
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c |  2 +-
 4 files changed, 19 insertions(+), 19 deletions(-)

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
index b1595b1..b930148 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -826,8 +826,8 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 		/* Remove all services */
 		i = 0;
-		while ((service = next_service_by_instance(instance->state,
-			instance, &i)) != NULL) {
+		while (service = next_service_by_instance(instance->state,
+			instance, &i)) {
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
 
@@ -2923,8 +2923,8 @@ vchiq_instance_get_use_count(VCHIQ_INSTANCE_T instance)
 	int use_count = 0, i;
 
 	i = 0;
-	while ((service = next_service_by_instance(instance->state,
-		instance, &i)) != NULL) {
+	while (service = next_service_by_instance(instance->state,
+		instance, &i)) {
 		use_count += service->service_use_count;
 		unlock_service(service);
 	}
@@ -2950,8 +2950,8 @@ vchiq_instance_set_trace(VCHIQ_INSTANCE_T instance, int trace)
 	int i;
 
 	i = 0;
-	while ((service = next_service_by_instance(instance->state,
-		instance, &i)) != NULL) {
+	while (service = next_service_by_instance(instance->state,
+		instance, &i)) {
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
