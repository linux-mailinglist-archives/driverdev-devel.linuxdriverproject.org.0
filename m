Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7459F103F69
	for <lists+driverdev-devel@lfdr.de>; Wed, 20 Nov 2019 16:43:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E133287673;
	Wed, 20 Nov 2019 15:43:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iju8KEATOM5t; Wed, 20 Nov 2019 15:43:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EB8A587469;
	Wed, 20 Nov 2019 15:43:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD2251BF5EA
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A035588496
 for <devel@linuxdriverproject.org>; Wed, 20 Nov 2019 15:43:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7xXaaHn01J7A for <devel@linuxdriverproject.org>;
 Wed, 20 Nov 2019 15:43:41 +0000 (UTC)
X-Greylist: delayed 00:06:44 by SQLgrey-1.7.6
Received: from mail-qt1-f201.google.com (mail-qt1-f201.google.com
 [209.85.160.201])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 20496885C4
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 15:43:38 +0000 (UTC)
Received: by mail-qt1-f201.google.com with SMTP id x50so118056qth.4
 for <devel@driverdev.osuosl.org>; Wed, 20 Nov 2019 07:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=EiZ6BDfWGQo/KlnLiNmlfyzylq/mE1ZZsrgbB3/fQtE=;
 b=MOtH4o0OTy1FkJZiPuamoEn9FgmvOj4DGBjt+iMOkI+0ncA/Bi+Zxdx/w5Euhaxy9m
 VT7pxIxkBKLx+CvrXckMx38leiObNjQTuLYlYig/CJM0F9ZOFSBSFt9unICLbTaJNn0n
 00GlK0fq/KCIftpjQB2zaBRMb20RX0oEeS00OyaDuiqcXyROlyMdHV5vvUJw++TV+gUM
 VJsMFAYLt+7fTWXDBqNa8+RckCY9PfQYaThDOJ9TC+oq0hDxYPohUTuKHmaJ8d5nf3kI
 byEEFp95AnnZlu9semluB1zDy2BD6na/hI4giEApuYR9GQ1b/KDNkvXG8uHbKQ5KS2KF
 szWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=EiZ6BDfWGQo/KlnLiNmlfyzylq/mE1ZZsrgbB3/fQtE=;
 b=Mte2P45OHJQCCC4DLi4sQlKrFVxcygGnKIkxbhRzGcLujrWvlrdxyiuact/YHVtJeT
 UyIUxFC8eM4FDnHWWSDoNxkmLG/HFXxztthBQ9HqtZ44VqH8zkIIIQD6P9KxMj/9Ep1z
 zhMHF6uft0LmwFFp5zjLZJP98hga7nhAjWWqKTR5cIxLEbETW43ffyPtwEiq7LDrHRCy
 sO1QJ36X9tdHhTEvdkxbqVxiSGn1R82GAnL5/1xtSKkuY/KZUupRai+bvF0VHcWXWSr4
 IyJOL2h4sc14UO8yRHADPokTjcV9x1go5Az49SmnMg9Eo2Rs4Y294a3bStO5+MOxqEJr
 UXLg==
X-Gm-Message-State: APjAAAVQ4FzXCXVhBtXz0MG445vyelAAHoOI2sgjY1k2SPO3a3zCCSHt
 7NOwdbs+qGmI0OTVNHb6mQ9jUyIpMAWF6+6qxGs=
X-Google-Smtp-Source: APXvYqyM874XbITEJ5FAXjXLw0+kVS+88X4bShcZdpVv0FE4SQ2XlLzDb/LmuyynzwSptEpsYAmsKWztLFv78luBi7Q=
X-Received: by 2002:a37:c44c:: with SMTP id h12mr2871213qkm.218.1574264212768; 
 Wed, 20 Nov 2019 07:36:52 -0800 (PST)
Date: Wed, 20 Nov 2019 10:36:48 -0500
In-Reply-To: <cover.1574253964.git.marcgonzalez@google.com>
Message-Id: <b4b5b1c7ec61a25fb3ca3c90687dc80db8a21e90.1574253964.git.marcgonzalez@google.com>
Mime-Version: 1.0
References: <cover.1574253964.git.marcgonzalez@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH 3/3] staging: vchiq: Have vchiq_dump_* functions return an
 error code
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
To: gregkh@linuxfoundation.org, eric@anholt.net, wahrenst@gmx.net
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These functions currently modify the struct dump_context passed
to them, and set context->actual to -EFAULT in case of error.
The issue is that this is never returned to the user (except
accidentally when things align so that that happens). So, have
these functions return 0 on success and the appropriate error
code otherwise, and return nonzero errors to the user.

Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c      |   5 +-
 .../interface/vchiq_arm/vchiq_arm.c           |  35 +++---
 .../interface/vchiq_arm/vchiq_core.c          | 104 +++++++++++++-----
 .../interface/vchiq_arm/vchiq_core.h          |  12 +-
 4 files changed, 104 insertions(+), 52 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index e568e9e6eb95..ca30bfd52919 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -247,15 +247,14 @@ vchiq_complete_bulk(struct vchiq_bulk *bulk)
 			      bulk->actual);
 }
 
