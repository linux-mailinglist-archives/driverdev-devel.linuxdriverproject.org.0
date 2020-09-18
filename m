Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD1626F9A9
	for <lists+driverdev-devel@lfdr.de>; Fri, 18 Sep 2020 11:55:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B84C4872F0;
	Fri, 18 Sep 2020 09:55:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zifSdQ4iCc2V; Fri, 18 Sep 2020 09:55:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B25C872D0;
	Fri, 18 Sep 2020 09:55:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 642D21BF2A3
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 60A28877C5
 for <devel@linuxdriverproject.org>; Fri, 18 Sep 2020 09:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eESz54LDPwdY for <devel@linuxdriverproject.org>;
 Fri, 18 Sep 2020 09:55:12 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA597877CD
 for <devel@driverdev.osuosl.org>; Fri, 18 Sep 2020 09:55:11 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1M3DBb-1kKb4q004L-003h6q; Fri, 18 Sep 2020 11:54:53 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: linux-rpi-kernel@lists.infradead.org,
	nsaenzjulienne@suse.de
Subject: [PATCH 2/5] staging: vchiq: convert compat create_service
Date: Fri, 18 Sep 2020 11:54:38 +0200
Message-Id: <20200918095441.1446041-3-arnd@arndb.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200918095441.1446041-1-arnd@arndb.de>
References: <20200918095441.1446041-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:ZeZ3GrnWPZuFNDmeNR7frM+QQXG4LhPG7SlZUH5s5si/jgBrnId
 B8jbak/ESjevq89i5MzcXblRGNYlp0ykm4YmN76r2BtPGZW/JOdf+cb3E0x4bEt8cOaetR4
 ZrI+1rgBVOwZC51Y5STsIB/sqhyZBhIhKgynCoWgT73oY/lRxDdgQjeDn3iBopN88qfkGDT
 3uR8wNibSvxXI99b6UG2A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:x8OjmU19Roo=:O30mtG+8ToTW0OuBISRBG9
 Wed6bvun5sqgFxUb0badImIfsR5xwg//0sTffKU+Dq+xhD4wE6863oVpxrnSUUKctSrnVR7+N
 g6XOwnPMdBLmQVKBYkAOcVCV14dBC0/9sz2Q//oXZB+VMKtPxwnNsz6m+APovFG2V9TToA+29
 MNu5asLaULgqZR+0SHCPAzh/2V1BPNUhH+IQOlXVKkt9FG4FB9dLCon5n01wQYBkytAOSdIWs
 nS+PJCi3M0DsK+E/i9khevi5HlFcR8YCJiuJHSM2CZdq2ne7k8MeR/KxgUINDx+OngoeV12gy
 LnGuMUPkj9rvW3bGbvXoQpcnk4vNUlfNSargw5YFqtto1Q17KXW7z6GoO9JqNH37jXZH2Y5Mw
 KFWxgJVpp05FLJL5oPgNDhQ55v053T322Oe48OC1I3mk5KCi2M5H+RYmzXpkXObYSRg7SSfbO
 1onqympxwHL1DXgkx0I7tVp2yQDk+FO7xk6phFJqtalkbGtF8BrP7BfPLkTQ4lhA5dk4Sch+9
 9fhbp4pCGJqmI4Xy38KqtROiKQxKXdM3fVvUhMN2bKMUnJtXBnoH4Ua4atZtvuxeWxIrnx3NH
 /oe0D0HhHKajbzdd/J8o4p3X4nslgKBgk1ViW1N8VXe7fizE987FYr8jlfRFCFKQjgzTU/NTE
 OtgBLKubZtoMZLpD8/PxrBc/ha/ujTl34emIcbO9BECDMtSSE49XQOWzDYEO31mCEF9INn9PU
 mKHpPZKUDs8f4Ibd4tybMcB8z0w/ZL4+ltfLzRe0PPTQzP15cJmlDZQGxqUK24bNHkrE4A4CU
 tAtNBf0HzPAyC9FENWqLSTQ/MjRMQqXPRxjPTonsuaVbnTHnBlOuU9geYsgG77e05ZJkbfF
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

