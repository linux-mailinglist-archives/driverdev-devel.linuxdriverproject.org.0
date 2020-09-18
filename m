Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F9F26F9AC
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 11:55:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2B594877E6;
	Fri, 18 Sep 2020 09:55:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BZMllJus7ngW; Fri, 18 Sep 2020 09:55:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A00A9877E3;
	Fri, 18 Sep 2020 09:55:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C3331BF2A3
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 08AC88750A
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tj0HQ6G8kJQB for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 09:55:26 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CAB2F8769B
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 09:55:25 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MaIvT-1jwVgJ12Yv-00WBGu; Fri, 18 Sep 2020 11:54:54 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-rpi-kernel@lists.infradead.org,
	nsaenzjulienne@suse.de
Subject: [PATCH 5/5] staging: vchiq: convert compat await_completion
Date: Fri, 18 Sep 2020 11:54:41 +0200
Message-Id: <20200918095441.1446041-6-arnd@arndb.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200918095441.1446041-1-arnd@arndb.de>
References: <20200918095441.1446041-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:wKKXkp3hvdPm2VYsPUfZCLaujAKGHtD3wJ+tamSfbaHgV17ruMe
 W7b119tJpDaGaXBcolWb1km/UKlqSUd5jLuzi2B3wil2alz5C+LAPzAzCIMnN+8TBXdVVyd
 tvZDNMGKuISSvgyTTdf0Ago+gGQDTdFlvZUSxRIB6lHszqTctrMKTI9xdKnbgt66g3gvXUR
 3QKuiyGo90kJpLTgx80DQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:sbPO7rjmmXc=:JXfnVcGnmS7i044wxSmUmW
 +wNPD6q/McBSPFvRgJVCvk0FWP8SbYkSe9hukOjeGxyfEJUaIC6A5exTJ9xjmqSgneFOgA3ID
 XwQv0GPwQMgS2oAaBViUdNa/jiqVKjUiDxwwBLp6GC7EzqHoeA7Ggz//81gkjIiptoc3c2+sJ
 bXi4B9Mh0HHtDzMqCWhO45BYcLJR3mT1ctEGFKd6u66g/ZLURdTB4LQ39e3q/v4OZqN1HBIpz
 dvyX31JVTPqRKRrvGpj0qJv9bdmQuuMzsio5l2vluUj0LBK9LJNm/yhYV3lEQgw1sbqJrO0P9
 NeIJq3ubpNcAx/3UDa4fRydIIjgAn7MoOFuJBWqSmU1PXS5Jc69JD4N+/CAGiZF/4aquM1X5k
 QcCGXsOa/v1I8I0CaOdFkIxDvkixgQth+8VEKGECUBG93hFu6oyL2WaJTgjPVe34MvTGBUSoG
 AY8f8cP+rQku8QWNUw3znB9k7TZYHsplpL4NWW9CchSQe5tPzv7CzFXblfISiSN6Ma1shDEYi
 D6WERC5npMETgw0dgOqG3qBJuCJT5ZPrKp6m1HdXfgkyDrctF+heRqbkn8ISO1a+C6mG67Ln/
 O9ljq3faEtdZryPouMUVl79Gh2MoajQv9UCdNUdYayzIOvRQp4D2/WVb5in91nryMhtd0IPoz
 72v5+YbFY0zgkxI/6FxextU9qXBuPetzxgzTlkxYpkbLLpbUNWXSaVIEb4hYx2pdRZumUB4Q8
 ldtbmNAOT11n1CMJWCzQldutLNRswzNC+ZOVfuKt/91CEtOBe5Y+usF5N2JVtrgH0d/qxYUOR
 aNZTs11QGxNSKOf1QLEs8FLWoEZ5r1ct5OUFMUlMrbh+BDhZuOtnO2pWR25rvnBk2+YcJxc
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
Cc: devel@driverdev.osuosl.org, stefan.wahren@i2se.com,
 Arnd Bergmann <arnd@arndb.de>, gregkh@linuxfoundation.org,
 marcgonzalez@google.com, linux-kernel@vger.kernel.org, hch@lst.de,
 bcm-kernel-feedback-list@broadcom.com, jamal.k.shareef@gmail.com,
 inf.braun@fau.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Split out the ioctl implementation for VCHIQ_IOC_QUEUE_BULK_TRANSMIT