-void
-vchiq_dump_platform_state(void *dump_context)
+int vchiq_dump_platform_state(void *dump_context)
 {
 	char buf[80];
 	int len;
 
 	len = snprintf(buf, sizeof(buf),
 		"  Platform: 2835 (VC master)");
-	vchiq_dump(dump_context, buf, len + 1);
+	return vchiq_dump(dump_context, buf, len + 1);
 }
 
 enum vchiq_status
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 8f9cfa083264..02148a24818a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2072,14 +2072,13 @@ static int vchiq_release(struct inode *inode, struct file *file)
 *
 ***************************************************************************/
 
-void
-vchiq_dump(void *dump_context, const char *str, int len)
+int vchiq_dump(void *dump_context, const char *str, int len)
 {
 	struct dump_context *context = (struct dump_context *)dump_context;
 	int copy_bytes;
 
 	if (context->actual >= context->space)
-		return;
+		return 0;
 
 	if (context->offset > 0) {
 		int skip_bytes = min_t(int, len, context->offset);
@@ -2088,14 +2087,14 @@ vchiq_dump(void *dump_context, const char *str, int len)
 		len -= skip_bytes;
 		context->offset -= skip_bytes;
 		if (context->offset > 0)
-			return;
+			return 0;
 	}
 	copy_bytes = min_t(int, len, context->space - context->actual);
 	if (copy_bytes == 0)
-		return;
+		return 0;
 	if (copy_to_user(context->buf + context->actual, str,
 			 copy_bytes))
-		context->actual = -EFAULT;
+		return -EFAULT;
 	context->actual += copy_bytes;
 	len -= copy_bytes;
 
@@ -2109,8 +2108,9 @@ vchiq_dump(void *dump_context, const char *str, int len)
 
 		if (copy_to_user(context->buf + context->actual - 1,
 				 &cr, 1))
-			context->actual = -EFAULT;
+			return -EFAULT;
 	}
+	return 0;
 }
 
 /****************************************************************************
@@ -2119,8 +2119,7 @@ vchiq_dump(void *dump_context, const char *str, int len)
 *
 ***************************************************************************/
 
-void
-vchiq_dump_platform_instances(void *dump_context)
+int vchiq_dump_platform_instances(void *dump_context)
 {
 	struct vchiq_state *state = vchiq_get_state();
 	char buf[80];
@@ -2145,6 +2144,7 @@ vchiq_dump_platform_instances(void *dump_context)
 	for (i = 0; i < state->unused_service; i++) {
 		struct vchiq_service *service = state->services[i];
 		struct vchiq_instance *instance;
+		int err;
 
 		if (!service || service->base.callback != service_callback)
 			continue;
@@ -2162,9 +2162,12 @@ vchiq_dump_platform_instances(void *dump_context)
 			       instance->completion_remove,
 			       MAX_COMPLETIONS);
 
-		vchiq_dump(dump_context, buf, len + 1);
+		err = vchiq_dump(dump_context, buf, len + 1);
+		if (err)
+			return err;
 		instance->mark = 1;
 	}
+	return 0;
 }
 
 /****************************************************************************
@@ -2173,9 +2176,8 @@ vchiq_dump_platform_instances(void *dump_context)
 *
 ***************************************************************************/
 
-void
-vchiq_dump_platform_service_state(void *dump_context,
-				  struct vchiq_service *service)
+int vchiq_dump_platform_service_state(void *dump_context,
+				      struct vchiq_service *service)
 {
 	struct user_service *user_service =
 			(struct user_service *)service->base.userdata;
@@ -2196,7 +2198,7 @@ vchiq_dump_platform_service_state(void *dump_context,
 				" (dequeue pending)");
 	}
 