Split out the ioctl implementation for VCHIQ_IOC_CREATE_SERVICE
into a separate function so it can be shared with the compat
implementation.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 189 +++++++++---------
 1 file changed, 89 insertions(+), 100 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 56a38bec848a..1404a5a0c7b0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -796,6 +796,68 @@ vchiq_ioc_queue_message(unsigned int handle,
 	return 0;
 }
 
+static int vchiq_ioc_create_service(struct vchiq_instance *instance,
+				    struct vchiq_create_service *args)
+{
+	struct user_service *user_service = NULL;
+	struct vchiq_service *service;
+	enum vchiq_status status = VCHIQ_SUCCESS;
+	void *userdata;
+	int srvstate;
+
+	user_service = kmalloc(sizeof(*user_service), GFP_KERNEL);
+	if (!user_service)
+		return -ENOMEM;
+
+	if (args->is_open) {
+		if (!instance->connected) {
+			kfree(user_service);
+			return -ENOTCONN;
+		}
+		srvstate = VCHIQ_SRVSTATE_OPENING;
+	} else {
+		srvstate = instance->connected ?
+			 VCHIQ_SRVSTATE_LISTENING : VCHIQ_SRVSTATE_HIDDEN;
+	}
+
+	userdata = args->params.userdata;
+	args->params.callback = service_callback;
+	args->params.userdata = user_service;
+	service = vchiq_add_service_internal(instance->state, &args->params,
+					     srvstate, instance,
+					     user_service_free);
+
+	if (!service) {
+		kfree(user_service);
+		return -EEXIST;
+	}
+
+	user_service->service = service;
+	user_service->userdata = userdata;
+	user_service->instance = instance;
+	user_service->is_vchi = (args->is_vchi != 0);
+	user_service->dequeue_pending = 0;
+	user_service->close_pending = 0;
+	user_service->message_available_pos = instance->completion_remove - 1;
+	user_service->msg_insert = 0;
+	user_service->msg_remove = 0;
+	init_completion(&user_service->insert_event);
+	init_completion(&user_service->remove_event);
+	init_completion(&user_service->close_event);
+
+	if (args->is_open) {
+		status = vchiq_open_service_internal(service, instance->pid);
+		if (status != VCHIQ_SUCCESS) {
+			vchiq_remove_service(service->handle);
+			return (status == VCHIQ_RETRY) ?
+				-EINTR : -EIO;
+		}
+	}
+	args->handle = service->handle;
+
+	return 0;
+}
+
 /****************************************************************************
 *
 *   vchiq_ioctl
@@ -868,85 +930,22 @@ vchiq_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 		break;
 
 	case VCHIQ_IOC_CREATE_SERVICE: {
+		struct vchiq_create_service __user *argp;
 		struct vchiq_create_service args;
-		struct user_service *user_service = NULL;
-		void *userdata;
-		int srvstate;
 
-		if (copy_from_user(&args, (const void __user *)arg,
-				   sizeof(args))) {
+		argp = (void __user *)arg;
+		if (copy_from_user(&args, argp, sizeof(args))) {
 			ret = -EFAULT;
 			break;
 		}
 
-		user_service = kmalloc(sizeof(*user_service), GFP_KERNEL);
-		if (!user_service) {
-			ret = -ENOMEM;
+		ret = vchiq_ioc_create_service(instance, &args);
+		if (ret < 0)
 			break;
-		}
-
-		if (args.is_open) {
-			if (!instance->connected) {
-				ret = -ENOTCONN;
-				kfree(user_service);
-				break;
-			}
-			srvstate = VCHIQ_SRVSTATE_OPENING;
-		} else {
-			srvstate =
-				 instance->connected ?
-				 VCHIQ_SRVSTATE_LISTENING :
-				 VCHIQ_SRVSTATE_HIDDEN;
-		}
 
-		userdata = args.params.userdata;
-		args.params.callback = service_callback;
-		args.params.userdata = user_service;
-		service = vchiq_add_service_internal(
-				instance->state,
-				&args.params, srvstate,
-				instance, user_service_free);
-
-		if (service) {
-			user_service->service = service;
-			user_service->userdata = userdata;
-			user_service->instance = instance;
-			user_service->is_vchi = (args.is_vchi != 0);
-			user_service->dequeue_pending = 0;
-			user_service->close_pending = 0;
-			user_service->message_available_pos =
-				instance->completion_remove - 1;
-			user_service->msg_insert = 0;
-			user_service->msg_remove = 0;
-			init_completion(&user_service->insert_event);
-			init_completion(&user_service->remove_event);
-			init_completion(&user_service->close_event);
-
-			if (args.is_open) {
-				status = vchiq_open_service_internal
-					(service, instance->pid);
-				if (status != VCHIQ_SUCCESS) {
-					vchiq_remove_service(service->handle);
-					service = NULL;
-					ret = (status == VCHIQ_RETRY) ?
-						-EINTR : -EIO;
-					break;
-				}
-			}
-
-			if (copy_to_user((void __user *)
-				&(((struct vchiq_create_service __user *)
-					arg)->handle),
-				(const void *)&service->handle,
-				sizeof(service->handle))) {
-				ret = -EFAULT;
-				vchiq_remove_service(service->handle);
-			}
-
-			service = NULL;
-		} else {
-			ret = -EEXIST;
-			kfree(user_service);
+		if (put_user(args.handle, &argp->handle)) {
+			vchiq_remove_service(args.handle);
+			ret = -EFAULT;
 		}
 	} break;
 
@@ -1495,46 +1494,36 @@ static long
 vchiq_compat_ioctl_create_service(
 	struct file *file,
 	unsigned int cmd,
-	unsigned long arg)
+	struct vchiq_create_service32 __user *ptrargs32)
 {
-	struct vchiq_create_service __user *args;
-	struct vchiq_create_service32 __user *ptrargs32 =
-		(struct vchiq_create_service32 __user *)arg;
+	struct vchiq_create_service args;
 	struct vchiq_create_service32 args32;
 	long ret;
 
-	args = compat_alloc_user_space(sizeof(*args));
-	if (!args)
-		return -EFAULT;
-
 	if (copy_from_user(&args32, ptrargs32, sizeof(args32)))
 		return -EFAULT;
 
-	if (put_user(args32.params.fourcc, &args->params.fourcc) ||
-	    put_user(compat_ptr(args32.params.callback),
-		     &args->params.callback) ||
-	    put_user(compat_ptr(args32.params.userdata),
-		     &args->params.userdata) ||
-	    put_user(args32.params.version, &args->params.version) ||
-	    put_user(args32.params.version_min,
-		     &args->params.version_min) ||
-	    put_user(args32.is_open, &args->is_open) ||
-	    put_user(args32.is_vchi, &args->is_vchi) ||
-	    put_user(args32.handle, &args->handle))
-		return -EFAULT;
-
-	ret = vchiq_ioctl(file, VCHIQ_IOC_CREATE_SERVICE, (unsigned long)args);
+	args = (struct vchiq_create_service) {
+		.params = {
+			.fourcc	     = args32.params.fourcc,
+			.callback    = compat_ptr(args32.params.callback),
+			.userdata    = compat_ptr(args32.params.userdata),
+			.version     = args32.params.version,
+			.version_min = args32.params.version_min,
+		},
+		.is_open = args32.is_open,
+		.is_vchi = args32.is_vchi,
+		.handle  = args32.handle,
+	};
 
+	ret = vchiq_ioc_create_service(file->private_data, &args);
 	if (ret < 0)
 		return ret;
 
-	if (get_user(args32.handle, &args->handle))
-		return -EFAULT;
-
-	if (copy_to_user(&ptrargs32->handle,
-			 &args32.handle,
-			 sizeof(args32.handle)))
+	if (put_user(args.handle, &ptrargs32->handle)) {
+		vchiq_remove_service(args.handle);
 		return -EFAULT;
+	}
 
 	return 0;
 }
@@ -1895,7 +1884,7 @@ vchiq_compat_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
 	void __user *argp = compat_ptr(arg);
 	switch (cmd) {
 	case VCHIQ_IOC_CREATE_SERVICE32:
-		return vchiq_compat_ioctl_create_service(file, cmd, arg);
+		return vchiq_compat_ioctl_create_service(file, cmd, argp);
 	case VCHIQ_IOC_QUEUE_MESSAGE32:
 		return vchiq_compat_ioctl_queue_message(file, cmd, argp);
 	case VCHIQ_IOC_QUEUE_BULK_TRANSMIT32:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