into a separate function so it can be shared with the compat
implementation.

This one is the trickiest conversion, as the compat implementation
is already quite different from the native one. By using a common
handler, the behavior is changed to be the same again: The
indirect __user pointer accesses are now handled through helper
functions that check for compat mode internally.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 496 ++++++++----------
 1 file changed, 205 insertions(+), 291 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 50af7f4a1b7c..bb0cc9cb96e9 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -1027,6 +1027,193 @@ static int vchiq_irq_queue_bulk_tx_rx(struct vchiq_instance *instance,
 	return 0;
 }
 
+static inline int vchiq_get_user_ptr(void __user **buf, void __user *ubuf, int index)
+{
+	compat_uptr_t ptr32;
+	int ret;
+
+	if (in_compat_syscall()) {
+		compat_uptr_t __user *uptr = ubuf;
+		ret = get_user(ptr32, &uptr[index]);
+		*buf = compat_ptr(ptr32);
+	} else {
+		void __user *__user *uptr = ubuf;
+		ret = get_user(buf, &uptr[index]);
+	}
+	return ret;
+}
+
+struct vchiq_completion_data32 {
+	enum vchiq_reason reason;
+	compat_uptr_t header;
+	compat_uptr_t service_userdata;
+	compat_uptr_t bulk_userdata;
+};
+
+static int vchiq_put_completion(struct vchiq_completion_data __user *buf,
+				struct vchiq_completion_data *completion,
+				int index)
+{
+	struct vchiq_completion_data32 __user *buf32 = (void __user *)buf;
+
+	if (in_compat_syscall()) {
+		struct vchiq_completion_data32 tmp = {
+			.reason		  = buf->reason,
+			.header		  = ptr_to_compat(buf->header),
+			.service_userdata = ptr_to_compat(buf->service_userdata),
+			.bulk_userdata	  = ptr_to_compat(buf->bulk_userdata),
+		};
+		if (copy_to_user(&buf32[index], &tmp, sizeof(tmp)))
+			return -EFAULT;
+	} else {
+		if (copy_to_user(&buf[index], completion, sizeof(*completion)))
+			return -EFAULT;
+	}
+
+	return 0;
+}
+
+static int vchiq_ioc_await_completion(struct vchiq_instance *instance,
+				      struct vchiq_await_completion *args,
+				      int __user *msgbufcountp)
+{
+	int msgbufcount;
+	int remove;
+	int ret;
+
+	DEBUG_INITIALISE(g_state.local)
+
+	DEBUG_TRACE(AWAIT_COMPLETION_LINE);
+	if (!instance->connected) {
+		return -ENOTCONN;
+	}
+
+	mutex_lock(&instance->completion_mutex);
+
+	DEBUG_TRACE(AWAIT_COMPLETION_LINE);
+	while ((instance->completion_remove ==
+		instance->completion_insert)
+		&& !instance->closing) {
+		int rc;
+
+		DEBUG_TRACE(AWAIT_COMPLETION_LINE);
+		mutex_unlock(&instance->completion_mutex);
+		rc = wait_for_completion_interruptible(
+					&instance->insert_event);
+		mutex_lock(&instance->completion_mutex);
+		if (rc) {
+			DEBUG_TRACE(AWAIT_COMPLETION_LINE);
+			vchiq_log_info(vchiq_arm_log_level,
+				"AWAIT_COMPLETION interrupted");
+			ret = -EINTR;
+			goto out;
+		}
+	}
+	DEBUG_TRACE(AWAIT_COMPLETION_LINE);
+
+	msgbufcount = args->msgbufcount;
+	remove = instance->completion_remove;
+
+	for (ret = 0; ret < args->count; ret++) {
+		struct vchiq_completion_data *completion;
+		struct vchiq_service *service;
+		struct user_service *user_service;
+		struct vchiq_header *header;
+
+		if (remove == instance->completion_insert)
+			break;
+
+		completion = &instance->completions[
+			remove & (MAX_COMPLETIONS - 1)];
+
+		/*
+		 * A read memory barrier is needed to stop
+		 * prefetch of a stale completion record
+		 */
+		rmb();
+
+		service = completion->service_userdata;
+		user_service = service->base.userdata;
+		completion->service_userdata = user_service->userdata;
+
+		header = completion->header;
+		if (header) {
+			void __user *msgbuf;
+			int msglen;
+
+			msglen = header->size + sizeof(struct vchiq_header);
+			/* This must be a VCHIQ-style service */
+			if (args->msgbufsize < msglen) {
+				vchiq_log_error(vchiq_arm_log_level,
+					"header %pK: msgbufsize %x < msglen %x",
+					header, args->msgbufsize, msglen);
+				WARN(1, "invalid message size\n");
+				if (ret == 0)
+					ret = -EMSGSIZE;
+				break;
+			}
+			if (msgbufcount <= 0)
+				/* Stall here for lack of a
+				** buffer for the message. */
+				break;
+			/* Get the pointer from user space */
+			msgbufcount--;
+			if (vchiq_get_user_ptr(&msgbuf, &args->msgbufs,
+						msgbufcount)) {
+				if (ret == 0)
+					ret = -EFAULT;
+				break;
+			}
+
+			/* Copy the message to user space */
+			if (copy_to_user(msgbuf, header, msglen)) {
+				if (ret == 0)
+					ret = -EFAULT;
+				break;
+			}
+
+			/* Now it has been copied, the message
+			** can be released. */
+			vchiq_release_message(service->handle, header);
+
+			/* The completion must point to the
+			** msgbuf. */
+			completion->header =
+				(struct vchiq_header __force *)msgbuf;
+		}
+
+		if ((completion->reason == VCHIQ_SERVICE_CLOSED) &&
+		    !instance->use_close_delivered)
+			unlock_service(service);
+
+		if (vchiq_put_completion(args->buf, completion, ret)) {
+			if (ret == 0)
+				ret = -EFAULT;
+			break;
+		}
+
+		/*
+		 * Ensure that the above copy has completed
+		 * before advancing the remove pointer.
+		 */
+		mb();
+		remove++;
+		instance->completion_remove = remove;
+	}
+
+	if (msgbufcount != args->msgbufcount) {
+		if (put_user(msgbufcount, msgbufcountp))
+			ret = -EFAULT;
+	}
+out:
+	if (ret)
+		complete(&instance->remove_event);
+	mutex_unlock(&instance->completion_mutex);
+	DEBUG_TRACE(AWAIT_COMPLETION_LINE);
+
+	return ret;
+}
+
 /****************************************************************************
 *
 *   vchiq_ioctl
@@ -1041,8 +1228,6 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	long ret = 0;
 	int i, rc;
 
-	DEBUG_INITIALISE(g_state.local)
-
 	vchiq_log_trace(vchiq_arm_log_level,
 		"%s - instance %pK, cmd %s, arg %lx",
 		__func__, instance,
@@ -1225,163 +1410,16 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 
 	case VCHIQ_IOC_AWAIT_COMPLETION: {
 		struct vchiq_await_completion args;
+		struct vchiq_await_completion __user *argp;
 
-		DEBUG_TRACE(AWAIT_COMPLETION_LINE);
-		if (!instance->connected) {
-			ret = -ENOTCONN;
-			break;
-		}
-
-		if (copy_from_user(&args, (const void __user *)arg,
-			sizeof(args))) {
+		argp = (void __user *)arg;
+		if (copy_from_user(&args, argp, sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
 
-		mutex_lock(&instance->completion_mutex);
-
-		DEBUG_TRACE(AWAIT_COMPLETION_LINE);
-		while ((instance->completion_remove ==
-			instance->completion_insert)
-			&& !instance->closing) {
-			int rc;
-
-			DEBUG_TRACE(AWAIT_COMPLETION_LINE);
-			mutex_unlock(&instance->completion_mutex);
-			rc = wait_for_completion_interruptible(
-						&instance->insert_event);
-			mutex_lock(&instance->completion_mutex);
-			if (rc) {
-				DEBUG_TRACE(AWAIT_COMPLETION_LINE);
-				vchiq_log_info(vchiq_arm_log_level,
-					"AWAIT_COMPLETION interrupted");
-				ret = -EINTR;
-				break;
-			}
-		}
-		DEBUG_TRACE(AWAIT_COMPLETION_LINE);
-
-		if (ret == 0) {
-			int msgbufcount = args.msgbufcount;
-			int remove = instance->completion_remove;
-
-			for (ret = 0; ret < args.count; ret++) {
-				struct vchiq_completion_data *completion;
-				struct vchiq_service *service;
-				struct user_service *user_service;
-				struct vchiq_header *header;
-
-				if (remove == instance->completion_insert)
-					break;
-
-				completion = &instance->completions[
-					remove & (MAX_COMPLETIONS - 1)];
-
-				/*
-				 * A read memory barrier is needed to stop
-				 * prefetch of a stale completion record
-				 */
-				rmb();
-
-				service = completion->service_userdata;
-				user_service = service->base.userdata;
-				completion->service_userdata =
-					user_service->userdata;
-
-				header = completion->header;
-				if (header) {
-					void __user *msgbuf;
-					int msglen;
-
-					msglen = header->size +
-						sizeof(struct vchiq_header);
-					/* This must be a VCHIQ-style service */
-					if (args.msgbufsize < msglen) {
-						vchiq_log_error(
-							vchiq_arm_log_level,
-							"header %pK: msgbufsize %x < msglen %x",
-							header, args.msgbufsize,
-							msglen);
-						WARN(1, "invalid message "
-							"size\n");
-						if (ret == 0)
-							ret = -EMSGSIZE;
-						break;
-					}
-					if (msgbufcount <= 0)
-						/* Stall here for lack of a
-						** buffer for the message. */
-						break;
-					/* Get the pointer from user space */
-					msgbufcount--;
-					if (copy_from_user(&msgbuf,
-						(const void __user *)
-						&args.msgbufs[msgbufcount],
-						sizeof(msgbuf))) {
-						if (ret == 0)
-							ret = -EFAULT;
-						break;
-					}
-
-					/* Copy the message to user space */
-					if (copy_to_user(msgbuf, header,
-						msglen)) {
-						if (ret == 0)
-							ret = -EFAULT;
-						break;
-					}
-
-					/* Now it has been copied, the message
-					** can be released. */
-					vchiq_release_message(service->handle,
-						header);
-
-					/* The completion must point to the
-					** msgbuf. */
-					completion->header =
-						(struct vchiq_header __force *)
-						msgbuf;
-				}
-
-				if ((completion->reason ==
-					VCHIQ_SERVICE_CLOSED) &&
-					!instance->use_close_delivered)
-					unlock_service(service);
-
-				if (copy_to_user((void __user *)(
-					(size_t)args.buf + ret *
-					sizeof(struct vchiq_completion_data)),
-					completion,
-					sizeof(struct vchiq_completion_data))) {
-						if (ret == 0)
-							ret = -EFAULT;
-					break;
-				}
-
-				/*
-				 * Ensure that the above copy has completed
-				 * before advancing the remove pointer.
-				 */
-				mb();
-				remove++;
-				instance->completion_remove = remove;
-			}
-
-			if (msgbufcount != args.msgbufcount) {
-				if (copy_to_user((void __user *)
-					&((struct vchiq_await_completion *)arg)
-						->msgbufcount,
-					&msgbufcount,
-					sizeof(msgbufcount))) {
-					ret = -EFAULT;
-				}
-			}
-		}
-
-		if (ret)
-			complete(&instance->remove_event);
-		mutex_unlock(&instance->completion_mutex);
-		DEBUG_TRACE(AWAIT_COMPLETION_LINE);
+		ret = vchiq_ioc_await_completion(instance, &args,
+						 &argp->msgbufcount);
 	} break;
 
 	case VCHIQ_IOC_DEQUEUE_MESSAGE: {
@@ -1661,13 +1699,6 @@ vchiq_compat_ioctl_queue_bulk(struct file *file,
 					  dir, &argp->mode);
 }
 