-	vchiq_dump(dump_context, buf, len + 1);
+	return vchiq_dump(dump_context, buf, len + 1);
 }
 
 /****************************************************************************
@@ -2210,13 +2212,16 @@ vchiq_read(struct file *file, char __user *buf,
 	size_t count, loff_t *ppos)
 {
 	struct dump_context context;
+	int err;
 
 	context.buf = buf;
 	context.actual = 0;
 	context.space = count;
 	context.offset = *ppos;
 
-	vchiq_dump_state(&context, &g_state);
+	err = vchiq_dump_state(&context, &g_state);
+	if (err)
+		return err;
 
 	*ppos += context.actual;
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index b9d94f6b9bef..76351078affb 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3298,7 +3298,7 @@ vchiq_set_service_option(unsigned int handle,
 	return status;
 }
 
-static void
+static int
 vchiq_dump_shared_state(void *dump_context, struct vchiq_state *state,
 			struct vchiq_shared_state *shared, const char *label)
 {
@@ -3318,16 +3318,21 @@ vchiq_dump_shared_state(void *dump_context, struct vchiq_state *state,
 	int i;
 	char buf[80];
 	int len;
+	int err;
 
 	len = scnprintf(buf, sizeof(buf),
 		"  %s: slots %d-%d tx_pos=%x recycle=%x",
 		label, shared->slot_first, shared->slot_last,
 		shared->tx_pos, shared->slot_queue_recycle);
-	vchiq_dump(dump_context, buf, len + 1);
+	err = vchiq_dump(dump_context, buf, len + 1);
+	if (err)
+		return err;
 
 	len = scnprintf(buf, sizeof(buf),
 		"    Slots claimed:");
-	vchiq_dump(dump_context, buf, len + 1);
+	err = vchiq_dump(dump_context, buf, len + 1);
+	if (err)
+		return err;
 
 	for (i = shared->slot_first; i <= shared->slot_last; i++) {
 		struct vchiq_slot_info slot_info =
@@ -3336,27 +3341,34 @@ vchiq_dump_shared_state(void *dump_context, struct vchiq_state *state,
 			len = scnprintf(buf, sizeof(buf),
 				"      %d: %d/%d", i, slot_info.use_count,
 				slot_info.release_count);
-			vchiq_dump(dump_context, buf, len + 1);
+			err = vchiq_dump(dump_context, buf, len + 1);
+			if (err)
+				return err;
 		}
 	}
 
 	for (i = 1; i < shared->debug[DEBUG_ENTRIES]; i++) {
 		len = scnprintf(buf, sizeof(buf), "    DEBUG: %s = %d(%x)",
 			debug_names[i], shared->debug[i], shared->debug[i]);
-		vchiq_dump(dump_context, buf, len + 1);
+		err = vchiq_dump(dump_context, buf, len + 1);
+		if (err)
+			return err;
 	}
+	return 0;
 }
 
-void
-vchiq_dump_state(void *dump_context, struct vchiq_state *state)
+int vchiq_dump_state(void *dump_context, struct vchiq_state *state)
 {
 	char buf[80];
 	int len;
 	int i;
+	int err;
 
 	len = scnprintf(buf, sizeof(buf), "State %d: %s", state->id,
 		conn_state_names[state->conn_state]);
-	vchiq_dump(dump_context, buf, len + 1);
+	err = vchiq_dump(dump_context, buf, len + 1);
+	if (err)
+		return err;
 
 	len = scnprintf(buf, sizeof(buf),
 		"  tx_pos=%x(@%pK), rx_pos=%x(@%pK)",
@@ -3364,12 +3376,16 @@ vchiq_dump_state(void *dump_context, struct vchiq_state *state)
 		state->tx_data + (state->local_tx_pos & VCHIQ_SLOT_MASK),
 		state->rx_pos,
 		state->rx_data + (state->rx_pos & VCHIQ_SLOT_MASK));
-	vchiq_dump(dump_context, buf, len + 1);
+	err = vchiq_dump(dump_context, buf, len + 1);
+	if (err)
+		return err;
 
 	len = scnprintf(buf, sizeof(buf),
 		"  Version: %d (min %d)",
 		VCHIQ_VERSION, VCHIQ_VERSION_MIN);
-	vchiq_dump(dump_context, buf, len + 1);
+	err = vchiq_dump(dump_context, buf, len + 1);
+	if (err)
+		return err;
 
 	if (VCHIQ_ENABLE_STATS) {
 		len = scnprintf(buf, sizeof(buf),
@@ -3377,7 +3393,9 @@ vchiq_dump_state(void *dump_context, struct vchiq_state *state)
 			"error_count=%d",
 			state->stats.ctrl_tx_count, state->stats.ctrl_rx_count,
 			state->stats.error_count);
-		vchiq_dump(dump_context, buf, len + 1);
+		err = vchiq_dump(dump_context, buf, len + 1);
+		if (err)
+			return err;
 	}
 
 	len = scnprintf(buf, sizeof(buf),
@@ -3388,30 +3406,49 @@ vchiq_dump_state(void *dump_context, struct vchiq_state *state)
 		state->data_quota - state->data_use_count,
 		state->local->slot_queue_recycle - state->slot_queue_available,
 		state->stats.slot_stalls, state->stats.data_stalls);
-	vchiq_dump(dump_context, buf, len + 1);
-
-	vchiq_dump_platform_state(dump_context);
-
-	vchiq_dump_shared_state(dump_context, state, state->local, "Local");
-	vchiq_dump_shared_state(dump_context, state, state->remote, "Remote");
-
-	vchiq_dump_platform_instances(dump_context);
+	err = vchiq_dump(dump_context, buf, len + 1);
+	if (err)
+		return err;
+
+	err = vchiq_dump_platform_state(dump_context);
+	if (err)
+		return err;
+
+	err = vchiq_dump_shared_state(dump_context,
+				      state,
+				      state->local,
+				      "Local");
+	if (err)
+		return err;
+	err = vchiq_dump_shared_state(dump_context,
+				      state,
+				      state->remote,
+				      "Remote");
+	if (err)
+		return err;
+
+	err = vchiq_dump_platform_instances(dump_context);
+	if (err)
+		return err;
 
 	for (i = 0; i < state->unused_service; i++) {
 		struct vchiq_service *service = find_service_by_port(state, i);
 
 		if (service) {
-			vchiq_dump_service_state(dump_context, service);
+			err = vchiq_dump_service_state(dump_context, service);
 			unlock_service(service);
+			if (err)
+				return err;
 		}
 	}
+	return 0;
 }
 
-void
-vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
+int vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 {
 	char buf[80];
 	int len;
+	int err;
 
 	len = scnprintf(buf, sizeof(buf), "Service %u: %s (ref %u)",
 		service->localport, srvstate_names[service->srvstate],
@@ -3444,7 +3481,9 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 			service_quota->slot_use_count,
 			service_quota->slot_quota);
 
-		vchiq_dump(dump_context, buf, len + 1);
+		err = vchiq_dump(dump_context, buf, len + 1);
+		if (err)
+			return err;
 
 		tx_pending = service->bulk_tx.local_insert -
 			service->bulk_tx.remote_insert;
@@ -3463,7 +3502,9 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 			BULK_INDEX(service->bulk_rx.remove)].size : 0);
 
 		if (VCHIQ_ENABLE_STATS) {
-			vchiq_dump(dump_context, buf, len + 1);
+			err = vchiq_dump(dump_context, buf, len + 1);
+			if (err)
+				return err;
 
 			len = scnprintf(buf, sizeof(buf),
 				"  Ctrl: tx_count=%d, tx_bytes=%llu, "
@@ -3472,7 +3513,9 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 				service->stats.ctrl_tx_bytes,
 				service->stats.ctrl_rx_count,
 				service->stats.ctrl_rx_bytes);
-			vchiq_dump(dump_context, buf, len + 1);
+			err = vchiq_dump(dump_context, buf, len + 1);
+			if (err)
+				return err;
 
 			len = scnprintf(buf, sizeof(buf),
 				"  Bulk: tx_count=%d, tx_bytes=%llu, "
@@ -3481,7 +3524,9 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 				service->stats.bulk_tx_bytes,
 				service->stats.bulk_rx_count,
 				service->stats.bulk_rx_bytes);
-			vchiq_dump(dump_context, buf, len + 1);
+			err = vchiq_dump(dump_context, buf, len + 1);
+			if (err)
+				return err;
 
 			len = scnprintf(buf, sizeof(buf),
 				"  %d quota stalls, %d slot stalls, "
@@ -3494,10 +3539,13 @@ vchiq_dump_service_state(void *dump_context, struct vchiq_service *service)
 		}
 	}
 
-	vchiq_dump(dump_context, buf, len + 1);
+	err = vchiq_dump(dump_context, buf, len + 1);
+	if (err)
+		return err;
 
 	if (service->srvstate != VCHIQ_SRVSTATE_FREE)
-		vchiq_dump_platform_service_state(dump_context, service);
+		err = vchiq_dump_platform_service_state(dump_context, service);
+	return err;
 }
 
 void
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 419bcdd165b4..c31f953a9986 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -526,10 +526,10 @@ vchiq_bulk_transfer(unsigned int handle, void *offset, int size,
 		    void *userdata, enum vchiq_bulk_mode mode,
 		    enum vchiq_bulk_dir dir);
 
-extern void
+extern int
 vchiq_dump_state(void *dump_context, struct vchiq_state *state);
 
-extern void
+extern int
 vchiq_dump_service_state(void *dump_context, struct vchiq_service *service);
 
 extern void
@@ -602,16 +602,16 @@ vchiq_platform_resume(struct vchiq_state *state);
 extern void
 vchiq_platform_resumed(struct vchiq_state *state);
 
-extern void
+extern int
 vchiq_dump(void *dump_context, const char *str, int len);
 
-extern void
+extern int
 vchiq_dump_platform_state(void *dump_context);
 
-extern void
+extern int
 vchiq_dump_platform_instances(void *dump_context);
 
-extern void
+extern int
 vchiq_dump_platform_service_state(void *dump_context,
 	struct vchiq_service *service);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
