Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 029EB278633
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Sep 2020 13:44:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9501A86DEB;
	Fri, 25 Sep 2020 11:44:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CFnYpU3B2g5S; Fri, 25 Sep 2020 11:44:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6E81C86DE5;
	Fri, 25 Sep 2020 11:44:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 007B71BF2BD
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 11:44:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EEB55866B6
 for <devel@linuxdriverproject.org>; Fri, 25 Sep 2020 11:44:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CJWwn9mEVSdr for <devel@linuxdriverproject.org>;
 Fri, 25 Sep 2020 11:44:48 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B44DA86117
 for <devel@driverdev.osuosl.org>; Fri, 25 Sep 2020 11:44:47 +0000 (UTC)
Received: from threadripper.lan ([46.223.126.90]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N1u2b-1kRvD019ib-012GdZ; Fri, 25 Sep 2020 13:44:27 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com
Subject: [PATCH v2 1/2] staging: vchiq: fix __user annotations
Date: Fri, 25 Sep 2020 13:43:31 +0200
Message-Id: <20200925114424.2647144-1-arnd@arndb.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:2sHkIrsDUJlE69bY6DR+iJSeMV5M5w2CPeEhn1Ho1cZSaWgNwrx
 MT9KsPEJ+F61AGaenpa8dJgpLL8Iw/gqHr5xq6W2/+npchO8w/4OWdzcgrIOhnHjMqW3nl6
 TrNa0KiybbISC+AxCHwO6dMS/o9XW4vtOYT+4x6kqEOCOAYd4BScZiNVy5vTRzfsPTSJzph
 siMeaKTUhAcr4ykb+8X2w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:Hr+HwBurRdA=:KoJQpnzr4Rf4ld3x9ohDzx
 bSdae92NpOf/FxUavlXPduMNO1tWcKXIU1SzUJDuejmNo3xv1a8IKx+aaM4TMX2fnp50Yk44K
 rQg6HLqzxTbTcqgaUvFzXEciYWauQucPaI21n0BBJ4h4aXWJcI4TRdUfRMeu7a6yTHLAA+1DW
 3ndxCQ6TUU3TlP65hiZ/ajqCt/CY029y4fiza6eHPDqUPiQtJfjynBJE7an4aMSPS6i5yKQxG
 1WKw5bLVyFlaqida5+1D/zahMTvT0Ul9RtSZ3TdxsP3yU4Md466wQpzPBoojbmth1PzCae+/P
 lrtdVGqim63wEqEGpD1ywc5o2al+5vRJHa/W84zJHVPcC74Xx8lBXujk2Er+EiWG+OGt+6ib4
 ULDnqw4m3x+Qd85X/Tkao0jnTmDoYrpLZNmXUDTamm6Jdg20o0z3Hi6ElG9hpYqZEWBbO29Fr
 Ebc90kbhdND6hvlPrqA4V1DgXFVGVcDq80Mhlb7UHVVakUvvLeBV+Fn+9AHj5J6rJ6XjxlvR0
 Tu61S6ZarZpoA4KPbr+DoxYeUVqb5qArChhWMMgDq034ZMMR0eEiwY4wCSwWgRmmrx2pcOD8S
 +vkTJoxAenNKFoJZtYkFZdNoTyIXneoEX269ThzNK8BbanRFqOQHxOXamWSKqn0wpcKtwLO9o
 +QhamYL8ELE2dQVZsrW01BsauaLATVeijSIbraANPGQ+fdGYioQ3Lz3+Lt5fJC/y7TH42L7sJ
 pa9wviGeo/HrNuSf2JjgV0hFJrtpg7ivO+ez0LOMJdLobo/AUiFS2XlO/YEXM3doqn89t3b2x
 oX4DLdpqzUbIPso/wv9goIbRfMIpFVujpOF6InvKj5WYxd2EhQHN35mR0qp35Hy8cVLkx3w
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 Marcelo Diop-Gonzalez <marcgonzalez@google.com>, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org,
 Dave Stevenson <dave.stevenson@raspberrypi.org>,
 Jamal Shareef <jamal.k.shareef@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

My earlier patches caused some new sparse warnings, but it turns out
that a number of those are actual bugs, or at least suspicous code.

Adding __user annotations to the data structures that are defined in
uapi headers helps avoid the new warnings, but that causes a different
set of warnings to show up, as some of these structures are used both
inside of the kernel and at the user interface but storing pointers to
different things there.

Duplicating the vchiq_service_params and vchiq_completion_data structures
in turn takes care of most of those, and then it turns out that there
is a 'data' pointer that can be any of a __user address, a dmd_addr_t
and a kernel pointer in vmalloc space at times.

I'm trying to annotate these as best I can without changing behavior,
but there still seems to be a serious bug when user space passes
a valid vmalloc space address instead of a user pointer. Adding
comments in the code there, and leaving the warnings in place that
seem to correspond to actual bugs.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  2 +-
 .../include/linux/raspberrypi/vchiq.h         | 11 ++-
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  2 +-
 .../interface/vchiq_arm/vchiq_arm.c           | 95 ++++++++++++-------
 .../interface/vchiq_arm/vchiq_core.c          | 19 ++--
 .../interface/vchiq_arm/vchiq_core.h          | 10 +-
 .../interface/vchiq_arm/vchiq_ioctl.h         | 29 ++++--
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     |  2 +-
 8 files changed, 108 insertions(+), 62 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 292fcee9d6f2..d567a2e3f70c 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -122,7 +122,7 @@ static int
 vc_vchi_audio_init(struct vchiq_instance *vchiq_instance,
 		   struct bcm2835_audio_instance *instance)
 {
-	struct vchiq_service_params params = {
+	struct vchiq_service_params_kernel params = {
 		.version		= VC_AUDIOSERV_VER,
 		.version_min		= VC_AUDIOSERV_MIN_VER,
 		.fourcc			= VCHIQ_MAKE_FOURCC('A', 'U', 'D', 'S'),
diff --git a/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h b/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
index 18d63df368c4..fefc664eefcf 100644
--- a/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
+++ b/drivers/staging/vc04_services/include/linux/raspberrypi/vchiq.h
@@ -62,7 +62,14 @@ struct vchiq_service_base {
 	void *userdata;
 };
 
-struct vchiq_service_params {
+struct vchiq_completion_data_kernel {
+	enum vchiq_reason reason;
+	struct vchiq_header *header;
+	void *service_userdata;
+	void *bulk_userdata;
+};
+
+struct vchiq_service_params_kernel {
 	int fourcc;
 	enum vchiq_status (*callback)(enum vchiq_reason reason,
 				      struct vchiq_header *header,
@@ -79,7 +86,7 @@ extern enum vchiq_status vchiq_initialise(struct vchiq_instance **pinstance);
 extern enum vchiq_status vchiq_shutdown(struct vchiq_instance *instance);
 extern enum vchiq_status vchiq_connect(struct vchiq_instance *instance);
 extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
-	const struct vchiq_service_params *params,
+	const struct vchiq_service_params_kernel *params,
 	unsigned int *pservice);
 extern enum vchiq_status vchiq_close_service(unsigned int service);
 extern enum vchiq_status vchiq_use_service(unsigned int service);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 5ed36d557014..7dc7441db592 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -229,7 +229,7 @@ vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset, int size,
 	if (!pagelistinfo)
 		return VCHIQ_ERROR;
 
-	bulk->data = (void *)(unsigned long)pagelistinfo->dma_addr;
+	bulk->data = pagelistinfo->dma_addr;
 
 	/*
 	 * Store the pagelistinfo address in remote_data,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index bb0cc9cb96e9..4fb19e68eadf 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -53,7 +53,7 @@ int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
 struct user_service {
 	struct vchiq_service *service;
-	void *userdata;
+	void __user *userdata;
 	struct vchiq_instance *instance;
 	char is_vchi;
 	char dequeue_pending;
@@ -75,7 +75,7 @@ struct bulk_waiter_node {
 
 struct vchiq_instance {
 	struct vchiq_state *state;
-	struct vchiq_completion_data completions[MAX_COMPLETIONS];
+	struct vchiq_completion_data_kernel completions[MAX_COMPLETIONS];
 	int completion_insert;
 	int completion_remove;
 	struct completion insert_event;
@@ -273,7 +273,7 @@ EXPORT_SYMBOL(vchiq_connect);
 
 static enum vchiq_status vchiq_add_service(
 	struct vchiq_instance             *instance,
-	const struct vchiq_service_params *params,
+	const struct vchiq_service_params_kernel *params,
 	unsigned int       *phandle)
 {
 	enum vchiq_status status;
@@ -311,7 +311,7 @@ static enum vchiq_status vchiq_add_service(
 
 enum vchiq_status vchiq_open_service(
 	struct vchiq_instance             *instance,
-	const struct vchiq_service_params *params,
+	const struct vchiq_service_params_kernel *params,
 	unsigned int       *phandle)
 {
 	enum vchiq_status   status = VCHIQ_ERROR;
@@ -359,7 +359,8 @@ vchiq_bulk_transmit(unsigned int handle, const void *data,
 		switch (mode) {
 		case VCHIQ_BULK_MODE_NOCALLBACK:
 		case VCHIQ_BULK_MODE_CALLBACK:
-			status = vchiq_bulk_transfer(handle, (void *)data, size,
+			status = vchiq_bulk_transfer(handle,
+						     (void *)data, size,
 						     userdata, mode,
 						     VCHIQ_BULK_TRANSMIT);
 			break;
@@ -453,7 +454,8 @@ vchiq_blocking_bulk_transfer(unsigned int handle, void *data,
 
 		if (bulk) {
 			/* This thread has an outstanding bulk transfer. */
-			if ((bulk->data != data) ||
+			/* FIXME: why compare a dma address to a pointer? */
+			if ((bulk->data != (dma_addr_t)(uintptr_t)data) ||
 				(bulk->size != size)) {
 				/* This is not a retry of the previous one.
 				 * Cancel the signal when the transfer
@@ -513,7 +515,7 @@ add_completion(struct vchiq_instance *instance, enum vchiq_reason reason,
 	       struct vchiq_header *header, struct user_service *user_service,
 	       void *bulk_userdata)
 {
-	struct vchiq_completion_data *completion;
+	struct vchiq_completion_data_kernel *completion;
 	int insert;
 
 	DEBUG_INITIALISE(g_state.local)
@@ -802,7 +804,7 @@ static int vchiq_ioc_create_service(struct vchiq_instance *instance,
 	struct user_service *user_service = NULL;
 	struct vchiq_service *service;
 	enum vchiq_status status = VCHIQ_SUCCESS;
-	void *userdata;
+	struct vchiq_service_params_kernel params;
 	int srvstate;
 
 	user_service = kmalloc(sizeof(*user_service), GFP_KERNEL);
@@ -820,20 +822,23 @@ static int vchiq_ioc_create_service(struct vchiq_instance *instance,
 			 VCHIQ_SRVSTATE_LISTENING : VCHIQ_SRVSTATE_HIDDEN;
 	}
 
-	userdata = args->params.userdata;
-	args->params.callback = service_callback;
-	args->params.userdata = user_service;
-	service = vchiq_add_service_internal(instance->state, &args->params,
+	params = (struct vchiq_service_params_kernel) {
+		.fourcc   = args->params.fourcc,
+		.callback = service_callback,
+		.userdata = user_service,
+		.version  = args->params.version,
+		.version_min = args->params.version_min,
+	};
+	service = vchiq_add_service_internal(instance->state, &params,
 					     srvstate, instance,
 					     user_service_free);
-
 	if (!service) {
 		kfree(user_service);
 		return -EEXIST;
 	}
 
 	user_service->service = service;
-	user_service->userdata = userdata;
+	user_service->userdata = args->params.userdata;
 	user_service->instance = instance;
 	user_service->is_vchi = (args->is_vchi != 0);
 	user_service->dequeue_pending = 0;
@@ -945,6 +950,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 {
 	struct vchiq_service *service;
 	struct bulk_waiter_node *waiter = NULL;
+	void *userdata;
 	int status = 0;
 	int ret;
 
@@ -960,7 +966,7 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 			goto out;
 		}
 
-		args->userdata = &waiter->bulk_waiter;
+		userdata = &waiter->bulk_waiter;
 	} else if (args->mode == VCHIQ_BULK_MODE_WAITING) {
 		mutex_lock(&instance->bulk_waiter_list_mutex);
 		list_for_each_entry(waiter, &instance->bulk_waiter_list,
@@ -981,11 +987,18 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 		vchiq_log_info(vchiq_arm_log_level,
 			"found bulk_waiter %pK for pid %d", waiter,
 			current->pid);
-		args->userdata = &waiter->bulk_waiter;
+		userdata = &waiter->bulk_waiter;
 	}
 
+	/*
+	 * FIXME address space mismatch:
+	 * args->data may be interpreted as a kernel pointer
+	 * in create_pagelist() called from vchiq_bulk_transfer(),
+	 * accessing kernel data instead of user space, based on the
+	 * address.
+	 */
 	status = vchiq_bulk_transfer(args->handle, args->data, args->size,
-				     args->userdata, args->mode, dir);
+				     userdata, args->mode, dir);
 
 	if (!waiter) {
 		ret = 0;
@@ -1027,19 +1040,22 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 	return 0;
 }
 
+/* read a user pointer value from an array pointers in user space */
 static inline int vchiq_get_user_ptr(void __user **buf, void __user *ubuf, int index)
 {
-	compat_uptr_t ptr32;
 	int ret;
 
 	if (in_compat_syscall()) {
+		compat_uptr_t ptr32;
 		compat_uptr_t __user *uptr = ubuf;
-		ret = get_user(ptr32, &uptr[index]);
+		ret = get_user(ptr32, uptr + index);
 		*buf = compat_ptr(ptr32);
 	} else {
-		void __user *__user *uptr = ubuf;
-		ret = get_user(buf, &uptr[index]);
+		uintptr_t ptr, __user *uptr = ubuf;
+		ret = get_user(ptr, uptr + index);
+		*buf = (void __user *)ptr;
 	}
+
 	return ret;
 }
 
@@ -1058,10 +1074,10 @@ static int vchiq_put_completion(struct vchiq_completion_data __user *buf,
 
 	if (in_compat_syscall()) {
 		struct vchiq_completion_data32 tmp = {
-			.reason		  = buf->reason,
-			.header		  = ptr_to_compat(buf->header),
-			.service_userdata = ptr_to_compat(buf->service_userdata),
-			.bulk_userdata	  = ptr_to_compat(buf->bulk_userdata),
+			.reason		  = completion->reason,
+			.header		  = ptr_to_compat(completion->header),
+			.service_userdata = ptr_to_compat(completion->service_userdata),
+			.bulk_userdata	  = ptr_to_compat(completion->bulk_userdata),
 		};
 		if (copy_to_user(&buf32[index], &tmp, sizeof(tmp)))
 			return -EFAULT;
@@ -1115,7 +1131,8 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
 	remove = instance->completion_remove;
 
 	for (ret = 0; ret < args->count; ret++) {
-		struct vchiq_completion_data *completion;
+		struct vchiq_completion_data_kernel *completion;
+		struct vchiq_completion_data user_completion;
 		struct vchiq_service *service;
 		struct user_service *user_service;
 		struct vchiq_header *header;
@@ -1134,7 +1151,12 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
 
 		service = completion->service_userdata;
 		user_service = service->base.userdata;
-		completion->service_userdata = user_service->userdata;
+
+		memset(&user_completion, 0, sizeof(user_completion));
+		user_completion = (struct vchiq_completion_data) {
+			.reason = completion->reason,
+			.service_userdata = user_service->userdata,
+		};
 
 		header = completion->header;
 		if (header) {
@@ -1158,7 +1180,7 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
 				break;
 			/* Get the pointer from user space */
 			msgbufcount--;
-			if (vchiq_get_user_ptr(&msgbuf, &args->msgbufs,
+			if (vchiq_get_user_ptr(&msgbuf, args->msgbufs,
 						msgbufcount)) {
 				if (ret == 0)
 					ret = -EFAULT;
@@ -1178,15 +1200,20 @@ static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
 
 			/* The completion must point to the
 			** msgbuf. */
-			completion->header =
-				(struct vchiq_header __force *)msgbuf;
+			user_completion.header = msgbuf;
 		}
 
 		if ((completion->reason == VCHIQ_SERVICE_CLOSED) &&
 		    !instance->use_close_delivered)
 			unlock_service(service);
 
-		if (vchiq_put_completion(args->buf, completion, ret)) {
+		/*
+		 * FIXME: address space mismatch, does bulk_userdata
+		 * actually point to user or kernel memory?
+		 */
+		user_completion.bulk_userdata = completion->bulk_userdata;
+
+		if (vchiq_put_completion(args->buf, &user_completion, ret)) {
 			if (ret == 0)
 				ret = -EFAULT;
 			break;
@@ -1713,7 +1740,7 @@ struct vchiq_await_completion32 {
 static long
 vchiq_compat_ioctl_await_completion(struct file *file,
 				    unsigned int cmd,
-				    struct vchiq_await_completion32 *argp)
+				    struct vchiq_await_completion32 __user *argp)
 {
 	struct vchiq_await_completion args;
 	struct vchiq_await_completion32 args32;
@@ -1926,7 +1953,7 @@ static int vchiq_release(struct inode *inode, struct file *file)
 	/* Release any closed services */
 	while (instance->completion_remove !=
 		instance->completion_insert) {
-		struct vchiq_completion_data *completion;
+		struct vchiq_completion_data_kernel *completion;
 		struct vchiq_service *service;
 
 		completion = &instance->completions[
@@ -2191,7 +2218,7 @@ vchiq_keepalive_thread_func(void *v)
 	struct vchiq_instance *instance;
 	unsigned int ka_handle;
 
-	struct vchiq_service_params params = {
+	struct vchiq_service_params_kernel params = {
 		.fourcc      = VCHIQ_MAKE_FOURCC('K', 'E', 'E', 'P'),
 		.callback    = vchiq_keepalive_vchiq_callback,
 		.version     = KEEPALIVE_VER,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 5a361e8e7c6c..12110692e68d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1392,7 +1392,7 @@ abort_outstanding_bulks(struct vchiq_service *service,
 				bulk->remote_size);
 		} else {
 			/* fabricate a matching dummy bulk */
-			bulk->data = NULL;
+			bulk->data = 0;
 			bulk->size = 0;
 			bulk->actual = VCHIQ_BULK_ACTUAL_ABORTED;
 			bulk->dir = is_tx ? VCHIQ_BULK_TRANSMIT :
@@ -1764,10 +1764,10 @@ parse_rx_slots(struct vchiq_state *state)
 				queue->remote_insert++;
 
 				vchiq_log_info(vchiq_core_log_level,
-					"%d: prs %s@%pK (%d->%d) %x@%pK",
+					"%d: prs %s@%pK (%d->%d) %x@%pad",
 					state->id, msg_type_str(type),
 					header, remoteport, localport,
-					bulk->actual, bulk->data);
+					bulk->actual, &bulk->data);
 
 				vchiq_log_trace(vchiq_core_log_level,
 					"%d: prs:%d %cx li=%x ri=%x p=%x",
@@ -2316,7 +2316,7 @@ struct vchiq_header *vchiq_msg_hold(unsigned int handle)
 }
 EXPORT_SYMBOL(vchiq_msg_hold);
 
-static int vchiq_validate_params(const struct vchiq_service_params *params)
+static int vchiq_validate_params(const struct vchiq_service_params_kernel *params)
 {
 	if (!params->callback || !params->fourcc) {
 		vchiq_loud_error("Can't add service, invalid params\n");
@@ -2329,7 +2329,7 @@ static int vchiq_validate_params(const struct vchiq_service_params *params)
 /* Called from application thread when a client or server service is created. */
 struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
-			   const struct vchiq_service_params *params,
+			   const struct vchiq_service_params_kernel *params,
 			   int srvstate, struct vchiq_instance *instance,
 			   vchiq_userdata_term userdata_term)
 {
@@ -3015,7 +3015,8 @@ vchiq_remove_service(unsigned int handle)
  * structure.
  */
 enum vchiq_status vchiq_bulk_transfer(unsigned int handle,
-				   void *offset, int size, void *userdata,
+				   void *offset, int size,
+				   void *userdata,
 				   enum vchiq_bulk_mode mode,
 				   enum vchiq_bulk_dir dir)
 {
@@ -3093,9 +3094,9 @@ enum vchiq_status vchiq_bulk_transfer(unsigned int handle,
 	wmb();
 
 	vchiq_log_info(vchiq_core_log_level,
-		"%d: bt (%d->%d) %cx %x@%pK %pK",
+		"%d: bt (%d->%d) %cx %x@%pad %pK",
 		state->id, service->localport, service->remoteport, dir_char,
-		size, bulk->data, userdata);
+		size, &bulk->data, userdata);
 
 	/* The slot mutex must be held when the service is being closed, so
 	   claim it here to ensure that isn't happening */
@@ -3107,7 +3108,7 @@ enum vchiq_status vchiq_bulk_transfer(unsigned int handle,
 	if (service->srvstate != VCHIQ_SRVSTATE_OPEN)
 		goto unlock_both_error_exit;
 
-	payload[0] = (int)(long)bulk->data;
+	payload[0] = lower_32_bits(bulk->data);
 	payload[1] = bulk->size;
 	status = queue_message(state,
 			       NULL,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index e67692879249..5ec717969676 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -231,7 +231,7 @@ struct vchiq_bulk {
 	short mode;
 	short dir;
 	void *userdata;
-	void *data;
+	dma_addr_t data;
 	int size;
 	void *remote_data;
 	int remote_size;
@@ -534,9 +534,9 @@ vchiq_init_state(struct vchiq_state *state, struct vchiq_slot_zero *slot_zero);
 extern enum vchiq_status
 vchiq_connect_internal(struct vchiq_state *state, struct vchiq_instance *instance);
 
-extern struct vchiq_service *
+struct vchiq_service *
 vchiq_add_service_internal(struct vchiq_state *state,
-			   const struct vchiq_service_params *params,
+			   const struct vchiq_service_params_kernel *params,
 			   int srvstate, struct vchiq_instance *instance,
 			   vchiq_userdata_term userdata_term);
 
@@ -632,8 +632,8 @@ vchiq_queue_message(unsigned int handle,
 ** implementations must be provided. */
 
 extern enum vchiq_status
-vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset, int size,
-			int dir);
+vchiq_prepare_bulk_data(struct vchiq_bulk *bulk, void *offset,
+			int size, int dir);
 
 extern void
 vchiq_complete_bulk(struct vchiq_bulk *bulk);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
index 3653fd99d8a1..86d77f2eeea5 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_ioctl.h
@@ -10,6 +10,17 @@
 #define VCHIQ_IOC_MAGIC 0xc4
 #define VCHIQ_INVALID_HANDLE (~0)
 
+struct vchiq_service_params {
+	int fourcc;
+	enum vchiq_status __user (*callback)(enum vchiq_reason reason,
+				      struct vchiq_header *header,
+				      unsigned int handle,
+				      void *bulk_userdata);
+	void __user *userdata;
+	short version;       /* Increment for non-trivial changes */
+	short version_min;   /* Update for incompatible changes */
+};
+
 struct vchiq_create_service {
 	struct vchiq_service_params params;
 	int is_open;
@@ -25,32 +36,32 @@ struct vchiq_queue_message {
 
 struct vchiq_queue_bulk_transfer {
 	unsigned int handle;
-	void *data;
+	void __user *data;
 	unsigned int size;
-	void *userdata;
+	void __user *userdata;
 	enum vchiq_bulk_mode mode;
 };
 
 struct vchiq_completion_data {
 	enum vchiq_reason reason;
-	struct vchiq_header *header;
-	void *service_userdata;
-	void *bulk_userdata;
+	struct vchiq_header __user *header;
+	void __user *service_userdata;
+	void __user *bulk_userdata;
 };
 
 struct vchiq_await_completion {
 	unsigned int count;
-	struct vchiq_completion_data *buf;
+	struct vchiq_completion_data __user *buf;
 	unsigned int msgbufsize;
 	unsigned int msgbufcount; /* IN/OUT */
-	void **msgbufs;
+	void * __user *msgbufs;
 };
 
 struct vchiq_dequeue_message {
 	unsigned int handle;
 	int blocking;
 	unsigned int bufsize;
-	void *buf;
+	void __user *buf;
 };
 
 struct vchiq_get_config {
@@ -65,7 +76,7 @@ struct vchiq_set_service_option {
 };
 
 struct vchiq_dump_mem {
-	void     *virt_addr;
+	void     __user *virt_addr;
 	size_t    num_bytes;
 };
 
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index e798d494f00f..3a4202551cfc 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -1858,7 +1858,7 @@ int vchiq_mmal_init(struct vchiq_mmal_instance **out_instance)
 	int status;
 	struct vchiq_mmal_instance *instance;
 	static struct vchiq_instance *vchiq_instance;
-	struct vchiq_service_params params = {
+	struct vchiq_service_params_kernel params = {
 		.version		= VC_MMAL_VER,
 		.version_min		= VC_MMAL_MIN_VER,
 		.fourcc			= VCHIQ_MAKE_FOURCC('m', 'm', 'a', 'l'),
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