-struct vchiq_completion_data32 {
-	enum vchiq_reason reason;
-	compat_uptr_t header;
-	compat_uptr_t service_userdata;
-	compat_uptr_t bulk_userdata;
-};
-
 struct vchiq_await_completion32 {
 	unsigned int count;
 	compat_uptr_t buf;
@@ -1682,141 +1713,24 @@ struct vchiq_await_completion32 {
 static long
 vchiq_compat_ioctl_await_completion(struct file *file,
 				    unsigned int cmd,
-				    unsigned long arg)
+				    struct vchiq_await_completion32 *argp)
 {
-	struct vchiq_await_completion __user *args;
-	struct vchiq_completion_data __user *completion;
-	struct vchiq_completion_data completiontemp;
+	struct vchiq_await_completion args;
 	struct vchiq_await_completion32 args32;
-	struct vchiq_completion_data32 completion32;
-	unsigned int __user *msgbufcount32;
-	unsigned int msgbufcount_native;
-	compat_uptr_t msgbuf32;
-	void __user *msgbuf;
-	void * __user *msgbufptr;
-	long ret;
-
-	args = compat_alloc_user_space(sizeof(*args) +
-				       sizeof(*completion) +
-				       sizeof(*msgbufptr));
-	if (!args)
-		return -EFAULT;
-
-	completion = (struct vchiq_completion_data __user *)(args + 1);
-	msgbufptr = (void * __user *)(completion + 1);
-
-	if (copy_from_user(&args32,
-			   (struct vchiq_completion_data32 __user *)arg,
-			   sizeof(args32)))
-		return -EFAULT;
-
-	if (put_user(args32.count, &args->count) ||
-	    put_user(compat_ptr(args32.buf), &args->buf) ||
-	    put_user(args32.msgbufsize, &args->msgbufsize) ||
-	    put_user(args32.msgbufcount, &args->msgbufcount) ||
-	    put_user(compat_ptr(args32.msgbufs), &args->msgbufs))
-		return -EFAULT;
-
-	/* These are simple cases, so just fall into the native handler */
-	if (!args32.count || !args32.buf || !args32.msgbufcount)
-		return vchiq_ioctl(file,
-				   VCHIQ_IOC_AWAIT_COMPLETION,
-				   (unsigned long)args);
-
-	/*
-	 * These are the more complex cases.  Typical applications of this
-	 * ioctl will use a very large count, with a very large msgbufcount.
-	 * Since the native ioctl can asynchronously fill in the returned
-	 * buffers and the application can in theory begin processing messages
-	 * even before the ioctl returns, a bit of a trick is used here.
-	 *
-	 * By forcing both count and msgbufcount to be 1, it forces the native
-	 * ioctl to only claim at most 1 message is available.   This tricks
-	 * the calling application into thinking only 1 message was actually
-	 * available in the queue so like all good applications it will retry
-	 * waiting until all the required messages are received.
-	 *
-	 * This trick has been tested and proven to work with vchiq_test,
-	 * Minecraft_PI, the "hello pi" examples, and various other
-	 * applications that are included in Raspbian.
-	 */
-
-	if (copy_from_user(&msgbuf32,
-			   compat_ptr(args32.msgbufs) +
-			   (sizeof(compat_uptr_t) *
-			   (args32.msgbufcount - 1)),
-			   sizeof(msgbuf32)))
-		return -EFAULT;
-
-	msgbuf = compat_ptr(msgbuf32);
 
-	if (copy_to_user(msgbufptr,
-			 &msgbuf,
-			 sizeof(msgbuf)))
-		return -EFAULT;
-
-	if (copy_to_user(&args->msgbufs,
-			 &msgbufptr,
-			 sizeof(msgbufptr)))
-		return -EFAULT;
-
-	if (put_user(1U, &args->count) ||
-	    put_user(completion, &args->buf) ||
-	    put_user(1U, &args->msgbufcount))
-		return -EFAULT;
-
-	ret = vchiq_ioctl(file,
-			  VCHIQ_IOC_AWAIT_COMPLETION,
-			  (unsigned long)args);
-
-	/*
-	 * An return value of 0 here means that no messages where available
-	 * in the message queue.  In this case the native ioctl does not
-	 * return any data to the application at all.  Not even to update
-	 * msgbufcount.  This functionality needs to be kept here for
-	 * compatibility.
-	 *
-	 * Of course, < 0 means that an error occurred and no data is being
-	 * returned.
-	 *
-	 * Since count and msgbufcount was forced to 1, that means
-	 * the only other possible return value is 1. Meaning that 1 message
-	 * was available, so that multiple message case does not need to be
-	 * handled here.
-	 */
-	if (ret <= 0)
-		return ret;
-
-	if (copy_from_user(&completiontemp, completion, sizeof(*completion)))
-		return -EFAULT;
-
-	completion32.reason = completiontemp.reason;
-	completion32.header = ptr_to_compat(completiontemp.header);
-	completion32.service_userdata =
-		ptr_to_compat(completiontemp.service_userdata);
-	completion32.bulk_userdata =
-		ptr_to_compat(completiontemp.bulk_userdata);
-
-	if (copy_to_user(compat_ptr(args32.buf),
-			 &completion32,
-			 sizeof(completion32)))
-		return -EFAULT;
-
-	if (get_user(msgbufcount_native, &args->msgbufcount))
+	if (copy_from_user(&args32, argp, sizeof(args32)))
 		return -EFAULT;
 
-	if (!msgbufcount_native)
-		args32.msgbufcount--;
-
-	msgbufcount32 =
-		&((struct vchiq_await_completion32 __user *)arg)->msgbufcount;
-
-	if (copy_to_user(msgbufcount32,
-			 &args32.msgbufcount,
-			 sizeof(args32.msgbufcount)))
-		return -EFAULT;
+	args = (struct vchiq_await_completion) {
+		.count		= args32.count,
+		.buf		= compat_ptr(args32.buf),
+		.msgbufsize	= args32.msgbufsize,
+		.msgbufcount	= args32.msgbufcount,
+		.msgbufs	= compat_ptr(args32.msgbufs),
+	};
 
-	return 1;
+	return vchiq_ioc_await_completion(file->private_data, &args,
+					  &argp->msgbufcount);
 }
 
 struct vchiq_dequeue_message32 {
@@ -1893,7 +1807,7 @@ vchiq_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	case VCHIQ_IOC_QUEUE_BULK_RECEIVE32:
 		return vchiq_compat_ioctl_queue_bulk(file, cmd, argp);
 	case VCHIQ_IOC_AWAIT_COMPLETION32:
-		return vchiq_compat_ioctl_await_completion(file, cmd, arg);
+		return vchiq_compat_ioctl_await_completion(file, cmd, argp);
 	case VCHIQ_IOC_DEQUEUE_MESSAGE32:
 		return vchiq_compat_ioctl_dequeue_message(file, cmd, argp);
 	case VCHIQ_IOC_GET_CONFIG32:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
